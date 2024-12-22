from GSC_FILE import *
from Lib import *
import os, re

oriPath = "scr\\"
oriFiles = os.listdir(oriPath)

for f in oriFiles:
    if "gsc" in f:
        oriFilePath = oriPath + f.replace(".gsc", "")
        gscf = GscFile(oriFilePath, 0)
        gscf.ReinitAll()
        gscf.FileName = "ori\\" + f.replace(".gsc", "")
        gscf.DecompileGscToTxt()

namedict = {}
for f in oriFiles:
    out = OriJsonOutput()
    oriTXT = open("ori\\" + f.replace(".gsc", ".txt"), "r", encoding="sjis").readlines()
    for l in oriTXT:
        l = l.replace("\n", "")
        if len(l)>0 and l[0] not in ["[", "#", ">", "@"] and not re.match("[0-9a-zA-Z]", l):
            if l[0] == "【":
                out.dic["name"] = l[1:-1]
            elif l == "\u3000":
                continue
            else:
                msg = l.replace("\u3000", "")
                msg = re.sub(r"\|(.*?)\[.*?\]", lambda x: x.group(1), msg)
                msg = re.sub(r"\^d[0-9]", "", msg)
                if msg == "":
                    continue
                out.dic["message"] = out.dic.get("message","") + msg
                out.dic["len"] = out.dic.get("len",0) + 1
                if isBracketsBalanced(out.dic["message"]):
                    out.append_dict()
    out.append_dict()
    out.save_json("oriJson\\" + f.replace(".gsc", ".json"))
    namedict.update(out.get_names())
#save_json("namddict.json", namedict)