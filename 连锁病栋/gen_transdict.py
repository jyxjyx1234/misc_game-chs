from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["山田 修司"],chs_name=["山田 修司"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["菅野 隆雄"],chs_name=["菅野 隆雄"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["清里 浩一郎"],chs_name=["清里 浩一郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["清里 美佐子"],chs_name=["清里 美佐子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["和琴 春菜"],chs_name=["和琴 春菜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["勝山 亜紀"],chs_name=["胜山 亚纪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["川北 レイ"],chs_name=["川北 蕾"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["茅沼 里香"],chs_name=["茅沼 里香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["清里 結衣"],chs_name=["清里 结衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["山花 千夏"],chs_name=["山花 千夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["清水 真央"],chs_name=["清水 真央"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["わこと はるな"],chs_name=["和琴 春菜"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かつやま あき"],chs_name=["胜山 亚纪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かわきた れい"],chs_name=["川北 蕾"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["かやぬま りか"],chs_name=["茅沼 里香"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["きよさと ゆい"],chs_name=["清里 结衣"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["やまはな ちなつ"],chs_name=["山花 千夏"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["しみず まお"],chs_name=["清水 真央"],sex="woman",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
