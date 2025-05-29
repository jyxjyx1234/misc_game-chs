from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["前島 正樹"],chs_name=["前岛 正树"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["伊隅 みちる"],chs_name=["伊隅 满"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["伊隅 やよい"],chs_name=["伊隅 弥生"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["伊隅 まりか"],chs_name=["伊隅 万里花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["伊隅 あきら"],chs_name=["伊隅 明"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["宗像 美冴"],chs_name=["宗像 美砂"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["風間 祷子"],chs_name=["风间 祷子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["神宮司 まりも"],chs_name=["神宫司 真理茉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["香月 夕呼"],chs_name=["香月 夕呼"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["相原 美沙"],chs_name=["相原 美沙"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["香月 ミツコ"],chs_name=["香月 光子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ヘルムート ニュートンジョン"],chs_name=["赫尔穆特 牛顿约翰"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["矢川 睦月"],chs_name=["矢川 睦月"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["遠乃 優莉"],chs_name=["远乃 优莉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["平 美優"],chs_name=["平 美优"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かず"],chs_name=["和"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["いのうえ"],chs_name=["井上"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八雲 鷹徳"],chs_name=["八云 鹰德"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["三島"],chs_name=["三岛"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["大須賀 憲三"],chs_name=["大须贺 宪三"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["森下 藍子"],chs_name=["森下 蓝子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["デビット"],chs_name=["戴维特"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["ジョン"],chs_name=["约翰"],sex="",role="",other="",reverse=False)

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
    if "・" in i:
        names = nd[i].split("・")
        names = [n.get(name, name) for name in names]
        nd[i] = "・".join(names)
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
