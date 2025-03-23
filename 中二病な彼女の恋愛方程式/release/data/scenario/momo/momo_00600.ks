[SCENESTART file=momo_00600.ks]
;//momo_00600
;//BG:bg01_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:夕
;//日付:7/24(金)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]……之后，我尽量避开人多的场所，在河滩散步……
[np]

[r]再次回到宿舍前时，周围的景色已被染成一片橘红。
[np]

[momo storage="A_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00600_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「已经这么晚了……总觉得今天时间过得特别快……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是因为紧张？还是因为开心？」
[np]

[momo storage="C_tokushu_M C_3_M"]
[playcv storage="momo_momo_00600_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_tokushu"]
【桃】[r]「嗯……可能两者都有……」
[np]
[FACEHIDE]

[r]桃酱腼腆地笑了笑。
[np]

[momo storage="B_tokushu_M AB_1_M"]
[playcv storage="momo_momo_00600_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_tokushu"]
【桃】[r]「今天穿着这身打扮在外走了一天……我发现自己或许太过在意周围的目光了……」
[np]
[FACEHIDE]

[momo storage="D_tokushu_M D_3_M"]
[playcv storage="momo_momo_00600_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_tokushu"]
【桃】[r]「意识到这点后，心情反而轻松了些许……」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_momo_00600_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「甚至能感受到穿着这身衣服外出时，自己心底泛起的一丝雀跃」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「听你这么说，作为邀请方我也很高兴……那么下次也——」
[np]

[momo storage="B_tokushu_M AB_8_M"]
[playcv storage="momo_momo_00600_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「不、不行！穿成这样约会仅限于今日！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……可你方才不是说已经不太在意旁人目光了……」
[np]

[momo storage="C_tokushu_M C_4_M"]
[playcv storage="momo_momo_00600_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_tokushu"]
【桃】[r]「这、这是两码事……毕竟穿着这身装扮时的我，已经不是普通的桃了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是堕天使圣职者模式……对吧？」
[np]

[momo storage="D_tokushu_M D_2_M"]
[playcv storage="momo_momo_00600_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_tokushu"]
【桃】[r]「……呵呵。没错哦，翼神龙先生♪」
[np]
[FACEHIDE]

[r]桃酱开玩笑似的笑了笑，打开了玄关的门。
[np]

[char_erase name="momo"]

[r]是啊…如果身为我女友的桃酱不复存在的话…那约会自然也无法成立了。
[np]

;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//ももの衣装を私服に
;[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00600_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「哎呀，真的穿着那身装扮去约会了呀」
[np]
[FACEHIDE]

[r]回到宿舍稍作休整后，我们提早开始了晚餐。
[np]

[momo storage="B_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00600_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「是的。刚开始真的超级害羞……不过渐渐就习惯了……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00600_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「后来发现或许只是自己过度在意周围的目光……这么想着就慢慢放松下来了……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[satomi storage="A_sifuku_M AB_2_M" trans=false]
[aoi storage="A_tokushu_M A_1_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00600_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「毕竟桃和葵不一样，可是很有常识的呢」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00600_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「喂！这么说听起来简直就像我缺乏常识似的！」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00600_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「难道不是吗」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_momo_00600_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「才不是这样呢！！」
[np]
[FACEHIDE]

[char_erase name="aoi mion satomi"]

[r]后来听说，我们溜出宿舍后这两人似乎还在继续战斗。
[np]

[chisato storage="A_sifuku_M AB_2_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00600_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「从这个角度说，可能是对自己更有自信了吧」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_momo_00600_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_momo_00600_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「既然不再那么在意他人目光……说明对自己喜欢的事情产生了信心，或者说……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00600_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「啊……确实可能是这样」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[supica storage="B2_sifuku_M AB_1_M" trans=false]
[momo storage="C_sifuku_M C_3_M" trans=false]
[char_trans]
[playcv storage="supica_momo_00600_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……这是龙一的功劳吗？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00600_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「呃……」
[np]
[FACEHIDE]

[r]真珠星突然提到我的名字，连我都吃了一惊。
[np]

[supica storage="B2_sifuku_M AB_2_M"]
[playcv storage="supica_momo_00600_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……桃自从和龙一在一起后，笑容变多了」
[np]
[FACEHIDE]

[r]就在身旁葵和澪音前辈正在拌嘴，圣水看着她们傻笑的喧闹中……
[np]

[r]不知为何，真珠星这句话却清晰地传入了我的耳中。
[np]

[supica storage="C1_sifuku_M CD_3_M"]
[playcv storage="supica_momo_00600_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「所以，肯定……也是因为有了自信……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00600_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「…嗯，或许真珠星酱说得没错」
[np]
[FACEHIDE]

[r]桃酱一边说着一边点头…然后看向我，微微一笑。
[np]

[char_erase name="momo supica"]

[r]……确实，应该就是这么回事吧。
[np]

[r]能够毫不羞涩、坦率地承认真珠星的那番话……
[np]

[r]和我交往后，桃酱身上发生了变化的部分…究竟是什么呢？
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

[jump storage="scenario/momo/momo_00610.ks"]