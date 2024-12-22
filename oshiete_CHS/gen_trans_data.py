import json
from Lib import *
from HanziReplacer import *

trans = open_json('yiwen_sakura.json')
ori_text = open_json('yuanwen.json')
out = open('release_sakura/trans.dat','wb')
ori_f = open_file_b("yuanwen_sjis.txt").split(b"\x0d\x0a")

namedict = open_json("names.json")
replacementdict = {}

for dic in trans:
    ori = ori_text.pop(0)["message"]
    t = dic['message'].replace("—","ー").replace("·","・")
    name = dic.get("name","")
    replacementdict[ori] = t

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacementdict,namedict])
save_json("temp.json",hanzireplacer.hanzidict)
#hanzireplacer.ChangeFont('WenQuanYi.ttf','release_sakura\\oshietetfont_sakura.ttf',font_name='oshietetfont_sakura')

i = 0
for dic in trans:
    ori = ori_f[i]

    t = hanzireplacer.hanzitihuan(dic['message'].replace("—","ー").replace("·","・")).replace('@','').replace('K','').replace('F','').replace('C','')
    res = f'={t}'
    res = res.encode(encoding='sjis')
    res += b'\x0a'
    out.write(ori + res)
    i += 1

for n in namedict:
    out.write(f'{n}={hanzireplacer.hanzitihuan(namedict[n])}\n'.encode(encoding='sjis').replace(b'\x0d\x0a',b'\x0a'))