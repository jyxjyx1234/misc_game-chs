[SCENESTART file=all_00150.ks]
;//all_00150
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:6/16(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_all_00150_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「那我们就开动吧」
[np]
[FACEHIDE]

[r]第二天早上。早餐准备完毕，所有人都已就座……
[np]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「咦……？」
[np]

[mion storage="D_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00150_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「怎么了，龙一君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真珠星不在……没关系吗？」
[np]

[char_erase name="mion"]

[r]当全员就座后，发现少了一人。（圣水从一开始就没算在内）
[np]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00150_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「因为不管怎么叫她都醒不过来……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00150_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「真珠星需要长时间睡眠……似乎是需要大量时间恢复体力的种族」
[np]
[FACEHIDE]

[r]啊，她早上很虚弱吧……昨天好像说过类似的话
[np]

[character name="ryuichi"]
【龙一】[r]「就让她这么睡着吗？」
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00150_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「怎么可能。等大家吃完我再去叫一次，今天你们先出发吧」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00150_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「明白！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[r]……嗯？等等。绫濑和真珠星不在，大家一起的话就是说……
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//時間経過
;//背景を通学路bg13_01に
[aoi storage="B_seifuku_M B_1_M"]
[playcv storage="aoi_all_00150_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
【葵】[r]「好，看来今天没有秘密组织的跟踪了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……果然变成这样了啊……」
[np]

[char_erase name="aoi"]

[r]我与葵、桃酱、澪音学姐组成队伍，走在通往学院的路上。
[np]

[r]虽说这三个人……不过桃酱的情况似乎没那么严重……
[np]

[r]剩下两人在设定上原本就是对立的立场……对吧
[np]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00150_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「怎么了，龙一君？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没……」
[np]

[char_erase name="mion"]

[r]清晨这个时段，上学路上已能零星看到其他学生的身影……
[np]

[r]拜托别在这里玩什么黑暗力量的过家家游戏——
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00150_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「呃……！」
[np]
[FACEHIDE]

[r]突然葵按住右手开始痛苦呻吟……等等，什么情况！？
[np]

[character name="ryuichi"]
【龙一】[r]「喂、喂！怎么了？」
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_all_00150_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「别、别碰我龙一……呜！右手…右手在抽痛……！」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00150_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「难道是被魔女的邪气刺激到了吗……快平息下来……给我安分点！」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_4_M"]
[playcv storage="aoi_all_00150_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「这可是上学路……不能让普通市民…牵连到其他学生……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]葵正拼命按住自己不停颤抖（大概是她自己搞的鬼）的右手，看起来十分痛苦
[np]

[r]我刚想着别再闹了……结果突然来这出！
[np]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_all_00150_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「咯咯咯……果然还是太嫩了…在公众场合就力量失控」
[np]
[FACEHIDE]

[r]住手！前辈别跟着起哄啊！！
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00150_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「闭嘴……！追根究底，还不是你给我下的这诅咒……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_all_00150_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「那、那个…两、两位现在还是……」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00150_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「堕天圣职者……！快给我的手臂施治愈魔法……！」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_all_00150_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「呃、呃……！？那、那个那个……」
[np]
[FACEHIDE]

[r]困惑的堕天圣职者……不对，是桃酱瞬间瞥了我一眼，随即低下头去。
[np]

[character name="ryuichi"]
【龙一】[r]「……嗯」
[np]

[char_erase name="momo aoi mion"]

[r]或许是因为我们相识不久，又或者是在公众场合……
[np]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]
	[wait time="500"]
	[SYSTEMMENU]

	[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[endif]



[r]无论如何，桃酱似乎对于在他人面前展露中二病的一面感到羞耻。既然如此……
[np]

;//選択肢
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=变身成翼神龙来教训她 jump target="*select1"]
	[select_button text=一旦介入就输了……！ jump target="*select2"]
[select_end]

*select1
[SetSJumpFlg storage="scenario/all/all_00150.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00170.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00150_0=0"]
[jump target="*selectA"]

*select2
[SetSJumpFlg storage="scenario/all/all_00150.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00170.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00150_0=1"]
[jump target="*selectB"]

;//ゴッド・ドラゴンになって窘める、を選んだ場合
*selectA

[r]没办法，只好这样……
[np]

[character name="ryuichi"]
【龙一】[r]「唔、唔嗯……！……住手吧，葵……」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00150_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「……！你、你这家伙……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没错……此刻，我正直接在你脑海中对话」
[np]

[r]虽然实际上他正在大声用嘴巴说话。
[np]

[character name="ryuichi"]
【龙一】[r]「冷静下来……现在和魔女交手的话，会夺走无辜学生的性命」
[np]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_all_00150_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00150_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「我、我知道的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「让心境平静下来，保持平常心……你能做到的……」
[np]

[aoi storage="A_seifuku_M A_4_M"]
[playcv storage="aoi_all_00150_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「明、明白了……我试试看……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……如何……？」
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_all_00150_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「啊，总算控制住了……抱歉，翼神龙……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……多加小心」
[np]

[r]好……这样应该能暂时渡过眼前的危机了。
[np]

[char_erase name="aoi momo"]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_all_00150_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「哎呀，翼神龙啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了……？」
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00150_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「没什么，随便说说……呵呵」
[np]
[FACEHIDE]

[r]你想说的我感同身受。但请什么都别说！
[np]

[char_erase name="mion"]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_all_00150_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「………………」
[np]
[FACEHIDE]

[char_erase name="momo"]

;//ここまで
[jump target="*selectEnd"]

;//関わったら負けだ……！、を選んだ場合
*selectB

[r]不行，一旦掺和就输了！这里要华丽地无视掉！
[np]

[character name="ryuichi"]
【龙一】[r]「喂，再玩下去要迟到了……！」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00150_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「才不是在玩！放任魔女为所欲为的话，这座城镇就要……」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_all_00150_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「呵呵……放心吧，我可不像你那么愚蠢……才不会在这种地方随便解放力量」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_all_00150_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「不过……记住这点。只要我有心，莫说这座城镇，国家……甚至毁灭世界都易如反掌」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_all_00150_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「唔……」
[np]
[FACEHIDE]

[r]真珠星也罢，澪音学姐也罢……伏木庄里居然有两个掌握世界命运的女孩。真是不得了。
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00150_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「呵呵，呵呵呵……啊哈哈哈哈！！」
[np]
[FACEHIDE]

[r]澪音学姐发出神秘大笑后，率先迈步前行。
[np]

[char_erase name="mion aoi"]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_all_00150_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「啊……我、我们也快走吧，不然要迟到啦……！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_all_00150_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「嗯，是啊……」
[np]
[FACEHIDE]

[r]……还好最后没闹出大乱子。
[np]

[char_erase name="aoi"]

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

;;//JUMP:all_00160
[jump storage="scenario/all/all_00160.ks"]