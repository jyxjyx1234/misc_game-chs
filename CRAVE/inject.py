from Lib import *
import re, os
from SCWFile import *
from HanziReplacer import *

oriPath = "SCW\\"
transPath = "gt_output\\"
outPath = "release\\SCW\\"
os.makedirs(outPath, exist_ok = True)
files = listdir(oriPath)
namedict = open_json("namedict.json")

h = HanziReplacer()
allText = []
for f in files:
    try:
        transData = open_json(transPath + f + ".json")
    except:
        continue
    for t in transData:
        allText.append(t["message"])
h.ReadTransAndGetHanzidict([allText, namedict])
#h.ChangeFont("wenquanyi.ttf.json", "release\\CraveFont.ttf", "CraveFont")

def preProcess(text):
    text = text.replace(",", "，").replace(")", "）").replace("(", "（").replace("?", "？").replace("!", "！")
    text = text.replace("「「", "「").replace("」」", "」").replace("「「", "「").replace("」」", "」")
    text = h.hanzitihuan(text)
    return text

for f in files:
    try:
        transData = open_json(transPath + f + ".json")
    except:
        continue
    transList = []
    for i in transData:
        msg = i["message"]
        if "name" in i:
            name = namedict[i["name"]]
            msg = f"#F【{name}】#F\n{msg}"
        msg = preProcess(msg)
        transList.append(msg)
    
    data = open_file_b(oriPath + f + ".scw")
    
    scwf = SCWFile(data)
    scwf.transText(transList)
    scwf.save(outPath + f + ".scw")

#test

for file in files:
    if file in ["CONFIG_CHERRY"]:
        continue
    data = open_file_b(outPath + file + ".scw")
    print(file)
    f = SCWFile(data)
    texts = f.dumpTexts()
    outT = open("SCW_TXT_T\\" + file + ".TXT", "w", encoding="932")
    idx = 0
    for t in texts:
        text = t[:-1].decode("932", "ignore")
        outT.write(f"L{idx}:{text}")
        idx += 1