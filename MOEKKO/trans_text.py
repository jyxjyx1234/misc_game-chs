from ISF_FILE import *
from Lib import *
from HanziReplacer import *
import os

ori_path = "ISF_DUMP\\"
out_path = "ISF1_out\\"
os.makedirs(out_path, exist_ok=True)
trans_path = "gt_output\\"
ori_files = os.listdir(ori_path)

namedict = open_json("namedict.json")

#copyfontinfo("wenquanyi.ttf","msgothic_0.ttf","wenquanyi1.ttf")
transdict = {}
transdict[",?!~0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM _:()-―"] = "，？！～０１２３４５６７８９ｑｗｅｒｔｙｕｉｏｐａｓｄｆｇｈｊｋｌｚｘｃｖｂｎｍＱＷＥＲＴＹＵＩＯＰＡＳＤＦＧＨＪＫＬＺＸＣＶＢＮＭ\u3000＿：（）——"
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
h.gen_replace("release\\data2.bin", enc = b"ALyCE")
# testtrans = testTrans(h)
for file in ori_files:
    ori_file_path = ori_path + file
    trans_file_path = trans_path + file + ".json"
    try:
        trans = open_json(trans_file_path)
    except:
        trans = []
    for dic in trans:
        t = dic["message"]
        t = replace_halfwidth_with_fullwidth(t)
        t = h.hanzitihuan(t)
        t = processQuote(t)
        t = t.replace("...", "…").replace("..", "…").replace(".", "。").replace("♪", "　")
        t = re.sub(r"「“(.*)”」", r"「\1」", t)
        dic["message"] = t

    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    #f.trans(testtrans)
    f.trans(trans)
    try:
        #f.savefile(out_path.replace("ISF","ISF_") + file, isEnc=False)
        f.savefile(out_path + file, isEnc=False)
    except:
        print(file)
        exit()

textstart = 0x00480690

res = b""
offsets = []
for name in namedict:
    offsets.append(to_bytes(len(res) + textstart, 4))
    name = namedict[name]
    name = h.hanzitihuan(name)
    res += name.encode("932") + b"\x00"

with open("MOEKKO.EXE", "rb") as f:
    with open("release\\MOEKKO_CHS.EXE", "wb") as f2:
        f2.write(f.read())
        f2.seek(0x80650)
        f2.write(b"".join(offsets))
        f2.seek(0x80690)
        f2.write(res)

os.system("cd release && setdll /d:jyxjyx1234.dll MOEKKO_CHS.EXE && del MOEKKO_CHS.EXE~")

import ISF_PACK