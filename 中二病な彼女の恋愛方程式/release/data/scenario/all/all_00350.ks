[SCENESTART file=all_00350.ks]
;//all_00350
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

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
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/1(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[r]自那次交谈后，又过了数日……
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00350_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「终于要迎来七月了……！」
[np]
[FACEHIDE]

[r]在月份更替后的早餐桌上，葵突然这样说道。
[np]

;//ちらっ、だけ小声で
[aoi storage="C_seifuku_M CD_11_M"]
[playcv storage="aoi_all_00350_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「每到这个季节，旧伤就会隐隐作痛，仿佛被封印的记忆即将苏醒……你看」
[np]
[FACEHIDE]

[r]能感觉到她似乎想让我追问下去……但我绝对不问。打死也不问。
[np]

[char_erase name="aoi"]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_all_00350_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「接下来只会越来越热吧……虽然现在已经够热了」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_all_00350_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「是啊，最近晚上睡觉都开始有点闷热了」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00350_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「说到夏天就会想到暑假……啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00350_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「……想要平安迎来暑假，就必须直面一个无法避开的强大敌人……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你说的敌人……该不会又要称澪音前辈为魔女吧……」
[np]

[r]话说到一半，注意到葵正无精打采地低着头。
[np]

[character name="ryuichi"]
【龙一】[r]「葵……？你说的那个敌人……到底是什么？」
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_all_00350_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「……考试」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]葵的一句话让餐桌上的气氛顿时变得沉重起来。
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_all_00350_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「是啊，期末考试……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……是啊，还有这回事来着……」
[np]

[char_erase name="momo"]

[r]和葵一样，我也不由自主地垂下了脸。
[np]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_all_00350_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……考试……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，真珠星果然也不喜欢学习吗？」
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_all_00350_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……真珠星讨厌的只有考试……」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00350_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「真珠星和我一样都是成绩优秀者。只是单纯非常讨厌学习而已」
[np]
[FACEHIDE]

[char_erase name="mion supica"]

[r]这样啊……该说意外还是什么呢……
[np]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_all_00350_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「不过你看，只要克服这个就能迎来暑假了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真好啊，绫濑你看起来就很擅长学习……」
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00350_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「倒也说不上擅长……只是单纯完成了预习复习而已？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在讨厌学习的人听来，光是这点就已经是优等生了……！」
[np]

[char_erase name="chisato"]

[r]对于我的意见，葵连连点头表示赞同。
[np]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_all_00350_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「这么说起来，桃不是也能学得很好吗……！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_all_00350_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「哎？我、我没有那么……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「连桃酱也……！也就是说这个宿舍除了我和葵之外全是优等生！？」
[np]

[aoi storage="D_seifuku_M CD_4_M"]
[playcv storage="aoi_all_00350_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「看来确实如此啊龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呵呵……怎么办啊葵，咱们被包围了……」
[np]

[char_erase name="aoi momo"]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00350_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「好了好了，大清早就别犯傻了」
[np]
[FACEHIDE]

[r]不过绫濑说得对。只要熬过考试，接下来就是暑假了……
[np]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]这时我突然想起前几天澪音学姐说过的话。
[np]

[r]要想度过一个快乐又充实的暑假……该不会是要找个女朋友之类的吧……
[np]

[r]说不定，那个人就在这些人当中……
[np]

[r]大清早的胡思乱想什么呢！赶紧吃完饭收拾收拾吧！
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

;//JUMP:all_00360
[jump storage="scenario/all/all_00360.ks"]