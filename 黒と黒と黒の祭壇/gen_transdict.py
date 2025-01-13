from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ユーディット"],chs_name=["尤蒂特"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ベアトリーチェ"],chs_name=["贝阿朵莉切"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["レアル"],chs_name=["莉亚尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["チッセ ペペモル"],chs_name=["琪瑟 佩佩莫儿"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["グルーヴェル"],chs_name=["格鲁韦尔"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["ヴィルヘルム"],chs_name=["威廉"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["イブリース"],chs_name=["伊布里斯"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["シェムハザ"],chs_name=["谢姆哈扎"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["フィリステン"],chs_name=["菲莉斯滕"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["アリエス"],chs_name=["阿里埃斯"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["美紗緒"],chs_name=["美纱绪"],sex="woman",role="",other="",reverse=True)
a.additem(jp_name="ミディリーシュ",chs_name="米迪利什",info="宗教名")
a.additem(jp_name="ハプラスティマ",chs_name="哈普拉斯蒂玛",info="宗教名")
a.additem(jp_name="ユディル",chs_name="尤迪尔",info="")

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
