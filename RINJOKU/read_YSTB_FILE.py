#从YSTB文件中读取，生成三行文本
from YSTB_FILE import *
import os

ori_path = "ysbin_new/"
out_path = "triline_text_ori/"
os.makedirs(out_path,exist_ok=True)

try:
    key = open("Key.txt","r",encoding='utf8').readlines()
    encrypt = eval(key[0])
except:
    encrypt = 0x00000000


filelist = os.listdir(ori_path)

for filename in filelist:
    if filename[-3:] != "ybn":
        continue
    ori_file_path = ori_path + filename
    out_file_path = out_path + filename + ".ori.txt"

    f = YSTB_FILE_v2(path= ori_file_path, encrypt=encrypt)
    f.dump_text_to_file(out_file_path)