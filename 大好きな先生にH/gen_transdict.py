from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典
a.addname(jp_name=["隆行"], chs_name=["隆行"], sex="man", role="teacher", other="", reverse=False)
a.addname(jp_name=["鮎川 ともか"], chs_name=["鲇川 朋香"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["森崎 かなみ"], chs_name=["森崎 加奈美"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["千住院 なつゆ"], chs_name=["千住院 夏雨"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["如月 りおん"], chs_name=["如月 理音"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["桜沢 はるか"], chs_name=["樱泽 春香"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["桜沢 けいと"], chs_name=["樱泽 启人"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["橘 ゆず"], chs_name=["橘 柚子"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["ぱるる"], chs_name=["帕露露"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["マジかるニャンにゃん☆ぱるるちゃん"], chs_name=["魔法猫娘☆帕露露酱"], sex="woman", role="", other="", reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")

# replace1 = ["生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
# replace2 = ["学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

for i in nd:
     if i in n:
         nd[i] = n[i]
#     for _ in range(len(replace1)):
#         nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
