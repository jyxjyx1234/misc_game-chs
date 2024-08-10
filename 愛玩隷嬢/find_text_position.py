import re,json
from dump import shaixuan,get_plain_text

ori_text=open('DOLLRN.SD','rb').read()
texts=ori_text.split(b'\x00')

start=0
end=-1

out=[]
dic={}
end_=0

option_flag=[False,False]#第一个记录49，第二个记录02
#45 02 42

name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')
for text in texts:
    if start>1325280:
        break
    end+=len(text)+1

    if text==b'\x45':
        option_flag[0]=True
        start+=len(text)+1
        continue

    if option_flag[0]:
        if text==b'\x42':
            option_flag=[False,False,False]
            start+=len(text)+1
            continue

        if option_flag[1]:
            out.append([start,end])
            start=end+1
            continue
        else:
            if text==b'\x02' or text==b'\x03':
                option_flag[1]=True
            else:
                option_flag[0]=False
            start+=len(text)+1
            continue

    if text[:2]==b'\x81\x45':#选项提取
        if dic.get('message','')!='':
            out.append((start,end_))
            del dic['message']

        try:
            del dic['name']
        except:
            pass

        start=end-len(text)
        out.append((start,end))
        start=end+1
        continue
        
    if shaixuan(text):
        try:
            t=get_plain_text(text).decode(encoding='sjis')
        except:
            pass
        dic['message']=dic.get('message','')+t
        end_=end

    else:
        if dic.get('message','')=='':
            start+=len(text)+1

        if dic.get('message','')!='':
            out.append((start,end_))
            del dic['message']
            start=end+1


text_position=open('text_position.json','w',encoding='utf8')
json.dump(out,text_position,ensure_ascii=False,indent=4)
print(len(out))


with open('DOLLRN.json','r',encoding='utf8') as f:
    tiqu=json.load(f)

tiqu1=[]
for i in tiqu:
    tiqu1.append(i['message'])

tiqu2=[]
for s,e in out:
    tiqu2.append(get_plain_text(ori_text[s:e]).replace(b'\x00',b'').decode(encoding='sjis'))

for i in tiqu1:
    if i not in tiqu2:
        print(i)