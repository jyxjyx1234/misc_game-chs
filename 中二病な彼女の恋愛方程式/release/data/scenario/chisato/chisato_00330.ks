[SCENESTART file=chisato_00330.ks]
;//chisato_00330
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:7/17(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[character name="ryuichi"]
【龙一】[r]「终于等到这一天了……！」
[np]

[r]１７日的星期五。在清晨的上学路上，我情不自禁地握紧了拳头。
[np]

[supica storage="C1_seifuku_M CD_5_M"]
[playcv storage="supica_chisato_00330_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「……好热……不想走路……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_9_M"]
[playcv storage="momo_chisato_00330_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「加油啊真珠星酱，只要今天结束就是暑假了……」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]没错，今天就是期盼已久的结业典礼之日。也就是说，下午开始就要迎来暑假了。
[np]

[r]和她一起度过的第一个暑假……光是想想就让我心潮澎湃！
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_chisato_00330_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「到今天你们同居已经三天了……有什么新进展吗？」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_9_M"]
[playcv storage="chisato_chisato_00330_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「进、进展……哪有什么进展啊！」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_7_M"]
[playcv storage="mion_chisato_00330_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「哎呀，没有吗？明明都住在同一个房间了……你们关系还挺冷淡的嘛」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00330_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「不、不是这样的啦……只是没有前辈想象的那种事发生」
[np]
[FACEHIDE]

[r]走在住宅区里，千圣应付着前辈试探性的询问。
[np]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_chisato_00330_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「我还以为你们同居第一天就会做羞羞的事情呢」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

;//合わせ
[momo storage="A_seifuku_M AB_8_M" trans=false]
[aoi storage="A_seifuku_M A_7_M" trans=false]
[char_trans]
[playcv storage="chisato_mix_00330_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵＆桃】[r]「啊！？」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[mion storage="D_seifuku_M CD1_10_M" trans=false]
[chisato storage="B_seifuku_M AB_10_M" trans=false]
[char_trans]
[playcv storage="chisato_chisato_00330_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_seifuku"]
【千圣】[r]「没、没有啦！才没有那种事！！」
[np]
[FACEHIDE]

[r]没错！最后没能成功嘛！！
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_chisato_00330_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「这样啊……那等你们做完了要告诉我哦。我想听听感想」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00330_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「绝对不告诉你！！」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_chisato_00330_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「哎呀……不告诉我的话，就代表……你们有打算要做咯？」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_8_M"]
[playcv storage="chisato_chisato_00330_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「啊……！？」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_chisato_00330_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「……呵呵呵。我很期待哦」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00330_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「～～……！！」
[np]
[FACEHIDE]

[r]被前辈步步紧逼，千圣的脸涨得通红。
[np]

[char_erase name="chisato mion"]

[r]不过确实……其实我也非常想和千圣做那种事……
[np]

[r]千圣之前说的心理准备……我就像忠犬一样，一直在耐心等待那一刻的到来。
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

;//JUMP:aoi_00340
[jump storage="scenario/chisato/chisato_00340.ks"]