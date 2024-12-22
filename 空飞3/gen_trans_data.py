import json
from Lib import *
from HanziReplacer import *



transpath = "transl_cache/"
oripath = "oris/"

transfiles = os.listdir(transpath)
namedict = open_json("names.json")
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
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\kongfeiFont.ttf',font_name='kongfeiFont')

for n in namedict:
    oriname = n.encode("932")
    trans = hanzireplacer.hanzitihuan(namedict[n]).encode("932")
    out.write(oriname + b"=" + trans + b'\x0a')

for filename in transfiles:
    transfilepath = transpath + filename
    orifilepath = oripath +filename.replace(".json",".ori")
    trans = open_json(transfilepath)
    ori_f = open_file_b(orifilepath).split(b"\x0d\x0a")
    i = 0
    for dic in trans:
        ori = ori_f[i]
        if ori.decode('sjis',"ignore").replace("《","")[0:1] != dic["pre_jp"][0:1].replace("《",""):
            print(filename)
            print(dic["index"])
            print(ori.decode('sjis',"ignore"))
            print(dic["pre_jp"])

        name = dic["name"]
        name = hanzireplacer.hanzitihuan(nametrans(name,namedict))

        t = hanzireplacer.hanzitihuan(dic['post_zh_preview']).replace("\uE000","").replace('@','').replace('K','').replace('F','').replace('\n','')

        if name != "" and name != " ":    
            res = f'={t}'.replace("「「","「").replace("」」","」")
        else:
            res = f'={t}'

        res = res.encode(encoding='sjis')
        res += b'\x0a'
        out.write(ori + res)
        i += 1

