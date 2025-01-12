from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["椎名 ゆうき"],chs_name=["椎名 雪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["椎名 優希"],chs_name=["椎名 优希"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ふたば"],chs_name=["双叶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["市島 誠二"],chs_name=["市岛 诚二"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["岸間 とも"],chs_name=["岸间 灯"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["園井 香織"],chs_name=["园井 香织"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["今村 碧"],chs_name=["今村 碧"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["中堂 剣"],chs_name=["中堂 剑"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="ヲタさん",chs_name="御宅族",info="")
a.gen_dict()
a.savetxt("项目GPT字典.txt")

#'''
#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
n["女の子"] = "女孩"
for i in nd:
    if i in n:
        nd[i] = n[i]
    
    nd[i] = nd[i].replace("員", "员").replace("お隣さん", "邻居").replace("ヲタさん", "御宅族")
save_json("namedict.json",nd)
#'''