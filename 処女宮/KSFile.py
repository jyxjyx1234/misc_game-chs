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
    # out = out + "[r]"
    return out

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.is_line_end = False
        self.read()
    
    def read(self):
        if "[z]" in self.text or "@chrw" in self.text or "[pf]" in self.text:
            self.is_line_end = True
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
        elif re.search(r"@links target=", self.text.strip("\t").strip(" ")):
            self.type = 'opt'
            self.msg = re.search(r'@links target=.*?text="(.*?)"', self.text).group(1)
        elif self.scr_flag:
            self.type = 'others'
        elif re.search(r'@voice file=', self.text):
            self.type = 'nameMsg'
            self.msg = re.search(r'@voice file="(.*?)" name="(.*?)" text="(.*?)"', self.text).group(3)
            self.name = re.search(r'@voice file="(.*?)" name="(.*?)" text="(.*?)"', self.text).group(2)
        elif re.match(r"[\*:;@]", self.text.strip("\t").strip(" ")):
            self.type = 'others'
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
                out.append_dict()
                t = l.msg
                for opt in t.split(","):
                    out.add_text(opt)
                    out.append_dict()
            elif l.type == "nameMsg":
                out.append_dict()
                out.add_text(l.msg)
                out.add_name(l.name)
                out.append_dict()
            elif l.type == "msg" or l.type == "special_msg1":
                t = l.msg.replace("\t", "").replace("\u3000", "").replace("[r]", "")
                out.add_text(t)
            if l.is_line_end:
                out.append_dict()
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
                    hangshu = trans_text_dic['line']
                    trans_text = trans_text_dic['message']
                    trans_text = trans_text.replace("\n", "\\n")
                    trans_text = processQuote(trans_text)
                    trans_text = changeTextOutBrackets(l.text, trans_text)
                    trans_text = trans_text.replace("\\n", "[r]")
                    l.text = trans_text.replace("‘", "「").replace("’", "」").replace("“", "『").replace("”", "』")
                    hangshu -= 1
            elif l.type == "nameMsg":
                trans_text_dic = trans_json.pop(0)
                trans_text = trans_text_dic['message']
                trans_text = trans_text.replace("\n", "\\n")
                l.text = re.sub(r'(@voice file=".*?" name=".*?" text=")(.*?)"', lambda x: x.group(1) + trans_text + '"', l.text)
            elif l.type == "opt":
                opts = re.search(r'@links target=.*?text="(.*?)"', l.text).group(1)
                opts = opts.split(",")
                new_opts = []
                for opt in opts:
                    trans_text_dic = trans_json.pop(0)
                    trans_text = trans_text_dic['message']
                    new_opts.append(trans_text)
                new_opts = ",".join(new_opts)
                l.text = re.sub(r'(@links target=.*?text=")(.*?)"', lambda x: x.group(1) + new_opts + '"', l.text)
            elif l.type == "special_add":
                l.text = l.text[4:]
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            if l.text == "":
                continue
            f.write(l.text)
            f.write("\n")
