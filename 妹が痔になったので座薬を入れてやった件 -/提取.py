import json
import re
import os

ori_path = "scenario\\"
out_path = "ori_jsons\\"
os.makedirs(out_path,exist_ok=True)
filelist = os.listdir(ori_path)


class Line(object):
    def __init__(self, text: str) -> None:
        self.ori_text = text.strip().replace("\n", "")
        self.type, self.content = self.type_check()

    def type_check(self):
        if self.ori_text == "":
            return "n", ""
        if self.ori_text[0] == "【":
            name = self.ori_text[1:-1]
            return "name", name
        if (
            re.sub("\[[^\[]*\]", "", self.ori_text) == ""
            or re.match('[a-zA-Z/{/}//;@/*]',self.ori_text[0])
        ):
            return "ctl", self.ori_text
        
        p_text = re.sub('\[(.*?),.*?\]', lambda x: x.group(1), self.ori_text)
        p_text = re.sub("\[([^\[]*?)'.*?\]", lambda x: x.group(1), p_text)
        p_text = re.sub('\[[^\["]*\]', "", p_text)
        return "message", p_text

    def trans(self, transdict):
        if self.type == "message":
            transtext = transdict[self.content]
            if "indent" in self.ori_text:
                transtext = transtext[0] + "[indent]" + transtext[1:] + "[endindent]"
            return transtext + "\n"

        else:
            return self.ori_text + "\n"


for file in filelist:
    ori_file = open(ori_path + file, "r", encoding="shiftjis")

    output = []
    dic = {}

    for l in ori_file:
        l = Line(l)

        if l.type == "name":
            dic["name"] = l.content
        if l.type == "message":
            dic["message"] = l.content
            output.append(dic)
            dic = {}

    with open(out_path + file.replace("ks", "json"), "w", encoding="utf8") as f:
        json.dump(output, f, ensure_ascii=False, indent=4)
