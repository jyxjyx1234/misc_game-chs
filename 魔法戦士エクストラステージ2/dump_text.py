from Lib import *
import os
from MED_FILE import *

ori_folder='md_scr\\'
out_folder='gt_input\\'
os.makedirs(out_folder, exist_ok=True)
files=os.listdir(ori_folder)

namedict = {}
alltextcount = 0

for file in files:
    if file.startswith("_"):
        continue
    ori_path=ori_folder+file
    out_path=out_folder+file+'.json'
    f=DXLibScrFile(open_file_b(ori_path))
    #f.dump_str_list(f"temp\\{file}.txt")
    names, textcount = f.dump_str(out_path)
    namedict.update(names)
    alltextcount += textcount
print(f"alltextcount: {alltextcount}")
#save_json("namedict.json", namedict)