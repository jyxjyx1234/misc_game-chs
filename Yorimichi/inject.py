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
h.gen_replace("release\\trans\\data.bin", enc=b"yorimichi")

namedict = open_json("namedict.json")

for file in os.listdir(oripath):
    transdata = open_json(transpath + file.replace(".bcs", ".json"))
    bcs = BCS_FILE(oripath + file)
    bcs.trans(transdata, namedict, h)
    bcs.to_csv(outpath + file.replace(".bcs", ".csv"))

import FT_FILE
FT_FILE.main()