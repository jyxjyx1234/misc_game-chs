from Lib import *
import math
from HanziReplacer import *

text_and_opt_patten = re.compile(rb'(?<=\x24\x70\x00\x00)([\x00-\xff]{4})([\x00-\xff]*?)(?=\x00)|(?<=\x73\x65\x6C\x74)([\x00-\xff]{4})([\x00-\xff]*?)(?=\x00)')
jump_patten = re.compile(rb'(?<=\x24\x74\x6F\x00\x04\x00\x00\x00)([\x00-\xff]{4})')

def splitTransText(TransText:str, hangshu: int) -> list:
    lineMaxTextCount = 24
    if hangshu * lineMaxTextCount < len(TransText):
        lineMaxTextCount = math.ceil(len(TransText)/hangshu)
        print(TransText)
    res = []
    for i in range(hangshu):
        line = TransText[i * lineMaxTextCount : (i + 1) * lineMaxTextCount]
        if line == "":
            line = "\u3000"
        res.append(line)
    return res

trans_path = "transl_cache/"
ori_json_path = "ori_jsons/"
ori_scr_path = "scenario/"
out_path = "release/datafile/scenario/"
os.makedirs(out_path, exist_ok = True)
files = os.listdir(trans_path)

#预处理译文，生成字体和替换表
namedict = open_json("namedict.json")
textlist = []
for f in files:
    trans_json = open_json(trans_path + f)
    for dic in trans_json:
        textlist.append(dic['pre_zh'])
        textlist.append(dic['pre_jp'])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([textlist, namedict])
h.ChangeFont("WenQuanYi.ttf", "release/SoukoFont.ttf", "SoukoFont")

for f in files:
    ori_json = open_json(ori_json_path + f)
    trans_json = open_json(trans_path + f)
    ori_scr = open_file_b(ori_scr_path + f.replace(".json", ""))
    out_file_path = out_path + f.replace(".json", "")

    translist = []
    transdict = {}
    for dic in trans_json:
        transdict[dic['pre_jp']] = dic['pre_zh']
    for dic in ori_json:
        hangshu = dic['hangshu']
        transtext = transdict[dic['message']]
        transtext = re.sub(r"\.{3,}","……",transtext)
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = h.hanzitihuan(transtext)
        if "name" in dic:
            name = dic['name']
            translist.append(f'【{name}】')
        translist += splitTransText(transtext, hangshu)
    
    jmps = jump_patten.finditer(ori_scr)
    jmps_list = []#[地址，跳转地址，修改后的跳转地址]
    for i in jmps:
        jmps_list.append([i.start(), from_bytes(i.group()), from_bytes(i.group())])
    
    texts = text_and_opt_patten.finditer(ori_scr)
    idx = 0
    #修改跳转地址
    for match in texts:
        trans = translist[idx].encode('cp932')
        ori_len = len(match.group(2)) if match.group(2) else len(match.group(4))
        deltaLen = len(trans) - ori_len
        for jmp in jmps_list:
            if match.start() < jmp[1]:
                jmp[2] += deltaLen
        idx += 1

    ori_scr = list(ori_scr)
    for jmp in jmps_list:
        s = jmp[0]
        to = list(to_bytes(jmp[2], 4))
        ori_scr[s : s + 4] = to
    ori_scr = bytes(ori_scr)

    translist.reverse()
    def process_text(match):
        transBytes = translist.pop().encode("cp932")
        lenth = to_bytes(len(transBytes) + 1, 4)
        return lenth + transBytes
    ori_scr = text_and_opt_patten.sub(process_text, ori_scr)
    save_file_b(out_file_path, ori_scr)