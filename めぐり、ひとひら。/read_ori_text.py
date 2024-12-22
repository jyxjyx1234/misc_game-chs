from Lib import *

out = OriJsonOutput()

def pre_process(text):
    text = re.sub(r"\\rr.*?\\rt", "", text)
    text = re.sub(r"\\[a-z]*", "", text)
    text = text.replace("\n", "")
    text = text.replace("\r", "")
    return text

def read_text(path):
    with open(path, 'r', encoding="utf16") as f:
        text = f.readlines()
    for line in text:
        line_p = pre_process(line)
        if line_p == "":
            continue
        out.dic["message"] = line_p
        out.dic["ori"] = line.replace("\n", "")
        out.append_dict(quchong = True)

read_text("output1.txt")
read_text("output2.txt")
read_text("output3.txt")
out.save_json("ori.json")
