from Lib import *

oriPath = "HGO_DUMP\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

isForceName = True

if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

for filename in os.listdir(oriPath):
    out = OriJsonOutput()
    file = open("HGO_DUMP\\" + filename, "r", encoding="utf-8")
    for line in file:
        line = line.strip("\n")
        if line.startswith("@"):
            args = line.split("|")
            offset = int(args[0][1:], 16)
            op = args[1][1:]
            args = args[2:]
            if op == "0481":
                out.append_dict()
                text = args[0][5:-1]
                out.add_text(text)
                out.append_dict()
            elif op == "1403" or op == "1408":
                out.append_dict()
                text = args[0][5:-1]
                out.add_text(text)
                out.append_dict()
            elif op == "0301" and len(args) != 0:
                text = args[0][5:-1]
                if "「" in text:
                    name, text = text.split("「", 1)
                    text = "「" + text
                    if isForceName:
                        if name not in namedict:
                            text = name + text
                            out.add_text(text)
                            continue
                    out.add_name(name)
                out.add_text(text)
            elif op == "0302":
                continue
            elif op == "1014":
                out.append_dict()
                text = args[0][4:-1]
                if not re.match(r"^[0-9a-fA-F]+$", text):
                    out.add_text(text)
                    out.append_dict()
            else:
                out.append_dict()
    out.save_json(outPath + filename[:-4] + ".json")
    info.update(out)

info.output(isSaveName = not isForceName)
                