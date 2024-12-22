from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["伊波 冬矢"],chs_name=["伊波 冬矢"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["いち"],chs_name=["野犬"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リンドウ"],chs_name=["龙胆"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["瀬川 京香"],chs_name=["濑川 京香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["山東 鈴子"],chs_name=["山东 铃子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["化野"],chs_name=["化野"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("山人.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namddict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namddict.json",nd)
