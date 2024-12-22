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
            if match.group() != "[ftb]" and match.group() != "[fta]" and match.group() != "[fth]" and match.group() != "[ftc]" and ifPrint:
                print(oriText)
            text = text.replace(match.group(), '')
        else:
            break
    if text not in oriText:
        print(oriText)
    return text

name_patten = re.compile(r'(?<=\[OnName num=)(.*?)(?=\])|(?<=\[OnName. num=)(.*?)(?=\])')
name_dict = open_json("namedict.json")

class Line():
    def __init__(self, text:str, ifScr:bool = False) -> None:
        self.text = text
        self.type = ""
        self.msg = ""
        self.scr_flag = ifScr
        self.read()
    
    def read(self):
        if self.text == "":
            self.type = 'others'
        elif self.text == "[cpg1]" or self.text == "[cpg]" or self.text == "[resetstyle]":
            self.type = 'msg_end'
        elif self.text[-1] == ";":
            self.type = 'others'
        elif re.match(r"[\*;@]", self.text):
            self.type = 'others'
        elif name_patten.search(self.text):
            self.type = "name"
            self.msg = name_dict[name_patten.search(self.text).group()]
            #self.msg = name_patten.search(self.text).group()
        elif remove_nested_brackets(self.text) == "":
            self.type = 'others'
        elif re.match("ーーーーーーーーーーーーーーーー", self.text):
            self.type = 'others'
        elif re.match("～～～～～～～～～～～～～～～～～～～～～～～", self.text):
            self.type = 'others'
        else:
            self.type = "msg"
            self.msg = remove_nested_brackets(self.text, ifPrint = True)

    def trans(self, namedict, transdict):
        if self.type == "msg":
            plain_text = remove_nested_brackets(self.text)
            if plain_text not in self.text:
                print(self.text)
                raise RuntimeError
            
            trans_text = transdict[plain_text]
            while trans_text != "" and (trans_text[0] == " " or trans_text[0] == "　"):
                trans_text = trans_text[1:]
            self.text = self.text.replace(plain_text, trans_text)


class KS_FILE():
    def __init__(self, path) -> None:
        data = open_file_b(path)
        lines = data.split(b'\x0d\x00\x0a\x00')
        self.lines = []
        ifScr = False
        for i in lines:
            l = Line(i.decode("utf16"), ifScr)
            self.lines.append(l)
            if l.type == "scr_start":
                ifScr = True
            if l.type == "scr_end":
                ifScr = False

    
    def dump_text(self) -> OriJsonOutput:
        out = OriJsonOutput()
        for l in self.lines:
            if l.type == "name":
                out.append_dict()
                out.dic['name'] = l.msg
            if l.type == "msg":
                out.dic['message'] = out.dic.get("message", "") + l.msg
                out.dic['hangshu'] = out.dic.get("hangshu", 0) + 1
            if l.type == "msg_end":
                out.append_dict()
        return out

    def trans(self,namedict,transdict):
        i = 0
        while i < len(self.lines):
            l = self.lines[i]
            if l.type == "msg":
                try:
                    l.trans(namedict, transdict)
                except KeyError:
                    oritext = l.text.replace("[r]","")
                    plain_text = remove_nested_brackets(oritext)
                    print(l.text)
                    while plain_text not in transdict:
                        l2 = self.lines[i + 1]
                        i += 1
                        while l2.type != "msg":
                            l2 = self.lines[i + 1]
                            i += 1
                        oritext = oritext + l2.text.replace("[r]","")
                        plain_text = remove_nested_brackets(oritext)
                        if plain_text not in oritext:
                            raise RuntimeError
                    transtext = oritext.replace(plain_text, transdict[plain_text])
                    l.text = transtext
                    l2.text = ""
            i += 1
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
