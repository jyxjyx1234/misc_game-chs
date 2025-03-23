# 从反编译的txt中提取文本

from Lib import *
import re, os

oriTXTPath = "oriTXT\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

files = os.listdir(oriTXTPath)
def remove_nested_brackets(text, ifPrint = False):
    oriText = text
    while True:
        match = re.search(r'\[[^\[\]]*\]', text)
        if match:
            if match.group() != "[r]" and ifPrint:
                pass
                #print(match.group())
                #print(oriText)
            text = text.replace(match.group(), '')
        else:
            break
    #text = re.sub(r"[「　」 \t]" , "", text)
    return text

def preProcess(text):
    text = text.replace("_r", "")
    text = remove_nested_brackets(text)
    text = re.sub("<(.*?),.*?>", lambda x: x.group(1), text)
    text = text.replace("(", "").replace(")", "")
    text = text.replace("#", "").replace("*", "")
    text = text.replace("，", "").replace("、", "").replace("\u3000", "").replace("（", "").replace("）", "").replace("「", "").replace("」", "")
    return text

namedict = {}
allCount = 0

for f in files:
    out = OriJsonOutput()
    lines = open(oriTXTPath + f, "r", encoding="utf8")
    for l in lines:
        l = l.strip()
        paras = l.split("||")
        if paras[0] == "#0500":#文本
            texts = re.match(r"str\((.*?)\)", paras[2]).group(1)
            if re.match("【.*?】/【(.*?)】(.*)", texts):
                out.dic["message"] = preProcess(re.match("【.*?】/【(.*?)】(.*)", texts).group(2))
                out.dic["name"] = re.match("【.*?】/【(.*?)】(.*)", texts).group(1)
                out.append_dict()
            elif re.match("【(.*?)】(.*)", texts):
                out.dic["message"] = preProcess(re.match("【(.*?)】(.*)", texts).group(2))
                out.dic["name"] = re.match("【(.*?)】(.*)", texts).group(1)
                out.append_dict()
            else:
                out.dic["message"] = preProcess(texts)
                out.append_dict()
        if paras[0] == "#0212":#选项
            texts = re.match(r"str\((.*?)\)", paras[6]).group(1)
            out.dic["message"] = preProcess(texts)
            out.append_dict()

    namedict.update(out.get_names())
    out.save_json(outPath + f.replace(".txt", ".json"))
    allCount += out.textcount

save_json("namedict.json", namedict)
print(allCount)