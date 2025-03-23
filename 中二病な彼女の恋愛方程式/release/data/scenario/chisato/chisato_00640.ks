[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00640.txt]
;//chisato_00640
;//BG:bg13_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku


[r]然后……
[np]

[supica storage="D_sifuku_L CD_1_L" trans=false]
[momo storage="A_sifuku_M AB_8_M" trans=false]
[char_trans]

[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[playcv storage="momo_chisato_00640_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「真、真珠星酱、你要去哪里……？」
[np]
[FACEHIDE]

[supica storage="D_sifuku_L CD_12_L"]
[playcv storage="supica_chisato_00640_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「……星辰指引之地……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]
[r]我们以说着这种话的真珠星为首，伏木庄全体成员行走在夜晚的住宅区。
[np]

[character name="ryuichi"]
【龙一】[r]「啊，你们换好衣服了……？」
[np]

[chisato storage="C_sifuku_M CD_9_M"]
[playcv storage="chisato_chisato_00640_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「嗯、嗯……因为不知道目的地，所以还是……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]看来和千圣想到一块去了，仔细一看桃酱也换上了便服。
[np]

[mion storage="C_sifuku_M CD1_3_M" trans=false]
[aoi storage="C_tokushu_M CD_1_M" trans=false]
[char_trans]

[playcv storage="mion_chisato_00640_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「不过真是稀奇呢……居然是真珠星主动说有东西想给我们看」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_chisato_00640_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「确实……难道说，未知的遭遇……？接下来该不会有什么冲击性的发展在等着我们吧……！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]
[r]这像是广告旁白般的宣传词是怎么回事。
[np]

;//背景を校庭bg09_03に
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
[image storage="bg09_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[chisato storage="A_sifuku_M AB_4_M"]
[playcv storage="chisato_chisato_00640_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「咦，这里是……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]不止千圣，我们也都露出了同样的反应。
[np]

[satomi storage="C_sifuku_L CD_9_L" trans=false]
[chisato storage="B_sifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="satomi_chisato_00640_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_9_FACE_sifuku"]
【圣水】[r]「哦～好怀念啊！我的母校！青春的学习殿堂！我回来啦———！！！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_9_M"]
[playcv storage="chisato_chisato_00640_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「喂、别这么大声喊啊！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]


[supica storage="C2_sifuku_L CD_1_L"]
[mion storage="B_sifuku_M AB1_1_M"]

[playcv storage="mion_chisato_00640_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「真珠星，你要去哪？」
[np]
[FACEHIDE]

[supica storage="C3_sifuku_L CD_12_L"]
[playcv storage="supica_chisato_00640_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「这边……」
[np]
[FACEHIDE]

[char_erase name="supica mion"]


[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_chisato_00640_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「真、真珠星酱……！？哎、要进去里面吗……？」
[np]
[FACEHIDE]

[char_erase name="momo"]


[supica storage="B3_sifuku_M AB_1_M"]
[playcv storage="supica_chisato_00640_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「目的地……就快到了」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]这么说来，目的地就在校园里面……？
[np]

[aoi storage="D_tokushu_L CD_11_L" trans=false]
[mion storage="A_sifuku_M AB1_2_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00640_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「呵呵呵……我的血液开始沸腾了……这副身躯似乎感应到了什么……！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_chisato_00640_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「夜探教学楼……呵呵，挺有意思的……」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_chisato_00640_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「哎、哎哎……！？可、可是可是，万一被发现的话……」
[np]
[FACEHIDE]

[char_erase name="momo"]
[r]……虽然对桃酱有些不好意思，但我也确实有点小兴奋。
[np]

[r]夜间的校园可不是随便能进的……现在虽然不会被允许，但等我们长大后再做这种事的话，很可能会闹到警察那里。
[np]

[satomi storage="C_sifuku_L CD_9_L" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="satomi_chisato_00640_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_9_FACE_sifuku"]
【圣水】[r]「班主任秃头最近还好吗！？学号６号的小酒部圣水现在就去见您啦！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00640_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「所、所以说不要这么大声喊啊！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]
[r]……不过还好有个成年人在场……只要不被发现应该没问题吧。
[np]

;//背景を廊下bg10_03に
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[satomi storage="A_sifuku_L AB_9_L"]
[chisato storage="C_sifuku_M CD_11_M"]

[playcv storage="satomi_chisato_00640_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_9_FACE_sifuku"]
【圣水】[r]「啊这里这里！这就是我当年的教室！哇，完全没变样！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_11_M"]
[playcv storage="chisato_chisato_00640_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「圣水学姐……！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]
[r]正当大家上楼梯时，圣水突然指着偶然瞥见的教室兴奋起来。
[np]

[r]虽然主要是因为她喝了酒……不过时隔几年（？）重返学生时代待过的校舍，难免会恢复些童心吧。
[np]

[supica storage="C2_sifuku_L CD_1_L" trans=false]
[momo storage="A_sifuku_M AB_3_M" trans=false]
[char_trans]

[playcv storage="momo_chisato_00640_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「那、那个真珠星酱……这个该不会是……」
[np]
[FACEHIDE]

[supica storage="C2_sifuku_L CD_1_L"]
[playcv storage="supica_chisato_00640_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……马上就要……到了……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]
[r]在月光照耀下、被寂静笼罩的夜晚教学楼内……只有我们的脚步声在回荡。
[np]

[r]而且不知为何……我似乎也猜到目的地的大致方位了。
[np]

[r]从刚才开始就一直在爬楼梯……话说回来，再往上已经是……
[np]

;//背景を屋上bg12_03に
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
[image storage="bg12_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[supica storage="D_sifuku_L CD_12_L"]
[playcv storage="supica_chisato_00640_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「……到了……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]真珠星推开沉重的铁门，众人来到的地方是……
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_chisato_00640_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「屋顶……？」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]繁星满天的辽阔空间。
[np]

[satomi storage="C_sifuku_L CD_8_L"]
[playcv storage="satomi_chisato_00640_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_8_FACE_sifuku"]
【圣水】[r]「哇，这里也完全没变呢……以前经常和朋友在这里吃午饭来着」
[np]
[FACEHIDE]

[r]不知道是酒醒了几分，还是沉浸在回忆中……
[np]

[satomi storage="C_sifuku_L CD_5_L"]
[playcv storage="satomi_chisato_00640_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「……真怀念啊，真的……」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]刚才还闹腾个不停的圣水学姐，此刻却格外感慨万千地如此说道。
[np]

[momo storage="A_sifuku_M AB_2_M" trans=false]
[mion storage="C_sifuku_M CD1_3_M" trans=false]
[char_trans]

[playcv storage="momo_chisato_00640_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「真珠星酱想让我们看的……就是这片美丽的星空吗……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_chisato_00640_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「听你这么一说……比起刚才路上看到的星空，这里的星光似乎更加清晰明亮呢」
[np]
[FACEHIDE]

[char_erase name="mion momo"]
[r]顺着这句话抬头望去……确实，星辰的光芒似乎愈发耀眼了……
[np]

[supica storage="A_sifuku_L AB_12_L"]
[playcv storage="supica_chisato_00640_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「……不止如此……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00640_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎……还有……其他的什么——」
[np]
[FACEHIDE]

[char_erase name="chisato supica"]


[aoi storage="A_tokushu_L A_7_L"]
[playcv storage="aoi_chisato_00640_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「啊……！！」
[np]
[FACEHIDE]

[r]葵仰头望向夜空，发出一声短促的惊叫。
[np]

[momo storage="C_sifuku_S C_9_S"]
[playcv storage="momo_chisato_00640_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「怎、怎么了……？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_L B_9_L"]
[playcv storage="aoi_chisato_00640_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「刚才……看见了……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[aoi storage="D_tokushu_L CD_3_L" trans=false]
[mion storage="A_sifuku_M AB1_3_M" trans=false]
[char_trans]

[playcv storage="mion_chisato_00640_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「那个世界吗？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_L CD_3_L"]
[playcv storage="aoi_chisato_00640_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「不、不是那种东西！刚才，一闪……对，流星，我看见流星了！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]


[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00640_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_chisato_00640_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「八月十二日……今天，是能与英仙座流星群交汇的日子……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[character name="ryuichi"]
【龙一】[r]「流星群……也就是说……」
[np]

[supica storage="B2_sifuku_M AB_1_M"]
[playcv storage="supica_chisato_00640_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「如果继续观测下去……大约每隔十分钟就能目测到数次流星……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[momo storage="A_sifuku_L AB_2_L"]
[playcv storage="momo_chisato_00640_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「啊……！我、我也看到了！」
[np]
[FACEHIDE]

[char_erase name="momo"]
[r]桃酱使劲将食指指向星空，蹦蹦跳跳个不停。
[np]

[r]当然等听到这句话再抬头望去时，流星早就消失无踪了……
[np]

[supica storage="C2_sifuku_L CD_12_L"]
[playcv storage="supica_chisato_00640_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「……许愿……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00640_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎……？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_3_M"]

[supica storage="A_sifuku_L AB_2_L"]
[playcv storage="supica_chisato_00640_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「比赛……当天……大家一起来许愿……希望千圣能全力以赴……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_9_M"]
[playcv storage="chisato_chisato_00640_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「唔……」
[np]
[FACEHIDE]

[char_erase name="chisato supica"]


[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_chisato_00640_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「啊原来如此，这个主意不错！」
[np]
[FACEHIDE]

[char_erase name="satomi"]


[momo storage="A_sifuku_M AB_2_M" trans=false]
[aoi storage="A_tokushu_M A_2_M" trans=false]
[char_trans]

[playcv storage="momo_chisato_00640_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「对着流星许愿……实在太浪漫了！！」
[np]
[FACEHIDE]

[playcv storage="aoi_chisato_00640_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「原来是这么回事……听起来不坏……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00640_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「大家……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]

[r]……真是输给你们了。这种氛围……大家的温暖直击心灵……
[np]

[r]明明该专心找流星的，视线却开始模糊起来了……
[np]

[chisato storage="B_sifuku_M AB_2_M"]
[playcv storage="chisato_chisato_00640_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「……谢谢，真珠星……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[supica storage="B4_sifuku_M AB_3_M"]
[playcv storage="supica_chisato_00640_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_chisato_00640_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「那么，大家一起来许愿吧。希望千圣当天能够夺冠……！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00640_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「哎呀，我也想到个愿望……希望葵的脑子能再灵光一点……」
[np]
[FACEHIDE]

[char_erase name="mion momo"]

[aoi storage="D_tokushu_L CD_10_L"]
[playcv storage="aoi_chisato_00640_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_tokushu"]
【葵】[r]「要你多管闲事啊！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]节奏轻快的两人互动让夜晚的屋顶充满欢声笑语。
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00640_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[r]在这般光景中，我与千圣十指相扣……
[np]

[character name="ryuichi"]
【龙一】[r]「看来必须全力以赴，才能不留遗憾啊」
[np]

[chisato storage="A_sifuku_L AB_2_L"]
[playcv storage="chisato_chisato_00640_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「……嗯」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]我与大家共同仰望着流星璀璨的夜空。
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


;//JUMP:chisato_00650
[jump storage="scenario/chisato/chisato_00650.ks"]
