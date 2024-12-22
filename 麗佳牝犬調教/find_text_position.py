import re,json
from dump import shaixuan,get_plain_text

ori_text=open('RSAN.SD','rb').read()
texts=ori_text.split(b'\x00')

start=0
end=-1

out=[]
dic={}
end_=0

option_flag=[False,False,False]#第一个记录49，第二个记录02，第三个记录是第几句

name_pattern=re.compile(b'(\x00\x4e)([\x30-\x39]+?)(\x00)')
for text in texts:
    if start>858688:
        break
    end+=len(text)+1

    if text==b'\x49':
        option_flag[0]=True
        start+=len(text)+1
        continue
    
    if option_flag[0]:
        if option_flag[1]:
            out.append([start,end])
            start=end+1
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
            start+=len(text)+1
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
