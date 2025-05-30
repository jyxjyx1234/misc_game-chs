from GSC_FILE import *
from Lib import *
import os, re

oriPath = "scr\\"
oriFiles = os.listdir(oriPath)
os.makedirs("ori", exist_ok=True)
os.makedirs("gt_input", exist_ok=True)

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
    for i, l in enumerate(oriTXT):
        l = l.replace("\n", "")
        if len(l)>0 and not re.match(r"[\[#>@0-9a-zA-Z]", l) and not re.match(r"\^g", l):
            if l == "\u3000":
                out.append_dict()
                continue
            else:
                msg = l.replace("\u3000", "")
                out.dic["ori"] = out.dic.get("ori","") + msg
                msg = re.sub(r"\|(.*?)\[.*?\]", lambda x: x.group(1), msg)
                msg = re.sub(r"\^d[0-9]", "", msg)
                msg = re.sub(r"\^m", "", msg)
                msg = re.sub(r"\^s[0-9]", "", msg)
                if msg == "":
                    out.append_dict()
                    continue
                out.dic["message"] = out.dic.get("message","") + msg
                out.dic["pos"] = out.dic.get("pos", []) + [i]
                # if isBracketsBalanced(out.dic["message"]):
                #     out.append_dict()
        else:
            out.append_dict()
    out.append_dict()
    out.save_json("gt_input\\" + f.replace(".gsc", ".json"))
    namedict.update(out.get_names())
#save_json("namddict.json", namedict)