[SCENESTART file=all_00240.ks]
;//all_00240
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:6/22(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[aoi storage="D_seifuku_L CD_9_L"]
[playcv storage="aoi_all_00240_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「从地狱业火中复苏的龙之吐息！！翼神龙·地狱烈焰啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「快住手啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[char_erase name="aoi"]
[stopse buf=5]

[r]自昨天召开「关于如何处置我的会议」后，转眼已是翌日周一。
[np]

[r]望着摆满烤鱼和味噌汤的餐桌，大清早就被葵刺痛了内心创伤。
[np]

[aoi storage="C_seifuku_L CD_2_L"]
[playcv storage="aoi_all_00240_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「果然我的眼光没错……！龙一确确实实是从冥府苏醒的真龙！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以说！别擅自给我加奇怪的设定啊！！」
[np]

[char_erase name="aoi"]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00240_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「龙一君认真喊咒语的样子，还挺像模像样的嘛？」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_2_M"]
[playcv storage="chisato_all_00240_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「噗、咯咯…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不许笑绫濑！那、那个是…因为确定能继续留在这里，情绪太激动了才…」
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00240_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「抱歉抱歉。那就请多关照啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、嗯…请多关照！」
[np]

[char_erase name="chisato mion"]

[r]接过盛好饭的碗时，对绫濑如此回应道。
[np]

[r]没错。虽然这次也定了一个月的期限……但我还能继续在这里和大家共同生活。
[np]

[character name="ryuichi"]
【龙一】[r]「不光绫濑……还有葵、真珠星、桃酱、澪音前辈……重新请大家多多关照了！」
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00240_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「嗯，请多指教了龙一！」
[np]
[FACEHIDE]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_all_00240_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……嗯？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_8_M"]
[playcv storage="momo_all_00240_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「好、好的，请多关照……」
[np]
[FACEHIDE]

[char_erase name="aoi supica momo"]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00240_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「呵呵……我很期待哦」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]虽然真珠星显得没什么兴趣，和桃酱之间也仍感觉有些距离……
[np]

[r]但这一切，我都会努力引导向好的方向发展！
[np]

[chisato storage="D_seifuku_M CD_3_M" trans=false]
[mion storage="D_seifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00240_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「再、再不吃早饭就要来不及了哦」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00240_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「说得是。那我开动啦」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[r]昨天之前，我一直只顾着思考如何避免惹出麻烦……
[np]

[r]但从今天起，我想有意识地和大家一起愉快地……开心地生活下去！
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

;//JUMP:all_00250
[jump storage="scenario/all/all_00250.ks"]