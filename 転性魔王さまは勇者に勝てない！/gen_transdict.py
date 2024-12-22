from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["リリィ"],chs_name=["莉莉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藍乃 絵馬"],chs_name=["蓝乃 绘马"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エマ アイリーン"],chs_name=["艾玛 艾琳"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["リオス ヴァレリゴード"],chs_name=["里奥斯 瓦莱里戈德"],sex="woman",role="",other="",reverse=True)

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