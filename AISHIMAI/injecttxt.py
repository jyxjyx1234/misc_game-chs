from Lib import *
from dumpjson import *
from HanziReplacer import *

oriPath = "DEC"
transPath = "gt_output"
outPath = "DEC_trans"
os.makedirs(outPath, exist_ok=True)
os.makedirs("release", exist_ok=True)

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])


files = get_all_files_in_folder(transPath)
alltext = []
for file in files:
    if file[-4:] == 'json':
        transdata = open_json(file)
        for i in transdata:
            if "isopt" in i:
                text = i["message"]
                text = replace_halfwidth_with_fullwidth(text)
                text = processQuote(text)
                alltext.append(text)
alltext.append("最初から始める途中シーンを見エディグゲム終了すキャセル女達幸絵由美留智子周りまじと考え話会探の校内家に帰疲れたやっぱもうひ押しだ！優く言てみ先入編ッせ学へで行呼ぶ金庫開けない捜今…どよ北沢自分誘思悩む気持ち抑聞積極的動奥ろ責指舌手愛撫腰き俺上身ゃ本格体洗バク触さわがＨそ泡つ音楽事務所オヤジ性聴ＣＧ観")
all_opt_char = []
for text in alltext:
    for char in text:
        if char not in all_opt_char:
            all_opt_char.append(char)
all_opt_char = all_opt_char[:150]  # Limit to 150 characters

with open("oricharlist.txt", "r", encoding="932") as f:
    oricharlist = f.read()

outTBLs = [
        ["release\\DATA\\FONT.TBL", None],
        ["release\\CPK\\FONT.TBL", None],
           ["release\\DATA\\SELECT.TBL",all_opt_char],
           ]
outFNTs = [
    {
        "outpath": "release\\DATA\\FONT",
        "font_size": 28,
        "FNT_MAX": 0xff,
        "SP_CHAR_RANGE" : None
    },
    {
        "outpath": "release\\CPK\\FONT",
        "font_size": 28,
        "FNT_MAX": 0xff,
        "SP_CHAR_RANGE" : None
    },
    {
        "outpath": "release\\DATA\\SELECT1",
        "font_size": 47,
        "FNT_MAX": 0x10,
        "SP_CHAR_RANGE": all_opt_char
    },
    {
        "outpath": "release\\DATA\\SELECT2",
        "font_size": 49,
        "FNT_MAX": 0xff,
        "SP_CHAR_RANGE": all_opt_char
    },
    {
        "outpath": "release\\DATA\\SELECT3",
        "font_size": 47,
        "FNT_MAX": 0xff,
        "SP_CHAR_RANGE": all_opt_char
    },
]
h.gen_FNT(oricharlist, outTBLs, outFNTs)


def encode_trans_text(text):
    text = h.hanzitihuan(text)
    text = replace_halfwidth_with_fullwidth(text)
    text = processQuote(text)
    out = []
    out.append(f'''#1-TEXT
[
    "{text}"
]
''')
    return out

for filename in os.listdir(oriPath):
    try:
        transdatas = open_json(os.path.join(transPath, filename.replace(".txt", ".json")))
    except:
        continue
    with open(os.path.join(oriPath, filename), "r", encoding="932") as f:
        lines = f.readlines()
    mescontents = split_mestxt(lines)
    for transdata in transdatas:
        idxs = transdata["idx"]
        msg = transdata["message"]
        transtext = encode_trans_text(msg)
        mescontents[idxs[0]].content_text = "".join(transtext)
        for idx in idxs[1:]:
            mescontents[idx].content_text = ""
        if "name" in transdata:
            nameidx = transdata["name_idx"][0]
            name = transdata["name"]
            name = namedict[name]
            name = h.hanzitihuan(name) + "\u3000"
            mescontents[nameidx].content_text = f"#1-TEXT\n[\n    \"{name}\"\n]\n"
    with open(os.path.join(outPath, filename), "w", encoding="932") as f:
        for mescontent in mescontents:
            f.write(mescontent.content_text)
    