from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["出村 正"],chs_name=["出村 正"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["海老沼 康平"],chs_name=["海老沼 康平"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["漆畑 剛史"],chs_name=["漆畑 刚史"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["柚ノ木 未緒"],chs_name=["柚之木 未绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ゆのき みお"],chs_name=["柚之木 未绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鮎川 凛香"],chs_name=["鲇川 凛香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["あゆかわ りんか"],chs_name=["鲇川 凛香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["生駒 結衣"],chs_name=["生驹 结衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["朝日奈 このみ"],chs_name=["朝日奈 此美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["兎夜 栞"],chs_name=["兔夜 栞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["とや しおり"],chs_name=["兔夜 栞"],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
a.additem(jp_name="バック", chs_name="背景", info="")
a.additem(jp_name="アドレノクロム", chs_name="肾上腺素红", info="")
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
