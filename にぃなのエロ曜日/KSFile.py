from Lib import *
import re

push_log_patten = re.compile(r'(?<=\[pushlog text=")(.*?)(?="\])')
namedict = open_json("namedict.json")
def remove_nested_brackets(text, ifPrint = False):
    oriText = text
    while True:
        match = re.search(r'\[[^\[\]]*\]', text)
        if match:
            text = text.replace(match.group(), '')
        else:
            break
    return text

def changeTextOutBrackets(oritext:str, transtext:str):
    oritext = re.sub(r"\[ruby.*?\]", "", oritext)
    oritext = re.sub(r"\[r\]", "", oritext)
    transtext = list(transtext)
    out = ""
    bracketsBuffer = []
    lastIdx = 0
    textidx = 0
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
                    textidx += 1
                    if textidx == 20:
                        # out += "[r]"
                        textidx = 0
                    lastIdx = len(out)
    if len(transtext) > 0:
        t = ""
        for char in transtext:
            t += char
            textidx += 1
            if textidx == 20:
                # t += "[r]"
                textidx = 0
        out = out[:lastIdx] + t + out[lastIdx:]
    return out

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.is_line_end = False
        if "[改ページ]" in self.text or "[endnowait]" in self.text:
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
        elif remove_nested_brackets(self.text.strip("\t").strip(" ").strip("_　")) == "":
            self.type = 'others'
        elif self.text.startswith("_　"):
            self.type = 'special_msg1'
            self.text = self.text.strip("_　")
            self.msg = remove_nested_brackets(self.text.strip("_　"), ifPrint = True)
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)
            try:
                name = re.match(r'\[[^\[\]]*\]', self.text).group()[1:-1]
                if name in namedict:
                    self.name = name
            except:
                pass

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
            if l.type == "msg" or l.type == "special_msg1":
                t = l.msg
                out.add_text(t)
                try:
                    out.add_name(l.name)
                except:
                    pass    
            if l.is_line_end:
                out.append_dict(remove_name=False)
        return out

    def trans(self,namedict, trans_json):
        hangshu = 0
        for l in self.lines:
            if l.type == "msg" or l.type == "special_msg1":
                if l.type == "special_msg1":
                    sp = "_　"
                else:
                    sp = ""
                if hangshu > 0:
                    l.text = changeTextOutBrackets(l.text, sp)
                    hangshu -= 1
                else:
                    trans_text_dic = trans_json.pop(0)
                    hangshu = trans_text_dic['lines']
                    trans_text = trans_text_dic['message']
                    trans_text = trans_text.replace("\n", "")
                    trans_text = processQuote(trans_text)
                    l.text = sp + changeTextOutBrackets(l.text, trans_text)
                    if trans_text.startswith("直到昨天还和妈妈待在一起"):
                        print(l.text)
                        print()
                    hangshu -= 1
                
            elif re.search(push_log_patten, l.text):
                trans_text_dic = trans_json.pop(0)
                trans_text = trans_text_dic['message']
                l.text = push_log_patten.sub(lambda x : trans_text, l.text)
            
            elif l.type == "special_add":
                l.text = l.text[4:]
    
    def save(self, path):
        f = open(path,'w',encoding='utf8')
        for l in self.lines:
            # for i in namedict:
            #     ori = "[" + i + "]"
            #     trans = "[" + namedict[i] + "]"
            #     l.text = l.text.replace(ori, trans)
            f.write(l.text)
            f.write("\n")
