from Lib import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = re.sub("<.*?>","",text)
    text = text.replace("%0","♥")
    return text

out = OriJsonOutput()
for l in f:
    if len(l)== 0 or l[0] != "●":
        continue
    text = l[10:-1]

    if text[0] == "【":
        out.dic["name"] = text[1:-1]
    else:
        out.append_dict(quchong=False)
        out.dic["message"] = textPreProcess(text)
out.append_dict(quchong=False)
save_json("namedict.json",out.get_names())
out.save_json("oritext.json")