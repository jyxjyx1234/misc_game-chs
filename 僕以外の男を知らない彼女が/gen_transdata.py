from Lib import *
from HanziReplacer import *

try:
    namedict = open_json("namedict.json")
except:
    namedict = {}
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
enc_key = b"SBRioshiina"
os.makedirs("release", exist_ok = True)
h.gen_replace("release\\data2.bin", enc = enc_key)

files = os.listdir("gt_output\\")
res = []

def split_line(ori, trans):
    line_width = 28
    lineCount = ori.count("_r")
    res = []
    for i in range(lineCount):
        line = trans[i * line_width : (i + 1) * line_width]
        if line == "":
            line = " "
        res.append(line)
    if (i + 1) * line_width < len(trans):
        while True:
            i+=1
            line = trans[i * line_width : (i + 1) * line_width]
            if line == "":
                break
            res.append(line)
    return "_r".join(res) + "_r"

for file in files:
    transdata = open_json("gt_output\\"+file)
    for dic in transdata:
        ori = dic["ori"]
        trans = dic["message"]
        orib = ori.encode("932")
        trans = h.hanzitihuan(trans)
        trans = split_line(ori, trans)
        transb = trans.encode("932")
        res.append(orib + b"[=]" + transb + b"[n]")

for n in namedict:
    orib = n.encode("932")
    transb = h.hanzitihuan(namedict[n]).encode("932")
    res.append(orib + b"[=]" + transb + b"[n]")
    orib = (f"【{n}】_r").encode("932")
    transb = ("【" + h.hanzitihuan(namedict[n]) + "】_r").encode("932")
    res.append(orib + b"[=]" + transb + b"[n]")
    orib = (f"【{n}】").encode("932")
    transb = ("【" + h.hanzitihuan(namedict[n]) + "】").encode("932")
    res.append(orib + b"[=]" + transb + b"[n]")

res = b"".join(res)
if enc_key:
    res = list(res)
    res = [res[i] ^ enc_key[i % len(enc_key)] for i in range(len(res))]
    res = bytes(res)
save_file_b("release\\data1.bin", res)