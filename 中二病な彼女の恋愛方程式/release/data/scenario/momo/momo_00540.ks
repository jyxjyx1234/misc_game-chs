[SCENESTART file=momo_00540.ks]
;//momo_00540
;//BG:bg01_03

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
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:夜
;//日付:7/21(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_momo_00540_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「……已经到了呢」
[np]
[FACEHIDE]

[r]抵达月光与路灯交相辉映的宿舍楼前时，桃酱依依不舍地轻声说道。
[np]

[r]在那之后，我们始终沉浸在甜蜜的约会氛围中……
[np]

[r]刚才，我和桃酱在之前两人单独去过的餐馆用完晚餐，现在才回到这里。
[np]

[character name="ryuichi"]
【龙一】[r]「要是走进这里，今天的约会就真的结束了……不过今天并不是最后一次啊」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00540_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「是……呢。暑假才刚刚开始……啊，可是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[momo storage="D_sifuku_M D_4_M"]
[playcv storage="momo_momo_00540_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「前辈的打工应该很忙吧……所以应该没法经常……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，这个……我压根没想到会变成现在这样」
[np]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00540_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「现在这样……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在暑假前夕，和桃酱这样可爱的女孩子交往……这种事」
[np]

[character name="ryuichi"]
【龙一】[r]「所以原本想着反正暑假有空，就打算尽量多排班……」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00540_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊……原来是这样啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过现在已经不能这样了……所以八月我会减少打工时间，多陪陪桃酱……」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00540_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「哎、真的吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯。因为是和女朋友一起度过的第一个暑假，想要尽情享受啊」
[np]

[momo storage="D_sifuku_M D_3_M"]
[playcv storage="momo_momo_00540_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「学长……♪」
[np]
[FACEHIDE]

[r]我们仍然牵着手，相视而笑的我和桃酱。
[np]

[r]只要穿过这道门，约会就结束了……
[np]

[r]明明两个人都心知肚明，却还故意拖延谈话时间的样子，总觉得有些滑稽。
[np]

[character name="ryuichi"]
【龙一】[r]「好啦……那就到此为止吧」
[np]

[momo storage="B_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00540_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「嗯、也是呢」
[np]
[FACEHIDE]

[r]于是我依然牵着她的手，推开了大门——
[np]
[char_erase name="momo"]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM03.ogg" time=1000]

[playcv storage="aoi_momo_00540_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「啊，回来啦！！」
[np]
[FACEHIDE]

[r]——咦？
[np]

[playcv storage="mion_momo_00540_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「哎呀，我还以为你们会去爱情旅馆待到早上呢……看来我的直觉不准嘛」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_momo_00540_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「诶、诶诶！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="A_sifuku_M AB_2_M" trans=false]
[supica storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00540_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「欢迎回来，两位」
[np]
[FACEHIDE]

[r]不仅是葵、澪音前辈和绫濑……全寮成员都聚集在客厅迎接我们归来。
[np]

[supica storage="B2_sifuku_M AB_2_M"]
[playcv storage="supica_momo_00540_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……桃，欢迎回来」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00540_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「我、我回来了，真珠星酱……」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_momo_00540_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「听说啦～你们今天去约会了？还是第一次约会！」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00540_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「是、是的没错啦……」
[np]
[FACEHIDE]

[char_erase name="satomi momo"]

[aoi storage="D_tokushu_M CD_9_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00540_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「怎、怎么样啊桃……！龙一那家伙有没有对你施什么妖里妖气的咒语……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啥意思啊你！话说大家怎么都……」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_momo_00540_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「这不是明摆着嘛。我们都想听听约会感想呀」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[momo storage="C_sifuku_M C_7_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="momo_momo_00540_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_9_M"]
[playcv storage="chisato_momo_00540_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「我、我只是正常在洗碗而已……不过大家吃完饭之后都一直留在客厅里……」
[np]
[FACEHIDE]

[r]啊……看来是澪音前辈走漏了风声……晚饭时肯定被大家当话题议论了吧。
[np]

[char_erase name="chisato momo"]

[supica storage="B3_sifuku_M AB_1_M"]
[playcv storage="supica_momo_00540_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……桃……」
[np]
[FACEHIDE]

[r]这时，抱着玩偶的真珠星向桃酱靠近了一步。
[np]

[supica storage="C3_sifuku_M CD_3_M"]
[playcv storage="supica_momo_00540_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……开心吗？」
[np]
[FACEHIDE]
[r]面对这样歪着脑袋询问的真珠星……
[np]

[char_erase name="supica"]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00540_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「……嗯，特别开心……♪」
[np]
[FACEHIDE]

[r]桃酱满脸笑容地回答道。
[np]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00540_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「和前辈去了购物中心……看了可爱的小物件和小宠物……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="B_tokushu_M B_4_M" trans=false]
[momo storage="C_sifuku_M C_3_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00540_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「挑选黑暗仪式要用的道具和自己使唤的召唤兽吗……听起来确实很有趣！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「才没有这回事！」
[np]

[momo storage="D_sifuku_M D_2_M"]
[playcv storage="momo_momo_00540_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「最后还一起吃了饭……嗯，真的特别开心……♪」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[mion storage="D_sifuku_M CD1_5_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00540_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「看这样子，好像什么都没发生嘛……真没劲。」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_11_M"]
[playcv storage="chisato_momo_00540_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「前辈您就是总期待些奇怪的事情才会这样……」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[r]不带一丝客套，桃酱笑着说出这样的感想……
[np]

[r]作为男朋友的我……真的比什么都开心。
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

[jump storage="scenario/momo/momo_00550.ks"]