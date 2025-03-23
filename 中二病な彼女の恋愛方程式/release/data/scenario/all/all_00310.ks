[SCENESTART file=all_00310.ks]
;//all_00310
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:夜
;//日付:6/25(木)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:聖水,sifuku

[r]拒绝了澪音前辈可疑的邀请，回到了客厅。
[np]

[character name="ryuichi"]
【龙一】[r]「……那、那个……」
[np]

[r]不、不会吧……？圣水小姐居然在看新闻！？
[np]

[playcv storage="satomi_all_00310_001.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「咕嘎……真珠……嗯嘎……」
[np]
[FACEHIDE]

[r]什么嘛，原来在睡觉啊……不过也是。
[np]

[r]那现在的话，就算我掌握频道的主导权也是可以原谅的吧。好……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[supica storage="C1_sifuku_S CD_1_S" relx= -300]
[playcv storage="supica_all_00310_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]正当我准备悄悄拿走圣水小姐身旁的遥控器时……发现真珠星就在玄关附近。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，你在干什么？」
[np]

[char_erase name="supica"]

[r]对于我的问题，真珠星往这边瞥了一眼。
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……真珠星，要出去……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「出去？这个时间点，为什么还要……啊，是想看星星吗？」
[np]

[r]看来我的猜测是正确的，真珠星轻轻点了点头。
[np]

[supica storage="A_sifuku_M AB_4_M"]
[playcv storage="supica_all_00310_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「但是……被会吸取生命体血液的昆虫阻挡，想出却出不去」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「吸、吸血……！？那是什么恐怖生物啊！」
[np]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_all_00310_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……附带说明，如果被这种昆虫袭击，皮肤会残留瘙痒感」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是蚊子啊！别吓唬人啊！！」
[np]

[supica storage="B2_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……综上所述，陷入困境……」
[np]
[FACEHIDE]

[r]真珠星小声嘀咕着，紧紧抱住她最喜欢的玩偶——阿斯特拉尔。
[np]

[character name="ryuichi"]
【龙一】[r]「驱虫喷雾之类的，没有准备吗？」
[np]

[supica storage="C1_sifuku_M CD_5_M"]
[playcv storage="supica_all_00310_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「……那个东西，好恶心……不想用」
[np]
[FACEHIDE]

[r]说恶心……要是被驱虫喷雾的研发人员听到会哭的吧……
[np]

[char_erase name="supica"]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]

[endif]


[r]陷入困境呢……
[np]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=那我来保护你吧 jump target="*select1"]
	[select_button text=这样啊……加油吧 jump target="*select2"]
[select_end]

*select1
[SetSJumpFlg storage="scenario/all/all_00310.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00360.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00310_0=0"]
[eval exp="f.love_supica=f.love_supica+1"]
[jump target="*selectA"]

;//なら、俺が守ってやろう、を選んだ場合
*selectA
[character name="ryuichi"]
【龙一】[r]「那我来保护你吧」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我来保护真珠星免受那些恐怖昆虫的侵害。这样一来，你就能安心看星星了吧？」
[np]

[supica storage="C1_sifuku_M CD_11_M"]
[playcv storage="supica_all_00310_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……为什么你要做这种事？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「你……龙一为什么要保护真珠星？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个……」
[np]

[r]被真珠星直勾勾地盯着，一时不知该如何回答。
[np]

[character name="ryuichi"]
【龙一】[r]「也没什么特别的理由……硬要说的话，就是没什么特别的理由……就是下意识想这么做」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「下意识……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「人类这种生物啊，有时候就是会被言语解释不清的情感驱动着行动的。好了，走吧！」
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……知道了」
[np]
[FACEHIDE]

[char_erase name="supica"]

;//背景を寮の前bg01_03に
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
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[r]刚踏出室外，六月底的夜风裹挟着潮湿闷热的空气黏上肌肤。
[np]

[supica storage="C1_sifuku_M CD_3_M"]
[playcv storage="supica_all_00310_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「嗯，天气不错……这样的话，能看得很清楚」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看星星要在这里？」
[np]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_all_00310_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「不是……要去河滩那边。那边视野更好」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「明白」
[np]

[char_erase name="supica"]

[r]遵循真珠星的意愿，我们朝着河滩方向迈开脚步。
[np]

;//背景を川原bg14_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「哇啊……」
[np]

[r]虽然之前来过这里两次……但在这个时间段造访还是头一遭。
[np]

[r]夜晚的河滩倒也别有一番风情，感觉挺不错的。
[np]

[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「喂，真珠星——」
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

;//ＣＧ挿入
[CG cgno=03 sabunno=01]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[r]回头望去，映入眼帘的是正凝望夜空的美少女。
[np]

[r]美得如同一幅画作般的光景……一瞬间，我几乎忘了眼前的人是真珠星。
[np]

[playcv storage="supica_all_00310_014.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「………………」
[np]

[r]来自夜空的月光与河面反射的波光，共同映照着真珠星的身姿。
[np]

[r]虽是平淡无奇的景象……但在我的眼中，却显得格外神秘。
[np]

[playcv storage="supica_all_00310_015.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一，飞起来了……」
[np]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[playcv storage="supica_all_00310_016.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「之前说的虫子……袭击过来了」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊……真的假的！已经来了吗！」
[np]

[r]既然说了要保护真珠星，就必须好好履行职责才行！
[np]

[r]不过理所当然的，夜色中根本看不清……！只能紧盯真珠星裸露在外的肌肤部位！
[np]

[CG cgno=03 sabunno=02]

[playcv storage="supica_all_00310_017.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一，那就是夏季大三角……」
[np]

[character name="ryuichi"]
【龙一】[r]「呃？啊、啊啊！」
[np]

[playcv storage="supica_all_00310_018.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「天津四和织女星与牛郎星……分别属于天鹅座、天琴座、天鹰座的……」
[np]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]现在听到振翅声了……也就是说蚊子在我耳边！？
[np]

[CG cgno=03 sabunno=03]

[playcv storage="supica_all_00310_019.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一，好好看星星……！」
[np]

[character name="ryuichi"]
【龙一】[r]「别强人所难啊！我在和蚊子战斗呢！」
[np]

[playcv storage="supica_all_00310_020.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……消灭它」
[np]

[character name="ryuichi"]
【龙一】[r]「知道了知道了！什么！？天鹅座的德布！？」
[np]

[playcv storage="supica_all_00310_021.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「错了，是天津四。它旁边那个是……」
[np]

[character name="ryuichi"]
【龙一】[r]「！！」
[np]

[r]找、找到了……！真珠星手臂上停着蚊子！！
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[character name="ryuichi"]
【龙一】[r]「看招！！」
[np]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[supica storage="C1_sifuku_M CD_8_M"]
[playcv storage="supica_all_00310_022.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_8_FACE_sifuku"]
[char_jump name=supica]
【真珠星】[r]「呀啊！？」
[np]
[FACEHIDE]

[r]伴随着清脆的响声，受惊的真珠星猛然甩动手腕。
[np]

[char_erase name="supica"]

[r]好，这下肯定解决了……！我作为保镖的职责算是完美履行——
[np]

[character name="ryuichi"]
【龙一】[r]「……啊咧」
[np]

[r]月光映照下的掌心里……至少没有看到任何消灭蚊子的痕迹。
[np]

[supica storage="A_sifuku_M AB_4_M"]
[playcv storage="supica_all_00310_023.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这不能怪我啊！我也尽力了好吗！？」
[np]

[supica storage="C1_sifuku_M CD_4_M"]
[playcv storage="supica_all_00310_024.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「好好看星星……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还在说这个！？」
[np]

[fadeoutbgm time="1000"]

;//ＣＧ挿入
[CG cgno=03 sabunno=04]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[playcv storage="supica_all_00310_025.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「这个季节能看到天蝎座的心宿二……」
[np]

[playcv storage="supica_all_00310_026.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「还有它身旁的蛇夫座……」
[np]

[r]……嗯？
[np]

[playcv storage="supica_all_00310_027.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「占星术常用的十二星座体系，可能即将增加为十三个星座……」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、是啊……好像听说过」
[np]

[playcv storage="supica_all_00310_028.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「蛇夫座确实位于黄道轨迹上的星座……但并未被纳入黄道十二星座体系……」
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[CG cgno=03 sabunno=03]

[playcv storage="supica_all_00310_029.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一？怎么了……？」
[np]

[character name="ryuichi"]
【龙一】[r]「没、没什么……只是觉得真珠星妳对星星真是充满热情啊……」
[np]

[playcv storage="supica_all_00310_030.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「哎……？」
[np]

[character name="ryuichi"]
【龙一】[r]「平时沉默寡言的真珠星居然这么能说……让我有点吃惊」
[np]

[playcv storage="supica_all_00310_031.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「…………」
[np]

[r]对我的话，真珠星没有做出任何特别反应……只是静静仰望着星空。
[np]

[CG cgno=03 sabunno=01]

[playcv storage="supica_all_00310_032.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「星辰……很美好……从儿时起就……」
[np]

[playcv storage="supica_all_00310_033.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「其他事物……并非厌恶……只是没有兴趣……」
[np]

[playcv storage="supica_all_00310_034.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「所以……我不知道该说什么好……」
[np]

[character name="ryuichi"]
【龙一】[r]「……真珠星……」
[np]

[r]这是真珠星第一次向我表露的内心世界——
[np]

;//背景表示
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[character name="ryuichi"]
【龙一】[r]（啊……！）
[np]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[r]这、这次有只蚊子停在真珠星的脸颊上……！
[np]

[r]冷静点，冷静点我……要是失手的话，可能会犯下掌掴女孩子脸部的重罪啊……！
[np]

[r]小、小心点，小心点——
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[quake time="500"]

[supica storage="C1_sifuku_M CD_8_M"]
[playcv storage="supica_all_00310_035.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_8_FACE_sifuku"]
[char_jump name=supica]
【真珠星】[r]「呀……！」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]由于过分关注真珠星的脸颊，完全没注意到脚下的小土坑。
[np]

[r]结果当我快要扑倒在真珠星身上时，在千钧一发之际勉强撑住了身体——
[np]

[supica storage="B1_sifuku_L AB_8_L"]
[playcv storage="supica_all_00310_036.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「嗯啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[r]作为代价，我的右手……碰、碰到真珠星的胸部了——
[np]

[character name="ryuichi"]
【龙一】[r]「哇啊啊啊啊啊啊啊啊啊！！！」
[np]

[supica storage="B1_sifuku_M AB_8_M"]
[r]像同性相斥的磁铁般，慌慌张张地把手抽了回来。
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起真珠星……！刚、刚才那个是……！！」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_037.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这是事故啊，绝对不是故意这么做的——」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_038.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……龙一，在慌张什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「因、因为刚才我，那个……碰、碰到真珠星的胸……」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_039.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……没关系……比起之前的，不疼……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？啊、啊啊……」
[np]

[char_erase name="supica"]

[r]不，重点不是疼不疼的问题……其实是想说碰到你胸部真的很抱歉……
[np]

[r]对真珠星来说，连那种事都无所谓……是没兴趣的意思吗……？
[np]

[r]那样的话，倒是帮大忙了……
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_040.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……嗯，满足了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样就行了吗……？」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_041.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「嗯……回去」
[np]
[FACEHIDE]

[char_erase name=supica to=left time=800 fade=true]

[r]她轻声说完这句话，真珠星迈步朝宿舍走去。
[np]

[r]我也紧随其后，两人离开了河滩。
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=3]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

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
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//背景を寮のリビングbg02_03に
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「我回来了——」
[np]

[r]就这样和真珠星回到宿舍。嗯，圣水小姐还在睡觉呢。
[np]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_all_00310_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「啊……欢、欢迎回来……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我回来了，桃酱」
[np]

[char_erase name="momo"]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00310_042.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……我回来了」
[np]
[FACEHIDE]

[char_erase name=supica to=left time=800 fade=true]

[r]待在客厅的桃酱……咦，怎么脸有点红？
[np]

[character name="ryuichi"]
【龙一】[r]「桃酱，你怎么了？」
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_all_00310_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「噫……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你脸通红……该不会是感冒了吧？」
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_all_00310_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「啊……不、不是的……这个是，那个……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00310_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「我、我刚才……那个……受澪音学姐所托做按摩，就是揉肩的时候……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00310_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「那、那时候……那个……发、发生了……各、各种状况……」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_all_00310_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「失、失陪了呜呜呜！」
[np]
[FACEHIDE]

[char_erase name=momo to=left time=800 fade=true]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]桃像是逃跑一般回到了自己的房间。
[np]

[r]给澪音学姐按摩……看来果然是某种陷阱啊。
[np]

[r]这么说来……我是不是对桃酱做了什么不好的事啊……。
[np]

;//ここまで
[jump target="*selectEnd"]

;//そうか……頑張れよ、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00310.ks" target="*SCJump" Runflg="0"]
[SetSJumpTarget storage="scenario/all/all_00360.ks" target="*SCJump" Runflg="1"]

[character name="ryuichi"]
【龙一】[r]「这样啊……加油吧」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00310_043.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……嗯」
[np]
[FACEHIDE]

[char_erase name=supica to=left time=800 fade=true]

[r]真珠星只轻轻点了点头，便朝宿舍外走去。
[np]

[r]好了……有没有什么有趣的综艺节目可看啊。
[np]

[jump target="*selectEnd"]

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

;//JUMP:all_00320
[jump storage="scenario/all/all_00320.ks"]