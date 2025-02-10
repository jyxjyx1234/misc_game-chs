from Lib import *
from HanziReplacer import *

namedict = open_json("namedict.json")
enc_key = b"ShinRingetsu"

files = os.listdir("gt_output\\")
res = []
for file in files:
    transdata = open_json("gt_output\\"+file)
    for dic in transdata:
        ori = dic["ori"]
        trans = dic["message"]
        if "name" in dic:
            name = dic["name"]
            name = namedict[name]
            trans = name + trans
        orib = ori.encode("utf-16-le").replace(b"\x0d\x00\x0a\x00", b"\x0d\x00")
        transb = trans.encode("utf-16-le").replace(b"\x0d\x00\x0a\x00", b"\x0d\x00")
        res.append(orib + "[=]".encode("utf-16-le") + transb + "[n]".encode("utf-16-le"))

for n in namedict:
    orib = n.encode("utf-16-le")
    transb = namedict[n].encode("utf-16-le")
    res.append(orib + b"[=]" + transb + b"[n]")

res = b"".join(res)
if enc_key:
    res = list(res)
    res = [res[i] ^ enc_key[i % len(enc_key)] for i in range(len(res))]
    res = bytes(res)
save_file_b("release\\data1.bin", res)