from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["大陸"],chs_name=["大陆"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["エルケンバート・ローエンシュタイン"],chs_name=["埃尔肯巴特・洛温施泰因"],sex="man",role="",other="",reverse=1)
a.addname(jp_name=["穂仁原 翔"],chs_name=["穗仁原 翔"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ルンルン"],chs_name=["伦伦"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["鉄 勇二"],chs_name=["铁 勇二"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["まるる"],chs_name=["丸瑠"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["近衛 光莉"],chs_name=["近卫 光莉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["天宮寺・アクアリウス・海月"],chs_name=["天宫寺・阿库亚琉斯・海月"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アンネマリー・ローエンシュタイン"],chs_name=["安妮玛丽・洛温施泰因"],sex="woman",role="",other="",reverse=1)
a.addname(jp_name=["黛 比奈夕"],chs_name=["黛 比奈夕"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["岩井 エリカ"],chs_name=["岩井 艾莉卡"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["愛華"],chs_name=["爱华"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["Ｍｒ．キング"],chs_name=["Ｍｒ．Ｋｉｎｇ"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["Ｍｓ．バタフライ"],chs_name=["Ｍｓ．蝶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["マツカゼ"],chs_name=["松风"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ジャネット"],chs_name=["珍妮特"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["しのぶ"],chs_name=["忍"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["セシル"],chs_name=["塞西尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["セサモ"],chs_name=["塞萨莫"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["星那"],chs_name=["星那"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ナレーション"],chs_name=["旁白"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ルドルフ・フォン・パンツァーリート"],chs_name=["鲁道夫・冯・装甲骑兵"],sex="man",role="",other="",reverse=False)
# a.additem(jp_name="先輩",chs_name="学长 or 学姐",info="depends on sex")
a.additem(jp_name="キャスター",chs_name="报导员",info="")
a.additem(jp_name="キュリオ",chs_name="珂里奥",info="")
a.additem(jp_name="ジュネシス",chs_name="杰内西斯",info="")
a.additem(jp_name="ファーデンフルス",chs_name="法登弗鲁斯",info="")
a.additem(jp_name="エレウタリア",chs_name="埃莱乌特里亚",info="")
a.additem(jp_name="エロケン",chs_name="埃洛肯",info="nick name of エルケンバート・ローエンシュタイン")
a.additem(jp_name="ハラショー",chs_name="哈拉肖",info="nick name of 穂仁原 翔")
a.additem(jp_name="うづきち",chs_name="海月酱",info="nick name of 天宮寺・アクアリウス・海月")
a.additem(jp_name="ひなちゃん",chs_name="比奈酱",info="nick name of 黛 比奈夕")
a.additem(jp_name="ひなちゃん先輩",chs_name="比奈酱学姐",info="")
a.additem(jp_name="あかりん",chs_name="小光莉",info="nick name of 近衛 光莉")
a.additem(jp_name="イレブンマスター",chs_name="十一贤人",info="")
a.additem(jp_name="ジオ・ユニバース",chs_name="地理·宇宙",info="")
a.additem(jp_name="ヴィルトン",chs_name="维尔顿",info="")
a.additem(jp_name="テクノス",chs_name="特克诺斯",info="")
a.additem(jp_name="ディアトリーベ",chs_name="迪亚特利贝",info="")
a.additem(jp_name="マスター試験",chs_name="贤人测试",info="")
a.additem(jp_name="マスター権限",chs_name="贤人权限",info="")
a.additem(jp_name="マスターゼロ",chs_name="零号贤人",info="")
a.additem(jp_name="マスターワン",chs_name="一号贤人",info="")
a.additem(jp_name="マスターツー",chs_name="二号贤人",info="")
a.additem(jp_name="マスターファイブ",chs_name="五号贤人",info="")
a.additem(jp_name="マスターシックス",chs_name="六号贤人",info="")
a.additem(jp_name="マスターセブン",chs_name="七号贤人",info="")
a.additem(jp_name="マスターエイト",chs_name="八号贤人",info="")
a.additem(jp_name="マスターテン",chs_name="十号贤人",info="")
a.additem(jp_name="マスター",chs_name="贤人",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
a.gen_dict()
a.savetxt("项目GPT字典.txt")

# '''
#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
    if "＆" in i:
        i_ = i.split("＆")
        for _, j in enumerate(i_):
            if j in n:
                i_[_] = n[j]
        nd[i] = "＆".join(i_)
save_json("namedict.json",nd)
# '''