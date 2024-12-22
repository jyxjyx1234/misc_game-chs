from BINFile import *
from HanziReplacer import *

oripath = "ori\\"
transpath = "gt_output1\\"
outpath = "release\\bin\\"
os.makedirs(outpath, exist_ok=True)

files = os.listdir(oripath)
h = HanziReplacer()
alltexts = []
for file in files:
    transdata = transpath + file + ".json"
    transdata = open_json(transdata)
    for d in transdata:
        alltexts.append(d["message"])
h.ReadTransAndGetHanzidict([alltexts])
print("更改字体……")
#h.ChangeFont("DFHei-GB5.ttc", "release/oshioki.ttf", "oshioki")

def preprocess(text):
    text = h.hanzitihuan(text)
    return text

for file in files:
    print(file)
    binfile = BINFile(oripath + file)
    binfile.transtext(transpath + file + ".json", outpath + file, preprocess)