[SCENESTART file=aoi_00410.ks]
;//aoi_00410
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

;//TIME:昼
;//日付:7/16(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_aoi_00410_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「啊、早啊！」
[np]
[FACEHIDE]

[r]刚进教室，茜就像往常一样元气满满地打了招呼。
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00410_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「早啊茜。话说……咦？你剪头发了？」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_1_M"]
[playcv storage="akane_aoi_00410_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「不愧是千圣！果然观察力与众不同啊！」
[np]
[FACEHIDE]

[r]哎、剪了……？乍看之下和昨天完全没变化啊……
[np]

[akane storage="C_seifuku_M CD_5_M"]
[playcv storage="akane_aoi_00410_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_5_FACE_seifuku"]
【茜】[r]「今早我特意向爽史展示重获新生的造型，结果他完全没发现！」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]


[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_aoi_00410_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「应该说，到现在我还觉得是骗人的」
[np]
[FACEHIDE]

[char_erase name="sousi"]


[akane storage="A_seifuku_L AB_9_L" trans=false]
[chisato storage="A_seifuku_M AB_4_M" trans=false relx= 100]
[char_trans]

[playcv storage="akane_aoi_00410_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_9_FACE_seifuku"]
【茜】[r]「没骗人啦！真的剪过了啦！你看，这里稍微修短了点！！」
[np]
[FACEHIDE]

;[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_aoi_00410_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「虽然茜一直坚持这么说……龙一你怎么看？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……抱歉，我也完全看不出来」
[np]

[akane storage="C_seifuku_L CD_10_L"]
[playcv storage="akane_aoi_00410_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「气死我啦！所以说我们家的男人们啊……！男子力只有５！根本就是渣渣！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话说绫濑居然能看出来……」
[np]

[r]刚想说这点微妙差别……又把话咽了回去。
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00410_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「毕竟我和茜总是形影不离嘛。再加上女孩子之间特有的敏锐度吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那葵呢？」
[np]

[char_erase name="chisato akane sousi"]

[aoi storage="D_seifuku_L CD_11_L"]
[playcv storage="aoi_aoi_00410_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「哼……早已发动左眼寄宿的心眼，进教室前就察觉到了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[aoi storage="C_seifuku_L CD_4_L"]
[playcv storage="aoi_aoi_00410_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「……？怎么了龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没什么……」
[np]

[char_erase name="aoi"]

[r]葵的中二发言……或许因为最近都没怎么听到过，竟莫名有些怀念。
[np]

[akane storage="A_seifuku_L AB_4_L" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false relx= 100]
[char_trans]
[playcv storage="akane_aoi_00410_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「这下明白了吧！龙一和爽史平时对我有多不关心！」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_aoi_00410_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「理所当然。我只对二次元有兴趣」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_aoi_00410_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「就是这种态度！所以你们的男子力才永远——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……喂，葵」
[np]

[char_erase name="akane sousi"]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00410_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「呃……？」
[np]
[FACEHIDE]

[r]自己也觉得这举动有些大胆……不过这类事情还是尽早解决更让人轻松。
[np]

[r]轻轻拉住葵的衣角，将脸凑近不让三人发现。
[np]

[character name="ryuichi"]
【龙一】[r]「今天放学后能留下来吗？有话想和你说」
[np]

[aoi storage="A_seifuku_L A_8_L"]
[playcv storage="aoi_aoi_00410_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_3_L"]
[r]听到我的话，葵先是显得有些惊讶……随即轻轻点了点头。
[np]

;//小声
[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00410_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「……正好。我也有话想和龙一说」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就算说定了」
[np]

[char_erase name="aoi"]

[r]好……这样一来准备就完成了。
[np]

[r]接下来只需等待放学后……！
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

;//JUMP:aoi_00420
[jump storage="scenario/aoi/aoi_00420.ks"]