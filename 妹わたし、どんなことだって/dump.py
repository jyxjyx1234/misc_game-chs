from Lib import *

def dump(data: list):
    out = OriJsonOutput()
    out.preProcess = lambda x: x.replace("＠", "")
    for i, line in enumerate(data):
        line = line.strip("\n")
        if not line:
            out.append_dict()
            continue
        if re.match(r"#TEXTOUT", line):
            out.append_dict()
            content = line[9:].split(",")[0]
            if re.match(r"　*$", content):
                continue
            out.add_text(content)
            out.add_idx(f"{i}_8")
            out.append_dict()
            continue
        if re.match(r"#BACKLOG_WRITE", line):
            out.append_dict()
            content = line[15:]
            out.add_text(content)
            out.add_idx(f"{i}_14")
            out.append_dict()
            continue
        if re.match(r"#SAVE_TITLE", line):
            out.append_dict()
            content = line[12:]
            out.add_text(content)
            out.add_idx(f"{i}_11")
            out.append_dict()
            continue
        if re.match(r"[*#％/$]", line):
            out.append_dict()
            continue
        if re.match(r"GOTO", line):
            out.append_dict()
            continue
        if re.match(r"【(.*?)】$", line):
            out.add_name(line[1:-1])
            out.add_name_idx(i)
            continue
        out.add_text(line)
        out.add_idx(i)
    return out

oripath = "src/txt"
outpath = "gt_input"
info = StatusInfo()
os.makedirs(outpath, exist_ok=True)
for file in os.listdir(oripath):
    with open(os.path.join(oripath, file), encoding="932") as f:
        data = f.readlines()
    out = dump(data)
    out.save_json(os.path.join(outpath, file + ".json"))
    info.update(out)
info.output(0)