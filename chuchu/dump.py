from Lib import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = re.sub("<.*?>","",text)
    text = text.replace("%0","♥")
    return text
alltext = []
namedict = open_json("namedict.json")
out = OriJsonOutput()
for l in f:
    if len(l)== 0 or l[0] != "●":
        continue
    text = l[10:-1]
    alltext.append(text)
    if text[0] == "「":
        namedict[alltext[-2]] = alltext[-2]
    if text in namedict:
        out.dic["name"] = text
    else:
        out.dic["message"] = textPreProcess(text)
        out.append_dict(quchong=False)
out.append_dict(quchong=False)
#save_json("namedict.json",out.get_names())
out.save_json("oritext.json")
print(len(out.outlist))