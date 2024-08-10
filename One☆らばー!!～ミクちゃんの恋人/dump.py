import re
import json

ori_text=open('OLV_DLN.SD','rb').read()

texts=ori_text.split(b'\x00')

namedict={
    20:"",
    1:"美久",
    3:"美久",
    0:"",
    9:"大輔",
    2:"美久",
    4:"教師",
    14:"級友",
    15:"級友1",
    17:"級友2",
    19:"大輔",
    5:"教師",
    10:"男",
    12:"店員",
    7:"子供",
    11:"男",
    6:"犬",
    8:"女",
    18:"級友2",
    16:"級友1&2",
    13:"母親",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
    text=re.sub(b'\x93\x03',b'',text)
    text=re.sub(b'\xe9\x05',b'',text)
    text=re.sub(b'\x81\x40',b'',text)
    return text


name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]*?)(\x00)')

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
    out=[]
    dic={}
    l=0
    for text in texts:
        if name_pattern.match(b'\x00'+text+b'\x00'):
            if dic.get('message','')!='':
                out.append(dic.copy())
                del dic['message']
            try:
                dic['name']=namedict[int(text.decode()[1:])]
                if dic['name']=='':
                    del dic['name']
            except:
                print(int(text.decode()[1:]))
                dic['name']=''
                del dic['name']
            continue
            
        elif text[:2]==b'\x81\x45':#选项提取
            if dic.get('message','')!='':
                out.append(dic.copy())
                del dic['message']

            try:
                del dic['name']
            except:
                pass
            dic['message']=text[2:].decode(encoding='sjis')
            continue

        elif text==b'\x4d' or text==b'\x4e\x30':
            if dic.get('message','')!='':
                out.append(dic.copy())
                del dic['message']
        elif shaixuan(text):
            try:
                t=get_plain_text(text).decode(encoding='sjis')
            except:
                print(text)
            dic['message']=dic.get('message','')+t
            l+=len(t)
        else:
            if dic.get('message','')!='':
                out.append(dic.copy())
                del dic['message']
        

    out_f=open('OLV_DLN.json','w',encoding='utf8')
    json.dump(out,out_f,indent=4,ensure_ascii=False)
    
    l=0
    for i in out:
        l+=len(i['message'])

    print(l)
    print(len(out))

'''
nametags=name_pattern.findall(ori_text)
namelist=[]
for i in nametags:
    i=i[1].decode()
    if i in namelist:
        pass
    else:
        namelist.append(i)
print(':"",\n'.join(namelist))
'''