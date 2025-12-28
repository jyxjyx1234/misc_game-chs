from Lib import *
from ksDumper_config import postprocess

try:
    import dump
    import qucik_retrans
    import draw_img
except:
    pass

oriPath = "scr"
outPath = "chs"
os.makedirs(outPath, exist_ok=True)
transPath = "gt_retrans\\"

namedict = open_json("namedict.json")

def change_text(textlist, transtext, start, end):
    textlist[start] = transtext
    for i in range(start + 1, end):
        textlist[i] = ""
    if textlist[end] == "@":
        textlist[start] += "\n"

for file in os.listdir(oriPath):
    orifile = list(open(os.path.join(oriPath, file), "r", encoding="utf-16").read())
    try:
        transdatas = open_json(os.path.join(transPath, file + ".json"))
    except FileNotFoundError:
        transdatas = []
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

def count_halfwidth(text):
    count = 0
    for char in text:
        if ord(char) < 256:
            count += 1
    return count

def split_line(text, maxlen=32):
    text = text.replace("\n\n", "[n]").replace("\n", "").replace("[n]", "\n\n")
    lines = text.split("\n")
    newlines = []
    for line in lines:
        while len(line) > maxlen:
            _ = line[:maxlen]
            linelen = maxlen
            while len(_) - count_halfwidth(_) * 0.5 < maxlen and linelen < len(line):
                linelen += 1
                _ = line[:linelen]
            line = line[linelen:]
            newlines.append(_)
        if line == "":
            line = " "
        newlines.append(line)
    return "\n".join(newlines)

for data in open_json("gt_output/tips.json"):
    fn = data["filename"]
    text = data["message"]
    with open(os.path.join("chs", f"tips_txt_{fn}.txt"), "w", encoding="utf-16") as f:
        f.write(split_line(text))

for data in open_json("gt_output/arcs.json"):
    fn = data["filename"]
    text = data["message"]
    with open(os.path.join("chs", f"{fn}"), "w", encoding="utf-16") as f:
        f.write(split_line(text))