from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["神崎 葵"],chs_name=["神崎 葵"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["かんざき あおい"],chs_name=["神崎 葵"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["碧 桜子"],chs_name=["碧 樱子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["みどり さくらこ"],chs_name=["碧 樱子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["冴木 流一"],chs_name=["冴木 流一"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["新城 沙莉亜"],chs_name=["新城 沙莉亚"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["福井 正信"],chs_name=["福井 正信"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["正田 裕一郎"],chs_name=["正田 裕一郎"],sex="man",role="teacher",other="",reverse=False)
a.addname(jp_name=["神田 光輝"],chs_name=["神田 光辉"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["上野 鳴海"],chs_name=["上野 鸣海"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["ジョージ サンドマン"],chs_name=["乔治 萨德马"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["来栖 冬樹"],chs_name=["来栖 冬树"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["来栖 夏美"],chs_name=["来栖 夏美"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["来栖 春菜"],chs_name=["来栖 春菜"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["来栖 秋人"],chs_name=["来栖 秋人"],sex="girl",role="",other="",reverse=False)



a.gen_dict()
#a.savetxt("TrueBlue_dict.txt")
a.savejson("TrueBlue_dict.json")