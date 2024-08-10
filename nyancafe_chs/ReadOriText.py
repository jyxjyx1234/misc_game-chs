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


#{'一同', 'くるも', '子供Ｂ', '子供', 'ネコ達', '高也', '三人', '綺麗な少女', '少女', '配達員', '子供Ｃ', '子猫達', 'やっさん', '白い子猫', '校長', '栄作', '美衣也', '？？', 'モルシャ', 'ゴッチ', '美華', '美鞠', '母親', '男', '学生達', '客Ａ', '先生', '着ぐるみ', '英子', 'しらたま', 'ふわふわ子猫', '黒い子猫', '虎寅', '男性', '教頭', '後輩', 'みつ', 'お客さん', 'おばちゃん教師', 'シロ', '客', '体育教師', '子猫', 'ネコ', 'おはぎ', 'クロ', 'すみれ', 'みんな', 'あめり', '声', '客Ｂ', '女性', '男性客', 'ぺるしゃ', '子供Ａ', '美華＆ぺるしゃ＆あめり', '子供Ｄ', 'しらたま＆おはぎ', 'サラリーマン'}