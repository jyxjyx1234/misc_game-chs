from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["平良 明"],chs_name=["平良 明"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["タイラ"],chs_name=["平良"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["西門 貴明"],chs_name=["西门 贵明"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["サイモン"],chs_name=["西门"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["霧島 譲"],chs_name=["雾岛 让"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ジョウ"],chs_name=["让"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["藤川 みあ"],chs_name=["藤川 美亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ミア"],chs_name=["美亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["昼田 貴理子"],chs_name=["昼田 贵理子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ヒルダ"],chs_name=["昼田"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["町村 玲央奈"],chs_name=["町村 玲央奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["レオナ"],chs_name=["玲央奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["堀井 佐奈"],chs_name=["堀井 佐奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ホリー"],chs_name=["堀井"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["クロ"],chs_name=["黑"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["カイ"],chs_name=["海"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["利田 美咲"],chs_name=["利田 美咲"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リタポン"],chs_name=["利田"],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="オートマタ",chs_name="自律人形",info="")
a.additem(jp_name="ジオハンティング",chs_name="ＧＥＯＨＵＮＴＩＮＧ",info="")
a.additem(jp_name="ホーリーナイトチャンネル",chs_name="圣夜频道",info="")
a.additem(jp_name="ミラクルエナジー☆リタポンＤ",chs_name="Miracle Energy☆Ritapon D",info="")
a.additem(jp_name="ＧＥＯＨＵＮＴＩＮＧ",chs_name="ＧＥＯＨＵＮＴＩＮＧ",info="")
a.additem(jp_name="ルーパーズ",chs_name="时廻者",info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")


# #修改人名json
# a.savejson("temp.json")
# n = open_json("temp.json")
# nd = open_json("namedict.json")

# replace1 = ["生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
# replace2 = ["学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

# for i in nd:
#     if i in n:
#         nd[i] = n[i]
#     if i.replace("【","").replace("】","") in n:
#         nd[i] = "【" + n[i.replace("【","").replace("】","")] + "】"
#     for _ in range(len(replace1)):
#         nd[i] = nd[i].replace(replace1[_],replace2[_])
# save_json("namedict.json",nd)
