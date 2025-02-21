from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ナユタ"], chs_name=["那由他"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["カレン"], chs_name=["卡莲"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["サイオン"], chs_name=["赛昂"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["ナツキ"], chs_name=["夏树"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["リオナ"], chs_name=["莉欧娜"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["シスター"], chs_name=["修女"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["マスター"], chs_name=["大师"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["マヤ"], chs_name=["玛雅"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["ジャジャス"], chs_name=["贾贾斯"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["マリネオ"], chs_name=["玛丽内奥"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["ミウ"], chs_name=["美羽"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["ハノン"], chs_name=["哈农"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["レイ"], chs_name=["雷"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["セツナ"], chs_name=["刹那"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["ジン"], chs_name=["仁"], sex="", role="", other="", reverse=False)
a.addname(jp_name=["ケイ"], chs_name=["凯"], sex="", role="", other="", reverse=False)
a.additem(jp_name="チンピラ", chs_name="小混混", info="")

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
