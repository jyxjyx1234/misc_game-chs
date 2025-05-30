from Lib import *
from HanziReplacer import HanziReplacer
from bcs2csv import *

transpath = "gt_output\\"
outpath = "release\\trans\\"
oripath = "scr_dec\\"
os.makedirs(outpath, exist_ok=True)

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath)
replacedict = {}
for i in range(len(h.source_chars)):
    replacedict[h.source_chars[i]]=h.target_chars[i]
save_json("replace.json", replacedict)
h.ChangeFont("wenquanyi.ttf", "release\\cage_font.ttf", "cage_font")

namedict = open_json("namedict.json")

for file in os.listdir(transpath):
    transdata = open_json(transpath + file.lower())
    bcs = BCS_FILE(oripath + file.replace(".json", ".bcs"))
    bcs.trans(transdata, namedict, h)
    bcs.to_csv(outpath + file.lower().replace(".json", ".csv"))
