from Lib import *
from HanziReplacer import *

oriPath = "script"
oriPath2 = "script2"
transPath = "gt_output"
outPath = "release/script"

namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_sp_font()
# exit()

for file in os.listdir(oriPath):
    transdata = open_json(os.path.join(transPath, file + ".json"))
    oridata = open(os.path.join(oriPath, file), "r", encoding="932").readlines()
    for data in transdata:
        idx = data["idx"]
        msg = data["message"]
        msg = msg.replace("......", "……").replace(".....", "……").replace("....", "……").replace("...", "…").replace("..", "…").replace(".", "。")
        msg = processQuote(msg)
        msg = replace_halfwidth_with_fullwidth(msg)
        msg = h.hanzitihuan(msg)
        if "name" in data:
            name = data["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            msg = name + msg
        oridata[idx] = msg + "\n"
    with open(os.path.join(outPath, file), "w", encoding="932") as f:
        f.writelines(oridata)

sel_transdata = open_json(os.path.join(transPath, "sels.json"))
seltrans = {}
for data in sel_transdata:
    filename, pos = data["idx"].split("_", 1)
    seltrans[filename] = seltrans.get(filename, []) + [{
        "pos": pos,
        "message": h.hanzitihuan(data["message"]),
    }]

for filename, translist in seltrans.items():
    oridata = open(os.path.join(oriPath2, filename), "r", encoding="932").readlines()
    for data in translist:
        idx, pos = data["pos"].split("_", 1)
        idx = int(idx)
        msg = data["message"]
        if pos == "1":
            oridata[idx] = re.sub(r"401(?P<sel1>.*?)(?P<tag1>#(.*?)#)(?P<sel2>.*?)(?P<tag2>#(.*?)#)", "401" + msg + r"\g<tag1>\g<sel2>\g<tag2>", oridata[idx])
        elif pos == "2":
            oridata[idx] = re.sub(r"401(?P<sel1>.*?)(?P<tag1>#(.*?)#)(?P<sel2>.*?)(?P<tag2>#(.*?)#)", r"401\g<sel1>\g<tag1>" + msg + r"\g<tag2>", oridata[idx])
    with open(os.path.join(outPath, filename), "w", encoding="932") as f:
        f.writelines(oridata)

import pack