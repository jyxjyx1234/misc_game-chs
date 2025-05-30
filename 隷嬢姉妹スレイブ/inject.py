from Lib import *

orifile = open("scenario_nametransed.ks", "r", encoding="utf-16").readlines()
transpath = "gt_output"
namedict = open_json("namedict.json")

for transfile in os.listdir(transpath):
    transdatas = open_json(os.path.join(transpath, transfile))
    for transdata in transdatas:
        msgidx = transdata["pos"][0]
        transtext = transdata["message"].replace("...", "…")
        transtext = replace_halfwidth_with_fullwidth(transtext)
        orifile[msgidx] = transtext + "\n"
out = "".join(orifile).encode("utf-16")
save_file_b("release\\patch\\scenario.ks", out)