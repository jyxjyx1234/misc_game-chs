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
        ori = data["ori"].encode("932")
        text = data["message"]
        text = text.replace("...", "…").replace("..", "…").replace("‥", "…").replace(".", "。").replace("⋯", "…").replace("･", "·").replace("・", "·").replace("･･･", "…").replace("⋯", "…")
        # text = replace_halfwidth_with_fullwidth(text)
        try:
            text.encode("936")
        except UnicodeEncodeError:
            print("UnicodeEncodeError:", text)
            # raise Exception("UnicodeEncodeError")
        text = processQuote(text)
        text = h.hanzitihuan(text)
        if checkHalfWidth(text):
            pass
            # print("HalfWidth:", text)
            # raise Exception("HalfWidth")
        # text = text.encode("932")
        if text.startswith("「"):
            text = text[1:]
        text = split_text(text, 0x18)
        text = [i.encode("932") for i in text if i] 
        text = b"\x0d\x0a".join(text) 
        res[ori] = text

        if "name" in data:
            name = data["name"]
            text = namedict[name]
            text = h.hanzitihuan(text)
            text = text.encode("932")
            res[name.encode("932")] = text
resb = []
for k, v in res.items():
    resb.append(k + b"[=]" + v + b"[n]")
resb = b"".join(resb)
save_file_b(os.path.join(outPath, "data1.bin"), resb)#, enc=b"HoukagoJosou"
