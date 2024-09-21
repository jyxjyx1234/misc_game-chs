from Lib import *
from CSBFile import *

oriTXTPath = "oriTXT/"
oriCSBPath = "Story/"
transPath = "transl_cache/"
jsonPath = "gt_input/"
transTXTPath = "transTXT/"
outPath = "release/Story/"
os.makedirs(outPath, exist_ok = True)
os.makedirs(transTXTPath, exist_ok = True)

fileNames = os.listdir(oriCSBPath)

h = HanziReplacer()
namedict = open_json("namedict.json")
allText = []

for fileName in fileNames:
    transFilePath = transPath + fileName.replace(".csb", ".json")
    oriTXTFilePath = oriTXTPath + fileName
    transTXTFilePath = transTXTPath + fileName

    transFile = open_json(transFilePath)
    transdict = {}
    transdict.update(namedict)

    for dic in transFile:
        jp = dic["pre_jp"]
        zh = dic["post_zh_preview"]
        transdict[jp] = zh
        allText.append(jp)
        allText.append(zh)

    f = open(oriTXTFilePath, "r", encoding="utf8")
    outf = open(transTXTFilePath, "w", encoding="utf8")
    for l in f.readlines():
        if l != "\n" and l[0] != "@":
            text = l[5:-1]
            text = replaceNameCode(text)
            if text != "":
                transText = transdict[text]
                transText = transText.replace("\n", "").replace("\\n", "")
                l = l[:5] + transText + l[-1:]
        outf.write(l)

h.ReadTransAndGetHanzidict([allText, namedict])
h.ChangeFont("MSYHBD.TTC", "release/FutagoEcchiFont.ttf", "FutagoEcchiFont")

for fileName in fileNames:
    oriCSBFilePath = oriCSBPath + fileName
    outFilePath = outPath + fileName
    transTXTFilePath = transTXTPath + fileName

    oriFile = CSBFile()
    oriFile.read(oriCSBFilePath)
    oriFile.trans(transTXTFilePath, outFilePath, h)