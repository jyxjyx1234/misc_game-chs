from Lib import *
from HanziReplacer import *

patten = re.compile(rb"[\x01-\x02][\x00-\xff][\x00-\x01][\x04\x05\x0d][\x00-\x07]\xff|\x01\x36\x00\xFF")

oriPath = "SNR_DEC\\"
transPath = "gt_output\\"
outPath = "release\\"
oriFiles = os.listdir(oriPath)
os.makedirs(outPath, exist_ok=True)

h = gen_hanzi_replacer(transPath)
#h.ChangeFont("WenQuanYi.ttf", outPath + "TORIKO.ttf", "TORIKO")

transData = open(outPath + "trans.dat", "wb")

for f in oriFiles:
    oriFilePath = oriPath + f
    data = open_file_b(oriFilePath)
    transf = open_json(transPath + f + ".json")
    matches = patten.finditer(data)
    for i, m in enumerate(matches):
        start = m.start()
        end = m.end()
        lenth = from_bytes(m.group(0)[1:3])
        content = data[end : start + 3 + lenth]
        content = content.split(b"\x00")
        res = b""
        ori = b""
        for line in content:
            if line == b"":
                res += b"\x00"
                continue
            if line[0:3] == b"\x02\x06\xff":
                res += b"\x02\x06\xff"
                trans = transf.pop(0)["message"]
                trans = h.hanzitihuan(trans)
                res += trans.encode("shift-jis") + b"\x00"
                continue
            if line[0:7] == b"\x08\x01\x02\x03\x07\x01\xFF":
                res += b"\x08\x01\x02\x03\x07\x01\xFF"
                trans = transf.pop(0)["message"]
                trans = h.hanzitihuan(trans)
                res += trans.encode("shift-jis") + b"\x00"
                continue
            if line == b"\x02\x03\x0f":
                res += b"\x02\x03\x0f\x00"
                continue
            if line == b"\x02\x03":
                res += b"\x02\x03\x00"
                continue
            if line == b"\x02\x05":
                res += b"\x02\x05\x00"
                continue
            if line == b"\x02\x03\x05":
                res += b"\x02\x03\x05\x00"
                continue
            if line == b"\x02\x05\x0f":
                res += b"\x02\x05\x0f\x00"
                continue
            if line == b"\x02\x0f\x03":
                res += b"\x02\x0f\x03\x00"
                continue
            if line == b"\x02":
                res += b"\x02\x00"
                continue
            transd = transf.pop(0)
            trans = transd["message"]
            ori = transd["ori"].encode("shift-jis")
            trans = h.hanzitihuan(trans)
            res += trans.encode("shift-jis") + b"\x00"
        transData.write(ori + b"=" + res + b"*")