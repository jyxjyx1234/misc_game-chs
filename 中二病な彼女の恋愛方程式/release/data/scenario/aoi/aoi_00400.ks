[SCENESTART file=aoi_00400.ks]
;//aoi_00400
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
;//日付:7/16(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[r]接着，到了第二天早上。
[np]

[mion storage="C_seifuku_M CD1_3_M" trans=false]
[momo storage="C_seifuku_M C_1_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00400_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「这一个月虽然发生了很多事……但等到明天就是暑假了」
[np]
[FACEHIDE]

[r]和宿舍的大家一同走在通往校园的上学路上。
[np]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_aoi_00400_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「是啊，对我来说这还是第一次在宿舍迎接暑假呢」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00400_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「暑假期间不打算回老家看看吗？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_aoi_00400_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「盂兰盆节可能会回去几天……不过基本上还是待在宿舍。这样比较热闹有趣……！」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00400_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「这样啊。龙一呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我也和桃酱一样。也就是偶尔回家露个面，基本上还是待在宿舍里」
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00400_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「也就是说，和葵心跳加速的同居生活还要继续下去……对吧」
[np]
[FACEHIDE]

[char_erase name="mion momo chisato"]


[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00400_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「喂、魔女！别说什么心跳加速啊！」
[np]
[FACEHIDE]

;[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00400_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「哎呀，不喜欢吗……那改成『和葵的秘密同居生活』怎么样？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00400_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「这、这不是换个说法就能蒙混过去的事啊！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]……至少和澪音学姐的互动还是一如既往……的感觉。
[np]

[r]按照昨晚睡前制定的作战计划……果然要决胜的话还是得选放学后吧。
[np]

[r]既不用担心时间限制，参加社团活动和回家的学生也会变少。
[np]

[r]不过要是能提前打个招呼，告诉她放学后有话要说的话——
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00400_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]（猛然……！）
[np]

[char_erase name="aoi"]

[r]或许是因为自己也意识到注视得太过头了……和葵对上视线后立刻避开了。
[np]

[r]嗯，这样比较好……趁着放学前的空档先找机会说清楚吧。就这么办。
[np]

[momo storage="A_seifuku_L AB_2_L"]
[playcv storage="momo_aoi_00400_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「……呼呼」
[np]
[FACEHIDE]

[supica storage="C1_seifuku_M CD_1_M" relx= 100]
[playcv storage="supica_aoi_00400_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……桃，怎么突然……？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_L C_7_L"]
[playcv storage="momo_aoi_00400_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[supica storage="B2_seifuku_M AB_1_M"]
[playcv storage="supica_aoi_00400_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「刚才……你笑得很开心的样子……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_L C_2_L"]
[playcv storage="momo_aoi_00400_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「啊……嗯，一想到明天就要开始放暑假，就忍不住开心起来……！」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_aoi_00400_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……这样啊」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

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

;//JUMP:aoi_00410
[jump storage="scenario/aoi/aoi_00410.ks"]