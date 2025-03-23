[SCENESTART file=aoi_00150.ks]
;//aoi_00150
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
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/9(木)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_aoi_00150_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「好，全员到齐！那么，我开动啦！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]继圣水之后，就座的众人也微微低头。
[np]

[character name="ryuichi"]
【龙一】[r]「今天吃猪排盖饭啊……！是为了讨个好兆头吗？」
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00150_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「有这个原因，也有我们想偷懒的成分啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽说偷懒，但猪排盖饭做起来还挺费工夫的吧……」
[np]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_aoi_00150_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「里脊猪排是现成买的，只要裹上蛋液就行」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「原来如此，是简易版猪排盖饭啊」
[np]

[char_erase name="momo chisato"]

[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_aoi_00150_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「吃猪排盖饭就能考试胜利咚！！啊哈哈哈！这样不错嘛！！」
[np]
[FACEHIDE]

[r]今天也有一位与众不同的醉鬼在的餐桌依旧和平。
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_aoi_00150_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「说起来大家，明天就考完试了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊。只要熬过明天……只要熬过明天就……！」
[np]

[char_erase name="satomi"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00150_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「龙一和葵的补习应该没问题了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「关于那个嘛……应该没问题了！对吧，葵？」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00150_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「呃……？啊、啊啊……是啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了，没信心吗？」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00150_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「不、不是这个意思……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……？」
[np]

[char_erase name="aoi mion"]

[r]看似在对话，却给人一种没有互通的感觉。
[np]

[r]因为葵的目光似乎不是在注视我的眼睛，而是盯着我额头上的伤疤。
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00150_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「真珠星酱，要再来点麦茶吗？」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_aoi_00150_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……要」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[r]桃酱将桌上备好的麦茶倒入空玻璃杯中。
[np]

[satomi storage="A_sifuku_M AB_1_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00150_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「话说圣水小姐学生时代成绩如何？」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00150_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「成绩啊？体育和音乐一直是满分，其他科目就像鸭子排队一样参差不齐呢」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_aoi_00150_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「鸭子……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00150_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「古代人会把成绩单上的『２』叫做鸭子呢。看起来还挺像的不是吗？」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[satomi storage="B_sifuku_M AB_7_M" trans=false]
[chisato storage="A_sifuku_M AB_8_M" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00150_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「诶……」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_9_M"]
[playcv storage="satomi_aoi_00150_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_9_FACE_sifuku"]
【圣水】[r]「喂喂！说什么古代人古代人的！我现在还勉强卡在２０岁后半段啊！」
[np]
[FACEHIDE]

[r]把「年龄哪有什么内角外角」的吐槽连同麦茶一起咽回肚子。
[np]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_aoi_00150_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「啊咧？难道你们都在怀疑！？好嘞，那就给你们看证据！让你们看看我这水嫩嫩的肌肤！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！？」
[np]

[chisato storage="D_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00150_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「等、等一下圣水小姐！！快住手，快停下！！」
[np]
[FACEHIDE]

[r]圣水小姐抓住衣摆准备一把脱掉时……被绫濑及时制止了。
[np]

[chisato storage="B_sifuku_M AB_11_M"]
[playcv storage="chisato_aoi_00150_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「都说了不行啦，现在可不只有女生在场啊……」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_aoi_00150_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「啊对哦，青春期的男生看到我的肌肤会太刺激了吧」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00150_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「……龙一君，流口水了吧？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[character name="ryuichi"]
【龙一】[r]「！？才、才没有那种事……」
[np]

[satomi storage="B_sifuku_M AB_1_M" trans=false]
[chisato storage="B_sifuku_M AB_11_M" trans=false]
[char_trans]
[playcv storage="satomi_aoi_00150_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「不过这才是男孩子嘛！虽说最近流行说什么草食系之类的……嗯唔、咕唔……！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00150_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「等、圣水小姐！那是我的麦茶……！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_7_M"]
[playcv storage="satomi_aoi_00150_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「诶……？啊，抱歉抱歉，和啤酒搞混了」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00150_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「搞混了……啤酒明明是罐装的啊，真是……」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_aoi_00150_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「别这么生气嘛，这可是和我的间接接吻哦？很开心吧？」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00150_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[quake time="500"]
【葵】[r]「噗——————————！！！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]喷出来了——————————！？
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00150_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「呀啊！？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00150_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「啊，葵……！？」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00150_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「啊……对、对不起！刚、刚才那个是……那个……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你在搞什么啊……给，要用纸巾吗？」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00150_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「啊……嗯、嗯……对不起……」
[np]
[FACEHIDE]

[r]幸好是朝着没人的方向喷出来，所以没有造成人员伤亡……
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00150_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「突然喷出麦茶……是在练习毒雾吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00150_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「不、不是的！喝的麦茶不小心呛到气管里……仅此而已……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_9_M"]
[playcv storage="mion_aoi_00150_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「哼嗯……真的只是那样吗……？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00150_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「还、还有其他什么可能吗……！」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00150_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「算了，就当是那样吧」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00150_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「唔……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「来，不好好擦干净的话……没事吧？」
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00150_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「呜、呜呜……」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]
[r]之后擦完洒出来的麦茶，像什么都没发生一样开始吃晚饭……
[np]

[r]但最终，葵的状态依然与往常有些不同。
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

;//JUMP:aoi_00160
[jump storage="scenario/aoi/aoi_00160.ks"]