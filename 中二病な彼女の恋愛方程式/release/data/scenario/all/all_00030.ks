[SCENESTART file=all_00030.ks]
;//all_00030
;//BG:bg01_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]
[SYSTEMMENU]

;//TIME:昼
;//日付:6/14(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:聖水,sifuku

[r]那有些过于高涨的情绪，渐渐平复了下来……。
[np]

[character name="ryuichi"]
【龙一】[r]「伏木庄……哦，就是这里吗！」
[np]

[r]确认着看板上的名字，确定自己已到达目的地。
[np]

[r]就像刚才说的，签约手续都是父母代办的，所以这栋建筑我也是第一次见到。
[np]

[r]虽然第一印象是有点老旧……但建筑本身很干净，颇有韵味感觉不错。
[np]

[character name="ryuichi"]
【龙一】[r]「那么……进去吧」
[np]

[r]明明刚才还兴奋不已，新环境果然还是会紧张啊。
[np]

[r]在意识到这种心情的同时，我缓缓推开了门。
[np]

[wait time="1000"]
[playse buf=5  storage="sound/00320.ogg"]
[wait time="1000"]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「打扰啦——」
[np]

[r]穿过玄关，充满生活气息的客厅便映入眼帘。
[np]

[r]女孩子们就是在这里日常生活的……光是想到这点就让人忍不住要深呼吸了。
[np]

[r]嘛，先不说这个……
[np]

[character name="ryuichi"]
【龙一】[r]「打扰了——」
[np]

[r]之前听说管理员会出来迎接的……
[np]

[character name="ryuichi"]
【龙一】[r]「有人在吗——？」
[np]

[r]完全没有任何回应。别说管理员了，连个人影都没有。
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]这种情况直接进去应该没问题吧？
[np]

[r]至少我有这个权利。毕竟从今天起这里也是我要住的地方。
[np]

[character name="ryuichi"]
【龙一】[r]「……那我进来了」
[np]

[r]在内心说服自己的同时，脱下鞋子走进客厅。
[np]

[r]地板发出细微的吱呀声，反而让四周显得更加寂静。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]真的一个人都没有吗？至少先想办法处理这个沉重的行李吧……
[np]

[r]按照刚才的逻辑，进自己房间应该没问题……对吧？
[np]

[character name="ryuichi"]
【龙一】[r]「那个，我的房间是……」
[np]

[r]走上二楼，确认门上的房间号码。
[np]

[character name="ryuichi"]
【龙一】[r]「６６６号是什么鬼……哦找到了找到了」
[np]

[r]２０６室。和地图旁写的备忘录数字一致。
[np]

;//\SEドアを開ける音
[r]从今天起，这里就是我的房间——
[np]

[playse buf=5  storage="sound/00320.ogg"]
[wait time="1000"]

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

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[SYSTEMMENU]

;//ＣＧ挿入
;//以下、葵の名前表記は「？？？」でお願いします。
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[playcv storage="aoi_all_00030_001.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「与漆黑十字架缔结契约的古老魔兽啊……」
[np]
[FACEHIDE]

[CG cgno=02 sabunno=01]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[r]——跃入眼帘的，是娇小的魔法使——少女的身姿。
[np]

[playcv storage="aoi_all_00030_002.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「咬断禁忌锁链，回归汝应存之地……」
[np]

[r]在神秘发光的魔方阵上，正要念出咒文般的语句……结果……呃？
[np]

;//「マスター」でお願いします
[playcv storage="aoi_all_00030_003.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「吾乃赐予汝自由之契约者——并将在此现世降生——」
[np]

[r]……这到底是怎么回事？
[np]

[r]就算我的脑子试图尽可能现实且善意地接受现状——
[np]

[CG cgno="02" sabunno="02"]

[playcv storage="aoi_all_00030_004.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「呃……！」
[np]

[r]清清楚楚地对上了视线。
[np]

[playcv storage="aoi_all_00030_005.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「……诞……生……」
[np]

[r]昏暗的房间中，隐约发光的六芒星中心存在着一个女孩子。
[np]

[r]她目不转睛地盯着我这个局外人的脸，眼睛眨巴眨巴个不停。
[np]

[CG cgno="02" sabunno="03"]

[playcv storage="aoi_all_00030_006.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「…………」
[np]

[r]这种情况、是不是该说点什么比较好？
[np]

[r]话说回来、这孩子到底是——
[np]

[playcv storage="aoi_all_00030_007.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「你这家伙、什么人啊啊！？」
[np]

[character name="ryuichi"]
【龙一】[r]「哇啊！？」
[np]

[playcv storage="aoi_all_00030_008.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「从没见过的面孔……难道是黑暗使者的同伙！？」
[np]

[r]啊……？黑暗使者？谁？……我吗？
[np]

;//「ダークネスビースト」でお願いします
[playcv storage="aoi_all_00030_009.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「难道说……是漆黑之兽转世后以人类姿态现身的吗……！？」
[np]

[r]在记忆中检索「黑暗使者」的结果：零条相关记录。
[np]

[character name="ryuichi"]
【龙一】[r]「那个，你是……」
[np]

[playcv storage="aoi_all_00030_010.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「现在是我在提问！你到底是什么人！？」
[np]

[character name="ryuichi"]
【龙一】[r]「我、我？我叫神原龙一，那个，今天刚搬到这里……」
[np]

[CG cgno="02" sabunno="02"]

[playcv storage="aoi_all_00030_011.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「神原…龙一……这是你在世间隐姓埋名用的假称吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「不，这是如假包换的本名，再说我根本没有需要隐藏身份的理由……」
[np]

[playcv storage="aoi_all_00030_012.ogg" name="aoi"]
[character name="aoi"]
【？？？】[r]「…………………」
[np]

[r]虽然她露出一副「这家伙在说什么啊……」的表情，其实我和她此刻的心情完全一致。
[np]

[character name="ryuichi"]
【龙一】[r]「……呃」
[np]

[r]总之……这个展开已经远远超出了我的理解能力范畴。
[np]

[r]因此，我应该采取的行动只有一个……！
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[CGHIDE]
[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

;//背景をリビングの寮bg02_01に
[character name="ryuichi"]
【龙一】[r]「打、打扰了啊啊啊啊！！」
[np]

;//[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_all_00030_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【？？？】[r]「啊，等等！」
[np]
[FACEHIDE]

;//■回想シーンの戻し処理
[SCENEFLG no=2]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[r]抱着行李连滚带爬地冲下楼梯。
[np]

[r]等一下，这到底是怎么回事啊！？
[np]

[r]那里不是我的房间吗！？为什么会被用来搞那种可疑的仪式啊！？
[np]

;//以下、聖水の名前表記は「？？？」でお願いします。
[satomi storage="B_sifuku_M AB_4_M"]
[playcv storage="satomi_all_00030_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_4_FACE_sifuku"]
【？？？】[r]「啊真是吵死了……什么嘛？发生什么事了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「呜哇！？」
[np]

[r]这次又出现另一个女人……！
[np]

[satomi storage="C_sifuku_M CD_4_M"]
[playcv storage="satomi_all_00030_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_4_FACE_sifuku"]
【？？？】[r]「嗯……？你是谁啊？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，那个……」
[np]

[fadeoutbgm time="1000"]

[r]看起来比刚才进行神秘仪式的女孩年长不少……或者说，是学生吗？
[np]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00030_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【？？？】[r]「啊……难道说，你就是今天要搬进宿舍的男生？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对、对的！我是神原龙一，二年级学生！」
[np]

;//以下、聖水の名前表記を通常に
[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00030_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「哦～原来就是你啊。我是小酒部圣水（おさかべ　さとみ）。虽然看起来不像但姑且算是这里的宿舍管理员。请多指教啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好的，请多关照……哎？管理员！？你就是！？」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00030_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊哈哈，突然就用「你」来称呼啦。不过这样反而不用拘谨呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对、对不起！」
[np]
[char_erase name="satomi"]

[r]因为擅自脑补管理员应该是个大妈或老奶奶的形象，结果不小心被惊到了。
[np]

[r]第一印象是位风情万种的大姐姐……虽然很想这么说，但这个人身上是不是还飘着酒味啊？
[np]

[character name="ryuichi"]
【龙一】[r]「那个，不是说今天会有人来接我……」
[np]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_all_00030_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「啊，已经这个时间了？哇，真的耶！」
[np]
[FACEHIDE]

[r]圣水看着墙上的挂钟，挠着睡翘的头发发出惊呼。
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「不好意思啊～小睡一会儿结果睡过头啦～」
[np]
[FACEHIDE]

[r]……这人真的没问题吗
[np]

;//「ダークネスビースト」でお願いします
[playcv storage="aoi_all_00030_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【？？？】[r]「——漆黑之兽——竟敢对圣水出手！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哇、是刚才那个女孩子！」
[np]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00030_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「哎呀，你们已经见过啦？难道说，你们刚才在玩什么吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「才不是那样！那只是、只是……」
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「不是吗？那就先做个自我介绍吧。来，你下来」
[np]
[FACEHIDE]

[playcv storage="aoi_all_00030_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【？？？】[r]「欸、啊……」
[np]
[FACEHIDE]

[r]被圣水招手示意的女孩带着困惑的表情走下楼梯……
[np]

;//時間経過
[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00030_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【？？？】[r]「……」
[np]
[FACEHIDE]

[r]我们重新在座位上面对面坐好。
[np]

[satomi storage="A_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00030_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「好了，自我介绍呢？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_all_00030_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【？？？】[r]「……吾乃自暗魔界深渊苏醒的漆黑复仇者！世人称吾为暗黑复——」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_9_M"]
[playcv storage="satomi_all_00030_011.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_9_FACE_sifuku"]
[char_jump name=satomi]
【圣水】[r]「不是那种啦」
[np]
[FACEHIDE]

;//以下、葵の名前表記を通常に
[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00030_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「唔……我、我叫小日向葵（こひなた　あおい）……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请、请多关照……」
[np]

[r]小日向葵……明明是个可爱的女孩子名字，为什么又自称什么漆黑之兽……到底怎么回事？
[np]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_012.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「那么来整理下情况——」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00030_013.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「龙一君来到宿舍却发现空无一人」
[np]
[FACEHIDE]

[r]说什么空无一人，明明是你自己在睡觉吧。
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_014.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「然后当他要进自己房间时，发现小葵在搞恶作剧」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00030_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「才、才不是恶作剧！这是召唤远古之兽的仪式——」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_5_M"]
[playcv storage="satomi_all_00030_015.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「好啦好啦仪式仪式。那为什么不在自己房间搞？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00030_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「那是因为……这样更容易聚集黑暗之力……」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_4_M"]
[playcv storage="satomi_all_00030_016.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_4_FACE_sifuku"]
【圣水】[r]「能用人类也能听懂的方式解释吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_all_00030_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name=aoi]
[char_jump name=aoi]
【葵】[r]「呜哇！？　呀！？　别、别这样啦……！」
[np]
[FACEHIDE]

[r]突然被挠侧腹的葵扭动着身体强忍笑意。
[np]

[aoi storage="C_tokushu_M CD_6_M"]
[playcv storage="aoi_all_00030_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_tokushu"]
[char_jump name=aoi]
[char_jump name=aoi]
【葵】[r]「噗、咕呜……！明、明白了！我说！我会好好说明的啦！」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00030_017.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「很好」
[np]
[FACEHIDE]

[r]看着泪眼汪汪投降的葵，圣水干脆地收回了手。
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00030_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「嗯、哈、哈啊……那个……２０６号室是空房间，那里比较宽敞……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_3_M"]
[playcv storage="aoi_all_00030_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_3_FACE_tokushu"]
【葵】[r]「所以进去一看，发现里面全是水……就觉得挺有那种氛围……」
[np]
[FACEHIDE]

[r]诶……全是水？
[np]

[satomi storage="A_sifuku_M AB_4_M"]
[playcv storage="satomi_all_00030_018.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_4_FACE_sifuku"]
【圣水】[r]「水浸……该不会你连那都说是仪式什么的吧……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00030_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「不、不是的！那不是我干的！进去的时候就已经湿透了！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_all_00030_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「整个地板像池塘一样……天花板还在滴答滴答漏水……」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_all_00030_019.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「天花板……？嗯——要不去看看吧」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]圣水起身走上楼梯，朝我的房间方向去了。
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_all_00030_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[r]于是留在原地的只剩我和葵两个人。
[np]

[character name="ryuichi"]
【龙一】[r]「……喂，刚才说的什么漆黑啥的到底怎么回事」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00030_028.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「是漆黑复仇者……！听好了，小日向葵只是临时用的假名！称呼我的时候——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请多指教啦，葵」
[np]

[aoi storage="C_tokushu_M CD_4_M"]
[playcv storage="aoi_all_00030_029.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「就、就说那是临时用的——」
[np]
[FACEHIDE]

[playcv storage="satomi_all_00030_020.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「噗……哧哧、咯咯咯……！」
[np]
[FACEHIDE]

[r]正当葵要反驳时，圣水憋着笑回来了。
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了……？」
[np]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00030_021.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「哎呀真是服了服了，这种场面还是第一次见」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这种场面，是指……？」
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00030_022.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「葵说得没错，房间彻底被水淹了！啊哈哈哈！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「笑个屁啊喂！那房间不是我的吗！？」
[np]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_023.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「本来是打算给你的房间啦。可能是昨天那场大雨的缘故吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00030_024.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「你看，昨天雨势不是特别大吗？好像还发布了暴雨警报」
[np]
[FACEHIDE]

[r]说起来，昨天确实下了一整天倾盆大雨呢。
[np]

[r]今天突然放晴了，我本来还觉得是适合开启新生活的吉兆呢……
[np]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_all_00030_025.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「这栋建筑年久失修，那个房间以前就漏雨啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道漏雨的话倒是修好啊！」
[np]

[satomi storage="B_sifuku_M AB_5_M"]
[playcv storage="satomi_all_00030_026.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「哎呀～大家都这么说但维修费很贵嘛～而且最重要的是太麻烦啦！」
[np]
[FACEHIDE]

[r]面对斩钉截铁断言的小酒部圣水，甚至感到一阵清爽……但现在可不是该感慨的时候！！
[np]

[character name="ryuichi"]
【龙一】[r]「那我的房间到底怎么办啊！？」
[np]

[satomi storage="A_sifuku_M AB_5_M"]
[playcv storage="satomi_all_00030_027.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「嗯……该怎么办呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你居然还问我！！」
[np]

[r]这人可是管理员啊……！？管理员不就是管理事务的人吗！？
[np]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00030_028.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「没办法的话，可能得暂时委屈你在客厅将就一阵子啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「客、客厅……就在这儿！？」
[np]

[satomi storage="C_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_029.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「对呀。沙发什么的都有，挺舒服的哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这根本不是舒不舒服的问题吧！？」
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00030_030.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「反正也没有别的办法啦。总之今晚你就先在这里凑合，明天再想办法吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那个房间的修缮工作……」
[np]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00030_031.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「我当然打算修，但问题是在那之前怎么办吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00030_032.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「综上所述，你的房间就暂时定在这里啦——！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，那个……」
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00030_033.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「来，给我个回应？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……好的」
[np]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_all_00030_034.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「嗯，很好！」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]……被她的气势压倒，不由得点了点头。
[np]

[aoi storage="A_tokushu_M A_4_M"]
[playcv storage="aoi_all_00030_030.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[r]葵就这样目不转睛地凝视着踌躇的我。
[np]

[character name="ryuichi"]
【龙一】[r]「……呃……今后请多关照？」
[np]

[r]葵没有握住我拘谨伸出的手，只是凝视着。
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_all_00030_031.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「龙……多拉贡……非人之物……吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00030_032.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「嗯……倒也不坏……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……好的？」
[np]

[char_erase name=aoi to=left time=800 fade=true]

[r]葵像是独自想通了什么似的，转身上楼回房间去了。
[np]

[r]刚来住处就不能用了，初次见面的女孩又这么古怪……
[np]

[r]玫瑰色的新生活……怎么说呢，这发展是不是有点不太对劲？你说呢？
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

[jump storage="scenario/all/all_00040.ks"]
;//JUMP:all_00040