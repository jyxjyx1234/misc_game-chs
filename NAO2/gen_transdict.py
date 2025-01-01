from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["風早 草平"],chs_name=["风早 草平"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八千草 隆三"],chs_name=["八千草 隆三"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八千草 樹"],chs_name=["八千草 树"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["八千草 響果"],chs_name=["八千草 响果"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["八千草 蜜音"],chs_name=["八千草 蜜音"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ルル"],chs_name=["露露"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["硯 碧葉"],chs_name=["砚 碧叶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["月原 美園"],chs_name=["月原 美园"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["八千草 鉄男"],chs_name=["八千草 铁男"],sex="man",role="",other="",reverse=False)
a.additem(jp_name="ベラドンナ",chs_name="贝拉多娜",info="")
a.additem(jp_name="いつき",chs_name="shu",info="name, kana of 樹, so translate to pinyin shu")
a.additem(jp_name="きょうか",chs_name="响果",info="name, kana of 響果")
a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("names.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("names.json",nd)
