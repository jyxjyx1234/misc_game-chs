from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="girl",role="",other="",reverse=False)

a.gen_dict()
#a.savetxt("primary_dict.txt")
a.savejson("primary_dict.json")