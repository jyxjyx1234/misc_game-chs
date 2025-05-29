from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["シズマ"],chs_name=["静马"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["マツナガ"],chs_name=["松永"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["グスタフ ドゥープ"],chs_name=["古斯塔夫 杜普"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ゾルト"],chs_name=["佐特"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ベリス"],chs_name=["贝利斯"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ペラペラ"],chs_name=["喋喋"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["メルフィ"],chs_name=["梅尔菲"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エルネスタ"],chs_name=["埃尔内斯塔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リュック ヒイラギ"],chs_name=["留克 柊"], sex="",role="",other="",reverse=False)
a.addname(jp_name=["マツナガズ"],chs_name=["松永兹"], sex="",role="",other="",reverse=False)
a.addname(jp_name=["レイコ"],chs_name=["丽子"], sex="",role="",other="",reverse=False)
a.additem(jp_name="ナイト",chs_name="骑士",info="")
a.additem(jp_name="クイーン",chs_name="女王",info="")
a.additem(jp_name="モータルギア",chs_name="致命机甲",info="")
a.additem(jp_name="ヘルバイカー",chs_name="地狱骑手",info="")
a.additem(jp_name="ダクリマ",chs_name="达克利玛",info="")
a.additem(jp_name="PSI",chs_name="PSI",info="一种超能力的名称")
a.additem(jp_name="PSIアクセラ",chs_name="PSI加速器",info="")
a.additem(jp_name="PSIキューブ",chs_name="PSI立方",info="")
a.additem(jp_name="魔貴族",chs_name="魔贵族",info="")
a.additem(jp_name="クイーンナイト",chs_name="女王骑士",info="")
a.additem(jp_name="クオリアル",chs_name="夸利亚",info="")
a.additem(jp_name="エルネスタ",chs_name="埃尔内斯塔",info="")
a.additem(jp_name="ベリス",chs_name="贝利斯",info="")
a.additem(jp_name="アンジェスト",chs_name="安杰斯特",info="")
a.additem(jp_name="ゼルビュート",chs_name="泽尔比特",info="")
a.additem(jp_name="インマキュレイ",chs_name="因马库雷",info="")
a.additem(jp_name="アンチ",chs_name="反制",info="")
a.additem(jp_name="バリア",chs_name="屏障",info="")
a.additem(jp_name="ヒューマンクラン",chs_name="人类部落",info="")
a.additem(jp_name="アジト",chs_name="据点",info="")
a.additem(jp_name="クラン",chs_name="部落",info="")
a.additem(jp_name="ダクリマハンター",chs_name="达克利玛猎人",info="")
a.additem(jp_name="バイク",chs_name="摩托车",info="")
a.additem(jp_name="ユニオン",chs_name="联盟",info="")
a.additem(jp_name="スピナー",chs_name="旋转器",info="")
a.additem(jp_name="マグメル",chs_name="玛格梅尔",info="")
a.additem(jp_name="ヴァージェ",chs_name="维嫉",info="")
a.additem(jp_name="エリア",chs_name="区域",info="")
a.additem(jp_name="ホテル",chs_name="酒店",info="")
a.additem(jp_name="スターバトマーテル",chs_name="星之殉道者",info="")
a.additem(jp_name="サイコトロン",chs_name="赛克隆",info="")
a.additem(jp_name="クローディア",chs_name="克劳迪娅",info="")
a.additem(jp_name="ナイトライダー",chs_name="夜骑士",info="")
a.additem(jp_name="ベヒーモス",chs_name="贝希摩斯",info="")
a.additem(jp_name="マッドアーマー",chs_name="疯狂装甲",info="")
a.additem(jp_name="キータワー",chs_name="奇塔",info="")
a.additem(jp_name="オヤジ",chs_name="老爹",info="")
a.additem(jp_name="ゼルビュート",chs_name="泽尔比乌特",info="")
a.additem(jp_name="インマキュレイ",chs_name="",info="")
a.additem(jp_name="サイコ",chs_name="赛克",info="")
a.additem(jp_name="",chs_name="",info="")
a.additem(jp_name="",chs_name="",info="")
a.additem(jp_name="",chs_name="",info="")
a.additem(jp_name="レベル",chs_name="等级",info="")
a.additem(jp_name="SG説明",chs_name="SG説明",info="code, don't change")
a.additem(jp_name="\\N[17]",chs_name="\\N[17]",info="code for name, don't change")
a.additem(jp_name="SGピクチャ位置:",chs_name="SGピクチャ位置:",info="code, don't change")
a.additem(jp_name="SGカテゴリ:",chs_name="SGカテゴリ:",info="code, don't change")
a.additem(jp_name="SGピクチャ:",chs_name="SGピクチャ:",info="code, don't change")
a.additem(jp_name="SGピクチャ揃え:",chs_name="SGピクチャ揃え:",info="code, don't change")




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
