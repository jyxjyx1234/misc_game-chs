from TOBFile import *
from HanziReplacer import *

oriPath = "ori\\"
oriJsonPath = "gt_input\\"
transJsonPath = "gt_output\\"
outPath = "release\SCRIPT\\"

os.makedirs(outPath, exist_ok = True)
fileNames = os.listdir(oriPath)

namedict = open_json("namedict.json")

allText = []
for fileName in fileNames:
    transJson = open_json(transJsonPath + fileName.replace(".tob", ".json"))
    for d in transJson:
        allText.append(d["message"])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText, namedict, ["中文测试"]])
#h.ChangeFont("WenQuanYi.ttf", "release\\NekonadeFontDE.ttf", "NekonadeFontDE")

for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])

for fileName in fileNames:
    transJson = open_json(transJsonPath + fileName.replace(".tob", ".json"))
    oriJson = open_json(oriJsonPath + fileName.replace(".tob", ".json"))
    oriFile = TOBFile(path = oriPath + fileName)
    oriFile.trans(transJson, oriJson, namedict, h)
    oriFile.save(outPath + fileName)
