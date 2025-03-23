[SCENESTART file=mion_00710.ks]
;//mion_00710
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夜
;//日付:8/17(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00710_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「我回——」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00710_001.ogg" name="aoi"]
[character name="aoi"]
[char_quake name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「回来了吗，伏木庄的魔女！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00710_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「咦……？」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_mion_00710_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「欢迎回来，澪音前辈」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00710_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「大、大家都怎么了……全聚在门口」
[np]
[FACEHIDE]

[char_erase name="chisato mion aoi"]

[supica storage="B2_sifuku_M AB_12_M"]
[playcv storage="supica_mion_00710_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「……我们全员都在待命」
[np]
[FACEHIDE]

[char_erase name="supica"]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00710_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「待命？为什么……？」
[np]
[FACEHIDE]

;[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_mion_00710_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「因、因为从神原前辈那里听说前辈在为小说的事烦恼……所以很担心……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00710_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对不起前辈！」
[np]

[character name="ryuichi"]
【龙一】[r]「大家都非常关心前辈……我在说明烦恼原因时，把小说的事也一起说了……」
[np]

[mion storage="A_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00710_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「这倒是没关系……原来大家，都在为我担心吗？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_mion_00710_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「这、这不是理所当然的吗……！前辈是我们宿舍不可或缺的一员……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_mion_00710_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「你可是我永远的劲敌！」
[np]
[FACEHIDE]

[char_erase name="aoi momo mion"]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_mion_00710_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「某种意义上说，您比宿管阿姨更值得信赖呢」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_3_M"]
[playcv storage="satomi_mion_00710_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「啊～深有同感深有同感。比起我这种半吊子…喂！！」
[np]
[FACEHIDE]

[supica storage="B4_sifuku_M AB_2_M"]
[playcv storage="supica_mion_00710_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……是伏木庄……不可或缺的存在」
[np]
[FACEHIDE]

[char_erase name="supica chisato satomi"]

[mion storage="D_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00710_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「……真是败给你们了。没想到我这样的人，居然在不知不觉间让各位如此操心……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_mion_00710_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「才、才没有觉得麻烦……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00710_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「谢谢……我已经没事了」
[np]
[FACEHIDE]

[r]这番话显然并非只是口头安慰……原本笼罩在众人脸上的阴霾顿时一扫而空。
[np]

[char_erase name="mion momo"]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_mion_00710_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「既然两位也回来了…差不多该准备晚饭了吧」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_mion_00710_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「好的！」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_mion_00710_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「真珠星，准备餐具！」
[np]
[FACEHIDE]

[supica storage="C2_sifuku_M CD_2_M"]
[playcv storage="supica_mion_00710_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_2_FACE_sifuku"]
【真珠星】[r]「……了解」
[np]
[FACEHIDE]

[char_erase name="supica aoi"]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_mion_00710_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「嗯嗯，不劳者不得食！」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00710_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「圣水小姐还好意思说这种话！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[r]就在众人纷纷开始准备晚饭时……有人朝前辈的方向走了过去。
[np]

[character name="ryuichi"]
【龙一】[r]「太好了呢，前辈」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00710_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「……是啊…我真是个幸福的人呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「您不觉得应该把这句话说给大家听吗？」
[np]

[mion storage="D_sifuku_M CD1_8_M"]
[playcv storage="mion_mion_00710_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_sifuku"]
【澪音】[r]「才、才没有那个必要呢…再说，太羞人了…」
[np]
[FACEHIDE]

[r]澪音前辈微微染红脸颊，别过脸去说道。
[np]

[char_erase name="mion"]

[r]看来…就像前辈自己说的那样，已经不要紧了吧。
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

[jump storage="scenario/mion/mion_00720.ks"]