from Lib import *
from HanziReplacer import *
import os, re

transPath = "gt_output\\"
files = os.listdir(transPath)
outPath = "release\\scr\\"
os.makedirs(outPath, exist_ok = True)
fileNames = os.listdir(transPath)#json

allText = []
for fileName in fileNames:
    transJson = open_json(transPath + fileName)
    for d in transJson:
        allText.append(d["message"])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText, ["中文测试"]])
h.ChangeFont("WenQuanYi.ttf", "release\\jiwunv.ttf", "jiwunv")	

for f in fileNames:
    oriData = open_file_b("ori\\" + f.replace(".json",".s"))
    oriTxts = oriData.split(b"\x00")
    transTxts = []
    trans = open_json(transPath + f)
    for textB in oriTxts:
        if len(textB) == 0:
            transTxts.append(textB)
            continue
        if textB[0:1] in [b"@", b"*", b"=", b"\\", b"!", b"{", b":", b"}"]:
            transTxts.append(textB)
            continue
        if re.match(rb"[\x30-\x39\x41-\x5a\x61-\x7a]", textB[0:1]):
            transTxts.append(textB)
            continue
        else:
            d = trans.pop(0)
            transMSG = h.hanzitihuan(d["message"])
            transMSG = replace_halfwidth_with_fullwidth(transMSG).encode("932")
            transTxts.append(transMSG)
    outData = b"\x00".join(transTxts)
    save_file_b(outPath + f.replace(".json",".s"), outData)
