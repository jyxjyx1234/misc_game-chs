from HanziReplacer import *
from Lib import *
import os,re

trans_folder='trans_json\\'
ori_folder='scenario\\'
out_folder='release\\scenario\\'

trans_dict={}
er_list=[]

trans=os.listdir(trans_folder)
num=len(trans)

print('reading trans……')
for t in trans:
    t=open_json(trans_folder+t)
    for dic in t:
        if dic['pre_zh']!='Failed translation':
            trans_dict[teshuzifutihuan(dic['pre_jp'])]=dic["post_zh_preview"].replace('\n','')
            if not dic["name"]:
                trans_dict[teshuzifutihuan(dic['pre_jp'])]=trans_dict[teshuzifutihuan(dic['pre_jp'])].replace("「","『").replace("」","』")
t=open_json('addition_trans.json')
for dic in t:
    if dic['pre_zh']!='Failed translation':
        trans_dict[teshuzifutihuan(dic['pre_jp'])]=dic["post_zh_preview"].replace('\n','')

hanzireplacer=HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict(replacement_dicts=[trans_dict])

#print('creating fonts……')
#hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\ShoujoGari_font.ttf',"ShoujoGari_font")
hanzireplacer.ChangeUFIConfig('release\\uif_config.json')

for i in trans_dict:
    trans_dict[i]=hanzireplacer.hanzitihuan(trans_dict[i])


def dengchang(trans:bytes,ori_length:int)->bytes:
    if len(trans)>ori_length:#第一步处理：去除末尾标点
        text=trans.decode(encoding='sjis')
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        trans=text.encode(encoding='sjis')
    
    if len(trans)>ori_length:#第二步处理：去除一些无意义重复
        text=trans.decode(encoding='sjis')
        text=text.replace(hanzireplacer.hanzitihuan('啊啊啊'),hanzireplacer.hanzitihuan('啊啊')).replace('……','…').replace(hanzireplacer.hanzitihuan('——'),hanzireplacer.hanzitihuan('—')).replace('　','')  
        text=text.replace(hanzireplacer.hanzitihuan('啊啊啊'),hanzireplacer.hanzitihuan('啊啊')).replace('……','…').replace(hanzireplacer.hanzitihuan('——'),hanzireplacer.hanzitihuan('—'))
        trans=text.encode(encoding='sjis')

    if len(trans)>ori_length:#第三步处理：去除标点符号
        text=trans.decode(encoding='sjis')
        text=text.replace('，','').replace('…','').replace('。','').replace('、','').replace('～','').replace('」','')
        trans=text.encode(encoding='sjis')

    if len(trans)>ori_length:#第四步处理：暴力截断
        text=trans.decode(encoding='sjis')
        while len(trans)>ori_length:
            text=text[0:-1]
            trans=text.encode(encoding='sjis')
    
    while len(trans)<ori_length:
        trans=trans+b'\x20'
    return trans

find_text=re.compile(b'(\x40\x08[\x00-\xff]\x00)([\x00-\xff]*?)(\x00)')
find_opt=re.compile(b'(\x01\x08[\x00-\xff]\x00)([\x00-\xff]*?)(\x00)')

def replace1(matcher:re.Match):
    global hanzireplacer,trans_dict,er_list
    text:str=matcher.group(2).decode(encoding='sjis')
    ori_len=len(matcher.group(2))

    if '】' in text:
        idx=text.find('】')+1
        trans_text=text[0:idx]+hanzireplacer.hanzitihuan(trans_dict.get(teshuzifutihuan(text[idx:]),text[idx:]))
        if teshuzifutihuan(text[idx:]) not in trans_dict:
            if text[idx:]!="":
                er_list.append({'message':text[idx:],'name':text[0:idx].replace('【','').replace('】','')})
    else:
        trans_text=hanzireplacer.hanzitihuan(trans_dict.get(teshuzifutihuan(text),text))
        if teshuzifutihuan(text) not in trans_dict:
            if text!="":
                er_list.append({'message':text})
    trans_bytes=dengchang(trans_text.encode(encoding='sjis'),ori_len)
    return matcher.group(1)+trans_bytes+matcher.group(3)

def replace2(matcher:re.Match):
    global hanzireplacer,trans_dict,er_list
    text:str=matcher.group(2).decode(encoding='sjis')

    if re.search(r'[0-9a-zA-Z\[\]]',text):
        return matcher.group(0)
    
    ori_len=len(matcher.group(2))
    trans_text=hanzireplacer.hanzitihuan(trans_dict.get(teshuzifutihuan(text),text))
    trans_bytes=dengchang(trans_text.encode(encoding='sjis'),ori_len)
    if teshuzifutihuan(text) not in trans_dict:
        if text!="":
            er_list.append({'message':text})
    return matcher.group(1)+trans_bytes+matcher.group(3)

id=0
for t in trans:
    id+=1
    print(f'{id}/{num}',end='\r')
    f=open_file_b(ori_folder+t.replace('.json','.mjo'))
    f=find_text.sub(replace1,f)
    f=find_opt.sub(replace2,f)
    save_file_b(out_folder+t.replace('.json','.mjo'),f)
    #os.system('majiro cs '+out_folder+t.replace('.json','.mjo'))
    
from Majiro_arc_file import *
Majiro_arc_file().pack(out_folder,'release\scenario.arc')

_=[]
er_list_=[]
for i in er_list:
    if i['message'] not in _:
        er_list_.append(i)
        _.append(i['message'])
save_json('er_list.json',er_list_)