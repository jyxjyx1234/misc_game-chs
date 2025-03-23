from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["小田島 幸助"],chs_name=["小田岛 幸助"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["小田島 小鈴"],chs_name=["小田岛 小铃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["小田島 まゆ"],chs_name=["小田岛 真由"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["金田 鮎"],chs_name=["金田 鲇"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["羽田 芳実"],chs_name=["羽田 芳实"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["宮森 ちまり"],chs_name=["宫森 千麻里"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ウメ"],chs_name=["梅"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["浅川 今日子"],chs_name=["浅川 今日子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["成樹"],chs_name=["成树"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["武則"],chs_name=["武则"],sex="",role="",other="",reverse=False)
a.additem(jp_name="マスター",chs_name="老板",info="")
a.additem(jp_name="店長",chs_name="店长",info="")
a.additem(jp_name="マルヨシ",chs_name="丸吉",info="店名")

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
