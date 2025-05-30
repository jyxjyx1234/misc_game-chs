from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ニコラ・テスラ"],chs_name=["尼古拉・特斯拉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ネオン・スカラ・スミリヤ"],chs_name=["霓虹・斯卡拉・斯米丽亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鋼鉄トカゲ"],chs_name=["钢铁蜥蜴"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["トカゲ"],chs_name=["蜥蜴"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ヴァルター・リッツ"],chs_name=["瓦尔特・里茨"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ベルタ・ヴィーゲルト"],chs_name=["贝尔塔・维格尔特"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["チャールズ・バベッジ"],chs_name=["查尔斯・巴贝奇"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ベルタ・モリ・ヴィーゲルト"],chs_name=["贝尔塔・莫里・维格尔特"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エリス・ベルタ・ルイーゼ・ヴィーゲルト"],chs_name=["艾丽丝・贝尔塔・路易泽・维格尔特"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エミリー・デュ・シャトレ"],chs_name=["艾米丽・杜・夏特莱"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ルイ・シャルル"],chs_name=["路易・夏尔"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ジョセフィン・マーチ"],chs_name=["约瑟芬・马奇"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ジョウ"],chs_name=["乔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エイミー・マーチ"],chs_name=["艾米・马奇"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["フロレンス・アメギノ・ナイチンゲール"],chs_name=["佛罗伦斯・阿梅吉诺・南丁格尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ウィルヘルム・ライヒ"],chs_name=["威廉・赖希"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["イズミ"],chs_name=["泉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アナベス・ウィリアム・マードック"],chs_name=["安娜贝丝・威廉・默多克"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["マードックＪｒ"],chs_name=["默多克Ｊｒ"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ジャン・ジャック"],chs_name=["让・雅克"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["キザイア・メースン"],chs_name=["基扎亚・梅森"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ロード・オブ・ラス"],chs_name=["罗德・奥布・拉斯"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ベイン"],chs_name=["贝恩"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["マスター"],chs_name=["大师"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["アンヌ・ベアール"],chs_name=["安努・贝阿尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["テケリ・リ"],chs_name=["特克利・利"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["アルベール・ド・ロレーヌ"],chs_name=["阿尔贝尔・德・洛雷纳"],sex="",role="",other="",reverse=False)
a.additem(jp_name="ガーニー",chs_name="加尼",info="")
a.additem(jp_name="フラタニティ",chs_name="兄弟会",info="")
a.additem(jp_name="ソロリティ",chs_name="姐妹会",info="")
a.additem(jp_name="マルセイユ",chs_name="马赛",info="")
a.additem(jp_name="ウォレス",chs_name="沃勒斯",info="")
a.additem(jp_name="システム",chs_name="系统",info="")
a.additem(jp_name="アート",chs_name="艺术",info="")
a.additem(jp_name="ガクトゥーン",chs_name="伽克苏恩",info="")
a.additem(jp_name="フランス",chs_name="法国",info="")
a.additem(jp_name="カダス",chs_name="卡达斯",info="")

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
