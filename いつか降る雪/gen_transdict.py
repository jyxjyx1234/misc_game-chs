from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["湖川　水緒"],chs_name=["湖川　水绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["牧瀬　遥"],chs_name=["牧濑　遥"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["風早　薫"],chs_name=["風早　薫"],sex="man",role="teacher",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")

'''
#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
'''