[SCENESTART file=mion_00610.ks]
;//mion_00610
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
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:夜
;//日付:7/26(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="A_sifuku_M A_1_M"]
[playcv storage="satomi_mion_00610_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「哦……那么结果那个冥界之门到底开了吗？」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_mion_00610_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「不……可惜我未能亲眼看到……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_mion_00610_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「对不起师傅……！要是我……要是我更有力量的话……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_mion_00610_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「别自责了桃……机会还会再来的……在那之前要特训！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_mion_00610_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「是！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]晚餐时分。与谈笑风生的葵和桃酱形成鲜明对比的是……
[np]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_mion_00610_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「……果然还是有点做过头了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可能……是吧」
[np]

[r]对澪音前辈缺席这件事感到愧疚的我们两人。
[np]

[char_erase name="chisato"]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_mion_00610_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「说起来澪音怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……前辈说身体不舒服……现在在房间休息呢。哈哈哈……」
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_mion_00610_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「哦……这种情况该怎么说来着？恶鬼错乱？」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00610_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「要说的话应该是霍乱吧……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]虽然确认到她从厕所出来了……但之后就一直待在房间里没出来过……
[np]

[supica storage="B1_sifuku_M AB_2_M"]
[playcv storage="supica_mion_00610_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……吃完了，多谢款待」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_mion_00610_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真、真珠星酱？炒蔬菜里的青椒还剩着呢……」
[np]
[FACEHIDE]

[supica storage="B4_sifuku_M AB_4_M"]
[playcv storage="supica_mion_00610_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……那不算食物」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_mion_00610_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「你这么说的话，千圣小姐会生气的哦……？」
[np]
[FACEHIDE]

[supica storage="C3_sifuku_M CD_3_M"]
[playcv storage="supica_mion_00610_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……那我把青椒给龙一」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_mion_00610_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「哎？　啊……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_mion_00610_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「……果然还是该去道歉……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不好说……等会儿，我再去跟她聊聊吧……」
[np]

[r]虽说被揭露了秘密，但为了小说什么都做得出来的前辈，那样对她确实有点……
[np]

[character name="ryuichi"]
【龙一】[r]「确实有点得意忘形了……等晚饭吃完，我先去道歉好了」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_mion_00610_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「抱歉……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没事……别放在心上」
[np]

[playcv storage="supica_mion_00610_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「……多谢款待」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_mion_00610_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「粗茶淡饭……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]这青椒的量也太夸张了吧……咦？有放这么多吗？
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

[jump storage="scenario/mion/mion_00620.ks"]