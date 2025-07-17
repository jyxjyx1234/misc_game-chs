from Lib import *
from ksDumper_config import postprocess

oriPath = "scr"
outPath = "release\\data"
transPath = "gt_output\\"

namedict = open_json("namedict.json")

def change_text(textlist, transtext, start, end):
    textlist[start] = transtext
    for i in range(start + 1, end):
        textlist[i] = ""

for file in os.listdir(oriPath):
    orifile = list(open(os.path.join(oriPath, file), "r", encoding="utf-16").read())
    try:
        transdatas = open_json(os.path.join(transPath, file + ".json"))
    except FileNotFoundError:
        continue
    for transdata in transdatas:
        if "name" in transdata:
            name = transdata["name"]
            transname = namedict[name]
            change_text(orifile, transname, transdata["name_start"], transdata["name_end"])
        transmessage = transdata["message"]
        transmessage = postprocess(transmessage)
        change_text(orifile, transmessage, transdata["start"], transdata["end"])
    with open(os.path.join(outPath, file), "w", encoding="utf-16") as f:
        f.write("".join(orifile))