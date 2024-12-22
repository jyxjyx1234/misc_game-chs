from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["いつき"],chs_name=["树"],sex="boy",role="elder brother of 乙葉",other="",reverse=False)
a.addname(jp_name=["早来 樹"],chs_name=["早来 树"],sex="boy",role="elder brother of 乙葉",other="",reverse=False)
a.addname(jp_name=["早来 乙葉"],chs_name=["早来 乙叶"],sex="girl",role="younger sister of 樹",other="",reverse=False)
a.addname(jp_name=["村雨 瞳子"],chs_name=["村雨 瞳子"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["東雲 梨緒"],chs_name=["东云 梨绪"],sex="girl",role="elder sister of 葵依",other="",reverse=False)
a.addname(jp_name=["東雲 葵依"],chs_name=["东云 葵依"],sex="girl",role="younger sister of 梨緒",other="",reverse=False)
a.addname(jp_name=["中新田 翔太"],chs_name=["中新田 翔太"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["マイヤ リーサ"],chs_name=["玛雅 丽莎"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["三色 チヌ"],chs_name=["三色 奇努"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["榊原 芹華"],chs_name=["榊原 芹华"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["国後 千春"],chs_name=["国后 千春"],sex="girl",role="",other="",reverse=False)

a.gen_dict()
a.savetxt("ywxx3_dict.txt")