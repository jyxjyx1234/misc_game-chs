from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["御神楽 時人"],chs_name=["御神乐 时人"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["鹿瀬 巴"],chs_name=["鹿濑 巴"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["久御山 滋乃"],chs_name=["久御山 滋乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["桧垣 千鶴"],chs_name=["桧垣 千鹤"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["はランドルフ 丸山"],chs_name=["兰多夫 丸山"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["久御山 静斗"],chs_name=["久御山 静斗"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["森松"],chs_name=["森松"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["川場"],chs_name=["川场"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["倉元 あかね"],chs_name=["仓元 茜"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ごんぞ"],chs_name=["权藏"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["美作 すえ"],chs_name=["美作 末"],sex="",role="",other="",reverse=False)



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
    if "・" in i:
        names = nd[i].split("・")
        names = [n.get(name, name) for name in names]
        nd[i] = "・".join(names)
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
