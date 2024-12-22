from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["テレシア・フォン・ローゼンバーグ"],chs_name=["特蕾西娅・冯・罗森堡"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["エレーゼ・フォン・ローゼンバーグ"],chs_name=["艾莉婕・冯・罗森堡"],sex="woman",role="mother of テレシア",other="",reverse=True)
a.addname(jp_name=["ロゼット"],chs_name=["罗塞特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ランシング・アデナウアー"],chs_name=["兰辛格・阿登纳"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ハヤメ・シュナイダー"],chs_name=["哈雅梅・施耐德"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ヒスイ・ナギハラ"],chs_name=["凪原・翡翠"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["エグゼリカ・コール"],chs_name=["艾格杰利卡・科尔"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ジェミニ・ヴァール"],chs_name=["杰米妮・瓦尔"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["マリー・ハルドヴィック"],chs_name=["玛丽・海德温克"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["スプライツ・マイヤー"],chs_name=["施普莱滋・迈亚"],sex="girl",role="twin sister of ティンクル",other="",reverse=True)
a.addname(jp_name=["ティンクル・マイヤー"],chs_name=["汀可儿・迈亚"],sex="girl",role="twin sister of スプライツ",other="",reverse=True)
a.addname(jp_name=["シャーリーン・アウスト"],chs_name=["夏琳・奥斯特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["アンジェラ・エアハルト"],chs_name=["安洁拉・爱哈特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ガナック・ハインスト"],chs_name=["加纳克・海恩斯特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["バルザード"],chs_name=["巴尔扎德"],sex="girl",role="",other="",reverse=True)

a.gen_dict()
#a.savetxt("rinjoku_dict.txt")
a.savejson("rinjoku_dict.json")