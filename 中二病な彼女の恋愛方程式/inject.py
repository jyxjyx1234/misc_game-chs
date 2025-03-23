from Lib import *
from KR_PROCESS import *

oriPath = "scr\\"
transPath = "gt_output\\"
outPath = "release"
os.makedirs(outPath, exist_ok=True)

namedict = open_json("namedict.json")

for file in os.listdir(oriPath):
    print(file)
    lines = open(os.path.join(oriPath, file), "r", encoding="utf_8_sig").readlines()
    try:
        transdata = open_json(os.path.join(transPath, file.replace(".ks", ".json")))
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
            lines[data["optpos"]] = re.sub(r"\[select_button text=(.*?) jump", f"[select_button text={transtext} jump", lines[data["optpos"]])
            continue
        if "name" in data:
            name = data["name"]
            name = namedict[name]
            transtext = f"【{name}】[r]{transtext}"
        lines[data["msgpos"]] = transtext + "\n"
    # os.makedirs(os.path.join(outPath, file.split("_")[0]), exist_ok=True)
    open(os.path.join(outPath, "data", "scenario", file.split("_")[0], file), "w", encoding="utf_8_sig").write("".join(lines))