[SCENESTART file=all_00390.ks]
;//all_00390
;//BG:bg18_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/4(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

;//空背景
[r]正如圣水所说，我们乘坐电车颠簸了约三十分钟……
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00390_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哦————！！」
[np]
[FACEHIDE]

[r]攥着别人转让的门票，我们来到了风见水族乐园，简称水乐园。
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00390_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哇，过山车！只要有那个就能获得超越极限的加速度……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00390_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「葵小姐葵小姐！那边有旋转木马哦！」
[np]
[FACEHIDE]

[r]葵和桃酱两人完全像小孩子一样欢闹个不停。
[np]

[char_erase name="momo aoi"]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00390_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「嘿，意外地有很多游乐设施呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是第一次来这里吗？」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00390_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「是啊。虽然经常聊到，但实际来玩还是头一回」
[np]
[FACEHIDE]

[r]游乐园啊……对不太擅长尖叫类项目的我来说，估计只能在其他设施上敷衍了事了吧。
[np]

[character name="ryuichi"]
【龙一】[r]「总之，第一站打算去哪？」
[np]

[chisato storage="B_sifuku_M AB_2_M"]
[playcv storage="chisato_all_00390_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「既然都来游乐园了，果然还是先坐过——」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「是鬼屋啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「鬼、鬼屋？一上来就要玩这个吗……？」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00390_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「离开宿舍前我专门上网查过攻略……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「听说风水乐园的鬼屋制作精良特别吓人……有点在意呢」
[np]
[FACEHIDE]

[char_erase name="mion"]

;//合わせ
[aoi storage="A_tokushu_M A_7_M" trans=false]
[momo storage="A_sifuku_M AB_8_M" trans=false]
[char_trans]
[playcv storage="mix002.ogg" name="women"]
[character name="women"]
【葵・桃】[r]「呃……！」
[np]

[r]话音刚落，刚才还活蹦乱跳的两人瞬间僵在原地。
[np]

[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_all_00390_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「真、真刀真枪的布置……肯定很恐怖……！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_all_00390_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「别、别怯场啊桃！区、区区鬼屋不过是人造之物！在我的暗黑之力面前毫无威胁！！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00390_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「最糟糕的情况就用武力让它闭嘴！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在鬼屋里动真格可是违规的违规！」
[np]

[char_erase name="aoi momo"]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00390_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「就、就是啊你们两个，不用那么害怕啦……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哎呀……？不过千圣你的声音好像也有点发颤呢？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「才、才没有那回事呢！」
[np]
[FACEHIDE]

[r]反驳的声音也带着些许颤抖……看来绫濑也不擅长应付这类事物吧。
[np]

[char_erase name="chisato mion"]

[r]这样的话，说不定正是展现男子气概的好机会……我可是完全不怕鬼怪的类型！
[np]

[character name="ryuichi"]
【龙一】[r]「那我们先去鬼屋？」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「在那之前先决定组队吧。六个人一起进去的话，兴致会被冲淡的」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_all_00390_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「组、组队……要、要怎么分配呢……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00390_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「这个嘛……六个人的话，分成三组两人小队如何？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00390_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「正、正合我意……！不管对手是谁都不会手下留情！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说要战斗是怎么回事。具体要怎么决定呢？」
[np]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这个自由发挥。可以自由组队，也可以通过游戏来决定」
[np]
[FACEHIDE]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[endif]


[r]两人一组，决定方式自由吗……那么，该怎么办呢。
[np]

[char_erase name="mion aoi momo"]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=200]
	[select_button text=和葵一起去 jump target="*select1"]
	[select_button text=和绫濑一起去 jump target="*select2"]
	[select_button text=保持静止 jump target="*select3"]
[select_end]

;//葵と行く、を選んだ場合
*select1
[SetSJumpFlg storage="scenario/all/all_00390.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00390_0=0"]
[eval exp="f.love_aoi=f.love_aoi+1"]

[jump target="*selectA"]
*selectA

[r]看起来最害怕的应该是葵……既然如此，我就勉为其难照顾她一下吧。
[np]

[character name="ryuichi"]
【龙一】[r]「葵，要和我组队吗？」
[np]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00390_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「呃？啊……这、这样啊！看来龙一果然也在害怕嘛！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，我完全——」
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_all_00390_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「想依靠掌控黑暗之力的我这种心情，我确实接收到了……！那、那就并肩同行吧，我的盟友！」
[np]
[FACEHIDE]

[r]……唉，就当是这么回事吧。
[np]

[char_erase name="aoi"]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00390_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「那、那这样的话真珠星酱！我们一起去吧……？」
[np]
[FACEHIDE]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……无所谓」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00390_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那我和千圣组队吧。好了，我们这就出发吧」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00390_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎？我们组打头阵！？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_all_00390_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「虽然是这样……怎么了？难道你果然在害怕吗？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「才、才没那回事呢！这、这正是我求之不得的！！」
[np]
[FACEHIDE]

[r]摆出夸张姿势的绫濑，以及对她的反应窃笑不已的澪音前辈。
[np]

[char_erase name="chisato mion"]

[r]最先消失在黑色帷幕中的是她们两人。
[np]

[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_all_00390_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「真、真珠星酱没问题的对吧……？一、一点都不害怕对吧……？」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00390_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……无论是妖怪还是幽灵，都是不科学的……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00390_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「就、就是说啊！根本不科学嘛！没问题，绝对没问题……！」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]紧接着，方才还在我们面前的一年级组合也消失在黑暗中。
[np]

[r]接下来就轮到我们了……
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_all_00390_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「呜、呜呜呜……」
[np]
[FACEHIDE]

[r]……仔细一看，葵这家伙的双腿正在发抖呢。
[np]

[character name="ryuichi"]
【龙一】[r]「喂，你还好吗？」
[np]

[aoi storage="C_tokushu_M CD_6_M"]
[playcv storage="aoi_all_00390_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_tokushu"]
【葵】[r]「没、没没、没问题！对拥有冥界赐予异能力的我来说，这、这种骗小孩的设施根本……！！」
[np]
[FACEHIDE]

[r]嘴上虽然这么说，但任谁都看得出她明显在害怕……
[np]

[char_erase name="aoi"]

[r]……没办法，只能这样了……
[np]

[character name="ryuichi"]
【龙一】[r]「葵……」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00390_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「怎、怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这边走！！」
[np]

[aoi storage="B_tokushu_L B_8_L"]
[playcv storage="aoi_all_00390_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「哎——啊、等……！？」
[np]
[FACEHIDE]

[r]抓住颤抖的葵的手，头也不回地逃离队伍。
[np]

[aoi storage="D_tokushu_L CD_7_L"]
[playcv storage="aoi_all_00390_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「喂、喂龙一？要去哪里啊……！？」
[np]
[FACEHIDE]

[char_erase name=aoi to=right time=800 fade=true]

[character name="ryuichi"]
【龙一】[r]「完全没有计划！不过总之先跑再说！！」
[np]

[r]牵着她的手，和葵一起在游乐园里狂奔……
[np]

;//時間経過
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_all_00390_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「哈……哈啊、哈……」
[np]
[FACEHIDE]

[r]在鬼屋建筑完全看不见后，随便找了张长椅坐下。
[np]

[character name="ryuichi"]
【龙一】[r]「哈、哈……哈……」
[np]

[r]仔细想想其实根本没必要逃跑。
[np]

[r]但不知怎的被一时兴起的情绪感染，不由自主就跑起来了。
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_all_00390_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「龙、龙一……你到底是打的什么主意……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「因为葵你刚才明明怕得要命啊」
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00390_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哪……！？才、才没有害怕！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咦，是吗……？那就当是我误会了吧」
[np]

[r]仰望着晴朗的蓝天，缓缓从长椅上站起身。
[np]

[character name="ryuichi"]
【龙一】[r]「好了，葵想玩什么项目？」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_all_00390_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「难得来游乐园。虽说大热天能在凉快的鬼屋体验也不错……」
[np]

[character name="ryuichi"]
【龙一】[r]「反正难得来一趟，当然要尽可能多体验自己喜欢的项目……这样才尽兴不是吗？」
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_all_00390_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是这么回事，接下来去哪儿？」
[np]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00390_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「那、那就……啊！我要玩那个！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]葵所指的，是这座游乐园里最负盛名的巨型过山车。
[np]

[r]过山车么……也罢，奉陪到底！
[np]

[character name="ryuichi"]
【龙一】[r]「这才像话嘛……好，出发！」
[np]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00390_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「嗯！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//背景を空_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]试图从鬼屋逃脱的我们临时改变计划，转而登上了过山车。
[np]

[r]之后估摸着时间差不多了，当我们折返至鬼屋出口时……
[np]

;//背景を遊園地bg18_01に
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00390_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「啊、找到了……！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]映入眼帘的是四道正在寻找我们的身影。
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_all_00390_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「你们两个，到底去哪里了……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_all_00390_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「那、那个……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「实在抱歉……！就在要进鬼屋之前，我突然肚子剧痛……」
[np]

[character name="ryuichi"]
【龙一】[r]「等从厕所回来发现排起超长队伍，只好作罢去其他地方玩了」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_all_00390_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_all_00390_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「哼嗯……」
[np]
[FACEHIDE]

[r]为了躲避澪音学姐怀疑的目光，我慌忙别过脸去。
[np]

[char_erase name="mion aoi"]

[character name="ryuichi"]
【龙一】[r]「比、比起这个大家！鬼屋体验怎么样！？」
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_all_00390_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「虽、虽然非常恐怖……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_all_00390_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「但是……？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00390_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「因为真珠星酱从头到尾都保持着冷静，给了我超强的安全感……！」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_M CD_4_M"]
[playcv storage="supica_all_00390_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……幽灵和妖怪都不科学。人造的东西有什么好害怕的」
[np]
[FACEHIDE]

[char_erase name="supica momo aoi"]

[r]原来如此，这可真是可靠啊……。
[np]

[chisato storage="B_sifuku_M AB_4_M"]
[playcv storage="chisato_all_00390_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「确、确实挺逼真的……不过也没到那种夸张程度啦……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_all_00390_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「让我惊讶的倒不是里面的机关，而是千圣的反应呢……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00390_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「因为千圣突然尖叫着说什么「光之魔法」之类的——」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[chisato storage="B_sifuku_L AB_10_L"]
[playcv storage="chisato_all_00390_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「哇啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哦哦！？怎、怎么突然就……！？」
[np]

[chisato storage="C_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00390_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「啊……对、对不起！不、不知怎么突然就想大声喊叫！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对心脏可不好啊……那种事还是留到卡拉ＯＫ去做吧」
[np]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「差、差不多该吃午饭了吧！？对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊对，肚子也饿了……嗯？」
[np]

[char_erase name="chisato"]

[r]感觉衣服下摆被拉了一下，回头一看……
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_all_00390_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]葵正目不转睛地盯着我。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00390_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「那、那个……就是……」
[np]
[FACEHIDE]

;//小声
[aoi storage="C_tokushu_L CD_3_L"]
[playcv storage="aoi_all_00390_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「龙、龙一……谢……谢谢你……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……哈哈。别放在心上啦」
[np]

[aoi storage="A_tokushu_L A_8_L"]
[playcv storage="aoi_all_00390_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「呜欸！？」
[np]
[FACEHIDE]

[r]带着害羞神情突然说出的感谢话语。
[np]

[r]我用力揉了揉说出这句话的葵的脑袋。
[np]

[aoi storage="C_tokushu_L CD_2_L"]
[playcv storage="aoi_all_00390_028.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「别、别这样……哇啊……！」
[np]
[FACEHIDE]

[playcv storage="mion_all_00390_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「你们两个在干嘛呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，不好意思！这就来！」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00390_029.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「等、等一下龙一！摸我脑袋的罪过可是很重的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好了，走吧葵。大家都在等着呢。」
[np]

[aoi storage="D_tokushu_S CD_9_S"]
[playcv storage="aoi_all_00390_030.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「听、听人说话啊！喂——！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//ここまで
[jump target="*selectEnd"]

;//綾瀬と行く、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00390.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00390_0=1"]
[eval exp="f.love_chisato=f.love_chisato+1"]
[jump target="*selectB"]
*selectB

[r]我个人倒是很好奇，平时成熟稳重的绫濑会有什么反应呢……呵呵。
[np]

[character name="ryuichi"]
【龙一】[r]「绫濑，要和我组队吗？」
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00390_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「诶……和、和我？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我本来就是对这种东西免疫的类型。和害怕的绫濑组队应该能平衡状态吧」
[np]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「我、我才没有害怕呢！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「越是这么激动地否认，反而越可疑哦……？」
[np]

[chisato storage="D_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00390_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「……！啰、啰嗦……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//「ダークプリーステス」でお願いします
[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_all_00390_031.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「好、好！与我同行吧——堕天噬圣职者——！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_all_00390_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「是、是！拜托您了……！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00390_032.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「没、没事的……我们是暗藏黑暗之力、被命运锁链相连的盟友……！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00390_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「到、到时候就动真格的！对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不行！绝对不可以啊桃酱！」
[np]

[char_erase name="momo aoi"]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00390_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那我就和真珠星一组吧」
[np]
[FACEHIDE]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……随便」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_all_00390_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「呵呵，那我们这就出发吧」
[np]
[FACEHIDE]

[char_erase name="mion supica"]

[r]跟随澪音学姐的脚步，各组人员排成一列……
[np]

;//時間経過
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]终于轮到我们了。
[np]

[character name="ryuichi"]
【龙一】[r]「好，出发吧」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00390_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「…………！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……绫濑？」
[np]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「哎？啊……对、对不起！走、走吧！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//暗転
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[r]与脸色略显苍白的绫濑并肩而行，一同踏入黑色帘幕之中。
[np]

[character name="ryuichi"]
【龙一】[r]「哦哦，真是漆黑一片啊……」
[np]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00390_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「这、这么黑的话，根本没法好好走路啊……！」
[np]
[FACEHIDE]

[r]冷气也开得异常强劲……凉爽过头甚至有些寒冷。
[np]

[r]紧接着，鬼屋标配的阴森恐怖的背景音乐——
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00390_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「咿呀啊啊啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了！？」
[np]

[chisato storage="B_sifuku_M AB_10_M"]
[playcv storage="chisato_all_00390_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「刚、刚才正前方有红色的东西……！好像看见什么红色的东西了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「红色的东西……？」
[np]

[r]是血迹之类的吗……？这么想着眯起眼睛仔细看向前方……
[np]

[character name="ryuichi"]
【龙一】[r]「……绫濑，难道说……是这个吗？」
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00390_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎……？」
[np]
[FACEHIDE]

[r]我手指着走廊尽头的小告示牌。
[np]

[r]红色箭头指示着继续前进的方向。
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00390_023.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「……只是个告示牌……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看到这个才尖叫的吗……」
[np]

[chisato storage="C_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00390_024.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真是的……刚开始就这种状态，之后可怎么办啊……」
[np]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_all_00390_025.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「呜、呜呜……！快、快点往前走啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊啊啊！绫濑的肩膀上有只苍白的手啊啊啊啊啊啊！！」
[np]

[chisato storage="B_sifuku_M AB_10_M"]
[playcv storage="chisato_all_00390_026.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「骗你的」
[np]

[chisato storage="D_sifuku_M CD_7_M"]
[playcv storage="chisato_all_00390_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「不、不要啊！！别过来！！不行不行不行不行啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[char_erase name=chisato to=right time=800 fade=true]

[character name="ryuichi"]
【龙一】[r]「啊、那个……喂……？」
[np]

[r]绫濑把我的玩笑当真了，发出尖叫全速跑了出去。
[np]

[playcv storage="chisato_all_00390_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！？？？？」
[np]
[FACEHIDE]

[r]而且稍微往前一点也在尖叫……对鬼屋来说真是求之不得的好顾客啊……
[np]

;//時間経過
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
[wait time="500"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00390_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「等、等一下……！别走那么远啦……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，靠太近的话可能也有问题吧……」
[np]

[chisato storage="B_sifuku_M AB_10_M"]
[playcv storage="chisato_all_00390_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「那、那个……虽然可能是这样……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]从起点出发后，差不多过了十分钟左右吧。
[np]

[r]完全看不到出口出现的迹象。这鬼屋还挺长的啊。
[np]

[character name="ryuichi"]
【龙一】[r]（啊……）
[np]

[r]前面一点的转角处……刚才一瞬间好像看到人腿了。
[np]

[r]大概是吓人演员吧。准备工作也太粗糙了……
[np]

[r]当然不会告诉绫濑。因为这样才有趣嘛！
[np]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00390_031.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「这、这里要转弯……对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「应该是吧」
[np]

[r]完全缩着身子的绫濑战战兢兢地探头窥视着转角处——
[np]

;//★＠
[playcv storage="obak_all_00390_001.ogg" name="man"]
[character name="man"]
【幽灵】[r]「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！」
[np]

[chisato storage="B_sifuku_M AB_10_M"]
[playcv storage="chisato_all_00390_032.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！！」
[np]
[FACEHIDE]

[r]嗯，正如预料的结果——
[np]

[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_all_00390_033.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「天、天之上的吾等母亲啊！！　请赐予身为天使的我们光之加护！！」
[np]
[FACEHIDE]

;//「ヘブン・オブ・グングニル」でお願いします
[chisato storage="C_sifuku_M CD_6_M"]
[playcv storage="chisato_all_00390_034.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_sifuku"]
【千圣】[r]「——自天界降下的至大圣枪——唔唔唔唔唔唔唔！！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「………………………………嗯？」
[np]

[r]绫濑将食指笔直指向扮鬼的人并大喊着什么。
[np]

[r]对此不仅是我，连扮鬼的人都愣住了……不过也难怪……话说……
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00390_035.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「哈……！！」
[np]
[FACEHIDE]

[r]刚才那是……怎么回事？
[np]

[character name="ryuichi"]
【龙一】[r]「那个……总、总之，我们先走吧？」
[np]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00390_036.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「呃……啊、啊……好、好的……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不好意思，我们借过一下……」
[np]

;//★＠
[playcv storage="obak_all_00390_002.ogg" name="man"]
[character name="man"]
【幽灵】[r]「啊……嗯」
[np]

[r]与扮鬼者互相点头致意后，从他们身旁穿过继续前进。
[np]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00390_037.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「…………」
[np]
[FACEHIDE]

[r]刚才那个到底是什么情况……
[np]

[r]惊慌失措的绫濑突然喊出像是咒语的东西……
[np]

[r]虽然很在意，但总觉得现在不是该问的气氛……接下来该怎么办——
[np]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_038.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「呀啊啊啊啊啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「绫濑！？」
[np]

[r]道路旁突然喷出类似二氧化碳的气体，吓得绫濑腿都软了。
[np]

[chisato storage="C_sifuku_M CD_6_M"]
[playcv storage="chisato_all_00390_039.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_sifuku"]
【千圣】[r]「呜……真是受够了……！到底什么时候才能到出口啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「已经走了不少路，应该快到了吧？」
[np]

[r]平时一向可靠的绫濑会如此狼狈实属罕见。
[np]

[r]总不能一直这样看着她瑟瑟发抖吧……好。
[np]

[character name="ryuichi"]
【龙一】[r]「来，走吧」
[np]

[chisato storage="C_sifuku_L CD_8_L"]
[playcv storage="chisato_all_00390_040.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎……等——」
[np]
[FACEHIDE]

[r]一把抓住瘫坐在地的绫濑的手。
[np]

[chisato storage="B_sifuku_L AB_10_L"]
[playcv storage="chisato_all_00390_041.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「等、等等，手……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样多少能缓解些恐惧感吧？」
[np]

[chisato storage="D_sifuku_L CD_8_L"]
[playcv storage="chisato_all_00390_042.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「可、可是这样简直就像……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现在不是在意这些的时候。快到出口时松手就行，没问题的」
[np]

[chisato storage="A_sifuku_L AB_8_L"]
[playcv storage="chisato_all_00390_043.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]手上用力，缓缓拉起正欲起身的绫濑。
[np]

[character name="ryuichi"]
【龙一】[r]「好，走吧」
[np]

[chisato storage="D_sifuku_L CD_9_L"]
[playcv storage="chisato_all_00390_044.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「……嗯、嗯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等，那个……」
[np]

[chisato storage="C_sifuku_L CD_8_L"]
[playcv storage="chisato_all_00390_045.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「怎、怎么了！？这次又是什么！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊没事，衬衫袖口的扣子好像掉了一颗」
[np]

[chisato storage="B_sifuku_L AB_8_L"]
[playcv storage="chisato_all_00390_046.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「诶……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「原本缝线就有点松了，估计是掉在什么地方了吧……」
[np]

[chisato storage="C_sifuku_L CD_9_L"]
[playcv storage="chisato_all_00390_047.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「这、这种程度的话……回去后，我帮你缝上也可以……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦真的？绫濑还会针线活？」
[np]

[chisato storage="B_sifuku_L AB_3_L"]
[playcv storage="chisato_all_00390_048.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「那当然！这根手指，可是缝制圣衣——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……咦？」
[np]

[chisato storage="A_sifuku_L AB_10_L"]
[playcv storage="chisato_all_00390_049.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「啊……那、那是……我、我炸鸡的面衣可是很酥脆的，很擅长的！！」
[np]
[FACEHIDE]

[r]……圣衣炸鸡？话说回来，缝纫的话题到底扯到哪里去了
[np]

[chisato storage="D_sifuku_L CD_10_L"]
[playcv storage="chisato_all_00390_050.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「快、快点！赶紧走了啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，好……」
[np]

[char_erase name="chisato"]

[r]……之后，我们好不容易克服了几处难关
[np]

;//背景を遊園地bg18_01に
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「成功逃脱……！！」
[np]

[r]花了将近三十分钟，终于抵达出口。
[np]

[supica storage="A_sifuku_M AB_4_M"]
[playcv storage="supica_all_00390_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……太慢了」
[np]
[FACEHIDE]

[r]出口旁等候着的真珠星和澪音学姐，正百无聊赖地摆弄着手机。
[np]

[char_erase name="supica"]

[character name="ryuichi"]
【龙一】[r]「别这么说嘛。我们可是一路赶过来的对吧？」
[np]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_051.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「是、是啊……没错」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00390_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那么，剩下的就是葵和桃了……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]比想象中花费了更多时间，她们两个出来应该还要很久……
[np]

[r]啊对了。趁现在，要不问问看吧。
[np]

[character name="ryuichi"]
【龙一】[r]「……我说，绫濑」
[np]

;//小声
[chisato storage="B_sifuku_L AB_8_L"]
[playcv storage="chisato_all_00390_052.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「什、什么……？」
[np]
[FACEHIDE]

[r]在真珠星和澪音学姐闲聊的旁边，稍微压低声音问道。
[np]

[character name="ryuichi"]
【龙一】[r]「刚才在鬼屋里，是不是喊了奇怪的咒语？」
[np]

[chisato storage="A_sifuku_L AB_10_L"]
[playcv storage="chisato_all_00390_053.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「呜！？！？！？」
[np]
[FACEHIDE]

[r]面对我的提问，绫濑展现出超乎想象的动摇。
[np]

[character name="ryuichi"]
【龙一】[r]「就是那个，什么光啊、冈格尼尔之类的……」
[np]

[chisato storage="B_sifuku_M AB_11_M"]
[playcv storage="chisato_all_00390_054.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「不、不要说啦！！！那、那是小时候看的动画里的咒文啦……！当、当然现在完全不看了！？」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00390_055.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「只、只是刚好想起来而已！绝、绝对不是因为害怕才喊的！！？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_6_M"]
[playcv storage="chisato_all_00390_056.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_sifuku"]
【千圣】[r]「那、那个……有点，不，是相当混乱，不知不觉就说出来了！或者说……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……」
[np]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_all_00390_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「你们在说什么悄悄话？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_057.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「没、没什么事！真的没什么！！」
[np]
[FACEHIDE]

[r]小时候看过的动画咒文，在紧急时刻突然……算了，就当是这么回事吧。
[np]

[chisato storage="C_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00390_058.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「与、与其说这个！快到午饭时间了吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊确实。肚子早就饿得咕咕叫了……」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00390_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那等她们俩出来就开饭吧」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_all_00390_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「…赞成」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]之后过了５分钟、１０分钟……甚至１５分钟……
[np]

;//時間経過
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「…不对劲」
[np]

[r]明明应该排在我们后面的两个人，却迟迟不见踪影……
[np]

[r]其他客人陆续从出口现身，这到底是怎么回事……？
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_all_00390_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「……看来那两个人，是逃走了吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊？」
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00390_059.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「逃走了……？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_4_M"]
[playcv storage="mion_all_00390_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「我和真珠星、千圣和龙一君进去后……就算之后悄悄离开队伍，也不会被人发现对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊——」
[np]

[r]原来如此，怪不得怎么等都不来……
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「不过也好……等汇合之后，我可要好好捉弄她们一番……呵呵，呵呵呵呵……」
[np]
[FACEHIDE]

[r]……衷心希望到时候不要发展成中二病对决就好……
[np]

[char_erase name="mion chisato"]

;//ここまで
[jump target="*selectEnd"]

;//じっとしてる、を選んだ場合
*select3
[SetSJumpFlg storage="scenario/all/all_00390.ks" target="*SCJump" Runflg="0"]
[SetSJumpTarget storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select003900_0=2"]
[eval exp="f.love_supica=f.love_supica+1"]
[jump target="*selectC"]
*selectC

[r]主动指定谁也挺怪的……还是顺其自然吧。
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_all_00390_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「那么……我就和葵一起走吧？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_11_M"]
[playcv storage="aoi_all_00390_033.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「哦，有意思，魔女亲自指名吗！尽管放马过来！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以说打架到底是要怎样啊」
[np]

[char_erase name="aoi mion"]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00390_060.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「那、那……桃，你要不要跟我一起？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_all_00390_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「啊……好、好的！请多指教！」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[character name="ryuichi"]
【龙一】[r]「这么说来，我该……」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……」
[np]
[FACEHIDE]

[r]我走近正呆呆望着缓缓转动的摩天轮的真珠星。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，看来你要跟我组队了」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00390_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……嗯，知道了」
[np]
[FACEHIDE]

[char_erase name="supica"]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00390_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那我们就赶快去排队吧」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]跟着澪音学姐排进了鬼屋的队伍。
[np]

[r]之后过了不久，澪音前辈和葵、绫濑与桃酱依次走进里面……
[np]

[character name="ryuichi"]
【龙一】[r]「好，接下来该我们了……！」
[np]

[r]没过多久，就轮到我们了。
[np]

[character name="ryuichi"]
【龙一】[r]「走吧，真珠星」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

;//暗転
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[r]我和真珠星一起穿过黑色门帘进入鬼屋内部。
[np]

[r]不愧是鬼屋，冷气开得特别足。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星对鬼屋这种地方怎么看？」
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……没什么兴趣」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看到鬼怪或幽灵之类的不怕吗？」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00390_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……都是不科学的……为不存在的事物感到恐惧毫无意义」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘴上这么说，其实心里在害怕吧～……？」
[np]

[char_erase name="supica"]

[r]平时表情匮乏的真珠星，这种时候或许会显露本性……
[np]

[r]「呀啊啊！好可怕！！」这样尖叫着扑进我怀里之类的！
[np]

[r]好嘞，稍微试探一下好了……嘿嘿嘿……
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇啊啊啊啊啊啊啊啊！！真珠星背后有个苍白女幽灵啊啊啊啊啊啊啊！！」
[np]

[supica storage="C1_sifuku_M CD_4_M"]
[playcv storage="supica_all_00390_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……哪里？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？啊、不、刚才确实有一瞬间看到了……」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00390_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「大概……是龙一的错觉」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……嗯、也许吧……」
[np]

[r]……所谓对牛弹琴，说的就是这种情况吧。
[np]

[char_erase name="supica"]

[r]最终直到最后，真珠星别说尖叫，连声音都没发出来……
[np]

;//背景を遊園地bg18_01に
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//通常背景時
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]就这样无惊无险地……走到了鬼屋出口。
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00390_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「啊，出来了。怎么样？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个嘛……乐在其中吧，算是……」
[np]

[char_erase name="mion"]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00390_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]至于真珠星那边……只要看一眼她再次凝望摩天轮的侧脸，就能明白个中缘由了。
[np]

[character name="ryuichi"]
【龙一】[r]「呃、大家觉得怎么样？」
[np]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_061.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「嘛、嘛……也没传说中那么吓人啦，对吧？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_all_00390_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「是、是啊……确实呢……」
[np]
[FACEHIDE]

[r]总觉得桃酱的嘴唇隐约有些发青，是我的错觉吗……。
[np]

[char_erase name="momo chisato"]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00390_034.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「这、这种程度对本小姐来说……根本不算什么！」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00390_026.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「全程都在念诵咒文，闭着眼睛拼命往出口冲刺呢」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00390_035.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「呜哇啊啊啊！！别、别揭穿我啊魔女！」
[np]
[FACEHIDE]

[r]早知道如此，或许跟那种会好好害怕的人组队会更有趣吧……
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00390_027.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「差、差不多到时间了……该吃午饭啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、说的对。就这么办吧！」
[np]

[char_erase name="mion aoi"]

;//ここまで
[jump target="*selectEnd"]

;//合流地点
*selectEnd

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

;//背景を空_01に
[r]……后来，我们在美食广场用完午餐后……
[np]

[r]我们在时间允许的范围内，尽情享受了假日游乐园的欢乐时光。
[np]

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

;//JUMP:all_00400
[jump storage="scenario/all/all_00400.ks"]