from Lib import *
from WS2FILE import *
from enc_dec_ws2 import *

oriPath = "Rio_dump"
transPath = "gt_output"
outPath = "release\\rio_"

os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")

for file in os.listdir(oriPath):
    try:
        transdatas = open_json(os.path.join(transPath, file + ".json"))
    except FileNotFoundError:
        transdatas = []
    ws2f = WS2FileCompiler(os.path.join(oriPath, file), "936")
    for c in ws2f.commands:
        if c["op"] == "15":
            name = c["args"][0]["value"]
            name = name.replace("%LC", "")
            if name != "":
                new_name = namedict[name]
                c["args"][0]["value"] = "%LC" + new_name
        elif c["op"] == "14":
            msg = c["args"][2]["value"]
            msg_ = msg.replace("\\n", "")
            msg_ = re.sub(r"[%KP]*$", "", msg_)
            if msg_ != "":
                transdata =  transdatas.pop(0)
                transmsg = transdata["message"]
                transmsg = transmsg + re.search(r"[%KP]*$", msg).group(0)
                c["args"][2]["value"] = transmsg
        elif c["op"] == "0F":
            msg = c["args"][2]["value"]
            transdata = transdatas.pop(0)
            transmsg ="  " + transdata["message"] + "  "
            c["args"][2]["value"] = transmsg
            msg = c["args"][8]["value"]
            transdata = transdatas.pop(0)
            transmsg = "  " + transdata["message"] + "  "
            c["args"][8]["value"] = transmsg
    if len(transdatas) > 0:
        print(f"Warning: {file} has unprocessed translation data: {transdatas}")
    ws2f.preCompile()
    ws2f.compile(os.path.join(outPath, file.replace(".txt", "")))
    # data = open_file_b(os.path.join(outPath, file.replace(".txt", "")))
    # data = enc(data)
    # with open(os.path.join(outPath, file.replace(".txt", ".ws2")), "wb") as f:
    #     f.write(data)
os.makedirs("release\\rio", exist_ok=True)
for file in os.listdir("rio_out"):
    data = open_file_b(os.path.join(outPath, file))
    data = enc(data)
    save_file_b(os.path.join("release\\rio", file), data)