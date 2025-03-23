[SCENESTART file=momo_00670.ks]
;//momo_00670
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
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

;//TIME:昼
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:もも,sifuku
;//CH:千聖,sifuku

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00670_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「啊、早安神原君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、早安……哈……」
[np]

[char_erase name="chisato"]

[r]强忍住涌上来的哈欠，与绫濑打过招呼后坐到位子上。
[np]

[r]今天开始就是八月了啊……总算有盛夏的感觉了。
[np]

[character name="ryuichi"]
【龙一】[r]「桃酱早啊。今天来得真早呢」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00670_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊、是、是的……早、早安……」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_momo_00670_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「喏，早餐。今天也要打工？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢啦。今天本来是休息的，不过昨天被店长低头拜托了……上午临时去帮忙」
[np]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_momo_00670_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「这么说来，这是连续第六天上班？真努力呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过，八月的排班减少了很多……这样就能有更多时间和桃酱在一起了。」
[np]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_momo_00670_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「是是是，我吃饱了」
[np]
[FACEHIDE]

[r]绫濑轻轻挥着手，收拾好吃完的餐具离开了。
[np]

[momo storage="C_sifuku_M C_4_M"]
[playcv storage="momo_momo_00670_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……桃酱？」
[np]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00670_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
[char_jump name="momo"]
【桃】[r]「啊……是、是的，有什么事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没什么……」
[np]

[char_erase name="momo chisato"]

[r]刚才那句话，本来是更想对桃酱说的……
[np]

[r]因为桃酱毫无反应，结果变成了由绫濑接话的局面。
[np]

[r]……总觉得她看起来有点坐立不安……是我想多了吧。
[np]

[r]不过也不能太悠闲了。得赶紧吃完做好出门准备。
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//時間経過
;//もも視点
[momo storage="D_sifuku_M D_1_M"]
[playcv storage="momo_momo_00670_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「我、我吃好了……」
[np]
[FACEHIDE]

[r]在空无一人的客厅里，我一边收拾餐具一边说道。
[np]

[char_erase name="momo"]

[r]然后……
[np]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_momo_00670_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「啊…」
[np]
[FACEHIDE]

[r]没有人在…对吧，嗯。
[np]

[r]确认厕所里没有人的气息后，我站到了体重秤前。
[np]

[r]如果这次…这次数字和之前不同的话…那就是说…
[np]

[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_momo_00670_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
[char_jump name="momo"]
【桃】[r]「啊、哎…！」
[np]
[FACEHIDE]

[r]虽然嘴上喊着气势十足的呐喊，却小心翼翼地用脚尖先踩上去。
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00670_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊…！！」
[np]
[FACEHIDE]

[r]果、果然不是错觉…
[np]

[r]难、难道我…！！
[np]

[char_erase name="momo"]

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

[jump storage="scenario/momo/momo_00680.ks"]