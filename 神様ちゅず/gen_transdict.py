from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["白鳩 いのり"],chs_name=["白鸠 祈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["熾火 叶"],chs_name=["炽火 叶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["シンデレラ"],chs_name=["灰姑娘"],sex="woman",role="",other="",reverse=False)


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
