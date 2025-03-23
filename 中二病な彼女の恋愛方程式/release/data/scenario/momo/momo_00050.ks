[SCENESTART file=momo_00050.ks]
;//momo_00050
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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/4(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00380_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「多谢款待。龙一，这个也拜托你了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，交给我吧」
[np]

[char_erase name="aoi"]

[r]周六的早晨，夏日的脚步正悄然临近。
[np]

[r]吃完早餐的我站在厨房里洗着大家的餐具。
[np]

[r]虽然没人拜托我这么做，但不在这种地方帮忙可不行啊。
[np]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_all_00380_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「嗯……哈啊……大家，早啊……」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00380_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「呃……」
[np]
[FACEHIDE]

[r]欸……？
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_all_00380_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「圣、圣水……！？」
[np]
[FACEHIDE]

[r]看到揉着惺忪睡眼的圣水，所有人一齐看向时钟，随后发出惊呼。
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00380_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「不会吧……难道封印终于被解开了……！？」
[np]
[FACEHIDE]

[char_erase name="aoi mion chisato"]

[momo storage="B_sifuku_M AB_8_M" trans=false]
[supica storage="A_sifuku_M AB_8_M" trans=false]
[char_trans]
[playcv storage="momo_all_00380_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「怎、怎么会……可是，现在才九点啊……！？」
[np]
[FACEHIDE]

[supica storage="B2_sifuku_M AB_8_M"]
[playcv storage="supica_all_00380_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「宇宙的法则出现了紊乱……」
[np]
[FACEHIDE]

[r]连真珠星都这么震惊的话，看来是相当罕见的情况……
[np]

[char_erase name="supica momo"]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00380_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「嗯……大家怎么了？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00380_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「圣、圣水小姐……现在可是早上啊！您不要紧吗！？」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_5_M"]
[playcv storage="satomi_all_00380_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「头有点痛……不过没事……哈啊～……」
[np]
[FACEHIDE]

[r]圣水小姐强忍着大哈欠，窸窸窣窣地挠着头。
[np]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00380_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「比起这个……今天有人安排活动吗？」
[np]
[FACEHIDE]

[r]面对圣水突如其来的问题，众人面面相觑。
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00380_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「我兼职也休息……没什么安排」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00380_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「我也打算整天待在家里」
[np]
[FACEHIDE]

[char_erase name="mion"]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00380_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「嗯嗯，葵你们呢……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_all_00380_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「今天要和桃一起进行暗魔法训练——」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_all_00380_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「总之就是有空对吧。真珠星应该也没问题……龙一呢？」
[np]
[FACEHIDE]

[char_erase name="satomi aoi"]

[character name="ryuichi"]
【龙一】[r]「我倒是没什么安排……」
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00380_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「好，ＯＫ……！早起的价值就体现在这儿嘛，全体都给我看好了！！」
[np]
[FACEHIDE]

[r]圣水气势十足地说着，用力拍了下桌子。
[np]

[char_erase name="satomi"]

[r]不，仔细看其实不是拍打桌子……更像是把某种门票？气势十足地按在桌上。
[np]

[satomi storage="A_sifuku_M AB_1_M" trans=false]
[chisato storage="D_sifuku_M CD_8_M" trans=false]
[momo storage="C_sifuku_M C_1_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00380_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「这是……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_all_00380_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「啊……游乐园的门票吗！？」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00380_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「正是如此！距离这里电车３０分钟路程的风见Ａｑｕａ　Ｐａｒａｄｉｓｅ免费入场券６张！！而且有效期就到今天！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00380_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「今、今天截止！？这、这是怎么弄到的……？」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_all_00380_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「哼哼哼……这是我父母之前从认识的报摊那里转让来的～」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00380_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「说是如果方便的话，就转交给宿舍的学生们使用～」
[np]
[FACEHIDE]

[char_erase name="satomi chisato momo"]

[r]圣水得意洋洋地晃动着六张门票说明道。
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_all_00380_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「那为什么拖到今天才说？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00380_011.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「当然是因为我忘得一干二净啊！啊哈哈哈！」
[np]
[FACEHIDE]

[r]请清醒一点圣水，现在只有你一个人在笑。
[np]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00380_012.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「然后昨晚突然想起来，要是明早再不送出去就要过期了嘛！所以今天才破天荒起了个大早！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_all_00380_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「原、原来是这样…」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00380_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「今天大家碰巧都有空还好说…至少应该提前告知我们呀」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[satomi storage="B_sifuku_M AB_5_M"]
[playcv storage="satomi_all_00380_013.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「别这么说嘛～我可是顶着宿醉的头痛，定了五个闹钟才挣扎着起来的！？」
[np]
[FACEHIDE]

[r]虽然这份努力值得肯定，但实在算不上值得表扬呢…
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00380_014.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「总之就是这么回事！刚好大家都很闲的样子，就一起去玩吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「圣水姐不一起去吗？」
[np]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00380_015.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「我ｐａｓｓ！比起去游乐园，躺着喝啤酒更开心！」
[np]
[FACEHIDE]

[r]会认真问她的我真是个笨蛋。
[np]

[char_erase name="satomi"]

[chisato storage="A_sifuku_M AB_8_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00380_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「那、那个……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_all_00380_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「大家准备好后，三十分钟后再到客厅集合……怎么样？」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00380_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「明白！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//新規ワード
[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00050_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「和大家一起去游乐园……好期待呀！」
[np]
[FACEHIDE]

[r]桃酱偶然与我四目相对，这样说着露出满脸笑容。
[np]

[r]游乐园啊……话说回来，这次是这六个人一起去呢。
[np]

[r]简单来说，根本不用细想就知道是男生一人加女生五人。
[np]

[r]用这种梦幻般的组合去游乐园……这必须要感谢圣水小姐啊！
[np]

;//新規ワード
[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00050_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「既然决定了，那就得赶紧准备……♪」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]桃酱迈着轻快的步伐登上楼梯，朝自己的房间走去。
[np]

[r]而我也同样，丝毫不逊色于那样的桃酱，切实感受到心情雀跃起来。
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

[jump storage="scenario/momo/momo_00060.ks"]