from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ヴィクトリア・ルミアウラ"],chs_name=["维多利亚・卢米奥拉"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["マリー・ルミアウラ"],chs_name=["玛丽・卢米奥拉"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ダイアナ・ルミアウラ"],chs_name=["黛安娜・卢米奥拉"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["グレース・ルミアウラ"],chs_name=["格蕾丝・卢米奥拉"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["クリスティーナ・ルミアウラ"],chs_name=["克里斯蒂娜・卢米奥拉"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["倉敷 光"],chs_name=["仓敷 光"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["パーヴェル・ルミアウラ"],chs_name=["帕维尔・卢米奥拉"],sex="",role="",other="",reverse=True)
a.addname(jp_name=["アエラ"],chs_name=["艾拉"],sex="",role="",other="",reverse=True)
a.addname(jp_name=["ロイル"],chs_name=["罗伊尔"],sex="",role="",other="",reverse=True)
a.addname(jp_name=["アルブレヒト"],chs_name=["阿尔布雷希特"],sex="",role="",other="",reverse=True)
a.addname(jp_name=["メイ"],chs_name=["梅伊"],sex="",role="",other="",reverse=True)
a.additem(jp_name="ハイシュベント",chs_name="海修本特",info="")

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
