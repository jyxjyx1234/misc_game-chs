[SCENESTART file=momo_00790.ks]
;//momo_00790
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM11.ogg" time=1000]

;//TIME:昼
;//日付:8/3(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「我回来了……！」
[np]

[playcv storage="satomi_momo_00790_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「啊、回来了」
[np]
[FACEHIDE]

[r]看到桃酱往宿舍方向逃跑的我，暂且先回到了这里。
[np]

[r]可能正好是午休时间，客厅里全员都到齐了……
[np]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱没来吗？」
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_momo_00790_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「刚刚，她回来了……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00790_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「……怎么回事，翼神龙！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]在我脱了鞋走进来的面前，葵气势汹汹地挡住了去路。
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_momo_00790_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「本该和你一起出门的桃，为什么一个人……而且还哭着回来了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[char_erase name="aoi chisato"]

[r]哭着……也就是说，果然……。
[np]

[supica storage="B3_sifuku_M AB_4_M" trans=false]
[chisato storage="B_sifuku_M AB_6_M" trans=false]
[char_trans]
[playcv storage="supica_momo_00790_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「视事态发展，我不排除将你连同这宿舍一并摧毁的可能。」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_momo_00790_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「不…这样我们也很困扰…但是…」
[np]
[FACEHIDE]

[r]绫濑也在此刻止住话语，向我投来狐疑的目光。
[np]

[character name="ryuichi"]
【龙一】[r]「那个…具体情况我稍后会解释！」
[np]

[char_erase name="chisato supica"]

[playcv storage="aoi_momo_00790_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「喂、等等！？」
[np]
[FACEHIDE]

[r]甩开葵的追问后，我冲上楼梯…
[np]

;//背景をももの部屋bg05_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg05_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「桃酱！」
[np]

[r]闯入那间未上锁的房间…
[np]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00790_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「…啊…」
[np]
[FACEHIDE]

[r]只见桃酱哭得双眼通红，正垂头瘫坐在房间里。
[np]

[r]见此情形，我已大致明白原委。
[np]

[r]虽早有心理准备…但亲眼看到桃酱这般失魂落魄的模样，心里实在不是滋味…
[np]

[character name="ryuichi"]
【龙一】[r]「那个……桃酱……」
[np]

[r]我屈膝蹲下与她视线齐平，轻轻挪到桃酱身边。
[np]

[momo storage="C_sifuku_M C_6_M"]
[playcv storage="momo_momo_00790_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_sifuku"]
【桃】[r]「……前辈、对不起……我……我……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么要道歉呢……你又没做错什么对吧？」
[np]

[momo storage="D_sifuku_M D_5_M"]
[playcv storage="momo_momo_00790_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「可、可是……我一个人……闹、闹出这么羞人的误会……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没关系的……所以别难过了……」
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00790_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「……那、那个……我不是在难过……该、该怎么说……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_6_M"]
[playcv storage="momo_momo_00790_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「当、当然……检查结果不是怀孕……那个、虽然有点遗憾……但、但是……」
[np]
[FACEHIDE]

[r]虽然已经止住眼泪，但桃酱的脸依然像刚走出妇科时那般通红。
[np]

[momo storage="D_sifuku_M D_4_M"]
[playcv storage="momo_momo_00790_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「我、我会误会自己怀孕的原因……那个……其实是……」
[np]
[FACEHIDE]

[r]确实不像在消沉，倒更像是记忆中桃酱惯有的羞涩表情……
[np]

[momo storage="C_sifuku_L C_8_L"]
[playcv storage="momo_momo_00790_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「……前、前辈！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「呜哇！？」
[np]

[r]突然被抓住双肩，我不由得惊叫出声。
[np]

[momo storage="B_sifuku_L AB_8_L"]
[playcv storage="momo_momo_00790_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「绝、绝对……绝对不可以笑……能、能答应我吗！？」
[np]
[FACEHIDE]

[r]会这样事先声明的话……
[np]

[momo storage="A_sifuku_L AB_6_L"]
[playcv storage="momo_momo_00790_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「答应我吗！？会答应的对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我、我知道了！答应！我答应你！」
[np]

[momo storage="C_sifuku_L C_4_L"]
[playcv storage="momo_momo_00790_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「……那、那……我、我说了哦……」
[np]
[FACEHIDE]

[r]桃酱难为情地移开视线，将松开的双手夹在正坐的大腿间……
[np]

[momo storage="D_sifuku_M D_4_M"]
[playcv storage="momo_momo_00790_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「首、首先是那个……怀孕这件事，是我的错觉……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_momo_00790_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「……感觉肚子鼓起来是因为……那个………………好像……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[momo storage="D_sifuku_M D_6_M"]
[playcv storage="momo_momo_00790_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_sifuku"]
【桃】[r]「所、所以说，那个………………好像……是这么回事」
[np]
[FACEHIDE]

[r]在关键部分她的声音变得过于微弱，以我的听力根本听不清……！
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]看到我一脸困惑，桃酱似乎终于下定决心——
[np]

[momo storage="A_sifuku_L AB_6_L"]
[playcv storage="momo_momo_00790_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「所、所以说！！只是稍微胖了一点点而已嘛啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！」
[np]
[FACEHIDE]

[fadeinbgm storage="sound/BGM14.ogg" time=1000]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]胖…呃…只是胖了…而已…？
[np]

[character name="ryuichi"]
【龙一】[r]「噗…！！」
[np]

[r]冷、冷静啊我…！这可是稍有不慎就会当场分手的超大型地雷…！
[np]

[r]明明以为是怀孕，结果只是单纯长胖…不、怎么会…怎么会…
[np]

[momo storage="B_sifuku_L AB_5_L"]
[playcv storage="momo_momo_00790_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「…其实、也就增加了２公斤左右…但增加的体重都集中在腰腹部…」
[np]
[FACEHIDE]

[momo storage="C_sifuku_L C_4_L"]
[playcv storage="momo_momo_00790_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「我、我…把那个误以为是怀孕…所以才向学长报告了——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噗…！！」
[np]

[momo storage="A_sifuku_L AB_8_L"]
[playcv storage="momo_momo_00790_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「啊啊啊啊啊！！学、学长！？你刚才笑了吧！？绝对笑了对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我、我没笑！向神明发誓绝对没有笑！！只是嘴巴漏了点空气而已！！」
[np]

[momo storage="D_sifuku_L D_5_L"]
[playcv storage="momo_momo_00790_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「这个就是笑啊！！太过分了！太过分啦！明明约好绝对不笑的！！」
[np]
[FACEHIDE]

[r]桃、桃酱……！你捶我胸口的软绵绵拳头根本不痛哦……！
[np]

[momo storage="A_sifuku_L AB_6_L"]
[playcv storage="momo_momo_00790_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「呜哇啊啊啊！！学长是大笨蛋大笨蛋大笨蛋！！所以人家才不想说的嘛！！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_L AB_6_L"]
[r]桃酱涨红着小脸泪眼汪汪地扑进我怀里。
[np]

[r]我紧紧搂住桃酱颤抖的身体，直到她的情绪完全平复……
[np]

[r]虽说经历种种波折，但最终避免了学生时期就要当父亲的危机，这让我发自内心地松了口气。
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

[jump storage="scenario/momo/momo_00800.ks"]