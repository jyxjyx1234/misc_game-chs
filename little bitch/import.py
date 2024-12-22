from Lib import *
from HanziReplacer import *

f = open("text.txt","r",encoding="utf8").readlines()

def textPreProcess(text):
    text = text.replace("♥","%0")
    return text

namedict = open_json("namedict.json")
out = open("release\\text.txt","w",encoding="utf8")
trans = open_json("transtext.json")
translist = []
for i in trans:
    translist.append(i["message"])

h = HanziReplacer()
h.ReadTransAndGetHanzidict([translist,namedict])
h.ChangeFont("wenquanyi.ttf.json","release\\release\\lbfont.ttf","lbfont")

for l in f:
    if len(l)== 0 or l[0] != "●":
        out.write(l)
        continue
    text = l[10:-1]

    if text[0] == "【":
        name = namedict[text[1:-1]]
        name = replace_halfwidth_with_fullwidth(name)
        name = h.hanzitihuan(name)
        out.write( l[:10] + f"【{name}】\n")
    else:
        transtext = translist.pop(0)
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = textPreProcess(transtext)
        #transtext = replace_symbol_for_gbk(transtext)
        transtext = h.hanzitihuan(transtext)
        out.write( l[:10] + f"{transtext}\n")
out.close()

os.system('cd release && py textprocess.py -i')
os.system('py 加密.py')
os.system('py pack.py')