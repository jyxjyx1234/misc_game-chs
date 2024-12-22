from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["ジュン"],chs_name=["俊"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ミルテ"],chs_name=["米尔特"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["咲夜"],chs_name=["咲夜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["アンナ"],chs_name=["安娜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["雪華"],chs_name=["雪华"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["エド"],chs_name=["埃德"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ローズ"],chs_name=["玫瑰"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["スーザン"],chs_name=["苏珊"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["トム"],chs_name=["汤姆"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ピーター"],chs_name=["彼得"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["ヘンリー"],chs_name=["亨利"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ヴァーリ"],chs_name=["瓦利"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ハル"],chs_name=["哈尔"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ビル"],chs_name=["比尔"],sex="",role="",other="",reverse=False)
a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
