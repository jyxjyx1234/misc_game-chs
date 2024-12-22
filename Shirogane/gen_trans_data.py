import json
from Lib import *
from HanziReplacer import *



transpath = "transl_cache/"
oripath = "oris/"

transfiles = os.listdir(transpath)
namedict = open_json("soleil_dict.json")
out = open('release/trans.dat','wb')

allmessages = []

for filename in transfiles:
    trans = open_json(transpath + filename)
    for dic in trans:
        ori = dic['pre_jp'].replace('〜','～')
        ori = re.sub("[\ue000-\ue0ff]","",ori)
        t = dic['pre_zh']
        name = dic['name']
        allmessages.append(ori)
        allmessages.append(t)

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([allmessages,namedict])
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\soleilfont.ttf',font_name='soleilfont')

for filename in transfiles:
    transfilepath = transpath + filename
    orifilepath = oripath +filename.replace(".json",".ori")
    trans = open_json(transfilepath)
    ori_f = open_file_b(orifilepath).split(b"\x0d\x0a")
    i = 0
    for dic in trans:
        ori = ori_f[i]
        if ori.decode('sjis',"ignore")[0:1] != dic["pre_jp"][0:1].replace("－","−"):
            print(filename)
            print(dic["index"])
            print(ori.decode('sjis',"ignore"))
            print(dic["pre_jp"])

        name = dic["name"]
        name = hanzireplacer.hanzitihuan(nametrans(name,namedict))

        t = hanzireplacer.hanzitihuan(dic['pre_zh']).replace("\uE000","").replace('@','').replace('K','').replace('F','')

        if name != "" and name != " ":    
            res = f'={name}　「{t}」'.replace("「「","「").replace("」」","」")
        else:
            res = f'={t}'

        res = res.encode(encoding='sjis')
        res += b'\x0a'
        out.write(ori + res)
        i += 1

