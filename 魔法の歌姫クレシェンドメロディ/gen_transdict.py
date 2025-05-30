from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典


a.addname(jp_name=["蒼井 小鳥"], chs_name=["苍井 小鸟"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["綾ノ瀬 ひろみ"], chs_name=["绫濑 弘美"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["クレシェンド メロディ"], chs_name=["克蕾申多 梅洛蒂"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["ディミュニエンド リズム"], chs_name=["迪米纽恩多 里兹姆"], sex="woman", role="", other="", reverse=False)
a.addname(jp_name=["大沢 俊夫"], chs_name=["大泽 俊夫"], sex="man", role="", other="", reverse=False)
a.addname(jp_name=["シャープ"], chs_name=["夏普"], sex="woman", role="", other="", reverse=False)
a.additem(jp_name="アイドル", chs_name="偶像", info="")
a.additem(jp_name="ファン", chs_name="粉丝", info="")

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
