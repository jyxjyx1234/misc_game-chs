from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["土岐 穂乃香"],chs_name=["土岐 穂乃香"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["綾文 すずり"],chs_name=["绫文 砚"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["鶴来 真魚"],chs_name=["鹤来 真鱼"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["雀宮 小鳥"],chs_name=["雀宫 小鸟"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["朱鷺"],chs_name=["朱鹭"],sex="",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("姬巫女.txt")
#a.savejson("月光.json")