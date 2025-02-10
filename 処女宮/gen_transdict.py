from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["友原 春菜"],chs_name=["友原 春菜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["川瀬 ユキ"],chs_name=["川濑 雪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["佐倉木 千夏"],chs_name=["佐仓木 千夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["二ノ宮 秋穂"],chs_name=["二之宫 秋穂"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アンジェラ"],chs_name=["安吉拉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["シスター"],chs_name=["修女"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["谷山 智恵"],chs_name=["谷山 智恵"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["長谷川 薫"],chs_name=["长谷川 薰"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["益田 このみ"],chs_name=["益田 瑚乃海"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["早坂 槇"],chs_name=["早坂 槙"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ひろみ"],chs_name=["宏美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["柳瀬"],chs_name=["柳濑"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["マリエル"],chs_name=["玛丽尔"],sex="woman",role="",other="",reverse=False)

a.addword(jp="聖マリエル女学院",chs="圣玛丽尔女学院",other="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")