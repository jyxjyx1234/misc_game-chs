import re
import json

ori_text=open('KANN.SD','rb').read()

texts=ori_text[0:1325280].split(b'\x00')

namedict={
    #1544
    2:"カノン",
    #1924
    6:"カノン",
    #2768
    7:"カノン",
    #2891
    0:"",
    #5601
    8:"母亲",
    #13801
    3:"マトバ",
    #14352
    14:"マトバ",
    #43176
    4:"ユキ",
    #43953
    9:"ユキ",
    #49428
    16:"生徒1",
    #49499
    17:"生徒2",
    #49576
    18:"生徒3",
    #70834
    11:"段原",
    #124539
    5:"マヤ",
    #125508
    10:"マヤ",
    #351137
    19:"女教师",
    #351754
    20:"男教师1",
    #353390
    21:"男教师2",
    #354741
    12:"数学教师",
    #788021
    15:"",
    #832033
    1:"",
}

def get_plain_text(text:bytes)->bytes:
    text=re.sub(b'[\x00-\xff][\x00-\xff][\x00-\xff][\x01-\x10]',b'',text)#需要恢复
    text=re.sub(b'\x81\x40',b'',text)#不用恢复
    text=re.sub(b'\xe0\x32\x04',b'',text)#需要恢复
    text=re.sub(b'\x94\x01',b'',text)#需要恢复
    text=re.sub(b'\xe8\x02',b'',text)#需要恢复

    return text

name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')

def shaixuan(text:bytes)->bool:
    text=get_plain_text(text)
    if len(text)<=3:
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
                #print(text)
                #print(int(text.decode()[1:]))
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

        elif text==b'\x4d' or text==b'\x43':
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
        

    out_f=open('KANN.json','w',encoding='utf8')
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
#print(':"",\n'.join(namelist))

namelist_=[]
for i_ in namelist:
    i=i_.encode()
    i=b'\x00\x4e'+i+b'\x00'
    p=ori_text.find(i)
    namelist_.append('#'+str(p)+'\n'+str(i_))
print(':"",\n'.join(namelist_))
'''

