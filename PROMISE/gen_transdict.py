from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["魚住 純"],chs_name=["鱼住 纯"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["大崎 薫子"],chs_name=["大崎 薫子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["松田 優子"],chs_name=["松田 优子"],sex="woman",role="teacher",other="",reverse=False)
a.addname(jp_name=["河合 夏美"],chs_name=["河合 夏美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["青山 椿"],chs_name=["青山 椿"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藤原 麗美"],chs_name=["藤原 丽美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鬼無里 凛"],chs_name=["鬼无里 凛"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["関本"],chs_name=["关本"],sex="",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
