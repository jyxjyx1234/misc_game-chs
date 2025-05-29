from Lib import *

namedict = open_json("namedict.json")
out = open("nametrans.txt", "w", encoding="utf-8")

for name in namedict:
    namet = namedict[name]
    namet = replace_halfwidth_with_fullwidth(namet)
    if namet == name:
        continue
    res = f'#NAMAE = "{name}"			,"{namet}",			0, 000, -1'
    out.write(res + "\n")