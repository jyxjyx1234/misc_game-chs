from Lib import *
import re

oriFile = open("nscript.dat_dec", "r", encoding="sjis").readlines()
outPath = "gt_input\\"
outFile = outPath + "1.json"
selectionFlag = False
namedict = {}

def preProcess(text):
    text = text.replace("\u3000", "")
    text = text.replace("$g_fname", "保科")
    text = text.replace("$g_hero", "纯")
    return text

out = OriJsonOutput()
out.preProcess = preProcess

for line in oriFile:
    plainText = line.strip()

    if plainText == "":
        continue

    if re.match(";[0-9]*.txt", plainText):
        out.save_json(outFile)
        namedict.update(out.get_names())
        fileName = plainText[1:].replace(".txt", ".json")
        outFile = outPath + fileName
        out = OriJsonOutput()
        out.preProcess = preProcess

    if selectionFlag:
        print(plainText)
        match = re.match('"(.*?)", *', plainText)
        if not match:
            selectionFlag = False
        else:
            out.dic["message"] = match.group(1)
            out.append_dict()

    if plainText == "csel":
        selectionFlag = True

    if plainText[0] == ";" or plainText[0] == "*":
        continue

    if re.match("[a-zA-Z\"]", plainText):
        continue

    if plainText[0] == "【":
        out.dic["name"] = plainText[1:-1]
    
    else:
        out.dic["message"] = out.dic.get("message", "") + plainText.replace("\\", "")
        if plainText[-1] == "\\":
            out.append_dict()

out.save_json(outFile)
namedict.update(out.get_names())
#save_json("namedict.json", namedict)