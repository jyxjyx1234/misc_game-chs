from Lib import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = re.sub("<.*?>","",text)
    text = text.replace("%0","♥")
    return text
nameflag = False
namedict = open_json("namedict.json")
#namedict = {}#初筛
out = OriJsonOutput()
for l in f:
    if len(l)== 0 or l[0] != "●":
        continue
    text = l[10:-1]
    # if nameflag:
    #     out.dic["name"] = text
    #     nameflag = False
    #     continue
    # if text[0] == "「":
    #     nameflag = True
    if text in namedict:
        out.dic["name"] = text
        out.append_dict(quchong=False)
    else:
        if re.match("[a-zA-Z0-9%-]",text.strip()) or re.search("[%]",text):
            
            out.dic = {}
            continue
        out.append_dict(quchong=False)
        out.dic["message"] = textPreProcess(text)
        out.dic["ori"] = out.dic["message"]
        
out.append_dict(quchong=False)
#save_json("namedict.json",out.get_names())#初筛
out.save_json("oritext.json")
print(len(out.outlist))