from Lib import *
import re
import logging

logging.basicConfig(level=logging.INFO, format='', filename='log.txt', filemode='w')

def remove_nested_brackets(text, ifPrint = False, skip_unk_target = True):
    oriText = text
    known_target = ["[p]", "[r]", "[ r]", "[wp]", "[l]", "[heart]"]

    def process(match):
        if match.group(0) in known_target or re.match(r"\[ruby.*?\]", match.group(0)):
            return ""
        else:
            if skip_unk_target:
                if ifPrint:
                    logging.warning("Unknown target: "+oriText)
                return match.group(0)
            else:
                if ifPrint:
                    logging.warning("Unknown target: "+oriText)
                return ""

    while True:
        processed_text = re.sub(r"\[[^\[\]]*?\]", process, text)
        if processed_text == text:
            break
        text = processed_text
    return text

def remove_nested_brackets_(text):
    return remove_nested_brackets(text, True, True)

def changeTextOutBrackets(oritext:str, transtext:str):
    if "[" not in oritext:
        return transtext
    oritext = re.sub(r"\[ruby.*?\]", "", oritext)
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
    def __init__(self, text:str,idx,  ifScr:bool = False) -> None:
        self.text = text.strip("\t").strip(" ").strip("\t").strip(" ")
        self.type = ""
        self.msg = ""
        self.idx = idx
        self.scr_flag = ifScr
        self.is_line_end = False
        if "[p]" in self.text or "[wp]" in self.text or "[endnowait]" in self.text or "[_tb_end_text]" in self.text:
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
        elif re.match(r'\[chat_talk.*?name="(?P<name>.*?)".*?text="(?P<text>.*?)"', self.text):
            self.type = "chat_talk"
            match = re.match(r'\[chat_talk.*?name="(?P<name>.*?)".*?text="(?P<text>.*?)"', self.text)
            if not match:
                print(self.text)
                exit(0)
            self.name = match.group("name")
            self.msg = match.group("text")
        elif re.match(r'\[glink.*?text="(?P<text>[^&]*?)"', self.text):
            self.type = "option"
            match = re.match(r'\[glink.*?text="(?P<text>[^&]*?)"', self.text)
            self.msg = match.group("text")
        elif re.match(r"[※\*;@]", self.text.strip("\t").strip(" ")):
            self.type = 'others'
        elif self.text.startswith("#"):
            self.type = 'name'
        elif remove_nested_brackets(self.text, skip_unk_target=False) == "":
            self.type = 'others'
        elif self.text.startswith("_　"):
            self.type = 'special_msg1'
            self.text = self.text.strip("_　")
            # self.msg = remove_nested_brackets(self.text, ifPrint = True)
            self.msg = self.text
        else:
            self.type = "msg"
            # self.msg = remove_nested_brackets(self.text, ifPrint = True)
            self.msg = self.text
            

class KS_FILE():
    def __init__(self, path) -> None:
        self.path = path
        lines = open(path, "r", encoding="utf8").readlines()
        self.lines = []
        ifScr = False
        for idx, i in enumerate(lines):
            l = Line(i.strip("\n"), idx, ifScr)
            if l.type == "startScr":
                ifScr = True
            if l.type == "endScr":
                ifScr = False
            self.lines.append(l)

    
    def dump_text(self) -> OriJsonOutput:
        out = OriJsonOutput()
        out.preProcess = remove_nested_brackets_
        for l in self.lines:
            if l.type == "name":
                t = l.text.strip("#")
                if t != "":
                    out.add_name(t)
                    out.add_name_idx(l.idx)
            elif l.type == "msg" or l.type == "special_msg1":
                out.add_text(l.msg)
                out.add_text_idx(l.idx)
            elif l.type == "chat_talk":
                out.append_dict()
                out.add_name(l.name)
                out.add_name_idx(l.idx)
                out.add_text(l.msg)
                out.add_text_idx(l.idx)
                out.append_dict()
            elif l.type == "option":
                out.append_dict()
                out.add_text(l.msg)
                out.add_text_idx(l.idx)
                out.append_dict()
            else:
                out.append_dict()
            if l.is_line_end:
                out.append_dict()
        return out

    def trans(self,namedict, trans_json):
        hangshu = 0
        for l in self.lines:
            if l.type == "name":
                if l.text.strip("#").strip("\n") in namedict:
                    l.text = "#" + namedict[l.text.strip("#").strip("\n")]
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
            
            elif l.type == "special_add":
                l.text = l.text[4:]

            l.text = re.sub(r'(?<=\[voconfig sebuf="2" name=")(.*?)(?=")', lambda x: namedict[x.group(1)], l.text)
    
    def save(self, path):
        f = open(path,'w',encoding='utf8')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
