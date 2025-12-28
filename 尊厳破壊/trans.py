from Lib import *

oripath = "src"
transpath = "gt_output"
outpath = "release/data"
namedict = open_json("namedict.json")

for file in os.listdir(oripath):
    try:
        transdatas = open_json(os.path.join(transpath, file + ".json"))
    except FileNotFoundError:
        transdatas = []
    orilines = open(os.path.join(oripath, file), encoding="utf-16").readlines()
    for transdata in transdatas:
        transtext = transdata["message"]
        if "name" in transdata:
            name = transdata["name"]
            name = namedict[name]
            transtext = f"【{name}】{transtext}"
        idx = transdata["idx"]
        ori = orilines[idx]
        ori = ori.strip("\n").strip(" ").strip("\t")
        if ori.startswith("\u3000"):
            transtext = "\u3000" + transtext
        if ori.startswith("#savetitle "):
            transtext = "#savetitle " + transtext
        orilines[idx] = transtext + "\n"
    with open(os.path.join(outpath, file), "w", encoding="utf-16") as f:
        f.writelines(orilines)