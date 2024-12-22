from ISF_FILE import *
from Lib import *
from HanziReplacer import *
import os

ori_path = "ISF\\"
out_path = "release\\ISF\\"
os.makedirs(out_path, exist_ok=True)
trans_path = "gt_output\\"
ori_files = os.listdir(ori_path)

namedict = open_json("namedict.json")

#copyfontinfo("wenquanyi.ttf","msgothic_0.ttf","wenquanyi1.ttf")
transdict = {}
for file in ori_files:
    trans_file_path = trans_path + file + ".json"
    try:
        trans = open_json(trans_file_path)
    except:
        trans = {}
    for dic in trans:
        transdict[dic['ori']] = dic['message']

h = HanziReplacer()
h.ReadTransAndGetHanzidict([transdict])
#h.ChangeFont("wenquanyi.ttf.json","release/ROSYU1FONT.ttf","ROSYU1FONT")

for file in ori_files:
    ori_file_path = ori_path + file
    trans_file_path = trans_path + file + ".json"
    try:
        trans = open_json(trans_file_path)
    except:
        trans = {}
    td = {}
    for dic in trans:
        td[dic['ori']] = h.hanzitihuan(replace_halfwidth_with_fullwidth(dic['message'])).replace("」」","」").replace("「「","「").replace("」」","」").replace("「「","「")

    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    f.trans(td)
    try:
        f.savefile(out_path + file, isEnc=False)
    except:
        print(file)
        exit()

#os.system("arc_pack sm2mpx10 release\ISF release\CHS")