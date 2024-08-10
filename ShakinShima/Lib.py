import json

class MultipleLineTexts():
    def __init__(self) -> None:
        self.line1=[]
        self.line2=[]
        self.line3=[]
        pass

    def ReadFromLine(self,line:str) -> None:
        try:
            y, msg = line.split(", ")
        except:
            return
        if msg[0] == '【':
            self._w1(msg)
        elif y == "3":
            self._w1(msg)
        elif y == "27":
            self._w2(msg)
        elif y == "51":
            self._w3(msg)
        else:
            return
        
    def _w1(self, msg:str) -> None:
        if msg not in self.line1:
            self._flag = True #用于标识第一行文本是否重复。如果重复，2、3行文本不会执行写入操作。
            self.line1.append(msg)
            self.line2.append(None)
            self.line3.append(None)
        else:
            self._flag = False
    
    def _w2(self, msg:str) -> None:
        if self._flag:
            self.line2[-1]=msg
            
    def _w3(self, msg:str) -> None:
        if self._flag:
            self.line3[-1]=msg

    def _gen_dict(self,idx:int) -> dict:
        dic={}
        text = self.line1[idx] + (self.line2[idx] if self.line2[idx] else "") + (self.line3[idx] if self.line3[idx] else "")
        if "「" in text:
            name,msg=text.split("「")
            dic["name"] = name
            dic["message"] = "「" + msg
        else:
            dic["message"] = text
        return dic
    
    def save_trans_json(self,path) -> None:
        outjson=[]
        l = self.line1.__len__()
        for i in range(l):
            dic=self._gen_dict(i)
            outjson.append(dic)
        
        json.dump(outjson,open(path,'w',encoding='utf8'),indent=2,ensure_ascii=False)
    
    def save(self,path) -> None:
        out=[]
        dic={}
        l = self.line1.__len__()
        for idx in range(l):
            dic[self.line1[idx]] = idx+1
            out.append([self.line1[idx],self.line2[idx],self.line3[idx]])
        out_ = [[dic]]+out
        json.dump(out_,open(path,'w',encoding='utf8'),indent=2,ensure_ascii=False)
