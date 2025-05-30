from Lib import *


ori = open("攻略ガイド\\攻略ガイド\\index.html", "r", encoding="utf-8").read()

buffer = []
out = OriJsonOutput()
for i, char in enumerate(ori):
    if char == "<":
        out.append_dict()
        buffer.append(char)
        continue
    if char == ">":
        buffer.pop()
        continue
    if not buffer and char != "\n" and char != "\r" and char != "\t":
        out.add_text(char)
        if "idx" not in out.dic:
            out.dic["idx"] = i
        
out.save_double_line("攻略文本.txt")