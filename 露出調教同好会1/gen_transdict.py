from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["小林　潤"],chs_name=["小林　润"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["野本　由美"],chs_name=["野本　由美"],sex="woman",role="sister of 匠",other="",reverse=False)
a.addname(jp_name=["長谷川　恵子"],chs_name=["长谷川　惠子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["仲原　圭一"],chs_name=["仲原　圭一"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
#a.savejson("piano_dict.json")