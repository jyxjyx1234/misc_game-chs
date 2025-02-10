from Lib import *
from HanziReplacer import *

def split_line(text, hangshu):
    line_width = len(text) // hangshu + bool(len(text) % hangshu)
    if line_width == 0:
        return [text]
    return [text[i:i+line_width] for i in range(0, len(text), line_width)]

transPath = "gt_output\\"
namedict = open_json("namedict.json")
transfiles = os.listdir(transPath)
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release\\data2.bin", enc = b"ALyCE")

for transfile in transfiles:
    transdata = open_json(os.path.join(transPath, transfile))
    new_transdata = []
    for t in transdata:
        try:
            transtexts = split_line(t["message"], t["line"])
        except:
            print(transfile)
            print(t)
        for i in range(t["line"]):
            dic = {}
            dic["message"] = h.hanzitihuan(replace_halfwidth_with_fullwidth(transtexts[i]))
            if "name" in t and i == 0:
                dic["name"] = h.hanzitihuan(namedict[t["name"]])
            new_transdata.append(dic)
    save_json("SEEN\\trans\\" + transfile, new_transdata)