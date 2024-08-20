import os
import re
import json
from Lib import *

oripath = "ori_data/"
outpath = "json_data_ori/"

orifiles = os.listdir(oripath)

find_text = re.compile(rb'\x00\x01[\x65\x67]\x00\x00\x00\x00\x01([\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff])([\x00-\xff]*?)\x00|\x05\x01\x00\x00\x00\x00([\x00-\xff]\x00\x00\x00[\x00-\xff]*?)\x00\x00[\x08\x0b]\x6f')

def read_options(data:bytes):
    res = []
    while True:
        length = from_bytes(data[:4])
        data = data[4:]
        text = data[:length - 1].decode('sjis')
        data = data[length:]
        res.append((length,text))
        if len(data) <= 1:
            break
    res = res[-1:] + res[:-1]
    return res

def splitmessage(text:str):
    l = text.split("\n",1)
    if len(l) == 2 and l[1][0] == "「" or l[1][0] == "（":
        name = l[0]
        msg = l[1]
    else:
        name = None
        msg = text
    return name, msg

for f in orifiles:
    out = []
    dic = {}
    filedata = open_file_b(oripath + f)
    matches = find_text.findall(filedata)
    for match in matches:
        if match[1]:
            text = match[1].decode('sjis')
            name, msg = splitmessage(text)
            if name:
                dic['name'] = name
            dic['message'] = msg 

        elif match[2]:
            try:
                res = read_options(match[2])
            except:
                print(f)
                exit()
            l = len(res)
            for _,text in res:
                name, msg = splitmessage(text)
                if name:
                    dic['name'] = name
                dic['message'] = msg 
                dic['optcount'] = l
        out.append(dic)
        dic = {}
    save_json(outpath + f + ".json",out)
