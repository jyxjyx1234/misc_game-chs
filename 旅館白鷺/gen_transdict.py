from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["水鷺 源一郎"],chs_name=["水鹭 源一郎"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["水鷺 健司"],chs_name=["水鹭 健司"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["水鷺 栄次"],chs_name=["水鹭 荣次"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["石見 要"],chs_name=["石见 要"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["白鳥 冬香"],chs_name=["白鸟 冬香"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["白鳥 優梨子"],chs_name=["白鸟 优梨子"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["岬 晴海"],chs_name=["岬 晴海"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["秋沢 ひばり"],chs_name=["秋泽 云雀"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["南 真一郎"],chs_name=["南 真一郎"],sex="man",role="",other="",reverse=True)
a.addname(jp_name=["朱雀山 優子"],chs_name=["朱雀山 优子"],sex="woman",role="",other="",reverse=True)
a.additem(jp_name="北海の暴れ姫",chs_name="北海暴走公主",info="")
a.additem(jp_name="クッキングエンターテイナー",chs_name="烹饪表演家",info="")
a.additem(jp_name="流れ板",chs_name="流浪艺人",info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")

replace1 = ["生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
replace2 = ["学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

for i in nd:
    if i in n:
        nd[i] = n[i]
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
