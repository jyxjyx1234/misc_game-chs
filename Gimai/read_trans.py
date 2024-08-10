from Lib import *

ori_file = open_json("ori.json")
trans_file = open_json("trans.json")
out_file = open("trans.dat",'w',encoding='utf8')

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

for i in range(len(trans_file)):
    trans = replace_halfwidth_and_fullwidth(replace_halfwidth_with_fullwidth(trans_file[i]['pre_zh']))
    ori = ori_file[i]["message"]

    name = ori_file[i].get('name',"")
    if name !="":
        trans = f"{name}「{trans}」"
        ori = f"{name}「{ori}」"

    n = ori_file[i]['n']
    outline = f"{ori}={trans}@{n}_\n"
    out_file.write(outline)