[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00280.txt]
;//chisato_00280
;//BG:bg02_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[mion storage="A_seifuku_M AB1_1_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="mion_chisato_00280_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「千圣，能帮我拿下调味汁吗？」
[np]
[FACEHIDE]

[playcv storage="chisato_chisato_00280_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「好的，请用」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]
[r]第二天早上。大家换好制服围坐在餐桌旁吃早餐。
[np]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_chisato_00280_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「真珠星酱好像还在睡觉吗……？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_chisato_00280_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「是啊，之后我再去叫一次吧……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]光是回想昨晚的事……就忍不住要傻笑了。
[np]

[r]今早醒来时甚至怀疑过那是不是一场梦……
[np]

;//小声
[chisato storage="D_seifuku_L CD_3_L"]
[playcv storage="chisato_chisato_00280_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「……呵呵」
[np]
[FACEHIDE]

[r]当我注视她的侧脸时突然四目相对，千圣对我露出了微笑。
[np]

[r]这不是梦……我和千圣确实在交往啊。
[np]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]啊啊，糟糕……！重新确认这份实感后，兴奋得简直想跳起舞来！
[np]

[r]昨天晚上在关灯的客厅里一个人折腾得够呛吧！冷静点我！现在先吃饭——
[np]

;//\SEフォークが落ちる音
[aoi storage="B_seifuku_L B_9_L" trans=false]
[chisato storage="A_seifuku_M AB_8_M" trans=false]
[char_trans]

[char_jump name=aoi]

[playcv storage="aoi_chisato_00280_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「呜……！！」
[np]
[FACEHIDE]

[r]……咦？
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00280_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「啊，葵……？」
[np]
[FACEHIDE]

[r]突然，葵按住自己的右手……从她手中掉落的叉子碰到餐具发出声响。
[np]

[chisato storage="A_seifuku_M AB_3_M"]


[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_chisato_00280_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「怎、怎么会……这也、太突然了……因果律的失控，连我也……！？」
[np]
[FACEHIDE]

[r]……哎呀，这是……
[np]

[char_erase name="aoi chisato"]


[momo storage="A_seifuku_M AB_8_M" trans=false]
[aoi storage="D_seifuku_M CD_9_M" trans=false]
[char_trans]

[playcv storage="momo_chisato_00280_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「师、师傅……！不要紧吗？那、那个……现、现在马上，治愈魔法就——」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします。
[char_jump name=aoi]

[playcv storage="aoi_chisato_00280_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「别轻举妄动——堕天使圣职者——！稍有不慎，连你也会被卷进来……！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]


[momo storage="A_seifuku_L AB_8_L"]
[char_jump name=momo]

[playcv storage="momo_chisato_00280_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「怎、怎么会……但、但是这样师傅就……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00280_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「哼……没有比因自身不成熟而苦恼的异能者更可悲的了……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_chisato_00280_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「什……！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]刚开始我还以为她是不是身体不舒服……看来担心你的我才是笨蛋。
[np]

[character name="ryuichi"]
【龙一】[r]「喂，大清早就发病吗……？再这样下去要迟到了」
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[char_jump name=aoi]

[playcv storage="aoi_chisato_00280_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「翼神龙！你竟敢将迟到与世界的命运放在天平上衡量，究竟要选择哪边！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还是迟到更重要些」
[np]

[aoi storage="C_seifuku_L CD_4_L"]
[playcv storage="aoi_chisato_00280_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「岂有此理，你被魔女洗脑了，已经无法做出正常判断……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「到底是谁无法正常判断啊……吃饭时做这种事的话，千圣她——」
[np]

[char_erase name="aoi"]


;//「ダークリベンジャー」でお願いします
[chisato storage="A_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00280_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「……我来助阵，—漆黑复仇者—……」
[np]
[FACEHIDE]

[r]咦……？
[np]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_chisato_00280_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「噢，天使……！感激不尽，请借你胸膛一用！」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_2_M"]
[playcv storage="chisato_chisato_00280_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_seifuku"]
【千圣】[r]「呵呵，这可是要收高额利息的……来吧，你的对手是我！宿舍魔女！！」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]
[r]站起身的千圣握紧汤匙指向前辈。我觉得这样很没规矩。
[np]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00280_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「哼，好吧……就让我见识下你的能耐……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个…大家…？」
[np]

[char_erase name="mion"]


[chisato storage="B_seifuku_L AB_1_L"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00280_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「这才是我要说的台词…湮灭闪光！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]


;//「ファントムミラージュ」でお願いします。
[mion storage="A_seifuku_L AB1_9_L"]
[char_jump name=mion]

[playcv storage="mion_chisato_00280_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_seifuku"]
【澪音】[r]「——幻惑海市蜃楼——！」
[np]
[FACEHIDE]

[char_erase name="mion"]
[r]对啊…对了，就是这样…！
[np]

[r]我一直以为绫濑千圣是唯一的正常人，结果发现她也是个十足的中二病患者…
[np]

[r]之前她一直隐藏着这个属性，所以还能在这种时候充当制止者的角色…
[np]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00280_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「哼，有两下子嘛宿舍魔女！那这招如何！？」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]现在连千圣也倒戈到对面，正常人就只剩我一个了啊啊啊啊啊啊啊啊啊啊啊！！！！！
[np]

[character name="ryuichi"]
【龙一】[r]「喂！再闹下去真的要迟到了！」
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_chisato_00280_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「当心点天使！那家伙会使用五花八门的咒语！要看清她的动作！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00280_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「多谢忠告，不过我也不能一直挨打啊…！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]说什么事关世界命运之类的…谁来、谁来…
[np]

[r]有没有人来救救我啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！
[np]

;//背景を青空に
[r]……而我这般悲痛的呐喊，最终只是在心底空洞地回响。
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


;//JUMP:chisato_00290
[jump storage="scenario/chisato/chisato_00290.ks"]

