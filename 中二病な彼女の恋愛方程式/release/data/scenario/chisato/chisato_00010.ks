[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00010.txt]
;//chisato_00010
;//BG:bg01_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/5(日)
;//CH:竜一,sifuku
;//CH:もも,sifuku
;//CH:千聖,tokushu
;//CH:聖水,sifuku

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]


[character name="ryuichi"]
【龙一】[r]「今天也是极其辛苦的半日……」
[np]



[r]上午的兼职结束后，我一边感受着空腹一边抵达了宿舍前。
[np]

[r]今天是周日，客流量比起平日要多上数倍……
[np]

[r]被询问商品位置的次数自然也随之增加，但才入职十天左右的我应对起来依然有些手足无措……
[np]

[r]结果直到下班都没能完成多少商品陈列的工作。
[np]

[character name="ryuichi"]
【龙一】[r]「不过嘛…这也算是积累经验…对吧」
[np]

[r]当顾客询问『○○在哪里？』时，如果因为不知道位置而无法回答，就要把这种失败化为成长的食粮……
[np]

[r]这样下次再被问同样的问题时，就能充满自信地回应了。
[np]

[r]人大概就是通过这种方式成长起来的吧……
[np]

[character name="ryuichi"]
【龙一】[r]「……唉，我干嘛突然感慨起人生啊」
[np]

[r]我现在饿得前胸贴后背。还是赶紧……
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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[playse buf=5 storage="sound/00350.ogg"]

[character name="ryuichi"]
【龙一】[r]「我回来啦——」
[np]

[r]打开门脱掉鞋子，走进客厅。
[np]

[r]哎……没人在吗……嗯？
[np]

[playcv storage="satomi_chisato_00010_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「咕啊……呼……」
[np]
[FACEHIDE]

[r]……虽然有一个活物，但这种状态到底该不该算数呢。
[np]

[playcv storage="satomi_chisato_00010_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「嗯……哈啊……呼噜……」
[np]
[FACEHIDE]

[r]衣衫不整躺在沙发上的圣水……而下方散落着好几个空啤酒罐。
[np]

[r]大白天就喝得烂醉如泥……真是幸福得让人火大啊。
[np]

[playcv storage="satomi_chisato_00010_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「嗯……嘿嘿……那就恭敬不如从命……再来一杯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在梦里还要喝啊……！」
[np]

[r]对着梦话吐槽后，我开始翻找厨房。
[np]

[r]哦，还有早上剩下的味噌汤。饭锅里好像还有剩饭……
[np]

[r]接下来只要从冰箱里随便拿点配菜——
[np]

;//ドア越し
;[chisato storage="A_tokushu_M A_1_M"]
[quake time="500"]
[playcv storage="chisato_chisato_00010_001.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「不要啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「——」
[np]

[r]刚才的……是尖叫声？是绫濑的声音吧？
[np]

[r]发生什么事了？不然她不会发出那种叫声啊……
[np]

[playse buf=5 storage="sound/00280.ogg"]

[r]我怀着紧张感冲出厨房，快步跑上二楼。
[np]

[stopse buf=5]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[r]然后，逐渐靠近绫濑的房间门口——
[np]

[playse buf=5 storage="sound/00320.ogg"]

[quake time="500"]
[chisato storage="C_tokushu_M CD2_7_M"]
[playcv storage="chisato_chisato_00010_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_tokushu"]
【千圣】[r]「出出出、出来了啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哦哦哦哦哦哦哦哦哦！！？？」
[np]

[r]被边喊「出来了」边冲出来的绫濑吓到，我差点一屁股坐倒在地………………咦？
[np]

[chisato storage="B_tokushu_L AB_6_L"]
[playcv storage="chisato_chisato_00010_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「啊、啊！神、神原君！救救我、救救我啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃、呃！怎、怎么了绫濑！？发生什么事了！？」
[np]

[char_quake name=chisato]
[chisato storage="B_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00010_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「房、房间里……！我的房间里！出来了！出来了啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「出出出、出来了…你该不会是说幽灵吧！？」
[np]

[chisato storage="A_tokushu_M AB_5_M"]
[playcv storage="chisato_chisato_00010_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「不不不、不是那种！是有实体的！某种意义上更可怕的那个啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那个……？」
[np]

[chisato storage="D_tokushu_M CD2_7_M"]
[playcv storage="chisato_chisato_00010_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_tokushu"]
【千圣】[r]「蟑、蟑螂……蟑、蟑……！」
[np]
[FACEHIDE]

[r]原来是那个啊……！
[np]

[chisato storage="B_tokushu_M AB_11_M"]
[playcv storage="chisato_chisato_00010_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「黑乎乎的…动作超快…沙沙作响的那个家伙…突然出现在房间里……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「明、明白了，你等着！我这就去收拾它！！」
[np]

[char_erase name="chisato"]

[playse buf=5 storage="sound/00280.ogg"]


[r]我冲下楼梯将客厅的报纸卷成一团再次跑上二楼……
[np]

[stopse buf=5]

;//背景を千聖の部屋bg07_01に

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「放马过来啊啊啊啊啊！！」
[np]

[r]冲进绫濑房间时，那家伙根本不用我找就在地板上到处乱爬。
[np]

[r]好，冷静点…现在要考虑的是对方的速度和耐力……
[np]

[r]还有最关键的攻击部位…这才是重点！
[np]

[r]即便对方此刻破绽百出，若是在地毯或被褥上将其碾碎的话，给绫濑造成的精神冲击将是无法估量的。
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]正因如此…现在…当它僵在木地板上窥探这边动向的此刻，才是最佳时机…！
[np]

;//\SE叩く音、仕留める音。オーバーでも構いません
[playse buf=5 storage="sound/10110.ogg"]
[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「喝啊啊啊！！！」
[np]

[r]…或许是因为太过紧张，连自己都不自觉地发出了奇怪的喊声…
[np]

[character name="ryuichi"]
【龙一】[r]「…胜负已定」
[np]

[r]遭受报纸重击的漆黑害虫翻倒在地，细长的肢节正微微抽搐着。
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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[playse buf=5 storage="sound/00320.ogg"]

[character name="ryuichi"]
【龙一】[r]「绫濑，已经没事了」
[np]

[char_jump name=chisato]

[chisato storage="C_tokushu_L CD2_5_L"]
[playcv storage="chisato_chisato_00010_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「真、真的吗…？」
[np]
[FACEHIDE]

[r]向泪眼汪汪的绫濑汇报已经彻底解决并处理干净。
[np]

[chisato storage="C_tokushu_L CD2_5_L"]
[playcv storage="chisato_chisato_00010_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「太、太好了啊…神原同学，谢谢你…！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，不用客气」
[np]

[r]……好了。
[np]

[chisato storage="A_tokushu_L AB_5_L"]
[playcv storage="chisato_chisato_00010_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「呜、好可怕……发现它的瞬间，感觉心脏都要停跳了……」
[np]
[FACEHIDE]

[r]就在Ｇ虫骚动告一段落时……新的问题又浮现在我面前。
[np]

[character name="ryuichi"]
【龙一】[r]（话说……绫濑她，自己没注意到吗……？）
[np]

[r]因过度惊吓而瘫坐在地的绫濑，此刻的装扮……
[np]

[r]至少我从未见过……该怎么说呢，像是角色扮演……？一样的服装……
[np]

[r]……突然觉得这可能是最好别去触碰，装作没看见的事情。
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个……我……午饭还没吃……」
[np]

[chisato storage="C_tokushu_M CD2_11_M"]
[playcv storage="chisato_chisato_00010_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_tokushu"]
【千圣】[r]「……啊……」
[np]
[FACEHIDE]

[r]于是我装作什么都没看见的样子，准备退回客厅——
[np]

[char_quake name=chisato]

[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「啊、啊啊……啊、啊啊啊……！！！」
[np]
[FACEHIDE]

[r]本来是这么打算的……
[np]

[quake time="500"]

[chisato storage="B_tokushu_L AB_10_L"]
[playcv storage="chisato_chisato_00010_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「给我等一下啊啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘎啊！？」
[np]

[r]呃！脖、脖子……要被勒死了、勒死了！
[np]

[chisato storage="B_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00010_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「神、神原君……？你看到了对吧？绝对看到了对吧！？倒不如说现在还在继续看对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什、什么事啊……？我、我完全，什么都没，真的——」
[np]

;//\SE玄関のドアを開ける音
[playse buf=5 storage="sound/00350.ogg"]

;[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_chisato_00010_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「我回来啦～」
[np]
[FACEHIDE]

[char_jump name=chisato]


[chisato storage="C_tokushu_L CD2_8_L"]
[playcv storage="chisato_chisato_00010_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「！？」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]楼下传来开门声和桃酱的声音……
[np]

[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「快、进来！！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00320.ogg"]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「咕哦哦！？」
[np]

[r]刹那间我被绫濑猛地拽住……所以说脖子！脖子！！
[np]

;//背景を千聖の部屋bg07_01に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]



[character name="ryuichi"]
【龙一】[r]「咳咳、咳……！呕、呜……」
[np]

[r]我再次被带到绫濑的房间。
[np]

[r]绫濑站在瘫坐在地的我面前，像金刚力士般叉腿而立……
[np]

[chisato storage="C_tokushu_M CD2_10_M"]
[playcv storage="chisato_chisato_00010_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「……你看到了……？」
[np]
[FACEHIDE]

[r]她满脸通红却用威压的语气质问道。
[np]

[character name="ryuichi"]
【龙一】[r]「看、看到了……你指什么？」
[np]

[chisato storage="B_tokushu_M AB_9_M"]
[playcv storage="chisato_chisato_00010_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「别、别装傻……就、就是我的……我现在的打扮……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「要说这个的话……现在还在持续看呢」
[np]

[quake time="500"]
[chisato storage="C_tokushu_L CD2_6_L"]
[playcv storage="chisato_chisato_00010_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_tokushu"]
【千圣】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10140.ogg"]

[char_erase name="chisato"]

[r]刹那间绫濑扑到床上……把脸埋在枕头里，手脚乱蹬开始挣扎。
[np]

;[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「明明一直藏着的！本来打算藏到毕业为止的呀啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个，绫濑……？」
[np]

;[chisato storage="D_tokushu_L CD2_7_L"]
[playcv storage="chisato_chisato_00010_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_tokushu"]
【千圣】[r]「居然因为那么卑鄙的……黑暗使徒的陷阱暴露了真身……！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]绫濑又持续挣扎了好一阵子，手脚乱蹬地哀叹着……
[np]

[chisato storage="B_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00010_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「……咳哼……」
[np]
[FACEHIDE]

[r]重新站到我面前的她轻咳一声，将方才的丑态彻底封印进过往。
[np]

[chisato storage="B_tokushu_M AB_4_M"]
[playcv storage="chisato_chisato_00010_023.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_tokushu"]
【千圣】[r]「……那个……就是……」
[np]
[FACEHIDE]

[r]或许是为了与坐着的我平视，她突然正襟危坐……
[np]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00010_024.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「……既、既然都被看到这种程度了……我就全盘托出……」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_9_M"]
[playcv storage="chisato_chisato_00010_025.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「不过话说回来……你愿意……听我说吗……？」
[np]
[FACEHIDE]

[r]绫濑投向我的目光中，交织着困惑与认真。
[np]

[r]于是我也端正坐姿……郑重其事地向绫濑点了点头。
[np]

[chisato storage="B_tokushu_M AB_7_M"]
[playcv storage="chisato_chisato_00010_026.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_7_FACE_tokushu"]
【千圣】[r]「……那个……你、你看啊……我的这身打扮……还有房间的这些布置……应该能明白吧……」
[np]
[FACEHIDE]

[chisato storage="B_tokushu_M AB_5_M"]
[playcv storage="chisato_chisato_00010_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「……其实呢……我、我也是……我也是——」
[np]
[FACEHIDE]

[char_jump name=chisato]

[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「这、这种文化……我超级喜欢！！！」
[np]
[FACEHIDE]

[r]绫濑紧紧攥住双手，神情紧张地向我坦白。
[np]

[r]但可悲的是……我完全没理解她说的『这种』具体是指什么……
[np]

[r]这个……可以问吗……？
[np]

[character name="ryuichi"]
【龙一】[r]「……呃……」
[np]

[chisato storage="B_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00010_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「什、什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「刚才绫濑说的『这种』……到、到底是指哪种？是说御宅族吗？」
[np]

[chisato storage="B_tokushu_M AB_9_M"]
[playcv storage="chisato_chisato_00010_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「呜……不、不是那样……所以……这、这种啦！」
[np]
[FACEHIDE]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]话音刚落，绫濑突然站起身——
[np]

;//通常ＣＧ挿入
[CG cgno=06 sabunno=01]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;[chisato storage="C_tokushu_L CD2_3_L"]
[playcv storage="chisato_chisato_00010_031.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_CD_3_FACE_tokushu"]
【千圣】[r]「为守护世间和平，从天界降临的『第七使者』……」
[np]
;[FACEHIDE]

;//「プリズムエンジェリオン」でお願いします
[CG cgno=06 sabunno=05]

;[chisato storage="C_tokushu_L CD2_2_L"]
[playcv storage="chisato_chisato_00010_032.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_CD_2_FACE_tokushu"]
【千圣】[r]「用璀璨夺目的魅力与魔力，照亮世间黑暗！——光之圣天使——降临！！」
[np]
;[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……角色扮演？」
[np]

[CG cgno=06 sabunno=04]

;[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_033.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「才、才不是啦！是光之圣天使·棱镜安洁莉恩！通称安洁大人……所、所以说……！」
[np]
;[FACEHIDE]

[CG cgno=06 sabunno=03]

;[chisato storage="B_tokushu_L AB_10_L"]
[playcv storage="chisato_chisato_00010_034.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「这、这可是连设定都是我自己想的原创魔法少女啊……！！」
[np]
;[FACEHIDE]

[r]原创？设定？
[np]

[r]也就是说，难道说……
[np]

[character name="ryuichi"]
【龙一】[r]「啊绫濑……你、你原来是中二病！？」
[np]

;[char_jump name=chisato]
[CG cgno=06 sabunno=04]

;[chisato storage="B_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00010_035.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「声音太大了！！」
[np]
;[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对、对不起……！」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]说起来刚才，桃酱是不是已经回来了……
[np]

;//背景表示
;//[HIDESYSTEMMENU]

;//[backlay]
;//[freeimage layer=1 page=back]
;//[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
;//[trans method=crossfade time=1000]
;//[wt]
;//[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//[SYSTEMMENU]

[chisato storage="C_tokushu_L CD2_11_L"]
[playcv storage="chisato_chisato_00010_036.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_tokushu"]
【千圣】[r]「…没错。就像神原君刚才说的……我、我也是……和葵、真珠星她们一样的……一样的病人啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「但是绫濑平时明明很正常啊……这样也算……病人吗？」
[np]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00010_037.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「…至少我自己…清楚自己是个不折不扣的中二病……」
[np]
[FACEHIDE]

[r]绫濑握紧放在膝盖上的双手，垂下了视线。
[np]

[chisato storage="A_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00010_038.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「最开始…只是单纯喜欢动画里那些周边商品的设定…偶尔也会…做些角色扮演……」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_5_M"]
[playcv storage="chisato_chisato_00010_039.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「但渐渐地，仅仅那样已经无法满足我了……开始产生自己就像那部动画的主角一样能使用魔法的妄想……」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00010_040.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「在脑海里构筑各种设定，亲手制作服装……等意识到时，已经完全成为了……！」
[np]
[FACEHIDE]

[r]说到这里暂时中断话语的绫濑……轻轻叹了口气，紧紧咬住嘴唇。
[np]

[chisato storage="B_tokushu_M AB_6_M"]
[playcv storage="chisato_chisato_00010_041.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「……中二病这种……正如字面意思，本该在初二时就毕业的事情……」
[np]
[FACEHIDE]

[chisato storage="D_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00010_042.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「可是我却……到了这个年纪，依然无法戒掉这种事……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……戒不掉的话……就算不戒掉也没关系吧」
[np]

[r]原本一直安静听她诉说的我……因为在意绫濑的发言，试着说出了自己的想法。
[np]

[chisato storage="C_tokushu_M CD2_4_M"]
[playcv storage="chisato_chisato_00010_043.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_tokushu"]
【千圣】[r]「神原君，你因为是局外人才能说出这种话……在旁人看来这只不过是异常者……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「确实，会这么想的人应该有很多……我第一次见到葵她们时也被吓到了……」
[np]

[character name="ryuichi"]
【龙一】[r]「但是……绫濑你是真心喜欢这个的吧？」
[np]

[chisato storage="D_tokushu_L CD2_9_L"]
[playcv storage="chisato_chisato_00010_044.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「……那个……」
[np]
[FACEHIDE]

[r]绫濑此刻的语塞……大概是因为要承认这点实在太过羞耻……吧。
[np]

[character name="ryuichi"]
【龙一】[r]「如果是自己真心喜欢的事情……就该彻底保持自信、挺起胸膛坚持到底不就好了么」
[np]

[chisato storage="A_tokushu_L AB_8_L"]
[playcv storage="chisato_chisato_00010_045.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「呃……」
[np]
[FACEHIDE]

[r]因为……毕竟，只有局外人才能说出这种话……你会这么想的吧
[np]

[chisato storage="A_tokushu_M AB_9_M"]
[playcv storage="chisato_chisato_00010_046.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「……要、要你管……真是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说的也是，抱歉……你就当这只是某个人的个人见解好了」
[np]

[r]话说……差不多该吃午饭了，我也该……
[np]

[chisato storage="B_tokushu_M AB_8_M"]
[playcv storage="chisato_chisato_00010_047.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还有什么事吗？」
[np]

[r]看到我准备离开房间，绫濑也跟着站了起来
[np]

[chisato storage="A_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00010_048.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「刚、刚才说的事情……绝对要向大家保密哦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道，我本来就没打算说」
[np]

[char_jump name=chisato]

[chisato storage="B_tokushu_L AB_10_L"]
[playcv storage="chisato_chisato_00010_049.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「绝、绝对要保密……！只有我们两个人知道的秘密！！」
[np]
[FACEHIDE]

[r]呜……饿到极限，肚子都快叫出声了……
[np]

[r]话虽如此，看到绫濑那拼命的样子，也没法随便敷衍了事。
[np]

[character name="ryuichi"]
【龙一】[r]「知道了，我保证」
[np]

[r]于是我转身面向绫濑……伸出竖起小指的手。
[np]
[char_jump name=chisato]

[chisato storage="B_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00010_050.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「哎……手、手指勾勾……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说到约定的话，应该要这样吧……」
[np]

[chisato storage="C_tokushu_M CD2_10_M"]
[playcv storage="chisato_chisato_00010_051.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「这、这种……太羞耻了，还是算了吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这样啊」
[np]

[r]我尴尬地放下悬在半空的手，转身握住门把手。
[np]

[char_erase name="chisato"]


[r]……没想到，绫濑居然也是那种人……
[np]

[r]话说回来，刚才的说法……连我自己都显得有点中二病了吧……
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


;//JUMP:chisato_00020
[jump storage="scenario/chisato/chisato_00020.ks"]
