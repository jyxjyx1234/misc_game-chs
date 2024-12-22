from Lib import *
import re, os
from HanziReplacer import *

oriPath = "PROSNR_D\\"
transPath = "gt_output\\"
outPath = "release\\PROSNR_D\\"
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
h.ChangeFont("wenquanyi.ttf.json", "release\\promiseFont.ttf", "promiseFont")

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
    save_file_b(outPath + f + ".txt", data.encode("utf8"))