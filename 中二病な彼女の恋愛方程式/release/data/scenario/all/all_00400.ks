[SCENESTART file=all_00400.ks]
;//all_00400
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
【龙一】[r]「到了啊」
[np]

[r]乘坐来时的电车，摇摇晃晃地回到了被夕阳染红的凤见站前。
[np]

[character name="ryuichi"]
【龙一】[r]「虽然发生了不少事，不过游乐园果然还是很好玩啊！」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00400_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「是啊，除了鬼屋之外没什么特别吸引我的呢……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00400_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「先不说鬼屋，其他游乐设施确实不错呢！」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00400_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「抛开鬼屋不谈，过山车倒是挺有意思的！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00400_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「摩天轮的景色也很美……！鬼屋暂且不说……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_all_00400_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「哎呀，评价这么差啊……在我心里可是评价最高的呢……对吧，真珠星？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[supica storage="A_sifuku_M AB_1_M"]
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
【桃】[r]「啊哈哈，说的也是。都到晚饭时间了……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00400_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「现在回家做饭的话，时间会拖得很晚呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那要不就在外面找地方吃吧？」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00400_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「虽然我也很想那样，但那样的话圣水小姐就……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、对啊……」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00400_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「既然如此，我们就买便当回去吧。这样总没问题了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，这个主意好！就这么办！」
[np]

[char_erase name="mion chisato"]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00400_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「咕……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇哦，怎、怎么了……？」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00400_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「……在渴望……沉睡在我体内的另一个我，正在渴望炸鸡便当……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「正常点说啊正常点……我要猪排饭便当好了」
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00400_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「那、那我就……」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[r]就这样，买完七人份便当的我们……
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
【圣水】[r]「哦哦，回来啦——！」
[np]
[FACEHIDE]

[r]圣水小姐今天也喝着最爱的啤酒，脸上泛着微微的红晕迎接我们。
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00400_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「晚饭买了便当。要是现在现做的话就太晚了」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00400_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「噢——有我爱吃的生姜烧便当吗？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00400_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「嗯，确实买了哦」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00400_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「不愧是千圣，很懂嘛！那游乐园怎么样？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00400_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「玩得超开心！」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00400_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「噢——这样啊这样啊！」
[np]
[FACEHIDE]

[r]圣水小姐用力揉着坦诚表达喜悦的葵的头发。
[np]

[char_erase name="satomi aoi chisato"]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_all_00400_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「您听我说啊，澪音前辈一开始就吵着要进鬼屋……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00400_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「说是专业级的布景，任谁都会好奇吧？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00400_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「啊，那个确实很有名呢。电视综艺节目也经常去取景」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[character name="ryuichi"]
【龙一】[r]「虽然我和前辈、真珠星都完全不怕，但其他三个人吓得够呛……」
[np]

[chisato storage="D_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00400_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「所、所以说我没害怕啦！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00400_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「不过之后的过山车超有趣……！那种速度感会上瘾的！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_all_00400_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「我虽然坐不了过山车……但是旋转木马闪闪发亮的好好玩！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00400_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「还有还有，从摩天轮上看到的景色好漂亮呢，真珠星酱！」
[np]
[FACEHIDE]

[char_erase name="chisato aoi momo"]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00400_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……要是晚上坐的话，应该能清楚看到星星……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00400_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「这样啊这样啊。大家玩得开心比什么都重要。我这早起也算没白费啦」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]听完大家的感想，圣水小姐满意地点了点头。
[np]

[r]游乐园……虽然和这群人去玩也足够开心了……
[np]

[r]不过下次要是能和她两个人去的话……那该多好啊……
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

;//[SYSTEMMENU]

;//[r]※体験版専用の選択肢です。葵・すぴかルートをちょこっとプレイできます。
;//[np]

;//[select_start ]
;//[select_opt bgtop=230 bareaheight=150]
;//	[select_button text=葵路线（体验版专用） jump target="*selectA"]
;//	[select_button text=真珠星路线（体验版专用） jump target="*selectB"]
;//[select_end]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump


[endif]


;//葵好感度が４以上の時　葵ルートへ
[if exp="f.love_aoi>=2"]
	[SetSJumpFlg storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]
	[SetSJumpTarget storage="" target="" Runflg="0"]

	[jump storage="scenario/aoi/aoi_00010.ks"]
[endif]

;//千聖好感度が２以上の時　千聖ルートへ
[if exp="f.love_chisato>=2"]
	[SetSJumpFlg storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]
	[SetSJumpTarget storage="" target="" Runflg="0"]

	[jump storage="scenario/chisato/chisato_00010.ks"]
[endif]

;//いずれの条件も満たさない場合は
[SetSJumpFlg storage="scenario/all/all_00400.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00430.ks" target="*SCJump" Runflg="0"]



[jump storage="scenario/all/all_00410.ks"]
[s]
