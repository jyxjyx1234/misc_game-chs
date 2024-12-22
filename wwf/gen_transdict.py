from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["叶野 静麻"],chs_name=["叶野 静麻"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["天宮 夏来"],chs_name=["天宫 夏来"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["天宮 澪"],chs_name=["天宫 澪"],sex="woman",role="elder sister of 天宮夏来",other="",reverse=False)
a.addname(jp_name=["ミコミコ"],chs_name=["米可米可"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["吾妻 梨花"],chs_name=["吾妻 梨花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["遠山 大輔"],chs_name=["远山 大辅"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["猫面相"],chs_name=["猫面相"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["昆野 直人"],chs_name=["昆野 直人"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["大須賀 左右衛門"],chs_name=["大须贺 左右卫门"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["大須賀 咲子"],chs_name=["大须贺 咲子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["香月 林太郎"],chs_name=["香月 林太郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["三吉"],chs_name=["三吉"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["乙松"],chs_name=["乙松"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["真絢"],chs_name=["真绚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["大山田 楓"],chs_name=["大山田 枫"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["涼宮 静"],chs_name=["凉宫 静"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["矢澤 鈴"],chs_name=["矢泽 铃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["須磨 翠璃"],chs_name=["须磨 翠璃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["七重 五月"],chs_name=["七重 五月"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["御堂 絵梨"],chs_name=["御堂 绘梨"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["浦澤 雨音"],chs_name=["浦泽 雨音"],sex="woman",role="teacher",other="",reverse=False)
a.addname(jp_name=["阿形 美帆"],chs_name=["阿形 美帆"],sex="woman",role="doctor",other="",reverse=False)
a.addname(jp_name=["野次馬"],chs_name=["野次马"],sex="man",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
a.savejson("temp.json")
#'''
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
#'''