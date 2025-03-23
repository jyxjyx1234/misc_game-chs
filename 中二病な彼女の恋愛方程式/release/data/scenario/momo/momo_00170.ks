[SCENESTART file=momo_00170.ks]
;//momo_00170
;//BG:bg02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_06.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:7/11(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]然后……
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00170_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「哦～♪今天的晚饭好丰盛呀！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00170_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「哎嘿嘿，昨天考试都结束了，所以稍微努力准备了一下」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00170_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「嚯，这确实很厉害呢……」
[np]
[FACEHIDE]

[r]晚餐时间。餐桌上密密麻麻摆满了各种菜肴，不过……
[np]

[char_erase name="mion momo satomi"]

[character name="ryuichi"]
【龙一】[r]「沙拉、炸鸡块、汉堡肉……还有滑菇味噌汤和白米饭……」
[np]

[r]咦，这是……
[np]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00170_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「那么我们就开动吧。我开动了」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//合わせ
[aoi storage="A_tokushu_M A_2_M" trans=false]
[supica storage="C1_sifuku_M CD_3_M" trans=false]
[char_trans]
[playcv storage="momo_mix_00170_001.ogg" name="women"]
[character name="women"]
【葵＆真珠星】[r]「我开动了！」
[np]

[char_erase name="aoi supica"]

[r]配合着大家的声音，我也拿起筷子轻轻点头致意。
[np]

[r]虽然考虑到营养均衡还有炖菜和浅渍腌菜……但今天的菜基本都是我爱吃的。
[np]

[r]难道说，桃酱听了我的请求才准备了这些吗？
[np]

[r]这样的话、总感觉有点……不、是非常开心呢！
[np]

[aoi storage="C_tokushu_M CD_2_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00170_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「啊唔、嗯唔……嗯、好好吃！不愧是我的头号弟子！」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_momo_00170_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「明明连二号以后的弟子都没有、在胡扯些什么呢」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_10_M"]
[playcv storage="aoi_momo_00170_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_tokushu"]
【葵】[r]「吵、吵死了……！再敢多嘴、信不信让你再也开不了口……！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_momo_00170_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「好了好了吃饭时间吃饭时间——」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]好、那我也来块炸鸡……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……嗯嗯！」
[np]

[r]嗯、确实很好吃呢……！再来一块……
[np]

[momo storage="A_sifuku_M AB_4_M"]
[playcv storage="momo_momo_00170_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「盯——……」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[momo storage="C_sifuku_M C_4_M"]
[playcv storage="momo_momo_00170_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「盯————……」
[np]
[FACEHIDE]

[r]坐在我对面的桃酱……不知为何没有动筷、一直直勾勾地盯着这边。
[np]

[r]怎、怎么了……？
[np]

[character name="ryuichi"]
【龙一】[r]「嗯唔……唔……」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00170_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「怎、怎么样……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00170_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「炸鸡……我觉得炸得挺到位的……好吃吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……嗯。比起外面卖的炸鸡，这个更多汁更好吃哦」
[np]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_momo_00170_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「果然桃酱的厨艺真的很厉害，再次觉得……」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00170_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「那、那这边的汉堡肉呢？这个我也觉得做得不错哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，让我尝尝……」
[np]

[char_erase name="momo"]

[r]顺着桃酱的推荐，尝了一口分到的汉堡肉。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……唔、嗯，这个也是极品」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00170_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「哇……♪」
[np]
[FACEHIDE]

[r]咬下去的瞬间肉汁就喷涌而出……这要不是厨艺高超的人根本做不出来吧……？
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00170_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「太、太好了，如果合前辈口味的话……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不止是我，这个水准大家都会满意的。对吧绫濑？」
[np]

[char_erase name="momo"]

[chisato storage="C_sifuku_M CD_11_M"]
[playcv storage="chisato_momo_00170_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「……哼哼」
[np]
[FACEHIDE]

[r]嗯？
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00170_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哎呀，原来如此……所谓的努力是指这种层面啊……」
[np]
[FACEHIDE]

[r]两人意味深长的视线不知为何都聚焦在我身上……呃，怎么回事……？
[np]

[char_erase name="mion chisato"]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_momo_00170_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「再来一份！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="D_sifuku_M D_3_M"]
[playcv storage="momo_momo_00170_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「啊、好的。请稍等」
[np]
[FACEHIDE]

[playcv storage="satomi_momo_00170_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「我也要续杯啤酒！」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00170_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「知道了」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]接过葵递来的饭碗后，桃酱离开座位走向厨房。
[np]

[r]我目送着她的背影直到消失在视线范围内……
[np]

;//合わせ
[chisato storage="B_sifuku_M AB_3_M" trans=false]
[mion storage="A_sifuku_M AB1_3_M" trans=false]
[char_trans]
[playse storage="momo_mix_00170_002.ogg" name="women"]
[character name="women"]
【千圣＆澪音】[r]「……呵呵」
[np]

[r]绫濑用一副看到什么温馨事物的眼神望着我……而前辈则挂着神秘的笑容朝我看来。
[np]

[char_erase name="mion chisato"]

[r]怎、怎么了？你们两个……
[np]

[supica storage="C1_sifuku_M CD_3_M"]
[playcv storage="supica_momo_00170_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……啊嗯……吧唧吧唧……」
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

[jump storage="scenario/momo/momo_00180.ks"]