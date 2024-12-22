from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["前原 理恵"],chs_name=["前原 理恵"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["今津 ゆかり"],chs_name=["今津 由香里"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高野 美紀"],chs_name=["高野 美紀"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大高 雅之"],chs_name=["大高 雅之"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["タケシ"],chs_name=["武"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["アキオ"],chs_name=["昭夫"],sex="",role="",other="",reverse=False)


a.gen_dict()
a.savetxt("项目GPT字典.txt")
#a.savejson("piano_dict.json")