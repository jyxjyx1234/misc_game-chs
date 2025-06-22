from Lib import *
from WS2FILE import *

oriPath = "Rio_dump"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)
info = StatusInfo()

for file in os.listdir(oriPath):
    out = OriJsonOutput()
    contents = WS2FileCompiler(os.path.join(oriPath, file), "utf-8").commands
    for c in contents:
        if c["op"] == "15":
            name = c["args"][0]["value"]
            if name != "" and not name.startswith("%LC"):
                print(f"Warning: {name} is not a valid name, skipping.")
            name = name.replace("%LC", "")
            out.add_name(name)
        elif c["op"] == "14":
            msg = c["args"][2]["value"]
            msg = msg.replace("\\n", "")
            if "name" in out.dic and out.dic["name"] == "":
                del out.dic["name"]
            out.add_text(msg)
            out.dic["message"] = re.sub(r"[%KP]*$", "", out.dic["message"])
            out.append_dict()
        elif c["op"] == "0F":
            msg = c["args"][2]["value"]
            out.add_text(msg)
            out.append_dict()
            msg = c["args"][8]["value"]
            out.add_text(msg)
            out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    info.update(out)
info.output(0)