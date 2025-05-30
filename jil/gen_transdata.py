from Lib import *
from HanziReplacer import *

transPath = "gt_output\\"
oriPath = "SCR\\"
outPath = "release\\trans\\"
os.makedirs(outPath, exist_ok=True)

def checkHalfWidth(text):
    if len(text) * 2 != len(text.encode("932")):
        return True

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath)
h.gen_replace("release\\data.bin", enc=b"JII")

sizeset = set()

def gen_transdata(oriPath, file, transPath, outPath):
    oridata = open_file_b(os.path.join(oriPath, file))
    oriLen = len(oridata)
    if oriLen in sizeset:
        raise Exception("Duplicate size")
    sizeset.add(oriLen)
    transdata = open_json(os.path.join(transPath, file + ".json"))
    res = []
    for data in transdata:
        start = data["start"]
        text = data["message"]
        text = text.replace("...", "…").replace("..", "…").replace(".", "。")
        text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        text = h.hanzitihuan(text)
        if checkHalfWidth(text):
            print("HalfWidth:", text)
            raise Exception("HalfWidth")
        res.append(f"{start}[=]{text}[n]".encode("932"))
    res = b"".join(res)
    save_file_b(os.path.join(outPath, f"{oriLen}"), res, enc=b"JII")

for file in os.listdir(oriPath):
    gen_transdata(oriPath, file, transPath, outPath)

transPath = "extra_trans\\"
oriPath = "extra_scr\\"  
for file in os.listdir(oriPath):
    gen_transdata(oriPath, file, transPath, outPath)  