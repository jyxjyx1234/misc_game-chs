from Lib import *
from HanziReplacer import *

namedict = open_json("names.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict, open_json("notfound.json")])
enc_key = b"alyce1228"
h.gen_replace("release\\data2.bin", enc = enc_key)

def encode_text(text):
    if "[" not in text:
        return text.encode("932")
    res = b""
    i = 0
    while i < len(text):
        if text[i] == "[":
            res += b"\xf0" + int(text[i+1:i+3], 16).to_bytes(1, "big")
            i += 4
        else:
            res += text[i].encode("932")
            i += 1
    return res

files = os.listdir("gt_output\\")
res = []
for file in files:
    transdata = open_json("gt_output\\"+file)
    for dic in transdata:
        ori = dic["ori"]
        trans = dic["message"]
        orib = encode_text(ori)
        while True:
            if ori.startswith("["):
                tag = ori[:4]
                ori = ori[4:]
                trans = tag + trans
            else:
                break
        while True:
            if ori.endswith("]"):
                tag = ori[-4:]
                ori = ori[:-4]
                trans = trans + tag
            else:
                break
        trans = h.hanzitihuan(trans)
        transb = encode_text(trans)
        res.append(orib + b"[=]" + transb + b"[n]")

for n in namedict:
    orib = encode_text(n)
    transb = encode_text(h.hanzitihuan(namedict[n]))
    res.append(orib + b"[=]" + transb + b"[n]")
res.reverse()

res = b"".join(res)
if enc_key:
    res = list(res)
    res = [res[i] ^ enc_key[i % len(enc_key)] for i in range(len(res))]
    res = bytes(res)
save_file_b("release\\data1.bin", res)