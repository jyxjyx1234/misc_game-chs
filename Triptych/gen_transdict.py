from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["クラウス リーベルト"],chs_name=["克劳斯 利伯特"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["リドル"],chs_name=["利德尔"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["サワダスト"],chs_name=["索瓦达斯特"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["アンナ エインズワース"],chs_name=["安娜 艾因茨沃斯"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ウェンディ"],chs_name=["温蒂"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ユーリ"],chs_name=["尤里"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ベランルージュ"],chs_name=["贝兰露洁"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エルザ"],chs_name=["艾尔莎"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ノリーン"],chs_name=["诺琳"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アニエス"],chs_name=["阿涅斯"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["レノ"],chs_name=["雷诺"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ロイド"],chs_name=["洛伊德"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["エイプリル"],chs_name=["艾普利尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ミント"],chs_name=["薄荷"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["パンプキン"],chs_name=["南瓜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ネズミ"],chs_name=["老鼠"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ズーグ"],chs_name=["祖格"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["クラ"],chs_name=["库拉"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ソージキー"],chs_name=["索吉基"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["フラヴィ"],chs_name=["芙拉维"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["グレゴリー"],chs_name=["格雷戈里"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["シスター"],chs_name=["修女"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["バートリ"],chs_name=["巴特里"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ベル"],chs_name=["贝尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["サメ"],chs_name=["鲨鱼"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ザメ"],chs_name=["扎梅"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["オズワルド"],chs_name=["奥兹瓦尔德"],sex="",role="",other="",reverse=False)
a.additem(jp_name="エインズワース",chs_name="艾因茨沃斯",info="")
a.additem(jp_name="カトリクス",chs_name="卡特里克斯",info="")
a.additem(jp_name="ウェアラット",chs_name="狼人",info="")
a.additem(jp_name="コルベ",chs_name="科尔贝",info="")
a.additem(jp_name="カボチャ",chs_name="南瓜",info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
# n = open_json("temp.json")
# nd = open_json("namedict.json")

# replace1 = ["生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
# replace2 = ["学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

# for i in nd:
#     if i in n:
#         nd[i] = n[i]
#     for _ in range(len(replace1)):
#         nd[i] = nd[i].replace(replace1[_],replace2[_])
# save_json("namedict.json",nd)
