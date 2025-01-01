from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["真田 宗一郎"],chs_name=["真田 宗一郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["小日向 ひなた"],chs_name=["小日向 日向"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["比良坂 ユウリ"],chs_name=["比良坂 由理"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["出水 かなめ"],chs_name=["出水 叶爱"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["榛名 いぶき"],chs_name=["榛名 伊吹"],sex="woman",role="teacher",other="",reverse=False)
a.addname(jp_name=["久賀 まこと"],chs_name=["久贺 真子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["真島 サキ"],chs_name=["真岛 咲"],sex="woman",role="teacher",other="",reverse=False)
a.additem(jp_name="らぶらぼ",chs_name="LOVE LAB",info="")
a.additem(jp_name="□リコン",chs_name="萝莉控",info="")


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
