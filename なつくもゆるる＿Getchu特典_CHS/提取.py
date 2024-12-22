import json
import re

ori_file = open("omk_hm.txt","r",encoding='shiftjis')
    

output=[]
dic={}

for i in ori_file:
    i=i.strip()
    if not re.match("[;\[\*]",i):
        if i=="":
            if len(dic)!=0:
                output.append(dic.copy())
                dic={}
            continue
        if i[0]=='【':
            dic["name"]=i[1:-1]
        else:
            if "name" in dic:
                if "message" in dic:
                    dic["message"]=dic["message"]+"\\t"+i
                else:
                    dic["message"]=i

            else:
                if "message" in dic:
                    dic["message"]=dic["message"]+"\\t"+i
                else:
                    dic["message"]=i

with open("out.json",'w',encoding="utf8") as f:
    json.dump(output,f,ensure_ascii=False,indent=4)



