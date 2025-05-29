from Lib import *
from KR_PROCESS import *

oriPath = "scr\\"
transPath = "gt_output\\"
outPath = "release"
os.makedirs(outPath, exist_ok=True)

namedict = open_json("namedict_trans.json")

for file in os.listdir(oriPath):
    print(file)
    lines = open(os.path.join(oriPath, file), "r", encoding="utf_16").readlines()
    try:
        transdata = open_json(os.path.join(transPath, file + ".json"))
    except:
        continue
    for data in transdata:
        transtext = data["message"]
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = transtext.replace("...", "…")
        transtext = processQuote(transtext)
        oritext = data["ori"]
        transtext = changeTextOutBrackets(oritext, transtext)
        if "optpos" in data:
            lines[data["optpos"]] = re.sub(r'\[seladd text="(.*?)"', f"[seladd text=\"{transtext}\"", lines[data["optpos"]])
            continue
        if "namepos" in data:
            oriname = lines[data["namepos"]]
            oriname, msg = oriname.split("】", 1)
            oriname = oriname[1:]
            if "/" in oriname:
                n1, n2 = oriname.split("/")
                n2 = namedict[n2]
                newname = n1 + "/" + n2
            else:
                newname = oriname + "/" + namedict[oriname]
            lines[data["namepos"]] = f"【{newname}】{msg}"
        # lines[data["msgpos"]] = transtext + "\n"
        if "msgpos" in data:
            msgposs = data["msgpos"]
            for idx, msgpos in enumerate(msgposs):
                if idx != 0:
                    lines[msgpos] = ""
                else:
                    if "】" in lines[msgpos]:
                        name, msg = lines[msgpos].split("】", 1)
                        lines[msgpos] = f"{name}】{transtext}\n"
                    else:
                        lines[msgpos] = f"{transtext}\n"
    # os.makedirs(os.path.join(outPath, file.split("_")[0]), exist_ok=True)
    open(os.path.join(outPath, "data", file), "w", encoding="utf_16").write("".join(lines))
    open(os.path.join(outPath, "patch2", file), "w", encoding="utf_16").write("".join(lines))