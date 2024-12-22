from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["香白 茉莉花"],chs_name=["香白 茉莉花"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["朝倉 静果"],chs_name=["朝仓 静果"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["来栖 紅璃"],chs_name=["来栖 红璃"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["水面 かずみ"],chs_name=["水面 和美"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["紺野 祐子"],chs_name=["绀野 祐子"],sex="woman",role="teacher",other="",reverse=False)
a.addname(jp_name=["山川 久美"],chs_name=["山川 久美"],sex="girl",role="elder sister of コウダイ",other="",reverse=False)
a.addname(jp_name=["山川 コウダイ"],chs_name=["山川 高台"],sex="boy",role="younger brother of 久美",other="",reverse=False)
a.addname(jp_name=["えみ"],chs_name=["惠美"],sex="girl",role="younger sister of かずみ",other="",reverse=False)
a.addname(jp_name=["まなみ"],chs_name=["真奈美"],sex="girl",role="younger sister of かずみ",other="",reverse=False)


a.gen_dict()
a.savetxt("luogo_dict.txt")