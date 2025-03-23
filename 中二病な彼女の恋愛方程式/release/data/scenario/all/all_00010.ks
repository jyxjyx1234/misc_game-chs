[SCENESTART file=all_00010.ks]
;シーンジャンプ先を設定
[SetSJumpTarget storage="scenario/all/all_00120.ks" target="*SCJump" Runflg="0"]
[SetSJumpFlg storage="scenario/all/all_00120.ks" target="*SCJump" runflg="1"]

;//all_00010
;//BG:bg02_03

;感情パラメータを初期化
[eval exp="f.love_aoi=0"]
[eval exp="f.love_supica=0"]
[eval exp="f.love_momo=0"]
[eval exp="f.love_chisato=0"]
[eval exp="f.love_mion=0"]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//[backlay]
;//[freeimage layer=1 page=back]
;//[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
;//[trans method=crossfade time=1000]
;//[wt]

[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[CG cgno=01 sabunno=01]
[SYSTEMMENU]

;//TIME:夜
;//日付:6/21(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

;//「ヘルフレイム」でお願いします
;//[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_all_00010_001.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「吃我一招！！——地狱火炎弹——！！」
[np]
;//[FACEHIDE]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]

[r]——咏唱咒文的少女所释放的，是连人体都能溶解的高热火炎弹。
[np]

[char_erase name="aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;//「ファントムミラージュ」でお願いします
;//[mion storage="A_sifuku_L AB1_9_L"]
[playcv storage="mion_all_00010_001.ogg" name="mion"]
[character name="mion"]
;//[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「哼，雕虫小技……！——幻惑蜃景——！」
[np]
;//[FACEHIDE]

[playse buf=5  storage="sound/60005.ogg"]
[wait time="300"]
[quake time="500"]

[r]这一切都被黑发美女布下的光之盾反弹了回去。
[np]

;//[char_erase name="mion"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[CG cgno=01 sabunno=02]

;//[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00010_002.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
;//[char_jump name=aoi]
【葵】[r]「什……！被、被反射了！？唔……！！」
[np]
;//[FACEHIDE]

;//[char_erase name="aoi"]

[r]……不过说到底，这些都只是两人脑海中想象的画面而已。
[np]

;//[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00010_001.ogg" name="chisato"]
[character name="chisato"]
;//[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「唉——又开始了……」
[np]
;//[FACEHIDE]


[r]看着两人这般互动，一位女孩无奈地垂下肩膀。
[np]
;//[char_erase name="chisato"]

;//[aoi storage="A_tokushu_M A_1_M" trans=false]
;//[momo storage="C_sifuku_M C_5_M" trans=false]
;//[char_trans]
[playcv storage="momo_all_00010_001.ogg" name="momo"]
[character name="momo"]
;//[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「那、那个，葵小姐，马上要开饭了……」
[np]
;//[FACEHIDE]

;//「ダークプリーステス」でお願いします
;//[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_all_00010_003.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「——堕天使圣职者——！能打破魔女的防御魔法吗！？」
[np]
;//[FACEHIDE]

;//[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00010_002.ogg" name="momo"]
[character name="momo"]
;//[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「呜诶！？啊、呃、那个那个……我、我试试看！」
[np]
;//[FACEHIDE]

;//[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00010_004.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「拜托了！」
[np]
;//[FACEHIDE]

;//[char_erase name="aoi momo"]

;//[momo storage="C_sifuku_L C_9_L"]
[playcv storage="momo_all_00010_003.ogg" name="momo"]
[character name="momo"]
;//[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「在、在月光照耀下缠绕荆棘的蔷薇啊……请回应我的愿望吧啊啊啊！！」
[np]
;//[FACEHIDE]

[playse buf=5  storage="sound/60006.ogg"]
[wait time="300"]
[quake time="500"]

[r]怯生生的少女就这样被卷入两人的战斗之中。
[np]

[char_erase name="momo aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;//[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00010_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
[char_jump name=satomi]
【圣水】[r]「好样的！加油加油！！」
[np]
[FACEHIDE]

[r]唯一的大人女性单手拿着罐装啤酒，像孩子般欢闹着。
[np]
;//[char_erase name="satomi"]

;//[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_all_00010_001.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……看啊，阿斯特拉尔……闪耀的阿克图勒斯……」
[np]
;//[FACEHIDE]

[r]笼罩着神秘氛围的少女独自伫立窗边，仰望着星空喃喃自语。
[np]
;//[char_erase name="supica"]

;//[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_all_00010_002.ogg" name="chisato"]
[character name="chisato"]
;//[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「我说，晚饭已经做好了啦！先暂停过家家游戏，快来准备吃饭——」
[np]
;//[FACEHIDE]

;//[char_erase name="chisato"]

[CG cgno=01 sabunno=01]

;//[aoi storage="B_tokushu_M B_1_M"]
[playcv storage="aoi_all_00010_005.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「既然如此，就使出终极奥义……冲破禁忌的漆黑之翼啊，此刻正是撕裂刹那之时！！」
[np]
;//[FACEHIDE]

;//「ダークフレイムリベリオン」でお願いします
;//[aoi storage="D_tokushu_L CD_1_L"]
[playcv storage="aoi_all_00010_006.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「——自深渊诞生的叛逆业火——！！」
[np]
;//[FACEHIDE]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]
[wait time="2000"]
[char_erase name="aoi"]

;//「リベンジャー」でお願いします
;//[mion storage="B_sifuku_M AB1_9_M"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[playcv storage="mion_all_00010_002.ogg" name="mion"]
[character name="mion"]
;//[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「咕……这种威力……有两下子嘛，复仇者！」
[np]
;//[FACEHIDE]

;//[char_erase name="mion"]

;//[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_all_00010_003.ogg" name="chisato"]
[character name="chisato"]
;//[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「所以说，晚饭已经……」
[np]
;//[FACEHIDE]

;//[char_erase name="chisato"]

[CG cgno=01 sabunno=03]

;//[aoi storage="C_tokushu_M C_1_M" trans=false]
;//[mion storage="D_sifuku_M CD1_10_M" trans=false]
;//[char_trans]
[playcv storage="mion_all_00010_003.ogg" name="mion"]
[character name="mion"]
;//[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「但你以为这种程度就能击倒我吗？……我可还保留着十六个阶段的变身！」
[np]
;//[FACEHIDE]

;//[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_all_00010_007.ogg" name="aoi"]
[character name="aoi"]
;//[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「什…！？」
[np]
;//[FACEHIDE]

;//[char_erase name="aoi mion"]

[CG cgno=01 sabunno=04]

;//[chisato storage="B_sifuku_L AB_11_L"]
[playcv storage="chisato_all_00010_004.ogg" name="chisato"]
[character name="chisato"]
;//[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
[quake time="500"]
【千圣】[r]「啊啊真是的……给我适可而止啊——————！！！！！」
[np]
;//[FACEHIDE]

;//[char_erase name="chisato"]

[r]到底为什么会变得这么吵闹？
[np]

[r]一切的起因要追溯到一周前——
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=1]
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
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]
[wait time="1000"]

[jump storage="scenario/all/all_00020.ks"]
;//JUMP:all_00020