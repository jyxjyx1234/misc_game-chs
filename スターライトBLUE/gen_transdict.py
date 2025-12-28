from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["土岐 譲"],chs_name=["土岐 让"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["飛鳥 凛"],chs_name=["飞鸟 凛"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ゆず"],chs_name=["让"],sex="man",role="nick name of 土岐譲",other="",reverse=False)
a.addname(jp_name=["和泉 遠矢"],chs_name=["和泉 远矢"],sex="man",role="",other="",reverse=False)

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