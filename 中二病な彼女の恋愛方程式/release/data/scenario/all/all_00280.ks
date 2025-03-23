[SCENESTART file=all_00280.ks]
;//all_00280
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:6/25(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「哈啊……啊……」
[np]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[r]临近六月底的星期四教室。
[np]

[r]宣告午休开始的铃声刚响，我便忍不住打了个大大的哈欠。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[sousi storage="A_seifuku_M A_4_M"]
[playcv storage="sousi_all_00280_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_4_FACE_seifuku"]
【爽史】[r]「哈啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，怎么，我的哈欠传染给你了？」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00280_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「是啊……毕竟明天就要正式发售了……」
[np]
[FACEHIDE]

[r]爽史摘下眼镜揉着惺忪睡眼，从包里取出便当盒。
[np]

[sousi storage="D_seifuku_M CD_5_M"]
[playcv storage="sousi_all_00280_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_5_FACE_seifuku"]
【爽史】[r]「太久没遇到大作实在按捺不住兴奋，重新通关体验版结果直接肝到天亮……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「体验版……？是那个游戏吗？」
[np]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_all_00280_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「对啊。某大厂要出的新作，所有女主都是幼女尿裤子的——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我大概明白了！够了！不想再听了！」
[np]

;//[akane storage="A_seifuku_M A_1_M"]
[playcv storage="akane_all_00280_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「喂～两位同学～今天要去屋顶吃饭哦～」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦！这就来！」
[np]

[char_erase name="sousi"]

[r]和爽史聊天最可怕的是永远不知道什么时候会爆出惊天发言……
[np]

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

;//背景を屋上bg12_01に
[r]由于前天和昨天天气都不好，这是时隔数日再次来到屋顶。
[np]

[r]大家各自摊开便当，在闲聊中开始了午餐时光。
[np]

[character name="ryuichi"]
【龙一】[r]「话说茜同学有参加什么社团吗？」
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_all_00280_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「社团？完全没有啦。硬要说的话就是归宅部吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎、这样吗……？总觉得你放学后好像还挺忙的」
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_all_00280_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「啊，经常会被各个社团叫去帮忙啦。毕竟我对自己的运动神经很有自信！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00280_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「上上周是篮球部，上周是垒球部对吧？」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_all_00280_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「没错！华华丽丽地投进三分球，再把对方引以为傲的变化球轰上看台的我！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「外援啊……原来现实里真的有这种存在」
[np]

[char_erase name="akane chisato"]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00280_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「茜的运动神经，简直可以说是超能力了！」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_all_00280_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「确实。毕竟那运动神经好到难以置信的程度」
[np]
[FACEHIDE]

[char_erase name="sousi aoi"]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_all_00280_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「别用「只是」这种说法！学习方面我也是有好好努力的！喂那边、不许觉得意外！！」
[np]
[FACEHIDE]

[r]在有人说出「真意外」之前就被堵住了嘴……
[np]

[char_erase name="akane"]

[character name="ryuichi"]
【龙一】[r]「也就是说……在场的所有人都是归宅部成员吗？」
[np]

[aoi storage="B_seifuku_M B_3_M"]
[playcv storage="aoi_all_00280_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_3_FACE_seifuku"]
【葵】[r]「我可是忙于暗黑魔法的修炼……没空参加社团活动」
[np]
[FACEHIDE]

[r]这算是……不、还是冷静地无视掉吧。
[np]

[char_erase name="aoi akane"]

[sousi storage="D_seifuku_M CD_2_M"]
[playcv storage="sousi_all_00280_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_2_FACE_seifuku"]
【爽史】[r]「有那时间参加社团，我还不如多打一天工」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎、爽史在打工吗？」
[np]

[sousi storage="B_seifuku_M B_2_M"]
[playcv storage="sousi_all_00280_007.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_2_FACE_seifuku"]
【爽史】[r]「当然。全是为了赚取和二次元小萝莉们亲密接触的资金储备……这世道真艰难啊」
[np]
[FACEHIDE]

[r]好、这个也当作没听见吧。
[np]

[char_erase name="sousi"]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00280_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「虽然有兴趣、但实在没时间呢……宿舍家务和打工就已经忙不过来了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咦、绫濑也在打工吗？」
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_all_00280_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「我没说过吗？在车站附近的咖啡厅打工，每周只去一两次」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我还是第一次听说。而且居然是在咖啡厅这么时髦的地方……」
[np]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_all_00280_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「实际工作起来也没那么讲究。可以穿便服上班，店里氛围挺轻松的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……那下次我去——」
[np]

[chisato storage="C_seifuku_M CD_11_M"]
[playcv storage="chisato_all_00280_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「不必来」
[np]
[FACEHIDE]

[r]半开玩笑的邀请被干脆地打断，茜见状笑出了声。
[np]

[char_erase name="chisato"]

[r]原来如此，打工啊……反正也没有参加社团的打算，或许试着开始也不错。
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

;//JUMP:all_00290
[jump storage="scenario/all/all_00290.ks"]