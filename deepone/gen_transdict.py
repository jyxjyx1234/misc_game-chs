from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["斎野 尚哉"],chs_name=["斋野 尚哉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ナオヤ"],chs_name=["尚哉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["文示宮 篤"],chs_name=["文示宫 笃"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["文示宮 実篤"],chs_name=["文示宫 实笃"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["宮下 衆逸"],chs_name=["宫下 众逸"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ロザリア ロンバルド"],chs_name=["罗萨莉亚 伦巴多"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ガルム"],chs_name=["加尔姆"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八戸 莢貴"],chs_name=["八户 荚贵"],sex="man",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ジェントル アニー"],chs_name=["Ｇｅｎｔｌｅ 安妮"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["佑姫 カスミ"],chs_name=["佑姬 霞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["斎野 一花"],chs_name=["斋野 一花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["いちか"],chs_name=["一花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["比奈森 沙耶"],chs_name=["比奈森 沙耶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["フルララネル"],chs_name=["芙露拉拉奈尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ナンシー"],chs_name=["南希"],sex="cat",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="堕とし仔", chs_name="堕落之子", info="")
a.additem(jp_name="アドミニストレーター", chs_name="守护者", info="")
a.additem(jp_name="デュプレイト", chs_name="净化", info="")
a.additem(jp_name="ロンドン", chs_name="伦敦", info="")
a.additem(jp_name="オベロン", chs_name="奥伯龙", info="")
a.additem(jp_name="ケルト", chs_name="凯尔特", info="")
a.additem(jp_name="ミニオン", chs_name="从者", info="")
a.additem(jp_name="不死穿ち", chs_name="不死穿透", info="")
a.additem(jp_name="リーダー", chs_name="宗主", info="")
a.additem(jp_name="宗主", chs_name="宗主", info="")
a.additem(jp_name="リンカー", chs_name="连接者", info="")
a.additem(jp_name="繋げる者", chs_name="连接者", info="")
a.additem(jp_name="露払い", chs_name="先驱者", info="")
a.additem(jp_name="オペレーター", chs_name="管制者", info="")
a.additem(jp_name="ドラクルパイラー", chs_name="不死穿透", info="")
a.additem(jp_name="アガートラーム", chs_name="白银之手", info="")
a.additem(jp_name="銀色の御手", chs_name="白银之手", info="")
a.additem(jp_name="パンフォギア", chs_name="暴食公晚餐目录", info="")
a.additem(jp_name="悪食公晩餐目録", chs_name="暴食公晚餐目录", info="")
a.additem(jp_name="", chs_name="", info="never conver full width char to half width, or you will fail in the evaluation")

# Load rubyset.json and add useful specialized terms
rubyset_dict = open_json("rubyset.json")
specialized_terms = [
    ("シャドウ", "阴影"),
    ("エルダー", "长老"),
    ("グリモア", "魔导书"),
    ("アーティファクト", "神器"),
    ("サンクチュアリ", "圣域"),
    ("ネクロマンサー", "死灵法师"),
    ("アンデッド", "不死族"),
    ("レリック", "圣物"),
    ("オラクル", "神谕"),
    ("カタストロフ", "大灾变"),
    ("アポカリプス", "启示录"),
    ("ダークネス", "黑暗"),
    ("イモータル", "不朽者"),
    ("ディバイン", "神圣"),
    ("フォービドゥン", "禁忌"),
    ("エターナル", "永恒"),
    ("アビス", "深渊"),
    ("ヴォイド", "虚无"),
    ("カオス", "混沌"),
    ("デスティニー", "命运")
]

for jp_term, chs_term in specialized_terms:
    if jp_term in rubyset_dict:
        a.additem(jp_name=jp_term, chs_name=chs_term)

tip_dict = open_json("tip_dict.json")
for i in tip_dict:
    a.additem(jp_name=i, chs_name=tip_dict[i], info="@!(.*)@!@ are for special formatting, don't delete or add them")
    i_ = re.sub(r"@!([^@]*)@!@", r"\1", i)
    _ = re.sub(r"@!([^@]*)@!@", r"\1", tip_dict[i])
    a.additem(jp_name=i_, chs_name=_, info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")

#'''
# #修改人名json
# a.savejson("temp.json")
# n = open_json("temp.json")
# nd = open_json("namedict.json")
# n["女の子"] = "女孩"
# for i in nd:
#     if i in n:
#         nd[i] = n[i]
    
#     nd[i] = nd[i].replace("員", "员").replace("お隣さん", "邻居").replace("ヲタさん", "御宅族")
# save_json("namedict.json",nd)
# #'''