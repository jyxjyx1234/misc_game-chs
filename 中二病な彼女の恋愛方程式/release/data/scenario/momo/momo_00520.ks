[SCENESTART file=momo_00520.ks]
;//momo_00520
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

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
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:昼
;//日付:7/21(火)
;//CH:竜一,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku

[r]就这样迎来了长假。
[np]

[mion storage="B_sifuku_M AB1_6_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00520_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_sifuku"]
【澪音】[r]「哈啊～…………唉」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00520_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「好大的哈欠呢……是睡眠不足吗？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_momo_00520_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「是啊。可能是天气太热最近睡不着……总忍不住跑去玩网游」
[np]
[FACEHIDE]

[char_erase name="mion momo"]

[r]据说伏木庄的规矩是进入暑假后，早饭和午饭可以各自按喜欢的时间吃。
[np]

[r]所以我现在正和揉着惺忪睡眼的澪音学姐、以及满脸担忧的桃酱三人共进这顿稍晚的早餐。
[np]

[momo storage="D_sifuku_M D_2_M"]
[playcv storage="momo_momo_00520_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「啊、请不要太勉强自己……前辈今天也要打工……吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，今天休息」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00520_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「真的吗！？」
[np]
[FACEHIDE]

[r]桃酱一发现我不是去打工，表情顿时明亮起来。
[np]

[r]从结业式第二天开始连续三天排满班，可能因此我今天起床也稍晚了。
[np]

[r]倒不如说，没想到这个暑假……居然能和桃酱这么可爱的女朋友共度，完全出乎我的预料……
[np]

[r]打工的排班安排得密密麻麻的……现在调整还不算晚，得把八月份的班次减少些才行。
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00520_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「这么说来，今天就能和前辈一起度过了呢……♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，是啊」
[np]

[char_erase name="momo"]

[mion storage="A_sifuku_M AB1_5_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00520_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「唔……你们两人散发的幸福光环，正在袭击刚睡醒的我……」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_momo_00520_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「哪、哪有你说的什么幸福光环……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00520_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「话说你们俩……已经去约会过了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_momo_00520_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「上次问的时候，你们说还没亲热过……我就在想，该不会连约会阶段都还没到吧」
[np]
[FACEHIDE]

[r]……此时绝不能将真实情况和盘托出。
[np]

[r]明明连约会都没去过，却已经亲热过两次了……要是这么说，绝对会被前辈当作把柄取笑……！
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00520_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「约、约会的话……还，还没有对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对啊……！」
[np]

[r]看来桃酱也感受到了这种气氛，正努力装出自然的样子……可这样反而显得更可疑了！
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_momo_00520_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「……你们两个怎么了？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_momo_00520_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「噫！？没、没有啊……真、真的没什么哦！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对啊……没什么特别的……」
[np]

[mion storage="B_sifuku_M AB1_4_M"]
[playcv storage="mion_momo_00520_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「这样啊……哈啊啊……」
[np]
[FACEHIDE]

[char_erase name="mion momo"]

[r]要是平时的前辈，肯定会追根究底问个明白吧……
[np]

[r]或许是因为睡眠不足状态不佳，她似乎没什么兴趣地把视线转向了电视。
[np]

[character name="ryuichi"]
【龙一】[r]「约会、约会啊……」
[np]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_momo_00520_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「我、我们才刚开始交往……这也是没办法的事嘛」
[np]
[FACEHIDE]

[r]正如桃酱所说，我们交往到今天正好满一周。
[np]

[r]期间又是发还试卷又是我要打工，当然也就没那个时间了……
[np]

[character name="ryuichi"]
【龙一】[r]「啊……那不如今天就去吧？」
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00520_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我今天打工休息……如果桃酱也没有特别安排的话……」
[np]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00520_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「真、真的可以吗……？我、我也没有任何安排的……那、那就……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽然是这种突然的形式……你觉得没问题吗？」
[np]

[momo storage="D_sifuku_M D_2_M"]
[playcv storage="momo_momo_00520_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「当、当然没问题！那我、那个……我、我去准备一下哦！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]桃酱利落地起身收拾餐具，小跑着冲上了楼梯。
[np]

[r]虽然进展顺利得有些突然……但对我而言这可是人生中第一次值得纪念的约会。
[np]

[r]作为男生，作为男友……必须努力让桃酱过得开心！
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

[jump storage="scenario/momo/momo_00530.ks"]