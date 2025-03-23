[SCENESTART file=all_00440.ks]
;//all_00440
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/6(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00440_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「葵，这个能帮我搬到桌上吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00440_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「了解！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[r]到了晚上，晚餐的准备稳步推进。
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00440_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「这气味……今天是咖喱吗？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00440_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「是的。是放了很多夏季蔬菜的特制咖喱」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_all_00440_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「肚子饿啦——！还没？还没好吗——！？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00440_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「好好。又不是小孩子了，请再稍等片刻……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_all_00440_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「啊……？今天真珠星酱不在吗？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00440_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「啊，她刚才联系说去老地方看星星了」
[np]
[FACEHIDE]

[char_erase name="chisato satomi momo"]

[aoi storage="B_tokushu_M B_1_M"]
[playcv storage="aoi_all_00440_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「原来如此，是在和宇宙通信啊……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00440_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那就没办法啦。我们先吃吧」
[np]
[FACEHIDE]

[r]真珠星去看星星这件事，大家似乎已经习以为常了。
[np]

[char_erase name="mion aoi"]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00440_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「神原，能帮忙摆下勺子吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好嘞」
[np]

[char_erase name="chisato"]

[r]后天开始考试，下周开始发试卷，之后就要放暑假了…
[np]

[r]总感觉约定的一个月，会比预想中更快地流逝啊。
[np]

[r]不过这次应该没问题了吧…但我果然还是会在意这件事。
[np]

[r]不，现在更重要的是…得先集中精力应对眼前的考试。
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

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

[endif]


;//この時点で澪音の好感度が高い場合は、
;//JUMP:mion_00010へ
[if exp="f.love_mion>=2"]
	[SetSJumpFlg storage="scenario/all/all_00440.ks" target="*SCJump2" Runflg="1"]
	[SetSJumpTarget storage="" target="" Runflg="0"]

	[jump storage="scenario/mion/mion_00010.ks"]
[endif]

;//そうでない場合はバッドエンドへ
[SetSJumpFlg storage="scenario/all/all_00440.ks" target="*SCJump2" Runflg="1"]
[SetSJumpTarget storage="" target="" Runflg="0"]

[jump storage="scenario/bad/bad_00010.ks"]

