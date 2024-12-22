from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["佐竹 茂樹"],chs_name=["佐竹 茂树"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["海棠 乃亜"],chs_name=["海棠 乃亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["御子柴 薔子"],chs_name=["御子柴 蔷子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["柊 くらら"],chs_name=["柊 库拉拉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["芦澤 茉莉花"],chs_name=["芦泽 茉莉花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["三枝 美羽"],chs_name=["三枝 美羽"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藍葉"],chs_name=["蓝叶"],sex="",role="teacher",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")

a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)