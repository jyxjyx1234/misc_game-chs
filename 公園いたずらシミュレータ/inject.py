from Lib import *
from KR_PROCESS import *

oriPath = "scenario"
transPath = "gt_output"
outPath = "release\\patch"
os.makedirs(outPath, exist_ok=True)

charset = set()

for file in os.listdir(oriPath):
    lines = open(os.path.join(oriPath, file), "r", encoding="utf-16").readlines()
    try:
        transdata = open_json(os.path.join(transPath, file + ".json"))
    except:
        continue
    for data in transdata:
        poss = data["pos"]
        text = data["message"]
        ori = data["ori"]
        text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        text = text.replace("...", "…")
        text = split_line(text)
        for char in text:
            charset.add(char)
        text = changeTextOutBrackets(ori, text)
        text = replace_name_back(text)
        text = text.replace("\n", "\n")
        lines[poss[0]] = text + "\n"# 这里带有零宽空格。与first.ks的410行对应
        for pos in poss[1:]:
            lines[pos] = ""
    open(os.path.join(outPath, file), "w", encoding="utf-16").writelines(lines)

with open("charset.txt", "w", encoding="utf-8") as f:
    for char in charset:
        f.write(char)