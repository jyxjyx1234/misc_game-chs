[SCENESTART file=aoi_00020.ks]
;//aoi_00020
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/6(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[r]在鞋柜处与桃酱和前辈分开，走进了自己的教室。
[np]

[aoi storage="C_seifuku_S CD_7_S"]
[playcv storage="aoi_aoi_00020_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]刚把书包放在课桌上，便与目光交汇的葵对上了视线。
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00020_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「没、没事吧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶，什么没事……指什么？」
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00020_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「之后有没有被魔女下奇怪的诅咒之类的……对了，桃没事吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没事没事。一直都很太平」
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00020_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「这、这样啊……看来那家伙也不敢在众目睽睽之下动手」
[np]
[FACEHIDE]

[r]是啊，倒不如说是你先挑起来的
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00020_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「但这也太让人困扰了……！说我和龙一私奔什么的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「确实。不过从旁人角度看确实会有这种误会吧」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00020_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「可、可那才不是私奔！那只是龙一擅自……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没错啊，我只是突然抓住葵的手，冲出队列……就这么简单」
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00020_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「既、既然知道……就别说出来……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[akane storage="B_seifuku_M AB_2_M" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]
[playcv storage="akane_aoi_00020_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「哦、哦哈哟～两位！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哟，早啊茜。爽史也早」
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_aoi_00020_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「咦，小千呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「绫濑因为一些事情要晚点来」
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00020_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「这样啊。那等会儿再问她好了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「有什么事找她吗？」
[np]

[akane storage="C_seifuku_M CD_5_M"]
[playcv storage="akane_aoi_00020_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_5_FACE_seifuku"]
【茜】[r]「昨天复习考试遇到不懂的地方啦～想着要是问小千的话，说不定就能解决」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯——」
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00020_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「怎么啦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过，从茜口中听到要复习考试，果然还是觉得有点违和……」
[np]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_aoi_00020_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「等等等等等——！！刚才的发言我可不能当没听见啊！难道我就不能好好复习考试吗！？」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_10_M"]
[playcv storage="akane_aoi_00020_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「闹腾又活泼、超可爱还擅长运动的类型必然不擅长学习什么的，那只是龙一君你一厢情愿的想象而已吧！？」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_aoi_00020_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「可爱什么的，纯属多余」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_aoi_00020_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「吵死了！别冷静地吐槽啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话说回来……爽史你昨天复习了吗？」
[np]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_aoi_00020_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「昨天？昨天网购的同人游戏《浴室咕沙咕沙》到货了，所以」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「抱歉，当我没问」
[np]

[char_erase name="sousi akane"]

[r]考试、考试啊……
[np]

[r]既然是学生就注定逃不过这道坎，只能想办法熬过去了吧……
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

;//JUMP:aoi_00030
[jump storage="scenario/aoi/aoi_00030.ks"]