[SCENESTART file=aoi_00210.ks]
;//aoi_00210
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/12(日)
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

;//第三者視点
;//「ダークプリーステス」でお願いします
[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00210_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「上吧——堕天圣职者！只要跨越这个考验，你也能独当一面了！」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_9_M"]
[playcv storage="momo_aoi_00210_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「好的师傅！拜托您了……！！」
[np]
[FACEHIDE]

;//「ヘルフレイム」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00210_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「游走于光暗之间的迷惘精灵啊，请赐予我力量……——地狱火炎弹——！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/60004.ogg"]
[wait time="1000"]
[quake time="500"]

[momo storage="D_tokushu_M D_4_M"]
[playcv storage="momo_aoi_00210_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_tokushu"]
[char_jump name=momo]
【桃】[r]「呜、这火力……！！我的防御魔法要撑不住了……！！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00210_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哈啊……早上好」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_aoi_00210_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「早啊。澪音居然比我晚到，真少见呢」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00210_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「昨天……或者说今天早上五点前，一直和朋友们在网游里玩嗨了……」
[np]
[FACEHIDE]

[char_erase name="satomi mion"]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00210_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「哈！终于现身了吗魔女！延续千年的因缘，就在今日了结吧！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_aoi_00210_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「不好意思今天免战。算我输」
[np]
[FACEHIDE]

[char_erase name="mion"]

;//「ダークプリーステス」でお願いします
[aoi storage="C_tokushu_M CD_2_M" trans=false]
[momo storage="A_tokushu_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_aoi_00210_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「哦哦……！听到了吗——堕天圣职者！我们赢得战斗胜利了！」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_aoi_00210_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「成、成功了呀葵小姐！啊不对是师傅！！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[chisato storage="C_sifuku_M CD_1_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00210_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「早饭……或者说，午饭要怎么办？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00210_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「嗯…能给我一片吐司吗？另外可以的话请冲杯浓咖啡」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00210_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「知道啦，稍等一下哦」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00210_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀，真稀奇…真珠星也在这里？」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_aoi_00210_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「…房间…好热…这里…凉快」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00210_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「可是，房间里也有空调吧？」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_aoi_00210_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「电风扇…有」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00210_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「啊，原来如此」
[np]
[FACEHIDE]

;//扇風機に対面して
[supica storage="D_sifuku_M CD_11_M"]
[playcv storage="supica_aoi_00210_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「…我～们～是～…宇～宙～人～」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_5_M"]
[playcv storage="mion_aoi_00210_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「实际这么做的人，我大概是第一次见到…」
[np]
[FACEHIDE]

[supica storage="B3_sifuku_M AB_3_M"]
[playcv storage="supica_aoi_00210_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「…不足为奇。与外星人的邂逅是极其罕见的情况」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00210_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「是啊…从这个意义上说，我也算是幸运的存在呢」
[np]
[FACEHIDE]

[char_erase name="mion supica"]

[satomi storage="D_sifuku_M CD_3_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="satomi_aoi_00210_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「魔女、宇宙人、龙还有超能力者…这宿舍真是越来越热闹了呢」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00210_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「说起来，龙一呢？」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_aoi_00210_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「打工啦。今天也在努力赚我的酒钱呢」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_aoi_00210_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「这样…话说回来，最后到底怎么决定？」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00210_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「什么怎么决定？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_aoi_00210_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「真是的，下周这个时候就该决定了吧？关于龙一如何处置的事」
[np]
[FACEHIDE]

[char_erase name="mion satomi"]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00210_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「……！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[satomi storage="D_sifuku_M CD_7_M"]
[playcv storage="satomi_aoi_00210_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「哎呀，已经到这个时候了？从那天算起刚好一个月…啊，是呢」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_7_M"]
[playcv storage="momo_aoi_00210_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「要再次和大家商量是否继续一起居住…是这么约定的来着？」
[np]
[FACEHIDE]

[char_erase name="satomi momo"]

;//小声
[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00210_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「龙、龙一…该怎么办…」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[satomi storage="A_sifuku_M AB_1_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="satomi_aoi_00210_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「是呢。那么实际要怎么做？现在决定也可以哦」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00210_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「我认为让他继续住下去也无妨。大家觉得呢？」
[np]
[FACEHIDE]

[char_erase name="mion satomi"]

[supica storage="B2_sifuku_M AB_1_M"]
[playcv storage="supica_aoi_00210_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……随便」
[np]
[FACEHIDE]

[char_erase name="supica"]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_aoi_00210_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「真珠星还是老样子。千圣和桃呢？」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00210_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「我没有异议。这一个月一起生活下来，我也了解到了不少事情……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00210_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「只是最初发生的问题给人留下的印象太糟糕了，我认为让神原同学继续住在这里完全没有任何问题」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[aoi storage="A_tokushu_M A_3_M"]
[playcv storage="aoi_aoi_00210_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_tokushu"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[satomi storage="A_sifuku_M AB_1_M" trans=false]
[momo storage="A_tokushu_M AB_1_M" trans=false]
[char_trans]
[playcv storage="momo_aoi_00210_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_tokushu"]
【桃】[r]「我、我也……从反对转为赞成，投一票！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_7_M"]
[playcv storage="satomi_aoi_00210_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「哦，改变主意了呢」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_3_M"]
[playcv storage="momo_aoi_00210_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_tokushu"]
【桃】[r]「是的……我和千圣学姐想法一样，已经明白神原先辈不是坏人……」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_7_M"]
[playcv storage="momo_aoi_00210_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「但是今后也要一直待在客厅里吗……？」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_aoi_00210_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「啊这个不用担心。前几天维修公司联系说这周内就会来修理」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_7_M"]
[playcv storage="momo_aoi_00210_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
【桃】[r]「那么……」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_aoi_00210_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「在暑假开始之前房间就能恢复原状，大家都能幸福美满！就是这么回事」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_aoi_00210_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「既然如此，就更没问题了」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_2_M"]
[playcv storage="momo_aoi_00210_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_tokushu"]
【桃】[r]「是的，没错！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_aoi_00210_011.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「那剩下的就是葵了。不过葵当时——」
[np]
[FACEHIDE]

[char_erase name="satomi momo chisato"]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00210_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「龙、龙一就住我的房间！和我一起住！！」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_7_M"]
[playcv storage="momo_aoi_00210_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
[char_jump name=momo]
【桃】[r]「！？」
[np]
[FACEHIDE]

[char_erase name="aoi satomi momo"]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00210_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「诶诶！？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00210_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀……」
[np]
[FACEHIDE]

[char_erase name="mion"]

;//扇風機に対面して
[supica storage="C1_sifuku_M CD_11_M"]
[playcv storage="supica_aoi_00210_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「啊～……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[satomi storage="A_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00210_012.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「嗯……？一起住？在葵的房间……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00210_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「没、没错……！龙一就住在我的房间！所以完全不用担心！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_aoi_00210_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「等等，等一下葵！就算是女生之间也罢了，男女同住一个房间这……！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00210_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「龙一可是伏木庄不可或缺的存在……！所以由我来……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00210_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「不，就算是这样也没必要同住……而且又不是要赶他出去——」
[np]
[FACEHIDE]

[char_erase name="aoi satomi chisato"]

[momo storage="D_tokushu_M D_8_M"]
[playcv storage="momo_aoi_00210_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_tokushu"]
【桃】[r]「请、请等一下千圣……！」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00210_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「咦……？」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_aoi_00210_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「我、我也要请求您……请务必按照葵小姐的意愿来……！」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00210_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「啊……可、可是……」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_6_M"]
[playcv storage="momo_aoi_00210_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_tokushu"]
【桃】[r]「就是这样……！！　求求您，求求您了……！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00210_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「等、桃……！？　好、好吧，我知道了……！」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_3_M"]
[playcv storage="momo_aoi_00210_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_tokushu"]
【桃】[r]「那么就这样……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_aoi_00210_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「不过……既然葵本人觉得没问题，我也不该多说什么……」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_2_M"]
[playcv storage="momo_aoi_00210_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_tokushu"]
【桃】[r]「非常感谢……！　圣水小姐也觉得没问题吗？」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_aoi_00210_013.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「我完全没关系哦？　就交给年轻人吧」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_aoi_00210_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「那就这么定了……！　太好了呢，葵小姐！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00210_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「啊、啊啊……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//小声
[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00210_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「……真的没问题吗……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00210_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「和龙一君共同生活……究竟在盘算什么呢？呵呵……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00210_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「才、才没有在计划什么呢！我只是关心龙一……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00210_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「关心龙一君……？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00210_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「……就、就是担心而已啦！」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00210_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「呵呵，真的只是这样吗……哧哧……」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00210_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「好了好了……澪音前辈，吐司烤好了哦」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//扇風機に対面して
[supica storage="C1_sifuku_M CD_11_M"]
[playcv storage="supica_aoi_00210_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……我～是～……」
[np]
[FACEHIDE]

[char_erase name="supica"]

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

;//JUMP:aoi_00220
[jump storage="scenario/aoi/aoi_00220.ks"]