[SCENESTART file=momo_00070.ks]
;//momo_00070
;//BG:bg15_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:7/4(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「到了」
[np]

[r]乘坐来时那班电车摇晃着回到晚霞染红的风见车站前。
[np]

[character name="ryuichi"]
【龙一】[r]「虽然经历了不少事，但游乐园果然还是很有趣！」
[np]

[mion storage="C_sifuku_M CD1_1_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_all_00400_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「是啊，除了鬼屋之外其他设施都没什么吸引力……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_2_M"]
[playcv storage="chisato_all_00400_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「鬼屋姑且不论，其他游乐设施确实不错呢！」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[aoi storage="A_tokushu_M A_2_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_all_00400_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「鬼屋先不说，过山车还挺有趣的！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00400_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「摩天轮的景色也很漂亮……！鬼屋暂且不提……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_all_00400_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「哎呀，评价这么差啊……明明在我心里评分最高的……你说对吧，真珠星？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[supica storage="A_sifuku_M AB_1_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="supica_all_00400_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……肚子饿了」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_all_00400_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊哈哈，说得也是。已经到晚饭时间了……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00400_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「现在回去做饭的话，时间会拖得很晚呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那要不就在外面吃吧？」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00400_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「虽然很想这么做，但这样圣水小姐就……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，对啊……」
[np]

[char_erase name="chisato"]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00400_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「那就去买便当带回去吧。这样就没问题了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，这个主意不错。就这么办吧！」
[np]

[char_erase name="mion"]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00400_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「咕……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇、怎、怎么了……？」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00400_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「……渴望……沉睡在我体内的另一个我，正渴望着炸鸡块便当……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好好说话行不行……我要炸猪排便当吧」
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00400_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「那我要……」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]就这样买了七人份便当的我们……
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
[wait time="1500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_06.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

;//背景を寮のリビングbg02_03に
[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_all_00400_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「我们回来啦」
[np]
[FACEHIDE]

[r]回到了圣水小姐等候的伏木庄。
[np]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_all_00400_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「哦，你们回来啦！」
[np]
[FACEHIDE]

[r]圣水小姐今天也喝着最爱的啤酒，脸上泛着微微红晕出来迎接我们。
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00400_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「晚餐买了便当回来。要是现在开始做就太晚了」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00400_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「噢──有我最爱的生姜烧肉便当吗？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00400_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「嗯，特意买好了」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00400_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「不愧是千圣，真懂我！话说游乐园好玩吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00400_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「超级有意思！」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00400_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「嚯，是嘛是嘛！」
[np]
[FACEHIDE]

[r]圣水小姐用力揉着坦然表达喜悦的葵的脑袋。
[np]

[char_erase name="satomi aoi chisato"]

[chisato storage="A_sifuku_M AB_6_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00400_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「我跟您说啊，澪音前辈一开始就闹着要去鬼屋……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00400_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「听说是专业级布景设计，正常人都会好奇的吧？」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00400_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「啊，那个确实很有名呢。经常被电视综艺节目取景的」
[np]
[FACEHIDE]

[char_erase name="satomi"]

;//ここから新規シーン
[r]嘿，原来那里那么有名啊。
[np]

[satomi storage="A_sifuku_M AB_3_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00070_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「桃和葵没问题吗？总觉得你们会全程尖叫到底的样子」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00070_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「确、确实…虽然中途忍不住叫了很多次，也害怕得快要哭出来了…」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_momo_00070_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「但、但是有神原先辈陪着…所以才能坚持下来！」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M A_7_M"]
[playcv storage="satomi_momo_00070_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「哦？龙一啊」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00070_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「所以那个…啊，当时忘记说了…」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00070_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「前辈，真的非常感谢您…！」
[np]
[FACEHIDE]

[r]桃酱朝我轻轻鞠躬，脸上绽放出灿烂的笑容。
[np]

[r]看着她的笑容，我自然感到胸口涌起暖意…
[np]

[character name="ryuichi"]
【龙一】[r]「听你这么说，我也很高兴。我这边才要谢谢你呢，桃酱」
[np]

[r]我也回以笑容和话语，同时微微低头致意。
[np]

[char_erase name="momo satomi"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00070_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「呵…莫非这就是所谓的吊桥效应…」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00070_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「吊桥……？」
[np]
[FACEHIDE]

[r]哎、那个……
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00070_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「哎呀，没听说过吗？共同经历过危机的男女——」
[np]
[FACEHIDE]

[r]前辈说到这里，突然把脸凑近桃酱的耳边——
[np]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_momo_00070_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「……！！？」
[np]
[FACEHIDE]

[r]在耳边低语的瞬间，桃酱的脸唰地变得通红。
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00070_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「不、不是……不是的！那、那种事……才没有……！」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00070_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「呵呵呵……好啦，肚子也饿了，该去洗个手了呢」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]看着桃酱慌乱的模样似乎获得了满足，澪音前辈带着挑衅的笑容走进了洗手间。
[np]

;//小声
[momo storage="A_sifuku_M AB_4_M"]
[playcv storage="momo_momo_00070_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「怎、怎么会……我……那种事……绝对……」
[np]
[FACEHIDE]

;//「マインドコントロール」でお願いします
[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_momo_00070_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「怎、怎么了桃！？魔女对你做了什么！？难道中了心魂操控术！？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_momo_00070_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「呜诶诶……！？那、那个，不是……不是这样的……」
[np]
[FACEHIDE]

[r]桃酱露出为难的表情，悄悄瞥了我一眼……
[np]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_momo_00070_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
[char_quake name=momo]
【桃】[r]「啊！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]一和我对上视线，她不仅移开了目光，连涨得通红的脸也一起别了过去。
[np]

[r]那、那我先去洗个手吧。
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

[jump storage="scenario/momo/momo_00080.ks"]