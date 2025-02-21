from Lib import *
from HanziReplacer import *

oriPath = "TXT\\"
transPath = "gt_output\\"
outPath = "release\\trans\\"
os.makedirs(outPath, exist_ok=True)

namedict = open_json("namedict.json")

try:
    namedict = open_json("namedict.json")
except:
    namedict = {}
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
enc_key = b"SBRioshiina"
os.makedirs("release", exist_ok = True)
h.gen_replace("release\\trans\\data2.bin", enc = enc_key)

files = os.listdir(oriPath)

for file in files:
    try:
        transData = open_json(transPath + file + ".json")
    except:
        continue
    f = open(oriPath + file, "r", encoding="932").readlines()
    out = open(outPath + file , "w", encoding="932")
    for line in f:
        if re.match(r"[;$\n]", line):
            out.write(line)
        elif line.startswith("【"):
            name = line[1:-2]
            newname = h.hanzitihuan(namedict[name])
            out.write(f"【{newname}】" + "\n")
        else:
            trans = transData.pop(0)["message"]
            trans = h.hanzitihuan(trans)
            trans = re.sub("_t[0-9!,]*", "", trans)
            out.write(trans + "\n")
    out.close()
    data = open_file_b(outPath + file)
    save_file_b(outPath + file, data, enc_key)