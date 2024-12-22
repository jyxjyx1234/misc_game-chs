import re
import json
from HanziReplacer import *
from dump import get_plain_text

yiwen=open_json('test_trans.json')
#yiwen=open_json('译文.json')

trans_dict={}
for dic in yiwen:
    trans_dict[dic["pre_jp"]]=dic["pre_zh"]

h = HanziReplacer()
h.ReadTransAndGetHanzidict([trans_dict])
#h.ChangeFont("wenquanyi.ttf","release/MOPN.ttf","MOPN")

with open('SYKN.SD', 'rb') as f:
    data = f.read()

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

def dengchang(trans_text:bytes, ori_bytes:bytes)->bytes:
    ori_length=len(get_plain_text(ori_bytes).replace(b"\x00",b""))
    #print(f'ori_length:{ori_length}')
    #ori_length中不含需要保留的字节和\x00

    if len(trans_text)>ori_length:#第一步处理：去除末尾标点
        text=trans_text.decode(encoding='sjis')
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！':
            text=text[:-1]
        trans_text=text.encode(encoding='sjis')
    
    if len(trans_text)>ori_length:#第二步处理：去除一些无意义重复
        text=trans_text.decode(encoding='sjis')
        text=text.replace(h.hanzitihuan('啊啊啊'),h.hanzitihuan('啊啊')).replace('……','…').replace(h.hanzitihuan('——'),h.hanzitihuan('—'))
        text=text.replace(h.hanzitihuan('啊啊啊'),h.hanzitihuan('啊啊')).replace('……','…').replace(h.hanzitihuan('——'),h.hanzitihuan('—')).replace('　','')
        trans_text=text.encode(encoding='sjis')

    if len(trans_text)>ori_length:#第三步处理：去除标点符号
        text=trans_text.decode(encoding='sjis')
        text=text.replace('，','').replace('…','').replace('。','').replace('、','').replace('～','').replace('」','').replace('「','')
        trans_text=text.encode(encoding='sjis')

    if len(trans_text)>ori_length:#第四步处理：暴力截断
        text=trans_text.decode(encoding='sjis')
        while len(trans_text)>ori_length:
            text=text[0:-1]
            trans_text=text.encode(encoding='sjis')
    
    if len(trans_text)>ori_length:#第四步处理：暴力截断
        text=trans_text.decode(encoding='sjis')
        while len(trans_text)>ori_length:
            text=text[0:-1]
            trans_text=text.encode(encoding='sjis')
    
    while len(trans_text)<ori_length:
        trans_text=trans_text+b'\x20'
        trans_text=trans_text.replace(b'\x20\x20',b'\x81\x40')
    return trans_text

def recover_tags(trans_bytes:bytes,ori_bytes:bytes)->bytes:
    voice_tag=re.match(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',ori_bytes)
    unknown_tag1=re.match(b'[\x00-\xff][\x00-\xff][\x01-\x10]',ori_bytes)
    unknown_tag2=re.match(b'[\x00-\xff][\x00-\x10](?=\x81\x75)',ori_bytes)
    unknown_tag3=re.match(b'\x88\x04(?=\x81\x40)',ori_bytes)
    unknown_tag4=re.match(b'\x85\x02(?=\x81\x40)',ori_bytes)
    unknown_tag5=re.match(b'\x93\x03(?=\x81\x40)',ori_bytes)
    if voice_tag:
        trans_bytes=voice_tag.group(0)+trans_bytes
    elif unknown_tag1:
        trans_bytes=unknown_tag1.group(0)+trans_bytes
    elif unknown_tag2:
        trans_bytes=unknown_tag2.group(0)+trans_bytes
    elif unknown_tag3:
        trans_bytes=unknown_tag3.group(0)+trans_bytes
    elif unknown_tag4:
        trans_bytes=unknown_tag4.group(0)+trans_bytes
    elif unknown_tag5:
        trans_bytes=unknown_tag5.group(0)+trans_bytes
    return trans_bytes

def get_hangshu(ori_bytes:bytes)->int:
    return ori_bytes.count(b'\x00')+1

def trans(ori_bytes:bytes, trans_dict : dict)->bytes:
    '''
    根据之前生成的翻译字典进行翻译。
    输入为：保留了\x00、特殊tag的原字节串
    输出为：经过了等长处理、分行、补回特殊tag的译文。
    '''
    ori_text=get_plain_text(ori_bytes).replace(b"\x00", b"").decode(encoding='sjis')
    if ori_text not in trans_dict:
        print(ori_text + "not found!")
        pass
    trans_text=h.hanzitihuan(trans_dict.get(ori_text, ori_text)).encode(encoding='sjis')
    trans_text=dengchang(trans_text,ori_bytes)
    trans_text=fenhang(trans_text,ori_bytes)
    trans_text=recover_tags(trans_text,ori_bytes)
    return trans_text

text_positions=json.load(open("text_position.json","r",encoding='utf8'))

for start,end in text_positions:
    transed=trans(data[start:end], trans_dict)
    if len(transed)!=end-start:
        print(start)
        print(end)
        print(transed)
        print(len(transed))
        print(end-start)
        exit()
    data=data[:start]+transed+data[end:]

#data_=bytes(byte ^ 0xFF for byte in data)

with open('release\SYKN.SD','wb') as outf:
    outf.write(data)
