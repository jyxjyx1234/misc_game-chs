from Lib import *
from HanziReplacer import *

oripath = "scr"
transpath = "gt_output"
outpath = "release\\scr"
os.makedirs(outpath, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
os.makedirs("release\\trans", exist_ok=True)
h.gen_replace("release\\trans\\data.bin")

for f in os.listdir(oripath):
    if not f.endswith(".scr"):
        d = open_file_b(os.path.join(oripath, f))
        save_file_b(os.path.join(outpath, f), d)
        continue
    lines = open(os.path.join(oripath, f), "r", encoding="932").readlines()
    try:
        transdatas = open_json(os.path.join(transpath, f+".json"))
    except FileNotFoundError:
        transdatas = []
    for i, line in enumerate(lines):
        line = line.strip()
        if not line:
            continue
        if re.match(r'btnset\([0-9]*,[ ]*"slctwnd",[ ]*[0-9]*,[ ]*[0-9]*,[ ]*"(.*?)"', line):
            m = re.match(r'btnset\([0-9]*,[ ]*"slctwnd",[ ]*[0-9]*,[ ]*[0-9]*,[ ]*"(.*?)"', line)
            msg = m.group(1)
            trans = transdatas.pop(0)["message"]
            trans = h.hanzitihuan(trans)
            lines[i] = line.replace(msg, trans) + "\n"
            continue
        elif re.match(r"[a-zA-Z#:^%$]", line):
            continue
        elif re.match(r"\[(.*?)\](.*)", line):
            trans = transdatas.pop(0)
            name = trans["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            transmsg = trans["message"]
            transmsg = replace_halfwidth_with_fullwidth(transmsg
            )
            transmsg = h.hanzitihuan(transmsg)
            lines[i] = f"[{name}]{transmsg}\n"
        else:
            trans = transdatas.pop(0)["message"]
            trans = replace_halfwidth_with_fullwidth(trans)
            trans = h.hanzitihuan(trans)
            lines[i] = trans + "\n"
    with open(os.path.join(outpath, f), "w", encoding="932") as of:
        of.write("".join(lines))
