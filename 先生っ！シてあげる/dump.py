from Lib import *

ori = "TXT\\"
out = "gt_input\\"
os.makedirs(out, exist_ok=True)

namedict = {}
textCount = 0
for file in os.listdir(ori):
    f = open(ori + file, "r", encoding="932").readlines()
    out = OriJsonOutput()
    for line in f:
        if re.match(r"[;$\n]", line):
            continue
        elif line.startswith("【"):
            name = line[1:-2]
            out.add_name(name)
        else:
            out.add_text(line[:-1])
            out.append_dict()
    namedict.update(out.get_names())
    textCount += out.textcount
    out.save_json("gt_input\\" + file + ".json")

if not os.path.exists("namedict.json"):
    save_json("namedict.json", namedict)
print("textCount:", textCount)