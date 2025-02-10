from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["孔雀石 透子"],chs_name=["孔雀石 透子"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["青葉梟 みおん"],chs_name=["青叶枭 妙音"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["燕沢 夜"],chs_name=["燕泽 夜"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["瑞葉 伊鶴"],chs_name=["瑞叶 伊鹤"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["きゃびっとちゃん"],chs_name=["Cabbit酱"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["くじゃくせき とうこ"],chs_name=["孔雀石 透子"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["あおばずく みおん"],chs_name=["青叶枭 妙音"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["つばめさわ よる"],chs_name=["燕泽 夜"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["みずは いづる"],chs_name=["瑞叶 伊鹤"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["みおんちゃん"],chs_name=["妙音酱"],sex="woman",role="nickname of 青葉梟 みおん",other="",reverse=True)
a.addname(jp_name=["川蝉 陽太"],chs_name=["川蝉 阳太"],sex="man",role="",other="",reverse=True)

a.gen_dict()
a.savetxt("项目GPT字典.txt")