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
                pass
                #print(match.group())
                #print(oriText)
            text = text.replace(match.group(), '')
        else:
            break
    #text = re.sub(r"[「　」 \t]" , "", text)
    return text

def changeTextOutBrackets(oritext:str, transtext:str):
    if "[" not in oritext:
        return transtext
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



name_patten = re.compile(r'(?<=\[setname. name=)(.*?)(?=\])')

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.read()
    
    def read(self):
        if self.text.strip("\t") == "@iscript":
            self.type = 'startScr'
        elif self.text.strip("\t") == "@endscript":
            self.type = 'endScr'
        elif self.scr_flag:
            self.type = 'others'
        elif re.match(r"[\*;@]", self.text.strip("\t")):
            self.type = 'others'
        elif re.match(r"\[seladd text=(.*?)storage=(.*?)\]", self.text.strip("\t")):
            self.type = 'selection'
        elif remove_nested_brackets(self.text.strip("\t")) == "":
            self.type = 'others'
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)

    def trans(self, namedict, transdict):
        if self.type == "selection":
            def _(m):
                ori = m.group(1)
                t = transdict[ori]
                return f"[seladd text={t}\tstorage={m.group(2)}]"
            self.text = re.sub(r"\[seladd text=(.*?)storage=(.*?)\]", _, self.text)
        else:
            if "】" not in self.text:
                trans = transdict[remove_nested_brackets(self.text)]
                self.text = changeTextOutBrackets(self.text, trans)
            else:
                n, t = self.text.split("】")
                try:
                    trans = transdict[remove_nested_brackets(t)]
                except:
                    print(self.text)
                    raise RuntimeError
                t = changeTextOutBrackets(t, trans)
                self.text = n + "】" + t
            

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
            if l.type == "msg":
                t = l.msg
                if "】" in t:
                    n, t = t.split("】")
                    n = n[1:]
                    out.dic['name'] = n
                out.dic['message'] = t
                out.append_dict()
            if l.type == 'selection':
                out.dic['message'] = re.match(r"\[seladd text=(.*?)storage=(.*?)\]", l.text).group(1)
                out.append_dict()
        return out

    def trans(self,namedict,transdict):
        i = 0
        while i < len(self.lines):
            l = self.lines[i]
            if l.type == "msg" or l.type == "selection":
                try:
                    l.trans(namedict, transdict)
                except:
                    print(self.path)
                    exit()
            i += 1
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
