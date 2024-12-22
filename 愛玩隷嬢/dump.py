import re
import json

ori_text=open('DOLLRN.SD','rb').read()

texts=ori_text[0:1325280].split(b'\x00')

namedict={
    0:"",
    1:"公一",
    2:"亜衣",
    3:"女の子",
    4:"亜衣",
    5:"お娘様",
    6:"？？？",
    7:"？？？",
    8:"亜衣",
    9:"麗佳",
    10:"？？？",
    11:"女の子",
    12:"？？？",
    13:"麗佳",
    14:"優美",
    15:"？？？",
    16:"女性",
    17:"女の子",
    18:"優美",
    19:"優美&公一",
    20:"玲",
    21:"玲",
    22:"？？？",
    23:"？？？",
    24:"？？？",
    25:"メイド",
    26:"玲",
    27:"玲",
    28:"玲&優美",
    29:"亜衣の母親",
    30:"ぽあや",
    31:"黒服",
    32:"山田",
    33:"山田",
    34:"男性",
    35:"男性",
    36:"執事",
    37:"革田",
    38:"アヤシイ男",
    39:"オーナー",
    40:"男性",
    41:"ガードマン1",
    42:"ガードマン1",
    43:"ガードマン2",
    44:"ガードマン達",
    45:"鬼島",
    46:"男性",
    47:"？？？",
    48:"海道",
    49:"黒服",
    50:"？？？",
    51:"司会者",
    52:"神父",
    53:"調教師",
    54:"調教師",
    55:"通行人A",
    56:"通行人B",
    57:"通行人C",
    58:"野犬",
    59:"犬",
    60:"黒服A",
    61:"黒服B",
    62:"？？？",
    63:"？？？",
    64:"？？？",
    65:"アナウンサー",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
    text=re.sub(b'\x93\x03',b'',text)
    text=re.sub(b'\xe9\x05',b'',text)
    text=re.sub(b'\x95\x20\x03',b'',text)
    text=re.sub(b'\x81\x40',b'',text)
    return text

name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')

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
        

    out_f=open('DOLLRN.json','w',encoding='utf8')
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

namelist_=[]
for i_ in namelist:
    i=i_.encode()
    i=b'\x00\x4e'+i+b'\x00'
    p=ori_text.find(i)
    namelist_.append('#'+str(p)+'\n'+str(i_))
print(':"",\n'.join(namelist_))
'''

