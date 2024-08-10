from HanziReplacer import *
from Lib import *
import os,re

trans_folder='trans_json\\'
ori_folder='scenario\\'
sce_folder='temp\\'
out_folder='release\\scenario\\'

trans_dict={}

trans=os.listdir(trans_folder)
num=len(trans)
print('reading trans……')
for t in trans:
    t=open_json(trans_folder+t)
    for dic in t:
        if dic['pre_zh']!='Failed translation':
            trans_dict[dic['pre_jp']]=dic['pre_zh'].replace('\n','')

hanzireplacer=HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict(replacement_dicts=[trans_dict])

print('creating fonts……')
hanzireplacer.ChangeFont('WenQuanYi.ttf','WenQuanYi.ttf','release\\ShoujoGari_font.ttf')
for i in trans_dict:
    trans_dict[i]=hanzireplacer.hanzitihuan(trans_dict[i])

text_fliter1=re.compile(r'(.*?text.*?%\{L[0-9]*\} ; "【)(.*?)(】)(.*?)(")|(.*?text.*?%\{L[0-9]*\} ; ")([^【]*?)(")|(.*?ldstr.*?")([^a-zA-Z^\ ^\[^\]]{3,}?)(")')
#group 4\7\10为文本
text_fliter2=re.compile(r'(L[0-9]*,[　]*【.*?】)(.*)|(L[0-9]*,)([^【]*)')
#group 2\4为文本

def replace(matcher:re.Match):
    global trans_dict
    if matcher.group(4):
        return matcher.group(1)+matcher.group(2)+matcher.group(3)+trans_dict.get(matcher.group(4),matcher.group(4))+matcher.group(5)
    if matcher.group(7):
        return matcher.group(6)+trans_dict.get(matcher.group(7),matcher.group(7))+matcher.group(8)
    if matcher.group(10):
        return matcher.group(9)+trans_dict.get(matcher.group(10),matcher.group(10))+matcher.group(11)
    
def replace2(matcher:re.Match):
    global trans_dict
    if matcher.group(2):
        return matcher.group(1)+trans_dict.get(matcher.group(2).replace('\n',''),matcher.group(2).replace('\n',''))+'\n'
    if matcher.group(4):
        return matcher.group(3)+trans_dict.get(matcher.group(4).replace('\n',''),matcher.group(4).replace('\n',''))+'\n'
    
id=0

for t in trans:
    id+=1
    print(f'{id}/{num}')
    #处理mjil文件
    f=open(ori_folder+t.replace('.json','.mjil'),'r',encoding='utf8').readlines()

    f=[re.sub(text_fliter1,replace,i) for i in f]

    with open(sce_folder+t.replace('.json','.mjil'),'w',encoding='utf8') as out:
        for i in f:
            out.write(i)

    #处理mjres
    f=open(ori_folder+t.replace('.json','.mjres'),'r',encoding='utf8').readlines()
    f=[re.sub(text_fliter2,replace2,i) for i in f]
    with open(sce_folder+t.replace('.json','.mjres'),'w',encoding='utf8') as out:
        for i in f:
            out.write(i)

    #后处理
    print(t)
    os.system('maji assemble '+sce_folder+t.replace('.json','.mjil'))
    os.system('move '+sce_folder+t.replace('.json','.mjo')+' '+out_folder)
