from Lib import *
from HanziReplacer import *

transf = open_json("trans_text.json")
transf2 = open_json("trans_text_xuanxiang.json")
orif = open_json("ori_text.json")
out = open("HOOK\HanaHirakuHOOK\\trans.cpp",'w',encoding='sjis')

out.write('''
#include <map>
#include <string>
#include "trans.h"

std::map <std::string, std::string> initTransMap() {
std::map <std::string, std::string> a;
''')

hzrp = HanziReplacer()
texts=[]
for i in range(len(transf)):
    ori = orif[i]['message']
    trans = transf[i]["post_zh_preview"]
    texts.append(ori)
    texts.append(trans)
hzrp.ReadTransAndGetHanzidict([texts])
hzrp.ChangeFont("WenQuanYi.ttf","release//HANAFONT.ttf","HANAFONT")


for i in range(len(transf)):
    ori = orif[i]['message']
    trans = hzrp.hanzitihuan(transf[i]["post_zh_preview"]).replace("(","（").replace(")","）")
    n = 19
    trans = '\\n'.join([trans[i:i+n] for i in range(0, len(trans), n)])
    l = f'a["{ori}"]="{trans}";\n'
    out.write(l)

for i in range(len(transf2)):
    ori = transf2[i]['pre_jp'].replace("\n","\\n")
    trans = hzrp.hanzitihuan(transf2[i]["post_zh_preview"]).replace("\n","\\n")
    l = f'a["{ori}"]="{trans}";\n'
    out.write(l)

out.write('''
return a;
}''')
