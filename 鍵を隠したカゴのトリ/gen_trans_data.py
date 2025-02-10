import json
from Lib import *
from HanziReplacer import *

transpath = "gt_output/"
oripath = "ori/"

transfiles = os.listdir(transpath)
namedict = open_json("namedict.json")
out = []


hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
# hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\soleilfont.ttf',font_name='soleilfont')
hanzireplacer.gen_replace("release\\data2.bin", enc=b"ALyCE")

def encString(s):
    s = bytearray(s)
    for i in range(len(s)):
        s[i] = s[i] ^ b"ALyCE"[i % 5]
    return s

for filename in transfiles:
    transfilepath = transpath + filename
    trans = open_json(transfilepath)
    i = 0
    for dic in trans:
        ori = bytes.fromhex(dic['ori'])
        t = hanzireplacer.hanzitihuan(dic['message'])
        t = t.replace('...', '…')
        t = re.sub(r"(?<!…)…(?!…)", "……", t)
        
        res = ori + b"[=]" + t.encode(encoding='932') + b'[n]'
        out.append(res)
        i += 1

for name in namedict:
    name_ori = name.encode(encoding='932')
    name_trans = hanzireplacer.hanzitihuan(namedict[name]).encode(encoding='sjis')
    out.append(name_ori + b"[=]" +name_trans + b'[n]')

out = b''.join(out)
out = encString(out)
save_file_b("release\\data1.bin", out)