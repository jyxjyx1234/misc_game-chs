from Lib import *


ori = open("攻略ガイド\\攻略ガイド\\index.html", "r", encoding="utf-8").read()
ori = list(ori)

trans = open("攻略文本_trans.txt", "r", encoding="utf-8").readlines()

for text in trans:
    if text.startswith("★"):
        text = text.strip("\n")
        _, offset, _, text = text.split("★")
        offset = int(offset)
        ori[offset] = text
        offset += 1
        while ori[offset] != "<":
            ori[offset] = ""
            offset += 1

open("攻略ガイド\\攻略ガイド\\trans.html", "w", encoding="utf-8").write("".join(ori))