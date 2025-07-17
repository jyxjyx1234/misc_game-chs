from Lib import *

oriPath = "nscript.dat"
transPath = "gt_output"
outPath = "release\\nscript.chs"


oriData = open(oriPath, "r", encoding="utf8").readlines()
newData = []
csels = open("selfile_trans.txt", "r", encoding="utf8").readlines()
for line in oriData:
    if line.startswith("csel "):
        newData.append((csels.pop(0) + "\n").encode("936"))
        continue
    line = line.replace("\u266a", "").replace("\u30fb", "·")
    newData.append(line.encode("936"))

def checkHalfWidth(text):
    if len(text) * 2 - 2 * text.count("@\n")  - text.count("/") != len(text.encode("936")):
        return True

for file in os.listdir(transPath):
    if not file.endswith(".json"):
        continue
    transdatas = open_json(os.path.join(transPath, file))
    for transdata in transdatas:
        poses = transdata["pos"]
        transtext = transdata["message"]
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = replace_symbol_for_gbk(transtext)
        transtext = processQuote(transtext)
        transtext = transtext.replace("...", "…").replace("..", "…").replace(".", "。").replace("⋯", "…")
        if "@" in transtext:
            transtext = transtext.replace("@", "@\n")
            print(f"Warning: '@' found in {file} {transtext}, removed from text.")
        if checkHalfWidth(transtext):
            raise ValueError(f"Text contains half-width characters: {transtext}")
        # if "endflag" in transdata:
        #     transtext += "\\"
        # else:
        #     if not transtext.endswith("」") and not transtext.endswith("/") and not transtext.endswith("@"):
        #         transtext += "@"
        transtext += "\\"
        newData[poses[0]] = (transtext + "\n").encode("936")
        for i in range(1, len(poses)):
            newData[poses[i]] = b""
    for i, line in enumerate(oriData):
        if line.startswith(";"):
            newData[i] = b""
        # if line == "setwindow 8,16,27,16,23,23,0,8,20,1,1,#999999,0,0,639,479\n":
        #     newData[i] = b"setwindow 8,16,27,16,23,23,0,8,20,1,1,#999999,0,0,640,480\n"


def xor(data, key):
    return bytes([b ^ key for i, b in enumerate(data)])

res = b"".join(newData)
save_file_b(outPath + "_", res)
res = xor(res, 0x84)
save_file_b(outPath, res)