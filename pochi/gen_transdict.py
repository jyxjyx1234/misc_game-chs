from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["麻黄 大"],chs_name=["麻黄 大"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["あさぎ ひろ"],chs_name=["麻黄 大"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["龍女 司"],chs_name=["龙女 司"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["龍女紫庵"],chs_name=["龙女紫庵"],sex="man",role="pen name of 龍女 司",other="",reverse=False)
a.addname(jp_name=["雛緑 千羽"],chs_name=["雏绿 千羽"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["山嶺 聖 バーナード"],chs_name=["山岭 圣 伯纳德"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ヒジリ"],chs_name=["圣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["シノ"],chs_name=["柴乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["チワ"],chs_name=["千羽"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ヒロ"],chs_name=["大"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["チョコ"],chs_name=["蝶子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["華円 柴乃"],chs_name=["华圆 柴乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["戸井 風花"],chs_name=["户井 风花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["雛緑 蝶子"],chs_name=["雏绿 蝶子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ちわ"],chs_name=["千羽"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ちわちわ"],chs_name=["千千羽"],sex="woman",role="nick name of 雏绿 千羽",other="",reverse=False)
a.additem(jp_name="[40]",chs_name="[40]",info="reaplace of a special char, don't change it")
a.additem(jp_name="ダルメシアン",chs_name="达尔梅西娅",info="")

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