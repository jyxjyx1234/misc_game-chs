from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["麻生　智"],chs_name=["麻生　智"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["麻生 こま"],chs_name=["麻生 驹"],sex="woman",role="",other="younger sister of 麻生　智",reverse=False)
a.addname(jp_name=["燕子花 こりす"],chs_name=["燕子花 克莉丝"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["由"],chs_name=["由"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["春野 千草"],chs_name=["春野 千草"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鏡架"],chs_name=["镜架"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["翁 俊信"],chs_name=["翁 俊信"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["四季ヶ紫町"],chs_name=["四季紫町"],sex="",role="",other="name of place",reverse=False)
a.addname(jp_name=["紫姫"],chs_name=["紫姬"],sex="woman",role="",other="",reverse=False)
a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")
'''
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
'''