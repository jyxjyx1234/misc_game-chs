import json
import re

with open('yiwen.json','r',encoding='utf8') as f:
    yiwen=json.load(f)

with open('yiwen_append.json','r',encoding='utf8') as f:
    yiwen_append=json.load(f)

with open('ori_withtags.json','r',encoding='utf8') as f:
    ori_withtags=json.load(f)

outfile = open('hook\ShakinShima2_hook\LIB\\trans_map.cpp','w',encoding='utf8')
outfile.write('''#include <map>
#include <string>
#include "trans_map.h"

void initTransMap(std::map <std::wstring, std::wstring, CompareWideString>& a) {
''')

for i in range(len(yiwen)):
    dic = yiwen[i]
    name = dic['name']
    try:
        ori = ori_withtags[i]['message']
    except:
        ori = yiwen[i]["pre_jp"]
    ori_ = yiwen[i]["pre_jp"]

    message = dic['pre_zh'].replace('"','\\"')
    
    if name != "":
        ori = name + ori
        message = name +'「'+message+'」'
    outfile.write(f'a[L"{ori}"] = L"{message}";\n')

for i in range(len(yiwen_append)):
    dic = yiwen_append[i]
    name = dic['name']
    ori = dic["pre_jp"]
    message = dic['pre_zh'].replace('"','\\"')
    
    if name != "":
        ori = name + ori
        message = name +'「'+message+'」'
    outfile.write(f'a[L"{ori}"] = L"{message}";\n')
outfile.write("}")