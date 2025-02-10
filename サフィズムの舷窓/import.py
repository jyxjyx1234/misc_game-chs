from GSC_FILE_NEW import *
from Lib import *
from HanziReplacer import *
import os, re

oriPath = "GSC\\"
transPath = "gt_output0\\"
files = os.listdir(transPath)
outPath = "release\\scr\\"
os.makedirs(outPath, exist_ok = True)
fileNames = os.listdir(oriPath)

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath)
h.ChangeFont("wenquanyi.ttf", "release\\anepic.ttf", "anepic")	

for fileName in fileNames:
    try:
        transdata = open_json(transPath + fileName + ".json")
    except:
        continue
    gsc = GSC_FILE(oriPath + fileName)
    gsc.rebuild_text(transdata, h)
    gsc.save(outPath + fileName)