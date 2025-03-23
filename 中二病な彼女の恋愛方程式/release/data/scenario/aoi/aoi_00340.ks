[SCENESTART file=aoi_00340.ks]
;//aoi_00340
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

;//TIME:昼
;//日付:7/15(水)
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
【龙一】[r]「……唉」
[np]

[r]钟声响起，迎来午休时间……
[np]

[r]自己口中不自觉地漏出一声叹息。
[np]

[r]倒不是因为发回来的考试成绩太差。虽然分数难看是事实。
[np]

[r]我烦恼的并不是这个……
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00340_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]我这边刚看过去，葵就察觉到了，随即移开视线。
[np]

[r]没错。我现在完全不知道该怎么和葵相处了。
[np]

[r]毫无疑问，昨晚的事在我心里留下了奇怪的芥蒂。
[np]

[r]不过在那之前……我现在究竟是怎么看待葵的？
[np]

[r]不是作为同住宿舍的普通同学，而是作为一个女孩子——
[np]

;//[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_aoi_00340_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_4_FACE_seifuku"]
【爽史】[r]「……这可如何是好。不管怎么叫她都没反应」
[np]
[FACEHIDE]

;//[akane storage="A_seifuku_M A_1_M"]
[playcv storage="akane_aoi_00340_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「喂～快回来啦神原龙一～」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……呃……啊？」
[np]

[r]回过神来时，绫濑、茜和爽史已经围在了我的座位旁。
[np]

[akane storage="A_seifuku_M AB_1_M" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="akane_aoi_00340_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「就算考试考砸了，也不能就这么逃避现实玩消失吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「逃、逃避现实……？我、我又没……」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00340_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「明明就是。不管爽史和茜怎么叫你，你都心不在焉的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……抱歉」
[np]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_aoi_00340_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「好啦，大家一起来吃顿开心的午餐嘛。小葵也快来准备啦——」
[np]
[FACEHIDE]

;//[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00340_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「啊……那个、我、我就不用了……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_5_M" trans=false]
[sousi storage="B_seifuku_M B_10_M" trans=false]
[char_trans]
[playcv storage="akane_aoi_00340_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_5_FACE_seifuku"]
【茜】[r]「诶……？」
[np]
[FACEHIDE]

;//[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00340_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「今天……那个……不怎么饿，你们大家吃就好……」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00340_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「等等，葵……？」
[np]
[FACEHIDE]

[r]葵一边慌张地辩解着，一边快步冲出了教室。
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_aoi_00340_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「说不饿……可你明明带着便当盒不是吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[char_erase name="akane sousi chisato"]

[r]……说到底，那终究只是表面上的借口……
[np]

[r]其实真正原因，是不想和我们这群人一起吃午饭吧。
[np]

[r]虽然说是「这群人」……但本质上是指……
[np]

[character name="ryuichi"]
【龙一】[r]「……唉」
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

;//JUMP:aoi_00350
[jump storage="scenario/aoi/aoi_00350.ks"]