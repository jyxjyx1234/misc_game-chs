[SCENESTART file=aoi_00130.ks]
;//aoi_00130
;//BG:教室_01

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
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/9(木)
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
【龙一】[r]「很好……！」
[np]

[r]多亏昨天和大家一起努力复习……今天考得还算不错。
[np]

[r]考试结束的铃声响起，答题纸被收走后，我忍不住做了个小小的胜利姿势。
[np]

[character name="ryuichi"]
【龙一】[r]「爽史，考得怎么样！？」
[np]

[sousi storage="C_seifuku_M CD_10_M"]
[playcv storage="sousi_aoi_00130_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_10_FACE_seifuku"]
【爽史】[r]「……雌蕊和雄蕊……对了，回家授粉吧……和二次元萝莉授粉吧」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[r]问他的我真是笨蛋，还是别打扰了。
[np]

[character name="ryuichi"]
【龙一】[r]「哟，辛苦了」
[np]

[r]离开自己的座位，向正在闲聊的茜她们搭话。
[np]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_aoi_00130_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「辛苦了～。噢，今天看起来气色不错嘛？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，感觉比昨天更有把握些」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00130_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「我今天也比昨天考得好哦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噢，葵也是啊。看来努力复习有效果了」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00130_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「这样一来就只剩明天的考试了呢」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_1_M"]
[playcv storage="akane_aoi_00130_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「只要熬过这个，之后就能听天由命了吧！」
[np]
[FACEHIDE]

[r]照这个状态应该不用参加补习班了……看来可以安心迎接暑假了。
[np]

[character name="ryuichi"]
【龙一】[r]「好嘞，今天回去也要和大家一起学习！」
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_aoi_00130_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「啊抱歉，今天能先回去吗？我得去打工的地方排班……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊，那要不我们两个先回去？」
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00130_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「明白」
[np]
[FACEHIDE]

[char_erase name="aoi chisato akane"]

[r]我回到座位拎起书包，和葵一同离开了教室。
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

;//JUMP:aoi_00140
[jump storage="scenario/aoi/aoi_00140.ks"]