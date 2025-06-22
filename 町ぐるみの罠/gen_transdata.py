from Lib import *
from HanziReplacer import *

transPath = "gt_output\\"
outPath = "release\\trans\\"
os.makedirs(outPath, exist_ok=True)

def checkHalfWidth(text):
    # if len(text) * 2 != len(text.encode("932")):
        return False

namedict = open_json("namedict.json")
# h = HanziReplacer()
# h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
# h.gen_replace("release\\trans\\data2.bin")# , enc=b"HoukagoJosou"


res = {}
for file in os.listdir(transPath):
    transdata = open_json(os.path.join(transPath, file))
    for data in transdata:
        ori = data["ori"].encode("utf-16-le")
        text = data["message"]
        text = text.replace("...", "…").replace("..", "…").replace(".", "。").replace("⋯", "…")
        # text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        # text = h.hanzitihuan(text)
        if checkHalfWidth(text):
            print("HalfWidth:", text)
            raise Exception("HalfWidth")
        # text = text.encode("932")
        # if text.startswith("「"):
        #     text = text[1:]
        # text = split_text(text, 0x18)
        # text = [i.encode("932") for i in text if i] 
        # text = b"\x0d\x0a".join(text) 
        res[ori] = text.encode("utf-16-le")

        if "name" in data:
            name = data["name"]
            text = namedict[name]
            # text = h.hanzitihuan(text)
            text = text.encode("utf-16-le")
            res[name.encode("utf-16-le")] = text
resb = []
for k, v in res.items():
    resb.append(k + "[=]".encode("utf-16-le") + v + "[n]".encode("utf-16-le"))
resb = b"".join(resb)
save_file_b(os.path.join(outPath, "data1.bin"), resb)#, enc=b"HoukagoJosou"
os.system("cd release && pack.bat")