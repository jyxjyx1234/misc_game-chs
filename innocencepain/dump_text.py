from Lib import *


oripath = "event_d\\"
files = os.listdir(oripath)
outpath = "gt_input\\"

os.makedirs(outpath, exist_ok=True)

def preprocess(text):
    text = text.replace("N0","佐竹").replace("N1","茂樹")
    text = text.replace("/S","")
    text = text.replace("C0","")
    return text

textcount = 0
namedict = {}
for f in files:
    out = OriJsonOutput()
    file = open(oripath + f, "r", encoding="932").readlines()
    for l in file:
        try:
            l = "|".join(l.split("|")[1:])
        except:
            continue
        if not l.startswith("#41") and not l.startswith("#3d"):
            continue
        texttype = l[1:3]
        text = l[8:-2]
        if texttype == "41":#name
            if text == "/E":
                out.dic["name"] = ""
            text = preprocess(text)
            out.dic["name"] = text[:-2]
        if texttype == "3d":
            out.dic["message"] = preprocess(out.dic.get("message","") + text[:-2])
            out.dic["ori"] = out.dic["message"]
            out.append_dict(resetname=False)
    out.save_json(outpath + f.replace(".txt","") + ".json")
    textcount += out.textcount
    namedict.update(out.get_names())
print(textcount)
#save_json("namedict.json", namedict)

