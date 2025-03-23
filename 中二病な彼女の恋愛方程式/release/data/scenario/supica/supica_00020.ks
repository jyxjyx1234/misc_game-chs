[SCENESTART file=supica_00020.ks]
;//supica_00020
;//BG:bg01_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,seifuku
;//CH:すぴか,seifuku

[character name="ryuichi"]
【龙一】[r]「要迟到了啊啊啊啊啊啊啊啊啊啊啊！！！」
[np]

[r]将准备好的早餐囫囵吞下，飞奔出宿舍。
[np]

[r]这时候说还剩十分钟……？怎么看都肯定得跑着去才赶得上吧……！
[np]

[supica storage="B2_seifuku_M AB_3_M"]
[playcv storage="supica_supica_00020_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_seifuku"]
【真珠星】[r]「……好天气……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊，天气确实不错……但现在不是看天空的时候！快走，快点！」
[np]

[char_erase name="supica"]
[r]我试图带着真珠星加快脚步，然而……
[np]

;//背景を通学路bg13_01に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「真珠星啊啊啊啊啊啊啊啊啊啊啊！！！」
[np]

[supica storage="D_seifuku_S CD_1_S"]
[playcv storage="supica_supica_00020_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……怎么了？」
[np]
[FACEHIDE]

[r]令人惊讶的是，真珠星依然我行我素，丝毫不慌张地以平常的速度走着。
[np]

[supica storage="A_seifuku_M AB_1_M"]
[character name="ryuichi"]
【龙一】[r]「真珠星！我们真的没时间了！再不快点就要迟到了！」
[np]

[supica storage="A_seifuku_M AB_4_M"]
[playcv storage="supica_supica_00020_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……无所谓」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不能无所谓啊！快跑！现在跑还来得及！」
[np]

[supica storage="D_seifuku_M CD_4_M"]
[playcv storage="supica_supica_00020_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_seifuku"]
【真珠星】[r]「……这个季节跑起来会出汗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话、话是这么说没错……！」
[np]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00020_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「与其流汗……真珠星选择迟到」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样我会很困扰啊——！！」
[np]

[r]虽然一两次迟到也不至于死……但话又说回来！
[np]

[supica storage="A_seifuku_M AB_1_M"]
[r]要我配合真珠星过于我行我素的作风被连累可饶不了你！
[np]

[character name="ryuichi"]
【龙一】[r]「呜咕……！」
[np]

[supica storage="A_seifuku_L AB_1_L"]
[playcv storage="supica_supica_00020_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……龙一……？」
[np]
[FACEHIDE]

[r]但要是强行拽她走的话，真珠星绝对会不高兴……
[np]

[r]至少在这家伙的认知里，明天这个星球就会灭亡吧。
[np]

[r]即便如此，也不能纵容她理直气壮地迟到……
[np]

[r]既然如此……就只能这样做了！
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星！」
[np]

[supica storage="C1_seifuku_L CD_8_L"]
[playcv storage="supica_supica_00020_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_8_FACE_seifuku"]

[char_jump name=supica]

【真珠星】[r]「呀……？」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]我背过身托起真珠星娇小纤细的身躯，将她整个背在背上。
[np]

[character name="ryuichi"]
【龙一】[r]「给我抓紧了！」
[np]

[playcv storage="supica_supica_00020_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_seifuku"]
【真珠星】[r]「哇……」
[np]
[FACEHIDE]

[playse buf=5 loop=true storage="sound/00220.ogg"]
[wait time="500"]

[r]随即我朝着通往学校的路拔腿狂奔。
[np]

[character name="ryuichi"]
【龙一】[r]「哈、哈啊、哈……！」
[np]

[r]幸好真珠星虽然比我小一岁，但个子矮小身体单薄，负担不算太重。不过……
[np]

[character name="ryuichi"]
【龙一】[r]「咕……！」
[np]

[r]刚狼吞虎咽吃完早餐就背着个女生狂奔……依旧很吃力……！
[np]

[playcv storage="supica_supica_00020_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]快了，马上就能看见校门了……！加把劲！这副身体给我争气点！！
[np]

;//時間経過
;//背景を空に

[HIDESYSTEMMENU]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]


[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[SYSTEMMENU]

[r]然后……
[np]

[r]虽然我成功将真珠星送到一年级教室避免了她的迟到……
[np]

[r]可自己却以毫厘之差比老师晚一步踏入教室，结果被彻底算作迟到。
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

;//JUMP:supica_00030
[jump storage="scenario/supica/supica_00030.ks"]
