import re
import json

with open('CODE', 'rb') as f:
    data = f.read()

id=1#计数
l=0
#正则匹配规则
#用16进制编辑器进行观察
#人名：\x78\x53\x00\x00\x00\x79\x01\x7a\x00+一个字节（推测为长度）+人名+\x42\x7b
#选项：\x78\x70\x00\x00\x00\x79\x01\x7a\x00+一个字节（推测为长度）+选项内容+\x42\x7b
#文本：\x1B\x12\x00\x01\x06\x00\x20\x54\x00\x00\x00\xff\x02\x06\x00\x70\x70\xa8\x00\x00\xFF\xFF +文本内容+\x1B\x03\x00\x01\x06\x00\x70\xAD\xAC\x00\x00\xFF\xFF
#不同游戏会有细微不同，需要修改
name_and_message=re.compile(rb'(\x78[\x5b-\x5b]\x00\x00\x00\x79\x01\x7a\x00[\x00-\xff])([\x00-\xff]*?)(\x42\x7b)|(\x1B\x12\x00\x01\x06\x00\x20\x5C\x00\x00\x00\xFF\x02\x06\x00\x70\x74\xAB\x00\x00\xFF\xFF)([\x00-\xff]*?)(\x1B\x03\x00\x01\x06\x00\x70\x6E\xB0\x00\x00\xFF\xFF)|(\x78\x78\x00\x00\x00\x79\x01\x7a\x00[\x00-\xff])([\x00-\xff]*?)(\x42\x7b)')

def get_plane_text(text:bytes)->bytes:
    '''
    用于处理注音等特殊格式的代码。方便起见，这里直接将特殊格式完全去掉，即去掉注音。（即使保留格式，AI翻译的时候也容易乱掉，干脆去掉）
    不同游戏可能不同，用16进制编辑器进行观察。
    '''
    text=text.replace(b'\x1B\xF8\x01\xFF',b'')
    text=re.sub(b'\x1B\x03\x00\x01\x06\x00\x70[\x00-\xff][\x00-\xff][\x00-\xff]\x00\xFF\xFF',b'',text)
    text=text.replace(b'\x1B\xF9\x01\x01\x06\x00\x7A\x00\x02\x90\x5B\xFF\x01\x06\x00\x7A\x00\x02\x92\xAC\xFF\x02\x08\x00\x7A\x00\x04\x82\xD3\x82\xA9\xFF\x02\x08\x00\x7A\x00\x04\x82\xDC\x82\xBF\xFF\xFF',b"\x90\x5B\x92\xAC\x82\xD3\x82\xA9")
    text=re.sub(b'\x1B\xF9\x01\x01[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff]',b'',text)
    text=re.sub(b'\xFF\x02[\x00-\xff]*?\xff\xff',b'',text)
    text = text.replace(b'\xfa\x93',b'')
    return text

#进行匹配


name_and_message_matches=name_and_message.findall(data)

outjson=[]
dic={}

#处理匹配到的结果。根据前面正则的不同这里需要修改。
for i in name_and_message_matches:
    if i[1]!=b'':
        dic['name']=i[1].decode(encoding='sjis')
    elif i[4]!=b'':
        out=get_plane_text(i[4])
        try:
            dic['message']=out.decode(encoding='sjis')
            l+=len(dic['message'])
        except:
            print(i[4].hex())
            exit()
        id+=1
        outjson.append(dic)
        dic={}
    elif i[7]!=b'':
        dic['message']=i[7].decode(encoding='sjis')
        l+=len(dic['message'])
        id+=1
        outjson.append(dic)
        dic={}

#输出提取的文本
outf=open('CODE.json','w',encoding='utf8')
json.dump(outjson,outf,indent=4,ensure_ascii=False)

print(len(outjson))#33185行
print(l)#文本量932970
