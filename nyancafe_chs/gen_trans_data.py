import json
from Lib import *
from HanziReplacer import *

trans = open_json('yiwen.json')
out = open('release/trans.dat','wb')

namedict = {'一同':"一同", 'くるも':"库鲁莫", '子供Ｂ':"小孩Ｂ", '子供':"小孩", 'ネコ達':"猫咪们", '高也':"高也", '三人':"三人", '綺麗な少女':"美丽的少女", '少女':"少女", '配達員':"送货员", '子供Ｃ':"小孩Ｃ", '子猫達':"小猫们", 'やっさん':"やっさん", '白い子猫':"白色小猫", '校長':"校长", '栄作':"荣作", '美衣也':"美衣也", '？？':"？？", 'モルシャ':"莫尔沙", 'ゴッチ':"古奇", '美華':"美华", '美鞠':"美鞠", '母親':"母亲", '男':"男", '学生達':"学生们", '客Ａ':"客Ａ", '先生':"先生", '着ぐるみ':"玩偶服", '英子':"英子", 'しらたま':"しらたま", 'ふわふわ子猫':"毛茸茸的小猫", '黒い子猫':"黑色小猫", '虎寅':"虎寅", '男性':"男性", '教頭':"教頭", '後輩':"后辈", 'みつ':"みつ", 'お客さん':"顾客", 'おばちゃん教師':"老阿姨教师", 'シロ':"小白", '客':"客", '体育教師':"体育老师", '子猫':"小猫", 'ネコ':"猫咪", 'おはぎ':"おはぎ", 'クロ':"小黑", 'すみれ':"", 'みんな':"すみれ", 'あめり':"艾梅莉", '声':"声", '客Ｂ':"客Ｂ", '女性':"女性", '男性客':"男性客人", 'ぺるしゃ':"佩鲁沙", '子供Ａ':"小孩Ａ", '美華＆ぺるしゃ＆あめり':"美华＆佩鲁沙＆艾梅莉", '子供Ｄ':"小孩Ｄ", 'しらたま＆おはぎ':"しらたま＆おはぎ", 'サラリーマン':"工薪族"}
replacementdict = {}

for dic in trans:
    ori = dic['pre_jp'].replace('〜','～')
    t = dic['pre_zh']
    name = dic['name']
    replacementdict[ori] = t

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacementdict,namedict])
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\nyanfont.ttf',font_name='nyanfont')

for dic in trans:
    ori = dic['pre_jp'].replace('～',b'\x81\x60'.decode(encoding='sjis')).replace('@','114514')
    t = hanzireplacer.hanzitihuan(dic['pre_zh']).replace('@','')
    res = f'{ori}={t}\n'
    res = res.encode(encoding='sjis')
    res = res.replace("114514".encode(),b'\xf0\x40').replace(b'\x0d\x0a',b'\x0a')
    out.write(res)

for n in namedict:
    out.write(f'{n}={hanzireplacer.hanzitihuan(namedict[n])}\n'.encode(encoding='sjis').replace(b'\x0d\x0a',b'\x0a'))