from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["朝宮 祥介"],chs_name=["朝宫 祥介"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["北本 宗哉"],chs_name=["北本 宗哉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["三好"],chs_name=["三好"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["米谷 一之"],chs_name=["米谷 一之"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["芙蓉 美優"],chs_name=["芙蓉 美优"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["浜木綿 雪乃"],chs_name=["滨木绵 雪乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["唐館 あやな"],chs_name=["唐馆 绫奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["桜野 真希子"],chs_name=["樱野 真希子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["津幡 かなみ"],chs_name=["津幡 叶美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["野本 沙代華"],chs_name=["野本 沙代华"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["篠瀬 ともみ"],chs_name=["筱濑 朋美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ミューティー"],chs_name=["缪缇"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ベル"],chs_name=["贝尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["アート王子"],chs_name=["艺术王子"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="トマト", chs_name="番茄", info="")
a.additem(jp_name="トレイル", chs_name="特雷尔", info="")
a.additem(jp_name="トマトニアン王国", chs_name="番茄尼安", info="")
# a.additem(jp_name="", chs_name="", info="")
# a.additem(jp_name="", chs_name="", info="")
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
