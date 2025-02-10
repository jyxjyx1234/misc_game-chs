from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["燐堂 直人"],chs_name=["磷堂 直人"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["緋月 正和"],chs_name=["绯月 正和"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["燐堂 万蔵"],chs_name=["磷堂 万藏"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["緋月 鮎美"],chs_name=["绯月 鲇美"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["緋月 美津菜"],chs_name=["绯月 美津菜"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["緋月 詩乃"],chs_name=["绯月 诗乃"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["緋月 結衣子"],chs_name=["绯月 结衣子"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["緋月 鈴音"],chs_name=["绯月 铃音"],sex="woman",role="",other="",reverse=True)
a.additem(jp_name="ガキンチョ",chs_name="小鬼",info="")
a.additem(jp_name="テキ屋",chs_name="小贩",info="")

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
