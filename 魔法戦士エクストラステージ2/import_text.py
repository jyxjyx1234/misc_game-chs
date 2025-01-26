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
#h.ChangeFont("ALyCE_Humming.ttf", "release\\alyce20250118.ttf", "20250118")

for file in os.listdir(ori_folder):
    os.system(f"copy {os.path.join(ori_folder, file)} {out_folder} >nul")
    ori_path=ori_folder+file
    f=DXLibScrFile(open_file_b(ori_path))

    if file.startswith("_"):
        continue
    if file == "CHR_SEL_8":
        sp_trans = open("temp\\CHR_SEL_8.txt", "r", encoding="utf-8").readlines()
        for l in sp_trans:
            l = l.strip("\n")
            if l != "" and not l.startswith(" "):
                idx, text = l.split(":", 1)
                idx = int(idx, 16)
                text = h.hanzitihuan(text).encode("932")
                f.str_list[idx] = text
        f.data = f.data[:f.str_start] + b'\x00'.join(f.str_list)
        f.write_to_file(os.path.join(out_folder, file))

    try:
        transdata = open_json(os.path.join(trans_data_folder, file + '.json'))
    except:
        continue

    f.trans(transdata, namedict, h)
    f.write_to_file(os.path.join(out_folder, file))

from unpack_and_repack import *
repack(out_folder, "release\\md_scr.med")