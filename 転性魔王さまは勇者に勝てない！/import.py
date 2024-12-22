from Lib import *
from HanziReplacer import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = re.sub("<.*?>","",text)
    return text

namedict = open_json("namedict.json")
out = open("text_trans.txt","w",encoding="utf16")
trans = open_json("trans.json")
translist = {}
for i in trans:
    ori = i["ori"]
    ori = textPreProcess(ori)
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
    translist[ori] = message

h = HanziReplacer()
h.ReadTransAndGetHanzidict([translist,namedict])
h.ChangeFont("wenquanyi.ttf","release\\alyce20241209.ttf","alyce20241209")
not_trans = []
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
        try:
            transtext = translist[textPreProcess(text)]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            transtext = textPreProcess(transtext)
            transtext = h.hanzitihuan(transtext)
        except:
            transtext = text
            if not re.match("[a-zA-Z0-9%-]",text.strip()) and not re.search("[%]",text):
                not_trans.append({"message":text, "ori":text})
        out.write( l[:10] + f"{transtext}\n")
save_json("not_trans.json",not_trans)
out.close()

from textprocess import pack
pack()
import 加密
#os.system('cd release && py textprocess.py -i')
#os.system('py 加密.py')
#os.system('py pack.py')