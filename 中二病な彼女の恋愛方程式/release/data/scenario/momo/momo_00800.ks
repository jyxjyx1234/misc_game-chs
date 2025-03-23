[SCENESTART file=momo_00800.ks]
;//momo_00800
;//BG:bg02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:夕
;//日付:8/3(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[fadeinbgm storage="sound/BGM06.ogg" time=1000]

[r]然后……
[np]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_momo_00800_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「噗……噗哧、哧哧……噗、咯咯咯……不、不行，我受不了啦！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00800_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊哈哈哈哈哈哈哈哈哈哈哈哈！！！！！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[momo storage="B_sifuku_L AB_6_L"]
[playcv storage="momo_momo_00800_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
[quake time=500]
【桃】[r]「明明说好不笑的嘛——————！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]在吃晚饭前，我向聚集的大家说明了白天的状况……
[np]

[r]就在我解释完桃酱误会怀孕的原因后，圣水小姐就捧腹大笑起来。
[np]

[r]或者说，其他人也……
[np]

[mion storage="D_sifuku_M CD1_3_M" trans=false]
[chisato storage="A_sifuku_M AB_4_M" trans=false]
[aoi storage="C_tokushu_M CD_10_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00800_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「等、等一下千圣……你笑的话是不是太失礼了……？　桃可是认真的……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_momo_00800_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「前、前辈您自己不也……怎么看都在憋笑不是吗……会、会伤害到桃的……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_3_M"]
[playcv storage="aoi_momo_00800_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_3_FACE_tokushu"]
【葵】[r]「别、别灰心桃……！还、还有机会的……噗……」
[np]
[FACEHIDE]

[char_erase name="aoi chisato mion"]

[r]所有人都明显在拼命憋笑……这种绝对不能笑出来的氛围反而更让人想笑。
[np]

[r]说归说，我也紧咬着下嘴唇，拼命维持着平常的表情……
[np]

[supica storage="B4_sifuku_M AB_1_M"]
[playcv storage="supica_momo_00800_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……也就是说小桃只是胖了？」
[np]
[FACEHIDE]

[char_erase name="supica"]

;//合わせ
[mion storage="C_sifuku_M CD1_2_M" trans=false]
[chisato storage="C_sifuku_M CD_2_M" trans=false]
[char_trans]
[playcv storage="momo_mix_00800_001.ogg" name="women"]
[character name="women"]
【澪音＆千圣】[r]「噗！！」
[np]

[char_erase name="mion chisato"]

[momo storage="D_sifuku_L D_8_L"]
[playcv storage="momo_momo_00800_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「不要说啊！不要说得这么直白啊！！」
[np]
[FACEHIDE]

[r]真珠星正中红心的直球发言，让我清楚看见前辈和绫濑同时喷笑出来的模样。
[np]

[char_erase name="momo"]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00800_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊不行了！肚子要笑痛了！噗、咯咯咯！噗哈哈哈哈哈哈哈哈哈哈！！」
[np]
[FACEHIDE]

[r]这种时候能毫无顾忌大笑的作风，真的很符合圣水小姐的性格呢……
[np]

[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_momo_00800_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「哈……哈、哈——……哎呀—，今年笑得最痛快的一次……回想起来应该还能再笑个三次左右」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00800_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「不用再笑了啦！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_momo_00800_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「呼……话说回来，能只是误会收场不是很好吗？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_momo_00800_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「诶……？」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[mion storage="A_sifuku_M AB1_2_M" trans=false]
[momo storage="D_sifuku_M D_7_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00800_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「这么说也是……以小桃的年纪要是怀孕的话，各方面都会很麻烦的……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00800_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「最重要的是，我们都还是学生……更何况没结婚就生孩子的话，会遇到很多困难的」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00800_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「那、那是……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_momo_00800_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「嗯……确实如魔女所说……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00800_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「不过这不是很好吗……？说明你们亲密到会让人误会怀孕的程度了……」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_momo_00800_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「！？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_momo_00800_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这说明两人的关系进展顺利嘛……呵呵……」
[np]
[FACEHIDE]

[char_erase name="momo mion aoi"]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_momo_00800_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「好、好啦！我们开饭吧！对吧？」
[np]
[FACEHIDE]

[r]或许是察觉到前辈话题中的危险气息，绫濑恰到好处地提议道。
[np]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00800_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「只要装盘摆好就行了，小桃来帮忙好吗？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_1_M"]
[playcv storage="momo_momo_00800_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「啊、好的……」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[character name="ryuichi"]
【龙一】[r]「那我去拿盘子吧」
[np]

[supica storage="C1_sifuku_M CD_3_M"]
[playcv storage="supica_momo_00800_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……摆筷子……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[satomi storage="D_sifuku_M CD_3_M" trans=false]
[aoi storage="A_tokushu_M A_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00800_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「那我就开喝啤酒啦！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00800_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「这根本算不上帮忙！」
[np]
[FACEHIDE]

[char_erase name="aoi satomi"]

[r]桃酱的怀孕风波告一段落后，伏木庄的客厅恢复了往日的愉快氛围。
[np]

[r]而且澪音前辈对桃酱说的那些话，我认为完全正确。
[np]

[r]不过……
[np]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00800_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「小桃，土豆炖肉用这个盘子装可以吗？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00800_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊、好的……这样就够了」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]剩下的问题就是如何让桃酱接受这个说法了……
[np]

[r]这应该就是身为男友的我……展现男友力的时候了吧。
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

[jump storage="scenario/momo/momo_00810.ks"]