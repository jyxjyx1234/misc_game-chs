[SCENESTART file=mion_00160.ks]
;//mion_00160
;//BG:bg06_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/10(金)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「哈啊……」
[np]

[r]晚饭后，冲个澡洗去汗水，然后回到既是前辈又是自己的房间。
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00160_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「怎么了，这么明显地叹起气来」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「前辈，您这样捉弄人可不好……」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00160_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这样捉弄人？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「明明知道还这样……绫濑就算了，但桃酱和葵可是会当真的类型啊」
[np]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00160_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「这样不是很有趣吗。值得捉弄一番呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈啊……话说，您在做什么？」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00160_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「在把今天约会的事情整理成文字记录」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘿诶……」
[np]

[r]从旁边偷看电脑屏幕，记事本界面密密麻麻写满了文字。
[np]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00160_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「能当作小说素材的事情也有几件呢……总之，结果还算不错吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好，真的……」
[np]

[r]不然我的付出就毫无意义了。
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00160_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「嗯、嗯───……」
[np]
[FACEHIDE]

[r]澪音前辈双手合十向上伸展，轻轻吐了口气。
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00160_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「一直敲键盘肩膀都僵了……龙一，帮我揉揉？」
[np]
[FACEHIDE]

;//all_00300で「よし、やりましょう！」を選んでいる場合
[if exp="f.Select00300_0==0"]
	[jump target="*selectA"]
[endif]
[if exp="f.Select00300_0==1"]
	[jump target="*selectB"]
[endif]

*selectA
[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00160_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「哎呀，这张不情愿的脸是怎么回事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没、没有不情愿，我揉就是了……」
[np]

[r]上次揉肩膀时，澪音前辈发出的怪声让我很困扰……
[np]

[r]这次也担心她会故技重施……不过也没法拒绝。
[np]

;//ここまで
[jump target="*BranchEnd"]

;//all_00300で「お断りします！」を選んでいる場合

*selectB
[character name="ryuichi"]
【龙一】[r]「肩膀吗？倒也不是不行……」
[np]

[mion storage="mion_AB1_2_FACE_sifuku"]
[playcv storage="mion_mion_00160_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那就拜托啦」
[np]
[FACEHIDE]

[r]上次你让我帮忙时，我一口咬定是陷阱就拒绝了。
[np]

[jump target="*BranchEnd"]
;//ここまで

;//合流地点
;//通常ＣＧ挿入

*BranchEnd
[fadeoutbgm time=1000]

[CG cgno=52 sabunno=01]

[character name="ryuichi"]
【龙一】[r]「那我就失礼了」
[np]

[fadeinbgm storage="sound/BGM10.ogg" time=1000]

[r]绕到澪音前辈身后，将双手放在她纤细的双肩上。
[np]

[character name="ryuichi"]
【龙一】[r]「总之，普通的揉肩……就可以了吧？」
[np]

[playcv storage="mion_mion_00160_010.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯，没问题」
[np]

[r]指尖施力，隔着衣服揉捏起前辈的肩膀。
[np]

[CG cgno=52 sabunno=03]

[playcv storage="mion_mion_00160_011.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、嗯嗯……」
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇，肩膀硬得离谱……」
[np]

[playcv storage="mion_mion_00160_012.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「可不是嘛……不光是因为电脑，最近考试复习也一直没停……嗯、啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「前辈的考试结果怎么样？」
[np]

[playcv storage="mion_mion_00160_013.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「按我自己估分的话，大概有九十分以上……八十分后半的科目有一两门左右吧」
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[playcv storage="mion_mion_00160_014.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「龙一？怎么了？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、不好意思……」
[np]

[r]……难道说，伏木庄除了我和葵之外全是优等生……？
[np]

[CG cgno=52 sabunno=04]

[playcv storage="mion_mion_00160_015.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「啊、嗯、那里……」
[np]

[character name="ryuichi"]
【龙一】[r]「这里吗？」
[np]

[playcv storage="mion_mion_00160_016.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「对、那里……舒服……」
[np]

[character name="ryuichi"]
【龙一】[r]「那个，能不能别发出奇怪的声音……？」
[np]

[CG cgno=52 sabunno=03]

[playcv storage="mion_mion_00160_017.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「诶……？奇怪的声音是指什么样的声音……？」
[np]

[character name="ryuichi"]
【龙一】[r]「那个是……」
[np]

[playcv storage="mion_mion_00160_018.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「因为龙一的双手让我很舒服……不知不觉就发出声音了……」
[np]

[playcv storage="mion_mion_00160_019.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「龙一说的奇怪声音，具体是指什么样的声音呢？」
[np]

[character name="ryuichi"]
【龙一】[r]「我、我要继续了……！」
[np]

[CG cgno=52 sabunno=02]

[playcv storage="mion_mion_00160_020.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嘻嘻……」
[np]

[r]要是在这里说出什么喘息声啊、甜美的声音啊之类的话，肯定又会被捉弄……！
[np]

[CG cgno=52 sabunno=03]

[playcv storage="mion_mion_00160_021.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、啊……」
[np]

[r]所以必须尽量不理会她，只考虑如何平安无事地撑过这个场面……
[np]

[playcv storage="mion_mion_00160_022.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「啊、嗯……哈啊、啊、嗯嗯……」
[np]

[r]只、只要撑过……去……就……
[np]

[playcv storage="mion_mion_00160_023.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯嗯……嗯、哈啊……啊、啊啊、那、那里……好……」
[np]

[playcv storage="mion_mion_00160_024.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「还要……再多些，龙一……啊、呀啊……！」
[np]

[playcv storage="mion_mion_00160_025.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「对、就这样……把我的……把我敏感的地方，弄得乱七八糟吧！！」
[np]

;//背景表示
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「给我等一下啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[fadeinbgm storage="sound/BGM14.ogg" time="1000"]

[r]像相斥的磁铁般后退，与痴女般的澪音学姐拉开距离。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00160_026.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「哎呀，怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这根本不是“怎么了”的问题吧！我都说了不要发出那种声音！」
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00160_027.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「这也是没办法呀？舒服的时候自然会忍不住……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00160_028.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「比起这个……难道说我发出声音会让龙一有什么困扰吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？那、那个是……」
[np]

[r]澪音学姐仿佛能看透内心的眼眸……我无法直视她的眼睛，不由自主移开了视线。
[np]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00160_029.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「啊对了……之前我换衣服的时候，龙一有闯进过房间对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我可是敲过门的！」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00160_030.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那次最后被千圣打断了……当时龙一到底在慌张什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「慌、慌张什么的……那种情况下绫濑要是进来房间的话会有各种麻烦……」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00160_031.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「只是这样……？」
[np]
[FACEHIDE]

[char_erase name="mion"]
[r]学姐探身注视我的脸庞，仿佛在寻求更深层的答案。
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00160_032.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「可我明明看见……龙一的下半身都鼓起来了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！！！」
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00160_033.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「那到底是什么呢……呵呵……」
[np]
[FACEHIDE]

[r]还说什么不知道……你明明心里清楚得很吧……！
[np]

[mion storage="A_sifuku_M A_1_M"]
[playcv storage="mion_mion_00160_034.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「对了……我们开始同居生活时，最初可是定下了各种规矩对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是、是啊……」
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00160_035.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「只要是规矩里没写的事情，原则上做什么都可以哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]做什么……都可以吗……？
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00160_036.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「意思是说……只要没有擅自触碰我的身体、或是偷偷上锁的话……龙一也可以自由行动」
[np]
[FACEHIDE]

[r]虽然不太明白她想表达什么……但被这种暧昧的氛围感染，心脏开始莫名怦怦直跳……
[np]

[mion storage="C_sifuku_M CD1_8_M"]
[playcv storage="mion_mion_00160_037.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_sifuku"]
【澪音】[r]「比如说……」
[np]
[FACEHIDE]

[r]学姐这么说着，将手指勾住便服的领口……
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！！」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00160_038.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「把我这副模样深深烙印在眼底……用这份记忆做什么都是龙一的自由……呵呵」
[np]
[FACEHIDE]

[r]胸、胸前的沟壑都……完全暴露无遗……！
[np]

[r]被展示这种画面后要做什么都是我的自由……这难道是说……
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00160_039.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「呵呵……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……不、不是……那个，我……我去趟便利店！！」
[np]

[char_erase name="mion"]

;//背景を寮の前bg01_03に
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]将运动鞋的后跟踩在脚下胡乱套上，冲出玄关跑到外面。
[np]

[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//背景を通学路bg13_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「哈、哈啊、哈……」
[np]

[r]就这样漫无目的地全力狂奔……过了片刻，双手撑在膝盖上弯下腰。
[np]

[character name="ryuichi"]
【龙一】[r]「哈啊……哈、哈啊……」
[np]

[r]明明刚洗过澡，全身又变得汗涔涔的……
[np]

[r]毕竟跑了这么远，这样也情有可原……不，比起这个……
[np]

[character name="ryuichi"]
【龙一】[r]「……哈……」
[np]

[r]那种说法……说白了就是那个意思吧？
[np]

[r]把澪音学姐当作打手枪的对象，自慰也没关系的意思对吧……？
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]要说当素材的话确实无可挑剔。那么巨乳又身材火辣，光是看着就能多吃十碗饭。
[np]

[r]说实话，之前看到她换衣服的时候……也不是没动过这种歪脑筋，不过……
[np]

[character name="ryuichi"]
【龙一】[r]「但真要拿住在同个宿舍的女生当素材，总觉得……」
[np]

[r]良心上过意不去，或者说……再加上那时候我还住在客厅，能独处的空间只有厕所和浴室二选一。
[np]

[r]所以最后，把澪音学姐当素材这种事，一次都没做过就是了……
[np]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]看到那道乳沟的瞬间……浑身发烫，心脏都快跳出嗓子眼了。
[np]

[r]起初以为只是……看到性感身材后，作为男人单纯的兴奋反应……
[np]

[character name="ryuichi"]
【龙一】[r]「……搞什么啊……」
[np]

[r]只要想到学姐的事……胸口深处就会一阵揪紧。
[np]

[r]这并不局限于想象穿着内衣的前辈、或是被揉肩喘息时的前辈……
[np]

[r]光是想象在宿舍、校园和房间里普通相处的澪音学姐，就会涌起前所未有的感情。
[np]

[character name="ryuichi"]
【龙一】[r]「……开玩笑吧……？」
[np]

[r]虽然用玩笑般的语气质问自己，这份情感却始终无法消散。
[np]

[r]确实最近……应该说自从同住之后，和澪音学姐接触的机会大幅增加了……
[np]

[r]难道说，我对澪音学姐……？
[np]

[r]喂喂喂……这种状态下，明天开始要怎么正常相处啊……！？
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

[jump storage="scenario/mion/mion_00170.ks"]