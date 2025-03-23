[SCENESTART file=all_00270.ks]
;//all_00270
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:6/22(月)
;//CH:竜一,seifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]在校门口和桃酱告别后，独自回到了宿舍。
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了——」
[np]

[r]一周前还觉得难为情的「我回来了」，现在也能慢慢自然地说出口了。
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00270_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「呀吼～欢迎回来」
[np]
[FACEHIDE]

[r]管理员小姐大白天就躺在沙发上喝啤酒的光景，现在也渐渐觉得稀松平常了。
[np]

[char_erase name="satomi"]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00270_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「啊，你回来啦神原君。睡得好吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，睡得超香……其实叫醒我也没关系哦？」
[np]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_all_00270_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「抱歉抱歉。因为你睡得实在太香甜了嘛」
[np]
[FACEHIDE]

[r]绫濑想起我在教室里睡觉的样子，忍俊不禁地笑了。
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00270_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「啊对了神原君，我正要去买东西……」
[np]
[FACEHIDE]


[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]
	[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[endif]


[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00270_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「能拜托你帮忙拎东西吗？」
[np]
[FACEHIDE]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=没问题，包在我身上！ jump target="*select1"]
	[select_button text=抱歉，我有点不舒服…… jump target="*select2"]
[select_end]

;//ああ、任せてくれ！、を選んだ場合
*select1
[SetSJumpFlg storage="scenario/all/all_00270.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00300.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00270_0=0"]
[eval exp="f.love_chisato=f.love_chisato+1"]

[jump target="*selectA"]

*selectA
[character name="ryuichi"]
【龙一】[r]「啊，交给我吧！」
[np]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00270_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「谢啦。帮大忙了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那我赶紧换好衣服就出来」
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00270_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「好，我在外面等你」
[np]
[FACEHIDE]

[char_erase name="chisato"]

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
[SYSTEMMENU]

;//暗転
[r]在洗漱间换好便服后……
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

;//背景を駅前bg15_01に
[r]与绫濑两人一同来到了站前广场。
[np]

[character name="ryuichi"]
【龙一】[r]「不用只让我拿行李，就算把所有采购都交给我也没问题哦？」
[np]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00270_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「放心吧，已经把你编入轮班表了，敬请期待」
[np]
[FACEHIDE]

[r]哦……听你这么说，又有了被认可为宿舍一员的实感——
[np]

[character name="ryuichi"]
【龙一】[r]「等等……咦？」
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00270_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不……」
[np]

[char_erase name="chisato"]

[r]现在穿着苍心制服的那个孩子……背影很像桃酱，不过可能是我多心了吧。
[np]

;//背景をスーパーbg19に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00270_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「嗯——今天要买的东西是……啊，生菜生菜……」
[np]
[FACEHIDE]

[r]绫濑走近摆满蔬菜的货架，逐一检查着商品品质。
[np]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00270_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「啊这个不错。然后再来两袋茄子……嗯——这个……」
[np]
[FACEHIDE]

[r]她利索地挑选蔬菜的身影……简直像是能干的主妇！这种感觉挺帅气的。
[np]

[char_erase name="chisato"]

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
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]买完蔬菜后，接着向肉品和海鲜区移动。
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00270_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「鸡腿肉要三块……哦，发现打八折！好幸运♪」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00270_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「然后５００克绞肉……嗯——这个该怎么选呢……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]她认真审视鸡肉的侧脸，俨然就是——
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00270_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「……神原君？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……怎么了？」
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00270_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「那个……总觉得你从刚才开始就一直盯着我看……有什么事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……我就是觉得绫濑你刚才的样子很帅气」
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00270_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎……？我、我吗？」
[np]
[FACEHIDE]

[r]虽然心里想着对女孩子说帅气是否合适，但还是继续着对话。
[np]

[character name="ryuichi"]
【龙一】[r]「像这样利落地挑选蔬菜和肉的样子，感觉特别有大将风范」
[np]

[character name="ryuichi"]
【龙一】[r]「该怎么说呢，购物专家？明明还是学生，却比那些主妇更有主妇风范」
[np]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_all_00270_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「唔……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说实话比起管理员，绫濑你更像个在管理我们的人」
[np]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00270_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「呜呜……果然还是会给人这种感觉吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊咧……？」
[np]

[r]我本来是打算夸她的，但绫濑却显得有些消沉。
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00270_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「虽然听到你这么说，倒也不会觉得讨厌啦……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_all_00270_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「因为圣水小姐是那样的人，我确实会想着『自己必须更可靠些！』。不过……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00270_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「这个年纪被人说像主妇或者像妈妈……果然还是会有点受打击……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对、对不起……！」
[np]

[chisato storage="D_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00270_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「没事，不要紧的。这也是我的宿命啊……」
[np]
[FACEHIDE]

[r]说起来，之前午休时茜也说过类似的话呢……。
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00270_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「好……！接下来是牛奶和鸡蛋！走吧神原君！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦！」
[np]

[char_erase name="chisato"]

[r]就这样，和绫濑一起买完东西……
[np]

;//ここまで
[jump target="*selectEnd"]

;//すまん、ちょっと体調が……、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00270.ks" target="*SCJump" Runflg="0"]
[SetSJumpTarget storage="scenario/all/all_00300.ks" target="*SCJump" Runflg="1"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00270_0=1"]
[jump target="*selectB"]

*selectB
[character name="ryuichi"]
【龙一】[r]「抱歉，我身体有点……」
[np]

[chisato storage="D_sifuku_M CD_8_M"]
[playcv storage="chisato_all_00270_023.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「诶，不要紧吧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「应该没什么大碍……不过想稍微休息下」
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00270_024.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「这样……知道了。多保重」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「抱歉」
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00270_025.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「没事，别放在心上。那我先走了哦」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]在玄关送走千圣后，我走向盥洗室。
[np]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「虽然不是在装病……」
[np]

[r]离开学校后，身体确实一直有种莫名的不适感。
[np]

[r]难道只是因为上课时用奇怪的姿势睡觉，扭到脖子了……？
[np]

[r]虽然谨慎起见推掉了帮忙拿东西的事……但总觉得这样不太好。
[np]

;//ここまで
[jump target="*selectEnd"]

;//合流地点
*selectEnd

;//時間経過
;//背景を寮のリビングbg02_03に

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00270_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「炸鸡块、茄子和青椒的炒菜……看起来很好吃呢」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]绫濑买的食材此刻已经变成美味佳肴摆满了餐桌。
[np]

[r]勾起食欲的香味弥漫在整个客厅……糟糕，肚子要叫了。
[np]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_all_00270_026.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「那我们开动吧」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00270_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「我开动了！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[r]大家齐刷刷伸筷子夹的第一目标，果然是炸鸡块。
[np]

[character name="ryuichi"]
【龙一】[r]「啊呜、嗯咕……嗯，好吃！」
[np]

[r]外皮酥脆，内里多汁……堪称完美的炸鸡块口感！
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00270_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「炸鸡超赞！这玩意儿超下酒的！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00270_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「圣水姐你不管吃什么菜都只会说这句话啊……」
[np]
[FACEHIDE]

[supica storage="B4_sifuku_M AB_5_M"]
[playcv storage="supica_all_00270_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
[char_jump name=supica]
【真珠星】[r]「咕……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？怎么了真珠星？」
[np]

[supica storage="C2_sifuku_M CD_4_M"]
[playcv storage="supica_all_00270_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……又是青椒……为什么非要做这种东西……」
[np]
[FACEHIDE]

[r]真珠星正用怨念的眼神盯着盘子里茄子炒青椒。
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00270_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「真珠星，挑食的话会长不高哦？」
[np]
[FACEHIDE]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00270_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「我不觉得长高有什么必要……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[mion storage="A_sifuku_M A_1_M"]
[playcv storage="mion_all_00270_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「是吗？大能兼小啊……至少大一点更讨人喜欢吧？无论男女都一样，对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噗——！！」
[np]

[char_erase name="mion"]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00270_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哇啊啊啊！？你、你在做什么啊龙一！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起！我被突然吓到了……！」
[np]

[char_erase name="aoi"]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00270_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「唉……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00270_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「……？桃，你怎么了？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_all_00270_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「呃……？啊……」
[np]
[FACEHIDE]

[r]在和睦的餐桌上，只有桃酱一人显得唉声叹气的样子。
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_all_00270_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「那个……今天我去游戏中心的时候……」
[np]
[FACEHIDE]

[r]啊，她之前说想要某个玩偶来着。所以现在这个表情难道……
[np]

[char_erase name="momo chisato"]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00270_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「难道是在那里被不良少年纠缠，当众使用了暗黑力量……！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_all_00270_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「不、不是的不是的！其实是那里有想要的玩偶，我就去挑战抓娃娃机了……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00270_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「可是试了好多次都抓不到……零花钱几乎都花光了……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00270_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「原来是这样……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00270_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「如果实在想要奖品的话，直接去店里买不是更好吗？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_all_00270_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「哎……抓娃娃机的奖品还能买得到吗？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00270_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「要看具体物品，手办玩偶类的一般都会提前在网络上售卖」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00270_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「实在不行的话，吃完饭我帮你找找。我有个朋友对这方面很熟」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00270_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「真、真的吗？太感谢了……！！」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[r]哦，原来奖品还能直接买啊，我都不知道……
[np]

[r]不过，这和我倒是没什么关系。
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

;//JUMP:all_00280
[jump storage="scenario/all/all_00280.ks"]