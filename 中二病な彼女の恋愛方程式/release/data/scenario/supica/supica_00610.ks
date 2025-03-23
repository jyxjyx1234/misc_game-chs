[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00610.txt]
;//supica_00610
;//BG:bg02_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:8/5(水)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]在那件事发生之后，过了好些日子……
[np]

[character name="ryuichi"]
【龙一】[r]「多谢款待」
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_supica_00610_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「嗯，粗茶淡饭不成敬意」
[np]
[FACEHIDE]

[r]打工结束后，我享用了绫濑为我准备的相当晚的午餐。
[np]

[r]日历翻到八月，暑假过半的今天。
[np]

;//以下２行、supica_00580のシーンで、３Ｐルートに突入した場合のみ表示
[if exp="f.SelectS00580_0 == 0"]
[r]那件事发生后，我立刻和真珠星一起向绫濑低头认错……
	[np]

[r]之后虽然彼此都有些尴尬，但最近总算恢复了以往的相处模式。
	[np]
	[endif]
	
[character name="ryuichi"]
【龙一】[r]「绫濑，你接下来要去打工吗？」
[np]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00610_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「是啊。听说前辈得了夏季感冒，我要去顶班」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊，加油哦」
[np]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_supica_00610_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「嗯，谢谢」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]我朝走出玄关的绫濑挥手道别，收拾好餐具后目送她离开。
[np]

[r]绫濑出门打工后，留在客厅里的只剩……
[np]

[satomi storage="C_sifuku_M CD_10_M"]
[playcv storage="satomi_supica_00610_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_10_FACE_sifuku"]
【圣水】[r]「啊～……热死了……热得受不了啦～……」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]只有圣水以邋遢的姿势躺在沙发上，独占着电扇的风。
[np]

[r]真珠星好像还在午睡，这段时间该怎么有效利用呢……
[np]

[character name="ryuichi"]
【龙一】[r]「……差不多该停止假装思考这种问题来逃避现实了吧……」
[np]

[r]眼下正值暑假。既然如此，我们学生也背负着堪称无法逃避的宿命——作业。
[np]

[r]和真珠星成为恋人后迎来的暑假太过美好，让我直到今天都在刻意逃避现实……
[np]

[character name="ryuichi"]
【龙一】[r]「好……我要开始写了！现在就要动笔！」
[np]

[satomi storage="C_sifuku_M CD_7_M"]
[playcv storage="satomi_supica_00610_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「呜哇……有个浑身冒热气的家伙……」
[np]
[FACEHIDE]
[char_erase name="satomi"]

;//背景をすぴかの部屋bg04_01に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[char_erase name="satomi"]
[r]轻手轻脚收拾着课本、笔袋和笔记本，生怕吵醒睡觉的真珠星……
[np]

;//背景を寮のリビングbg02_01に

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「那么……！」
[np]

[r]将暑假作业发下来的习题集在桌上摊开——
[np]

[supica storage="B2_sifuku_M AB_8_M"]
[playcv storage="supica_supica_00610_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇哦……原来是你啊真珠星……」
[np]

[r]正当我准备开始时，真珠星揉着惺忪睡眼向我搭话。
[np]

[character name="ryuichi"]
【龙一】[r]「难道是我吵醒你了……？抱歉」
[np]

[supica storage="C3_sifuku_M CD_3_M"]
[playcv storage="supica_supica_00610_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「没有……真珠星是自己醒的……龙一没有错……」
[np]
[FACEHIDE]

[r]真珠星步履蹒跚地挨近我身边。
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00610_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……作业？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊，拖到今天都没动笔……不过再不做就来不及了」
[np]

[supica storage="B3_sifuku_L AB_2_L"]
[playcv storage="supica_supica_00610_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……那真珠星也要写……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，那就好。两个人一起总比一个人更有干劲嘛」
[np]

[supica storage="B3_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00610_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……去拿作业本……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]留下这句话后，真珠星踏上楼梯……
[np]

[r]几分钟后回来的真珠星双手空空如也。
[np]

[supica storage="C1_sifuku_L CD_6_L"]

[character name="ryuichi"]
【龙一】[r]「咦，真珠星……？」
[np]

[supica storage="C1_sifuku_L CD_10_L"]
[playcv storage="supica_supica_00610_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_sifuku"]
【真珠星】[r]「……龙一……紧急事态」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了……？」
[np]

[supica storage="B3_sifuku_L AB_5_L"]
[playcv storage="supica_supica_00610_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
【真珠星】[r]「……暑假作业……忘在教室了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈，真的假的……！」
[np]

[supica storage="B3_sifuku_L AB_10_L"]
[playcv storage="supica_supica_00610_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_sifuku"]
【真珠星】[r]「……真的……」
[np]
[FACEHIDE]

[r]居然直到八月才意识到这件事……不过话说回来，我也是今天才第一次想要动笔就是了……。
[np]

[character name="ryuichi"]
【龙一】[r]「那必须得去拿回来啊……对吧」
[np]

[supica storage="D_sifuku_L CD_3_L"]
[playcv storage="supica_supica_00610_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……能陪我一起去吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当然。啊不过出发前，还是先换好制服比较好吧」
[np]

[supica storage="B4_sifuku_L AB_2_L"]
[playcv storage="supica_supica_00610_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……龙一更喜欢制服吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是那个意思……毕竟是要去学校，还是穿正式点好」
[np]

[supica storage="C1_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00610_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……知道了……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]之前真珠星去屋顶看星星的时候，基本都是穿便服，所以现在才提出来确实有点晚……
[np]

[r]不过这次还要进教室，穿得体面点总没错。
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

;//JUMP:supica_00620
[jump storage="scenario/supica/supica_00620.ks"]
