from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["希"],chs_name=["希"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["のぞみ"],chs_name=["希"],sex="woman",role="希的平假名写法",other="",reverse=False)
a.addname(jp_name=["瑠璃"],chs_name=["瑠璃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["るり"],chs_name=["瑠璃"],sex="woman",role="瑠璃的平假名写法",other="",reverse=False)
a.addname(jp_name=["杏"],chs_name=["杏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["きょう"],chs_name=["杏"],sex="woman",role="杏的平假名写法",other="",reverse=False)
a.addname(jp_name=["桐生 素"],chs_name=["桐生 素"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["はじめ"],chs_name=["素"],sex="man",role="素的平假名写法",other="",reverse=False)
a.addname(jp_name=["繭実"],chs_name=["兰实"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["まゆみ"],chs_name=["兰实"],sex="woman",role="繭実的平假名写法",other="",reverse=False)
a.addname(jp_name=["禮次郎"],chs_name=["礼次郎"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="蜜柑",chs_name="蜜柑",info="")
a.additem(jp_name="虚ろなる器",chs_name="空虚之器",info="")
a.additem(jp_name="怨毒の槐",chs_name="怨毒之槐",info="")
a.additem(jp_name="病床にて",chs_name="病床之上",info="")
a.additem(jp_name="いつわりのおとこ",chs_name="虚伪之人",info="")

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
    if i.replace("【","").replace("】","") in n:
        nd[i] = "【" + n[i.replace("【","").replace("】","")] + "】"
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
