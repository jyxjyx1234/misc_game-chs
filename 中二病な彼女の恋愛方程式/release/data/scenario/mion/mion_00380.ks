[SCENESTART file=mion_00380.ks]
;//mion_00380
;//BG:bg02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:夕
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,seifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00380_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「我回来了」
[np]
[FACEHIDE]

[playcv storage="satomi_mion_00380_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「嗯，欢迎回来」
[np]
[FACEHIDE]

[r]结束在车站前的购物后，我和前辈两人回到了宿舍。
[np]

[char_erase name="mion"]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_mion_00380_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「啊……！」
[np]
[FACEHIDE]

[supica storage="B2_sifuku_M AB_3_M"]
[playcv storage="supica_mion_00380_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……千圣？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_mion_00380_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「啊……对、对不起。那接下来……」
[np]
[FACEHIDE]

[r]看到我们这副模样，绫濑一瞬间发出了声音……但随即又像什么都没发生过一样，和真珠星一起开始摆放餐具。
[np]

[char_erase name="chisato supica"]

[r]说起来，绫濑和葵已经知道了啊……我和前辈正在交往——
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[playcv storage="aoi_mion_00380_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「你们回来了吗！！魔女和她的走狗们！！！」
[np]
[FACEHIDE]

[fadeinbgm storage="sound/BGM03.ogg" time=1000]

[character name="ryuichi"]
【龙一】[r]「咦……？」
[np]

[momo storage="D_seifuku_S D_9_S"]
[playcv storage="momo_mion_00380_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「为、为了守护伏木庄的和平……！我们要讨伐蔓延的邪恶！！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_4_M" from="left" accel="0"]
[playcv storage="aoi_mion_00380_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「看招！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「危险啊！？」
[np]

[r]葵突然从二楼跳下——
[np]

[r]结果发现她是悬挂在像是绳子的东西上，安全降落在了客厅。
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_mion_00380_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「龙一…你真的和那个魔女缔结契约了吗…！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶…？」
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_mion_00380_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「用、用人话来说就是开始交往了嘛！真、真的吗！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊…」
[np]

[momo storage="C_seifuku_M C_9_M"]
[playcv storage="momo_mion_00380_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「承认了！他承认了师父！？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_4_M"]
[playcv storage="aoi_mion_00380_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「那么当时那个诅咒之吻，既不是演技也不是逢场作戏吗…！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[satomi storage="D_sifuku_M CD_3_M" trans=false]
[mion storage="A_seifuku_M AB1_2_M" trans=false]
[char_trans]

[playcv storage="satomi_mion_00380_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「哎？你们俩在交往吗？」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00380_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「是的。从昨晚开始正式交往」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_mion_00380_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「嘿～真年轻啊…我也差不多该着急了吧…」
[np]
[FACEHIDE]

[char_erase name="satomi mion"]

[r]圣水小姐与其先意识到危机感，不如先抓紧改善自己的生活吧。
[np]

[momo storage="C_sifuku_M C_4_M" trans=false]
[aoi storage="B_tokushu_M B_5_M" trans=false]
[char_trans]
[playcv storage="aoi_mion_00380_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「也就是说翼神龙已经完全叛变到敌方阵营了！那家伙再也不是可靠的同伴了！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_mion_00380_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「学长为什么…为什么要和澪…不对！为什么要和魔女交往…不对！为什么要和魔女缔结契约啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃、这个……？」
[np]

[momo storage="C_sifuku_M C_8_M"]
[playcv storage="momo_mion_00380_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「翻译成通俗易懂的话就是——为什么要选择和澪音学姐交往啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那是……」
[np]

[char_erase name="momo aoi"]


[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_mion_00380_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「呵呵呵…硬要说的话，这是必然的结果」
[np]
[FACEHIDE]

[char_erase name="mion"]



[aoi storage="A_tokushu_M A_7_M" trans=false]
[momo storage="C_sifuku_M C_10_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00380_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「必然…你说必然！？」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]


[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_mion_00380_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「我和这里的翼神龙…从在伏木庄相遇的那一刻起，就注定会走到这一步……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[aoi storage="A_tokushu_M A_7_M" trans=false]
[momo storage="C_sifuku_M C_10_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00380_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「这、这难道是一见钟情吗！？」
[np]
[FACEHIDE]

[r]桃酱、你变回原形了哦原形。
[np]

[char_erase name="aoi momo"]


[mion storage="D_seifuku_M CD1_3_M" trans=false]
[aoi storage="C_tokushu_M CD_9_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00380_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「谁知道呢…这个答案谁都无法断言。就连我和龙一，也……」
[np]
[FACEHIDE]

[r]一见钟情吗…要说的话，初次见面时确实觉得是个美人…
[np]

[r]但居然真的会和学姐交往这种事…那时候真是做梦都想不到啊。
[np]

[char_erase name="mion"]


[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00380_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「来吧，让我们做个了断！在你们的恶行上画下休止符，把名字刻在墓碑上！」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_mion_00380_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「呵呵…有趣，就陪你玩玩吧」
[np]
[FACEHIDE]

[char_erase name="mion"]


[playcv storage="chisato_mion_00380_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「那个…晚饭差不多要做好了…」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="D_tokushu_M CD_4_M" trans=false]
[momo storage="D_sifuku_M D_9_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00380_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「要上了——堕天赛西圣职者！准备好了吗！？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_mion_00380_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「是师傅！辅助魔法随时可以释放！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]


[mion storage="B_seifuku_M AB1_9_M" trans=false]
[aoi storage="D_tokushu_M CD_9_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00380_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_seifuku"]
【澪音】[r]「弱者抱团终究还是弱者…来吧，放马过来！」
[np]
[FACEHIDE]

[r]这种情况，我要是站在澪音学姐这边剧情会更精彩吧…
[np]

[r]会产生这种想法的现在，果然还是中二病发作的日常啊。
[np]

;//「ヘルフレイム」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_mion_00380_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「接招吧！！——地狱火炎弹！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60004.ogg"]
[wait time="500"]
[quake time="500"]

;//「ファントムミラージュ」でお願いします
[mion storage="A_seifuku_M AB1_4_M"]
[playcv storage="mion_mion_00380_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_seifuku"]
【澪音】[r]「雕虫小技，——幻惑海市蜃楼！！」
[np]
[FACEHIDE]

[playse buf=5  storage="sound/60005.ogg"]
[wait time="300"]
[quake time="500"]

[char_erase name="momo mion aoi"]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_mion_00380_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「好啦好啦到此为止！要打等吃完饭再打啦，真是的！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]今早还在纠结该什么时候公开交往的事……没想到这么快就尘埃落定了。
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

[jump storage="scenario/mion/mion_00390.ks"]