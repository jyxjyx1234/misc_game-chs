[SCENESTART file=aoi_00930.ks]
;//aoi_00930
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:9/1(火)
;//CH:竜一,seifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,seifuku
;//CH:聖水,sifuku

;//青空背景
[r]……９月１日，星期二。
[np]

[r]感觉漫长实则短暂的暑假结束了，今天开始迎来新学期。
[np]

[r]理所当然地，作为学生宿舍的伏木庄正为了开学典礼进行早晨准备…
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//「ジャッジメント・サンダーボルト」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00930_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「你这等极恶魔女，我要将你彻底埋葬！！——裁决之雷——哦哦哦哦哦！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]

[r]……早晨的，准备…
[np]

[char_erase name="aoi"]

;//「ゼロ・ディメンション」でお願いします
[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_aoi_00930_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「雕虫小技！！沉入无尽黑暗吧！——零次元——！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60005.ogg"]
[wait time="300"]
[quake time="500"]

[char_erase name="mion"]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00930_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「怎么可能！我的新招式竟然…！？」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_8_M"]
[playcv storage="momo_aoi_00930_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「师傅！请离远些！！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00930_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「唔…！！好险…抱歉了桃！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00930_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「哈…真是的，大清早就这么吵闹…」
[np]
[FACEHIDE]

[r]绫濑边准备早餐边露出苦笑说道。
[np]

[r]于是乎，今天的伏木庄也一如既往地热闹，和平常一样爆发着中二对决。
[np]

[character name="ryuichi"]
【龙一】[r]「这样好吗？放任不管真的没问题吗？」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00930_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「反正今天时间还很充裕……随她们闹会儿不好吗？」
[np]
[FACEHIDE]

[r]确实，这个时间点还不会迟到……那就算了吧。
[np]

[satomi storage="D_sifuku_M CD_6_M"]
[playcv storage="satomi_aoi_00930_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「呜呜……太吵了害人家被吵醒了啦……呕……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00930_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「作为学生宿舍的管理员，开学典礼这天至少该目送我们出门吧？」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_5_M"]
[playcv storage="satomi_aoi_00930_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「可是啊……呕……至少让人家多睡会儿……呜噗……」
[np]
[FACEHIDE]

[r]含着泪每五秒干呕一次的圣水，正是被这场喧闹战斗吵醒的受害者之一。
[np]

[char_erase name="satomi chisato"]

[supica storage="B2_sifuku_M AB_11_M"]
[playcv storage="supica_aoi_00930_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_11_FACE_sifuku"]
【真珠星】[r]「……呼……呼……」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00930_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「喂真珠星，说了不能继续睡了……」
[np]
[FACEHIDE]

[r]另一边，真珠星依旧我行我素地躺在沙发上发出熟睡的鼻息。
[np]

[chisato storage="A_seifuku_M AB_11_M"]
[playcv storage="chisato_aoi_00930_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「快去换校服啊……给我起来——」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_M CD_5_M"]
[playcv storage="supica_aoi_00930_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「……嗯……呼……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]与这般悠闲祥和的清晨景象截然相反的是……
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00930_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「咯咯咯……屋顶死斗之仇……今日定要在此清算……！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00930_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「那正是我要说的……！当日未能彻底断绝你的气息……今日必将其终结！！」
[np]
[FACEHIDE]

[r]这边倒是大清早就迎来高潮了呢。
[np]

[r]正当这么想着时——
[np]

[aoi storage="B_tokushu_M B_1_M"]
[playcv storage="aoi_aoi_00930_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「以吾与汝缔结之血契为令……现身吧！！翼神龙！！」
[np]
[FACEHIDE]

[r]正在摆盘时突然被召唤出来，不禁露出苦笑。
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00930_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「哼……翼神龙？那家伙前日不是在你眼前化作飞灰了么？」
[np]
[FACEHIDE]

[r]啊，说起来前天好像也是以那种方式结束的呢。
[np]

[aoi storage="C_tokushu_M CD_11_M"]
[playcv storage="aoi_aoi_00930_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「呵……你以为那种程度就能让翼神龙毁灭么……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00930_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「你说什么……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00930_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「我与翼神龙缔结的契约，其强度远超你的想象！那是牢不可破的羁绊！」
[np]
[FACEHIDE]

[r]葵充满自信地向澪音前辈断言道。
[np]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00930_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「它无论多少次都会复活……！！现在就来证明给你看！！」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_9_M"]
[playcv storage="momo_aoi_00930_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「呃……！」
[np]
[FACEHIDE]

[r]葵如此明确宣告后，众人的目光逐渐聚焦到我身上……
[np]

[char_erase name="momo mion aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]……既然被如此期待，那也只能硬着头皮上了……！！
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]
[SYSTEMMENU]

;//通常ＣＧ０４挿入
[CG cgno=10 sabunno=01]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「吾乃……借复仇者盟约降临现世之神龙，——翼神龙——！！」
[np]

[playcv storage="momo_aoi_00930_003.ogg" name="momo"]
[character name="momo"]
【桃】[r]「哇啊……！！」
[np]

[playcv storage="mion_aoi_00930_005.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「怎、怎么可能……！？」
[np]

;//微笑ましい、という感じで
[playcv storage="chisato_aoi_00930_006.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「……呵呵」
[np]

[r]以几天前两人共同构思的新姿势……飞身赶赴葵的身边。
[np]

[CG cgno=10 sabunno=02]

[playcv storage="aoi_aoi_00930_009.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「太慢了，翼神龙……莫非是途中绕了远路？」
[np]

[character name="ryuichi"]
【龙一】[r]「抱歉……这次光是恢复身体就耗费了不少时间」
[np]

[playcv storage="aoi_aoi_00930_010.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哼……那就没办法了。但既然来了就得给我干活」
[np]

[character name="ryuichi"]
【龙一】[r]「一如既往是使龙者粗暴的主人呢……」
[np]

[r]葵一边说着半开玩笑的挖苦话，一边紧紧握住了我的手。
[np]

[playcv storage="mion_aoi_00930_006.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「翼神龙……你这家伙，本应在那时确实被埋葬了……」
[np]

[character name="ryuichi"]
【龙一】[r]「哼……凭那种程度的火力就想送本大爷上西天……魔女小姐还真是乐观啊」
[np]

;//「バーニング・レクイエム」でお願いします
[playcv storage="mion_aoi_00930_007.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「可……恶……那就这次一定！——红焰葬送曲——！！」
[np]

;//「ブラックローズ・プロテクション」でお願いします
[playcv storage="momo_aoi_00930_004.ogg" name="momo"]
[character name="momo"]
【桃】[r]「——黑蔷薇防御壁——！！」
[np]

[playse buf=5  storage="sound/60006.ogg"]
[wait time="300"]
[quake time="500"]

[playcv storage="mion_aoi_00930_008.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「唔……！」
[np]

[CG cgno=10 sabunno=01]

;//「ダークプリーステス」でお願いします
[playcv storage="aoi_aoi_00930_011.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「干得漂亮——堕天使圣职者——！！这才像我爱徒……！　」
[np]

[playcv storage="momo_aoi_00930_005.ogg" name="momo"]
[character name="momo"]
【桃】[r]「谢、谢谢师父……！」
[np]

[playcv storage="chisato_aoi_00930_007.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「晚饭做好了哦，差不多该结束了吧」
[np]

[playcv storage="aoi_aoi_00930_012.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「来吧……上吧翼神龙！给他们最后一击！！」
[np]

[character name="ryuichi"]
【龙一】[r]「啊啊！！」
[np]

[r]是的，即便在旁人看来滑稽可笑……这就是伏木庄的日常光景。
[np]

[r]而这对葵来说，才是比任何事物都珍贵……无可替代的时光。
[np]

[playcv storage="aoi_aoi_00930_013.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「在现世徘徊的万千魂魄啊……请将汝之力赐予身缠暗之波动的吾等……」
[np]

[r]所以我发誓，要永远在旁见证这份光景。
[np]

[character name="ryuichi"]
【龙一】[r]「吾将解放地狱之窑，誓愿舍弃一切……」
[np]

[r]有时就像这样，彼此携手同行……
[np]

[CG cgno=10 sabunno=03]

;//永久は「とわ」でお願いします
[playcv storage="aoi_aoi_00930_014.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「让漆黑轮回重复流转，此刻在此完成吾之复仇！沉入黑暗吧！永远灰飞烟灭吧！！」
[np]

[r]与我珍视的葵，永远相伴——
[np]

;//表記は「葵＆竜一」でお願いします
[playcv storage="aoi_aoi_00930_015.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「黑暗龙炎爆啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=9]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="fin_aoi.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[waitclick]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=3000]
[wt]

[wait time="2000"]

[jump storage="title.ks"]