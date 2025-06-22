from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["玖々乱 夢人"],chs_name=["玖玖乱 梦人"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["彼方 志郎"],chs_name=["彼方 志郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["尾塚 賢堂"],chs_name=["尾塚 贤堂"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["宮足 基"],chs_name=["宫足 基"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["彼方 明日"],chs_name=["彼方 明日"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ティリク"],chs_name=["蒂里克"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["千澤 美鶴"],chs_name=["千泽 美鹤"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藍原 法子"],chs_name=["蓝原 法子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["瑠亞"],chs_name=["琉亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["風美"],chs_name=["风美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["彼方 佳子"],chs_name=["彼方 佳子"],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="外道風水", chs_name="外道风水", info="")
a.additem(jp_name="夢創干渉", chs_name="梦创干涉", info="")
a.additem(jp_name="Ｄｉｍａｃｒｅａｔｉｏｎ", chs_name="创世终焉", info="")
a.additem(jp_name="Ｅｄｅｌｗｅｉｓｓ", chs_name="雪绒花", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
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
