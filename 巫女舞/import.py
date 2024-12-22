from Lib import *
from HanziReplacer import *

oripath = "scx/"
transpath = "gt_output/"
outpath = "release/scx/"
os.makedirs(outpath, exist_ok=True)

files = os.listdir(oripath)

alltrans = []
for file in files:
    transfile = transpath + file.replace(".scx", ".json")
    try:
        trans = open_json(transfile)
    except:
        trans = []
    transdict = {}
    for dic in trans:
        transdict[dic["ori"]] = dic["message"]
    alltrans.append(transdict)
h = HanziReplacer()
h.ReadTransAndGetHanzidict(alltrans)
h.ChangeFont("wenquanyi.ttf.json", "release\wunvwu.ttf", "wunvwu")

def auto_splitline(text):
    lines = []
    linelength = 28
    for i in range(0, len(text), linelength):
        lines.append(text[i:i+linelength])
    return '\n'.join(lines)

def replace_yinhang(text:str):
    new_yinhao = ["『", "』"]
    i = 0
    while text.find("'") != -1:
        text = text.replace("'", new_yinhao[i % 2], 1)
        i += 1
    return text


for file in files:
    orifile = oripath + file
    transfile = transpath + file.replace(".scx", ".json")
    outfile = outpath + file
    try:
        trans = open_json(transfile)
    except:
        continue
    transdict = {}
    for dic in trans:
        transdict[dic["ori"]] = dic["message"]
    
    f = open(orifile, "r", encoding="932")
    out = open(outfile, "w", encoding="932")
    msgbuffer = ""
    for l in f.readlines():
        l_ = l.replace("\t", "")
        if l_ == "\n" or l_ == "":
            out.write(l)
        elif l_.startswith(";") or l_.startswith("#") or l_.startswith(":") or re.match(r"[a-zA-Z]", l_):
            out.write(l)
        elif re.match(R"/Mes\t\[[0-9]*\]\t'(.*?)'", l_):
            out.write(l)
        elif l_ == "/MesWait\n":
            trans = transdict.get(msgbuffer, msgbuffer)
            trans = h.hanzitihuan(trans)
            trans = replace_yinhang(trans)
            trans = auto_splitline(trans)
            out.write(trans + "\n/MesWait\n")
            msgbuffer = ""
        elif l_.startswith("/"):
            out.write(l)
        else:
            msgbuffer += l.replace("\n", "").replace("$name", "元樹")
    out.close()
