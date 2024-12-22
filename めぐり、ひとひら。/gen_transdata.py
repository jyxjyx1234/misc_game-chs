from Lib import *
from HanziReplacer import *

trans = open_json("trans.json")

alltrans = []
for d in trans:
    alltrans.append(d["message"])
    alltrans.append(d["ori"])

h = HanziReplacer()
h.ReadTransAndGetHanzidict(alltrans)
h.ChangeFont("wenquanyi.ttf.json","release/meguri.ttf","meguri")

out = open("release/trans.dat", "w", encoding="utf16")

for d in trans:
    ori = d["ori"]
    t = h.hanzitihuan(d["message"])
    t = replace_halfwidth_with_fullwidth(t)
    out.write(f"{ori}:::{t}\n")