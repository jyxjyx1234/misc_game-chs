[SCENESTART file=aoi_00080.ks]
;//aoi_00080
;//BG:bg02_03

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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/7(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00080_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「哎呀，今天的晚饭是素面吗？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_aoi_00080_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「嗯，毕竟已经完全入夏了，感觉差不多该吃这个了……」
[np]
[FACEHIDE]

[char_erase name="mion momo"]

[r]夜晚的餐桌上摆着一个盛满素面的大竹笊篱，以及人数份的面汁容器。
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_aoi_00080_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「素面真不错啊，很有夏天的感觉呢。那我开动啦——！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]随着圣水的动作，大家也陆续伸出了筷子。
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00080_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「真珠星酱，要帮你拿吗？」
[np]
[FACEHIDE]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_aoi_00080_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……拜托了……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[r]正如圣水所说，吃着这个就会真切感受到夏天要开始了。
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00080_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「……龙一，差不多该下定决心了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……突然说什么呢。下什么决心？」
[np]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00080_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「别装傻。期末考试结束后就要开始咒文吟唱训练，这事我说过的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以我说了不干啊！就算要对付龙什么的都行，但咒文相关的我绝对拒绝！」
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00080_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「可是这样的话，龙一的真正力量就永远无法……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什么真正的力量啊……说到底，我——」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00080_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「呵呵……最近小葵和神原同学关系真好呢」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00080_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「哎……」
[np]
[FACEHIDE]

[r]被绫濑这么一说，葵和我的筷子都停住了。
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00080_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「比起最初认识的时候，感觉更亲密了……你看，今天放学后你们还一起照顾小猫」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「毕竟最近总算摸清楚怎么应付中二病了」
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00080_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「原来如此，是这个缘故啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是吧，葵？」
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00080_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]本以为她会像往常那样说『我与龙一乃是禁断魔导书记载的同胞如何如何～』之类的话……
[np]

[r]她紧攥着筷子，微微低头沉默不语。
[np]

[char_erase name="aoi chisato"]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_aoi_00080_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「葵学姐，怎么了……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00080_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「啊……？没、没什么……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00080_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「或许不只是单纯关系好哦？上次在游乐园时，你们俩还单独——」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00080_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「那、那是两码事！当时是龙一突然对我……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00080_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「把你带进二人世界了？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00080_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「！？！？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00080_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「什、什、什……！？你、你在说什么啊！两、两人的世界什么的……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、那时候真的是，我实在憋不住厕所……」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00080_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「但之后你们还一起玩了其他游乐设施吧？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00080_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「喂！别贼笑啊魔女！你肯定在想什么下流事吧！？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00080_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「真失礼呢。我不过是在脑海中描绘年轻男女幸福未来的模样而已。」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00080_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「幸、幸福的…未来…？　呜……啊、啊呜……」
[np]
[FACEHIDE]

[r]无法反驳澪音学姐话语的葵涨红着脸缩成了一团。
[np]

[r]游乐园那件事……恐怕今后还会被拿出来调侃好一阵子吧……
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00080_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「……」
[np]
[FACEHIDE]

[char_erase name="aoi momo mion"]

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

;//JUMP:aoi_00090
[jump storage="scenario/aoi/aoi_00090.ks"]