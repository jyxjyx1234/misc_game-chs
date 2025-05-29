from Lib import *
from HanziReplacer import *

oriPath = "gt_output\\"
outPath = "release\\transdata\\data1.bin"
h = HanziReplacer()

namedict = open_json("namedict_.json")
h.ReadTransAndGetHanzidictFromFolder(oriPath, [namedict])
h.gen_replace("release\\transdata\\data2.bin")

res = {}
# for name in namedict:
#     res[name.encode("932")] = h.hanzitihuan(namedict[name]).encode("932")
for filename in os.listdir(oriPath):
    datas = open_json(os.path.join(oriPath, filename))
    for data in datas:
        ori = data["ori"]
        ori = bytes.fromhex(ori)
        trans = data["message"]
        if "name" in data:
            trans = "【" + namedict[data["name"]] + "】" + trans
        trans = h.hanzitihuan(trans)
        trans_lines = []
        while True:
            trans_lines.append(trans[:320000].encode("932"))
            trans = trans[320000:]
            if not trans:
                break
        trans = b"\x0a".join(trans_lines)
        if ori.endswith(b"\x01"):
            trans += b"\x01"
        trans = trans.replace(b"\x81\x63", b"\x81\x63\x03").replace(b"\x81\x41", b"\x81\x41\x03")
        res[ori] = trans
res[b"\x05"] = b"\x05"

with open(outPath, "wb") as f:
    for k in res:
        f.write(k)
        f.write(b"[=]")
        f.write(res[k])
        f.write(b"\x00[n]")

os.system("cd release && pack.bat")
