[SCENESTART file=all_00040.ks]
;//all_00040
;//BG:bg14_02
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

;//TIME:夕
;//日付:6/14(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「……嗯……」
[np]

[r]因为第一次来到这个城市，说了声随便逛逛就出门散步……
[np]

[r]漫无目的地溜达时，不知不觉走到了夕阳映照的河滩边。
[np]

[r]没想到刚入住第一天就遇到这种麻烦事……
[np]

[r]没有房间就要在公共区生活…这样真的没问题吗？
[np]

[r]毕竟四月份之前还是女生宿舍吧？也就是说现在应该还住着很多女生……
[np]

[r]这种情况下让男生在公共区域生活这也太……
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]不过…换个角度想或许也不算坏事
[np]

[r]能在公共区待着，就意味着单纯增加了和女生交流的机会
[np]

[r]也就是说，缩短了彼此熟络所需的时间……
[np]

[r]顺利的话暑假前就能交到女朋友！说不定真有可能实现！
[np]

[r]目前虽然只有个满口黑暗力量有点古怪的女生…不过…
[np]

[r]宿舍里应该不会只有她一个人吧，其他女生还是可以期待的！
[np]

[r]再说管理员小姐虽然内在姑且不论，外表倒是相当养眼…
[np]

[character name="ryuichi"]
【龙一】[r]「还没完…上天还没有抛弃我！」
[np]

[r]玫瑰色的新生活…我定要亲手实现它！！
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=750]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//時間経過
;//背景を寮のリビングbg02_02に
[character name="ryuichi"]
【龙一】[r]「那个…我回来了」
[np]

[r]本想道声「我回来了」，但转念一想自己才刚入住第一天就这样未免…不禁感到有些难为情。
[np]

[r]怀揣着这样的思绪回到宿舍时…
[np]

[playcv storage="satomi_all_00040_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊～欢迎回来～噗、啊哈哈哈…！」
[np]
[FACEHIDE]

[r]圣水小姐正瘫在沙发上，一手拿着罐装啤酒观看周日晚间的综艺节目。多么典型的废柴画面。
[np]

[character name="ryuichi"]
【龙一】[r]「请问…洗手间在哪里？」
[np]

[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_all_00040_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「洗手间～？大的？小的？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃…厕所位置难道还分大小号吗？」
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00040_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「怎么可～能！只是随便问问啦，啊哈哈哈哈！」
[np]
[FACEHIDE]

[r]…虽然才认识几个小时，但感觉已经摸透这个人了。
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00040_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「厕所的话，进那扇门就是啦～」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好的好的，谢谢您…」
[np]

[r]虽然难以置信，但管理员这个身份该不会也是开玩笑的吧…算了，先找厕所。
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00040_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊对了，不过现在桃正在洗澡，记得好好敲门哦～」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00040_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「喂～有在听吗？算了不管了…噗、嘻嘻…啊哈哈哈！这些家伙真好玩～！」
[np]
[FACEHIDE]
[char_erase name="satomi"]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="700"]

;//暗転
[r]站在被告知的房门前，伸手推开——
[np]

[wait time="1000"]
[playse buf=5  storage="sound/00320.ogg"]
[wait time="500"]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[CG cgno=36 sabunno=02]
[SYSTEMMENU]

;//ＣＧ挿入
;//以下、ももの表記は「？？？」でお願いします
[playcv storage="momo_all_00040_001.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「咿呀……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…嗯…？」
[np]

[r]虽然确实是按着找厕所的念头推开门，但…
[np]

[r]闯入我视野的，似乎是刚出浴少女的……裸体与……
[np]

[playse buf=5  storage="sound/20310.ogg"]
[quake time="500"]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「呃！？！？！？！？」
[np]

[r]哦、哦哦哦哦，是奶子啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！？？？？？
[np]

[playcv storage="momo_all_00040_002.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「咦……咦、咦……？　咦……？」
[np]
[FACEHIDE]

[r]等、等一下！这是那种情况吗！？难道我刚来宿舍就闯祸了！？
[np]

[r]虽然确实期待过走桃花运什么的！但这也太突然了吧——
[np]

[playcv storage="momo_all_00040_003.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「怎、怎么……男、男孩子……为什么……这样，呜诶……？」
[np]
[FACEHIDE]

[r]看来这孩子是刚刚出浴……
[np]

[r]然后、我正准备穿内裤——就是那条可爱的小熊内裤，刚拿到手的瞬间我就推门——
[np]

[r]我们之间弥漫着沉默与寂静。但这股沉默眼看就要被打破，应该说——
[np]


[playcv storage="momo_all_00040_004.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「啊、啊哇……啊哇哇哇哇哇哇哇哇……！？」
[np]
[FACEHIDE]

[r]毫无疑问，眼前这个泪眼婆娑的少女已经濒临崩溃边缘——
[np]

[CG cgno=36 sabunno=03]

[playcv storage="momo_all_00040_005.ogg" name="momo"]
[character name="momo"]
[quake time="500"]
【桃】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！？？？？？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是说啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[CG cgno=36 sabunno=04]

[playcv storage="momo_all_00040_006.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「为、为什么为什么为什么啊啊啊啊啊！！？？？怎么会有陌生男人！？这到底怎么回事啊啊啊啊啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「初、初次见面！！其实我是今天开始要住在这里的神原龙一——」
[np]

[playcv storage="momo_all_00040_007.ogg" name="momo"]
[character name="momo"]
【桃】[r]「谁要听你自我介绍啊啊啊啊啊啊啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是说啊！！可是那个、这完全是个意外啊意外！」
[np]

[character name="ryuichi"]
【龙一】[r]「我、我今天才刚搬来！根本不知道浴室的位置啊！！」
[np]

[playcv storage="momo_all_00040_008.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「谁要听你狡辩啊啊啊啊啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真、真的很抱歉！！就像这样！！」
[np]

[playcv storage="momo_all_00040_009.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「别、别靠近我呀！变态！色狼！强奸犯啊啊啊啊啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「变态暂且不说剩下两项完全是诬告啊啊啊啊啊！！」
[np]

[playcv storage="momo_all_00040_010.ogg" name="momo"]
[character name="momo"]
【？？？】[r]「出去呀！！请快点出去啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊啊对哦说的没错！确实是这样！！抱歉！！」
[np]

[r]转身冲出洗手间的我——
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=35]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=500]
[wt]

[CGHIDE]
[SYSTEMMENU]

;//背景をリビングの寮bg02_02に
;//以下、千聖の表記は「？？？」でお願いします。
[chisato storage="C_sifuku_L CD_8_L"]
[playcv storage="chisato_all_00040_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【？？？】[r]「呀啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[playse buf=5  storage="sound/10050.ogg"]
[quake time="500"]
[char_erase name="chisato"]
[wait time="500"]

[r]这次又撞到谁了！？
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00040_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【？？？】[r]「好痛痛痛……」
[np]
[FACEHIDE]

[r]在我眼前，少女正捂着屁股——
[np]

[character name="ryuichi"]
【龙一】[r]「啊、太好了……！这次确实穿着衣服！」
[np]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00040_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「呀！？……你、你是谁！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊？我、我是……」
[np]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00040_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【？？？】[r]「难、难道你就是桃说的那个强奸魔……！？得、得报警！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等等等等等等等！！听我说！听我解释！！」
[np]

;//「ダークプリーステス」でお願いします
[aoi storage="A_tokushu_M A_4_M"]
[playcv storage="aoi_all_00040_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「怎么了堕天赛希圣职者！？刚才的惨叫是——」
[np]
[FACEHIDE]

[r]连你也要在这个时候出来吗！！
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00040_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「啊、你是暗之使徒的……！」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00040_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【？？？】[r]「哈……？暗之使徒？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啧、不对！总之先让我从头解释清楚！！！」
[np]

[char_erase name="chisato aoi"]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[jump storage="scenario/all/all_00050.ks"]
;;//JUMP:all_00050