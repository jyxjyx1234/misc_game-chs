import re
from Lib import *
import json

ori_text=open('SYKN.SD','rb').read()

texts=ori_text[0:0x1d02a4].split(b'\x00')

namedict={
    "0":"0",
    "50":"50",
    "28":"28",
    "27":"27",
    "38":"38",
    "55":"55",
    "1":"1",
    "36":"36",
    "10":"10",
    "2":"2",
    "6":"6",
    "3":"3",
    "48":"48",
    "32":"32",
    "49":"49",
    "29":"29",
    "54":"54",
    "57":"57",
    "45":"45",
    "12":"12",
    "16":"16",
    "9":"9",
    "8":"8",
    "4":"4",
    "15":"15",
    "52":"52",
    "26":"26",
    "5":"5",
    "59":"59",
    "33":"33",
    "7":"7",
    "31":"31",
    "11":"11",
    "51":"51",
    "13":"13",
    "14":"14",
    "34":"34",
    "20":"20",
    "35":"35",
    "43":"43",
    "37":"37",
    "42":"42",
    "19":"19",
    "44":"44",
    "39":"39",
    "24":"24",
    "47":"47",
    "21":"21",
    "30":"30",
    "22":"22",
    "23":"23",
    "46":"46",
    "40":"40",
    "41":"41",
    "25":"25",
    "58":"58",
    "17":"17",
    "18":"18",
    "56":"56",
    "53":"53",
    "61":"61",
    "60":"60",
    "64":"64",
    "65":"65",
    "66":"66",
    "62":"62",
    "63":"63",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(rb'[\x01-\xff][\x01-\xff][\x01-\xff][\x01-\x10]',b'',text)
    text=re.sub(rb'[\x01-\xff][\x01-\xff][\x01-\x10]',b'',text)
    text=re.sub(rb'[\x01-\xff][\x01-\x10](?=\x81\x75)',b'',text)
    text=re.sub(rb'\x88\x04(?=\x81\x40)',b'',text)
    text=re.sub(rb'\x85\x02(?=\x81\x40)',b'',text)
    text=re.sub(rb'\x93\x03(?=\x81\x40)',b'',text)
    return text

name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')

option_flag=[False, False, False]#第一个记录4b，第二个记录02，第三个记录是第几句

def shaixuan(text:bytes)->bool:
    text=get_plain_text(text)
    if len(text)<=4:
        return False
    if not re.match(b'[\x81-\x9F\xE0-\xEF]',text):
        return False
    if re.match(b'[\x41-\x5a\x61-\x7a]',text):
        return False
    return True

if __name__=='__main__':
    out = OriJsonOutput()
    l=0
    for text in texts:
        if text==b'\x46':#选项的op（存疑）
            option_flag[0] = True
            continue
        if option_flag[0]:
            if option_flag[2]:#读取过文本数
                out.append_dict()
                if len(text)==1:
                    option_flag=[False, 0, False]
                    continue
                out.dic['message']=get_plain_text(text).decode(encoding='sjis')
                out.append_dict()
                option_flag[1] -= 1
                if not option_flag[1]:#读取完了文本
                    option_flag=[False, 0, False]#复位
                    continue
                continue
            else:
                if text==b'\x02' or text==b'\x03' or text==b'\x04':
                    option_flag[1]=from_bytes(text)#记录文本数
                    option_flag[2]=True#记录是否读取过文本数
                else:
                    option_flag[0]=False
                continue
            
        if name_pattern.match(b'\x00'+text+b'\x00'):
            if out.dic.get('message','')!='':
                out.append_dict()
            try:
                out.dic['name']=namedict[int(text.decode()[1:])]
            except:
                #print(text)
                #print(int(text.decode()[1:]))
                out.dic['name']=text.decode()[1:]
            continue

        elif shaixuan(text):
            try:
                t=get_plain_text(text).decode(encoding='sjis')
            except:
                print(text)
            out.dic['message']=out.dic.get('message','')+t
            l+=len(t)
        else:
            if out.dic.get('message','')!='':
                out.append_dict()
        
    out.save_json('MOPN.json')

'''
nametags=name_pattern.findall(ori_text)
namelist=[]
for i in nametags:
    i=i[1].decode()
    if i in namelist:
        pass
    else:
        namelist.append(i)
for i in namelist:
    print(f'"{i}":"{i}"')
'''