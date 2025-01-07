from Lib import *
import re

push_log_patten = re.compile(r'(?<=\[pushlog text=")(.*?)(?="\])')

def remove_nested_brackets(text, ifPrint = False):
    oriText = text
    while True:
        match = re.search(r'\[[^\[\]]*\]', text)
        if match:
            if match.group() != "[p]" and match.group() != "[r]" and not re.match(r"\[ruby.*?\]", match.group()) and not re.match(r"\[stopse.*?\]", match.group()) and ifPrint:
                print(match.group())
                print(oriText)
            text = text.replace(match.group(), '')
        else:
            break
    return text

def changeTextOutBrackets(oritext:str, transtext:str):
    if "[" not in oritext:
        return transtext
    oritext = re.sub(r"\[ruby.*?\]", "", oritext)
    oritext = re.sub(r"\[l\]", "", oritext)
    transtext = list(transtext)
    out = ""
    bracketsBuffer = []
    lastIdx = 0
    for i in oritext:
        if len(bracketsBuffer) != 0:
            out += i
            if i == "]":
                bracketsBuffer.pop()
            if i == "[":
                bracketsBuffer.append(i)
        else:
            if i == "[":
                out += i
                bracketsBuffer.append(i)
            else:
                if len(transtext) != 0:
                    out += transtext.pop(0)
                    lastIdx = len(out)
    if len(transtext) > 0:
        t = "".join(transtext)
        out = out[:lastIdx] + t + out[lastIdx:]
    return out

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.is_line_end = False
        if "[p]" in self.text or "[endnowait]" in self.text:
            self.is_line_end = True
        self.read()
    
    def read(self):
        if self.text.strip("\t").strip(" ") == "[iscript]":
            self.type = 'startScr'
        elif self.text.strip("\t").strip(" ") == "[endscript]":
            self.type = 'endScr'
        elif self.text.startswith("$$$$"):
            self.type = 'special_add'
        elif self.scr_flag:
            self.type = 'others'
        elif re.match(r"[\*;@]", self.text.strip("\t").strip(" ")):
            self.type = 'others'
        elif self.text.startswith("#"):
            self.type = 'name'
        elif re.search(push_log_patten, self.text):
            self.type = 'pushlog'
        elif remove_nested_brackets(self.text.strip("\t").strip(" ").strip("_　")) == "":
            self.type = 'others'
        elif self.text.startswith("_　"):
            self.type = 'special_msg1'
            self.text = self.text.strip("_　")
            self.msg = remove_nested_brackets(self.text.strip("_　"), ifPrint = True)
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)
            

class KS_FILE():
    def __init__(self, path) -> None:
        self.path = path
        lines = open(path, "r", encoding="utf8").readlines()
        self.lines = []
        ifScr = False
        for i in lines:
            l = Line(i.strip("\n"), ifScr)
            if l.type == "startScr":
                ifScr = True
            if l.type == "endScr":
                ifScr = False
            self.lines.append(l)

    
    def dump_text(self) -> OriJsonOutput:
        out = OriJsonOutput()
        for l in self.lines:
            if l.type == "name":
                t = l.text.strip("#")
                names = open_json("namedict.json")
                out.dic['name'] = names[t]
            if l.type == "msg" or l.type == "special_msg1":
                t = l.msg
                out.add_text(t)
            if l.type == "pushlog":
                dic = {
                    "message": push_log_patten.search(l.text).group(1),
                    "ori": push_log_patten.search(l.text).group(1),
                    "lines": 1
                }
                out.outlist.append(dic)
            if l.is_line_end:
                out.append_dict(remove_name=False)
        return out

    def trans(self,namedict, trans_json):
        hangshu = 0
        for l in self.lines:
            if l.type == "msg" or l.type == "special_msg1":
                if hangshu > 0:
                    l.text = changeTextOutBrackets(l.text, "")
                    hangshu -= 1
                else:
                    trans_text_dic = trans_json.pop(0)
                    hangshu = trans_text_dic['lines']
                    trans_text = trans_text_dic['message']
                    trans_text = processQuote(trans_text)
                    l.text = changeTextOutBrackets(l.text, trans_text)
                    hangshu -= 1
                
            elif re.search(push_log_patten, l.text):
                trans_text_dic = trans_json.pop(0)
                trans_text = trans_text_dic['message']
                l.text = push_log_patten.sub(lambda x : trans_text, l.text)
            
            elif l.type == "special_add":
                l.text = l.text[4:]

            l.text = re.sub(r'(?<=\[voconfig sebuf="2" name=")(.*?)(?=")', lambda x: namedict[x.group(1)], l.text)
    
    def save(self, path):
        f = open(path,'w',encoding='utf8')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
