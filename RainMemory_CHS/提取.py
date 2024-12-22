import json
import re
import os

filelist=os.listdir("原脚本")

class Line(object):
    def __init__(self,text:str) -> None:
        self.ori_text=text.strip().replace("\n","")
        self.type,self.content=self.type_check()
    
    def type_check(self):
        if self.ori_text=="":
            return "n",""
        if self.ori_text[0:11]=="[name text=":
            name=self.ori_text[13:-3]
            return "name",name
        if re.sub("\[[^\[]*\]","",self.ori_text)=="" or self.ori_text[0]=="*" or self.ori_text[0]=="@":
            return "ctl",self.ori_text
        
        p_text=re.sub("\[[^\[\"]*\]","",self.ori_text)
        p_text=re.sub("\[[^\"\[]*text=\"","",p_text)
        p_text=p_text.replace('"]',"")
        return "message",p_text
    
    def trans(self,transdict):
        if self.type=="message":
            transtext=transdict[self.content]
            if "indent" in self.ori_text:
                transtext=transtext[0]+"[indent]"+transtext[1:]+"[endindent]"
            return transtext+"\n"

        else:
            return self.ori_text+"\n"

for file in filelist:
    ori_file = open("原脚本\\"+file,"r",encoding='shiftjis')
    
    output=[]
    dic={}

    for l in ori_file:
        l=Line(l)

        if l.type=="name":
            dic["name"]=l.content
        if l.type=="message":
            dic["message"]=l.content
            output.append(dic)
            dic={}

    with open("提取文本\\"+file.replace("ks","json"),'w',encoding="utf8") as f:
        json.dump(output,f,ensure_ascii=False,indent=4)

