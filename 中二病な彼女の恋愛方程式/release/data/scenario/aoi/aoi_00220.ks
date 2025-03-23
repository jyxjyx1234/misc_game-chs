[SCENESTART file=aoi_00220.ks]
;//aoi_00220
;//BG:bg01_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]打工结束后，我回到了宿舍前。
[np]

[r]由于店长不在，或许是因为我作为男性的臂力被依赖，今天有很多体力活……
[np]

[r]想到平时店长一个人做完那些……不由得有些敬佩呢。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_06.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了～」
[np]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[r]怀着这样的想法推开玄关门——
[np]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_aoi_00220_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「龙一！」
[np]
[FACEHIDE]

[r]最先迎接我的，是穿着平时那套衣服的葵。
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00220_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「龙一、从今天起你要……和、和我住同一个房间了！！」
[np]
[FACEHIDE]

[r]………………哈？
[np]

[character name="ryuichi"]
【龙一】[r]「抱歉，我好像有点累……刚才说什么？」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00220_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「所、所以说……就是要和我住同一个房间的意思！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……谁决定的？」
[np]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00220_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「要、要我说多少次！你和我……小日向葵和神原龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！？？？？？？」
[np]

[r]等、等一下……等、等一下！这到底是怎么回事啊！？
[np]

[character name="ryuichi"]
【龙一】[r]「绫、绫濑！？这到底是什么情况！？」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00220_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「呃……这个嘛……我不太好说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不太好说……那我该问谁——」
[np]

[char_erase name="chisato aoi"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00220_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「关于这件事，我来解释吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「澪、澪音学姐……」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00220_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「解释之前，你要不要先去洗个手？晚饭马上就好了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……好、好的！」
[np]

[char_erase name="mion"]

;//暗転
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
[SYSTEMMENU]

[r]在澪音学姐的催促下洗完手回来的我……
[np]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「……原来是这么回事吗」
[np]

[r]在边吃饭边了解事情原委后，我终于大致掌握了状况。
[np]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00220_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「那时候的葵啊，可是拼了命呢？『龙一必须住我房间！和我一起住！！』」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00220_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「才、才没有说得那么激动！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00220_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「不过当时的神情确实非常认真……连我们都能感受到你担心神原先辈的心情……！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00220_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「连、连桃都跟着起什么哄！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……」
[np]

[char_erase name="aoi momo mion"]

[r]被她们这么一说，不知怎的有点不好意思起来……
[np]

[character name="ryuichi"]
【龙一】[r]「不过……葵你真的觉得这样好吗？」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00220_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「什、什么好不好……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是，那个，要住在同一个房间的事……」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00220_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「这、这有什么大不了！我和龙一可是被命运之链相连的盟友啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个比喻每次都会变吧……什么被契约联结啦，被盟约召唤啦……」
[np]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00220_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「那、那是……现、现在说这个无关紧要吧……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00220_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「命运之锁啊……呵呵」
[np]
[FACEHIDE]

[char_erase name="mion"]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00220_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「有、有什么好笑的！」
[np]
[FACEHIDE]

[r]确实，对我来说能进房间总比一直待在客厅强……
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「话说回来，我的房间到底什么时候修——」
[np]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00220_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「啊！！对了，这周的萌喵大人不是要来风见市吗！？频道！快换频道！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00220_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「好啦好啦……什么频道？」
[np]
[FACEHIDE]

[r]……算了，无所谓了。
[np]

[char_erase name="chisato satomi"]

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

;//JUMP:aoi_00230
[jump storage="scenario/aoi/aoi_00230.ks"]