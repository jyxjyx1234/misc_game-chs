from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["時沢 直巳"],chs_name=["时泽 直巳"],sex="男",role="老师",other="",reverse=False)
a.addname(jp_name=["松島"],chs_name=["松岛"],sex="男",role="",other="",reverse=False)
a.addname(jp_name=["速水 涼香"],chs_name=["速水 凉香"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["上条 翼"],chs_name=["上条 翼"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["桂木 紫苑"],chs_name=["桂木 紫苑"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["宮前 彩葉"],chs_name=["宫前 彩叶"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["城崎 優莉"],chs_name=["城崎 优莉"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["成瀬 小夜子"],chs_name=["成濑 小夜子"],sex="女",role="",other="",reverse=False)
a.addname(jp_name=["如月 ココ"],chs_name=["如月 可可"],sex="男",role="",other="",reverse=False)

a.additem(jp_name="白百合ヶ丘",chs_name="白百合丘",info="")
a.additem(jp_name="女衒",chs_name="女衒",info="")
a.additem(jp_name="アイドル",chs_name="偶像",info="")

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
