from Lib import *
from HanziReplacer import *

def dec(b : bytes) -> bytes:
    b = bytearray(b)
    for i in range(len(b)):
        b[i] = (b[i]<<4 | b[i]>>4) & 0xff   
    return bytes(b)

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
enc_key = b"Mikan"
h.gen_replace("release\\data2.bin", enc = enc_key)

files = os.listdir("gt_output\\")
biaodian = ["，", "、", "。", "…", "？", "！", "—"]
res = []
resEnc = []
for file in files:
    transdata = open_json("gt_output\\"+file)
    for dic in transdata:
        ori = dic["ori"]
        trans = dic["message"]
        orib = ori.encode("932")
        trans = h.hanzitihuan(trans)
        if ori[-1] in biaodian and trans[-1] not in biaodian:
            trans += ori[-1]
        transb = trans.encode("932")
        res.append(orib + b"[=]" + transb + b"[n]")
        resEnc.append(dec(orib) + b"[=]" + dec(transb) + b"[n]")

for n in namedict:
    orib = n.encode("932")
    transb = h.hanzitihuan(namedict[n]).encode("932")
    res.append(orib + b"[=]" + transb + b"[n]")
    resEnc.append(dec(orib) + b"[=]" + dec(transb) + b"[n]")

res = b"".join(res)
resEnc = b"".join(resEnc)
if enc_key:
    res = list(res)
    res = [res[i] ^ enc_key[i % len(enc_key)] for i in range(len(res))]
    res = bytes(res)
if enc_key:
    resEnc = list(resEnc)
    resEnc = [resEnc[i] ^ enc_key[i % len(enc_key)] for i in range(len(resEnc))]
    resEnc = bytes(resEnc)
save_file_b("release\\data1.bin", res)
save_file_b("release\\data3.bin", resEnc)