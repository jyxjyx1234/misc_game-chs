from Lib import *

oripath = "scr"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

info = StatusInfo()

for f in os.listdir(oripath):
    if not f.endswith(".scr"):
        continue
    lines = open(os.path.join(oripath, f), "r", encoding="932").readlines()
    out = OriJsonOutput()
    for line in lines:
        line = line.strip()
        if not line:
            continue
        if re.match(r'btnset\([0-9]*,[ ]*"slctwnd",[ ]*[0-9]*,[ ]*[0-9]*,[ ]*"(.*?)"', line):
            m = re.match(r'btnset\([0-9]*,[ ]*"slctwnd",[ ]*[0-9]*,[ ]*[0-9]*,[ ]*"(.*?)"', line)
            msg = m.group(1)
            out.add_text(msg)
            out.append_dict()
            continue
        elif re.match(r"[a-zA-Z#:^%$]", line):
            continue
        elif re.match(r"\[(.*?)\](.*)", line):
            m = re.match(r"\[(.*?)\](.*)", line)
            name = m.group(1)
            msg = m.group(2)
            out.add_name(name)
            out.add_text(msg)
            out.append_dict()
        else:
            out.add_text(line)
            out.append_dict()
    out.save_json(os.path.join(outpath, f+".json"))
    info.update(out)
info.output(0)
