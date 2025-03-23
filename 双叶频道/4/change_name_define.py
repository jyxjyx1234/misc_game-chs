from YSTB_FILE import *
from Lib import *
import os

ori_path = "name_def/"
out_path = "scr_trans/"
release_path = "Release/"
os.makedirs(out_path,exist_ok=True)
os.makedirs(release_path,exist_ok=True)

try:
    key = open("Key.txt","r",encoding='utf8').readlines()
    encrypt = eval(key[0])
except:
    encrypt = 0x00000000

filelist = os.listdir(ori_path)

try:
    namedict = open_json("namelist_trans.json")
    replace = open_json("replace.json")
    for name in namedict:
        res = ""
        for char in namedict[name]:
            res += replace.get(char,char)
        namedict[name] = res
except:
    namedict = None


for filename in filelist:
    name_def_f = YSTB_NAMEDEF_FILE(path=ori_path+filename,encrypt=encrypt)
    name_def_f.changename(namedict = namedict)
    #name_def_f.save_file(out_path+filename,encrypt=encrypt)
    if namedict:
        name_def_f.save_file(release_path+filename,encrypt=encrypt)