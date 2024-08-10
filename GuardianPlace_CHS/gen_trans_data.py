import json
from Lib import *
from HanziReplacer import *

trans = open_json('yiwen.json')
out = open('release/trans.dat','wb')

namedict = {'凛とした声の女の子':"声音凛然的女孩", '声':"声", '葛の葉':"葛之叶", '？？？':"？？？", 'ルーン':"露恩", '瀬高':"濑高", '守護者Ｅ':"守护者Ｅ", '音々〔字幕翻訳・神楽勇気〕':"音音〔字幕翻译・神乐勇气〕", '勇気＆桜花':"勇气＆樱花", '女子Ａ':"女子Ａ", 'モイライ':"木乃伊", '勇気':"勇气", '影縫':"影缝", 'しゃあ':"煞", '音々':"音音", '桜花':"樱花", 'フィンブル':"芬布尔", '音々のそっくりさん？':"一模一样的声音？", 'タコっぽい守護者':"章鱼一样的守护者", '記述':"記述", '色っぽい女の子':"妩媚的女孩子", '周囲の声':"周围的声音", '仮面の男':"假面男子", '伏見':"伏见", '守護者Ｃ':"守护者Ｃ", '祖父':"祖父", '音々の分身？':"音音的分身？", '守護者Ｂ':"守护者Ｂ", '教師':"教师", '守護者Ａ':"守护者Ａ", '新手の守護者':"新手守护者", 'キリン':"麒麟", '朱雀':"朱雀", '蒼衣':"苍衣", '放送部員':"放送部员", '音々？':"音音？", '女子Ｄ':"女子Ｄ", '所沢':"所泽", '女子Ｂ':"女子Ｂ", '二宮':"二宫", 'タロス':"塔罗斯", '桜花の声':"樱花的声音", '少年':"少年", '愛祈':"爱祈", '守護者':"守护者", '担任':"担任", 'シャカラ':"沙卡拉", 'ゼピュロス':"泽费洛斯", '愛祈＆音々':"爱祈＆音音", 'アナウンサー':"广播", 'オロチ':"大蛇", 'お嬢様風の女の子':"大小姐一样的女子", '守護者Ｄ':"守护者Ｄ", 'トルトニス':"托尔托尼斯", '女子':"女子", '前園':"前园", 'メイドさん':"女仆小姐", '沙夜子':"沙夜子", 'ツバキ':"山茶花", '愛祈の声':"爱祈的声音", '謎の声':"谜之声", '灰島':"灰岛", '勇気＆愛祈':"勇气＆爱祈", '女子Ｃ':"女子Ｃ", '鬼斬り丸':"鬼斩丸", '桜花＆愛祈':"樱花＆爱祈", '桜花＆愛祈＆蒼衣':"樱花＆爱祈＆苍衣", '小さな守護者':"小小的守护者", 'お菓子を頬張っている女の子':"大口吃点心的女孩子", 'ボノム・デ・ネージュ':"博诺姆·德·内朱"}
replacementdict = {}

for dic in trans:
    ori = dic['pre_jp'].replace('〜','～')
    t = dic['pre_zh']
    name = dic['name']
    replacementdict[ori] = t

hanzireplacer = HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacementdict,namedict])
hanzireplacer.ChangeFont('WenQuanYi.ttf','release\\GuardianPlaceFont.ttf',font_name='GuardianPlaceFont')

for dic in trans:
    ori = dic['pre_jp'].replace('～',b'\x81\x60'.decode(encoding='sjis')).replace('@','114514')
    t = hanzireplacer.hanzitihuan(dic['pre_zh']).replace('@','')
    res = f'{ori}={t}\n'
    res = res.encode(encoding='sjis')
    res = res.replace("114514".encode(),b'\xf0\x40').replace(b'\x0d\x0a',b'\x0a')
    out.write(res)

for n in namedict:
    out.write(f'{n}={hanzireplacer.hanzitihuan(namedict[n])}\n'.encode(encoding='sjis').replace(b'\x0d\x0a',b'\x0a'))