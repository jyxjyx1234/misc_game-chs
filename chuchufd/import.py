from Lib import *
from HanziReplacer import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = text.replace("♥","%0")
    return text

namedict = open_json("namedict.json")
out = open("text_trans.txt","w",encoding="utf16")
trans = open_json("trans.json")
translist = []
for i in trans:
    ori = i["ori"]
    message = i["message"]
    if ori[0] == "「" and message[0] != "「":
        message = "「" + message
    if ori[-1] == "」" and message[-1] != "」":
        message = message + "」"
    message = message.replace("「「","「").replace("」」","」")
    if "≪" in ori and "≪" not in message:
        if message[0] == "「":
            message = "「≪" + message[1:]
        else:
            message = "≪" + message
    if "≫" in ori and "≫" not in message:
        if message[-1] == "」":
            message = message[:-1] + "≫」"
        else:
            message = message + "≫"
    translist.append(message)

h = HanziReplacer()
h.ReadTransAndGetHanzidict([translist,namedict])
h.ChangeFont("wenquanyi.ttf","release\\chuchufd.ttf","chuchufd")

for l in f:
    if len(l)== 0 or l[0] != "●":
        out.write(l)
        continue
    text = l[10:-1]

    if text in namedict:
        name = namedict[text]
        name = replace_halfwidth_with_fullwidth(name)
        name = h.hanzitihuan(name)
        out.write( l[:10] + f"{name}\n")
    else:
        transtext = translist.pop(0)
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = textPreProcess(transtext)
        #transtext = replace_symbol_for_gbk(transtext)
        transtext = h.hanzitihuan(transtext)
        out.write( l[:10] + f"{transtext}\n")
out.close()

#os.system('cd release && py textprocess.py -i')
#os.system('py 加密.py')
#os.system('py pack.py')