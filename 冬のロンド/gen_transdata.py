from Lib import *
from HanziReplacer import *

transPath = "gt_output\\"
outPath = "release\\trans\\"
os.makedirs(outPath, exist_ok=True)

def checkHalfWidth(text):
    if len(text) * 2 != len(text.encode("932")):
        return True

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath)
h.gen_replace("release\\trans\\data2.bin")# , enc=b"HoukagoJosou"


res = []
for file in os.listdir(transPath):
    transdata = open_json(os.path.join(transPath, file))
    for data in transdata:
        ori = data["ori"]
        text = data["message"]
        text = text.replace("...", "…").replace("..", "…").replace(".", "。")
        text = replace_halfwidth_with_fullwidth(text)
        text = processQuote(text)
        text = h.hanzitihuan(text)
        if checkHalfWidth(text):
            print("HalfWidth:", text)
            raise Exception("HalfWidth")
        res.append(f"{ori}[=]{text}[n]".encode("932"))
res = b"".join(res)
save_file_b(os.path.join(outPath, "data1.bin"), res)#, enc=b"HoukagoJosou"
