from YSTB_FILE import *
import os

ori_path = "scr/"
trans_path = "triline_text_trans/"
out_path = "scr_trans/"

filelist = os.listdir(trans_path)

for filename in filelist:
    YSTB_f = YSTB_FILE(path=ori_path + filename.replace(".tra.txt", ""))
    trans_f = open(trans_path + filename, "r", encoding="utf8")

    for l in trans_f:
        if len(l) > 0 and l[0] == "[":
            command_offset = int(l[1:-2])
        elif l[0:4] == "TR2=":
            transtext = l[4:-1]

            YSTB_f.append_trans(command_offset, transtext)

    YSTB_f.save_file(out_path + filename.replace(".tra.txt", ""),encrypt=b"\xD3\x6F\xAC\x96")

os.system("copy scr_trans\\* Release\\ysbin\\")