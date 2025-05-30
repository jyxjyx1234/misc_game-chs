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
    # print(file)
    ori_path=ori_folder+file
    out_path=out_folder+file+'.json'
    f=DXLibScrFile(open_file_b(ori_path))
    names, textcount = f.dump_str(out_path)
    # f.dump_commands(f"temp\\{file}.txt")
    namedict.update(names)
    alltextcount += textcount
print(f"alltextcount: {alltextcount}")
save_json("namedict.json", namedict)