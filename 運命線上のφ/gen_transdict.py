from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["朧 伊織"],chs_name=["朧 伊织"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["榎木 善治郎"],chs_name=["榎木 善治郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["兵藤 喜輔"],chs_name=["兵藤 喜辅"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["デビッド 守田"],chs_name=["大卫 守田"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["加治木 克男"],chs_name=["加治木 克男"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["八重霞 紫乃"],chs_name=["八重霞 紫乃"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["久遠 凪咲"],chs_name=["久远 凪咲"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["リーニャ エーレンスレイヤー"],chs_name=["莉妮娅 艾伦斯雷亚"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["火巡 果凜"],chs_name=["火巡 果凛"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["果凜ちゃん"],chs_name=["果凛酱"],sex="woman",role="nick name of 火巡果凛",other="",reverse=False)
a.addname(jp_name=["凪咲ちゃん"],chs_name=["凪咲酱"],sex="woman",role="nick name of 久远凪咲",other="",reverse=False)
a.addname(jp_name=["結子ちゃん"],chs_name=["结子酱"],sex="woman",role="nick name of 火巡果凛",other="",reverse=False)
a.addname(jp_name=["水濑结子"],chs_name=["果凛酱"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["蔵間 ミミ"],chs_name=["藏间 米米"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["蝶連寺 妖"],chs_name=["蝶连寺 妖"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["水瀬 結子"],chs_name=["水濑 结子"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["カレイドバニー"],chs_name=["卡雷德巴尼"],sex="",role="",other="",reverse=False)
a.additem(jp_name="s00",chs_name="s00",info="code for a name, don't change it")
a.additem(jp_name="信天島",chs_name="信天岛",info="")
a.additem(jp_name="アホウドリ",chs_name="信天翁",info="")
a.additem(jp_name="封燐館",chs_name="封燐馆",info="")
a.additem(jp_name="ひみつ手帳",chs_name="秘密手帐",info="")
a.additem(jp_name="にーちゃん",chs_name="哥哥",info="")
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