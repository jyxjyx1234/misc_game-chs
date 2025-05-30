from Lib import *
from HanziReplacer import *

f = open("text.txt","r",encoding="utf16").readlines()

def textPreProcess(text):
    text = re.sub("<.*?>","",text)
    text = text.replace("%0","♥")
    return text

namedict = open_json("namedict.json")
out = open("text_trans.txt","w",encoding="utf16")

applist = [
    {
        "message": "跳　　过",
        "ori": "スキップ"
    },
    {
        "message": "自　动",
        "ori": "オート"
    },
    {
        "message": "历史",
        "ori": "履歴"
    },
    {
        "message": "　　系统菜单　　",
        "ori": "システムメニュー"
    },
    {
        "message": "　　隐藏窗口　　",
        "ori": "ウィンドウの消去"
    },
    {
        "message": "保　存　菜　单",
        "ori": "セーブメニュー"
    },
    {
        "message": "退　出　场　景",
        "ori": "シーンを抜ける"
    },
    {
        "message": "读　取　菜　单",
        "ori": "ロードメニュー"
    },
    {
        "message": "快　速　保　存",
        "ori": "クイックセーブ"
    },
    {
        "message": "快　速　读　取",
        "ori": "クイックロード"
    },
    {
        "message": "返回上一个选项　",
        "ori": "前の選択肢に戻る"
    },
    {
        "message": "跳至下一个选项　",
        "ori": "次の選択肢に進む"
    },
    {
        "message": "固　定　菜　单",
        "ori": "メニューの固定"
    },
    {
        "message": "调整窗口<br>透明度　　　　",
        "ori": "ウィンドウの濃さを調整"
    },
    {
        "message": "调整窗口<br>透明度　　　　",
        "ori": "ウィンドウの濃さを調整"
    },
    {
        "message": "语音播放",
        "ori": "音声再生"
    },
    {
        "message": "　　收藏语音登记　　",
        "ori": "お気に入りボイス登録"
    },
    {
        "message": "　声音设置　",
        "ori": "サウンド設定"
    },
    {
        "message": "回到　标题",
        "ori": "タイトルへ"
    }]


trans = open_json("gt_output\\oritext.json") + applist
translist = {}
for i in trans:
    ori = i["ori"]
    ori = textPreProcess(ori)
    message = i["message"]
    if ori[0] == "「" and message[0] != "「":
        message = "「" + message
    if ori[-1] == "」" and message[-1] != "」":
        message = message + "」"
    message = message.replace("「「","「").replace("」」","」")
    if re.match("[a-zA-Z0-9%-]",ori.strip()) or re.search("[%]",ori):
        print(ori)
        continue
    translist[ori] = message

h = HanziReplacer()
h.ReadTransAndGetHanzidict([translist,namedict])
h.gen_replace("release\\data\\data2.bin", enc=b"ALyCE")


# for i in applist:
#     if len(i["ori"].encode("932")) != len(h.hanzitihuan(i["message"]).encode("932")):
#         raise ValueError(f"Length mismatch: {i['ori']} vs {i['message']}")

not_trans = []
for l in f:
    if len(l)== 0 or l[0] != "●":
        out.write(l)
        continue
    text = l[10:-1]

    if text in namedict:
        name = namedict[text]
        # name = replace_halfwidth_with_fullwidth(name)
        name = h.hanzitihuan(name)
        out.write( l[:10] + f"{name}\n")
    else:
        try:
            transtext = translist[textPreProcess(text)]
            # transtext = replace_halfwidth_with_fullwidth(transtext)
            transtext = transtext.replace("♥","%0")
            transtext = h.hanzitihuan(transtext)
        except:
            out.write(l)
            if not re.match("[a-zA-Z0-9%-]",text.strip()) and not re.search("[%]",text):
                not_trans.append({"message":text, "ori":text})
            continue
        out.write( l[:10] + f"{transtext}\n")
save_json("not_trans.json",not_trans)
out.close()

from textprocess import pack
pack()
import 加密
# os.system('cd release && py textprocess.py -i')
# os.system('py 加密.py')
# os.system('py pack.py')