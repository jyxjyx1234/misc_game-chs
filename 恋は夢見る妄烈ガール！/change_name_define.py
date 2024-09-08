from YSTB_FILE import *
from Lib import *
import os

ori_path = "name_define/"
out_path = "scr_trans/"
release_path = "Release/ysbin/"
os.makedirs(out_path,exist_ok=True)
os.makedirs(release_path,exist_ok=True)

try:
    key = open("Key.txt","r",encoding='utf8').readlines()
    encrypt = eval(key[0])
except:
    encrypt = 0x00000000

filelist = os.listdir(ori_path)

for filename in filelist:
    name_def_f = YSTB_NAMEDEF_FILE(path=ori_path+filename,encrypt=encrypt)
    name_def_f.changenamecharset()
    name_def_f.save_file(release_path+filename,encrypt=encrypt)