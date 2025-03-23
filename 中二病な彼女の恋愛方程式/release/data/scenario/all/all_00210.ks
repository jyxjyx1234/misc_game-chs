[SCENESTART file=all_00210.ks]
;//all_00210
;//BG:空_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
;//[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:6/20(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[r]……接下来的两天里，我将警戒等级提升到极限，努力彻底避免幸运色狼事件的发生。
[np]

[r]在宿舍内，基本上每次开门前都必须严格遵守敲门和出声提醒的规定。
[np]

[r]只要注意这一点，至少像之前那样的意外事件就不再发生了。
[np]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[r]而今天已是周六……明天终究要迎来审判之日了。
[np]

[r]究竟，我的命运……会变成怎样呢！
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_all_00210_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「怎么了龙一……你的表情变得超严肃哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没什么……有点事」
[np]

;//ボイス抜けによりカット
;//[aoi storage="C_tokushu_M CD_1_M"]
;//[playcv storage="aoi_all_00210_002.ogg" name="aoi"]
;//[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
;//【葵】[r]「まさか、機関の監視者に寮の場所を突き止め――」
;//[np]
;//[FACEHIDE]

;//[character name="ryuichi"]
;//【竜一】[r]「違う」
;//[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00210_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「神原君，晚饭差不多快做好了，能去叫一下澪音前辈吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，知道了」
[np]

[char_erase name="chisato aoi"]

[r]起身离席，走上二楼站在门前。
[np]

;//\SEノック音
[wait time="500"]
[playse buf=5  storage="sound/00720.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「澪音前辈？」
[np]

[r]在这里当然也不会忘记敲门。
[np]

;//ドア越し
[playcv storage="mion_all_00210_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「哎呀，龙一君？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯。现在可以进来吗？」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;//ドア越し
[playcv storage="mion_all_00210_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「稍等一下……嗯，可以了」
[np]
[FACEHIDE]

[fadeoutbgm time="1000"]

[r]确认回应后缓缓推开门扉。
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

;//ＣＧ挿入
[CG cgno="51" sabunno="01"]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「前辈，晚饭差不多快准——」
[np]

[r]…………嗯？
[np]

[CG cgno="51" sabunno="02"]

[playcv storage="mion_all_00210_003.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呀……真是的，龙一君好色……♪」
[np]

[r]等等……我确实敲门了吧？也得到允许了吧？
[np]

[r]确认之后才进来的……为什么……为什么——
[np]

[character name="ryuichi"]
【龙一】[r]「为什么只穿着内衣啊啊啊啊啊啊啊啊啊啊啊！！！？？？」
[np]

[CG cgno="51" sabunno="01"]

[playcv storage="mion_all_00210_004.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯～虽然反应老套但符合预期。７５分」
[np]

[r]好耶，分数还挺高……高你个头啊！
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个……对、对不起——」
[np]

[playcv storage="mion_all_00210_005.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「等一下」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[r]正想转身逃离房间，却被啪的一声喝止了。
[np]

[playcv storage="mion_all_00210_006.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「现在要是敢走出房间……我可要尖叫咯？」
[np]

[character name="ryuichi"]
【龙一】[r]「为什么！？」
[np]

[playcv storage="mion_all_00210_007.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「还有，不许移开视线……明白吗？」
[np]

[r]连、连移开视线都不行……那、那我岂不是得一直……
[np]

[r]难、难道要我直勾勾地盯着只穿内衣的澪音学姐看个遍吗！？
[np]

[character name="ryuichi"]
【龙一】[r]「话说回来，我可是好好敲过门了吧……！？」
[np]

[playcv storage="mion_all_00210_008.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯，敲了呀」
[np]

[character name="ryuichi"]
【龙一】[r]「然后你也说了可以进来对吧！？」
[np]

[playcv storage="mion_all_00210_009.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯，我说了呀」
[np]

[character name="ryuichi"]
【龙一】[r]「那、那你为什么这副打扮……」
[np]

[CG cgno="51" sabunno="03"]

[playcv storage="mion_all_00210_010.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呵呵……因为我想看看龙一君的反应嘛」
[np]

[r]澪音学姐意味深长地说着，故意扭动身体。
[np]

[character name="ryuichi"]
【龙一】[r]（呜哇……！）
[np]

[r]从第一次见面时就隐约在意……果然胸超大！
[np]

[r]腰肢又纤细紧致，身材超好……这某种意义上就是魔女啊……！
[np]

[CG cgno="51" sabunno="04"]

[playcv storage="mion_all_00210_011.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「我呢……在一周的试用期里，其实一直默默关注着龙一君……」
[np]

[character name="ryuichi"]
【龙一】[r]「关、关注……我吗……？」
[np]

[playcv storage="mion_all_00210_012.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「对呀。毕竟是伏木庄第一个男生，总觉得很有意思……」
[np]

[playcv storage="mion_all_00210_013.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「不过这两三天突然变得很老实……害我都觉得无聊了」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]她故意用双臂挤了挤胸脯…这、这沟壑…好深的沟壑…！
[np]

[playcv storage="mion_all_00210_014.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「难得有男生误闯进我们这个纯女生的宿舍…」
[np]

[playcv storage="mion_all_00210_015.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「就算发生些有趣的事…也不奇怪吧？」
[np]

[r]说着，澪音学姐将手绕到背后——
[np]

;//ブラ外し差分
[CG cgno="51" sabunno="05"]

[character name="ryuichi"]
【龙一】[r]「啊！？」
[np]

[CG cgno="51" sabunno="07"]

[playcv storage="mion_all_00210_016.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀～掉下来了呢…」
[np]

[r]等…内、内衣！胸！胸都露出来了啊！？
[np]

[playcv storage="mion_all_00210_017.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「啊哈…你的呼吸突然变得好急促呢」
[np]

[character name="ryuichi"]
【龙一】[r]「没、没办法啊…这种情况任谁都…！」
[np]

[r]桃酱那次好歹算是意外走光…
[np]

[r]但、但像这样当面脱给我看的话…！
[np]

[CG cgno="51" sabunno="08"]

[playcv storage="mion_all_00210_018.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呵呵，真是个老实人…倒也不讨厌」
[np]

[playcv storage="mion_all_00210_019.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「你的眼神比刚才更加炯炯有神了……这种男孩子气的反应，真不错呢……」
[np]

[character name="ryuichi"]
【龙一】[r]「谢、谢谢夸奖！」
[np]

[playcv storage="mion_all_00210_020.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「不过要是再继续下去的话……说不定会被你吃掉哦，呵呵……」
[np]

[char_erase name="mion"]
[r]换作是我，要是有机会也会忍不住想……！如饥肠辘辘的鬣狗般，恨不得扑上去撕咬眼前的猎物……。
[np]

[r]但是！
[np]

[r]这绝对是陷阱，绝对是陷阱……！要是现在扑上去的话，我肯定……我肯定会被赶出宿舍的……！
[np]

[playcv storage="mion_all_00210_021.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀……？龙一君，难道说……」
[np]

[character name="ryuichi"]
【龙一】[r]「！！」
[np]

[r]澪、澪音学姐的视线正往我的胯下——
[np]

;//\SEノック
;//ドア越し
[wait time="500"]
[playse buf=5  storage="sound/00720.ogg"]
[wait time="1000"]

[playcv storage="chisato_all_00210_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「喂，神原同学？你在里面吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈啊啊啊！？在、在的！？」
[np]

[r]为、为什么绫濑会来！？对、对了，都怪我拖得太久了……！
[np]

;//ドア越し
[playcv storage="chisato_all_00210_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「你发出什么怪声呢……我能进来吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜啊啊啊！！等、等等、等一下！我现在就过去！马上过去！」
[np]

;//ドア越し
[playcv storage="chisato_all_00210_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「澪、澪音学姐！晚饭好像做好了，我们走吧！快！」
[np]

[CG cgno="51" sabunno="06"]

[playcv storage="mion_all_00210_022.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀，真遗憾……接下来明明会更有趣呢」
[np]

[r]虽说让我见识了好东西，但我这心脏可受不了啊！！
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=50]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//時間経過
;//背景を寮のリビングbg02_03
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[CGHIDE]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[r]然后……
[np]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_all_00210_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「那我开动啦」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00210_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「我开动了！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[r]在宿舍中央的餐桌旁，众人齐聚享用晚餐。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]然而我仍无法忘却刚才的事件……完全尝不出饭菜的味道。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00210_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「哦，这沙拉真好吃。调味汁是不是和平时不一样呢？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00210_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「啊，那是我做的那个……」
[np]
[FACEHIDE]

[r]那衣服下包裹的巨乳……刚才可是亲眼见识到了啊……。
[np]

[char_erase name="momo mion"]

[mion storage="B_sifuku_L AB1_3_L"]
[playcv storage="mion_all_00210_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「龙一君……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！？啊！没、没有……！」
[np]

[char_erase name="mion"]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_all_00210_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「……龙一？」
[np]
[FACEHIDE]

[r]对于我这明显不自然的回答，大家都露出了疑惑的表情。
[np]

[char_erase name="aoi"]

[mion storage="C_sifuku_L CD1_10_L"]
[playcv storage="mion_all_00210_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「……呵呵呵」
[np]
[FACEHIDE]

[r]看到这一幕，澪音学姐开心地微笑着。可恶，她明明知道还故意问……。
[np]

[char_erase name="mion"]

[r]不过，那是在双方同意下发生的意外……既然允许我看，应该不会被扣分吧。
[np]

[r]因为被告知不要移开视线，我可是牢牢印在脑海中了……。
[np]

[r]今晚我可要毫不客气地拿来当配菜了啊啊啊啊啊！！！
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

;;//JUMP:all_00220
[jump storage="scenario/all/all_00220.ks"]
