from Lib import *
import re

def processSlet(text:str) -> list[str]:
    return re.findall(r"(?<=sel[0-9]=')(.*?)(?=')", text)

def splitmsg(text:str) -> str:
    maxLineLen = 24
    res = []
    while len(text) > maxLineLen:
        res.append(text[:24])
        text = text[24:]
    res.append(text)
    return "".join(res)

def remove_nested_brackets(text, ifPrint = False):
    oriText = text
    while True:
        match = re.search(r'\[[^\[\]]*\]', text)
        if match:
            if match.group() != "[r]" and ifPrint:
                print(match.group())
                print(oriText)
            text = text.replace(match.group(), '')
        else:
            break
    text = re.sub(r"[「　」 \t]" , "", text)
    return text

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.read()
    
    def read(self):
        if self.text == '[cm2]':
            self.type = 'msg_start'
        elif self.text == '[p2]':
            self.type = 'msg_end'
        elif self.text == "@iscript":
            self.type = 'scr_start'
        elif self.text == "@endscript":
            self.type = 'scr_end'
        elif self.scr_flag:
            self.type = "scr"
        elif re.match(r"[\*;@]", self.text):
            self.type = 'others'
        elif re.match("(.*【)(.*)(】.*)", self.text):
            self.type = "name"
            self.msg = re.match("(.*【)(.*)(】.*)", self.text).group(2)
            if "[" in self.msg:
                self.type = "others"
                self.msg = ""
        elif re.match("(.*)(\[selecting.*?\])(.*)", self.text):
            self.type = "opt"
            self.msg = re.match("(.*)(\[selecting.*?\])(.*)", self.text).group(2)
        elif remove_nested_brackets(self.text) == "":
            self.type = 'others'
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)

    def trans(self, namedict, transdict, msgflag = ""):
        match self.type:
            case "name":
                self.text = re.sub("(.*【)(.*)(】.*)", lambda x: x.group(1) + namedict[x.group(2)] + x.group(3), self.text)
            case "opt":
                opts = processSlet(self.msg)
                for opt in opts:
                    self.text = self.text.replace(opt, transdict[opt])
            case "msg":
                self.text = msgflag


class KS_FILE():
    def __init__(self, path) -> None:
        data = open_file_b(path)
        lines = data.split(b'\x0d\x0a')
        self.lines = []
        ifScr = False
        for i in lines:
            l = Line(i.decode("cp932"), ifScr)
            self.lines.append(l)
            if l.type == "scr_start":
                ifScr = True
            if l.type == "scr_end":
                ifScr = False

    
    def dump_text(self) -> OriJsonOutput:
        out = OriJsonOutput()
        ifScr = False
        for l in self.lines:
            if l.type in ["others", "scr", "scr_start", "scr_end"]:
                continue
            if l.type == 'msg_end' or l.type == "msg_start":
                out.append_dict()
            if l.type == "name":
                out.dic['name'] = l.msg
            if l.type == "msg":
                out.dic['message'] = out.dic.get("message", "") + l.msg
            if l.type == "opt":
                out.append_dict()
                opts = processSlet(l.msg)
                for opt in opts:
                    out.dic['message'] = opt
                    out.append_dict()
        return out

    def trans(self,namedict,transdict):
        i = 0
        msg_cache = ""
        msg_posi = 0
        while i < len(self.lines):
            l = self.lines[i]
            if l.type == "opt" or l.type == "name":
                l.trans(namedict, transdict)
            if l.type == "msg":
                if msg_cache == "":
                    msg_posi = i
                else:
                    l.trans(namedict, transdict)
                msg_cache += remove_nested_brackets(l.msg)
            if (l.type == 'msg_end' or l.type == "opt") and msg_cache != "":
                trans = splitmsg(transdict[msg_cache])
                self.lines[msg_posi].trans(namedict, transdict, trans)
                msg_cache = ""
            i += 1
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
