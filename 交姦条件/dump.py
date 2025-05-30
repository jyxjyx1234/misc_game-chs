from Lib import *

ori = "scr\\"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

namedict = {}
textcount = 0

opts = OriJsonOutput()

for filename in os.listdir(ori):
    lines = open(ori + filename, "r", encoding="932").readlines()
    out = OriJsonOutput()
    for i, line in enumerate(lines):
        line = line.strip()
        if len(line) == 0:
            continue
        if line.startswith("ret"):
            out.append_dict()
            continue
        if line.startswith("msg2"):
            out.add_name(line[5:])
            continue
        if line.startswith("def_sel "):
            opts.add_text(line[8:])
            opts.dic["selpos"] = [filename, i]
            opts.append_dict()
        if re.match(r"[;@*#\[0-9a-zA-Zﾙ{}}]", line):
            continue
        out.add_text(line)
        out.dic["pos"] = out.dic.get("pos", []) + [i]
    out.save_json(os.path.join(outpath, filename) + ".json")
    textcount += out.textcount
    namedict.update(out.get_names())
opts.save_json("gt_input\\opts.json")
# save_json("namedict.json", namedict)
print(f"Total text count: {textcount}")