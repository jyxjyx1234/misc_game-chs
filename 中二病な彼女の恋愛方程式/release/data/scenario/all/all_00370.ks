[SCENESTART file=all_00370.ks]
;//all_00370
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:7/1(水)
;//CH:竜一,seifuku
;//CH:もも,sifuku

[character name="ryuichi"]
【龙一】[r]「哼哼～嗯……」
[np]

[r]走出学院，独自走在通往宿舍的上学路上。
[np]

[r]让人联想到梅雨结束与夏日来临的晴朗天气，让我不禁哼起了小曲。
[np]

[r]不过……葵说的那个「黑暗使者」究竟到底是——
[np]

;//暗転
[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]刚才额头上突然感受到一滴水珠滴落的触感。
[np]

[r]就在我抬头望向天空的瞬间——
[np]

;//\SE激しい雨の音
[playse storage="sound/50180.ogg"]
[wait time="700"]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[r]下雨了！？而且还是突然暴雨！？
[np]

[r]搞什么啊，刚才还晴朗得让人哼歌呢，怎么突然就……！
[np]

[r]总、总之得赶紧跑回宿舍！！
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

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哈、哈……哈、哈……！」
[np]

[r]遭遇倾盆暴雨的袭击，我气喘吁吁地冲进宿舍。
[np]

[r]虽然全力冲刺回来，但全身早已湿透……可恶。
[np]

[r]这样下去会感冒的……先去洗漱间拿毛巾……可能的话顺便冲个澡——
[np]

;//ＣＧ挿入
;//\SEドアを開ける音
[playse storage="sound/00320.ogg"]
[wait time="1000"]

[CG cgno=36 sabunno=02]

[playcv storage="momo_all_00370_001.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[r]糟了……！我这次又忘记敲门了！！
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[CG cgno=36 sabunno=01]

[playcv storage="momo_all_00370_002.ogg" name="momo"]
[character name="momo"]
【桃】[r]「咿……？啊、啊……神、神原前辈……？」
[np]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[r]而且，对象又是桃酱吗！一次不够，居然两次都犯同样的错误——
[np]

[CG cgno=36 sabunno=04]

[playcv storage="momo_all_00370_003.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊、啊啊……啊哇哇哇哇哇哇——」
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起！！！！！」
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]吸取上次的教训，这次立刻关上了门。
[np]

[r]啊啊，又搞砸了……！
[np]

[r]最近已经很少触发幸运色狼事件了……或许正因为如此才放松了警惕。
[np]

[r]结果又忘记敲门就进了洗漱间……
[np]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]洗漱间的门缓缓打开，换好衣服的桃酱从里面走了出来。
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起桃酱！！」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00370_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「呀！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真的非常抱歉……！我忘记敲门了……」
[np]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00370_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「啊……那、那个……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以又让你遇到这种……实在对不起！！！」
[np]

[r]诚心诚意低头向桃酱道歉。
[np]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_all_00370_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「那、那个……没、没关系的，请不要这样郑重道歉……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可是……！」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00370_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「没、没事的……！我、我其实也不是很在意那种事……或者说……也、也是没办法的事……！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00370_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「神原前辈也是被雨淋到了对吧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……？嗯……」
[np]

[momo storage="A_sifuku_M AB_6_M"]
[playcv storage="momo_all_00370_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「其实我也是……明明差一点就能躲过突然下起来的雨……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_4_M"]
[playcv storage="momo_all_00370_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「因为不想感冒就赶紧冲了热水澡……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00370_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「刚出来的时候……前、前辈就……那个……所以……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00370_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「被突如其来的雨淋得浑身湿透想冲澡是很自然的……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_all_00370_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「所、所以前辈忘记敲门也情有可原……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱……」
[np]

[r]虽然有些慌张，但桃酱似乎试图理解我……
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_all_00370_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「所、所以……不用这么郑重道歉……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_all_00370_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「被这么诚恳地道歉……我都不知道该怎么回应了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊，抱歉……」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、我又道歉了……」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_all_00370_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「呵呵……啊、洗澡的话没关系哦……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，谢谢桃酱」
[np]

[char_erase name="momo"]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]向桃酱道谢后，走进了洗漱间。
[np]

[r]……或许……应该感谢这场阵雨吧。
[np]

;//背景を寮のリビングbg02_01に
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
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//もも視点
[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_all_00370_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「……」
[np]
[FACEHIDE]

[r]嗯……果然，是我的错觉啊。
[np]

[r]第一次被看到裸体的时候，实在太难为情了……就单方面认定前辈是坏人……
[np]

[r]但是完全不是那样。神原前辈他……
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_all_00370_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「……呵呵♪」
[np]
[FACEHIDE]

[char_erase name="momo"]




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

;シーンジャンプのキャラルート突入噛ませ用
[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

[endif]

;//この時点で、ももの評価が高い場合
;//JUMP:momo_00010
[if exp="f.love_momo>=2"]
	[SetSJumpFlg storage="scenario/all/all_00370.ks" target="*SCJump" Runflg="1"]
	[SetSJumpTarget storage="" target="" Runflg="1"]

	[jump storage="scenario/momo/momo_00010.ks"]
[endif]
[SetSJumpFlg storage="scenario/all/all_00370.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00390.ks" target="*SCJump" Runflg="0"]



*selectB
[jump storage="scenario/all/all_00380.ks"]
[s]