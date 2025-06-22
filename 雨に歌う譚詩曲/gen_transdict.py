from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["浅野 孝一"],chs_name=["浅野 孝一"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["伊藤 孝彦"],chs_name=["伊藤 孝彦"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["倉石 康夫"],chs_name=["仓石 康夫"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["宮田 進"],chs_name=["宫田 进"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["西沢 浩樹"],chs_name=["西泽 浩树"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["倉石 悠"],chs_name=["仓石 悠"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["小笠原 美佳"],chs_name=["小笠原 美佳"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["森永 みつき"],chs_name=["森永 美月"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["伊藤 千夏"],chs_name=["伊藤 千夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ちなっ"],chs_name=["千夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ちなっち"],chs_name=["千夏酱"],sex="woman",role="nickname of 千夏",other="",reverse=False)
a.addname(jp_name=["ちなっちゃん"],chs_name=["千夏酱"],sex="woman",role="nickname of 千夏",other="",reverse=False)
a.addname(jp_name=["野村 今日子"],chs_name=["野村 今日子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["春木 七菜子"],chs_name=["春木 七菜子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["木野原 雨"],chs_name=["木野原 雨"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["豊島 紀子"],chs_name=["丰岛 纪子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["木戸 遙香"],chs_name=["木户 遥香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["吉岡"],chs_name=["吉冈"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ミカン"],chs_name=["蜜柑"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["金沢"],chs_name=["金泽"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["後藤"],chs_name=["后藤"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["考一"],chs_name=["考一"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["高波"],chs_name=["高波"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="松野沢", chs_name="松野泽", info="")
a.additem(jp_name="さん", chs_name="先生/小姐", info="")

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
#     for _ in range(len(replace1)):
#         nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
