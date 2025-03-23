[SCENESTART file=all_00430.ks]
;//all_00430
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

;//TIME:昼
;//日付:7/6(月)
;//CH:竜一,seifuku
;//CH:すぴか,sifuku

[character name="ryuichi"]
【龙一】[r]「我回来了」
[np]

[r]试着打了声招呼…咦，没人吗。
[np]

[r]平时这个时间圣水小姐应该在客厅边喝啤酒边看电视的…在房间里？
[np]

[r]把书包扔进玄关的置物架后，我打开冰箱。
[np]

[r]取出装着麦茶的容器，往玻璃杯里加冰块时——
[np]

[character name="ryuichi"]
【龙一】[r]「嗯…？」
[np]

[r]听到有人下楼梯的脚步声，回头一看…
[np]

[character name="ryuichi"]
【龙一】[r]「啊，真珠星。你回来了啊」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「…嗯」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]像往常一样冷淡地回应后，真珠星穿上了鞋子。
[np]

[character name="ryuichi"]
【龙一】[r]「要出门吗？」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「…今天收到了来自宇宙的通信…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……呃……？」
[np]

[supica storage="B2_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「所以我要去能看得最清楚星星的地方……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，河滩吗？不过这个时间应该还没——」
[np]

[supica storage="D_sifuku_M CD_3_M"]
[playcv storage="supica_all_00430_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「不对。是更高、更安静的地方」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……」
[np]

[r]更高、更安静……？有那种地方吗？
[np]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]
	[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[endif]



[character name="ryuichi"]
【龙一】[r]「那个……总之是要去看星星对吧？」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……是的」
[np]
[FACEHIDE]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=我能一起去吗？ jump target="*select1"]
	[select_button text=路上小心 jump target="*select2"]
[select_end]

;//俺も行っていいか？、を選んだ場合
*select1
[SetSJumpFlg storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00400.ks" target="*SCJump2" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00430_0=0"]
[eval exp="f.love_supica=f.love_supica+1"]
[jump target="*selectA"]
*selectA

[character name="ryuichi"]
【龙一】[r]「我能一起去吗？」
[np]

[supica storage="B1_sifuku_M AB_8_M"]
[playcv storage="supica_all_00430_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「咦……？」
[np]
[FACEHIDE]

[r]与其说是想看星星，不如说是在意真珠星要去的地方。
[np]

[r]比河滩更适合观星、更高更安静的场所……想要知道那究竟是什么地方的心情。
[np]

[character name="ryuichi"]
【龙一】[r]「当然，要是不方便就算了……」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……无妨」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、那……」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「嗯……龙一也可以一起来」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢了，那我先去换件衣服」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

;//背景を通学路bg13_01に
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
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[r]换上便服的我，和真珠星两人再次来到阳光之下。
[np]

[character name="ryuichi"]
【龙一】[r]「话说那个又高又安静的地方到底是哪儿？」
[np]

[supica storage="B3_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……到了再告诉你」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……明白」
[np]

[char_erase name="supica"]

[r]平时不爱说废话的真珠星……竟然略带玩笑地跟我说话，总感觉有些开心。
[np]

[r]虽然只是一点点……但真珠星似乎逐渐向我敞开心扉了……吧？
[np]

;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「哎、怎么……？」
[np]

[r]本以为会直接路过的学园，真珠星却走了进去。
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……」
[np]

[char_erase name="supica"]

[r]莫非是顺路来取落下的东西之类的……？
[np]

[r]原本是这么想的，但……
[np]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一、这边……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[char_erase name="supica"]

[r]真珠星径直走过一年级教室所在的楼层，快步登上楼梯。
[np]

[r]穿着便服在学校里闲逛，总有种莫名的背德感……
[np]

[r]哎，等等……？难道说，能看到星星的高处安静的地方就是——
[np]

;//背景を屋上bg12_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……到了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「屋顶啊！！」
[np]

[r]虽然进校门时觉得不太可能……但没想到真的是这里。
[np]

[supica storage="B4_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「这里……是真珠星最喜欢的地方」
[np]
[FACEHIDE]

[r]真珠星站在屋顶中央，仰望着蓝天。
[np]

[char_erase name="supica"]

[r]确实，又高又安静……在这里应该能清楚看到星星吧。不过……
[np]

[character name="ryuichi"]
【龙一】[r]「我说真珠星。看星星是不是还太早了……？」
[np]

[r]用手机确认时间，发现马上就要五点了。
[np]

[r]现在这个季节夏天刚开始，大概要过了七点太阳才会下山吧。
[np]

[character name="ryuichi"]
【龙一】[r]「在那之前要怎么办？总不能一直在这里等下去吧——」
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「等……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]紧紧抱住阿斯特拉尔君，一副理所当然的表情朝我看来——
[np]

[supica storage="C2_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「在太阳下山前……就在这里等着」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等！？在这里！？」
[np]

[r]对我的惊讶毫不在意，真珠星轻轻点了点头
[np]

[character name="ryuichi"]
【龙一】[r]「可还有两个多小时呢……？」
[np]

[supica storage="D_sifuku_M CD_5_M"]
[playcv storage="supica_all_00430_017.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「平时……我都是睡到那时候的」
[np]
[FACEHIDE]

[r]居然在睡觉吗！在这里！虽然看起来挺舒服的！但作为女孩子不太好吧！？
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_018.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……不过今天有龙一在……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「难、难道说打扰到你了……？」
[np]

[supica storage="B3_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_019.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……没这么说……」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「要不……聊点什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_021.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没有……真珠星主动说要聊天，总觉得……」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_022.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……很奇怪吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、一点都不奇怪……我很开心」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_023.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……这样……就好」
[np]
[FACEHIDE]

[r]真珠星依然紧紧抱着玩偶，目不转睛地凝视着我。
[np]

[supica storage="B3_sifuku_M AB_12_M"]
[playcv storage="supica_all_00430_024.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「那要聊……什么话题呢？关于星星的话题、关于星星的话题、关于星星的话题……」
[np]
[FACEHIDE]

[r]话题好像被限定住了呢，不过……
[np]

[r]……不过，也没关系啦。
[np]

[character name="ryuichi"]
【龙一】[r]「说的也是，我想听听真珠星喜欢的星星故事」
[np]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_025.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「嗯……明白了」
[np]
[FACEHIDE]

[r]真珠星点了点头说道……
[np]

[r]那一瞬间，她的脸上似乎浮现出了一丝开心的笑容。
[np]

[char_erase name="supica"]

;//背景を空_02に
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
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

[r]就这样与真珠星闲聊着，时间一分一秒地流逝……
[np]

;//背景を屋上bg12_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]回过神来已是日暮西沉，夜空中开始闪烁起无数繁星。
[np]

[character name="ryuichi"]
【龙一】[r]「这里的观星条件确实很理想……」
[np]

[r]或许是因为身处高地，避开了周围光污染的干扰。
[np]

[r]比起平时随意仰望的夜空，此刻的星辰显得格外明亮璀璨。
[np]

;//ＣＧ挿入
[CG cgno=03 sabunno=04]

[playcv storage="supica_all_00430_026.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……这里就是真珠星最喜欢的地方……」
[np]

[r]真珠星仰望着漫天星斗，眼神中流转着万千思绪。
[np]

[playcv storage="supica_all_00430_027.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「在都市里，只能看到这种程度的星空……不过……」
[np]

[playcv storage="supica_all_00430_028.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「若是远离尘嚣，就能看到更加……更加壮丽的银河天幕」
[np]

[character name="ryuichi"]
【龙一】[r]「是啊……」
[np]

[r]确实听说过比起城市，乡下的星空更璀璨。
[np]

[r]我也一直想亲眼看看那样的银河……
[np]

;//背景を屋上bg12_03に
[freeimage layer=1 page=back]
[image storage="bg12_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[r]过了多久呢？
[np]

[r]正觉得仰头太久脖子有点酸痛……
[np]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_029.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……该回去了」
[np]
[FACEHIDE]

[r]真珠星露出心满意足的神情说道。
[np]

[character name="ryuichi"]
【龙一】[r]「等等」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_030.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「龙一，怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这么晚还在学校，大门钥匙可能已经锁上了，保安说不定在巡查……」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_031.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「没关系……真珠星知道一条秘密通道」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「秘、秘密通道……？」
[np]

[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_032.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「从那里的话，可以神不知鬼不觉地出去……既不会触发警报，又能顺利离校。」
[np]
[FACEHIDE]

[r]原来如此，看来是老手啊……挺可靠的嘛。
[np]

[character name="ryuichi"]
【龙一】[r]「明白了。那就交给真珠星带路吧」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_033.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「嗯……这边」
[np]
[FACEHIDE]

[char_erase name=supica to=left time=800 fade=true]

;//暗転
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

[SYSTEMMENU]

[r]跟在真珠星身后离开屋顶的我……
[np]

;//背景を校庭bg09_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]正如真珠星所说，我们顺利无阻地抵达了校门外。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00430_034.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「那么……回去吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊……不过，等等……？」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_all_00430_035.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「有邮件。绫濑发来的……？什么事呢……」
[np]

[char_erase name="supica"]

[r]啊……完全忘记了……和真珠星聊天聊得太入神了……
[np]

[character name="ryuichi"]
【龙一】[r]「……真珠星，顺道去趟便利店……买便当回去」
[np]

[supica storage="B1_sifuku_M AB_8_M"]
[playcv storage="supica_all_00430_036.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「诶……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……谁让你没打招呼就放晚饭时间的鸽子，说是要罚你不准吃晚饭」
[np]

[supica storage="D_sifuku_M CD_6_M"]
[playcv storage="supica_all_00430_037.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_sifuku"]
【真珠星】[r]「……在地球上常有的事」
[np]
[FACEHIDE]

[r]要我说这种事根本不该常有，嗯……
[np]

[char_erase name="supica"]

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

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump2

[endif]



;//この時点で、すぴかの好感度が高い場合は
;//JUMP:supica_00010へ
[if exp="f.love_supica>=3"]
	[SetSJumpFlg storage="scenario/all/all_00430.ks" target="*SCJump2" Runflg="1"]
	[SetSJumpTarget storage="" target="" Runflg="0"]

	[jump storage="scenario/supica/supica_00010.ks"]
[endif]

;//そうでない場合はバッドエンドへ
*selectEnd
[SetSJumpFlg storage="scenario/all/all_00430.ks" target="*SCJump2" Runflg="1"]
[SetSJumpTarget storage="" target="" Runflg="0"]

[jump storage="scenario/bad/bad_00010.ks"]

;//ここまで

;//行ってらっしゃい、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00440.ks" target="*SCJump" Runflg="3"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00430_0=1"]
[jump target="*selectB"]
*selectB
[character name="ryuichi"]
【龙一】[r]「知道了，路上小心」
[np]

[supica storage="B3_sifuku_M AB_3_M"]
[playcv storage="supica_all_00430_038.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「嗯，我去去就回……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「晚饭前必须回来啊——」
[np]

[char_erase name="supica"]

[r]试着用家长式的口吻叮嘱她……不过有没有传达到真珠星那里就不得而知了。
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

;//JUMP:all_00440
[jump storage="scenario/all/all_00440.ks"]