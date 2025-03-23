[SCENESTART file=mion_00500.ks]
;//mion_00500
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
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM11.ogg" time=1000]

;//TIME:昼
;//日付:7/24(金)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[r]然后，时间来到一周后的周五早晨。
[np]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00500_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「……」
[np]
[FACEHIDE]

[r]此刻我和澪音前辈正单独在起居室享用稍晚的早餐……
[np]

[character name="ryuichi"]
【龙一】[r]「那个，可以开电视吗？」
[np]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00500_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「开吧。反正也都是些无聊的节目」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]前辈兴趣缺缺地说着，将吐司送入口中。
[np]

[r]今天就是最终选拔结果公布的日子。
[np]

[r]听说具体公布时间并未明确告知，说实话真是让人煎熬。
[np]

[r]……就在我们用餐的当下，评选结果说不定已经出炉了。
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00500_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「……呼」
[np]
[FACEHIDE]

[r]前辈轻啜一口咖啡，发出细微的吐息声。
[np]

[r]就连一贯冷静的澪音前辈，今天也显得有些心神不宁。不过这也难怪……。
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00500_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「龙一今天要打工吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、是的……大概是从中午到傍晚」
[np]

[mion storage="D_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00500_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「这样啊……等到龙一回来的时候，结果应该就出来了吧」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]前辈拿着吃完的餐具起身离席。
[np]

[r]站在水槽前的前辈背影，似乎比平时显得稍微纤弱了些。
[np]

;//時間経過
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM02.ogg" time=1000]

【龙一】[r]「呼……」
[np]

[r]而此刻，我即将迎来打工的时间……
[np]

[r]遗憾的是，直到出门前前辈的评选结果都没有公布。
[np]

[r]虽然很想带着清爽的心情去打工……不过也没办法啊。
[np]

[character name="ryuichi"]
【龙一】[r]「好了……」
[np]

[r]重新系好松开的鞋带，在脑子里确认没有遗忘物品。
[np]

[r]想象着打开这扇门后，外界的暑气就会扑面而来……怀着这种略微消沉的预感，我走向了玄关——
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00500_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「龙一」
[np]
[FACEHIDE]

[r]正当我伸手去握门把手时，身后传来了前辈的声音。
[np]

[character name="ryuichi"]
【龙一】[r]「啊咧……你是特意来送我的吗？」
[np]

[r]虽然出门时确实说过「我出发了」。
[np]

[mion storage="D_sifuku_M CD1_5_M"]
[playcv storage="mion_mion_00500_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「原本没有这个打算的……不过结果上来看，确实是这样呢」
[np]
[FACEHIDE]

[r]前辈用手指拨开刘海，继续说着话。
[np]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00500_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「公布了。评选结果」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……！！」
[np]

[r]先是怀疑自己听错了，在确认这句话的含义后……
[np]

[r]看着告知消息的前辈表情，我大概已经猜到结果了。
[np]

[character name="ryuichi"]
【龙一】[r]「……那、结果怎么样……？」
[np]

[r]即便如此，我还是忍不住要问。抱着渺小的希望挤出这句询问，然而……
[np]

[mion storage="A_sifuku_M AB1_6_M"]
[playcv storage="mion_mion_00500_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_sifuku"]
【澪音】[r]「……」
[np]
[FACEHIDE]


[r]……终究没能从前辈口中听到捷报。
[np]

[char_erase name="mion"]

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

[jump storage="scenario/mion/mion_00510.ks"]