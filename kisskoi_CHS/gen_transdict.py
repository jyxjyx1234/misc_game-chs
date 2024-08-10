from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["夏目 音子"],chs_name=["夏目 音子"],sex="",role="twin brother of 音奈",other="",reverse=False)
a.addname(jp_name=["なつめ おとね"],chs_name=["夏目 音子"],sex="",role="twin brother of 音奈",other="",reverse=False)
a.addname(jp_name=["夏目 音奈"],chs_name=["夏目 音奈"],sex="girl",role="twin sister of 音子",other="",reverse=False)
a.addname(jp_name=["なつめ おとな"],chs_name=["夏目 音奈"],sex="girl",role="twin sister of 音子",other="",reverse=False)
a.addname(jp_name=["松岡 奏"],chs_name=["松冈 奏"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["まつおか かなで"],chs_name=["松冈 奏"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["和泉 響花"],chs_name=["和泉 乡花"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["いずみ きょうか"],chs_name=["和泉 乡花"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["幸田 葉澄"],chs_name=["幸田 叶澄"],sex="girl",role="younger sister of 幹慈",other="",reverse=False)
a.addname(jp_name=["こうだ はずみ"],chs_name=["幸田 叶澄"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["幸田 幹慈"],chs_name=["幸田 干慈"],sex="boy",role="elder brother of 葉澄",other="",reverse=False)
a.addname(jp_name=["こうだ かんじ"],chs_name=["幸田 干慈"],sex="boy",role="elder brother of 葉澄",other="",reverse=False)
a.addname(jp_name=["夏目 節子"],chs_name=["夏目 节子"],sex="woman",role="teacher, mother of 音子 and 音奈",other="",reverse=False)

a.gen_dict()
#a.savetxt("yotsuiro_dict.txt")
a.savejson("yotsuiro_dict.json")