[SCENESTART file=mion_00340.ks]
;//mion_00340
;//BG:bg06_01

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
[image storage="bg06_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,pajyama
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,pajyama
;//CH:千聖,seifuku

[character name="ryuichi"]
【龙一】[r]「嗯……唔……」
[np]

[r]夏日的阳光照在脸上，眼睑微微睁开——
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]睁开眼的瞬间，看到澪音前辈的睡脸。
[np]

[r]虽然不由自主地发出了声音……对了，昨天就那样……
[np]

[character name="ryuichi"]
【龙一】[r]「这不是……梦啊……」
[np]

[r]和前辈成为了恋人，甚至做了亲热的事……之后还一起睡在棉被里……
[np]

[character name="ryuichi"]
【龙一】[r]「呜……」
[np]

[r]突然被某人轻轻捏住脸颊，发出了奇怪的声音。
[np]

[r]不过说是某人……其实也只有一个人啦。
[np]

[mion storage="B_pajyama_M AB1_2_M"]
[playcv storage="mion_mion_00340_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_pajyama"]
【澪音】[r]「怎么样？不是梦吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……呜嗯唔呢」
[np]

[r]澪音前辈看着被扯着脸颊说不出话的我，觉得很有趣似的笑了。
[np]

[mion storage="C_pajyama_M CD1_3_M"]
[playcv storage="mion_mion_00340_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_pajyama"]
【澪音】[r]「对怀疑现实是梦境的人掐脸颊……虽然老套，但实际做起来意外地有趣呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那还真是太好了」
[np]

[r]从床上起身背对前辈，伸手拿起自己的制服。
[np]

[mion storage="A_pajyama_M AB1_8_M"]
[playcv storage="mion_mion_00340_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_pajyama"]
【澪音】[r]「是啊，不是梦……对吧。我们已经……」
[np]
[FACEHIDE]

[r]像是要说服自己般低语的前辈……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]脸上浮现出令人不禁看入迷的灿烂笑容。
[np]

[mion storage="D_pajyama_M CD1_3_M"]
[playcv storage="mion_mion_00340_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_pajyama"]
【澪音】[r]「好、快点准备吧。今天也要去学院呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说、说的是呢……」
[np]

[char_erase name="mion"]

[r]澪音前辈，现在是我的女朋友……
[np]

[r]虽然还没有实感……但稍不留神就会忍不住傻笑起来。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM02.ogg" time=1000]

;//澪音の衣装を制服に
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[supica storage="B3_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00340_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「再不快点可能就要来不及了……来，开动吧」
[np]
[FACEHIDE]

[supica storage="B3_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00340_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「我开动了……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]与身穿制服的众人共度的周一早晨餐点。
[np]

[mion storage="B_seifuku_M AB1_2_M" trans=false]
[chisato storage="D_seifuku_M CD_3_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00340_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「那么，从今天开始的课程就是试卷讲评了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过只要撑过这周，周五的结业式后就放暑假了吧」
[np]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_mion_00340_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「是啊。只要能熬过这周就能松口气了……」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_mion_00340_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「暑假……今年就尝试在宿舍里当个足不出户的宅女好了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样可不行啊，太不健康了」
[np]

[chisato storage="C_seifuku_M CD_4_M"]
[playcv storage="chisato_mion_00340_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「首先，购物值班是绝对要遵守的」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_5_M"]
[playcv storage="mion_mion_00340_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_seifuku"]
【澪音】[r]「好像是有这回事呢……对魔女来说真是难熬的季节啊」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

;//合わせ
[momo storage="A_seifuku_M AB_4_M" trans=false]
[aoi storage="C_seifuku_M CD_10_M" trans=false]
[char_trans]
[playcv storage="mion_mix_00340_001.ogg" name="women"]
[character name="women"]
【桃＆葵】[r]「……盯……」
[np]

[r]嗯……？
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了，你们两个？」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_mion_00340_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「咿呀？啊、没、没什么……」
[np]
[FACEHIDE]

[r]桃酱慌忙移开视线，和葵对视了一眼。
[np]

;//小声
[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_mion_00340_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「好奇怪……明明昨天还那么剑拔弩张……」
[np]
[FACEHIDE]

;//小声
[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_mion_00340_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「到底发生了什么事……对、对了！昨天晚上突然听到尖叫声……」
[np]
[FACEHIDE]

;//小声
[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00340_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「尖叫声……？难不成是魔女那家伙……给龙一施加了禁忌咒术！？」
[np]
[FACEHIDE]

;//小声
[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_mion_00340_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「啊、不是的，虽然说是尖叫，但听起来像是女性的声音……」
[np]
[FACEHIDE]

;//小声
[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_mion_00340_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「也就是说，是连魔女都不惜动用魔力的凶恶……」
[np]
[FACEHIDE]

;[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_mion_00340_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「你们两个别鬼鬼祟祟的，快吃饭。要迟到了哦」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_8_M"]
[playcv storage="momo_mion_00340_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「啊……对、对不起！」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_mion_00340_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「唔嗯……必须尽快查明真相……！」
[np]
[FACEHIDE]

[char_erase name="aoi momo chisato"]

[r]……一如既往的和平景象比什么都好。
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

[jump storage="scenario/mion/mion_00350.ks"]