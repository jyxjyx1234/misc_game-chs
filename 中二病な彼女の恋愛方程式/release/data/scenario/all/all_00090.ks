[SCENESTART file=all_00090.ks]
;//all_00090
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:6/15(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_all_00090_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「大家，没忘带东西吧？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_all_00090_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「嗯，没问题」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00090_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「完全ＯＫ！」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00090_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「那我们就出发吧」
[np]
[FACEHIDE]

[char_erase name="mion aoi momo"]
[r]吃完早餐的我们全体成员集合完毕，一起朝着学院出发了。
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="700"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//背景をbg13_01に
[mion storage="D_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00090_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「明明只多了一个人，却有大队人马行进的感觉呢」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00090_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「本来全员早晨一起上学就很罕见啊」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_all_00090_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「确实是这样呢。大家出门时间能凑齐的机会本来就不多……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_3_M"]
[playcv storage="chisato_all_00090_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「毕竟真珠星经常睡懒觉，基本上都是让大家先走的对吧？」
[np]
[FACEHIDE]

[char_erase name="mion chisato momo"]

[supica storage="C1_seifuku_M CD_5_M"]
[playcv storage="supica_all_00090_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「……地球的早晨太早了……真珠星的母星和这里的时间概念不一样」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]真珠星不满地说着，气呼呼地转过脸去。
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00090_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「神原同学是…二年级…对吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊。所以绫濑和……葵也是同年级对吧？」
[np]

[char_erase name="chisato"]

[aoi storage="C_seifuku_M CD_4_M"]
[playcv storage="aoi_all_00090_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「…你刚才为什么要犹豫一下？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？没、没有犹豫啊……」
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00090_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「可疑……！肯定是因为我个子矮，你刚才怀疑我是不是同年级的对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…我保持沉默」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00090_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「你说什么！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[mion storage="C_seifuku_M CD1_3_M" trans=false]
[momo storage="C_seifuku_M C_1_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_all_00090_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「我们的年级是按照身高顺序排的所以很好记哦」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00090_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「从矮到高，最矮的两个是一年级。最高的我是三年级，剩下的都是二年级」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_all_00090_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊，确实……」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_all_00090_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「不过……胸部的大小好像没法按年级来排序呢」
[np]
[FACEHIDE]


[momo storage="A_seifuku_M AB_8_M"]
[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00090_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「你说什么……！？」
[np]
[FACEHIDE]

[r]胸部的大小！？让我看看！？
[np]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_all_00090_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「等、等一下，你在看哪里啊……！」
[np]
[FACEHIDE]

[r]确实，澪音学姐和绫濑都展现着与年级相符的丰满曲线……
[np]

[char_erase name="mion momo chisato"]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00090_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「喂、喂！为什么现在把视线移开了啊——！？」
[np]
[FACEHIDE]

[r]葵的胸部则是令人遗憾的是……适合用『未来可期』来评价的结果。
[np]

[char_erase name="aoi"]

[r]但是……！
[np]

[momo storage="A_seifuku_M AB_6_M"]
[playcv storage="momo_all_00090_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「噫……！」
[np]
[FACEHIDE]

[r]桃酱作为一年级生竟然有这般魄力……！ 
[np]

[momo storage="C_seifuku_M C_10_M"]
[playcv storage="momo_all_00090_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「呀、呀啊……！」
[np]
[FACEHIDE]

[r]这可谓是前途无量的希望之星——
[np]

[momo storage="D_seifuku_M D_10_M"]
[playcv storage="momo_all_00090_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「别、别用那种下流的眼神看我啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……！对、对不起桃酱！我、我不是那个意思……！ 」
[np]

[char_erase name="momo"]

[chisato storage="C_seifuku_M CD_4_M"]
[playcv storage="chisato_all_00090_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「那、你是什么意思啊……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那是……」
[np]

[char_erase name="chisato"]

[r]和昨天一样，我又被绫濑和桃酱两人疏远了。 
[np]

[r]我到底在搞什么啊！明明这周才刚下定决心要注意言行举止的！
[np]

[mion storage="D_seifuku_M CD1_2_M"]
[playcv storage="mion_all_00090_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「噗……嗤嗤……」
[np]
[FACEHIDE]

[char_erase name="mion"]
[r]难道我被算计了……？被伏木庄的魔女算计了！？
[np]


[chisato storage="B_seifuku_M AB_4_M" trans=false]
[momo storage="C_seifuku_S C_10_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00090_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「走、走吧桃同学。和下流男生一起走的话，会被用下流的眼神盯着看的」
[np]
[FACEHIDE]

[momo storage="A_seifuku_S AB_4_S"]
[playcv storage="momo_all_00090_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「好、好的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，等等……！」
[np]

[char_erase name="momo chisato"]

[r]绫濑拉着桃酱的手，两人自顾自地先行离开了。 
[np]

[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_all_00090_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「看来又被警惕了呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是谁害的啊到底是谁！！」
[np]

[r]虽然中了这么简单的圈套，我也真是的……！
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
[wait time="1000"]

;;//JUMP:all_00100
[jump storage="scenario/all/all_00100.ks"]
