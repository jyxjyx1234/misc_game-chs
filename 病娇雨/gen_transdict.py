from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["時雨 やどり"],chs_name=["时雨 宿利"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["水蓮 はすみ"],chs_name=["水莲 莲见"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["水蓮 よみ"],chs_name=["水莲 清见"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高槻 みちる"],chs_name=["高槻 满"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["あまたろー"],chs_name=["甘太郎"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
