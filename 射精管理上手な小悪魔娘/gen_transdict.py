from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["古宮 珠里奈"],chs_name=["古宫 珠理奈"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["矢切 香住"],chs_name=["矢切 香住"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["古宮 蒼汰"],chs_name=["古宫 苍汰"],sex="man",role="",other="",reverse=False)

a.additem(jp_name="アニキ", chs_name="大哥", info="")
a.additem(jp_name="＃Ａ００", chs_name="＃Ａ００", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０１", chs_name="＃Ａ０１", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０２", chs_name="＃Ａ０２", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０３", chs_name="＃Ａ０３", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０４", chs_name="＃Ａ０４", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０５", chs_name="＃Ａ０５", info="code refers to a special symbol, do not change it")
a.additem(jp_name="＃Ａ０６", chs_name="＃Ａ０６", info="code refers to a special symbol, do not change it")

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