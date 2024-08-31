from YSTB_FILE import *
import os

ori_path = "ysbin_new/"
trans_path = "triline_text_trans/"
out_path = "scr_trans/"
os.makedirs(out_path,exist_ok=True)

try:
    key = open("Key.txt","r",encoding='utf8').readlines()
    encrypt = eval(key[0])
except:
    encrypt = 0x00000000

filelist = os.listdir(trans_path)

for filename in filelist:
    YSTB_f = YSTB_FILE_v2(path=ori_path + filename.replace(".tra.txt", ""),encrypt=encrypt)
    trans_f = open(trans_path + filename, "r", encoding="utf8")

    isopt = False
    for l in trans_f:
        if len(l) > 0 and l[0] == "[" and "@opt" not in l:
            command_offset = int(l[1:-2])
        elif len(l) > 0 and l[0] == "[" and "@opt"in l:
            command_offset = int(l[1:-6])
            isopt = True
        elif l[0:4] == "TR2=":
            transtext = l[4:-1]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            YSTB_f.append_trans(command_offset, transtext, isopt)
            isopt = False

    YSTB_f.save_file(out_path + filename.replace(".tra.txt", ""),encrypt=encrypt)
    #YSTB_f.save_file("temp\\" + filename.replace(".tra.txt", ""))

os.system("copy scr_trans\\* Release\\ysbin\\")