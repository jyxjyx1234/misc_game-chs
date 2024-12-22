import json
import re

ori_file = open("omk_hm.txt","r",encoding='shiftjis')

ori_file=ori_file.readlines()

out_file = open("omk_hm_out.txt","w",encoding='utf16')

t=open("transed.json","r",encoding='utf8')
t=json.load(t)
translist=[i["post_zh_preview"] for i in t]

i=0
j=0

while i<len(ori_file):
    if re.match("[;\[\*【\t]",ori_file[i]):
        out_file.write(ori_file[i])
        i+=1
        continue
    if ori_file[i]=="\n":
        out_file.write("\n")
        i+=1
        continue

    while ori_file[i]!="\n":
        i+=1
    
    texts=translist[j].split("\\t")
    for text in texts:
        out_file.write(text+"\n")
    j+=1