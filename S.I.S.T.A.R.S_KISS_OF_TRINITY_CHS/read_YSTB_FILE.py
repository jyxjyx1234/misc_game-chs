#从YSTB文件中读取，生成三行文本
from YSTB_FILE import *
import os

ori_path = "scr/"
out_path = "triline_text_ori/"

filelist = os.listdir(ori_path)

for filename in filelist:
    if filename[-3:] != "ybn":
        continue
    ori_file_path = ori_path + filename
    out_file_path = out_path + filename + ".ori.txt"

    f = YSTB_FILE(path= ori_file_path)
    f.dump_text_to_file(out_file_path)
