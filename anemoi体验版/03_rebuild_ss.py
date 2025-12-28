from LIB.SS_FILE import *
import sys

ori_ss_path = "unpacked_scene" # 解包的ss文件
trans_data_path = "gt_output" # 译文文件。 需要把手动处理文本文件夹内的json文件（如果有）也复制进来。
new_ss_path = "rebuild_scene" # 重建后的ss文件输出目录

isChangeName = True # 是否修改人名文本。部分游戏中，可以在gameexe.ini中修改人名，此时不需要在这里修改（这是更建议的方式）。这里开启后会把人名文本也进行替换。

ismakeCN_JP = False
pack = False
isfake = False
try:
    if "makeCN_JP" in sys.argv[1]:
        ismakeCN_JP = True
    if "pack" in sys.argv[1]:
        pack = True
    if "fake" in sys.argv[1]:
        isfake = True
except:
    pass


if isChangeName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

try:
    extra_trans = open_json("extra_trans.json")
except:
    extra_trans = {}

if ismakeCN_JP:
    new_ss_path += "_cnjp"

os.makedirs(new_ss_path, exist_ok=True)

for name in os.listdir(ori_ss_path):
    if name.endswith(".ss") == False:
        continue
    try:
        trans_data = open_json(os.path.join(trans_data_path, name + ".json"))
        isChange = True
    except:
        trans_data = []
        isChange = False
    ss = SS_File(os.path.join(ori_ss_path, name))
    
    for data in trans_data:
        if "ruby_idx" in data:
            for idx in data["ruby_idx"]:
                ss.replace_string(idx, "")
        if isChangeName and "name_idx" in data:
            charname = data["name"]
            new_name = namedict[charname]
            ss.replace_string(data["name_idx"], new_name)
        trans_text = data["message"]
        trans_text = replace_halfwidth_with_fullwidth(trans_text)
        trans_text = trans_text.replace("＃Ｄ", "#D").replace("・", "·")
        ori = data["ori"]
        if "special_code" not in data and ismakeCN_JP:
            if len(ori) > 32 and len(trans_text) > 32:
                trans_text += "　" + ori
                if len(trans_text) > 32 * 3:
                    print(f"Warning: text too long in file {name}, text: {trans_text}")
                    # trans_text = trans_text[:32 * 3]
            else:
                trans_text += "\n" + ori
        #.replace("♥", "").replace("♡", "").replace("♪", "").
        try:
            trans_text.encode('gbk', errors='strict')
        except:
            print(f"Warning: text encoding error in file {name}, text: {trans_text}")
        ss.replace_string(data["text_idx"][0], trans_text)
        for idx in data["text_idx"][1:]:
            ss.replace_string(idx, "")
    for idx in range(len(ss.str_list.strings)):
        if ss.str_list.strings[idx] in extra_trans:
            print(f"Extra translated string in file {name}, original: {ss.str_list.strings[idx]}, translated: {extra_trans[ss.str_list.strings[idx]]}")
            ss.replace_string(idx, extra_trans[ss.str_list.strings[idx]])
            isChange = True
    if isChange:
        save_file_b(os.path.join(new_ss_path, name), ss.rebuild())

if pack:
    if ismakeCN_JP:
        os.system("python 04_pack_pck.py makeCN_JP" + ("fake" if isfake else ""))
    else:
        os.system("python 04_pack_pck.py" + (" fake" if isfake else ""))

# data = open_file_b(os.path.join(ori_ss_path, "__sys_config.ss"))

# #8e: 字体设置
# #8a：窗口设置
# #a7：视频播放方式设置
# data = re.sub(rb"\x02\x0A\x00\x00\x00\xa7\x00\x00\x00", b"\x02\x0A\x00\x00\x00\x8e\x00\x00\x00", data)
# save_file_b(os.path.join(new_ss_path, "__sys_config.ss"), data)


# data = open_file_b(os.path.join(ori_ss_path, "__sys_config_system.ss"))
# #8e: 字体设置
# #8a：窗口设置
# #a7：视频播放方式设置
# # data = re.sub(rb"\x02\x0A\x00\x00\x00\x8a\x00\x00\x00", b"\x02\x0A\x00\x00\x00\x03\x00\x00\x00", data)
# save_file_b(os.path.join(new_ss_path, "__sys_config_system.ss"), data)