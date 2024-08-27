from Lib import *
import re

open_file_b("snr\\01.snr").decode('UTF16')


comment_patten = re.compile(r"^//.*")
code_patten = re.compile(r".*;$")
control_patten = re.compile(r"^\[.*\]$")
opt_patten = re.compile(r'選択肢登録\((.*),"(.*)","(.*)"\);')
name_and_msg_patten = re.compile(r"^(【.*】)?(\(.*\))?(.*)$")


class Line():
    def __init__(self, text:str) -> None:
        self.text = text
        self.type = ""
        self.name = ""
        self.msg = ""
        self.read()
    
    def read(self):
        if opt_patten.search(self.text):
            self.type = "opt"
            match = opt_patten.match(self.text)
            self.msg = match.group(2)

        elif comment_patten.match(self.text) or code_patten.match(self.text) or control_patten.match(self.text) or self.text == "":
            self.type = "others"

        elif name_and_msg_patten.match(self.text):
            self.type = "msg"
            match = name_and_msg_patten.match(self.text)
            if match.group(1):
                self.name = match.group(1)[1:-1]
            self.msg = match.group(3).replace("　","")

    def trans(self, namedict, transdict):
        if self.type == "opt":
            def process_opt(match):
                trans = transdict[self.msg]
                res = f'選択肢登録({match.group(1)},"{match.group(2)}","{trans}");'
                return res
            self.text = opt_patten.sub(process_opt, self.text)

        if self.type == "msg":
            def process_msg(match):
                trans = transdict[self.msg]
                res = ""
                if match.group(1):
                    name = self.name
                    namet = namedict.get(name,name)
                    res += f'【{namet}】'
                if match.group(2):
                    res += match.group(2)
                if not match.group(1) and not match.group(2):
                    res += "　"
                res += trans
                return res
            self.text = name_and_msg_patten.sub(process_msg, self.text)

class SNR_FILE():
    def __init__(self, path) -> None:
        data = open_file_b(path)
        lines = data.split(b'\x0d\x00\x0a\x00')
        self.lines = []
        for i in lines:
            try:
                self.lines.append(Line(i.decode("utf16")))
            except:
                print(path)
                exit()
    
    def dump_text(self) -> OriJsonOutput:
        out = OriJsonOutput()
        for l in self.lines:
            if l.type == "others":
                continue
            if l.name != "":
                out.dic['name'] = l.name
            out.dic['message'] = l.msg
            out.append_dict()
        return out

    def trans(self,namedict,transdict):
        for l in self.lines:
            l.trans(namedict, transdict)
    
    def save(self, path):
        f = open(path,'w',encoding='utf16')
        for l in self.lines:
            f.write(l.text)
            f.write("\n")
