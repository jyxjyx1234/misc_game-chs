[SCENESTART file=mion_00640.ks]
;//mion_00640
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM04.ogg" time=1000]

;//TIME:昼
;//日付:8/10(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,tokushu
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「好热……」
[np]

[r]我拎着从便利店买的午饭，走在回宿舍的路上。
[np]

[r]本来以为今天要打一整天工……不过店长好像弄错了排班表，上午就结束工作了。
[np]

[r]突然多出来的半天假期，明明应该很开心……现在却怎么都高兴不起来。
[np]

[character name="ryuichi"]
【龙一】[r]「前辈应该不要紧吧……」
[np]

[r]打工时我满脑子都在想这件事。
[np]

[r]虽然前些日子就看她有些吃力，但这么明显陷入困境还是第一次……
[np]

;//背景を寮の前bg01_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]就这么想着事情，回过神来已经走到伏木庄了。
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了」
[np]

;//「ブレイジングダークフォース」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00640_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「这只手在发烫，呼唤着我去打倒他！——燃烧的黑暗波动——！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]

;//[mion storage="B_sifuku_M AB1_4_M"]
[playcv storage="mion_mion_00640_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「咕、居然是没见过的招式！？什么时候获得这种力量的……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="D_sifuku_M D_9_M" trans=false]
[aoi storage="A_tokushu_M A_4_M" trans=false]
[char_trans]
[playcv storage="momo_mion_00640_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「师傅！魔女现在畏缩了！现在正是好机会！！」
[np]
[FACEHIDE]

[r]……啊咧？
[np]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00640_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「好，一口气解决掉吧桃！」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_mion_00640_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「好的！沉睡于远古大地上的众神之力啊……啊、啊！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]注意到我的桃酱停止咏唱咒语，开始扭扭捏捏地害羞起来。
[np]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_mion_00640_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「神、神原先辈，欢迎回来……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我回来了。没事，继续继续吧」
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_mion_00640_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「好、好的……沉、沉睡于远古大地上的，众神之力啊……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00640_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「太慢了！！」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_mion_00640_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「呀啊！？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_mion_00640_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「桃！？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00640_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哼，你的魔力已被我右臂封印……这下再也无法使用咒文了……！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_mion_00640_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「可、可恶……！」
[np]
[FACEHIDE]

[char_erase name="mion aoi momo"]

[r]怎么，看起来还挺精神的嘛……也许不用那么担心了？
[np]

[r]虽然可能只是陪葵和桃酱散心，但转换心情确实很重要。
[np]

[character name="ryuichi"]
【龙一】[r]「好了，接下来……」
[np]

[r]看到前辈状态稍安的我正准备把买来的便当放进微波炉加热——
[np]

[mion storage="A_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00640_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「来吧，为地狱的灶台添火……上吧！翼神龙！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[r]按下微波炉按钮的瞬间，我几乎同时转头看向大家的方向……
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_mion_00640_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「怎、怎么可能……！？居然启动成功了！？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00640_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「咯咯咯……哈哈哈哈！！如何，这下你们阻止不了了吧……！？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00640_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「你这混蛋，翼神龙……你明白吗！？一旦启动它，这个世界就会迎来终结……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……用微波炉就会毁灭世界吗？」
[np]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_mion_00640_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「不是微波炉！那个地狱之灶是掌控人类生命的暗黑神器……！」
[np]
[FACEHIDE]

[r]原来如此……我是在用暗黑神器加热便当吗……。
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00640_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这样一来就只差献上祭品了……来吧，翼神龙！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？啊、等……！？」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_mion_00640_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「给、给我等等！！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

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

;//背景を澪音の部屋bg06_01に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

[r]突然被卷进中二对决，不知为何竟被绑架到前辈的房间里。
[np]

[fadeinbgm storage="sound/BGM06.ogg" time=1000]

[character name="ryuichi"]
【龙一】[r]「那、那个、前辈？我、我接下来还要吃午饭……」
[np]

[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00640_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「少废话……快、赶紧脱！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？啊、等、不要啊！？」
[np]

[r]不要啊你！哎、为什么我要被前辈脱衣服！？等、等等……！
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00640_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「没错，这就对了……来，继续仪式吧……嗯、噗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[r]接、接吻……！？虽然确实很像仪式，但要做到这种地步吗……！？
[np]

[mion storage="A_sifuku_L AB1_10_L"]
[playcv storage="mion_mion_00640_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_10_FACE_sifuku"]
【澪音】[r]「噗哈、嗯、啾……嗯嗯……吸溜、舔舐……」
[np]
[FACEHIDE]

[r]而且这根本不是普通接吻，连舌头都伸进来了啊……！前、前辈，为什么……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯嗯……！噗哈、前、前辈——嗯呜！？」
[np]

[mion storage="B_sifuku_L AB1_10_L"]
[playcv storage="mion_mion_00640_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_10_FACE_sifuku"]
【澪音】[r]「哈啊……嗯、啾……龙一……嗯、唔……啾、舔舐、吸溜……」
[np]
[FACEHIDE]

[r]等、等一下……前辈，你的眼神看起来都不聚焦了啊……
[np]

[r]难、难道说……是积累太多疲劳和烦恼，整个人都不正常了……！？
[np]

;//ドア越し
[playcv storage="momo_mion_00640_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真、真的要踏入魔女的居所吗……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

;//ドア越し
[playcv storage="aoi_mion_00640_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「既然地狱之灶已经启动，除了彻底消灭那家伙，已经没有拯救这个世界的方法了！」
[np]
[FACEHIDE]

[r]等、等等等等！现在闯进去的话，各种事情都会变得无法收拾……！
[np]

[mion storage="B_sifuku_L AB1_10_L"]
[playcv storage="mion_mion_00640_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_10_FACE_sifuku"]
【澪音】[r]「嗯啾、吸溜……噗啾、嗯、嗯嗯……吸溜、舔舐……」
[np]
[FACEHIDE]

[r]明明都说会出大事了，前辈却完全没有停手的意思啊！！
[np]

;//ドア越し
[playcv storage="aoi_mion_00640_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「好、一、二的三就上！一、二的……」
[np]
[FACEHIDE]

[r]这种光景绝不能让他们两人看见——
[np]

[char_erase name="mion"]

[playcv storage="aoi_mion_00640_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「三！！！」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_9_M" trans=false]
[aoi storage="C_tokushu_M CD_9_M" trans=false]
[char_trans]
[playcv storage="momo_mion_00640_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「觉、觉悟吧魔女！你们的野心——」
[np]
[FACEHIDE]

[r]……就在桃酱说到一半时，房间的时间戛然而止。
[np]

[char_erase name="momo aoi"]

[mion storage="B_sifuku_L AB1_10_L"]
[playcv storage="mion_mion_00640_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_10_FACE_sifuku"]
【澪音】[r]「嗯、嗯嗯……嗯？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_mion_00640_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「哎……哎？那、那个、哎……这、这是……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_mion_00640_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「这……这、这……这……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00640_013.ogg" name="aoi"]
[character name="aoi"]
[quake time=500]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「你们在做什么啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！？？？？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是这样的葵！这是、那个！前辈突然就……」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_mion_00640_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「这、这是色色的事对吧！？神原先辈居然、上、上半身赤裸着、接、接吻呜呜呜呜呜！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现在穿！马上就穿！好啦ＯＫ！看，这样就不算赤裸了！是平时的我啊桃酱！！」
[np]

[momo storage="D_sifuku_S D_10_S"]
[playcv storage="momo_mion_00640_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「不要啊啊啊啊！！请不要靠近我啊啊啊啊！！！」
[np]
[FACEHIDE]

[r]结果我重新穿好便服想展示自己很健全，反而引来了尖叫……！
[np]

[char_erase name="momo aoi"]

[mion storage="D_sifuku_M CD1_5_M"]
[playcv storage="mion_mion_00640_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「真是的，你们两个吵死了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「正常人看到那种场面都会叫的好吗！」
[np]

[r]而且刚才还在正经中二对决，突然就变成成人展开啊！？
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00640_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「不过是为了献祭而进行的、从口中吸取灵魂的仪式而已……对吧？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_mion_00640_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「诶……原、原来是这样吗？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_mion_00640_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「灵、灵魂…这么一说确实有点像仪式…」
[np]
[FACEHIDE]

[r]等等，你们两个？这时候接受设定也太奇怪了吧？
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00640_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哼……这点小事就慌张，果然还是小孩子呢。嘻嘻……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_10_M"]
[playcv storage="aoi_mion_00640_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_tokushu"]
【葵】[r]「……！！」
[np]
[FACEHIDE]

[r]那个，澪音前辈？这种情况下还是不要太…特别是别挑衅葵……
[np]

[char_erase name="aoi momo mion"]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_mion_00640_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「别、别把我当小孩子啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「唔哦哦哦！？」
[np]

[r]葵突然扑了上来，我失去平衡连人带椅摔倒在地。
[np]

[aoi storage="C_tokushu_L CD_3_L"]
[playcv storage="aoi_mion_00640_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「等、等等翼神龙……！　被魔女仪式侵蚀的身体……我、我来帮你净化！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈！？　等、等一下，你说净化该不会是……」
[np]

[aoi storage="B_tokushu_L B_4_L"]
[playcv storage="aoi_mion_00640_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「既然你和魔女交合导致身体被邪恶侵蚀……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_L CD_8_L"]
[playcv storage="aoi_mion_00640_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「那、那只要和我交合！！　你就能恢复原状了啊啊啊啊啊！！！？？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么可能恢复啊啊啊啊啊啊啊啊啊！！！！　话说你自己讲着都混乱了吧！！」
[np]

[playcv storage="momo_mion_00640_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「请、请等一下师傅！！　如果师傅要做的话，那个、那个……我、我也要！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「连桃酱也！？」
[np]

[char_erase name="aoi"]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00640_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「呵呵……事情变得有趣起来了呢……」
[np]
[FACEHIDE]

[r]不不不，这发展绝对有问题吧！　澪音前辈已经完全坏掉了对吧！？　脑子都沸腾了对吧！？
[np]

[r]这么说来…能解决这个局面的…只剩下我了吗…！
[np]

[char_erase name="mion"]

;//全力で抗う、を選んだ場合
[character name="ryuichi"]
【龙一】[r]「开什么玩笑啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_mion_00640_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「呀！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我才不要当祭品！我可是神龙翼神龙！就让我用这对翅膀飞向天涯海角吧！！嗷嗷嗷嗷嗷！！」
[np]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_mion_00640_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「神、神原前辈！？」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]冲出房间…
[np]

;//背景を寮の前bg01_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]冲出宿舍…
[np]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「哈…哈啊、哈…哈啊、哈啊…！」
[np]

[r]全力狂奔一段距离后回头…确认没有追兵，双手撑住膝盖大口喘气。
[np]

[character name="ryuichi"]
【龙一】[r]「那…那到底是什么诡异的氛围啊…」
[np]

[r]要是刚才任由事态发展下去…到底会变成怎样…
[np]

[r]虽然有点好奇…但不行…总觉得会引发各种麻烦。
[np]

[r]……等风波过去之前，先随便四处逛逛吧……。
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

[jump storage="scenario/mion/mion_00670.ks"]