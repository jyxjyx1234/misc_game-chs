from Lib import *
import re
import json

yuanwen = open('yuanwen.txt','r',encoding='sjis',errors='ignore').readlines()
outfile = open('yuanwen.json','w',encoding='utf8')

messages = []#用于去重
out = []
dic = {}

nameset = {}

n = 0#统计字数

for l in yuanwen:
    if l[0] == '@':
        if l[1:-1] != "\u3000":
            dic['name'] = l[1:-1]
            nameset[dic['name']] = ''
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

'''
nd = open_json("primary_dict.json")
for n in nameset:
    if "＆" in n:
        ns = n.split("＆")
        try:
            ns = [nd[i] for i in ns]
            o = "＆".join(ns)
            nameset[n] = o
        except:
            nameset[n] = ""
    else:
        nameset[n] = nd.get(n,"")

save_json("names.json",nameset)
'''


quchongset = set()
outfile_sjis = open('yuanwen_sjis.txt','wb')
yuanwen = open('yuanwen.txt','rb').read()
yuanwen = yuanwen.split(b'\x0d\x0a')
outb = b''
for l in yuanwen:
    if len(l)>0 and l[0:1]!=b'\x40':
        if l not in quchongset:
            quchongset.add(l)
            outb += l
            outb += b'\x0d\x0a'

outfile_sjis.write(outb)
print(len(messages))
print(len(quchongset))

