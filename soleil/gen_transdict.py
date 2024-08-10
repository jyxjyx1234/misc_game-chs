from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["ハガル・ブリュンヒルデ"],chs_name=["夏甲・布伦希尔特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ペイオース・ゲンドゥル"],chs_name=["佩欧斯・贡杜尔"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["来島 詩帆"],chs_name=["来岛 诗帆"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["浅海 連十朗 澪璃"],chs_name=["浅海 连十朗 澪璃"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["師崎 理香"],chs_name=["师崎 理香 "],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["真鍋 直人"],chs_name=["真锅 直人"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["来島 猛"],chs_name=["来岛 猛 "],sex="man",role="teacher",other="father of 詩帆",reverse=False)
a.addname(jp_name=["下津井 明"],chs_name=["下津井 明"],sex="man",role="teacher",other="",reverse=False)
a.addname(jp_name=["邑上 琉平"],chs_name=["邑上 琉平"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["ソル・ヴァルキリー"],chs_name=["索尔・瓦尔基里"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["マジスティ・ジークフリード"],chs_name=["马吉斯蒂・西格弗里德"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ミーメ"],chs_name=["米梅"],sex="girl",role="doctor",other="",reverse=False)
a.addname(jp_name=["フェンリル"],chs_name=["芬里尔"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["ウールヴヘジン"],chs_name=["狼皮狂战士"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ブリュンビッチ"],chs_name=["布伦维奇"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["マーナガルム"],chs_name=["玛纳加尔姆"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["みおり"],chs_name=["澪璃"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["しほ"],chs_name=["诗帆"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["しほ"],chs_name=["诗帆"],sex="boy",role="",other="",reverse=False)

a.addword("ヴァルハラ ","瓦尔哈拉","")
a.addword("サードロット ","第三代","")


a.gen_dict()
a.savetxt("soleil_dict.txt")
a.savejson("soleil_dict.json")