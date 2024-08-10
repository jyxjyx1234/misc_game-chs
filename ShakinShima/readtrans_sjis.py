import json
from HanziReplacer import *

with open("yiwen.json",'r',encoding='utf8') as f:
    yiwen=json.load(f)

with open("MultipleLineTexts_ori.json",'r',encoding='utf8') as f:
    yuanwen=json.load(f)

outfile=open("release_sjis\\trans_sjis.dat",'w',encoding='sjis')

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
    fullwidth_chars = "！＂＃＄％＆＇（）＊＋，ー．／：；＜＝＞？＠［＼］＾＿｀｛｜｝～"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

def replace_halfwidth_and_fullwidth(string):
    # 将半角英文和数字替换为全角英文和数字
    halfwidth_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    fullwidth_chars = "０１２３４５６７８９ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

transdict = {}
ori_list = []
nameset = []
for i in range(len(yiwen)):
    ori_full = yiwen[i]['pre_jp']
    tra = yiwen[i]['pre_zh']
    name = yiwen[i]['name']
    transdict[ori_full] = tra
    if name not in nameset:
        nameset.append(name)
    ori_list.append(ori_full)

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([ori_list,nameset,transdict])
hanzireplacer.ChangeFont("WenQuanYi.ttf","release_sjis\\Shakinashima.ttf","Shakinashima_font")

for i in range(len(yiwen)):
    ori = yuanwen[i+1][0]
    ori_full = yiwen[i]['pre_jp']
    tra = yiwen[i]['pre_zh']
    name = yiwen[i]['name']
    if name != "":
        tra = name + "「" + tra +"」"
    tra=replace_halfwidth_with_fullwidth(tra)
    tra=replace_halfwidth_and_fullwidth(tra)
    tra=hanzireplacer.hanzitihuan(tra)
    outfile.write(ori+'='+tra+'\n')
