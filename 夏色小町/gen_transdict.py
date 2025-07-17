from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["中田 友也"],chs_name=["中田 友也"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["倉田 紘司"],chs_name=["仓田 纮司"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["有賀 美樹"],chs_name=["有贺 美树"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["有賀 美琴"],chs_name=["有贺 美琴"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["柊 なぎさ"],chs_name=["柊 渚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["護国 静音"],chs_name=["护国 静音"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["中田 鈴愛"],chs_name=["中田 铃爱"],sex="woman",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("项目GPT字典.txt")
