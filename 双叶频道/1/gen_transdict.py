from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ふたば"],chs_name=["双叶"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["結城 双葉"],chs_name=["结城 双葉"],sex="man",role="",other="use 双葉 to defer from ふたば（双叶）",reverse=False)
a.addname(jp_name=["有坂 京子"],chs_name=["有坂 京子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["後藤 良太"],chs_name=["后藤 良太"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["三坂 秋生"],chs_name=["三坂 秋生"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["デブ"],chs_name=["胖子"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ヤセ"],chs_name=["瘦子"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["あすか"],chs_name=["飞鸟"],sex="",role="",other="",reverse=False)
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
    if i.endswith("：") and i[:-1] in n:
        nd[i] = n[i[:-1]] + "："
    if "・" in i:
        if i.endswith("："):
            i_ = i[:-1]
            add = "："
        else:
            i_ = i
            add = ""
        names = i_.split("・")
        names = [n.get(name, name) for name in names]
        nd[i] = "・".join(names) + add
    nd[i] = nd[i].replace("員", "员").replace("お隣さん", "邻居").replace("ヲタさん", "御宅族")
save_json("namedict.json",nd)
#'''