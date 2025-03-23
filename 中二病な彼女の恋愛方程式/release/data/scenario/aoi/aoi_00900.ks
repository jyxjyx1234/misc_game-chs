[SCENESTART file=aoi_00900.ks]
;//aoi_00900
;//BG:bg13_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:夜
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,tokushu
;//CH:聖水,sifuku

[mion storage="C_sifuku_M CD1_3_M" trans=false]
[chisato storage="A_tokushu_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00900_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「不过，所谓的醉酒怪物……形容得真贴切呢」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_aoi_00900_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「当时真的是让人捏了把冷汗呢……」
[np]
[FACEHIDE]

[r]众人撤离夜晚的屋顶，一同走向宿舍的路。
[np]

[momo storage="C_tokushu_M C_1_M"]
[playcv storage="momo_aoi_00900_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_tokushu"]
【桃】[r]「我们也想看啊……千圣小姐对战圣水小姐！」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_6_M"]
[playcv storage="chisato_aoi_00900_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「没、没有啦，不是什么大不了的事……」
[np]
[FACEHIDE]

[char_erase name="chisato mion momo"]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_aoi_00900_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「千圣……嘴上说着迫不得已，身体倒是很投入嘛」
[np]
[FACEHIDE]

[char_erase name="supica"]

[chisato storage="A_tokushu_M AB_8_M"]
[playcv storage="chisato_aoi_00900_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「哎……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是说啊。连服装都准备得那么周全……」
[np]

[chisato storage="B_tokushu_M AB_10_M"]
[playcv storage="chisato_aoi_00900_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「这、这是……！有喜欢这种风格的朋友在，所以借来的啦！既然要做就要全力以赴啊！？」
[np]
[FACEHIDE]

[chisato storage="B_tokushu_M AB_10_M" trans=false]
[aoi storage="D_tokushu_M CD_2_M" trans=false]
[char_trans]
[playcv storage="aoi_aoi_00900_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「天使连招式名都很帅气哦……！消失闪焰！！！！！！」
[np]
[FACEHIDE]

[chisato storage="D_tokushu_M CD2_8_M"]
[playcv storage="chisato_aoi_00900_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「等、别说了……！！」
[np]
[FACEHIDE]

[r]绫濑拼命阻止正在模仿当时场景的葵。
[np]

[char_erase name="chisato aoi"]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00900_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「噗、呵呵……哧哧」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_10_M"]
[playcv storage="chisato_aoi_00900_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「有、有什么好笑的，澪音前辈……！？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00900_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「没什么，只是想到点事情……呵、呵呵……」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_10_M"]
[playcv storage="chisato_aoi_00900_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「呜……总、总之！这种闹剧今天就是最后一次了！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00900_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「怎、怎么会……明明好不容易才在死别后重逢，难道以后都不能并肩作战了吗……？」
[np]
[FACEHIDE]

[chisato storage="D_tokushu_M CD2_10_M"]
[playcv storage="chisato_aoi_00900_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「就、就算用这种眼神看我，不行就是不行……！今天就到此为止！」
[np]
[FACEHIDE]

;//[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_aoi_00900_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「我也想看看千圣小姐……不，安洁小姐的华丽身姿！」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_6_M"]
[playcv storage="chisato_aoi_00900_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「所、所以说今天就是最后——」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00900_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那我也加入如何？小安洁」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_6_M"]
[playcv storage="chisato_aoi_00900_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_tokushu"]
【千圣】[r]「别用那个名字叫我啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[char_erase name="chisato aoi mion"]

[r]——夏日的夜空中，回荡着绫濑的悲鸣。
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
[wait time="500"]

;//背景を葵の部屋bg03_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哎呀—，比想象中要有趣得多嘛」
[np]

[r]回到宿舍，和葵独处。
[np]

[r]和葵并排坐在床边，窥视她的表情。
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00900_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「……龙一，真的很对不起……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，什么事？」
[np]

[r]为了不让葵流露出的表情蒙上阴霾，我用明快的语气回应。
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00900_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「……说什么为了成为普通的女孩子而从中二病毕业……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_10_M"]
[playcv storage="aoi_aoi_00900_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_10_FACE_tokushu"]
【葵】[r]「明明说了根本做不到的话，结果却给龙一添了麻烦……」
[np]
[FACEHIDE]

[r]葵紧紧抿着嘴唇，露出寂寞的笑容。
[np]

[character name="ryuichi"]
【龙一】[r]「……没关系啦。葵能恢复原样就好。所以」
[np]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_aoi_00900_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「龙一……」
[np]
[FACEHIDE]

[r]面对凝视着我双眼的葵，我回以微笑。
[np]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00900_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「……呐，龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？」
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00900_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「……这、这种事……现在才问，或许你会觉得我在说什么呢……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00900_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「龙一……即、即使我……无法像之前那样……成为普通的女孩……你也……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_aoi_00900_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「……会讨厌……这样的我吗……？」
[np]
[FACEHIDE]

[r]……真的，让人忍不住想反问到底在问什么的问题。
[np]

[r]但葵的表情绝不是开玩笑的……正因如此，我也要郑重回应——
[np]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00900_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「呀……」
[np]
[FACEHIDE]

[r]将不安的葵一把紧紧搂入怀中。
[np]

[character name="ryuichi"]
【龙一】[r]「……我最初喜欢上的葵……并不是什么普通的女孩啊」
[np]

[character name="ryuichi"]
【龙一】[r]「即使被旁人觉得奇怪，也贯彻到底做自己热爱之事……这样充满魅力又可爱的女孩」
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00900_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以只要葵能继续做自己喜欢的事，我就心满意足了」
[np]

[character name="ryuichi"]
【龙一】[r]「只要葵能开心地笑……这样我就心满意足了」
[np]

[aoi storage="A_tokushu_M A_3_M"]
[playcv storage="aoi_aoi_00900_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_tokushu"]
【葵】[r]「龙、龙一……」
[np]
[FACEHIDE]

[r]……虽然想认真回答……但果然还是有点装模作样了吗？
[np]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_aoi_00900_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「……谢谢你，龙一……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_aoi_00900_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「我能和龙一交往…能成为龙一的女朋友…真是太好了…」
[np]
[FACEHIDE]

[r]葵害羞地笑着，将脸埋进我的胸膛。
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00900_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「龙一……喜欢你……最喜欢你……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……我也喜欢你，葵……」
[np]

[r]我温柔地抚摸着依偎在怀中的葵的头发。
[np]

[aoi storage="A_tokushu_M A_10_M"]
[playcv storage="aoi_aoi_00900_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_tokushu"]
【葵】[r]「龙一……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]看着缓缓闭上双眼的葵……
[np]

[aoi storage="A_tokushu_L A_10_L"]
[playcv storage="aoi_aoi_00900_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_tokushu"]
【葵】[r]「嗯……啾……」
[np]
[FACEHIDE]

[r]我依然紧搂着她纤细的身躯，交换着彼此的亲吻。
[np]

[aoi storage="C_tokushu_L CD_8_L"]
[playcv storage="aoi_aoi_00900_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「嗯、嗯嗯……啾、啾……」
[np]
[FACEHIDE]

[r]仿佛这样做是必然一般，一遍又一遍、一遍又一遍地……
[np]

[aoi storage="A_tokushu_L A_10_L"]
[playcv storage="aoi_aoi_00900_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_tokushu"]
【葵】[r]「嗯、啾噗……嗯、嗯啾、啾啾啾……」
[np]
[FACEHIDE]

[r]在如啄食般反复轻吻之际，葵稍稍将脸庞移开。
[np]

[aoi storage="C_tokushu_L CD_3_L"]
[playcv storage="aoi_aoi_00900_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「……呐，龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[aoi storage="A_tokushu_L A_9_L"]
[playcv storage="aoi_aoi_00900_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「我……之前说过……作为普通女孩子，想要龙一的孩子……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，确实说过呢」
[np]

[aoi storage="C_tokushu_L CD_8_L"]
[playcv storage="aoi_aoi_00900_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「但……现在……只是单纯地……不是因为那种理由……而是想要和龙一的孩子……这么想着……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_L CD_3_L"]
[playcv storage="aoi_aoi_00900_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「想要和龙一结婚，生下孩子……一起获得幸福……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_L A_3_L"]
[playcv storage="aoi_aoi_00900_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_tokushu"]
【葵】[r]「永远……永远，都和龙一在一起……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这就是血脉相连的契约……吗？」
[np]

[aoi storage="A_tokushu_L A_8_L"]
[playcv storage="aoi_aoi_00900_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「哎？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在伏木庄实现了命运重逢的……我和葵缔结的血脉契约……」
[np]

[aoi storage="C_tokushu_L CD_2_L"]
[playcv storage="aoi_aoi_00900_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「啊……嗯。只属于我和龙一的、二人专属的契约……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那么……」
[np]

[char_erase name="aoi"]

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

;//JUMP:aoi_00910
[jump storage="scenario/aoi/aoi_00910.ks"]