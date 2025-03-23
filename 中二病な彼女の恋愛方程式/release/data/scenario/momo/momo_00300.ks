[SCENESTART file=momo_00300.ks]
;//momo_00300
;//BG:bg02_01

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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[chisato storage="D_seifuku_M CD_5_M" trans=false]
[mion storage="A_seifuku_M AB1_5_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00300_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「深夜的雷雨……也罢，总比在白天发作要好些」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_6_M"]
[playcv storage="mion_momo_00300_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_seifuku"]
【澪音】[r]「今年夏天比往年更热……看来宅在屋里会大有收获」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[r]澪音前辈咬着涂满黄油的面包片低声说道。
[np]

;//小声
[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00300_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「这是机会……趁魔女龟缩城堡时，在她房前放火……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「整栋宿舍都会烧光的。别说这种危险的话」
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_momo_00300_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]早间天气预报在餐厅里流淌，我轻轻敲了下葵的脑袋。
[np]

[r]今天真珠星也按时起床了，餐桌前全员到齐。
[np]

[chisato storage="B_seifuku_M AB_5_M" trans=false]
[mion storage="C_seifuku_M CD1_6_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00300_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「宅着是你的自由……但请别再像去年那样熬夜打游戏到虚脱边缘了？」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_momo_00300_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「有过呢……那时是在挑战人类的极限啊」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[supica storage="B4_seifuku_M AB_1_M" trans=false]
[momo storage="A_seifuku_M AB_5_M" trans=false]
[char_trans]
[playcv storage="supica_momo_00300_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……桃，我想要蓝莓果酱」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00300_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「…………」
[np]
[FACEHIDE]

[supica storage="C2_seifuku_M CD_4_M"]
[playcv storage="supica_momo_00300_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_seifuku"]
【真珠星】[r]「……桃？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00300_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「呜哎……啊、对、对不起，什么事……？」
[np]
[FACEHIDE]

[supica storage="B3_seifuku_M AB_12_M"]
[playcv storage="supica_momo_00300_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_seifuku"]
【真珠星】[r]「……蓝莓果酱」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_3_M"]
[playcv storage="momo_momo_00300_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「啊、这个吗？请用」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]桃酱将插着勺子的果酱瓶递给了真珠星。
[np]

[chisato storage="B_seifuku_M AB_6_M" trans=false]
[momo storage="D_seifuku_M D_3_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00300_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「桃，没事吧？看起来还没完全清醒呢」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_momo_00300_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「啊……没、没事的。昨天整理房间时发现了以前的漫画……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00300_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「结果读着读着就停不下来……稍微熬了个夜」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_2_M"]
[playcv storage="chisato_momo_00300_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_seifuku"]
【千圣】[r]「啊啊，这种状况常有呢。不光是漫画，杂志啊相册啊……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_4_M"]
[playcv storage="momo_momo_00300_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「就是呀。所以有点……哈啊……」
[np]
[FACEHIDE]

[r]仿佛为了体现这句话般，桃酱打了个大大的哈欠。
[np]

[r]确实，看起来有点困倦呢……真的不要紧吗？
[np]

[char_erase name="momo chisato"]

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

[jump storage="scenario/momo/momo_00310.ks"]