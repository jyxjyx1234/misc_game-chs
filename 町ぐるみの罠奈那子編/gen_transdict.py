from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["安住 源次郎"],chs_name=["安住 源次郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["安住 冬哉"],chs_name=["安住 冬哉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八屋 虎吉"],chs_name=["八屋 虎吉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["保坂 英治"],chs_name=["保坂 英治"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ジョン"],chs_name=["约翰"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["大黒"],chs_name=["大黑"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["村山 ケンジ"],chs_name=["村山 健二"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["村山 総一郎"],chs_name=["村山 总一郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["高城 慎二"],chs_name=["高城 慎二"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["矢田 遊馬"],chs_name=["矢田 游马"],sex="man",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["一之瀬 梓"],chs_name=["一之濑 梓"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["奈那子"],chs_name=["奈那子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高樹 敦子"],chs_name=["高树 敦子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高樹 ゆい"],chs_name=["高树 结衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["矢田 千佳子"],chs_name=["矢田 千佳子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["北川 巴"],chs_name=["北川 巴"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["仲根 美帆"],chs_name=["仲根 美帆"],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")

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
