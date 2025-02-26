from Lib import *

ori_path = "scr\\"
trans_path = "gt_output\\"
out_path = "release\\patch\\"
namedict = open_json("namedict.json")
fileslist = os.listdir(ori_path)

def split_line(line):
    maxlinecount = 28
    res = []
    for i in range(0, len(line), maxlinecount):
        res.append(line[i:i+maxlinecount])
    return "\\n".join(res)

for file in fileslist:
    f = open(ori_path + file, "r", encoding="utf-16").readlines()
    out_f = open(out_path + file, "w", encoding="utf-16")
    try:
        transdatas = open_json(trans_path + file + ".json")
    except FileNotFoundError:
        transdatas = []

    for line in f:
        line = line.strip("\n")
        if re.match(r"[*#;]", line):
            out_f.write(line + "\n")
        elif line == "":
            out_f.write("\n")
        else:
            transdata = transdatas.pop(0)
            transtext = transdata["message"]
            transtext = processQuote(transtext)
            transtext = split_line(transtext)
            if transdata.get("name", ""):
                name = transdata["name"]
                name = namedict[name]
                transtext = f"【{name}】{transtext}"
            out_f.write(transtext + "\n")
                
# os.system("arc_pack xp3 release\\patch release\\patch.xp3")