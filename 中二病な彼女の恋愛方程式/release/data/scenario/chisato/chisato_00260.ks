[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00260.txt]
;//chisato_00260
;//BG:bg01_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/13(月)
;//CH:竜一,sifuku
;//CH:千聖,sifuku


[r]之后我在洗完澡时看到绫濑发来的消息……
[np]

[r]按照信息上写的来到宿舍外——
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_chisato_00260_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]

[r]与等候多时的绫濑目光交汇了。
[np]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_chisato_00260_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「抱歉呢。明明你刚洗完澡还约你出来……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没事，不用在意」
[np]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_chisato_00260_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「虽然也不是绝对不能在宿舍里说的事……不过既然要讲，那个……总觉得还是正式点的场合比较好」
[np]
[FACEHIDE]

[r]正式场合……？
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_chisato_00260_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「……要不要散散步？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，好啊」
[np]

[r]跟着绫濑的引导，我们沐浴着夜风并肩而行。
[np]

[char_erase name="chisato"]


[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]


;//背景を川原bg14_03に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_chisato_00260_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「……这个时间应该没人了吧」
[np]
[FACEHIDE]

[r]我们一边聊着无关紧要的闲话……最后走到了夜晚的河滩边。
[np]

[r]在漆黑水面上摇曳的月光虽然带着难以言喻的神秘氛围……
[np]

[r]但持续传入耳中的潺潺水声，与白昼时分并无二致。
[np]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_chisato_00260_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「……总觉得太过直白，连自己都忍不住要笑出来了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

;//通常ＣＧ０２挿入
[HIDESYSTEMMENU]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[CG cgno=67 sabunno=01]
[SYSTEMMENU]


[r]突然驻足回望的绫濑转身面向我。
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_007.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「神原君你……其实已经察觉到了吧？」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]……这句话又让……我心中的期待感愈发膨胀。
[np]

[r]昨夜被绫濑叫到房间时……我也曾抱着些许这样的期待，结果却独自失望而归。
[np]

[r]但是……今天的氛围和事态发展……再加上刚才那句话……
[np]

[r]就算吸取了昨天的教训，这世上又有几个男人能克制住不产生期待呢。
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_008.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「我啊……昨天找神原君商量的时候……」
[np]
[FACEHIDE]

[CG cgno=67 sabunno=02]
;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_009.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「果然……我确信了，神原君你真的是个很好的人。」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[CG cgno=67 sabunno=01]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_010.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「……对自己喜欢的事物，还有这份喜欢的心情，都不需要感到羞耻……」
[np]
[FACEHIDE]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_011.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「要彻底保持自信、挺起胸膛去做就好……你以前也这么对我说过，还记得吗？」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「……好像说过……又好像没说过」
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_012.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「呵呵……不过昨天听你重新说了一遍……那时我就同时下定了两个决心」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]绫濑清澈的眼眸紧紧抓住我的视线。
[np]

[r]仿佛被那份认真吸引一般，我也定定凝视着绫濑……
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_013.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「要向所有人坦白中二病这件事的决心……」
[np]
[FACEHIDE]

[CG cgno=67 sabunno=02]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_014.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「……还有要向神原君传达这份心意的……告白决心」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「啊——」
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_015.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「神原君……我、我喜欢你」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]比那双眼眸更加直率的，是绫濑的话语深深刺入心扉。
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_016.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「所以、那个……请、请让我成为你的恋人吧！」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]面对突如其来的变故，我的大脑一片空白。
[np]

[r]即便如此混乱的状态下，仍有一件事是我此刻立刻就想告诉绫濑的——
[np]

[character name="ryuichi"]
【龙一】[r]「我也……我也喜欢绫濑！！」
[np]

[CG cgno=67 sabunno=03]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_017.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「哎……」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「我也、我也一直喜欢着绫濑……想要和你交往……！！」
[np]

[r]这回应与机智的措辞相差甚远。
[np]

[r]然而绫濑……那紧绷的表情忽然柔和下来——
[np]

[CG cgno=67 sabunno=07]


;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_018.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「……太好了……」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]她轻声呢喃着，含羞带笑的眼眸里泛起了泪光。
[np]

[character name="ryuichi"]
【龙一】[r]「绫濑……」
[np]

[CG cgno=67 sabunno=06]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_019.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「……啊……现在突然感觉好轻松……这是怎么回事呢……」
[np]
[FACEHIDE]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_020.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「一安心眼泪就流出来了……欸嘿嘿，对不起哦……？」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「别……不用道歉的……」
[np]
[CG cgno=67 sabunno=04]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_021.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「可是……明明很开心……能被神原答应交往……应该要开心的……」
[np]
[FACEHIDE]

[CG cgno=67 sabunno=06]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_022.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「眼泪却……这是喜极而泣吧？欸嘿嘿，好奇怪呢……」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]绫濑一边自嘲地苦笑着，反复擦拭着在眼眶里打转的泪水。
[np]

[CG cgno=67 sabunno=03]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_023.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]看到这一幕的我，连自己都没意识到就伸出手指，轻轻拭去了她眼角的泪花。
[np]

[CG cgno=67 sabunno=04]

[character name="ryuichi"]
【龙一】[r]「……谢谢你，绫濑」
[np]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_024.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「哎……？」
[np]
[FACEHIDE]

[CG cgno=67 sabunno=07]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「我也……好开心……开心到手足无措……心脏到现在还扑通扑通跳个不停……」
[np]

[character name="ryuichi"]
【龙一】[r]「不过现在……我只想……看到我最喜欢的绫濑……看到千圣的笑容」
[np]

[CG cgno=67 sabunno=06]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_025.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[CG cgno=67 sabunno=08]

;[char_erase name="chisato"]
[r]第一次用名字称呼我……但脱口而出的音节竟如此自然地萦绕在耳边，连自己都感到惊讶。
[np]

;[CG cgno=67 sabunno=05]

;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00260_026.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE"]
【千圣】[r]「……谢谢你，龙一啊……」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]而千圣也第一次用名字称呼我——
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=66]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[HIDESYSTEMMENU]
[CGHIDE]
[SYSTEMMENU]


[character name="ryuichi"]
【龙一】[r]「千圣……」
[np]

[chisato storage="D_sifuku_L CD_8_L"]
[playcv storage="chisato_chisato_00260_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「呀……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_L CD_9_L"]


[r]等我意识到时，双臂已经将千圣紧紧搂在怀里。
[np]

[chisato storage="D_sifuku_L CD_9_L"]
[playcv storage="chisato_chisato_00260_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「……呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我喜欢你，千圣……真的好喜欢你……」
[np]

[chisato storage="B_sifuku_L AB_3_L"]
[playcv storage="chisato_chisato_00260_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「……嗯……」
[np]
[FACEHIDE]

[r]双手依然环抱着她那柔软的身躯……我再一次将满心的情意诉诸于口。
[np]

[r]此刻满溢心头的，唯有对千圣难以抑制的疼惜之情……
[np]

[chisato storage="B_sifuku_L AB_3_L"]
[playcv storage="chisato_chisato_00260_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「唔…」
[np]
[FACEHIDE]

[r]过了许久，情绪终于平复下来……
[np]

[r]当我意识到千圣的脸庞近在咫尺时……此刻除了心跳声，周遭的一切都仿佛消失殆尽。
[np]

[chisato storage="B_sifuku_L AB_12_L"]
[playcv storage="chisato_chisato_00260_031.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_12_FACE_sifuku"]
【千圣】[r]「…龙一…」
[np]
[FACEHIDE]

[r]千圣阖上眼帘……这应该…就是…那个意思了吧……
[np]

[r]我将千圣的身体搂得更紧，向着那微微仰起的双唇——
[np]

[chisato storage="B_sifuku_L AB_12_L"]
[playcv storage="chisato_chisato_00260_032.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_12_FACE_sifuku"]
【千圣】[r]「…啾…」
[np]
[FACEHIDE]

[r]轻轻触碰后，缓缓拉开了些距离。
[np]

[chisato storage="D_sifuku_L CD_9_L"]
[playcv storage="chisato_chisato_00260_033.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「…嗯…就这样给你了……」
[np]
[FACEHIDE]

[r]千圣羞赧地说着——
[np]

[chisato storage="D_sifuku_L CD_3_L"]
[playcv storage="chisato_chisato_00260_034.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「我的初吻…给了龙一啊」
[np]
[FACEHIDE]

[r]手指轻触还残留着温度的双唇，带着羞涩而欣喜的笑意。
[np]

[r]……总感觉，还是难以置信。这么可爱的女孩子……就在此刻，这一瞬间……
[np]

[r]竟然成了恋人关系了。
[np]

[char_erase name="chisato"]


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


;//JUMP:chisato_00270
[jump storage="scenario/chisato/chisato_00270.ks"]

