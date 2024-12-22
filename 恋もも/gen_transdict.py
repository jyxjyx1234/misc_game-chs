from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=[""],chs_name=[""],sex="man",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
#a.savejson("temp.json")
'''
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
'''