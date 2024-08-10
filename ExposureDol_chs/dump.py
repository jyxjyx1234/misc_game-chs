import re
import json

ori_text=open('EXDN.SD','rb').read()

texts=ori_text.split(b'\x00')

namedict={
    0:"",
    1:'古賀',
    2:'古賀',
    37:"香澄", 
    7:"柚香利",
    43:"",
    3:"香澄",
    13:"教师",
    11:"用務員",
    12:"教头",
    38:"燐",
    5:"燐",
    6:"燐",
    27:"女子生徒1",
    26:"生徒達",
    39:"柚香利",
    21:"男子生徒1",
    22:"男子生徒2",
    40:"御手洗",
    9:"御手洗",
    29:"男1",
    35:"女2",
    41:"星塚",
    10:"星塚",
    23:"男子生徒3",
    24:"男子生徒4",
    25:"男子生徒5",
    42:"用務員",
    15:"アナウンス",
    30:"男2",
    31:"男3",
    32:"男4",
    34:"女1",
    8:"柚香利",
    14:"ホームレス",
    17:"通行人2",
    16:"通行人1",
    18:"店員1",
    19:"店員2",
    20:"店員3",
    33:"男5",
    4:"香澄",
    28:"男",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x04]',b'',text)
    text=re.sub(b'\x8b\x02',b'',text)
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
                pass
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
        

    out_f=open('EXDN.json','w',encoding='utf8')
    json.dump(out,out_f,indent=4,ensure_ascii=False)
    
    l=0
    for i in out:
        l+=len(i['message'])

    print(l)