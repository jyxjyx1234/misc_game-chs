from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)

a.addname(jp_name=["高城　匠"],chs_name=["高城　匠"],sex="boy",role="",other="",reverse=False)
a.addname(jp_name=["高城　美羽"],chs_name=["高城　美羽"],sex="girl",role="sister of 匠",other="",reverse=False)
a.addname(jp_name=["林　紅玉"],chs_name=["林　红玉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["高城　邦彦"],chs_name=["高城　邦彦"],sex="man",role="father of 匠 and 美羽",other="",reverse=False)
a.addname(jp_name=["武実"],chs_name=["武实"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["涼子"],chs_name=["涼子"],sex="woman",role="mather of 匠 and 美羽",other="",reverse=False)
a.addname(jp_name=["林 黛玉"],chs_name=["林 黛玉"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["李 香蘭"],chs_name=["李 香兰"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["エリザベス プランタジネット"],chs_name=["伊丽莎白 普朗塔金特"],sex="girl",role="",other="",reverse=True)
a.addname(jp_name=["ジェニー"],chs_name=["珍妮"],sex="girl",role="",other="",reverse=False)
a.addname(jp_name=["リズ"],chs_name=["丽子"],sex="girl",role="nick name of エリザベス",other="",reverse=False)

a.gen_dict()
a.savetxt("piano_dict.txt")
#a.savejson("piano_dict.json")