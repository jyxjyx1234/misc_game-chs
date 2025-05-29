from Lib import *
from HanziReplacer import *

oriPath = "gt_output\\"
outPath = "release\\transdata\\data1.bin"
h = HanziReplacer()

h.ReadTransAndGetHanzidictFromFolder(oriPath)
h.gen_replace("release\\transdata\\data2.bin")

res = {}
namedict = open_json("namedict.json")
for name in namedict:
    res[name.encode("932")] = h.hanzitihuan(namedict[name]).encode("932")
for filename in os.listdir(oriPath):
    datas = open_json(os.path.join(oriPath, filename))
    for data in datas:
        ori = data["ori"]
        ori = bytes.fromhex(ori)
        trans = data["message"]
        trans = h.hanzitihuan(trans)
        trans_lines = []
        while True:
            trans_lines.append(trans[:32].encode("932"))
            trans = trans[32:]
            if not trans:
                break
        trans = b"\x00\x5B\x0C\x00\x00\x00\x0E\x00\x00\x00\x00\x00\x00\x00".join(trans_lines)
        res[ori] = trans

with open(outPath, "wb") as f:
    for k in res:
        f.write(k)
        f.write(b"[=]")
        f.write(res[k])
        f.write(b"[n]")

os.system("cd release && pack.bat")
