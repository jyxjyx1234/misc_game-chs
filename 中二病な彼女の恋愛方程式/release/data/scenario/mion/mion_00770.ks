[SCENESTART file=mion_00770.ks]
;//mion_00770
;//BG:bg15_01

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
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM08.ogg" time=1000]

;//TIME:昼
;//日付:8/31(月)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「让你久等了」
[np]
[FACEHIDE]

[r]在邮局前等候的我，看着学姐带着笑容走过来。
[np]

[character name="ryuichi"]
【龙一】[r]「你还好吗？」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「嗯。顺利寄出去了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好。那…直接回去吗？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00770_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「也好，不过…难得有机会，稍微绕个路怎么样？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「明白」
[np]

[char_erase name="mion"]

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

;//背景を川原bg14_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]按照学姐的意思，我们来到了阳光明媚的河滩。
[np]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00770_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「今天就是暑假的最后一天了呢…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「仔细想想发生了好多事啊」
[np]

[mion storage="D_sifuku_M CD1_9_M"]
[playcv storage="mion_mion_00770_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「是啊…在咖啡馆被龙一羞辱、在试衣间被龙一羞辱、在千圣房间里被两个人羞辱…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是还有很多其他事情吗！」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「对我来说都是非常印象深刻的事情呢」
[np]
[FACEHIDE]

[r]面对学姐那副恶作剧般的笑容，我不由得露出苦笑。
[np]

[character name="ryuichi"]
【龙一】[r]「说起来…这次寄出去的作品，结果什么时候能知道呢？」
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00770_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「明年一月开始会公布初选和复选结果…最终结果预定在三月末」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还要等这么久啊…」
[np]

[r]明年三月啊…嗯…？
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00770_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「明年三月…这样的话，学姐你…」
[np]

[mion storage="D_sifuku_M CD1_5_M"]
[playcv storage="mion_mion_00770_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「是啊…那时候应该已经从学院毕业，搬离伏木庄了吧」
[np]
[FACEHIDE]

[r]学姐是最高年级，在伏木庄的生活也将在今年结束。等我升上三年级时，学姐就既不在学院也不在宿舍了。
[np]

[r]这本是理所当然的事，自己也早就知道的…但重新意识到这点时，一股寂寞感油然而生。
[np]

[character name="ryuichi"]
【龙一】[r]「关于毕业后的去向…学姐有什么打算吗？」
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00770_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「本来按计划应该在毕业前作为作家出道…现在计划稍微被打乱了呢」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00770_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「所以现在什么都没定下来。既可以暂时回老家，也可以选择独立生活…」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00770_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「不管怎样，今后继续投稿这件事是不会改变的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那我就永远支持这样的学姐到底吧」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「呵呵，就靠你啦」
[np]
[FACEHIDE]

[r]说着，学姐紧紧握住了我的手。
[np]

[r]这么说来…今年就是和学姐一起度过的最后一个暑假了？
[np]

[r]现在回想起来…感觉这真是一个丰富多彩的半月时光呢
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00770_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「其他同学应该早就开始备战升学考试了吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「都说制霸暑假者制霸考场呢。学姐不准备走这条路吗？」
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00770_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那个也在考虑中。说不定明天我就变成应考生了…总之现在的我一切都还没确定」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样的话，升学志愿调查之类的会很困扰吧」
[np]

[mion storage="D_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00770_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「确实有这种东西呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你又摆出这种事不关己的态度——」
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00770_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「啊……」
[np]
[FACEHIDE]

[r]前辈突然像是想起了什么似的，在原地停下了脚步。
[np]

[character name="ryuichi"]
【龙一】[r]「前辈……？」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「……呵呵，我想到个好主意」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好主意……？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00770_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「对。如果新学期有机会要填写志愿的话……只有这个，我一定能充满信心地写出来」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是指当小说家吗？」
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00770_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「那当然也是……不过，某种意义上说还有比这更重要的东西」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「更重要的……？到底是什么啊」
[np]

[mion storage="D_sifuku_M CD1_8_M"]
[playcv storage="mion_mion_00770_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_sifuku"]
【澪音】[r]「那是……」
[np]
[FACEHIDE]

[r]前辈松开牵着的手，绕到了我的正面。
[np]

[r]在头顶太阳的照耀下，她露出了比阳光还要灿烂的笑容——
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00770_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「我要当你的新娘哦。」
[np]
[FACEHIDE]

[char_erase name="mion"]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[call storage="scenario/staffroll/staffroll.ks"]

[jump storage="scenario/mion/mion_00780.ks"]