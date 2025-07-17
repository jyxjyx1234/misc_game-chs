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
hanzireplacer.gen_replace("release\\trans\\data2.bin")

oritextset = set()
for filename in transfiles:
    transfilepath = transpath + filename
    trans = open_json(transfilepath)
    i = 0
    for dic in trans:
        ori = bytes.fromhex(dic['ori'])
        t = hanzireplacer.hanzitihuan(dic['message'])
        t = t.replace('...', '…')
        # t = t.replace('・', '･')
        t = re.sub(r"(?<!…)…(?!…)", "……", t)
        t = t.encode(encoding='932')
        t = t.replace(b'[40]', b"\xf0\x46")
        
        res = ori + b"[=]" + t + b'[n]'
        if ori not in oritextset:
            out.append(res)
            oritextset.add(ori)
        i += 1

for name in namedict:
    name_ori = name.encode(encoding='932')
    name_trans = hanzireplacer.hanzitihuan(namedict[name]).encode(encoding='sjis')
    out.append(name_ori + b"[=]" +name_trans + b'[n]')

out = b''.join(out)
save_file_b("release\\trans\\data1.bin", out)
# os.system("pack.bat")

# res = b''
# for i in range(0xff):
#     res += b"\xf0"
#     res += bytes([i])
# save_file_b("test.bin", res)