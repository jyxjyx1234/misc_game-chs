[SCENESTART file=momo_00310.ks]
;//momo_00310
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_momo_00310_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「啊、早、早上好！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_2_M"]
[playcv storage="chisato_momo_00310_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「早上好，你们两个」
[np]
[FACEHIDE]

[r]和宿舍的大家一起上学，在鞋柜处分别后各自前往教室。
[np]

[r]走进教室，走向自己的座位，那里已经坐着平时的两人组。
[np]

[akane storage="A_seifuku_M AB_4_M"]
[playcv storage="akane_momo_00310_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「哎呀—今天又要发试卷了呢—龙一，你有多大的自信？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「完全没有自信。不过，我确信绝对没有超过平均分！」
[np]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_momo_00310_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「这可不是值得挺起胸膛说的事吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎呀—真可靠啊！葵呢？」
[np]

[char_erase name="chisato akane"]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00310_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「……冥府之门已然开启……今夜，渴求鲜血的恸哭之兽将在结局中哀嚎吧……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_momo_00310_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「已经不行了，至少别让我不及格。不然的话我要哭了……」
[np]
[FACEHIDE]

[r]真能理解啊……。
[np]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「绫濑和茜反正没问题暂且不说……爽史你怎么样啊？」
[np]

[sousi storage="D_seifuku_M CD_4_M"]
[playcv storage="sousi_momo_00310_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4_FACE_seifuku"]
【爽史】[r]「……要是我也有个二次元可爱妹妹的话……说不定就会认真准备考试了，还能做些这样那样的事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……也就是说，你果然还是不行对吧」
[np]

[char_erase name="sousi"]

[r]我们三个和绫濑她们两个竟然分化得这么极端……
[np]

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="1000"]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_momo_00310_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「好、好啦……那就祝各位今天也能奋战到底吧！」
[np]
[FACEHIDE]

[char_erase name="akane"]

[r]班会课的铃声响起，大家各自回到座位准备迎接老师的到来。
[np]

[r]于是我也坐到了面朝窗外眺望远方的爽史旁边。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]说实话，比起考试结果……现在我有更严肃的事情需要认真考虑。
[np]

[r]……既然心意已决，还是尽早行动比较好吧……
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

[jump storage="scenario/momo/momo_00320.ks"]