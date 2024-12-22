from Lib import *
import re, os
from HanziReplacer import *

oriPath = "SNR_D\\"
transPath = "gt_output\\"
outPath = "release\\SNR_D\\"
os.makedirs(outPath, exist_ok = True)
files = listdir(oriPath)
namedict = open_json("namedict.json")

msgPatten = re.compile(r"(?<=str\().*?(?=\))")

h = HanziReplacer()
allText = []
for f in files:
    try:
        transData = open_json(transPath + f + ".json")
    except:
        continue
    for t in transData:
        allText.append(t["message"])
h.ReadTransAndGetHanzidict([allText, namedict])

res = ""
for i in range(len(h.source_chars)):
    res += h.source_chars[i]
    res += h.target_chars[i]
with open("replace.txt", "w", encoding="utf8") as f:
    f.write(res)
#h.ChangeFont("wenquanyi.ttf", "release\\BR1Font.ttf", "BR1Font")

def preProcess(text):
    text = text.replace("\n", "\\N")
    text = text.replace(",", "，").replace(")", "）").replace("(", "（").replace("?", "？").replace("!", "！")
    text = text.replace("「「", "「").replace("」」", "」").replace("「「", "「").replace("」」", "」")
    text = h.hanzitihuan(text)
    return text

for f in files:
    try:
        transData = open_json(transPath + f + ".json")
    except:
        continue

    data = open_file_b(oriPath + f + ".txt")
    data = data.decode("utf8")
    
    def processMatch(m:re.Match):
        ori = m.group()
        trans = transData.pop(0)
        msg = trans["message"]
        if "name" in trans:
            name = namedict[trans["name"]]
            msg = f"【{name}】\\N{msg}"
        msg = preProcess(msg)
        return msg
    data = msgPatten.sub(processMatch, data)
    if len(transData) != 0:
        raise RuntimeError
    save_file_b(outPath + f + ".txt", data.encode("utf8"))