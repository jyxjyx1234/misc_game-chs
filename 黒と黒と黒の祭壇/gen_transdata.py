from Lib import *
from HanziReplacer import *

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
enc_key = b"alyce20250113"
h.gen_replace("release\\data2.bin", enc = enc_key)

files = os.listdir("gt_output\\")
res = []
for file in files:
    transdata = open_json("gt_output\\"+file)
    for dic in transdata:
        ori = dic["ori"]
        trans = dic["message"]
        orib = ori.encode("932")
        trans = h.hanzitihuan(trans)
        transb = trans.encode("932")
        res.append(orib + b"[=]" + transb + b"[n]")

for n in namedict:
    orib = n.encode("932")
    transb = h.hanzitihuan(namedict[n]).encode("932")
    res.append(orib + b"[=]" + transb + b"[n]")

res = b"".join(res)
if enc_key:
    res = list(res)
    res = [res[i] ^ enc_key[i % len(enc_key)] for i in range(len(res))]
    res = bytes(res)
save_file_b("release\\data1.bin", res)