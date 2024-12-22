from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["白峯 純"],chs_name=["白峰 纯"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["レイ"],chs_name=["零"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["篠原 葵"],chs_name=["筱原 葵"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["飛鳥 宴"],chs_name=["飞鸟 宴"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["森永 くるみ"],chs_name=["森永 胡桃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["橘 和真"],chs_name=["橘 和真"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["御神 永遠"],chs_name=["御神 永远"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["一柳 ナナ"],chs_name=["一柳 娜娜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["矢吹 ひよこ"],chs_name=["矢吹 雏鸡"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["古舘 千歳"],chs_name=["古馆 千岁"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["葉山 睦美"],chs_name=["叶山 睦美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大道寺 水子"],chs_name=["大道寺 水子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["一柳 ナナ"],chs_name=["一柳 娜娜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ラビ"],chs_name=["拉比"],sex="doll",role="",other="",reverse=False)
a.addname(jp_name=["まぼちゃん"],chs_name=["麻波酱"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["スダ"],chs_name=["苏达"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["イズミ"],chs_name=["泉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["おセイ様"],chs_name=["清大人"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["暎子"],chs_name=["暎子"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["明菜"],chs_name=["明菜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["チミチミ"],chs_name=["奇米奇米"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["日光"],chs_name=["日光"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["月光"],chs_name=["月光"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["うずら"],chs_name=["鹌鹑"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["たまご"],chs_name=["蛋"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ひな"],chs_name=["雏"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["のがも"],chs_name=["野鸭"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["タマ"],chs_name=["玉"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["あゆみ"],chs_name=["步美"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["たっくん"],chs_name=["阿健"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ピーター"],chs_name=["彼得"],sex="",role="",other="",reverse=False)


a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
