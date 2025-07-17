from Lib import *

oripath = "scene00.bdt"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

orifile = open(oripath, "r", encoding="932").readlines()
info = StatusInfo()

out = OriJsonOutput()
currentname = ""
currentnameset = set()
fileidx = 0
for i, line in enumerate(orifile):
    line = line.strip("\n")
    if line.startswith("#"):
        continue
    if line.startswith("LX"):
        if currentname:
            out.save_json(f"{outpath}/{fileidx}.json")
            fileidx += 1
            info.update(out)
            out = OriJsonOutput()
        currentname = line[2:].strip()
        out.add_text(currentname)
        out.dic["idx"] = i
        out.append_dict()
        if currentname in currentnameset:
            raise ValueError(f"Duplicate name found: {currentname} at line {i+1}")
        currentnameset.add(currentname)
    
    if '"' in line:
        m = re.search(r'(?P<name>.*?)"(?P<text>.*)', line)
        if m.group("name"):
            name = m.group("name")
            if "!" in name:
                name = name.split("!")[-1]
            out.add_name(name)
        text = m.group("text")
        text = text.replace("A", "朝倉")
        text = text.replace("B", "雅紀")
        out.add_text(text)
        out.dic["idx"] = i
        out.append_dict()

    if line.startswith("QP"):
        opts = line[2:].split(",")
        for _, opt in enumerate(opts):
            opt = opt.replace("A", "朝倉")
            opt = opt.replace("B", "雅紀")
            out.add_text(opt)
            out.dic["idx"] = f"{i}_{_}"
            out.append_dict()

    if line.startswith("QG"):
        opts = line[2:].split(",")
        for _, opt in enumerate(opts):
            opt = opt.replace("A", "朝倉")
            opt = opt.replace("B", "雅紀")
            out.add_text(opt)
            out.dic["idx"] = f"{i}_{_}"
            out.append_dict()

out.save_json(f"{outpath}/{fileidx}.json")
info.update(out)
info.output(0)
