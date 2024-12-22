from ISF_FILE import *
from Lib import *
from HanziReplacer import *
import os

ori_path = "ISF\\"
out_path = "release\\ISF1\\"
os.makedirs(out_path, exist_ok=True)
trans_path = "transl_cache\\"
ori_files = os.listdir(ori_path)

namedict = open_json("namedict.json")

#copyfontinfo("wenquanyi.ttf","msgothic_0.ttf","wenquanyi1.ttf")
transdict = {}
for file in ori_files:
    trans_file_path = trans_path + file + ".json"
    trans = open_json(trans_file_path)
    for dic in trans:
        transdict[dic['pre_jp']] = dic['post_zh_preview']

h = HanziReplacer()
h.ReadTransAndGetHanzidict([transdict])
h.ChangeFont("wenquanyi.ttf.json","release/pianofont.ttf","pianofont")

for file in ori_files:
    ori_file_path = ori_path + file
    trans_file_path = trans_path + file + ".json"
    trans = open_json(trans_file_path)
    td = {}
    for dic in trans:
        td[dic['pre_jp']] = h.hanzitihuan(replace_halfwidth_with_fullwidth(dic['post_zh_preview'])).replace("」」","」").replace("「「","「").replace("」」","」").replace("「「","「")

    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    f.trans(td)
    try:
        f.savefile(out_path + file)
    except:
        print(file)
        exit()