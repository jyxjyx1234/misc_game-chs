from Lib import *
from HanziReplacer import *

orifile = open("nscript.dat.dec", "r", encoding="sjis").readlines()
transpath = "gt_output"
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
h.gen_replace("release\\data2.bin", enc = b"ALyCE")

def check_halfwidth(string):
    for char in string:
        if len(char.encode("sjis")) != 2:
            return False
    return True

for transfile in os.listdir(transpath):
    if transfile == "options.json":
        transdatas = open_json(os.path.join(transpath, transfile))
        for transdata in transdatas:
            msgidx = transdata["pos"][0]
            optidx = transdata["opt_pos"][0]
            transtext = transdata["message"]
            transtext = h.hanzitihuan(transtext)
            transtext = replace_halfwidth_with_fullwidth(transtext)
            if not check_halfwidth(transtext):
                print(f"Error: {transtext}")
            ori_opts = orifile[msgidx][5:].split(",")
            ori_opts[optidx] = f"\"{transtext}\""
            orifile[msgidx] = "csel " + ",".join(ori_opts) + "\n"
        continue

    transdatas = open_json(os.path.join(transpath, transfile))
    for transdata in transdatas:
        msgidxs = transdata["pos"]
        if "name" in transdata:
            nameidx = msgidxs.pop(0)
            name = transdata["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            orifile[nameidx] = f"【{name}】\n"
        transtext = transdata["message"]
        transtext = h.hanzitihuan(transtext)
        transtext = replace_halfwidth_with_fullwidth(transtext)
        if not check_halfwidth(transtext):
            print(f"Error: {transtext}")
        for msgidx in msgidxs:
            orifile[msgidx] = ""
        orifile[msgidxs[0]] = transtext + "\\\n"
            
out = "".join(orifile).encode("sjis")
save_file_b("release\\data1.bin", out, enc = b"\x84")# 