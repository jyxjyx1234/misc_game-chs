from Lib import *
from HanziReplacer import *

namedict = open_json("namedict.json")
oripath = "event_d\\"
transpath = "gt_output\\"
outpath = "event_transed\\"
os.makedirs(outpath, exist_ok=True)
files = os.listdir(oripath)

def preprocess(text):
    text = text.replace("N0","佐竹").replace("N1","茂樹")
    text = text.replace("/S","")
    text = text.replace("C0","")
    return text

alltext = []
for f in files:
    transf = transpath + f.replace(".txt", ".json")
    try:
        transf = open_json(transf)
    except:
        transf = []
    for d in transf:
        trans = d["message"]
        trans = replace_halfwidth_with_fullwidth(trans)
        alltext.append(trans)
h = HanziReplacer()
h.ReadTransAndGetHanzidict([alltext, namedict])
h.ChangeFont("WenQuanYi.ttf", "release/InnocencePain.ttf","InnocencePain")

newcharlist = "".join(h.allchars)
newcharlist = newcharlist[:233] + "N0N1/S/W/C/EC0C1C2C3C4C5/R/R/R/R/R/R/R/R/R/R/R" + newcharlist[233:]
newcharlist = newcharlist[:2210] + "佐竹　　　　　　茂樹　　　　　　　" + newcharlist[2210:]
save_file_b("charlist.txt", newcharlist.encode("932"))
save_file_b("release\\char.bin", newcharlist.encode("932"))
for f in files:
    transf = transpath + f.replace(".txt", ".json")
    try:
        transf = open_json(transf)
    except:
        transf = []
    orif = oripath + f
    orif = open(orif, "r", encoding="932").readlines()
    outf = outpath + f
    outf = open(outf, "w", encoding="932")
    for l in orif:
        if "|" in l:
            offset = int(l.split("|")[0][1:])
            l = "|".join(l.split("|")[1:])
        else:
            outf.write(l)
            continue
        if not l.startswith("#41") and not l.startswith("#3d"):
            outf.write(f"@{offset}|" + l)
            continue
        texttype = l[1:3]
        text = l[8:-2]
        if texttype == "41":#name
            if text == "/E":
                outf.write(f"@{offset}|" + l)
                continue
            name = text[:-2]
            transname = namedict[preprocess(name)]
            transname = replace_halfwidth_with_fullwidth(transname)
            transname = h.hanzitihuan(transname)
            l = l.replace(name, transname)
            outf.write(f"@{offset}|" + l)
            continue
        if texttype == "3d":
            try:
                trans = transf.pop(0)["message"]
            except:
                print(f)
                print(l)
                exit()
            trans = replace_halfwidth_with_fullwidth(trans)
            trans = h.hanzitihuan(trans)
            if text.startswith("C0"):
                trans = "C0"+trans
            trans += text[-2:]
            outf.write(f"@{offset}|" + f"#3d|str({trans})\n")

