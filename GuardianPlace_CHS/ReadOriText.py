from Lib import *
import re
import json

yuanwen = open('yuanwen.txt','r',encoding='sjis',errors='ignore').readlines()
outfile = open('yuanwen.json','w',encoding='utf8')

messages = []#用于去重
out = []
dic = {}

nameset = set()

n = 0#统计字数

for l in yuanwen:
    if l[0] == '@':
        if l[1:-1] != "\u3000":
            dic['name'] = l[1:-1]
            nameset.add(dic['name'])
    else:
        if l not in messages:
            messages.append(l)
            dic['message'] = l[:-1]
            out.append(dic)
            dic = {}
            n+=len(l[:-1])
        else:
            dic = {}

json.dump(out,outfile,ensure_ascii=False,indent=2)
print(n)
print(nameset)


#{'凛とした声の女の子', '声', '葛の葉', '？？？', 'ルーン', '瀬高', '守護者Ｅ', '音々〔字幕翻訳・神楽勇気〕', '勇気＆桜花', '女子Ａ', 'モイライ', '勇気', '影縫', 'しゃ あ', '音々', '桜花', 'フィンブル', '音々のそっくりさん？', 'タコっぽい守護者', '記述', '色っぽい女の子', '周囲の声', '仮面の男', '伏見', '守護者Ｃ', '祖父', '音々の分 身？', '守護者Ｂ', '教師', '守護者Ａ', '新手の守護者', 'キリン', '朱雀', '蒼衣', '放送部員', '音々？', '女子Ｄ', '所沢', '女子Ｂ', '二宮', 'タロス', '桜花の声', '少年', '愛祈', '守護者', '担任', 'シャカラ', 'ゼピュロス', '愛祈＆音々', 'アナウンサー', 'オロチ', 'お嬢様風の女の子', '守護者Ｄ', 'トルトニス', '女子', '前園', 'メイドさん', '沙夜子', 'ツバキ', '愛祈の声', '謎の声', '灰島', '勇気＆愛祈', '女子Ｃ', '鬼斬り丸', '桜花＆愛祈', '桜花＆愛祈＆蒼衣', '小さな守護者', 'お菓子を頬張っている女の子', 'ボノム・デ・ネージュ'}