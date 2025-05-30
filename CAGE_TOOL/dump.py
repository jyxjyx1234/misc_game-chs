from Lib import *
from bcs2csv import BCS_FILE

oriPath = "scr_dec\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)
os.makedirs("release")
namedict = {}
textcount = 0

for file in os.listdir(oriPath):
    bcs = BCS_FILE(oriPath + file)
    out = OriJsonOutput()
    bcs.dump(out)
    out.save_json(outPath + file.lower().replace(".bcs", ".json"))
    namedict.update(out.get_names())
    textcount += out.textcount

save_json("namedict.json", namedict)
print("textcount:", textcount)