[SCENESTART file=momo_00400.ks]
;//momo_00400
;//BG:bg13_01

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
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM01.ogg" time=1000]
[SYSTEMMENU]

;//TIME:昼
;//日付:7/16(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[r]在那样的事情发生后，夜晚过去，迎来清晨……
[np]

[character name="ryuichi"]
【龙一】[r]「终于……明天结业式结束后就是暑假了……！」
[np]

[r]走在队伍最前面时，不自觉地握紧了拳头。
[np]

[chisato storage="D_seifuku_M CD_11_M" trans=false]
[mion storage="A_seifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00400_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「神原君，是不是有点兴奋过头了……？」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_4_M"]
[playcv storage="mion_momo_00400_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「这也是没办法的事啊。毕竟这可能是他人生中第一次和女朋友共度暑假」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[character name="ryuichi"]
【龙一】[r]「请不要擅自断定啊！虽然你说的没错！」
[np]

[r]对我来说，桃酱是我人生中的第一个女朋友……要和这么可爱的女孩一起共度暑假……
[np]
[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00400_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「学长、学长……今天也要一起回家哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当然！」
[np]

[char_erase name="momo"]

[r]再次涌上心头的喜悦让人怀疑这是不是在做梦。
[np]

[r]不过昨天刚被茜提醒过……必须注意不能露出色眯眯的表情。
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

[jump storage="scenario/momo/momo_00410.ks"]