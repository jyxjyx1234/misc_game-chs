from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["コロナ"],chs_name=["科罗娜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アリア"],chs_name=["艾丽娅"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["メリッサ"],chs_name=["梅丽莎"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ペルル"],chs_name=["培露露"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["丸城戸 サド"],chs_name=["丸城戸 萨德"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ノワール"],chs_name=["诺瓦尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ウル"],chs_name=["乌尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ニネ"],chs_name=["妮涅"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リオ"],chs_name=["莉奥"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ヴォルフェン"],chs_name=["沃尔芬"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ツク ヨミ"],chs_name=["月读 命"],sex="woman",role="",other="",reverse=False)

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