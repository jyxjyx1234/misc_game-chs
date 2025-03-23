[SCENESTART file=momo_00100.ks]
;//momo_00100
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
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:夜
;//日付:7/5(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]在那件事发生后的晚饭时间。
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_momo_00100_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「那么，我开动啦！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

;//合わせ
[aoi storage="A_tokushu_M A_2_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[chisato storage="C_sifuku_M CD_2_M" trans=false]
[char_trans]
[playcv storage="momo_mix_00100_001.ogg" name="women"]
[character name="women"]
【一同】[r]「开动啦！」
[np]
[FACEHIDE]

[char_erase name="chisato aoi momo"]

[r]外出打工和办事的众人陆续回到座位，筷子朝着各自心仪的方向伸去。
[np]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_momo_00100_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「唔嗯……圣水的炸虾果然是天下无双！！」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_momo_00100_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「啊哈哈哈。虽然嫌麻烦很少做，但听你这么说果然还是很开心呢」
[np]
[FACEHIDE]

[r]确实，这个真好吃啊……！酥脆面衣包裹着弹牙的虾肉口感……
[np]

[r]明明知道是圣水做的，却好吃到让人停不下筷子。
[np]

[char_erase name="satomi aoi"]

[chisato storage="C_sifuku_M CD_3_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00100_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「嘿，已经出梅了啊」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_momo_00100_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀，今年可真是早了不少呢」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[r]追随着两人的视线，我也看向电视。
[np]

[r]天气预报栏目里，气象预报员大叔正解说着比往年提早许多的梅雨结束。
[np]

[satomi storage="A_sifuku_M AB_7_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00100_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
[char_jump name=satomi]
【圣水】[r]「啊！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_momo_00100_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「呀……！？怎、怎么啦？」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_7_M"]
[playcv storage="satomi_momo_00100_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「对了，说到出梅……龙一的房间！」
[np]
[FACEHIDE]

[r]请不要用筷子指着别人。
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_momo_00100_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「今天接到家里联络，说是已经找到维修工人了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……也就是说……」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_momo_00100_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「最晚暑假开始前应该就能修好了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噢噢……！！」
[np]

[char_erase name="satomi chisato"]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_momo_00100_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「太好了啊，龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯！」
[np]

[r]面对突如其来的好消息，差点忍不住要站起来。
[np]

[r]这样啊，终于能…终于能和这个牢笼般的生活说再见了！
[np]

[char_erase name="aoi"]

[satomi storage="A_sifuku_M AB_3_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00100_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「对了，我想先问问大家的意见……之前提到的事，你们觉得怎么样？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00100_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「关于让龙一君继续住在这个宿舍的事，你们怎么想？」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00100_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「是的。对我来说，让男生住在这里毕竟是头一回……所以想问问大家这段时间相处下来感觉如何」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]居、居然要在这种场合下问这个吗……。
[np]

[aoi storage="D_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00100_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「我完全没问题！翼神龙是今后也要与我并肩作战的战友——」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_momo_00100_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「我没什么意见。毕竟也发生了不少有趣的事呢……呵呵」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_momo_00100_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「真珠星你呢？」
[np]
[FACEHIDE]

[char_erase name="aoi satomi mion"]

[supica storage="A_sifuku_M AB_2_M"]
[playcv storage="supica_momo_00100_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……炸虾，好吃」
[np]
[FACEHIDE]

[char_erase name="supica"]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00100_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「这样啊这样啊。那另外两位呢？」
[np]
[FACEHIDE]

[r]哎，刚才那样就算回答了吗？
[np]

[char_erase name="satomi"]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_momo_00100_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「我现在已经没有任何问题了。虽然一开始确实发生过不少事情……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_momo_00100_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「既然房间已经修好了，应该不用再像之前那样小心翼翼了吧」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[satomi storage="A_sifuku_M AB_1_M" trans=false]
[momo storage="B_sifuku_M AB_8_M" trans=false]
[char_trans]
[playcv storage="momo_momo_00100_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「我、我也赞成！！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00100_011.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「哦，桃也赞成啊」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_momo_00100_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「是、是的……虽然前辈刚来的时候我确实一直不知所措……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00100_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「但、但是一起生活后我明白了……！前辈绝对不是坏人……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[char_erase name="chisato momo satomi"]

[r]突然开始这个话题时明明紧张得要命……
[np]

[r]曾经反对的两个人能像这样接纳我……此刻唯有满心欢喜
[np]

[r]最重要的是桃酱这么用力支持我……感觉初次见面时的心结终于解开了，真的——
[np]

[mion storage="A_sifuku_M AB1_3_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00100_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵……小桃不用站着说这么用力吧？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_momo_00100_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「哎……？啊……对、对不起！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_momo_00100_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「好了好了，这说明她心意坚定嘛」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00100_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「感情强烈……原来如此……」
[np]
[FACEHIDE]


[r]独自低语的前辈脸上浮现出妖异的笑容。
[np]

[char_erase name="mion momo chisato"]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00100_012.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「那就这么定了！龙一君今后就继续住在伏木庄吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「再次请大家多多关照！！」
[np]

[char_erase name="satomi"]

[r]当我起身深深鞠躬时——
[np]

[r]看到所有人都用笑容（真珠星除外）和掌声接纳了我，实在令人欣喜万分。
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

[jump storage="scenario/momo/momo_00110.ks"]