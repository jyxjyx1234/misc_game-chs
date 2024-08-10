import re
import json
from HanziReplacer import *

#通过正则导入翻译后的文本

with open('CODE', 'rb') as f:
    data = f.read()

#这里导入galtransl生成的译文。因为种种原因，这里的译文分了很多文件。
trans_file=json.load(open("译文_.json","r",encoding='utf8'))
op_trans_file=json.load(open("译文_op.json","r",encoding='utf8'))
new_trans_file=json.load(open("new.json","r",encoding='utf8'))
replacement_dict={}
for dic in trans_file:
    replacement_dict[dic["pre_jp"]]=dic["pre_zh"]
for dic in op_trans_file:
    replacement_dict[dic["pre_jp"]]=dic["pre_zh"]
for dic in new_trans_file:
    replacement_dict[dic["pre_jp"]]=dic["pre_zh"]

for i in replacement_dict:#生成sjis编码不支持的汉字的替换规则
    tempdict,charlist=GetInvalidChars(replacement_dict[i],tempdict,charlist)
hanzidict,target_chars,source_chars=Createhanzidict(tempdict,charlist)

#修改UFIConfig文件，这个文件以及winmm.dll要放入补丁。
ChangeUFIConfig('patch/release/uif_config.json',source_chars,target_chars)

def get_plane_text(text:bytes)->bytes:
    '''
    用于处理注音等特殊格式的代码。方便起见，这里直接将特殊格式完全去掉，即去掉注音。
    '''
    sp1=b'\x1B\x03\x00\x01\x06\x00\x19\x32\xC7\x01\x00\xFF\xFF'
    text=text.replace(sp1,b'')
    text=re.sub(b'\x1B\xF9\x01\x01[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff]',b'',text)
    text=re.sub(b'\xFF\x02[\x00-\xff]*?\xFF\xFF',b'',text)
    return text

def dengchang(trans:bytes,ori_length:int)->bytes:
    '''
    用于维持文本长度不变。暴力提取时文本长度改变后会闪退。
    '''
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
        trans+=b'\x00'
    
    return trans

#正则匹配规则
#选项：\x78\x85\x00\x00\x00\x79\x01\x7a\x00+一个字节（推测为长度）+选项内容+\x42\x7b
#文本：\x1B\x12\x00\x01\x06\x00\x20\x64\x00\x00\x00\xFF\x02\x06\x00\x19\x41\xA8\x00\x00\xFF\xFF +文本内容+\x1B\x03\x00\x01\x06\x00\x19\xA1\xAE\x00\x00\xFF\xFF
#不同游戏会有细微不同，需要修改
name_and_message=re.compile(b'(\x78\x85\x00\x00\x00\x79\x01\x7a\x00[\x00-\xff])([\x00-\xff]*?)(\x42\x7b)|(\x1B\x12\x00\x01\x06\x00\x20\x64\x00\x00\x00\xFF\x02\x06\x00\x19\x41\xA8\x00\x00\xFF\xFF)([\x00-\xff]*?)(\x1B\x03\x00\x01\x06\x00\x19\xA1\xAE\x00\x00\xFF\xFF)')

def trans(ori_text:bytes,replacement_dict:dict)->bytes:
    '''
    根据之前生成的翻译字典进行翻译。
    '''
    ori_l=len(ori_text)
    ori_text=get_plane_text(ori_text)
    ori_text=ori_text.decode(encoding='sjis')
    try:
        trans_text=hanzitihuan(replacement_dict[ori_text],hanzidict)
    except KeyError:
        trans_text=ori_text     
    trans_bytes=trans_text.encode(encoding='sjis')
    trans_bytes=dengchang(trans_bytes,ori_l)
    return trans_bytes

def replace_match(match):
    '''
    正则替换的规则。根据前面的匹配规则进行修改。
    '''
    if match.group(2):#将匹配到的第二组（即选项文本）替换为翻译后的
        ori_text=match.group(2)
        trans_text=trans(ori_text,replacement_dict)
        return match.group(1)+trans_text+match.group(3)
    if match.group(5):#将匹配到的第五组（即文本）替换为翻译后的
        ori_text=match.group(5)
        trans_text=trans(ori_text,replacement_dict)
        return match.group(4)+trans_text+match.group(6)

result = re.sub(name_and_message, replace_match, data,count=0)

with open('patch/SEC5/CODE','wb') as f:
    f.write(result)
