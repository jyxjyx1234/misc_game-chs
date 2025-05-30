from Lib import *
from HanziReplacer import *

oripath = "scr"
transpath = "gt_output"
outpath = "scr_trans"
os.makedirs(outpath, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
h.gen_replace("release\\data2.bin", enc = b"ALyCE")

def check_halfwidth(text):
    if len(text) * 2 != len(text.encode("932")):
        return False
    return True

for transfile in os.listdir(transpath):
    transdatas = open_json(os.path.join(transpath, transfile))
    if transfile == "opts.json":
        continue
    orifile = open(os.path.join(oripath, transfile.replace(".json", "")), "r", encoding="932").readlines()
    for transdata in transdatas:
        linecount = transdata["line"]
        poss = transdata["pos"]
        text = transdata["message"]
        text = h.hanzitihuan(text)
        text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        text = text.replace("...", "…")
        if not check_halfwidth(text):
            print(transfile, text)
        textlist = [text] + [""] * (linecount - 1)
        for i, pos in enumerate(poss):
            orifile[pos] = textlist[i] + "\n"
    orifile = "".join(orifile)
    for name in namedict:
        orifile = orifile.replace(name, h.hanzitihuan(namedict[name]))
    with open(os.path.join(outpath, transfile.replace(".json", "")), "w", encoding="932") as f:
        f.write(orifile)

opts = open_json(os.path.join(transpath, "opts.json"))
for opt in opts:
    text = opt["message"]
    text = h.hanzitihuan(text)
    text = replace_halfwidth_with_fullwidth(text)
    if not check_halfwidth(text):
        print("opts.json", text)
    file, pos = opt["selpos"]
    with open(os.path.join(outpath, file), "r", encoding="932") as f:
        lines = f.readlines()
    lines[pos] = "def_sel " + text + "\n"
    with open(os.path.join(outpath, file), "w", encoding="932") as f:
        f.write("".join(lines))

from DAT_FILE import DAT_FILE

f = DAT_FILE("scr.dat.dec")
f.pack("scr_trans", "release\\scr.chs")

