from Lib import *
import re
import os
from HanziReplacer import *

transPath = "gt_output\\"
files = ['1.json', '9.json', '12.json', '13.json', '14.json', '15.json', '16.json', '17.json']

transList = []
orimsg = []
print(files)
namedict = open_json("namedict.json")

for fname in files:
    f = open_json(transPath + fname)
    for d in f:
        transList.append(replace_halfwidth_with_fullwidth(d["message"]))

    orif = open_json("gt_input\\" + fname)
    for d in f:
        orimsg.append(d["message"])

h = HanziReplacer()
h.ReadTransAndGetHanzidict([namedict, transList, orimsg])
h.ChangeFont("SourceHanSansHWHC-Regular.otf.json", "release\\GekkouFont.ttf", "GekkouFont")

transList = [h.hanzitihuan(i) for i in transList]
for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])

oriFile = open("nscript.dat_dec", "r", encoding="sjis").readlines()
outFile = []
selectionFlag = False

for line in oriFile:
    plainText = line.strip()

    if plainText == "":
        outFile.append(line)
        continue

    if selectionFlag:
        match = re.match('"(.*?)", *', plainText)
        if not match:
            selectionFlag = False
        else:
            trans = re.sub(r'(?<=")(.*?)(?=", ?\*)', transList.pop(0),plainText)
            outFile.append(line.replace(plainText, trans, 1))
            continue

    if plainText == "csel":
        selectionFlag = True
        outFile.append(line)
        continue

    if plainText[0] == ";" or plainText[0] == "*":
        outFile.append(line)
        continue

    if re.match("[a-zA-Z\"]", plainText):
        outFile.append(line)
        continue

    if plainText[0] == "【":
        oriName = plainText[1:-1]
        transName = namedict[oriName]
        outFile.append(line.replace(oriName, transName, 1))
        continue
    
    else:
        if plainText[-1] == "\\":
            trans = transList.pop(0) + "\\"
            outFile.append(line.replace(plainText, trans, 1))
            continue

print(transList)

out = open("release/nscript.dat_d", "w", encoding = "932", newline = "\n")
for i in outFile:
    out.write(i)
out.close()

#'''
out = open_file_b("release/nscript.dat_d")
out = list(out)
out = [i^0x84 for i in out]
save_file_b("release/nscript.dat", bytes(out))
#'''