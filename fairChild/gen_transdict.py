from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["羽住 恋鳥"],chs_name=["羽住 恋岛"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["藍沢 とばり"],chs_name=["蓝沢 帐"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["有栖川 悠姫"],chs_name=["有栖川 悠姫"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["日菜森 こころ"],chs_name=["日菜森 心"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["加賀見 朔夜"],chs_name=["加贺见 朔夜"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["麻生 水瀬"],chs_name=["麻生 水濑"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["西園寺 ななる"],chs_name=["西园寺 奈奈露"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["羽住 愛音"],chs_name=["羽住 爱音"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["羽住 美琴"],chs_name=["羽住 美琴"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["小鳥遊 一樹"],chs_name=["小鸟游 一树"],sex="boy",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")


n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
