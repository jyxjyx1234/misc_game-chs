[SCENESTART file=aoi_00520.ks]
;//aoi_00520
;//BG:bg03_01

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
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/18(土)
;//CH:竜一,pajyama
;//CH:葵,pajyama
;//CH:千聖,sifuku

[character name="ryuichi"]
【龙一】[r]「嗯、嗯嗯……」
[np]

[r]……咦？总觉得被子的触感跟平时不太一样——
[np]

[character name="ryuichi"]
【龙一】[r]「啊！」
[np]

[r]睁开眼的瞬间，葵的睡颜近在眼前，差点惊慌失措。
[np]

[r]对了，昨天和葵一起睡了同一张床来着……完全忘记了。
[np]

[aoi storage="C_pajyama_L CD_5_L"]
[playcv storage="aoi_aoi_00520_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_pajyama"]
【葵】[r]「嗯……呼……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]正欲起身时，却被葵安详的睡颜吸引得移不开眼。
[np]

[r]光是看着女孩子的睡颜就足够惹人怜爱……
[np]

[r]当然也有因为这是自己爱上的葵的睡颜的缘故吧……总觉得能一直看下去。
[np]

[aoi storage="A_pajyama_L A_10_L"]
[playcv storage="aoi_aoi_00520_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_pajyama"]
【葵】[r]「唔嗯……」
[np]
[FACEHIDE]

[r]用悄悄伸出的食指戳了戳她柔软的脸蛋，软乎乎地戳来戳去。
[np]

[aoi storage="D_pajyama_L CD_5_L"]
[playcv storage="aoi_aoi_00520_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_pajyama"]
【葵】[r]「嗯、唔……呜……嗯……」
[np]
[FACEHIDE]

[r]刚睡醒的困惑表情也如此可爱，明知不该却停不下逗弄她的手指。
[np]

[aoi storage="B_pajyama_L B_10_L"]
[playcv storage="aoi_aoi_00520_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_10_FACE_pajyama"]
【葵】[r]「嗯～……咿……呜嗯……」
[np]
[FACEHIDE]

[r]啊……和她一起迎接清晨竟如此美好……
[np]

[r]干脆让时间永远停在此刻——
[np]

[char_erase name="aoi"]

[quake time="500"]

[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎！！！！！！！？？？？」
[np]

[r]等等，已经这个时间了！？我今天有打工啊！！
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00520_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「嗯、嗯嗯……龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……！对、对不起葵！吵醒你了吗！？」
[np]

[aoi storage="A_pajyama_M A_4_M"]
[playcv storage="aoi_aoi_00520_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_pajyama"]
【葵】[r]「唔、嗯……比起这个，刚才的惊叫是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对了！我今天要打全天工！得赶紧……！」
[np]

[char_erase name="aoi"]

;//背景を寮のリビングbg02_01に

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[playse buf=5 storage="sound/00280.ogg"]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00520_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「啊、早安神原……怎么慌慌张张的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「早上好绫濑！早饭已经做好了吗！？」
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00520_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「嗯、算是做好了……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「接下来要去打工，但起得太晚面临迟到危机……！」
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00520_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「啊、是这么回事啊。那、给你这个」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢啦、帮大忙了！」
[np]

[char_erase name="chisato"]

[r]狼吞虎咽地吃着刚端出来的米饭味噌汤，以及现煎的培根煎蛋。
[np]

[r]从这里到超市跑步十分钟……也就是说必须在五分钟内吃完这些！
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00520_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「虽然赶时间也没办法……但别太慌张噎到喉咙哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯嗯嗯嗯！我我我马上吃完！！」
[np]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_aoi_00520_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「不用边吃边说话！」
[np]
[FACEHIDE]

;//葵の服装を中二衣装に
[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00520_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「龙、龙一、打工要迟到了吗……？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00520_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「啊、早上好葵。听说某人睡过头了呢」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00520_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「原、原来是这样……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好我吃饱了！然后我出发了！」
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00520_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「好快！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00520_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「啊、等、等一下龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00520_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「对、对了……今天应该轮到我负责采购的！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00520_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「没错，确实是葵——」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00520_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「那、那我也要一起去……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……但是我得用跑的冲去超市哦？」
[np]

[aoi storage="B_tokushu_M B_1_M"]
[playcv storage="aoi_aoi_00520_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「哼……这点距离的话，用我的空间转移术五秒就能抵达！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是吗！那就拜托你用这个能力带我去打工地点吧！快！」
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00520_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「但这个术式只能对我自己生效！快跑起来吧龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「结果还是变成这样了啊！！啊啊真是的！！」
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00520_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「啊哈哈，路上小心哟」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

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

;//JUMP:aoi_00530
[jump storage="scenario/aoi/aoi_00530.ks"]