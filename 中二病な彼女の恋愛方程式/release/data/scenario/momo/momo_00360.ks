[SCENESTART file=momo_00360.ks]
;//momo_00360
;//BG:bg05_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg05_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

;//TIME:昼
;//日付:7/15(水)
;//CH:竜一,pajyama
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,pajyama
;//CH:澪音,seifuku
;//CH:千聖,seifuku

;//[r]※このシーン以降、寮のリビングの背景から檻、主人公の荷物を撤去してください
;//[np]

[character name="ryuichi"]
【龙一】[r]「哈啊……」
[np]

[r]沐浴着从窗户射进来的阳光，支起上半身的我——
[np]

[character name="ryuichi"]
【龙一】[r]「欸、这是……」
[np]

[r]环绕我的牢笼消失了？不对，这个房间…啊
[np]

[character name="ryuichi"]
【龙一】[r]「对了，我……」
[np]

[r]昨晚搬完行李后…和桃酱开始同居生活了来着
[np]

[r]刚睡醒时完全忘记这茬儿所以慌了神…原来如此
[np]

[momo storage="C_pajyama_M C_4_M"]
[playcv storage="momo_momo_00360_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_pajyama"]
【桃】[r]「嗯、嗯嗯……哈……」
[np]
[FACEHIDE]

[r]也许是察觉到我已经醒来，桃酱也缓缓睁开了那双睡眼…
[np]

[momo storage="B_pajyama_M AB_8_M"]
[playcv storage="momo_momo_00360_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_pajyama"]
【桃】[r]「呀……！？呃、啊……啊，对哦……」
[np]
[FACEHIDE]

[r]看到我在房间里先是吓了一跳，而后又像是理解现状般点了点头
[np]

[momo storage="C_pajyama_M C_3_M"]
[playcv storage="momo_momo_00360_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_pajyama"]
【桃】[r]「早、早上好……」
[np]
[FACEHIDE]

[r]她带着几分羞涩腼腆地坐起身子，轻轻低头行了一礼。
[np]

[character name="ryuichi"]
【龙一】[r]「早上好」
[np]

[r]这种往日里习以为常的问候……唯独今天，总觉得有些难为情。
[np]

[r]随后我们就这样相顾无言地对视了片刻……
[np]

[momo storage="A_pajyama_M AB_2_M"]
[playcv storage="momo_momo_00360_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_pajyama"]
【桃】[r]「……嘿嘿……♪」
[np]
[FACEHIDE]

[r]不知是谁先起的头，我们相视而笑。
[np]

[char_erase name="momo"]

;//背景を寮のリビングbg02_01に

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

[fadeinbgm storage="sound/BGM02.ogg" time=1000]

[aoi storage="A_seifuku_M A_1_M" trans=false]
[mion storage="C_seifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00360_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「只要熬过今天和明天……只要熬过这两天的话……！」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_momo_00360_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「之后等着你的，是补习班满满的暑假？」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_momo_00360_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
[char_quake name="aoi"]
【葵】[r]「别、别说什么满满的啊！现在才只有一门课要补！」
[np]
[FACEHIDE]

[char_erase name="aoi mion momo"]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_momo_00360_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「但这一门已经是板上钉钉了……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]换上校服后，全体住宿生聚在一起享用早餐。
[np]

[r]目前我还不需要补课……也就是说，只要熬过这两天……
[np]

[momo storage="D_pajyama_M D_7_M" trans=false]
[supica storage="C2_seifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="momo_momo_00360_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_pajyama"]
【桃】[r]「啊、真珠星酱，这样袖子会弄脏的…」
[np]
[FACEHIDE]

[supica storage="A_seifuku_M AB_3_M"]
[playcv storage="supica_momo_00360_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_seifuku"]
【真珠星】[r]「嗯……谢谢……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[r]看来要和刚交往的可爱女友…不对，是和桃酱一起迎接玫瑰色的暑假了！！
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_momo_00360_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「咦……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，怎么了？」
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_momo_00360_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「从下楼开始就觉得不对劲……神原君的房间……或者说笼子？怎么不见了？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[momo storage="A_pajyama_M AB_8_M"]
[playcv storage="momo_momo_00360_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_pajyama"]
【桃】[r]「啊……！！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[mion storage="B_seifuku_M AB1_7_M"]
[playcv storage="mion_momo_00360_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「说起来……别说笼子了，连行李被褥都不翼而飞……但房间还没修好吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、呃、那个是……！」
[np]

[char_erase name="mion"]

[r]我不由自主看向坐在对面的桃酱的脸…
[np]

;//小声
[momo storage="D_pajyama_L D_10_L"]
[playcv storage="momo_momo_00360_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_pajyama"]
【桃】[r]「啊、啊哇、啊哇哇哇哇哇哇哇……！！」
[np]
[FACEHIDE]

[r]任谁都能一眼看出她现在慌得不行……！
[np]

[playcv storage="mion_momo_00360_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「哎呀……哎呀呀呀……？」
[np]
[FACEHIDE]


[playcv storage="chisato_momo_00360_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「那个、难道说……」
[np]
[FACEHIDE]

[r]不、或许也不是什么需要隐瞒的事……不过话说回来，反正迟早都会百分之百暴露的！
[np]

[r]不过，昨天被大家起哄的时候，因为暂时保留了回答……现在反而有点难以启齿……。
[np]

[playcv storage="supica_momo_00360_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……桃？」
[np]
[FACEHIDE]

[momo storage="B_pajyama_L AB_8_L"]
[playcv storage="momo_momo_00360_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_pajyama"]
[char_jump name="momo"]
【桃】[r]「呀啊！？呃…怎、怎么啦，真珠星酱…」
[np]
[FACEHIDE]

[playcv storage="supica_momo_00360_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「脸好红……出汗量也不正常」
[np]
[FACEHIDE]

[momo storage="C_pajyama_L C_8_L"]
[playcv storage="momo_momo_00360_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_pajyama"]
【桃】[r]「啊、呃、这个……这、这是，那个……」
[np]
[FACEHIDE]

[playcv storage="aoi_momo_00360_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「怎、怎么了桃，是被魔女的毒气侵蚀了吗……！？」
[np]
[FACEHIDE]

[momo storage="D_pajyama_L D_10_L"]
[playcv storage="momo_momo_00360_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_pajyama"]
【桃】[r]「不、不是的，那个，不是这样的……！呃、那个、那个……！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_momo_00360_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「……呵呵呵」
[np]
[FACEHIDE]

[char_erase name="mion"]

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

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

[r]最终我们……
[np]

[mion storage="C_seifuku_M CD1_3_M" trans=false]
[momo storage="A_seifuku_M AB_5_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00360_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「果然……不过，也不是什么需要隐瞒的事吧？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00360_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「或、或许是这样没错……但要主动报告总觉得有点难为情……」
[np]
[FACEHIDE]

[r]在前往学院的路上，我将昨晚发生的事情一五一十全盘托出。
[np]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_momo_00360_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「不过既然住在同一个宿舍，迟早都会暴露的……早点被发现反而更好不是吗？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00360_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「确、确实……是这样呢……」
[np]
[FACEHIDE]

[r]绫濑说得对。在桃酱房间同居这种事，根本不可能瞒得住。
[np]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_momo_00360_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「呵呵……看来你们正在稳步推进呢……为登上成人阶梯所做的准备……」
[np]
[FACEHIDE]

[char_erase name="momo chisato mion"]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_momo_00360_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
[char_jump name="aoi"]
【葵】[r]「成、成人阶梯！？」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_momo_00360_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「哎呀～对于还是小孩子的葵来说，这个话题可能有点刺激了吧……？」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_momo_00360_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「才不是呢！？别、别叫我小孩子啊！我无论是心灵还是身体都很成熟——」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_momo_00360_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「心灵暂且不论，身体也……？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_momo_00360_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
[char_quake name="aoi"]
【葵】[r]「你、你在看哪里啊————！！」
[np]
[FACEHIDE]

[r]无论有没有中二病发作，这两人吵架拌嘴已是家常便饭了。
[np]

[char_erase name="aoi mion"]

;//小声
[momo storage="C_seifuku_L C_8_L"]
[playcv storage="momo_momo_00360_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……前、前辈……」
[np]
[FACEHIDE]

[r]正这么想着，身旁的桃酱轻轻拽了拽我的衬衫下摆。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[momo storage="B_seifuku_L AB_8_L"]
[playcv storage="momo_momo_00360_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「那、那个……就是……」
[np]
[FACEHIDE]

[r]接着桃酱略显在意地环顾其他人的反应后…
[np]

;//小声
[momo storage="A_seifuku_L AB_3_L"]
[playcv storage="momo_momo_00360_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「……今天放学后……我在校门口等着……一起回家好吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]她贴着我的耳畔轻声细语，脸上泛起一抹淡淡的笑意。
[np]

[r]……女孩子真是不可思议啊……
[np]

[r]刚才只是被她耳语了几句……我就心跳加速得厉害……
[np]

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

[jump storage="scenario/momo/momo_00370.ks"]