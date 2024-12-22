from GSC_FILE import *
from Lib import *
from HanziReplacer import *
import os, re

transPath = "gt_output\\"
files = os.listdir(transPath)
outPath = "release\\scr\\"
txtoutPath = "trans\\"
os.makedirs(outPath, exist_ok = True)
fileNames = os.listdir(transPath)#json
namedict = open_json("namedict.json")

allText = []
for fileName in fileNames:
    transJson = open_json(transPath + fileName)
    for d in transJson:
        allText.append(d["message"])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText, namedict, ["中文测试"]])
h.ChangeFont("wqy-zenhei-0.9.47_0.ttf.json", "release\\Hanachirutani.ttf", "Hanachirutani")	

for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])

for f in fileNames:
    oriTXT = open("ori\\" + f.replace(".json", ".txt"), "r", encoding="sjis").readlines()
    transJson = open_json(transPath + f)
    out = []
    msgBuffer = ""
    lenth = 0
    for l in oriTXT:
        l = l.replace("\n", "")
        if len(l)>0 and l[0] not in ["[", "#", ">", "@"] and not re.match("[0-9a-zA-Z]", l):
            if l[0] == "【":
                name = l[1:-1]
                l = l.replace(name, namedict[name])
                out.append(l + "\n")
                continue
            elif l == "\u3000":
                out.append(l + "\n")
                continue
            else:
                msg = l.replace("\u3000", "")
                msg = re.sub(r"\|(.*?)\[.*?\]", lambda x: x.group(1), msg)
                msg = re.sub(r"\^d[0-9]", "", msg)
                
                if msg == "":
                    continue
                msgBuffer += msg
                lenth += 1
                if isBracketsBalanced(msgBuffer):
                    d = transJson.pop(0)
                    trans = h.hanzitihuan(d["message"])
                    if lenth != d["len"]:
                        raise RuntimeError
                    out.append(trans + "\n")
                    msgBuffer = ""
                    lenth = 0

        else:
            out.append(l + "\n")
    
    o = open(txtoutPath + f.replace(".json", ".txt"), "w", encoding="shiftjis")
    for l in out:
        o.write(l)
    o.close()

    gsct = GscFile(txtoutPath + f.replace(".json", ""), 1)
    gsct.ReinitAll()
    gsct.FileName = outPath + f.replace(".json", "")
    gsct.CompileTxtToGsc()