[SCENESTART file=mion_00020.ks]
;//mion_00020
;//BG:bg12_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_mion_00020_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「那么——我开动啦！」
[np]
[FACEHIDE]

[char_erase name="akane"]

[r]茜的声音回荡在晴空下的午休屋顶上。
[np]

[r]大家各自带着便当聚在一起，本该是愉快的午餐时间……但事与愿违……
[np]

[character name="ryuichi"]
【龙一】[r]（搞不懂……！那个人到底在想什么……！？）
[np]

[r]至于我，今早澪音前辈的话让我在意得不得了，根本顾不上吃午饭。
[np]

[r]无论是上学路上、上课时还是课间休息……一直在想那件事，头都快想炸了。
[np]

[r]就算“仆人”这个说法是半开玩笑……但一起住到底是怎么个事啊……！？
[np]

[r]澪音前辈是女的，我是男的……别说同住一个屋檐下，甚至要在同一间房里生活，这种事——
[np]

[playcv storage="akane_mion_00020_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「喂——……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……呜哇！？」
[np]

[akane storage="D_seifuku_L CD_7_L" trans=false]
[sousi storage="D_seifuku_M CD_1_M" relx= 100 trans=false]
[char_trans]

[playcv storage="akane_mion_00020_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「哦，注意到了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「干、干嘛啊茜……脸凑太近了吧！」
[np]

[r]回过神来才发现茜的脸近在眼前，吓得我猛地往后一仰。
[np]

[akane storage="B_seifuku_M AB_4_M"]
[playcv storage="akane_mion_00020_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「不不不，要我说，龙一君你直到别人凑到这么近都没察觉，问题才更大吧」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_mion_00020_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「龙一，有心事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[sousi storage="B_seifuku_M B_6_M"]
[playcv storage="sousi_mion_00020_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_6_FACE_seifuku"]
【爽史】[r]「不止是现在……从早上开始你就一直愁眉苦脸的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……不，那个……」
[np]

[char_erase name="sousi akane"]

[aoi storage="C_seifuku_L CD_5_L"]


[playcv storage="aoi_mion_00020_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「龙一现在正要被魔女洗脑了……！」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_mion_00020_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「洗脑……！？说到魔女……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_L A_4_L"]
[playcv storage="aoi_mion_00020_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「黑峰澪音……第三机关『冥暗的飨宴』安插在伏木庄的间谍，通称『宿舍魔女』……龙一已经被那个女人盯上了……」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_1_M"]
[playcv storage="akane_mion_00020_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「原来如此，这可是大事不妙啊……！」
[np]
[FACEHIDE]

;[sousi storage="C_seifuku_M CD_9_M"]
[playcv storage="sousi_mion_00020_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_9_FACE_seifuku"]
【爽史】[r]「洗脑……接着是催眠。最后龙一就会喊着『嗯哦哦哦！！』沉溺于快感无法自拔对吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「才不会喊那种话也不可能沉溺啦！」
[np]

[akane storage="B_seifuku_M AB_1_M"]
[playcv storage="akane_mion_00020_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「可是，洗脑到底是怎么回事……？」
[np]
[FACEHIDE]

[char_erase name="aoi akane"]


[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_mion_00020_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「就是呢……今天早上澪音学姐突然说要让神原君住进自己房间……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[akane storage="A_seifuku_M AB_7_M" trans=false]
[sousi storage="B_seifuku_M B_8_M" trans=false]
[char_trans]

[playcv storage="akane_mion_00020_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哎哎……！？那、那也就是说……」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_8_M"]
[playcv storage="sousi_mion_00020_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_8_FACE_seifuku"]
【爽史】[r]「从同居生活开始沉溺快感……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「快别说什么沉溺快感了！！」
[np]

[r]我要是沦落到那种结局对谁有好处啊……
[np]

[akane storage="C_seifuku_M CD_8_M"]
[playcv storage="akane_mion_00020_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_8_FACE_seifuku"]
【茜】[r]「原、原来如此……年轻男女在一个房间里……嘿诶……」
[np]
[FACEHIDE]

;[aoi storage="B_seifuku_M B_1_M"]
[playcv storage="aoi_mion_00020_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
【葵】[r]「所以我和桃正在想办法阻止这件事……」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_3_M"]
[playcv storage="akane_mion_00020_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「那龙一君是怎么回答的？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽然当然有在抵抗……但是她说我根本没有拒绝的权利……」
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_mion_00020_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「哇哦，听起来好像女王大人……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「既然她都说要把我当奴隶使唤，这个形容还真是精准……」
[np]

[sousi storage="A_seifuku_M A_10_M"]
[playcv storage="sousi_mion_00020_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「奴仆…原来如此，龙一还有这种特殊癖好啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「饶了我吧！光是午休时间你脑补的我就经历了各种离谱剧情！」
[np]

[char_erase name="akane sousi"]

[chisato storage="A_seifuku_M AB_4_M"]
[playcv storage="chisato_mion_00020_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「奴仆啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我说绫濑，真的没办法了吗？这也太霸道了吧……」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_mion_00020_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「这个嘛…虽然我也觉得学生宿舍男女同住有问题，能反对的话当然想反对……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_mion_00020_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「但是那个人…澪音学姐一旦开口就……」
[np]
[FACEHIDE]

[r]话还没说完，绫濑就低头摆出「请节哀顺变」的表情。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么会……」
[np]

[r]不是吧…难道我真的已经无路可退了……？
[np]

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

[jump storage="scenario/mion/mion_00030.ks"]