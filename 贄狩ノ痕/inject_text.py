from Lib import *
from HanziReplacer import *

namedict = open_json("namedict.json")
oripath = "DECOMPILED\\"
transpath = "gt_output\\"
outpath = "TRANSED\\"
os.makedirs(outpath, exist_ok=True)
files = os.listdir(oripath)

alltext = []
for f in files:
    transf = transpath + f + ".json"
    try:
        transf = open_json(transf)
    except:
        transf = []
    for d in transf:
        trans = d["message"]
        trans = replace_halfwidth_with_fullwidth(trans)
        alltext.append(trans)
h = HanziReplacer()
h.ReadTransAndGetHanzidict([alltext, namedict, "＿中文测试"])
h.ChangeFont("WenQuanYi.ttf", "release/niekari.ttf","niekari")

class test_trans:
    def __init__(self, file) -> None:
        self.idx = 0
        self.file = file
    def pop(self, i):
        self.idx += 1
        return {"message" : f"中文测试{self.file}:{self.idx}"}
    def __getitem__(self, key):
        self.idx += 1
        return  f"中文测试{self.file}:{self.idx}"
    
msgpatten = re.compile(r"(?<=strt\()(.*?)(?=\))")
namepatten = re.compile(r"(?<=strn\()(.*?)(?=\))")
for f in files:
    transf = transpath + f + ".json"
    try:
        transf = open_json(transf)
    except:
        transf = test_trans(f)
    orif = oripath + f
    orif = open(orif, "r", encoding="932").read()
    outf = outpath + f
    outf = open(outf, "w", encoding="932")

    def replacemsg(match):
        trans = transf.pop(0)["message"]
        trans = replace_halfwidth_with_fullwidth(trans)
        trans = h.hanzitihuan(trans)
        return trans
    def replacename(match):
        oriname = match.group(1)
        transname = namedict[oriname]
        transname = h.hanzitihuan(transname)
        return transname
    orif = msgpatten.sub(replacemsg, orif)
    orif = namepatten.sub(replacename, orif)
    outf.write(orif)
    outf.close()


