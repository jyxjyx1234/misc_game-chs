from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["佐倉 圭吾"],chs_name=["佐仓 圭吾"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["織笠 いつか"],chs_name=["织笠 依兹卡"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["久城 七理"],chs_name=["久城 七理"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["月見里 リンネ"],chs_name=["月见里 林奈"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["椎崎 憂"],chs_name=["椎崎 忧"],sex="gril",role="",other="",reverse=False)
a.addname(jp_name=["南 桃花"],chs_name=["南 桃花"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["瀬能 踊子"],chs_name=["濑能 踊子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["瀬能 舞奈"],chs_name=["濑能 舞奈"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["御桜"],chs_name=["御樱"],sex="woman",role="teacher",other="",reverse=False)
a.addname(jp_name=["アウローラ"],chs_name=["欧若拉"],sex="",role="name of a store",other="",reverse=False)


a.gen_dict()
#a.savetxt("yotsuiro_dict.txt")
a.savejson("yotsuiro_dict.json")