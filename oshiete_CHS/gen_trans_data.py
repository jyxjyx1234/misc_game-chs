import json
from Lib import *
from HanziReplacer import *

trans = open_json('yiwen.json')
out = open('release/trans.dat','wb')
ori_f = open_file_b("yuanwen_sjis.txt").split(b"\x0d\x0a")

namedict = open_json("names.json")
replacementdict = {}

for dic in trans:
<<<<<<< HEAD
    ori = dic['pre_jp']
    t = dic['pre_zh'].replace("—","ー").replace("·","・")
=======
    ori = dic['pre_jp'].replace('〜','～')
    t = dic['pre_zh']
>>>>>>> 305a01429aeb061fbf1bc78e9ab5c94ecca341b1
    name = dic['name']
    replacementdict[ori] = t

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacementdict,namedict])
<<<<<<< HEAD
save_json("temp.json",hanzireplacer.hanzidict)
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\oshietetfont.ttf',font_name='oshietetfont')
=======
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\GuardianPlaceFont.ttf',font_name='GuardianPlaceFont')
>>>>>>> 305a01429aeb061fbf1bc78e9ab5c94ecca341b1

i = 0
for dic in trans:
    ori = ori_f[i]
<<<<<<< HEAD
    if ori[0:2] != dic["pre_jp"].encode(encoding = 'sjis')[0:2] and ori[0:2] !="《".encode(encoding = 'sjis'):
        print(dic["index"])
        exit()

    t = hanzireplacer.hanzitihuan(dic['pre_zh'].replace("—","ー").replace("·","・")).replace('@','').replace('K','').replace('F','')
=======
    if ori[0:2] != dic["pre_jp"].encode(encoding = 'sjis')[0:2]:
        print(dic["index"])
        exit()

    t = hanzireplacer.hanzitihuan(dic['pre_zh']).replace('@','').replace('K','').replace('F','')
>>>>>>> 305a01429aeb061fbf1bc78e9ab5c94ecca341b1
    res = f'={t}'
    res = res.encode(encoding='sjis')
    res += b'\x0a'
    out.write(ori + res)
    i += 1

for n in namedict:
    out.write(f'{n}={hanzireplacer.hanzitihuan(namedict[n])}\n'.encode(encoding='sjis').replace(b'\x0d\x0a',b'\x0a'))