from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["エトワール・テーレ"],chs_name=["爱德华・泰勒"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["ファルネーゼ・アトラス"],chs_name=["法尔内塞・阿特拉斯"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["シエル"],chs_name=["希耶尔"],sex="dog",role="",other="",reverse=True)
a.addname(jp_name=["ジャクリーン・シュプレンガー"],chs_name=["杰奎琳・施普伦格"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["イブ・クライン"],chs_name=["伊布・克莱因"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["オリヒメ・アスティル"],chs_name=["织女・艾斯提尔"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["フルール・ドリス"],chs_name=["芙璐璐・朵丽丝"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ビビ・クッショーニ"],chs_name=["美美・柯秀尼"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["シスター・グリース"],chs_name=["修女・格丽斯"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ジェット・エルメス "],chs_name=["杰特・艾鲁梅斯"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ジェッタ・エルメス "],chs_name=["杰达・艾鲁梅斯"],sex="girl",role="",other="",reverse=True)

a.gen_dict()
a.savetxt("星降.txt")
a.savejson("temp.json")

n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
