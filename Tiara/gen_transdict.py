from gen_transdict_LIB import *
from Lib import *
a = transdict()

#a.addname(jp_name=[],chs_name=[],sex="",role="",other="",reverse=False)
#人名的姓和名用半角空格或全角空格或"・"分开
#reverse用于处理外国名字（姓名交换）
#a.additem(jp_name="",chs_name="",info="")
#additem用于添加非人名的字典

a.addname(jp_name=["ミオ ラビリエッタ"],chs_name=["澪 拉维利埃塔"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["シルキー クライツァ"],chs_name=["西尔基 克蕾察"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["クレア ドルナー"],chs_name=["克莱尔 多尔纳"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ナユティア センツァ ソルディーノ"],chs_name=["纳尤蒂亚 森察 索尔迪诺"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ステラ ファー スィーリオス"],chs_name=["斯特拉 法 西里奥斯"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["マイナ トライアード"],chs_name=["米娜 特莱亚德"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["イオ ピーベリー"],chs_name=["艾欧 皮贝利"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["アーニャ プロシュアン"],chs_name=["阿尼娅 普洛西安"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["クラヴェス"],chs_name=["克拉维斯"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["セーレット エレネッサ"],chs_name=["塞蕾特 艾伦莎"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ギロ"],chs_name=["吉罗"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["ヨリス レミィ スィーリオス"],chs_name=["约莉斯 雷米 西里奥斯"],sex="woman",role="",other="",reverse=True)
a.addname(jp_name=["クリード"], chs_name=["克里德"], sex="man", role="", other="", reverse=True)
a.addname(jp_name=["パウゲント セツドラー"], chs_name=["保根特 塞茨德拉"], sex="man", role="", other="", reverse=True)
a.addname(jp_name=["フェウス ラビリエッタ"], chs_name=["菲乌斯 拉维利埃塔"], sex="man", role="", other="", reverse=True)
a.addname(jp_name=["シャルル"], chs_name=["夏尔"], sex="man", role="", other="", reverse=True)
a.addname(jp_name=["ガブリエル"], chs_name=["加布里埃尔"], sex="", role="", other="", reverse=True)
a.addname(jp_name=["シュピール"], chs_name=["修皮尔"], sex="", role="", other="", reverse=True)
a.addname(jp_name=["イノシシ"], chs_name=["野猪"], sex="", role="", other="", reverse=True)
a.addname(jp_name=["クリーオ"], chs_name=["克里奥"], sex="", role="", other="", reverse=True)
a.addname(jp_name=["スレイベル"], chs_name=["斯雷贝尔"], sex="", role="", other="", reverse=True)
a.addname(jp_name=["シロフォン"], chs_name=["西罗丰"], sex="", role="", other="", reverse=True)
a.additem(jp_name="セリオン", chs_name="塞里昂", info="")
a.additem(jp_name="デルフィ", chs_name="德尔菲", info="")
a.additem(jp_name="キュプロッサ", chs_name="丘普罗萨", info="")
a.additem(jp_name="ネレウス", chs_name="涅柔斯", info="")
a.additem(jp_name="パスティラル", chs_name="帕斯提拉尔", info="")
a.additem(jp_name="エリュセリオン", chs_name="埃吕塞里昂", info="")
a.additem(jp_name="リコルネ", chs_name="里科尔内", info="")
a.additem(jp_name="ザメルキア", chs_name="扎梅尔基亚", info="")
a.additem(jp_name="メイド", chs_name="女仆", info="")

a.gen_dict()
a.savetxt("项目GPT字典.txt")


#修改人名json
a.savejson("temp.json")
n = open_json("temp.json")
nd = open_json("namedict.json")

replace1 = ["女子生徒", "男子生徒", "生徒", "の声", "員", "義","かなめ", "電話", "黒", "女の子", "女の人", "ご学友"]
replace2 = ["女学生","男学生", "学生", "的声音", "员", "义","叶爱", "电话", "黑", "女孩", "女士", "同学"]

for i in nd:
    if i in n:
        nd[i] = n[i]
    for _ in range(len(replace1)):
        nd[i] = nd[i].replace(replace1[_],replace2[_])
save_json("namedict.json",nd)
