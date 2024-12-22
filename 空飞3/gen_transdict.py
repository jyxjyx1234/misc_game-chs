from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["雲呑　深空"],chs_name=["云吞　深空"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["鳥井　かりん"],chs_name=["鸟井　花梨"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["嵩立　静香"],chs_name=["嵩立　静香"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["鈴白　灯"],chs_name=["铃白　灯"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["姫野王寺　花蓮"],chs_name=["姫野王寺　花莲"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["相楽　麻衣子"],chs_name=["相乐　麻衣子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["天野　翔"],chs_name=["天野　翔"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["トリ太"],chs_name=["托里太"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["カケル"],chs_name=["卡其尔"],sex="",role="",other="",reverse=False)


a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")


n = open_json("temp.json")
nd = open_json("names.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("names.json",nd)