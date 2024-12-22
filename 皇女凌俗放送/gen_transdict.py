from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["カチェア"],chs_name=["卡秋娅"],sex="girl",role="",other="elder sister of マイヤ",reverse=False)
a.addname(jp_name=["マイヤ"],chs_name=["玛娅"],sex="girl",role="younger sister of カチェア",other="",reverse=False)
a.addname(jp_name=["片仲 ケンジ"],chs_name=["片仲 健二"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["タチバナ カナエ"],chs_name=["橘 香苗"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リマン リアン"],chs_name=["利曼 丽安"],sex="girl",role="宰相",other="",reverse=False)
a.addname(jp_name=["カラスト"],chs_name=["卡拉斯特"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["アクラス"],chs_name=["阿克拉斯"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("Housou_dict.txt")