from Lib import *
import os
from MED_FILE import *

trans_data_folder = 'gt_output\\'
out_folder = 'md_scr_trans\\'
ori_folder = 'md_scr\\'
os.makedirs(out_folder, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(trans_data_folder, [namedict])
#h.ChangeFont("ALyCE_Humming.ttf", "release\\alyce20250117.ttf", "20250117")

for file in os.listdir(ori_folder):
    os.system(f"copy {os.path.join(ori_folder, file)} {out_folder} >nul")
    if file.startswith("_"):
        continue
    try:
        transdata = open_json(os.path.join(trans_data_folder, file + '.json'))
    except:
        continue
    ori_path=ori_folder+file
    f=DXLibScrFile(open_file_b(ori_path))
    f.trans(transdata, namedict, h)
    f.write_to_file(os.path.join(out_folder, file))

from unpack_and_repack import *
repack(out_folder, "release\\md_scr.med")