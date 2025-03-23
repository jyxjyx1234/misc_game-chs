[SCENESTART file=mion_00100.ks]
;//mion_00100
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time="1000"]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:夜
;//日付:7/8(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

;//[r]※このシーン以降、寮のリビングの背景から檻、主人公の荷物を撤去してください
;//[np]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_mion_00100_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「大家都到齐了呢。那么，我们开动吧」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//合わせ
[aoi storage="A_tokushu_M A_2_M" trans=false]
[mion storage="C_sifuku_M CD1_2_M" trans=false]
[supica storage="C1_sifuku_M CD_2_M" trans=false]
[char_trans]
[playcv storage="mion_mix_00100_001.ogg" name="women"]
[character name="women"]
【一同】[r]「我们开动了」
[np]

[char_erase name="supica mion aoi"]

[r]今天是五花肉冷涮锅啊。视觉效果清爽的料理很有夏天的感觉呢。
[np]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_mion_00100_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「今天开始就是考试周了吧？大家考得怎么样？」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[aoi storage="C_tokushu_L CD_5_L" trans=false]
[momo storage="B_sifuku_M AB_7_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00100_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「呜……！！」
[np]
[FACEHIDE]

[r]一被问到考试的话题，葵就捂住胸口痛苦起来。
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_mion_00100_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「啊、葵小姐……！？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_L B_5_L"]
[playcv storage="aoi_mion_00100_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「对、对不起，桃……突然觉得，旧伤开始作痛了……呜……」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_mion_00100_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「怎、怎么会……那我来用回复魔法……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_L CD_4_L"]
[playcv storage="aoi_mion_00100_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「不，不要紧……这种程度的困难……我要独自克服……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_mion_00100_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「不愧是师傅……！我会支持您的！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00100_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「龙一，考试考得怎么样？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我嘛……也就那样吧，你们懂的……」
[np]

[char_erase name="mion"]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_mion_00100_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「咦……？」
[np]
[FACEHIDE]

[r]绫濑似乎听到了我们刚才的对话，一脸疑惑地朝我看了过来。
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_mion_00100_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「神原同学……之前大家也都是直接叫你龙一的吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？啊、这个……」
[np]

[char_erase name="chisato"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00100_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「有必要对区区仆从用敬称吗？不过是这么回事罢了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……她就是这么说的」
[np]

;[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00100_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「啊，原来是这种……」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[r]所谓的仆从设定只在方便的时候才生效……不过这种细节还是别深究比较好吧。
[np]

[mion storage="B_sifuku_L AB1_3_L" trans=false]
[aoi storage="A_tokushu_M A_4_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00100_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「咳……居然将翼神龙当作仆从对待……看来你果然缺少人类该有的同理心！」
[np]
[FACEHIDE]

[mion storage="B_sifuku_L AB1_3_L"]
[playcv storage="mion_mion_00100_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这不是理所当然吗？我可是宿舍魔女……人类的情感这种东西，从出生起就不曾拥有过」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00100_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「终于露出本性了……你这家伙，无论如何都不打算解放翼神龙吗！」
[np]
[FACEHIDE]

;[momo storage="A_sifuku_M A_1_M"]
[playcv storage="momo_mion_00100_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「那、那个…你们两个，吃饭的时候别…」
[np]
[FACEHIDE]

[mion storage="C_sifuku_L CD1_1_L"]
[playcv storage="mion_mion_00100_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「愚蠢的问题。这个仆从是我获得的物品…您没有指手画脚的资格哦」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_mion_00100_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「翼神龙乃是在此世与我重逢的盟友——」
[np]
[FACEHIDE]

[char_erase name="aoi mion momo"]

[chisato storage="B_sifuku_L AB_11_L"]
[char_jump name=chisato]

[playcv storage="chisato_mion_00100_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
[quake time=500]
【千圣】[r]「好啦到此为止——————！！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="D_tokushu_M CD_5_M" trans=false]
[mion storage="B_sifuku_M AB1_2_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00100_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「唔…」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00100_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「……呵呵」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[satomi storage="D_sifuku_L CD_5_L" trans=false]
[chisato storage="D_sifuku_M CD_4_M" trans=false]
[char_trans]


[playcv storage="satomi_mion_00100_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「诶——为什么要打断嘛…」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_4_M"]
[playcv storage="chisato_mion_00100_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「因为现在是吃饭时间！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[r]…不管怎么说，考试还有两天。我也得加把劲了！
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

[jump storage="scenario/mion/mion_00110.ks"]