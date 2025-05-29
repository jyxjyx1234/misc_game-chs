from Lib import *
from KR_PROCESS import *

oriPath = "scenario\\"
transPath = "gt_output\\"
outPath = "release"
os.makedirs(outPath, exist_ok=True)

namedict = open_json("namedict.json")

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
            oriname = oriname[1:-2]
            if "/" in oriname:
                n1, n2 = oriname.split("/")
                n2 = namedict[n2]
                newname = n1 + "/" + n2
            else:
                newname = oriname + "/" + namedict[oriname]
            lines[data["namepos"]] = f"【{newname}】\n"
        lines[data["msgpos"]] = transtext + "\n"
    # os.makedirs(os.path.join(outPath, file.split("_")[0]), exist_ok=True)
    open(os.path.join(outPath, "patch", file), "w", encoding="utf_16").write("".join(lines))