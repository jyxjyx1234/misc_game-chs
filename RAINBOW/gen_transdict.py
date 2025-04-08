from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["橘夏 生"],chs_name=["橘夏 生"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["奥原 杏"],chs_name=["奥原 杏"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["高橋 大介"],chs_name=["高桥 大介"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["佐藤 まこと"],chs_name=["佐藤 诚"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["鞠原 千歩"],chs_name=["鞠原 千步"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["鞠原 あずみ"],chs_name=["鞠原 安住"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["いちご"],chs_name=["莓"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["奥原 すもも"],chs_name=["奥原 李"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["瑞原 歌鈴"],chs_name=["瑞原 歌铃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["橘 秋華"],chs_name=["橘 秋华"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高端 そあら"],chs_name=["高端 索亚拉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["野々村 孝美"],chs_name=["野野村 孝美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["初瀬 菜々美"],chs_name=["初濑 菜菜美"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["瑞原 玲子"],chs_name=["瑞原 玲子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["雪原 恋歌"],chs_name=["雪原 恋歌"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["萌木 玉緒"],chs_name=["萌木 玉绪"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高山 小麦"],chs_name=["高山 小麦"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["柴崎 鞠乃"],chs_name=["柴崎 鞠乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["日野 清花"],chs_name=["日野 清花"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["早乙女 かずひこ"],chs_name=["早乙女 和彦"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["八雲 辰人"],chs_name=["八云 辰人"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["春日野 日之出"],chs_name=["春日野 日之出"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["美鳥 千明"],chs_name=["美鸟 千明"],sex="",role="",other="",reverse=False)
a.additem(jp_name="鈴歌",chs_name="铃歌",info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")

'''
#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
'''