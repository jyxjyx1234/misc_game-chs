import re
import json
from HanziReplacer import *

yiwen=json.load(open('译文.json','r',encoding='utf8'))

replacement_dict={}
for dic in yiwen:
    replacement_dict[dic["pre_jp"]]=dic["pre_zh"]
    replacement_dict[dic["name"]]=dic["name"]
    if '|' in dic["pre_jp"]:
        o=dic["pre_jp"].split('|')
        t=dic["pre_zh"].split('|')
        for a,b in list(zip(o,t)):
            replacement_dict[a]=b

for i in replacement_dict:#生成sjis编码不支持的汉字的替换规则
    tempdict,charlist=GetInvalidChars(replacement_dict[i],tempdict,charlist)
hanzidict,target_chars,source_chars=Createhanzidict(tempdict,charlist)

ChangeUFIConfig('release\\uif_config.json',source_chars,target_chars)

with open('subs_cn_jp.json','w',encoding='utf8') as rlist:
    f={}
    for i in range(len(source_chars)):
        f[target_chars[i]]=source_chars[i]
    json.dump(f,rlist,indent=4,ensure_ascii=False)

with open('DOLLRN.SD', 'rb') as f:
    data = f.read()

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)
    text=re.sub(b'\x93\x03',b'',text)
    text=re.sub(b'\xe9\x05',b'',text)
    text=re.sub(b'\x95\x20\x03',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
    text=re.sub(b'\x81\x40',b'',text)
    if text[:2]==b'\x81\x45':
        text=text[2:]
    text=re.sub(b'\x00',b'',text)
    return text

def fenhang(text:bytes,ori_bytes:bytes)->bytes:
    #进行分行
    hangshu=get_hangshu(ori_bytes)
    #hangshu为原文中的行数（不能动）
    out=b''
    str_text=text.decode(encoding='sjis')
    for i in range(hangshu):
        if i+1==hangshu:
            out=out+str_text[i*25:].encode(encoding='sjis')+b'\x00'
        else:
            out=out+str_text[i*25:i*25+25].encode(encoding='sjis')+b'\x00'
    out=out[:-1]
    return out

def dengchang(trans:bytes,ori_bytes:bytes)->bytes:
    ori_length=get_plain_text_length(ori_bytes)
    #print(f'ori_length:{ori_length}')
    #ori_length中不含需要保留的字节，如语音标识、\x00等
    if len(trans)>ori_length:#第一步处理：去除末尾标点
        text=trans.decode(encoding='sjis')
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        trans=text.encode(encoding='sjis')
    
    if len(trans)>ori_length:#第二步处理：去除一些无意义重复
        text=trans.decode(encoding='sjis')
        text=text.replace(hanzitihuan('啊啊啊',hanzidict),hanzitihuan('啊啊',hanzidict)).replace('……','…').replace(hanzitihuan('——',hanzidict),hanzitihuan('—',hanzidict))
        text=text.replace(hanzitihuan('啊啊啊',hanzidict),hanzitihuan('啊啊',hanzidict)).replace('……','…').replace(hanzitihuan('——',hanzidict),hanzitihuan('—',hanzidict)).replace('　','')
        trans=text.encode(encoding='sjis')

    if len(trans)>ori_length:#第三步处理：去除标点符号
        text=trans.decode(encoding='sjis')
        text=text.replace('，','').replace('…','').replace('。','').replace('、','').replace('～','').replace('」','').replace('「','')
        trans=text.encode(encoding='sjis')

    if len(trans)>ori_length:#第四步处理：暴力截断
        text=trans.decode(encoding='sjis')
        while len(trans)>ori_length:
            text=text[0:-1]
            trans=text.encode(encoding='sjis')
    
    while len(trans)<ori_length:
        trans=trans+b'\x20'
    return trans

def _recover_tag(tag,ori_bytes,trans_bytes):
    tag=re.match(tag,ori_bytes)
    if tag:
        trans_bytes=tag.group(0)+trans_bytes
    return trans_bytes

def recover_tags(trans_bytes:bytes,ori_bytes:bytes)->bytes:
    #恢复[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x04]的语音标识，以及\x8b\x02（只有一处出现，作用未知）\x81\x45（选项前面的标识？）。
    #\x81\x40不进行恢复
    tags=[
        b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',#voice_tag
        b'\x81\x45',#opt_tag
        b'\x8b\x02',
        b'\x93\x03',
        b'\x95\x20\x03',
    ]

    for tag in tags:
        trans_bytes=_recover_tag(tag,ori_bytes,trans_bytes)

    return trans_bytes

def get_plain_text_length(text:bytes)->int:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)
    text=re.sub(b'\x00',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
    if text[:2]==b'\x81\x45':
        text=text[2:]
    text=re.sub(b'\x93\x03',b'',text)
    text=re.sub(b'\xe9\x05',b'',text)
    text=re.sub(b'\x95\x20\x03',b'',text)
    return len(text)

def get_hangshu(ori_bytes:bytes)->int:
    return ori_bytes.count(b'\x00')+1

def trans(ori_bytes:bytes,replacement_dict:dict)->bytes:
    '''
    根据之前生成的翻译字典进行翻译。
    输入为：保留了\x00、特殊tag的原字节串
    输出为：经过了等长处理、分行、补回特殊tag的译文。
    '''
    ori_text=get_plain_text(ori_bytes).decode(encoding='sjis')
    if ori_text not in replacement_dict:
        print(ori_text)
        
    trans_text=hanzitihuan(replacement_dict.get(ori_text,ori_text),hanzidict).encode(encoding='sjis')
    trans_text=dengchang(trans_text,ori_bytes)
    trans_text=fenhang(trans_text,ori_bytes)
    trans_text=recover_tags(trans_text,ori_bytes)
    return trans_text

text_positions=json.load(open("text_position.json","r",encoding='utf8'))

for start,end in text_positions:
    transed=trans(data[start:end],replacement_dict)
    if len(transed)!=end-start:
        print(start)
        print(end)
        print(transed)
        print(len(transed))
        print(end-start)
        exit()
    data=data[:start]+transed+data[end:]

#data_=bytes(byte ^ 0xFF for byte in data)

with open('release\DOLLRN.SD','wb') as outf:
    outf.write(data)
