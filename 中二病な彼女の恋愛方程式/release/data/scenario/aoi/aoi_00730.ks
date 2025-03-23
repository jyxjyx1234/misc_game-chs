[SCENESTART file=aoi_00730.ks]
;//aoi_00730
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
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:夜
;//日付:8/2(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]葵这般模样直到入夜都未能恢复常态……
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00730_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「哎呀，今天是炸鸡块呢」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00730_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「打工回来顺路去了趟超市，看到桃很便宜就买了」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00730_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「原来如此，是向神明献上了桃作为祭品呢」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_10_M"]
[playcv storage="momo_aoi_00730_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「澪、澪音前辈，请不要用那种奇怪的说法啦！」
[np]
[FACEHIDE]

[char_erase name="mion momo chisato"]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00730_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「说、说得对魔女——不、不是的……澪、澪音前辈……请别捉弄桃了！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00730_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「…………嗯？」
[np]
[FACEHIDE]

[r]葵一反常态的言行让起居室的空气瞬间凝固。
[np]

[playcv storage="satomi_aoi_00730_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_4_FACE_sifuku"]
【圣水】[r]「嗯……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00730_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「啊……那、那个……」
[np]
[FACEHIDE]

[r]被众人视线聚焦的葵顿时手足无措起来。
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00730_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「啊，葵……？你刚才说……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00730_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「那、那个……就、就是说别欺负桃了……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_aoi_00730_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「虽然这个说法也很奇怪……不过刚刚前面……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_4_M"]
[playcv storage="aoi_aoi_00730_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「……澪音前辈？」
[np]
[FACEHIDE]

[r]葵不知为何移开视线说出这句话——
[np]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00730_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「啊葵……你到底是哪里不对劲啦！？」
[np]
[FACEHIDE]

[playcv storage="satomi_aoi_00730_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「那个从来都只对澪音用魔女称呼或直呼其名的葵……居然叫前辈！！？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00730_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「可、可是论年纪的话，确实是年长该叫前辈……！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_9_M"]
[playcv storage="mion_aoi_00730_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「论年纪……现在不是说这个的时候！葵你是不是撞到头了！？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00730_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「才、才没有那种事！」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_aoi_00730_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「那不是很奇怪吗！葵居然对我用敬语……！」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00730_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「哈、难道说这是葵的扰乱战术……？想用这种方式动摇我这个魔女的心智，试图在精神上占据优势……」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_aoi_00730_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……炸鸡块」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_aoi_00730_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「啊，真珠星！不许偷吃哦？」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_M CD_4_M"]
[playcv storage="supica_aoi_00730_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……那就快点开饭吧」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00730_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「啊、嗯……话是这么说没错啦……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

;//「ダークリベンジャー」でお願いします
;//澪音中二ＣＧ挿入
[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00730_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「呵…呵哈哈……吾辈漆黑复仇者才不会中这种伎俩！你以为凭这点肤浅的计谋就能欺骗我吗！」
[np]
[FACEHIDE]

[r]面对如此气势十足宣言的澪音前辈……
[np]

[char_erase name="mion"]

;//背景表示
[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00730_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「呃、那个……」
[np]
[FACEHIDE]

[r]却只是满脸困扰地凝视着澪音前辈……这太奇怪了吧喂……！
[np]

[r]要是平时的葵，早就兴冲冲地向澪音前辈发起挑战，直到被绫濑骂才算完事啊！可如今却……
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_aoi_00730_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「……葵？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00730_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「那、那个……澪音前辈……我、我实在不太擅长应付这种场面……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00730_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「什么！？」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00730_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「哎哎哎！？」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00730_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「喂喂……这是怎么了，到底是怎么了葵……！」
[np]
[FACEHIDE]

[char_erase name="momo satomi"]

[aoi storage="C_tokushu_M CD_5_M" trans=false]
[mion storage="A_sifuku_M AB1_9_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00730_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「医、去医院！？现在应该还有开着的医院才对……！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00730_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「没、没事的！真的，真的没什么事啦！」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00730_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「啊、难道说这是失忆的设定吗！？是这样吗！？」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00730_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「说、说不定就是这样！这样的话，刚才的对话也不奇怪了……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]因葵的言行变得正常，宿舍的众人反而陷入了混乱。
[np]

[r]不过，说来我也是其中之一……而且，明明昨天才刚听到葵亲口说自己喜欢中二病的自己……
[np]

[r]葵……真的，到底是怎么了……？
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

;//JUMP:aoi_00740
[jump storage="scenario/aoi/aoi_00740.ks"]