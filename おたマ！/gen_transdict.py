from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["七瀬 弘明"],chs_name=["七濑 弘明"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["としゆき"],chs_name=["俊之"],sex="man",role="",other="",reverse=False)

a.addname(jp_name=["青葉 まみ"],chs_name=["青叶 真美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大宮 いいな トゥルネン"],chs_name=["大宫 伊娜 图尔嫩"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["日本橋 きらら"],chs_name=["日本桥 绮罗"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大洲 こより"],chs_name=["大洲 小依"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大手町 もみじ"],chs_name=["大手町 红叶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["天神 あめり"],chs_name=["天神 雨莉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["タケハラ"],chs_name=["竹原"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["テツ"],chs_name=["哲"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["まりん"],chs_name=["真凛"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["まじかる"],chs_name=["魔力"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["もっちー"],chs_name=["茂吉"],sex="woman",role="",other="",reverse=False)
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")

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
