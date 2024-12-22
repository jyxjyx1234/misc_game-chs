from Lib import *
import os, re

oriPath = "ori\\"
oriJsonPath = "gt_input\\"

oriFileNames = os.listdir(oriPath)

for FileName in oriFileNames:
    out = OriJsonOutput()
    oriData = open_file_b(oriPath + FileName)
    oriTxts = oriData.split(b"\x00")
    for textB in oriTxts:
        if len(textB) == 0:
            continue
        if textB[0:1] in [b"@", b"*", b"=", b"\\", b"!", b"{", b":", b"}"]:
            continue
        if re.match(rb"[\x30-\x39\x41-\x5a\x61-\x7a]", textB[0:1]):
            continue
        else:
            out.dic["message"] = textB.decode("sjis")
            out.append_dict()

    out.save_json(oriJsonPath + FileName.replace(".s", ".json"))
