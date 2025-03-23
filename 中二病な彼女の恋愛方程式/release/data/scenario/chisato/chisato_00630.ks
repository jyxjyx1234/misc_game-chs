[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00630.txt]
;//chisato_00630
;//BG:bg02_02
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夕
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,tokushu
;//CH:聖水,sifuku
[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[r]发生那件事当天的晚餐时分。
[np]

[chisato storage="B_tokushu_M AB_3_M"]
[playcv storage="chisato_chisato_00630_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_tokushu"]
【千圣】[r]「那么，我开动了」
[np]
[FACEHIDE]

[char_erase name="chisato"]


;//合わせ
[aoi storage="A_tokushu_S A_1_S" trans=false]
[supica storage="B3_sifuku_S AB_1_S" trans=false]
[momo storage="A_tokushu_S AB_2_S" trans=false]
;[mion storage="C_sifuku_S CD1_2_S" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00630_001.ogg" name="aoi"]
[playcv storage="supica_chisato_00630_001.ogg" name="supica"]
[playcv storage="momo_chisato_00630_001.ogg" name="momo"]
[character name="women"]
;[FACEVIEW storage="aoi_AB_1_FACE"]
【葵＆真珠星＆桃】[r]「我开动了！」
[np]
;[FACEHIDE]

[char_erase name="momo supica aoi"]

;//合わせ
;[supica storage="A_sifuku_M A_1_M"]
;[playcv storage="supica_chisato_00630_001.ogg" name="supica"]
;[character name="supica"]
;[FACEVIEW storage="supica_AB_1_FACE"]
;【すぴか】[r]「いただきます……」
;[np]
;[FACEHIDE]

;//合わせ
;[momo storage="A_tokushu_M A_1_M"]
;[playcv storage="momo_chisato_00630_001.ogg" name="momo"]
;[character name="momo"]
;[FACEVIEW storage="momo_AB_1_FACE"]
;【もも】[r]「いただきます」
;[np]
;[FACEHIDE]

;//合わせ
[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_chisato_00630_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「我开动了」
[np]
[FACEHIDE]

[char_erase name="mion"]


[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_chisato_00630_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「干杯！嗯、嗯、嗯……噗哈——！！」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]在所有人各自将筷子伸向自己喜欢的菜肴时，独自一口气喝完罐装啤酒的圣水……这都已经第二罐了吗！
[np]

[chisato storage="C_tokushu_L CD2_1_L" trans=false]
[aoi storage="D_tokushu_M CD_9_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00630_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「安洁，今天的异文化交流顺利吗？」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_L CD2_4_L"]
[playcv storage="chisato_chisato_00630_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_tokushu"]
【千圣】[r]「今天犯了一个重大失误……」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]


;[momo storage="A_tokushu_M AB_2_M"]
;[playcv storage="momo_chisato_00630_002.ogg" name="momo"]
;[character name="momo"]
;[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
;【もも】[r]「み、ミス……？　なんですか……？」
;[np]
;[FACEHIDE]
;[char_erase name="momo"]


[chisato storage="A_tokushu_M AB_5_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="chisato_chisato_00630_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「把没有特殊能力的普通人误认成敌方组织成员，差点就挑起战斗了……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00630_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「哎呀，这可太危险了……如果真的发动攻击，就会酿成大祸了吧」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]


[momo storage="C_tokushu_M C_3_M" trans=false]
[supica storage="D_sifuku_M CD_1_M" trans=false]
[char_trans]

[playcv storage="momo_chisato_00630_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_tokushu"]
【桃】[r]「那、那样的话……安洁小姐也会和我一样变成堕天者呢」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_chisato_00630_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「被上天遗弃之人……无法获得星辰庇佑，将存在浸染于黑暗之中……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[character name="ryuichi"]
【龙一】[r]「………………」
[np]

[r]虽然早该明白…但千圣解放自我后，这座伏木庄除了我和圣水小姐，所有人都患上了中二病。
[np]

[chisato storage="D_tokushu_L CD2_2_L" trans=false]
[mion storage="D_sifuku_M CD1_3_M" trans=false]
[char_trans]

[playcv storage="mion_chisato_00630_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「这道菜的风味和平时不同…是用我喜欢的蝙蝠翅膀熬的高汤吗？」
[np]
[FACEHIDE]

[chisato storage="D_tokushu_L CD2_2_L"]
[playcv storage="chisato_chisato_00630_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_tokushu"]
【千圣】[r]「我调配了火蜥蜴之泪和利维坦之泪。没想到天界的料理竟合你胃口…」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[r]…若是一对一对话，我还能勉强配合…但当着大家的面实在应付不来！
[np]

[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_chisato_00630_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「这个味道令人怀念…让我想起还在天界时的日子…」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]话说回来，桃酱倒是也悄悄换上了那套衣服呢……
[np]

[character name="ryuichi"]
【龙一】[r]「…圣水小姐，聊点普通话题吧？」
[np]

[satomi storage="B_sifuku_M AB_8_M"]
[playcv storage="satomi_chisato_00630_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_8_FACE_sifuku"]
【圣水】[r]「聊～天？好呀！」
[np]
[FACEHIDE]

[r]等等，这人到底什么时候喝了多少罐…
[np]

[satomi storage="B_sifuku_L AB_2_L"]
[playcv storage="satomi_chisato_00630_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「那从我开始提问！龙一君平时每周自慰几次呀～？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「吃饭时不适合闲聊！！到此为止吧！！」
[np]

[r]我竟然想和这种人排解寂寞，真是太蠢了！
[np]

;//「ね、千聖の～」から小声に
[satomi storage="D_sifuku_L CD_3_L"]
[playcv storage="satomi_chisato_00630_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「不过现在有千圣在应该不需要了吧…话说千圣的胸啊什么的，早就被揉够了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别、别靠过来！酒气熏天…！」
[np]

[satomi storage="B_sifuku_L AB_8_L"]
[playcv storage="satomi_chisato_00630_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_8_FACE_sifuku"]
【圣水】[r]「我亲眼看过好几次了…千圣的胸部啊，是那种挺翘上翘，形状又漂亮的那种呢～」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_L CD_6_L"]
[playcv storage="satomi_chisato_00630_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「相比之下我都成阿姨了？最近总觉得有点下垂呢…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊…」
[np]

[r]被她的话语所诱，视线不由自主地瞟向若隐若现的乳沟。
[np]

[r]不过长这么大…支撑起来确实不容易吧。
[np]

[satomi storage="B_sifuku_L AB_10_L"]
[playcv storage="satomi_chisato_00630_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「快看这个嘛…你觉得怎么样…？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！！？」
[np]

[r]圣水小姐用手指勾住领口，突然把乳沟完全暴露出来…！？
[np]

[character name="ryuichi"]
【龙一】[r]「住手…！都说了不行啊圣水小姐！为什么要问我这种事啊！？」
[np]

[satomi storage="A_sifuku_L AB_6_L"]
[playcv storage="satomi_chisato_00630_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_6_FACE_sifuku"]
【圣水】[r]「哎～？因为龙一君每天都看着千圣的胸对吧～？所以人家才想让你比较下看看下垂了多少嘛～」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]不、不行啊这个醉鬼……！思维逻辑已经完全混乱了！
[np]

[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00630_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「等、等一下你们在干什么啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不是……这个……」
[np]

[char_erase name="chisato"]


[satomi storage="C_sifuku_M CD_9_M"]
[playcv storage="satomi_chisato_00630_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_9_FACE_sifuku"]
【圣水】[r]「龙一君他啊、看了人家的胸——」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_7_M"]

[character name="ryuichi"]
【龙一】[r]「胸胸哇啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[char_erase name="satomi"]

[momo storage="A_tokushu_M AB_8_M"]
[playcv storage="momo_chisato_00630_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「呀啊啊啊！！？」
[np]
[FACEHIDE]

[char_erase name="momo"]
[r]突然用曾经流行过的搞笑艺人梗放声大喊，彻底掩盖了圣水的话语。
[np]

[satomi storage="A_sifuku_L AB_10_L"]
[playcv storage="satomi_chisato_00630_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「啊、是儿岛利夫啊！好怀念～」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[character name="ryuichi"]
【龙一】[r]「我、我超喜欢那个段子的！哈哈哈哈！！」
[np]

[r]好，虽然很生硬但应该蒙混过去了……！
[np]

;//\SE席を立つ音
[playse buf=5 storage="sound/30060.ogg"]
[supica storage="B4_sifuku_L AB_10_L"]
[playcv storage="supica_chisato_00630_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]擦拭额头上渗出的冷汗时……忽然，真珠星从座位上站了起来。
[np]

[momo storage="B_tokushu_M AB_1_M"]
[playcv storage="momo_chisato_00630_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_tokushu"]
【桃】[r]「真珠星酱，怎么了……？」
[np]
[FACEHIDE]

[supica storage="C2_sifuku_L CD_4_L"]
[playcv storage="supica_chisato_00630_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……要来了……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]


[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_chisato_00630_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[supica storage="D_sifuku_L CD_10_L"]
[playcv storage="supica_chisato_00630_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_sifuku"]
【真珠星】[r]「……比预计的……稍微早了一些……必须调整计划……」
[np]
[FACEHIDE]

[r]怎、怎么回事……？她一边凝视着窗外，一边说着让人摸不着头脑的话……
[np]

[supica storage="B2_sifuku_L AB_4_L"]
[playcv storage="supica_chisato_00630_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……所有人……尽快用完餐……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_chisato_00630_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「用餐……？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[supica storage="B4_sifuku_M AB_2_M"]
[playcv storage="supica_chisato_00630_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……今晚……有东西想让你们看……」
[np]
[FACEHIDE]

[char_erase name="supica"]


[chisato storage="C_tokushu_M CD2_3_M"]
[playcv storage="chisato_chisato_00630_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_tokushu"]
【千圣】[r]「想让我们看的东西……？」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]真珠星没有回答那究竟是什么，平静地回到座位，若无其事地开始用餐。
[np]

[r]虽然完全搞不明白状况……总之快点吃完就行了吧？
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




;//JUMP:chisato_00640
[jump storage="scenario/chisato/chisato_00640.ks"]
