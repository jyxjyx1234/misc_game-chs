from Lib import *
from YSB_FILE import *
from HanziReplacer import *

transPath = "gt_output\\"
outPath = "release\\GameData\\script.chs"
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release\\data2.bin", enc = b"ALyCE")

oriScr = YSB_FILE("script.ysb")

num = 30
for i in range(1, num + 1):
    transdata = open_json(transPath + f"script_{i}.json")
    for trans in transdata:
        transtext = trans["message"]
        transtext = h.hanzitihuan(transtext)
        offset = trans["text_offset"]
        oriScr.append_trans(offset, transtext)
        if "name" in trans:
            transtext = trans["name"]
            transtext = namedict[transtext]
            transtext = h.hanzitihuan(transtext)
            offset = trans["name_offset"]
            oriScr.append_trans(offset, transtext)
oriScr.save(outPath)
