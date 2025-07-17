from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["広瀬 徹"],chs_name=["广濑 彻"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ひろせ とおる"],chs_name=["广濑 彻"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["権田原 稲作"],chs_name=["权田原 稻作"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ごんだわら いなさく"],chs_name=["权田原 稻作"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["依元 美緒"],chs_name=["依元 美绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["掛川 陽樹"],chs_name=["挂川 阳树"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["広瀬 優衣"],chs_name=["广濑 优衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["九条院 霞"],chs_name=["九条院 霞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["天城 九音"],chs_name=["天城 九音"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["時刻 久遠"],chs_name=["时刻 久远"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ひろせ ゆい"],chs_name=["广濑 优衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["くじょういん かすみ"],chs_name=["九条院 霞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["あまぎ ここね"],chs_name=["天城 九音"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ときざみ くおん"],chs_name=["时刻 久远"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["よりもと みお"],chs_name=["依元 美绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ときざみ せつな"],chs_name=["时刻 刹那"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かけがわ はるき"],chs_name=["挂川 阳树"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["なっちゃん"],chs_name=["小夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ワンこ"],chs_name=["小汪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["くー先輩"],chs_name=["九学姐"],sex="woman",role="nick name of 九条院 霞",other="",reverse=False)
a.addname(jp_name=["ハル"],chs_name=["小阳"],sex="woman",role="nick name of 掛川 陽樹",other="",reverse=False)
a.addname(jp_name=["ここ姉"],chs_name=["九音姐"],sex="woman",role="",other="",reverse=False)
# a.addname(jp_name=[""],chs_name=[""],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="時雨学園のオーガ",chs_name="时雨学园的食人魔",info="")
a.additem(jp_name="学園のミスアンチェイン",chs_name="学园的不羁小姐",info="")
a.additem(jp_name="ラ・ルゥ・トゥルヌ",chs_name="拉·卢·图鲁努",info="")
a.additem(jp_name="スキー",chs_name="滑雪",info="")
# a.additem(jp_name="",chs_name="",info="")
# a.additem(jp_name="",chs_name="",info="")
a.gen_dict()
a.savetxt("项目GPT字典.txt")

#'''
# #修改人名json
# a.savejson("temp.json")
# n = open_json("temp.json")
# nd = open_json("namedict.json")
# n["女の子"] = "女孩"
# for i in nd:
#     if i in n:
#         nd[i] = n[i]
    
#     nd[i] = nd[i].replace("員", "员").replace("お隣さん", "邻居").replace("ヲタさん", "御宅族")
# save_json("namedict.json",nd)
# #'''