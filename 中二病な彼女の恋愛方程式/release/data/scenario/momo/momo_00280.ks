[SCENESTART file=momo_00280.ks]
;//momo_00280
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM05.ogg" time=1000]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku

[r]怀着这样的心情，放学后。
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00280_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「龙一，准备好了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「稍等……这个先放这里好了」
[np]

[r]今天绫濑要打工，回去时就我和葵两个人。
[np]

[character name="ryuichi"]
【龙一】[r]「好，走吧」
[np]

[char_erase name="aoi"]

;//背景を校庭bg09_01に
[r]把要带回家的东西塞进书包，穿过鞋柜来到操场——
[np]
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[aoi storage="D_seifuku_M CD_3_M"]
[playcv storage="aoi_momo_00280_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「啊，桃！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]在校门口即将擦肩而过的那个角落…
[np]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00280_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊…」
[np]
[FACEHIDE]

[r]看似在等谁的桃酱朝这边跑了过来。
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00280_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「怎么了，是在执行第三机关的监视任务吗……？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00280_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「啊、呃、那个、不是这样的……」
[np]
[FACEHIDE]

[r]她时不时偷偷朝这边张望……
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00280_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「今天真珠星酱要值日打扫……一个人回去太寂寞了，所以我在想葵你们能不能一起……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_momo_00280_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「原来如此……好吧，一起走吧！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00280_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「好、好的……！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]真的假的……！　啊，不过我也不是讨厌和桃酱一起回去啦……
[np]

[fadeoutbgm time=1000]
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//背景を通学路bg13_01の
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM04.ogg" time=1000]

[r]经历了早上的那种气氛之后，再一起回家实在是有点……
[np]

[aoi storage="B_seifuku_M B_4_M" trans=false]
[momo storage="C_seifuku_M C_8_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00280_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「……好，气息渐渐远离了……现在解除警戒应该没问题了」
[np]
[FACEHIDE]

[r]现在有葵在，比起早上多少好些，不过……
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00280_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「呃……」
[np]
[FACEHIDE]

[r]桃酱从刚才起就一直很在意我，这完全能看出来……
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00280_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……呃！」
[np]
[FACEHIDE]

[r]一有眼神接触就立刻移开视线，不在意才怪呢！
[np]

[aoi storage="D_seifuku_M CD_7_M"]
[playcv storage="aoi_momo_00280_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「喂桃，你没事吧……？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00280_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「咿……？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_momo_00280_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「总觉得你脸颊好像有点发红……」
[np]
[FACEHIDE]

;//[aoi storage="C_seifuku_M CD_5_M"]
;//[playcv storage="aoi_momo_00280_007.ogg" name="aoi"]
;//[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
;//【葵】[r]「なんだか、少し顔が赤いように見えるが……まさか、組織のものに遅効性の毒を盛られたんじゃ……」
;//[np]
;//[FACEHIDE]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00280_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「不、不是的！今、今天天气这么热，可能只是……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_momo_00280_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「是吗……？那就好……然后龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「干、干嘛啊……」
[np]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_momo_00280_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「你从刚才起状态就很奇怪……平时应该更健谈才对」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那是……因为考试考砸了在消沉而已……别管我」
[np]

[aoi storage="D_seifuku_M CD_5_M"]
[playcv storage="aoi_momo_00280_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[r]这句话似乎对葵也造成了伤害，只见她捂住胸口弯下腰。
[np]

[char_erase name="momo aoi"]

[momo storage="A_seifuku_L AB_8_L"]
[playcv storage="momo_momo_00280_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「啊……！」
[np]
[FACEHIDE]

[r]这样一来，原本分处葵两侧的我和桃的视线便笔直地撞在了一起……
[np]

[r]这、这是什么感觉……和桃酱一对视，胸口附近就……
[np]

[r]虽然老套得让人发笑……但这果然是……
[np]

[playcv storage="aoi_momo_00280_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「嗯……？」
[np]
[FACEHIDE]

[r]……就是这么回事……啊
[np]

[playcv storage="aoi_momo_00280_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[playcv storage="aoi_momo_00280_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「…………啊……！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

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

[jump storage="scenario/momo/momo_00290.ks"]