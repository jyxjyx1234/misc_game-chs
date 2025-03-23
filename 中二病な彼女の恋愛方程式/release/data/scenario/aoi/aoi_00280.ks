[SCENESTART file=aoi_00280.ks]
;//aoi_00280
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku

[r]三人回到宿舍，我和葵进了同一间房间……
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_aoi_00280_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「啊……等、等一下！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00280_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「我、我要先换衣服……稍微给我点时间」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了，我等你」
[np]

[char_erase name="aoi"]

;//\SEドアの閉まる音
[playse buf=5  storage="sound/00320.ogg"]
[wait time="1000"]

[r]目送葵独自进入房间后，转身背对房门。
[np]

[r]虽说有话要说……但实际该怎么做呢。
[np]

[r]当然要说的内容只有一件。关于葵提议同居的理由。
[np]

[r]但事到临头……又不禁犹豫该不该问……
[np]

[r]不过这也是我特别在意的事——
[np]

;//ドア越し
[playcv storage="aoi_aoi_00280_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「龙、龙一，可以了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……」
[np]

;//背景を葵の部屋bg03_01に
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

;//葵の衣装を中二衣装に
;//\SE扉を開く音
[r]确认听到葵的声音后，我走进了房间。
[np]

[r]方才还穿着制服的葵，此刻已换回了平时的便服。
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00280_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「那、那个要说的事……是同居需要制定的规矩之类的……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……那个只是因为有绫濑在场才那么说……」
[np]

[character name="ryuichi"]
【龙一】[r]「我想说的事……其实是另一件」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00280_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]能感觉到葵因我的话屏住了呼吸。
[np]

[r]虽然缓慢却切实地……彼此间弥漫的空气正逐渐绷紧。
[np]

[r]但越是拖延时间，反而越难启齿……决定了。
[np]

[character name="ryuichi"]
【龙一】[r]「该说是要谈的事呢，还是说……葵，我有一个……就一个，想先问你的事情。」
[np]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00280_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「问、问我……？是什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个……葵你为什么要提议……和我同住一间房？」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00280_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「昨天……我不在的时候，你们似乎讨论过怎么处理我的问题……」
[np]

[character name="ryuichi"]
【龙一】[r]「但应该没像之前那样，说是因为没房间要赶我走吧？」
[np]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_aoi_00280_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「那、那是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「至少大家好像都同意我可以继续住下去……也就是说并非为了帮我摆脱那种困境」
[np]

[character name="ryuichi"]
【龙一】[r]「而且……葵你应该知道的吧？我的房间很快就能修好这件事」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00280_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]她犹豫着移开视线，片刻之后……葵轻轻点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「也就是说……再过几天，我就能在自己房间开始生活了」
[np]

[character name="ryuichi"]
【龙一】[r]「既然如此……明明知道这点，为什么葵你……」
[np]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00280_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「那、那是因为……」
[np]
[FACEHIDE]

[r]葵从刚才开始就一直重复着与我对视又躲闪，对视又躲闪的动作……
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00280_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「那、那个……我……」
[np]
[FACEHIDE]

[r]她紧紧攥住衣角，似乎在寻找合适的说辞。
[np]

[r]不知是不是心理作用，她的脸似乎微微泛红——
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00280_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「这、这样更有利于我们暗之力的增幅！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……哈？」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00280_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「我、我和龙一都是诞生于黑暗的眷属，是以血之契约连结的盟友！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00280_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「正因为我们羁绊深厚，更应该尽可能生活在同一空间，这样……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00280_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「彼、彼此的黑暗产生共鸣后，魔力就会大幅增强……各、各方面效率都会提高！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……呃」
[np]

[r]「现在不是说这个的时候……」我刚想说出口，却……
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00280_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「所、所以我才会让龙一……那个……」
[np]
[FACEHIDE]

[r]看到葵手足无措的模样，继续追问下去未免太过残忍。
[np]

[character name="ryuichi"]
【龙一】[r]「……原来如此，彼此的黑暗产生共鸣吗……」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00280_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「就、就是这样……所以我才……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「确实……和葵这样相处时，能切实感受到自身力量在不断增强……」
[np]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00280_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「！」
[np]
[FACEHIDE]

[r]当我压低声音这么说时，葵的眼中闪过一丝决意。
[np]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_aoi_00280_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「是、是吧！？龙一……不，翼神龙降临这个世界尚不久……！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00280_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「况且你还承受了足以失忆的重创。所以这样更能有效恢复你的力量……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「原来如此……就让我致谢吧，——漆黑复仇者——」
[np]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_aoi_00280_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「不、不必道谢！翼神龙……！」
[np]
[FACEHIDE]

[r]既然葵不愿多谈，也不必强行追问。
[np]

[r]反正我的房间过几天就能修好，之后搬过去住就行了……
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00280_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「来吧翼神龙！现在就开始魔法咏唱训练！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……等等，不是说好不做那种事的吗！」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00280_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「不用害羞！这里只有我和你两个人啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是人多人少的问题！我根本没有那个意思——」
[np]

[aoi storage="C_tokushu_M CD_11_M"]
[playcv storage="aoi_aoi_00280_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「有什么关系，我们可是缔结过鲜血契约的关系啊？来，开始吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂喂！别拽我啊！啊、等——」
[np]

[r]糟、脚滑——！！！
[np]

[char_erase name="aoi"]

[playse buf=5 storage="sound/10110.ogg"]
[quake time="500"]
[wait time="1000"]
[fadeoutbgm time="1000"]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

;//暗転
[playcv storage="aoi_aoi_00280_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「呜呀啊啊！！？」
[np]
[FACEHIDE]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「好痛！！」
[np]

[r]正想挣脱拽着手臂的葵，结果失去平衡……
[np]

[r]整个人重重摔在地板上……现在正躺着……对吧？
[np]

[r]被冲击力震得下意识闭上眼睛……现在到底是什么状况……？
[np]

;//通常ＣＧ表示
[CG cgno=07 sabunno=01]

[playcv storage="aoi_aoi_00280_026.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「唔啊……」
[np]

[r]说起来……好像有什么柔软的触感。
[np]

[playcv storage="aoi_aoi_00280_027.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、嗯呜……」
[np]

[r]这是什么……？手掌大小的隆起……还带着微微的温度……
[np]

[playcv storage="aoi_aoi_00280_028.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「咿呀呜……」
[np]

[r]每次一用力，葵就会发出奇怪的声音，这——
[np]

[character name="ryuichi"]
【龙一】[r]「！！！！！？？？？？」
[np]

[r]这、这这这这……这不是胸吗啊啊啊啊啊啊啊啊啊啊啊！！！
[np]

[playcv storage="aoi_aoi_00280_029.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啾～」
[np]

[character name="ryuichi"]
【龙一】[r]「喂、你没事吧葵！？喂、喂！？」
[np]

[r]糟、糟了……完全晕头转向，处于击倒状态了……！
[np]

[r]该不会撞到头了吧……？应该没事吧……！？
[np]

[character name="ryuichi"]
【龙一】[r]「葵、葵……！？」
[np]

[CG cgno=07 sabunno=02]

[playcv storage="aoi_aoi_00280_030.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、呜……嗯……？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊，太好了……你终于醒了？」
[np]

[CG cgno=07 sabunno=03]

[playcv storage="aoi_aoi_00280_031.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊、啊……咦？为什么我会躺着……难道说——」
[np]

[CG cgno=07 sabunno=04]

[playcv storage="aoi_aoi_00280_032.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「龙、龙一！？你、你你、你的手在摸哪里啊啊啊啊啊啊啊！！！？？」
[np]

[character name="ryuichi"]
【龙一】[r]「诶……？啊！！」
[np]

[r]糟、糟糕！我忘记手还放在那里了！！
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起！我这就拿开——好痛！？」
[np]

[CG cgno=07 sabunno=05]

[playcv storage="aoi_aoi_00280_033.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「怎、怎么了……？」
[np]

[character name="ryuichi"]
【龙一】[r]「想、想起来的时候……腰突然抽筋得好厉害……！」
[np]

[r]难道说摔倒的时候撞到要害了？所以才会这样——
[np]

[playcv storage="aoi_aoi_00280_034.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呀啊啊！？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊……对、对不起！」
[np]

[r]当我再次试图站起来时，指尖突然用力……
[np]

[CG cgno=07 sabunno=04]

[playcv storage="aoi_aoi_00280_035.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「既、既然知道错了，至少把手拿开啊啊啊啊啊！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「对、对啊！还有这招！」
[np]

;//■回想シーンの戻し処理
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[SCENEFLG no="6"]


[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[r]我立刻将手从葵身上移开，扶着床缓缓站了起来。
[np]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00280_036.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]而葵依然满脸通红地坐在地板上……
[np]

[character name="ryuichi"]
【龙一】[r]「你、你没事吧……？有没有哪里撞到……」
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00280_037.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「没、没关系的……我、我哪里都不痛……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……那就好」
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00280_038.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「可是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可是……？」
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00280_039.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「……可、可是……因、因为被龙一做了Ｈ的事……害、害我的心跳快得离谱……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃——」
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_aoi_00280_040.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「都、都怪你……！现在心脏还怦怦直跳……身体也热得发烫……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00280_041.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「你、你要怎么负责啦……！都是龙一的错……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起……！真的，很抱歉……」
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00280_042.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「……呜……唔……」
[np]
[FACEHIDE]

[r]葵双颊绯红地坐在地上，痛苦地紧紧按住胸口。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]等等，刚才……？我……
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之对不起……！我、我去下洗手间……！」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00280_043.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]从葵的房间夺门而出，逃也似的把自己关进洗手间。
[np]

[character name="ryuichi"]
【龙一】[r]「哈……哈……」
[np]

[r]……现在我的心跳异常……难道是因为刚才揉到了葵的胸部？
[np]

[r]虽说隔着衣服，但碰到了女孩子的身体……所以才会紧张……或者说兴奋？
[np]

[r]又或者是……在葵说出「小鹿乱撞」的瞬间，那个表情……
[np]

[r]看着涨红了脸、眼眶含泪、羞涩难当的葵……觉得那张脸可爱到让人无法招架……
[np]

[character name="ryuichi"]
【龙一】[r]「喂，等等……！」
[np]

[r]这样的话，难道我……我对葵……？
[np]

[character name="ryuichi"]
【龙一】[r]「……不会吧……」
[np]

[r]不，葵确实……安静的时候挺可爱的。虽然脑子有点脱线，但乍看是个可爱的女孩子。
[np]

[r]但就算这样……突然说要同居，就产生这种念头……
[np]

[r]再怎么说这也太草率了吧！？对吧！？
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

;//JUMP:aoi_00290
[jump storage="scenario/aoi/aoi_00290.ks"]