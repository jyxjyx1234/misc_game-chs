from Lib import *
import re


def remove_nested_brackets(text, ifPrint = False):
    oriText = text
    while "[" in text and "]" in text:
        text = re.sub(r"\[[^\[\]]*\]", "", text)
    return text

def changeTextOutBrackets(ori:str, transtext:str):
    if "[" not in ori:
        return transtext
    
    oritext = re.sub(r"\[r\]", "", ori)
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
    out = out + "[r]"
    return out

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.read()
    
    def read(self):
        if self.text.strip("\t").strip(" ") == "[iscript]":
            self.type = 'startScr'
        elif self.text.strip("\t").strip(" ") == "[endscript]":
            self.type = 'endScr'
        elif self.text.strip("\t").strip(" ").startswith("@if"):
            self.type = 'startScr'
        elif self.text.strip("\t").strip(" ").startswith("@endif"):
            self.type = 'endScr'
        elif self.text.startswith("$$$$"):
            self.type = 'special_add'
        elif re.match(r"f.BranchText", self.text.strip("\t").strip(" ")):
            self.type = 'opt'
            self.msg = re.match(r'f.BranchText\[[0-9]*?\]="(.*?)"', self.text).group(1)
        elif self.scr_flag:
            self.type = 'others'
        elif re.match(r"[\*;@]", self.text.strip("\t").strip(" ")):
            self.type = 'others'
        elif re.match(r'\[eval exp="f.speaker=\'', self.text):
            self.type = 'name'
            self.msg = re.match(r'\[eval exp="f.speaker=\'(.*?)\'', self.text).group(1)
        elif remove_nested_brackets(self.text.strip("\t").strip(" ").strip("_　")) == "":
            self.type = 'others'
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)
            

class KS_FILE():
    def __init__(self, path) -> None:
        self.path = path
        lines = open(path, "r", encoding="utf16").readlines()
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
            if l.type == "opt":
                print(l.msg)
                out.append_dict(remove_name=False)
                t = l.msg
                out.dic['name'] = ""
                out.dic['message'] = t
                out.dic['ori'] = t
                out.append_dict(remove_name=True)
            elif l.type == "name":
                out.append_dict(remove_name=False)
                t = l.msg
                out.dic['name'] = t
            elif l.type == "msg" or l.type == "special_msg1":
                t = l.msg.replace("\t", "").replace("\u3000", "").replace("[r]", "")
                out.add_text(t)
            else:
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
            elif l.type == "opt":
                trans_text_dic = trans_json.pop(0)
                ori = trans_text_dic['ori']
                trans = trans_text_dic['message']
                l.text = l.text.replace(ori, trans)
                
            elif l.type == "special_add":
                l.text = l.text[4:]
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            if l.text == "":
                continue
            f.write(l.text)
            f.write("\n")
