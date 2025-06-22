from Lib import *
from HanziReplacer import *

transPath = "gt_output\\"
outPath = "release\\trans\\"
os.makedirs(outPath, exist_ok=True)

def checkHalfWidth(text):
    if len(text) * 2 != len(text.encode("932")):
        return True

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release\\trans\\data2.bin")# , enc=b"HoukagoJosou"


res = {}
for file in os.listdir(transPath):
    transdata = open_json(os.path.join(transPath, file))
    for data in transdata:
        ori = bytes.fromhex(data["ori"])
        text = data["message"]
        text = text.replace("...", "…").replace("..", "…").replace(".", "。")
        text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        text = h.hanzitihuan(text)
        if checkHalfWidth(text):
            print("HalfWidth:", text)
            # raise Exception("HalfWidth")
        # text = text.encode("932")
        oritext = ori.decode("932")
        if re.search(r"^[#$0-9a-zA-Z]+", oritext):
            text = re.search(r"^[#$0-9a-zA-Z]+", oritext).group(0) + text
        if re.match(r"^　\$L", oritext):
            text = "　$L" + text
        if re.search(r"[#$0-9a-zA-Z]+$", oritext):
            text = text + re.search(r"[#$0-9a-zA-Z]+$", oritext).group(0)
        text = text.encode("932")
        res[ori] = text

        if "name" in data:
            ori = bytes.fromhex(data["name_ori"])
            name = data["name"]
            name = "[" + namedict[name] + "]"
            oritext = ori.decode("932")
            text = h.hanzitihuan(name)
            text = re.search(r"^[#$0-9a-zA-Z\u3000]+", oritext).group(0) + text
            text = text + re.search(r"[#$0-9a-zA-Z]+$", oritext).group(0)
            text = text.encode("932")
            res[ori] = text
resb = []
for k, v in res.items():
    resb.append(k + b"[=]" + v + b"[n]")
resb = b"".join(resb)
save_file_b(os.path.join(outPath, "data1.bin"), resb)#, enc=b"HoukagoJosou"
