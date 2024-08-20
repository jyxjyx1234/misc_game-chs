import json
from Lib import *
from HanziReplacer import *

trans = open_json('yiwen.json')
out = open('release/trans.dat','wb')
ori_f = open_file_b("yuanwen_sjis.txt").split(b"\x0d\x0a")

namedict = open_json("names.json")
replacementdict = {}

for dic in trans:
    ori = dic['pre_jp'].replace('〜','～')
    t = dic['pre_zh']
    name = dic['name']
    replacementdict[ori] = t

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacementdict,namedict])
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\kissoifont.ttf',font_name='kissoifont')

i = 0
for dic in trans:
    ori = ori_f[i]
    if ori[0:2] != dic["pre_jp"].encode(encoding = 'sjis')[0:2]:
        print(dic["index"])
        exit()

    name = dic["name"]
    t = hanzireplacer.hanzitihuan(dic['pre_zh']).replace('@','').replace('K','').replace('F','')
    if name != "" and name != " ":    
        res = f'={name}　「{t}」'
    else:
        res = f'={t}'
    #t = dic['pre_zh'].replace("♪", "").replace("・","·")
    #res = f'={t}'
    res = res.encode(encoding='sjis')
    res += b'\x0a'
    out.write(ori + res)
    i += 1

for n in namedict:
    out.write(f'{n}={hanzireplacer.hanzitihuan(namedict[n])}\n'.encode(encoding='sjis').replace(b'\x0d\x0a',b'\x0a'))
