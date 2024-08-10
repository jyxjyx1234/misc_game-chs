import json
import os
import re

def open_file_b(path)->bytes:
    return open(path,'rb').read()

def from_bytes(b:bytes)->int:
    return int.from_bytes(b, byteorder='little', signed=False)

def save_file_b(path,data)->None:
    with open(path,'wb') as f:
        f.write(data)

def save_json(path:str,data)->None:
    with open(path,'w',encoding='utf8') as f:
        json.dump(data,f,ensure_ascii=False,indent=4)

def open_json(path:str):
    f = open(path,'r',encoding='utf8')
    return json.load(f)

def to_bytes(num:int,length:int)->bytes:
    return num.to_bytes(length,byteorder='little')
