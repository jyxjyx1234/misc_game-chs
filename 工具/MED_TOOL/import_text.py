from Lib import *
import os
from MED_FILE import *

trans_data_folder = 'gt_output\\'
out_folder = 'md_scr_trans\\'
ori_folder = 'md_scr\\'
os.makedirs(out_folder, exist_ok=True)
namedict = open_json("namedict.json")

for file in os.listdir(ori_folder):
    os.system(f"copy {os.path.join(ori_folder, file)} {out_folder} >nul")
    if file.startswith("_"):
        continue
    try:
        transdata = open_json(os.path.join(trans_data_folder, file + '.json'))
        if len(transdata) == 0:
            continue
    except:
        continue
    ori_path=ori_folder+file
    f=DXLibScrFile(open_file_b(ori_path))
    f.trans(transdata, namedict)
    f.write_to_file(os.path.join(out_folder, file))
