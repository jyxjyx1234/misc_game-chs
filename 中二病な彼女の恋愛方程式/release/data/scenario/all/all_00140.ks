[SCENESTART file=all_00140.ks]
;//all_00140
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:6/15(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00140_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「噗哈——！我就是为了这一杯而活的啊——！」
[np]
[FACEHIDE]

[r]圣水小姐一口气喝光罐装啤酒，说出的大叔式台词简直如出一辙。
[np]

[r]作为学生宿舍管理员本应身体力行展示模范生活态度…但这个人大概完全没有这种念头吧。
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00140_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「葵——今天在学院怎么样——？过得开心吗——？嗯——？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00140_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哇啊！？别、别靠近我！酒气会沾上来的～！」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00140_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「沾上也没关系嘛。酒这东西啊，那可是圣水哦——？」
[np]
[FACEHIDE]

;//ここは「せいすい」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00140_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「那、那个圣水对我们来说可是禁忌的存在，是禁忌之水啊！」
[np]
[FACEHIDE]

[r]可以看到桃酱对着葵的话微微点头。
[np]

[char_erase name="aoi satomi"]

[character name="ryuichi"]
【龙一】[r]「虽然明白你们讨厌酒气…但为什么连圣水都不行？」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00140_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「桃和葵，还有我…追根溯源我们都是掌管黑暗魔力的一族」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊…所以才会排斥圣水吗…」
[np]

[mion storage="C_sifuku_M CD1_9_M"]
[playcv storage="mion_all_00140_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「原本我们获得力量的原因就是…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不用了，真的没关系」
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[r]听到我斩钉截铁的回答，澪音前辈露出遗憾的笑容
[np]

[char_erase name="mion"]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_all_00140_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「我、我吃好了！」
[np]
[FACEHIDE]

[char_erase name=aoi to=right time=800 fade=true]

[r]像是要逃离圣水一般站起身的葵，收拾好餐具逃回房间去了
[np]

[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_all_00140_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……多谢款待」
[np]
[FACEHIDE]

[char_erase name=supica to=right time=800 fade=true]

[r]跟着大家吃完饭后，我也收拾餐具回到座位
[np]

[r]要是在平时，这时候就该回自己房间了…可这里就是我的房间啊
[np]

[r]说实话现在就想泡澡…但安全起见还是等大家都洗完再——
[np]

;//[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00140_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「对了…神原君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？」
[np]

[r]听到背后传来的声音，我转头看向绫濑
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00140_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「今天特意买了食材。明天开始也会准备你的份哦」
[np]
[FACEHIDE]

[r]说完，绫濑从袋子里取出的……
[np]

[character name="ryuichi"]
【龙一】[r]「啊，便当盒……」
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00140_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「我们宿舍的人每天都会带便当出门……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00140_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「觉得唯独让神原君没有的话太可怜了……今天回来时特意去买的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这么说，之前说去站前买东西就是……」
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00140_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「嗯……对吧？男孩子只吃一个蜜瓜包也太少了吧？」
[np]
[FACEHIDE]

[r]绫濑移开视线，有些难为情地说道。
[np]

[character name="ryuichi"]
【龙一】[r]「谢、谢谢绫濑！啊对了钱——」
[np]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00140_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「啊，那个没关系。已经让管理员阿姨垫付了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……可以吗？」
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00140_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「伏木庄是学生宿舍，学业生活必需品都由宿舍承担」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00140_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「笔记本和笔当然要自己买……不过运动鞋啊，便当盒啊，这些都可以报销哦」
[np]
[FACEHIDE]

[r]原来如此……我的父母倒是好好告诉我啊。
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00140_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「所以从明天开始要和我们吃一样的便当。不准挑食哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了，谢谢！」
[np]

[char_erase name="chisato"]

[r]绫濑为我准备了便当盒……
[np]

[r]连这种小事都会让我产生被接纳的感觉……我也太单纯了吧。
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

;;//JUMP:all_00150
[jump storage="scenario/all/all_00150.ks"]
