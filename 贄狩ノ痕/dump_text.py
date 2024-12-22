from Lib import *


oripath = "decompiled\\"
files = os.listdir(oripath)
outpath = "gt_input\\"

os.makedirs(outpath, exist_ok=True)

def preprocess(text):
    text = text.replace("N0","博人").replace("N1","セシル").replace("N2","")
    return text

textcount = 0
namedict = {}
for f in files:
    out = OriJsonOutput()
    file = open(oripath + f, "r", encoding="932").read()
    patten = re.compile(r"strt\((?P<msg>.*?)\)|strn\((?P<name>.*?)\)|(?P<removename>%35000000)")
    matches = patten.finditer(file)
    for m in matches:
        if m.group("msg"):
            out.add_text(preprocess(m.group("msg")))
            out.append_dict()
        if m.group("name"):
            out.add_name(preprocess(m.group("name")))
        if m.group("removename"):
            out.remove_name()
    out.save_json(outpath + f.replace(".txt","") + ".json")
    textcount += out.textcount
    namedict.update(out.get_names())
print(textcount)
#save_json("namedict.json", namedict)

