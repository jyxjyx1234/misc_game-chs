import re
import json

ori_text=open('RSAN.SD','rb').read()

texts=ori_text[0:864384].split(b'\x00')

namedict={
    0:"",
    1:"羽山 卓",
    18:"運転手",
    3:"玲",
    4:"山田",
    2:"麗佳",
    5:"ジョン",
    6:"犬",
    12:"豚",
    15:"青年A",
    16:"青年B",
    17:"青年C",
    13:"男",
    14:"女",
    20:"ホームレスB",
    19:"ホームレスA",
    21:"ホームレスC",
    22:"ホームレスD",
    23:"ホームレスE",
    24:"ホームレスF",
    25:"ガードマン",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
    text=re.sub(b'\x93\x03',b'',text)
    text=re.sub(b'\xe9\x05',b'',text)
    text=re.sub(b'\x81\x40',b'',text)
    return text


name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')

option_flag=[False,False,False]#第一个记录49，第二个记录02，第三个记录是第几句

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
        if text==b'\x49':
            option_flag[0]=True
            continue
        if option_flag[0]:
            if option_flag[1]:
                dic={}
                dic['message']=get_plain_text(text).decode(encoding='sjis')
                out.append(dic.copy())
                dic={}
                if option_flag[2]:
                    option_flag=[False,False,False]
                    continue
                option_flag[2]=True
                continue
            else:
                if text==b'\x02':
                    option_flag[1]=True
                else:
                    option_flag[0]=False
                continue
            

        if name_pattern.match(b'\x00'+text+b'\x00'):
            if dic.get('message','')!='':
                out.append(dic.copy())
                del dic['message']
            try:
                dic['name']=namedict[int(text.decode()[1:])]
                if dic['name']=='':
                    del dic['name']
            except:
                print(text)
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
        

    out_f=open('RSAN.json','w',encoding='utf8')
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