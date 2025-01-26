from Lib import *
from HanziReplacer import *

dumpname = True

try:
    namedict = open_json("namedict_trans.json")
except:
    namedict = {}
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("transl_cache\\", [namedict])
enc_key = b"SBRioshiina"
os.makedirs("release", exist_ok = True)
h.gen_replace("release\\data2.bin", enc = enc_key)

files = os.listdir("transl_cache\\")
res = []

namedump = {}

for file in files:
    transdata = open_json("transl_cache\\"+file)
    for dic in transdata:
        ori = dic["pre_jp"]
        trans = dic["post_zh_preview"]
        orib = ori.encode("932")
        trans = h.hanzitihuan(trans)
        transb = trans.encode("932")
        if dumpname:
            namedump[dic["name"]] = dic["name"]
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
if dumpname:
    save_json("namedict.json", namedump)