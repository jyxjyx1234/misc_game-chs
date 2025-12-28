from Lib import *
import logging

logging.basicConfig(level=logging.INFO, format='', filename="log.txt", filemode="w", encoding="utf-8")

outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

oriPath = "Scene\\"
info = StatusInfo()

namedict = open_json("namelist_.json")
try:
    rubydict = open_json("rubylist.json")
except:
    rubydict = {}
try:
    nottransdict = open_json("nottranslist.json")
except:
    nottransdict = {}

textcountdict = {}

def is_barker_close(text):
    buffer = []
    text = text.replace("(", "（").replace(")", "）")
    dic = {
        "「": "」",
        "（": "）",
        "『": "』",
        "【": "】",
        "《": "》",
        "「": "」",
        "[": "]",
    }
    for char in text:
        if char in dic:
            buffer.append(dic[char])
        elif char in dic.values():
            if not buffer or char != buffer.pop():
                return False
    return not buffer


def check_barket(text):
    if text.startswith("「") and not text.endswith("」"):
        return False
    if text.startswith("（") and not text.endswith("）"):
        return False
    if text.startswith("『") and not text.endswith("』"):
        return False
    return True
    
class OriJsonOutput(OriJsonOutput):
    def append_dict(self):
        if "message" not in self.dic or not self.savefilter(self.dic):
            self.dic = {}
            return
        if self.dic['message'] == "":
            self.dic = {}
            return
        if "name" in self.dic:
            if self.dic["name"] == "":
                del self.dic["name"]

        if "name" not in self.dic and "【" in self.dic["message"] and "】" in self.dic["message"]:
            self.dic["name"] = self.dic["message"].split("】")[0] + "】"
            self.dic["message"] = self.dic["message"].split("】")[1]
            self.dic["isBarker"] = 1
        self.outlist.append(self.dic)
        self.textcount += len(self.dic['message'])
        self.messageset.add(self.dic['ori'])
        self.dic = {}
    
    def get_names(self):
        namedict = {}
        for i in self.outlist:
            if 'name' in i:
                n = i['name']
                if "】" in n:
                    n = n.split("】")[0]
                    n = n.split("【")[-1]
                # if "／" not in n:
                namedict[n] = n
        return namedict
    
    def get_last_msg(self):
        try:
            msg = self.outlist[-1]["message"]
        except:
            return ""
        return msg
    
    def recover_append(self):
        if self.dic != {}:
            raise ValueError("dic is not empty")
        if len(self.outlist) == 0:
            return
        self.dic = self.outlist[-1]
        self.outlist.pop()
        self.textcount -= len(self.dic['message'])

for file in os.listdir(oriPath):
    if file.endswith(".txt"):
        if file in ["25._01config.ss.txt", "20._00startseen.ss.txt", "52._fkds.ss.txt"]:
            continue
        oriFile = open(oriPath + file, "r", encoding="utf-16").readlines()
        out = OriJsonOutput()
        # out.preProcess = removeR
        ruby_flag = 0
        for idx, line in enumerate(oriFile):
            if ruby_flag != 0:
                ruby_flag -= 1
                continue
            line = line.strip("\n")
            if line in namedict:
                out.append_dict()
                out.add_name(line)
                continue
            if line == "":
                out.append_dict()
                continue
            if re.search(r"[$_]", line):
                out.append_dict()
                continue
            if re.match(r"[★0-9a-zA-Z,#/\[\]■:\\\|. \(\)←→Ａ-Ｚａ-ｚ【】]*$", line):
                out.append_dict()
                continue
            if line in nottransdict:
                out.append_dict()
                continue
            if re.search(r"[0-9]$|^[0-9]", line):
                # print(line)
                continue

            if line in rubydict:
                ruby_flag = 1
                if not out.get_last_msg().endswith("。") and not out.get_last_msg().endswith("」") and not out.get_last_msg().endswith("？") and not out.get_last_msg().endswith("！") and not out.get_last_msg().endswith("）") and not out.dic:
                    out.recover_append()
                out.add_text(oriFile[idx + 1].strip())
                out.dic["idx"] = out.dic.get("idx", []) + [idx + 1]
                out.dic["ruby"] = out.dic.get("ruby", []) + [idx]
                if is_barker_close(out.dic["message"]):
                    out.append_dict()
                continue

            textcountdict[line] = textcountdict.get(line, 0) + 1
            out.add_text(line)
            out.dic["idx"] = out.dic.get("idx", []) + [idx]

            # if "name" in out.dic:
            #     if check_barket(out.dic["message"]):
            #         out.append_dict()
            # else:
            #     out.append_dict()
            
            if is_barker_close(out.dic["message"]):
                out.append_dict()

            

        out.save_json(outPath + file.replace(".txt", ".json"))
        info.update(out)

info.output(isSaveName=1)

sorted_textcount = dict(sorted(textcountdict.items(), key=lambda item: item[1], reverse=True))
sorted_textcount_ = {}
for key in sorted_textcount:
    if sorted_textcount[key] >= 2:
        sorted_textcount_[key] = sorted_textcount[key]
with open("textcount_sorted.json", "w", encoding="utf-8") as f:
    json.dump(sorted_textcount_, f, ensure_ascii=False, indent=4)