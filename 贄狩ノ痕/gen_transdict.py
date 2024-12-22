from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["京藤 博人"],chs_name=["京藤 博人"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["セシル"],chs_name=["塞西尔"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["五百旗 麗"],chs_name=["五百旗 丽"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["五百旗 渚"],chs_name=["五百旗 渚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["森山 亜子"],chs_name=["森山 亚子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["早峰 鈴世"],chs_name=["早峰 铃世"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["五百旗 昴"],chs_name=["五百旗 昴"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
# a.savejson("temp.json")

# n = open_json("temp.json")
# nd = open_json("namedict.json")
# for i in nd:
#     if i in n:
#         nd[i] = n[i]
# save_json("namedict.json",nd)
