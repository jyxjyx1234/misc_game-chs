from Lib import *
import os, re
from HanziReplacer import *

ori_json_folder = "gt_input\\"
trans_folder = "gt_output\\"
ori_triline_folder = "triline_text_ori\\"
out_triline_folder = "triline_text_trans\\"
os.makedirs(out_triline_folder,exist_ok=True)

filelist = os.listdir(trans_folder)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
h.ChangeFont("wenquanyi.ttf", "release\\futaba3.5.ttf", "futaba3.5")
for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])
    
def preProcess(trans):
    trans = h.hanzitihuan(trans)
    return trans

for filename in filelist:
    filename = filename[:-5]
    ori_json = open_json(ori_json_folder + filename + ".json")
    trans_json = open_json(trans_folder + filename + ".json")
    ori_triline = open(ori_triline_folder + filename + ".ori.txt", 'r',encoding='utf8').readlines()
    out_triline = open(out_triline_folder + filename + ".tra.txt","w",encoding="utf8")

    p = 0
    for i in range(len(ori_triline)):
        if ori_triline[i][:4] != "TR1=":
            out_triline.write(ori_triline[i])
        else:
            ori_triline[i] = ori_triline[i][4:-1]
            if ori_triline[i] in namedict:
                out_triline.write("TR1=" + namedict[ori_triline[i]] + "\n")
                continue
            transdata = trans_json.pop(0)
            name = ""
            if "name" in transdata and ori_triline[i].startswith(transdata["name"]):
                name = transdata["name"]
                name = namedict[name]
            trans = transdata["message"]
            trans = preProcess(trans)
            out_triline.write("TR1=" + name + trans + "\n")
    out_triline.close()  
    
from YSTB_FILE import *
try:
    key = open("Key.txt","r",encoding='utf8').readlines()
    encrypt = eval(key[0])
except:
    encrypt = 0x00000000
ori_path = "name_def/"
release_path = "Release/ysbin/"
os.makedirs(release_path,exist_ok=True)
filelist = os.listdir(ori_path)
for filename in filelist:
    name_def_f = YSTB_NAMEDEF_FILE(path=ori_path+filename,encrypt=encrypt)
    name_def_f.changename(namedict = namedict)
    #name_def_f.save_file(out_path+filename,encrypt=encrypt)
    name_def_f.save_file(release_path+filename,encrypt=encrypt)