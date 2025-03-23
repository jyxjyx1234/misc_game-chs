[SCENESTART file=momo_00130.ks]
;//momo_00130
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku

[r]当身体开始发出饥饿的抗议时，我们便离开学院……
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00130_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「嗯，真是充实的时光……！」
[np]
[FACEHIDE]

[r]三人并排走在回宿舍的路上。
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_momo_00130_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「不过那时候的翼神龙实在太帅气了……！真该拍个视频保存的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「住口！」
[np]

[r]虽然当时是冲动之下做了那种事……但周一上学时，应该不会流传什么奇怪的传闻吧……？
[np]

[r]不过马上就要放暑假了……还是想相信应该没问题。
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00130_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「……桃，振作点！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00130_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「欸……？」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00130_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「我等乃是来自黑暗世界的存在……暴露在现世严厉的目光下，可谓是宿命……！」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00130_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「啊……那、那个……」
[np]
[FACEHIDE]

[r]或许是为了照顾离开学院后始终一言不发的桃酱，葵用她特有的方式打破了沉默。
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_momo_00130_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「不能消沉……要向前看，坚强地活下去……！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_4_M"]
[playcv storage="momo_momo_00130_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_seifuku"]
【桃】[r]「那、那个……我并没有消沉……只是……」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00130_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……！！」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_momo_00130_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「不用掩饰……我完全明白桃心中的创伤……」
[np]
[FACEHIDE]

[r]……虽然与桃酱四目相对后被她慌张躲开视线的经历，我早已习以为常……
[np]

[r]不过她的脸颊微微泛红……难道是因为屋顶上的事情太羞耻了吗……？
[np]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_momo_00130_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「痛苦的时候就靠在我怀里哭吧……！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00130_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「……谢、谢谢……」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]
[r]不过……倒也不是需要在意的事。
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

[jump storage="scenario/momo/momo_00140.ks"]