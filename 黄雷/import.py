from GSC_FILE import *
from Lib import *
from HanziReplacer import *
import os, re

transPath = "gt_output\\"
files = os.listdir(transPath)
outPath = "release\\scr\\"
txtoutPath = "trans\\"
os.makedirs(outPath, exist_ok = True)
os.makedirs(txtoutPath, exist_ok = True)
fileNames = os.listdir(transPath)#json
# namedict = open_json("namedict.json")

allText = []
for fileName in fileNames:
    transJson = open_json(transPath + fileName)
    for d in transJson:
        allText.append(d["message"])
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText])
# h.ChangeFont("wenquanyi.ttf", "release\\Ourai.ttf", "Ourai")	
h.gen_replace("release\\data2.bin", b"ALyCE")

for f in fileNames:
    oriTXT = open("ori\\" + f.replace(".json", ".txt"), "r", encoding="sjis").readlines()
    try:
        transJson = open_json(transPath + f)
    except:
        transJson = []
    for data in transJson:
        pos = data["pos"]
        trans = data["message"]
        ori = data["ori"]
        trans = h.hanzitihuan(trans)
        if re.match(r"\^[\^a-z0-9A-Z]+", ori):
            trans = re.match(r"\^[\^a-z0-9A-Z]+", ori).group() + trans
        for i, p in enumerate(pos):
            if i == 0:
                oriTXT[p] = trans + "\n"
            else:
                oriTXT[p] = ""
    with open(txtoutPath + f.replace(".json", ".txt"), "w", encoding="sjis") as outf:
        outf.write("".join(oriTXT))

    gsct = GscFile(txtoutPath + f.replace(".json", ""), 1)
    gsct.ReinitAll()
    gsct.FileName = outPath + f.replace(".json", "")
    gsct.CompileTxtToGsc()