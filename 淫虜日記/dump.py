from Lib import *

oriPath = "src"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

for file in os.listdir(oriPath):
    filelines = open(oriPath + "/" + file, "r", encoding="utf-16").readlines()
    out = OriJsonOutput()
    for i, line in enumerate(filelines):
        line = line.strip("\n").strip(" ").strip("\t").strip("\u3000")
        if line.startswith(";") or line.startswith("#") or line.startswith("エラー") or line == "":
            continue
        if re.match(r"【(?P<name>.*?)】(?P<msg>.*)$", line):
            name = re.match(r"【(?P<name>.*?)】(?P<msg>.*)$", line).group("name")
            msg = re.match(r"【(?P<name>.*?)】(?P<msg>.*)$", line).group("msg")
            out.add_name(name)
            out.add_text(msg)
            out.dic["idx"] = i
            out.append_dict()
            continue
        out.add_text(line)
        out.dic["idx"] = i
        out.append_dict()
    out.save_json(outPath + "/" + file + ".json")
    info.update(out)
info.output(0)