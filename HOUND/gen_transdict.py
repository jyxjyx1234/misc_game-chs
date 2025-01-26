from gen_transdict_LIB import *

a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["篠岡 幸人"],chs_name=["筱冈 幸人"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["片山 三郎"],chs_name=["片山 三郎"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["神坂 樹"],chs_name=["神坂 树"],sex="",role="",other="",reverse=False)
a.addname(jp_name=["城島 博"],chs_name=["城岛 博"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["高槻 正造"],chs_name=["高槻 正造"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["天王寺 龍重"],chs_name=["天王寺 龙重"],sex="man",role="",other="",reverse=False)
a.addname(jp_name=["相川 ナタリー"],chs_name=["相川 娜塔莉"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["ナタ"],chs_name=["娜塔"],sex="woman",role="short of ナタリー(娜塔莉)",other="",reverse=False)
a.addname(jp_name=["ドッジー"],chs_name=["多奇"],sex="woman",role="nick name of ナタリー(娜塔莉)",other="",reverse=False)
a.addname(jp_name=["オリヴィア ポートタウン"],chs_name=["奥利维亚 波特唐姆"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ケイン ポートタウン"],chs_name=["凯因 波特唐姆"],sex="man",role="father of オリヴィア（奥利维亚）",other="",reverse=True)
a.addname(jp_name=["オリ"],chs_name=["奥利"],sex="woman",role="short of オリヴィア（奥利维亚）",other="",reverse=True)
a.addname(jp_name=["中津 愛"],chs_name=["中津 爱"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["マサ"],chs_name=["玛莎"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["天王寺 雫"],chs_name=["天王寺 雫"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["柴島 葉月"],chs_name=["柴岛 叶月"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["桜川 霞"],chs_name=["樱川 霞"],sex="woman",role="",other="",reverse=False)
a.addname(jp_name=["梅田 操"],chs_name=["梅田 操"],sex="woman",role="",other="",reverse=False)
a.additem(jp_name="ワールド・クリエイティブ・パートナーズ",chs_name="World Creative Partners",info="公司名")
a.additem(jp_name="ワールド・クリエイティブ",chs_name="World Creative",info="公司名")
a.additem(jp_name="ワールドクリエイティブ・パートナーズ",chs_name="World Creative Partners",info="公司名")
a.additem(jp_name="ワールドクリエイティブ",chs_name="World Creative",info="公司名")
a.additem(jp_name="マルノミヤ",chs_name="丸之宫",info="")
a.additem(jp_name="遊世閣",chs_name="游世阁",info="")
a.additem(jp_name="浪花テレビ",chs_name="浪花电视台",info="")
a.additem(jp_name="ファンド",chs_name="基金",info="")
a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")
for i in nd:
    if i in n:
        nd[i] = n[i]
save_json("namedict.json",nd)
