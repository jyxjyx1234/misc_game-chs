from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典


a.addname(jp_name=["秋山 美咲"], chs_name=["秋山 美咲"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["神林 亜衣"], chs_name=["神林 亚衣"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["楠 観雪"], chs_name=["楠 观雪"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["友永 さくら"], chs_name=["友永 樱"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["楠 観月"], chs_name=["楠 观月"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["さやか"], chs_name=["纱耶香"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["永野 葵"], chs_name=["永野 葵"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["増田 直美"], chs_name=["增田 直美"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["小林 貴則"], chs_name=["小林 贵则"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["小田切 誠"], chs_name=["小田切 诚"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["須藤 亨"], chs_name=["须藤 亨"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["柴 俊久"], chs_name=["柴 俊久"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["吉岡 和哉"], chs_name=["吉冈 和哉"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["田中 真吾"], chs_name=["田中 真吾"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["水上 弘行"], chs_name=["水上 弘行"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["愛原 まりあ"], chs_name=["爱原 玛丽娅"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["南雲 薫"], chs_name=["南云 薰"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["北条 夏樹"], chs_name=["北条 夏树"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["恩田 圭一"], chs_name=["恩田 圭一"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["美樹本 碧"], chs_name=["美树本 碧"], sex="woman", role="teacher", other="", reverse=False)
a.addname(jp_name=["菅原"], chs_name=["菅原"], sex="", role="teacher", other="", reverse=False)
a.addname(jp_name=["沢木"], chs_name=["沢木"], sex="", role="", other="teacher", reverse=False)
a.addname(jp_name=["多喜"], chs_name=["多喜"], sex="", role="", other="teacher", reverse=False)
a.addname(jp_name=["折原 エリーヌ"], chs_name=["折原 艾琳"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["神代 陽二"], chs_name=["神代 阳二"], sex="man", role="", other="", reverse=False)
a.additem(jp_name="ペンギン", chs_name="企鹅", info="")
a.additem(jp_name="どこでもカメラ", chs_name="随处相机", info="")


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
