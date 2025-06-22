from Lib import *
import re, os
from HanziReplacer import *

oriTXTPath = "oriTXT\\"
transJsonPath = "gt_output\\"
outPath = "transTXT\\"
os.makedirs(outPath, exist_ok=True)

files = os.listdir(transJsonPath)

def checkHalfWidth(text):
    for char in text:
        if len(char.encode("utf8")) == 1 and char != "\n":
            return True
    return False
    
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
    text = remove_nested_brackets(text)
    text = text.replace("\\n", "\n")
    text = text.replace("......", "……").replace("....", "……").replace("...", "…").replace("..", "…").replace(".", "。")
    text = text.replace("<", "").replace(">", "").replace("'", "").replace("\\", "")
    text = text.replace("(", "").replace(")", "").replace("{", "").replace("}", "").replace("[", "").replace("]", "")
    text = text.replace("#", "").replace("*", "").replace("@", "").replace("$", "")
    text = replace_halfwidth_with_fullwidth(text)
    text = processQuote(text)
    text = h.hanzitihuan(text)
    if checkHalfWidth(text):
        print(f"Halfwidth character detected: {text}")
    text = text.replace("\n", "_r")
    return text

namedict = open_json("namedict_trans.json")

allText = []
for fileName in files:
    # print(fileName)
    transJson = open_json(transJsonPath + fileName)
    for d in transJson:
        allText.append(d["message"])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText, namedict])
h.gen_replace("release\\data2.bin")

for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])

for f in files:
    # print(f)
    lines = open(oriTXTPath + f.replace(".json", ".txt"), "r", encoding="utf8")
    transJson = open_json(transJsonPath + f)
    out = []

    for l in lines:
        l = l.strip()
        paras = l.split("||")
        if paras[0] == "#0500":#文本
            texts = re.match(r"str\((.*?)\)", paras[2]).group(1)
            trans = transJson.pop(0)["message"]
            trans = h.hanzitihuan(trans)
            trans = preProcess(trans)
            if re.match("【.*?】/【(.*?)】(.*)", texts):
                def _(m):
                    name = m.group(1)
                    if name != "":
                        try:
                            name = namedict[name]
                        except:
                            # print(name)
                            pass
                    return f"【{name}】/【{m.group(2)}】「{trans}」"
                paras[2] = "str(" + re.sub("【(.*?)】/【(.*?)】(.*)", _, texts) + ")"
                newl = "||".join(paras)
                out.append(newl)
            elif re.match("【(.*?)】(.*)", texts):
                def _(m):
                    name = m.group(1)
                    if name != "":
                        name = namedict[name]
                    # return f"【{name}】{trans}"
                    return f"【{name}】「{trans}」"
                paras[2] = "str(" + re.sub("【(.*?)】(.*)", _, texts) + ")"
                newl = "||".join(paras)
                out.append(newl)
            else:
                paras[2] = "str(" + trans + ")"
                newl = "||".join(paras)
                out.append(newl)

        elif paras[0] == "#0212":#选项
            trans = transJson.pop(0)["message"]
            trans = h.hanzitihuan(trans)
            trans = preProcess(trans)
            paras[6] = "str(" + trans + ")"
            newl = "||".join(paras)
            out.append(newl)
        
        else:
            out.append(l)
    
    with open(outPath + f.replace(".json", ".txt"), "w", encoding="utf8") as outf:
        for l in out:
            outf.write(l + "\n")
