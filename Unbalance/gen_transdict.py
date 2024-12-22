from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["大久保 純"],chs_name=["大久保 纯"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["神谷 美香"],chs_name=["神谷 美香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["藤宮 律子"],chs_name=["藤宫 律子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鈴原 さやか"],chs_name=["铃原 沙耶香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["岬 祐美子"],chs_name=["岬 祐美子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["斉木 紀子"],chs_name=["齐木 纪子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["スダ"],chs_name=["苏达"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["イズミ"],chs_name=["泉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["蛭川"],chs_name=["蛭川"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["鷹城"],chs_name=["鹰城"],sex="",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
    nd[i] = nd[i].replace("の声","的声音")
    nd[i] = nd[i].replace("店員","店员")
    nd[i] = nd[i].replace("女の客","女性客人")
    nd[i] = nd[i].replace("男の客","男性客人")
    nd[i] = nd[i].replace("の父","的父亲")
    nd[i] = nd[i].replace("の母","的母亲")
save_json("namedict.json",nd)
