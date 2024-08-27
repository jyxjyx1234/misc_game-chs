from ISF_FILE import *
from Lib import *
import os

ori_path = "ISF\\"
out_path = "ori_jsons\\"
os.makedirs(out_path, exist_ok=True)
ori_files = os.listdir(ori_path)

namedict = open_json("namedict.json")

textcount = 0
for file in ori_files:
    ori_file_path = ori_path + file
    out_file_path = out_path + file + '.json'
    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    textcount += f.dumptext(out_file_path,namedict)

print(textcount)
    