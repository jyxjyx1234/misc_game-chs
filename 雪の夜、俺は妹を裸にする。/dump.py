from Lib import *
import logging

logging.basicConfig(level=logging.INFO, format='', filename="log.txt", filemode="w", encoding="utf-8")

outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

oriPath = "Scene\\"
info = StatusInfo()

namedict = open_json("namedict.json")

textcountdict = {}

def is_barker_close(text):
    buffer = []
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
    
def removeR(text):
    if text.endswith("R"):
        text = text[:-1]
    return text

def find_ruby_mode(lines):
    if len(lines) < 7:
        return False
    if lines[0] != "\n" and lines[0] == lines[2] and lines[1] == "\n" and lines[4:7] == ["\n", "\n", "\n"]:
        logging.info(f"Ruby mode detected: {lines[0]}")
        return True

for file in os.listdir(oriPath):
    if file.endswith(".txt"):
        oriFile = open(oriPath + file, "r", encoding="utf-16").readlines()
        out = OriJsonOutput()
        out.preProcess = removeR
        ruby_flag = 0
        for idx, line in enumerate(oriFile):
            if ruby_flag != 0:
                ruby_flag -= 1
                continue
            line = line.strip()
            if line in namedict:
                out.append_dict()
                out.add_name(line)
                continue
            if line == "":
                out.append_dict()
                continue
            if line in ["なし", "ピッ"]:
                out.append_dict()
                continue
            if re.search(r"[$_]", line):
                out.append_dict()
                continue
            if re.match(r"[・★0-9a-zA-Z,#/\[\]■:\\\|. \(\)←→Ａ-Ｚａ-ｚ　]*$", line):
                out.append_dict()
                continue

            if find_ruby_mode(oriFile[idx:idx + 7]):
                ruby_flag = 6
                out.add_text(oriFile[idx + 3].strip())
                out.dic["idx"] = out.dic.get("idx", []) + [idx + 3]
                out.dic["ruby"] = out.dic.get("ruby", []) + [idx + 0, idx + 2]
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

info.output()

sorted_textcount = dict(sorted(textcountdict.items(), key=lambda item: item[1], reverse=True))
sorted_textcount_ = {}
for key in sorted_textcount:
    if sorted_textcount[key] >= 2:
        sorted_textcount_[key] = sorted_textcount[key]
with open("textcount_sorted.json", "w", encoding="utf-8") as f:
    json.dump(sorted_textcount_, f, ensure_ascii=False, indent=4)