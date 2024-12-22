import json
import re
from 提取 import Line
import os

filelist=os.listdir("译文")

for file in filelist:
    filename=file.replace(".json","")

    trans_file = open("译文\\"+file,"r",encoding='utf8')
    trans_file = json.load(trans_file)

    ori_file = open("原脚本\\"+filename+".ks","r",encoding='shiftjis')
    
    out_file = open("patch\\"+filename+".ks","w",encoding='utf16')

    transdict={}
    for dic in trans_file:
        transdict[dic["pre_jp"]]=dic["post_zh_preview"]
    
    for l in ori_file:
        l=Line(l)
        out_file.write(l.trans(transdict))
    out_file.close()