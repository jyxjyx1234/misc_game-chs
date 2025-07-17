from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["朝倉 雅紀"],chs_name=["朝仓 雅纪"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["羽家沢 雅彦"],chs_name=["羽家泽 雅彦"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["泰蔵"],chs_name=["泰藏"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["鬼嶋 毅"],chs_name=["鬼岛 毅"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["松岡 巧"],chs_name=["松冈 巧"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["木林"],chs_name=["木林"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["朝倉 沙緒里"],chs_name=["朝仓 沙绪里"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["五月女 由奈"],chs_name=["五月女 由奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["北条 恵里佳"],chs_name=["北条 惠里佳"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["結城 舞"],chs_name=["结城 舞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大森 美憂"],chs_name=["大森 美忧"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["酒井 菜恵"],chs_name=["酒井 菜惠"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かりん"],chs_name=["花铃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["あさくら さおり"],chs_name=["朝仓 沙绪里"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["さおとめ ゆな"],chs_name=["五月女 由奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ほうじょう えりか"],chs_name=["北条 惠里佳"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ゆうき まい"],chs_name=["结城 舞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["おおもり みう"],chs_name=["大森 美忧"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["さかい なえ"],chs_name=["酒井 菜惠"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["絵美子"],chs_name=["绘美子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["西遠寺 瑠奈"],chs_name=["西远寺 琉奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藤田"],chs_name=["藤田"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="ＴＷＩＮＫＬＥ", chs_name="ＴＷＩＮＫＬＥ", info="团体名,保留全角字符")

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
