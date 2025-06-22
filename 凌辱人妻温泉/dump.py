from Lib import *
import logging

logging.basicConfig(level=logging.INFO, format='', filename='dump.log', filemode='w', encoding="utf8")

oriPath = "script"
oriPath2 = "script2"
outPath = "gt_input"

os.makedirs(outPath, exist_ok=True)

isForceName = False
if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

info = StatusInfo()

for file in os.listdir(oriPath):
    with open(os.path.join(oriPath, file), "r", encoding="932") as f:
        texts = f.readlines()
    out = OriJsonOutput()
    for i, line in enumerate(texts):
        line = line.strip()
        if line == "":
            continue
        if re.match(r"[0-9a-zA-Z_]", line):
            logging.info(f"Skipping line: {line}")
            continue
        if "「" in line and line.endswith("」"):
            name, text = line.split("「", 1)
            text = "「" + text
            out.add_name(name)
            out.add_text(text)
            out.dic['idx'] = i
            out.append_dict()
        else:
            out.add_text(line)
            out.dic['idx'] = i
            out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    info.update(out)

out = OriJsonOutput()
for file in os.listdir(oriPath2):
    with open(os.path.join(oriPath2, file), "r", encoding="932") as f:
        texts = f.readlines()
    for i, line in enumerate(texts):
        line = line.strip()
        m = re.match(r"401(?P<sel1>.*?)(?P<tag1>#(.*?)#)(?P<sel2>.*?)(?P<tag2>#(.*?)#)", line)
        if m:
            text1 = m.group("sel1")
            out.add_text(text1)
            out.dic['idx'] = f"{file}_{i}_1"
            out.append_dict()
            text2 = m.group("sel2")
            out.add_text(text2)
            out.dic['idx'] = f"{file}_{i}_2"
            out.append_dict()
out.save_json(os.path.join(outPath, "sels.json"))
info.update(out)

info.output(0)