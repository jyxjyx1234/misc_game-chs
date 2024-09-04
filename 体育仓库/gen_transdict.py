from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["木ノ内 律夏"],chs_name=["木之内 律夏"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["三園 御子"],chs_name=["三园 御子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["りっか"],chs_name=["律夏"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["良太"],chs_name=["良太"],sex="bot",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("cangku_dict.txt")
