[SCENESTART file=all_00250.ks]
;//all_00250
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:6/22(月)
;//CH:竜一,seifuku
;//CH:もも,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「嗯……嗯嗯……？」
[np]

[r]隐约听到下课铃声，我缓缓撑起身体。
[np]

[r]我居然睡着了……哎？班会课已经结束了？
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[character name="ryuichi"]
【龙一】[r]「话说教室里都没人了……！」
[np]

[r]教室里虽然还剩零星几人，但已不见葵、绫濑、爽史和茜的身影。
[np]

[r]虽然希望她们能叫醒我……不过也可能是我睡得太死，根本醒不过来。
[np]

[character name="ryuichi"]
【龙一】[r]「好嘞……」
[np]

[r]留在这里也没事做，我也回家吧。
[np]

;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]换下室内鞋穿过操场——
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[momo storage="C_seifuku_S C_1_S"]

[character name="ryuichi"]
【龙一】[r]「咦……」
[np]

[momo storage="A_seifuku_S AB_7_S"]
[playcv storage="momo_all_00250_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]在校门旁发现了表情凝重呆立着的桃酱。
[np]

[character name="ryuichi"]
【龙一】[r]「哟，桃酱」
[np]

[char_erase name="momo"]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_all_00250_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「啊……神、神原前辈，您好……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在等什么人吗？」
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_all_00250_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「哎……？啊、不、不、不是这样的……」
[np]
[FACEHIDE]

[r]虽然是对着桃酱的眼睛说话，但她的视线始终无法聚焦。
[np]

[r]虽然情有可原，但看来她果然还是对我抱有戒心……
[np]

[r]不过话说回来，要是我因此也畏手畏脚的话，距离就永远无法拉近。无论何时都要积极主动，必须保持主动进攻的姿态！
[np]

[character name="ryuichi"]
【龙一】[r]「那你要不要和我一起回家？」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_all_00250_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「哎……哎哎哎！？」
[np]
[FACEHIDE]

[r]我努力摆出自认为最灿烂的笑容，用尽可能明朗的声音说出这句话，然而——
[np]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_all_00250_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「那、那个、这个……就是说，那个，这个……」
[np]
[FACEHIDE]

[r]从桃酱的反应来看，或许反而显得不自然了……
[np]

[momo storage="A_seifuku_M AB_4_M"]
[playcv storage="momo_all_00250_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「那、那个、我……其实，我刚好要去车站前办点事……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……这样啊……真遗憾」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_all_00250_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「但、但是但是！我绝对不是讨厌和神原前辈一起回家，绝对不是这样的……！」
[np]
[FACEHIDE]

[r]桃酱不动声色地帮我打圆场，让我心头一暖。
[np]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_all_00250_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「其、其实我现在……正好有件烦恼的事……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「烦恼的事？」
[np]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_all_00250_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「是、是的……那个，车站前有家叫Ｒｏｕｎｄ喵的大型游戏中心……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_all_00250_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「那里的抓娃娃机里……现在有只我特别想要的玩偶」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦哦，是说有目标奖品啊」
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_all_00250_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「是的……可是我完全不在行这种游戏……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_4_M"]
[playcv storage="momo_all_00250_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「虽然想要，但花太多钱也不好……所以正在犹豫该怎么办」
[np]
[FACEHIDE]

[r]原来如此……难怪刚才看到桃酱时，总觉得她在为什么事情烦恼的样子。
[np]

[character name="ryuichi"]
【龙一】[r]「对了，那个玩偶是……？」
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_all_00250_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「啊、那个……是《漆黑梦魇～无垢黑十字架～》这部作品里登场的蝙蝠造型吉祥物」
[np]
[FACEHIDE]

[r]无垢黑十字架……嗯，大概能想象出来，不过还是……
[np]

[character name="ryuichi"]
【龙一】[r]「那是什么样的作品呢？」
[np]

[momo storage="A_seifuku_L AB_2_L"]
[playcv storage="momo_all_00250_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「您、您想知道吗！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃？啊、啊……」
[np]

[momo storage="C_seifuku_L C_9_L"]
[playcv storage="momo_all_00250_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「《漆黑梦魇》简称「黑梦」，是我和葵小姐最爱的轻小说……！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_L AB_2_L"]
[playcv storage="momo_all_00250_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「不仅已经动画化大获好评决定制作第二季，连剧场版企划都在推进的超人气作品！」
[np]
[FACEHIDE]

[r]那个，你突然变得好激动啊？
[np]

[momo storage="C_seifuku_L C_2_L"]
[playcv storage="momo_all_00250_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「黑梦讲述本应死于交通事故的主人公，获得非人身体与能力重返现世的故事……！」
[np]
[FACEHIDE]

[momo storage="D_seifuku_L D_9_L"]
[playcv storage="momo_all_00250_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「在人类与异能者夹缝中挣扎的主人公，其苦悩与葛藤被细腻刻画——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「停、停一下桃酱！明白了，我完全明白了！」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_all_00250_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「啊……对、对不起！我……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不不用了。这样反而能感受到桃酱你真的很喜欢那个……布菈梅亚？」
[np]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_all_00250_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「唔嗯……」
[np]
[FACEHIDE]

[r]桃酱用双手捂住通红的脸颊，轻轻摇了摇头。
[np]

[char_erase name="momo"]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]
	[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[endif]


[r]抓娃娃机啊……
[np]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=那我来帮你夹上来吧！ jump target="*select1"]
	[select_button text=不过自作主张会不会反而添麻烦…… jump target="*select2"]
[select_end]

*select1
[SetSJumpFlg storage="scenario/all/all_00250.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00270.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00250_0=0"]
[eval exp="f.love_momo=f.love_momo+1"]
[jump target="*selectA"]

;//なら、俺がとってやろう！、を選んだ場合
*selectA
[character name="ryuichi"]
【龙一】[r]「好……那我来帮你夹上来吧！」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_all_00250_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「其实我在之前的城市被称作「吉祥物猎手之龙」……」
[np]

[character name="ryuichi"]
【龙一】[r]「凡是我经过的游戏厅奖品都会被清空……技术高超到被各大游戏厅集体封杀！」
[np]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_all_00250_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「居、居然这么厉害！？」
[np]
[FACEHIDE]

[r]是假的。
[np]

[character name="ryuichi"]
【龙一】[r]「自从前阵子决定隐退后就没再碰过了……不过就当是找回当年的手感……」
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_all_00250_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「那、那……可以拜托你吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，交给我吧！」
[np]

[char_erase name="momo"]

[r]……希望这么做能消除桃酱对我的戒心……
[np]

[r]说完全没有下流的想法那是假话。但是……
[np]

[r]虽然抛开算计之类的想法，但确实纯粹地想要帮助陷入困境的桃酱。
[np]

[r]来吧，等着吧蝙蝠……！我定要抓住你这在暗夜中振翅的家伙！！
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

;//JUMP:all_00260
[jump storage="scenario/all/all_00260.ks"]

;//ここまで

;//出過ぎた真似するのも、逆に悪いかな……、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00250.ks" target="*SCJump" Runflg="0"]
[SetSJumpTarget storage="scenario/all/all_00270.ks" target="*SCJump" Runflg="1"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00250_0=1"]
[jump target="*selectB"]

*selectB
[r]太过张扬会不会反而不好……
[np]

[character name="ryuichi"]
【龙一】[r]「这样啊……希望能顺利抓到那个玩偶」
[np]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_all_00250_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊、好的……我、我会努力的……！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_all_00250_025.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「那、那我……这就去了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，加油！」
[np]

[char_erase name=momo to=left time=800 fade=true]

[r]目送着带着一副奔赴战场的表情的桃酱，朝着站前方向走去——
[np]

[momo storage="C_seifuku_S C_10_S"]
[playcv storage="momo_all_00250_026.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「呀！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]……目送她绊了一跤险些摔倒，又装作没事般跑开的身影。
[np]

[r]好了……我也该回去了吧。
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

;//JUMP:all_00270
[jump storage="scenario/all/all_00270.ks"]