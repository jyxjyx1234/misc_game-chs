from Lib import *
import re, os
from SCWFile import *
from HanziReplacer import *

oriPath = "SCW\\"
transPath = "gt_output\\"
outPath = "release\\SCW\\"
os.makedirs(outPath, exist_ok = True)
files = os.listdir(oriPath)
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
#h.ChangeFont("wenquanyi.ttf", "release\\unbalance.ttf", "unbalance")

def preProcess(text):
    text = text.replace(",", "，").replace(")", "）").replace("(", "（").replace("?", "？").replace("!", "！")
    text = text.replace("「「", "「").replace("」」", "」").replace("「「", "「").replace("」」", "」")
    text = h.hanzitihuan(text)
    return text

for f in files:
    try:
        transData = open_json(transPath + f + ".json")
    except:
        transData = []
    transList = []
    for i in transData:
        msg = i["message"]
        if "name" in i:
            name = namedict[i["name"]]
            msg = f"#F【{name}】#F\n{msg}"
        msg = preProcess(msg)
        transList.append(msg)
    
    data = open_file_b(oriPath + f)
    
    scwf = SCWFile(data)
    scwf.append_trans(transList)
    scwf.save(outPath + f)
