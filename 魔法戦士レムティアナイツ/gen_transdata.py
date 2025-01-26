from Lib import *
from HanziReplacer import *
from gen_name_transdata import *

key = b"alyce20250116"

transpath = "gt_output"
SD_filename = "LMKN.SD"
exe_filename = "LMK.exe"

namedict = {}
with open("namedict.txt", "r", encoding="utf-8") as f:
    names = f.readlines()
    for n in names:
        ori, trans = n.strip().split("=")
        namedict[ori] = trans

# 生成替换字表
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
h.gen_replace("release\\data2.bin", key)

# 生成名字翻译表
gen_name_transdata(h, key)

# 生成SD文件的翻译表（上下文长度：0x40)
SD_normal_text = open_json(os.path.join(transpath, "processed_text.json"))
SD_file = open_file_b(SD_filename)
data1 = []
for text in SD_normal_text:
    trans = h.hanzitihuan(text["message"])
    trans = replace_halfwidth_with_fullwidth(trans)
    if len(trans) * 2 != len(trans.encode("932")):
        print("Error: translation contains not fullwidth characters: ", text)
        exit()
    offset = text["offset"]
    hangshu = text["hangshu"]
    context = SD_file[offset : offset + 0x40]
    d = context + b"[=]" + trans.encode("932") + b"[!!]" + str(hangshu).encode("932") + b"[n]"
    data1.append(d)
data1 = b"".join(data1)
data1 = bytes([data1[i] ^ key[i % len(key)] for i in range(len(data1))])
save_file_b("release\\data1.bin", data1)

# 生成其他文件的翻译表
SD_opt = open_json(os.path.join(transpath, "processed_opt.json"))
exe_text = open_json(os.path.join(transpath, "exe_processed_text.json"))
data4 = []
for text in (SD_opt + SD_normal_text + exe_text):
    if "hangshu" in text and text["hangshu"] != 1:
        continue
    trans = h.hanzitihuan(text["message"])
    trans = replace_halfwidth_with_fullwidth(trans)
    if len(trans) * 2 != len(trans.encode("932")):
        print("Error: translation contains not fullwidth characters: ", text)
        exit()
    ori = text["ori"]
    d = ori.encode("932") + b"[=]" + trans.encode("932") + b"[n]"
    data4.append(d)
data4 = b"".join(data4)
data4 = bytes([data4[i] ^ key[i % len(key)] for i in range(len(data4))])
save_file_b("release\\data4.bin", data4)

# 将SD文件中的特殊文本注回
SD_special_text = open_json(os.path.join(transpath, "special_text.json"))
for text in SD_special_text:
    ori = text["ori"].encode("932")
    hangshu = text["hangshu"]
    trans = text["message"]
    trans = h.hanzitihuan(trans)
    trans = trans.encode("932")
    trans = trans.replace(b"[0]", b"\x00")
    if len(trans) > len(ori) + hangshu - 1:
        print("Error: translation is longer than original text: ", text)
        exit()
    while len(trans) < len(ori) + hangshu - 1:
        trans += b"\x20"
    offset = text["offset"]
    SD_file = SD_file[:offset] + trans + SD_file[offset + len(trans):]
save_file_b(f"release\\{SD_filename}", SD_file)

# 将exe中的特殊文本注回
exe_special_text = open_json(os.path.join(transpath, "exe_special_text.json"))
exe_file = open_file_b(exe_filename)
for text in exe_special_text:
    ori = text["ori"].encode("932")
    trans = text["message"]
    trans = h.hanzitihuan(trans)
    trans = trans.encode("932")
    if len(trans) > len(ori):
        print("Error: translation is longer than original text: ", text)
        exit()
    while len(trans) < len(ori):
        trans += b"\x20"
    offset = text["offset"]
    exe_file = exe_file[:offset] + trans + exe_file[offset + len(trans):]
save_file_b(f"release\\{exe_filename}", exe_file)
