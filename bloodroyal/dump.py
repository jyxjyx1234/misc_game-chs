from Lib import *
import re, os

oriPath = "SNR_D\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)
files = listdir(oriPath)

msgPatten = re.compile(r"(?<=str\().*?(?=\))")
namedict = {}
allCount = 0

def preProcess(text):
    text = text.replace("ME", "ジュン")
    text = text.replace("\\N", "\n")
    return text

for f in files:
    out = OriJsonOutput()
    data = open_file_b(oriPath + f + ".txt")
    data = data.decode("utf8")
    texts = msgPatten.findall(data)
    for t in texts:
        msg = t
        if "】\\N" in msg:
            name, msg = msg.split("】\\N")
            out.dic["name"] = preProcess(name[1:])
        out.dic["message"] = preProcess(msg)
        out.append_dict()
    out.save_json(outPath + f + ".json")
    namedict.update(out.get_names())
    allCount += out.textcount
print(allCount)
#save_json("namedict.json", namedict)
