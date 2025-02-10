from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ジア"], chs_name=["吉娅"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["オリヴィア カータレット"], chs_name=["奥利维亚 卡特莱特"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["イズ メルクリオ ライリー"], chs_name=["伊兹 墨丘利奥 莱利"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["ウィルド"], chs_name=["维尔德"], sex="woman", role="", other="", reverse=False)
a.additem(jp_name="オーブ", chs_name="宝珠", info="")
a.additem(jp_name="ニアス", chs_name="尼亚斯", info="")
a.additem(jp_name="ホブゴブリン", chs_name="霍布哥布林", info="")
a.additem(jp_name="オーク", chs_name="半兽人", info="")
a.additem(jp_name="マッド", chs_name="疯狂", info="")
a.additem(jp_name="エルフ", chs_name="精灵", info="")
a.additem(jp_name="トロール", chs_name="巨魔", info="")
a.additem(jp_name="魔法使い", chs_name="魔法使", info="")
a.additem(jp_name="マーラー", chs_name="玛拉", info="")
a.additem(jp_name="イビルサマナー", chs_name="邪恶召唤师", info="")
a.additem(jp_name="/HF",chs_name="/HF",info="表示人名的代码，原样保留")
a.additem(jp_name="/SF",chs_name="/SF",info="表示人名的代码，原样保留")
a.additem(jp_name="/HF_MAIN",chs_name="/HF_MAIN",info="表示人名的代码，原样保留")
a.additem(jp_name="/HF_SUB",chs_name="/HF_MAIN",info="表示人名的代码，原样保留")
a.additem(jp_name="/HL",chs_name="/HF_MAIN",info="表示人名的代码，原样保留")

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
