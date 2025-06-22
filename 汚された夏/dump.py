from Lib import *

oriPath = "Script"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

isForceName = True
if isForceName:
    namedict = open_json("namedict.json")

for file in os.listdir(oriPath):
    data = open_file_b(os.path.join(oriPath, file)).decode("utf8")
    out = OriJsonOutput()
    matches = re.finditer(r'<msg.*?name="(?P<name>.*?)".*?text="(?P<msg>.*?)".*?/>|<menu.*?text="(?P<select>.*?)".*?/>|<description.*?text="(?P<description>.*?)".*?/>', data, re.DOTALL)
    for match in matches:
        if match.group("msg"):
            if match.group("name"):
                if isForceName:
                    if match.group("name") in namedict:
                        out.add_name(namedict[match.group("name")])
                    else:
                        out.add_text(match.group("name"))
                        out.append_dict()
                else:
                    out.add_name(namedict[match.group("name")])
            out.add_text(match.group("msg"))
            out.append_dict()
        elif match.group("select"):
            out.add_text(match.group("select"))
            out.append_dict()
        elif match.group("description"):
            out.add_text(match.group("description"))
            out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    info.update(out)
info.output(0)