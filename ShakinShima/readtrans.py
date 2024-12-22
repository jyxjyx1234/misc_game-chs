import json

with open("yiwen.json",'r',encoding='utf8') as f:
    yiwen=json.load(f)

with open("MultipleLineTexts_ori.json",'r',encoding='utf8') as f:
    yuanwen=json.load(f)

outfile=open("trans.dat",'w',encoding='utf8')

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
    fullwidth_chars = "！＂＃＄％＆＇（）＊＋，－．／：；＜＝＞？＠［＼］＾＿｀｛｜｝～"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

def replace_halfwidth_and_fullwidth(string):
    # 将半角英文和数字替换为全角英文和数字
    halfwidth_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    fullwidth_chars = "０１２３４５６７８９ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

for i in range(len(yiwen)):
    ori = yuanwen[i+1][0]
    tra = yiwen[i]['pre_zh']
    name = yiwen[i]['name']
    if name != "":
        tra = name + "「" + tra +"」"
    tra=replace_halfwidth_with_fullwidth(tra)
    tra=replace_halfwidth_and_fullwidth(tra)
    outfile.write(ori+'='+tra+'\n')
