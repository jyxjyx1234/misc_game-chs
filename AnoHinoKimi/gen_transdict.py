from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["尚道"],chs_name=["尚道"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["柚木 優雨"],chs_name=["柚木 优雨"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["七海 さなえ"],chs_name=["七海 纱奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["葵 かなた"],chs_name=["葵 彼方"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["美崎 響"],chs_name=["美崎 响"],sex="woman",role="",other="",reverse=False)
a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
