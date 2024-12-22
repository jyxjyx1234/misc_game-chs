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
h.ChangeFont("wenquanyi.ttf","release/ROSYU2FONT.ttf","ROSYU2FONT")
testtrans = testTrans(h)
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
        if len(td[dic['ori']]) > 50:
            print(dic['message'])

    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    #f.trans(testtrans)
    f.trans(td)
    try:
        #f.savefile(out_path.replace("ISF","ISF_") + file, isEnc=False)
        f.savefile(out_path + file, isEnc=True)
    except:
        print(file)
        exit()

namef = open_file_b("start.isf")
namef = namef.replace("タケシ".encode("sjis"), h.hanzitihuan("\u3000武\u3000").encode("sjis"))
namef = namef.replace("ゆかり".encode("sjis"), h.hanzitihuan("由香里").encode("sjis"))
namef = namef.replace("アキオ".encode("sjis"), h.hanzitihuan("昭\u3000夫").encode("sjis"))
save_file_b("ISF_NOTCHANGE\start.isf",namef)

not_change_isfs = os.listdir("ISF_NOTCHANGE")
for f in not_change_isfs:
    EncryptSaveFile(open_file_b("ISF_NOTCHANGE/" + f), "release/isf/" + f)