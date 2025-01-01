import os
import json
import re
from Lib import *

with open('CODE', 'rb') as f:
    data = f.read()

outjson=[]

def get_plane_text(text:bytes)->bytes:
    '''
    用于处理注音等特殊格式的代码。方便起见，这里直接将特殊格式完全去掉，即去掉注音。
    '''
    sp1=b'\x1B\x03\x00\x01\x06\x00\x19\x32\xC7\x01\x00\xFF\xFF'
    text=text.replace(sp1,b'')
    text=re.sub(b'\x1B\xF9\x01\x01[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff]',b'',text)
    text=re.sub(b'\xFF\x02[\x00-\xff]*?\xFF\xFF',b'',text)
    return text

#正则匹配规则
#选项：\x78\x85\x00\x00\x00\x79\x01\x7a\x00+一个字节（推测为长度）+选项内容+\x42\x7b
#文本：\x1B\x12\x00\x01\x06\x00\x20\x64\x00\x00\x00\xFF\x02\x06\x00\x19\x41\xA8\x00\x00\xFF\xFF +文本内容+\x1B\x03\x00\x01\x06\x00\x19\xA1\xAE\x00\x00\xFF\xFF
#不同游戏会有细微不同，需要修改
#这里没有匹配人名，翻译效果较差。在こいなか的文本处理代码中进行了人名匹配。
name_and_message=re.compile(b'(\x78\x85\x00\x00\x00\x79\x01\x7a\x00[\x00-\xff])([\x00-\xff]*?)(\x42\x7b)|(\x1B\x12\x00\x01\x06\x00\x20\x64\x00\x00\x00\xFF\x02\x06\x00\x19\x41\xA8\x00\x00\xFF\xFF)([\x00-\xff]*?)(\x1B\x03\x00\x01\x06\x00\x19\xA1\xAE\x00\x00\xFF\xFF)|(\x78\x63\x00\x00\x00\x79\x01\x7a\x00)([\x00-\xff])([\x00-\xff]*?)(\x42\x7b)|(\x79\x03\x7A\x00)([\x00-\xff])([\x00-\xff]*?)(\x42\x7b)')

#匹配
msgs=name_and_message.findall(data)

#根据匹配的正则，这里可能需要调整。msg是一个元组，这里msg[1]对应的是正则中第二组匹配到的内容，即选项文本。
out = OriJsonOutput()
for msg in msgs:
    if msg[1]!=b'':
        out.add_text(get_plane_text(msg[1]).decode(encoding='sjis'))
        out.append_dict()
    if msg[4]!=b'':
        out.add_text(get_plane_text(msg[4]).decode(encoding='sjis'))
        out.append_dict()
    if msg[8]!=b'':
        out.add_name(msg[8].decode(encoding='sjis'))
    if msg[12]!=b'':
        out.add_name(msg[12].decode(encoding='sjis'))

#out.save_json("gt_input\\CODE", split=10)
#save_json("namedict.json", out.get_names())
print(out.textcount)

chenghao = open_file_b("稱號.bin")
out = OriJsonOutput()
for i in re.finditer(rb"(?<=\x00\x00\x00\x7A\x00)[\x00-\xff]", chenghao):
    end = i.end()
    length = from_bytes(i.group())
    msg = chenghao[end:end+length]
    out.add_text(msg.decode("shift-jis"))
    out.append_dict()
out.save_json("gt_input\\称号.json")