from SCR_FILE import *

oripath = "script"
outpath = "script_dump"
os.makedirs(outpath, exist_ok=True)

## 提取为json
for file in os.listdir(oripath):
    scr_file = SCR_FILE(os.path.join(oripath, file))
    scr_file.dump_tojson(os.path.join(outpath, file + ".json"))

## 提取为txt
# for file in os.listdir(oripath):
#     scr_file = SCR_FILE(os.path.join(oripath, file))
#     scr_file.dump_totxt(os.path.join(outpath, file + ".txt"))