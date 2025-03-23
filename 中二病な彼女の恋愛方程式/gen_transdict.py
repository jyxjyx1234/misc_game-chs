from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["神原 竜一"],chs_name=["神原 龙一"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["柳 爽史"],chs_name=["柳 爽史"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["小日向 葵"],chs_name=["小日向 葵"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["星乃 すぴか"],chs_name=["星乃 真珠星"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["すぴかちゃん"],chs_name=["真珠星酱"],sex="woman",role="nick name",other="",reverse=False)
a.addname(jp_name=["花ヶ咲 もも"],chs_name=["花之咲 桃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ももちゃん"],chs_name=["桃酱"],sex="woman",role="nick name",other="",reverse=False)
a.addname(jp_name=["ももか"],chs_name=["桃香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["黒峰 澪音"],chs_name=["黑峰 澪音"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["綾瀬 千聖"],chs_name=["绫濑 千圣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["音無 あかね"],chs_name=["音无 茜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["小酒部 聖水"],chs_name=["小酒部 圣水"],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="蒼心",chs_name="苍心",info="")
a.additem(jp_name="伏木荘",chs_name="伏木庄",info="")
a.additem(jp_name="ダーク・リベンジャー",chs_name="漆黑复仇者",info="")
a.additem(jp_name="ゴッド・ドラゴン",chs_name="翼神龙",info="")
a.additem(jp_name="まじかるっ！聖☆エンジェル",chs_name="魔法少女！圣☆天使",info="")
a.additem(jp_name="まじエン",chs_name="魔天",info="short for まじかるっ！聖☆エンジェル")
a.additem(jp_name="エターナル・オブリー",chs_name="永恒之誓",info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")

replace1 = ["生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
replace2 = ["学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

for i in nd:
    if i in n:
        nd[i] = n[i]
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
