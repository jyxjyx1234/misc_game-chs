[SCENESTART file=momo_00580.ks]
;//momo_00580
;//BG:bg05_01

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
[image storage="bg05_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/24(金)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,tokushu
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「好嘞……」
[np]

[r]距离第一次约会那天，已经过去数日。
[np]

[r]比平时稍晚醒来的我，独自在桃酱的房间里换下睡衣。
[np]

[r]刚开始同居时在女生房间换衣服总感觉不自在……现在倒是完全习惯了。
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]一边这样想着一边走出房间，顺着楼梯往下——
[np]

[fadeinbgm storage="sound/BGM04.ogg"]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00580_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「嘎啊啊啊啊啊！」
[np]
[FACEHIDE]

[momo storage="D_tokushu_M D_7_M"]
[playcv storage="momo_momo_00580_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「师父！？」
[np]
[FACEHIDE]

[r]……嗯？
[np]
[char_erase name="momo aoi"]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_momo_00580_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵呵……没错，继续挣扎吧！在痛苦中翻滚吧！欣赏你那副表情正是我最大的愉悦……！」
[np]
[FACEHIDE]
[r]一边摆出招牌姿势，一边放声大笑的澪音学姐……
[np]

[char_erase name="mion"]

;//「パラサイトペイン」でお願いします
[aoi storage="B_tokushu_M B_5_M" trans=false]
[momo storage="A_tokushu_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00580_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「身、身体……这就是『痛苦寄生』的力量……！呜、呜啊啊啊……！」
[np]
[FACEHIDE]

[r]葵像是要抓破喉咙般，在客厅里痛苦地翻滚着。
[np]

[momo storage="B_tokushu_M AB_7_M"]
[playcv storage="momo_momo_00580_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
【桃】[r]「请、请等一下师父！我现在就施展治愈魔法……啊」
[np]
[FACEHIDE]

[r]旁边穿着那套标志性服装的桃酱……啊，发现我了。
[np]

[aoi storage="D_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00580_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「嗯……噢噢，翼神龙！你是第一时间察觉到我的……不，是察觉到桃的危机才降临现世的吗！」
[np]
[FACEHIDE]

[r]不妙啊这架势，完全是要被卷入的节奏了。
[np]

[char_erase name="aoi momo"]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_momo_00580_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「好，就让翼神龙来争取时间，趁现在施展治愈魔法……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「葵，今天的早饭吃什么？」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00580_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「那只是临时称号！现在的我乃是自暗魔界深渊苏醒的……喂、喂！有没有在听啊！」
[np]
[FACEHIDE]

[r]……这样子怎么看都没法好好吃早饭了吧。
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「那个……抱歉桃酱。我今天还是在房间吃早——」
[np]

[momo storage="D_tokushu_M D_9_M"]
[playcv storage="momo_momo_00580_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「我、我才不是什么桃酱！」
[np]
[FACEHIDE]

[r]诶……？
[np]

;//「ダークリベンジャー」「ダークプリーステス」でお願いします
[momo storage="B_tokushu_M AB_8_M"]
[playcv storage="momo_momo_00580_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「现在的我是—漆黑复仇者—的首席弟子！—堕天塞西圣职者—！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等…桃、桃酱！？」
[np]

[momo storage="C_tokushu_M C_9_M"]
[playcv storage="momo_momo_00580_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「都、都说了不是桃啦ー！」
[np]
[FACEHIDE]

[r]怎么会…原以为唯一的伙伴桃酱，居然完全倒戈到对面了…！？
[np]

[r]既、既然如此，只能向那位在保持常识的同时还能灵活切换中二状态的前辈求助——
[np]

[char_erase name="momo"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00580_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「咯咯咯…杂鱼多一条，不过是多声惨叫罢了…？」
[np]
[FACEHIDE]

[r]不行！这人完全在享受我现在的处境啊！！
[np]

[char_erase name="mion"]

[momo storage="A_tokushu_M AB_6_M"]
[playcv storage="momo_momo_00580_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_tokushu"]
【桃】[r]「拜、拜托了翼神龙！用这枚…这枚黑曜石的力量，请一定要守护我们…！」
[np]
[FACEHIDE]

[r]这不是前阵子从葵那里拿的普通石头…不对，是据说浸染着我鲜血的黑曜石吗…
[np]

[r]不过话说回来，现在还是吃早饭更重要…
[np]

[r]而且前两天打工实在太累，实在没心情应付这种状况。所以！！
[np]

[character name="ryuichi"]
【龙一】[r]「告辞了！！」
[np]

[momo storage="C_tokushu_M C_8_M"]
[playcv storage="momo_momo_00580_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_tokushu"]
【桃】[r]「啊！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

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

;//背景を寮の前bg01_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM02.ogg"]

[r]为了逃离中二病战斗，我冲出了宿舍。
[np]

[r]好在钱包和手机都在……早饭随便找个地方解决……
[np]

[momo storage="D_tokushu_M D_7_M"]
[playcv storage="momo_momo_00580_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「前、前辈！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……桃、桃酱？」
[np]

[r]不知是不是追着我出来的，桃酱仍穿着那身装扮跟了过来。
[np]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_momo_00580_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「那、那个……对、对不起……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊？」
[np]

[momo storage="B_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00580_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「就、就是……那个…硬要把你卷进来什么的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦……没、没事啦，不用在意……」
[np]

[r]…仔细看看…这身装扮还挺可爱的嘛。
[np]

[r]简直像是角色扮演…或者说像是动画、游戏角色降临现世……
[np]

[r]在宿舍里，或者说在那股氛围中时还没觉得，但看到日常风景中突然浮现的这副身姿，不由得产生了这样的念头。
[np]

[momo storage="A_tokushu_M AB_7_M"]
[playcv storage="momo_momo_00580_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
【桃】[r]「前、前辈……？」
[np]
[FACEHIDE]

[r]……怎么样，要不要试试看……
[np]

[character name="ryuichi"]
【龙一】[r]「我说，桃酱」
[np]

[momo storage="C_tokushu_M C_7_M"]
[playcv storage="momo_momo_00580_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「是、是的，有什么事吗……？」
[np]
[FACEHIDE]

[r]看着微微歪着脑袋的桃酱那身装扮，我再次仔细确认后……
[np]

[character name="ryuichi"]
【龙一】[r]「我有个提议……」
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

[jump storage="scenario/momo/momo_00590.ks"]