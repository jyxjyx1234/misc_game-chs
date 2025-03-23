[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00520.txt]
;//chisato_00520
;//BG:bg01_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/28(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:千聖,tokushu
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「好热……！」
[np]

[r]……就算向太阳抱怨，气温也不会因此下降。
[np]

[r]虽然心知肚明，但今天依旧持续着充满夏日气息的天气，让人忍不住想开口埋怨。
[np]

[r]正因为打工的地方冷气开得很足，回家的路上反而觉得更热了……
[np]

[r]在即将进入八月之际，终于有了盛夏来临的感觉啊。
[np]

;//背景を寮のリビングbg02_01に
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[playse buf=5 storage="sound/00370.ogg"]

[character name="ryuichi"]
【龙一】[r]「我回来了—」
[np]

[r]一边沉浸在这样的感慨中，一边推开玄关的门——
[np]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_chisato_00520_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「我早就料到会有这一天……从你在我们面前暴露真身的那一刻起！」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「侍奉黑暗与光明之人注定无法相容……虽然悲伤，但这就是命运呢……！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「………………」
[np]

;//「いっとき」「ヘルフレイム」でお願いします
[aoi storage="D_tokushu_M CD_9_M" trans=false]
[chisato storage="B_tokushu_M AB_11_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00520_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「念在曾是同盟的情分上……至少让你毫无痛苦地安息吧！——地狱火炎弹——！！」
[np]
[FACEHIDE]

[chisato storage="B_tokushu_M AB_11_M"]
[playcv storage="chisato_chisato_00520_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「萤石护盾！！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_chisato_00520_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「嚯，还挺有两下子……！但这一招你挡得住吗！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]……顶着酷暑回到家，发现客厅里正上演着激烈的战斗。
[np]

[chisato storage="A_tokushu_M AB_2_M"]
[playcv storage="chisato_chisato_00520_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_tokushu"]
【千圣】[r]「呵呵，太天真了……你以为我经历了多少修行啊！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_chisato_00520_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「唔、好快……！不愧是「第七使徒」……！比速度的话我们可不占优势……！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]
[r]之前也有过类似的情况……但千圣变成那个样子后，真正能阻止她的真的只剩我了……
[np]

[r]不过现在也没有阻止的理由……请尽情享受吧。
[np]

[character name="ryuichi"]
【龙一】[r]「好了……」
[np]

[r]今天的午饭吃什么呢。早上稍微睡过头就提前结束早餐，现在肚子饿得——
[np]

[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「翼神龙！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_chisato_00520_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「你这家伙，什么时候……居然躲过了我的监视！？」
[np]
[FACEHIDE]

[r]哇被盯上了……话说你现在才发现吗！
[np]

[char_erase name="aoi"]


[chisato storage="D_tokushu_L CD2_10_L" trans=false]
[aoi storage="B_tokushu_M B_5_M" trans=false]
[char_trans]

[playcv storage="chisato_chisato_00520_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「来得正好，快助我一臂之力！和我一起打倒这些黑暗能力者吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我、我吗？」
[np]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_chisato_00520_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「哼，真是讽刺……曾与我缔结盟约的你，如今竟要和我以命相搏……！」
[np]
[FACEHIDE]

[r]等下，我根本没说要参战啊……
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个……要是吃过午饭的话倒是可以……」
[np]

[char_erase name="aoi chisato"]

[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「现在可不是说这种悠哉话的时候！快，赶紧释放你的力量！！」
[np]
[FACEHIDE]

[r]问题是我连需要释放的力量都还没积蓄起来啊……算了，豁出去了！
[np]

[character name="ryuichi"]
【龙一】[r]「呜、呃啊……！！」
[np]

[chisato storage="A_tokushu_L AB_8_L"]
[playcv storage="chisato_chisato_00520_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「翼神龙！？」
[np]
[FACEHIDE]

[r]突然按住胸口，装模作样地表现出痛苦的样子。
[np]

[character name="ryuichi"]
【龙一】[r]「千圣……不对，小千……我好像中了某种诅咒……」
[np]

[chisato storage="C_tokushu_L CD2_8_L"]
[playcv storage="chisato_chisato_00520_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「怎、怎么会……！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_11_M"]
[playcv storage="aoi_chisato_00520_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「哼哼哼……「代价诅咒」似乎生效了呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什、什么……！？难道说，你这家伙……」
[np]

[r]虽然装出惊讶的样子，但我其实完全不了解那内容。
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_chisato_00520_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「没错……当年我与你缔结的乃是血之盟约——通过交换彼此鲜血来宣誓永恒忠诚的崇高仪式……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_chisato_00520_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「若敢背叛盟约，全身所有孔窍都会喷血的诅咒就会发动……！你该不会忘记了吧！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]
[character name="ryuichi"]
【龙一】[r]「咕、咕呜呜呜呜……！！」
[np]

[r]我现在才第一次听说啊……！
[np]

[chisato storage="A_tokushu_L AB_8_L"]
[playcv storage="chisato_chisato_00520_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「翼神龙！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]在慌忙赶来的千圣面前，继续装作奄奄一息的样子表演。
[np]

[character name="ryuichi"]
【龙一】[r]「千…安、安洁啊……我已经……咳咳咳！！」
[np]

[chisato storage="B_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「…不会让你得逞！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？」
[np]

[chisato storage="C_tokushu_L CD2_10_L"]
[playcv storage="chisato_chisato_00520_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「抓紧我！快！」
[np]
[FACEHIDE]

[r]依照千圣的指示，我握住了她伸出的手……
[np]

;//「ホーリーウイング」でお願いします
[chisato storage="B_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「为彷徨于地平的天使们，祈求神明庇佑……！——神圣之翼——！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]……就在她宣言的瞬间，现场变得鸦雀无声……
[np]

[character name="ryuichi"]
【龙一】[r]「哎、哎……等、等一下……！？」
[np]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_chisato_00520_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「笨、笨蛋！你们居然在飞！？」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00280.ogg"]
[r]看着一言不发跑上楼梯的千圣和我，葵惊叫着喊道。
[np]

[char_erase name="aoi"]


[r]不过不管怎么看都只是在爬楼梯……不过……这话可不能说出口吧。
[np]

[chisato storage="C_tokushu_M CD2_9_M"]
[playcv storage="chisato_chisato_00520_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]紧握着我手的千圣侧脸微微泛红，那模样有点可爱。
[np]

[r]然后……
[np]

;//背景を千聖の部屋bg07_01に
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00520_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「到、到这里应该就安全了……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]被千圣牵着手，两人匆忙逃进了房间。
[np]

;//ドア越し
;[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_chisato_00520_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「可…可恶…居然施加了强力封印…！看来没那么容易打开…！」
[np]
[FACEHIDE]

;[char_erase name="aoi"]
[r]葵哐当哐当地摇晃着上锁的房门，嘴里念念有词。
[np]

[character name="ryuichi"]
【龙一】[r]「千圣，那个…」
[np]

[chisato storage="A_tokushu_M AB_11_M"]
[playcv storage="chisato_chisato_00520_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「不是千圣。我是光之圣天使艾恩洁…到底要说多少次你才明白？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…对、对不起…」
[np]

[chisato storage="A_tokushu_M AB_3_M"]
[playcv storage="chisato_chisato_00520_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_tokushu"]
【千圣】[r]「比起这个，要是不快点解除你身上的诅咒…我们可没时间在这里磨蹭」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可是这个诅咒实在太过强大…」
[np]

[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「没问题的…既然是血之契约引发的诅咒…用更牢固的契约覆盖掉就可以了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真、真的吗…！？」
[np]

[chisato storage="C_tokushu_L CD2_9_L"]
[playcv storage="chisato_chisato_00520_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「没错，用我和你的…那、爱之契约！」
[np]
[FACEHIDE]

[r]………………哎？
[np]

[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00520_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「快、快点……！赶紧转过来！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、千圣！？这、爱之契约，难道……唔……！？」
[np]

[r]或许连她自己都感到难为情，千圣强硬地将我拉进怀中……
[np]

[chisato storage="B_tokushu_L AB_12_L"]
[playcv storage="chisato_chisato_00520_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_12_FACE_tokushu"]
【千圣】[r]「嗯、啾……啵……」
[np]
[FACEHIDE]

[r]她涨红着脸贴近，将柔软的嘴唇压了上来。
[np]

[chisato storage="B_tokushu_L AB_12_L"]
[playcv storage="chisato_chisato_00520_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_12_FACE_tokushu"]
【千圣】[r]「嗯、嗯嗯……嗯……哈啊……这样，契约就缔结完成了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样……就算成了吗……」
[np]

[r]糟了……或许因为完全没料到，仅仅是刚才的吻，身体就……
[np]

[chisato storage="D_tokushu_M CD2_9_M"]
[playcv storage="chisato_chisato_00520_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「接下来只要设法打破这个局面……局势就能逆转……」
[np]
[FACEHIDE]

[r]……说起来……在千圣处于这种状态时，试着那么做会怎么样呢。
[np]

[r]好，实践出真知……干脆试试看吧！！
[np]

[chisato storage="B_tokushu_L AB_10_L"]
[playcv storage="chisato_chisato_00520_023.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「咿呀啊啊啊啊啊！！？？」
[np]
[FACEHIDE]

[r]从背后紧抱住千圣的身躯，伸手抓向她胸前隆起的丰盈。
[np]

[chisato storage="D_tokushu_L CD2_10_L"]
[playcv storage="chisato_chisato_00520_024.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「等、等等……！？你、你在做什么呀！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「听我说天使……！刚才的契约让我的身体变得不对劲……！」
[np]

[chisato storage="D_tokushu_L CD2_8_L"]
[playcv storage="chisato_chisato_00520_025.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「哎、哎哎……！？嗯、啊、啊啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我自己也控制不住……现在手还在擅自做这种下流的事……！！」
[np]

[chisato storage="B_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00520_026.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「怎、怎么会……！呀啊！？嗯、哈啊……啊、啊啊……！」
[np]
[FACEHIDE]

[r]即便隔着衣料被揉弄，千圣依然泄出了甜美的喘息。
[np]

[character name="ryuichi"]
【龙一】[r]「我也不想真的这么做……！可是、可是……！！」
[np]

[chisato storage="D_tokushu_L CD2_9_L"]
[playcv storage="chisato_chisato_00520_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「等、等一下……！敌人就在、就在附近啊……！」
[np]
[FACEHIDE]

[r]虽然象征性地扭动身体抵抗着，但显然没有使出全力
[np]

[r]这样……能成！
[np]

[chisato storage="D_tokushu_L CD2_8_L"]
[playcv storage="chisato_chisato_00520_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「呀啊啊啊啊啊啊啊！！？？」
[np]
[FACEHIDE]

[r]直觉到这一点的我，正要将手伸向胯间时……手腕被千圣狠狠抓住了。
[np]

[chisato storage="B_tokushu_M AB_10_M"]
[playcv storage="chisato_chisato_00520_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「不、不行不行不行啊！再怎么说、那里绝对不可以啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是我！真的不是我干的！！可恶、为什么……！！」
[np]

[chisato storage="D_tokushu_L CD2_9_L"]
[playcv storage="chisato_chisato_00520_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「那、那种借口……！啊、呀啊……！」
[np]
[FACEHIDE]

[r]通过揉捏胸部来转移千圣的注意力……趁此机会，用另一只手——
[np]

[char_erase name="chisato"]


;//\SEドアが勢いよく開く音
[playse buf=5 storage="sound/10110.ogg"]
[quake time="500"]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_chisato_00520_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「千圣！！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[chisato storage="A_tokushu_M AB_8_M"]
[playcv storage="chisato_chisato_00520_031.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_tokushu"]
【千圣】[r]「诶……？」
[np]
[FACEHIDE]

[r]………………另一只…………手………………
[np]
[char_erase name="chisato"]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_chisato_00520_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「哎……」
[np]
[FACEHIDE]

[r]本该锁着的房门突然被打开……
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_chisato_00520_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「呜诶……哎、哎哎……！？哇啊、哎哎哎哎……！！？」
[np]
[FACEHIDE]

[r]冲进房间的葵看到我们紧贴在一起，立刻开始眼冒金星地转圈圈。
[np]

[character name="ryuichi"]
【龙一】[r]「啊、葵！？」
[np]

[r]就算是我，也不可能在这种状况下继续抚摸她的身体。
[np]

[char_erase name="aoi"]


[chisato storage="C_tokushu_L CD2_8_L"]
[aoi storage="B_tokushu_M B_8_M"]

[playcv storage="chisato_chisato_00520_032.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「等…！？为、为什么！？为什么你能进房间！？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_chisato_00520_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「那、那个…！刚、刚才在房间外听到千圣的惨叫了…！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_chisato_00520_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「还听到里面传来乒乒乓乓的声音…！我、我担心出大事了…！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_chisato_00520_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「所、所以就从圣水的房间拿来了备用钥匙…！可、可是你们居然在做色色的事！！」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]


[chisato storage="A_tokushu_L AB_10_L"]
[playcv storage="chisato_chisato_00520_033.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「……！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]这、这是…计划外的突发状况！！
[np]

;//選択肢
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=该、该怎么办…！？ jump target="*select1"]
	[select_button text=冷、冷静下来好好谈谈！！ jump target="*select2"]
[select_end]

*select1
;//[SetSJumpTarget storage="scenario/all/all_1030.ks" target="" runflg=1]
[eval exp="f.SelectFlg=0"]
[eval exp="f.SelectC00520_0=0"]
[jump target="*selectA"]

*select2
;//[SetSJumpTarget storage="scenario/all/all_2030.ks" target="" runflg=1]
[eval exp="f.SelectFlg=1"]
[eval exp="f.SelectC00520_0=1"]
[jump target="*selectB"]

;//ど、どうすりゃいいんだ……！？
*selectA

[r]果然还是该如实坦白是我主动对千圣出手——
[np]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_chisato_00520_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「难、难道是…安洁莉恩！你这家伙，用那身体施展美人计，洗脑了翼神龙是吧！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[chisato storage="A_tokushu_L AB_9_L"]
[playcv storage="chisato_chisato_00520_034.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「啊……啊啊啊啊啊！！？」
[np]
[FACEHIDE]

[char_erase name="chisato"]


[aoi storage="B_tokushu_M B_5_M" trans=false]
[chisato storage="A_tokushu_M AB_9_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00520_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「居、居然用这么卑鄙的手段……！就、就仗着自己胸大！」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_9_M"]
[playcv storage="chisato_chisato_00520_035.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「你、你在胡说什么呀！我怎么可能做那种事！」
[np]
[FACEHIDE]

[r]啊、那个……话题好像朝着奇怪的方向发展了……
[np]

[char_erase name="aoi chisato"]


[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_chisato_00520_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「快、快醒醒龙一！现在还来得及！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等等别推我啊！哇啊！！？」
[np]

[aoi storage="C_tokushu_L CD_7_L"]
[playcv storage="aoi_chisato_00520_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「呀啊啊啊！？」
[np]
[FACEHIDE]

;//暗転
[char_erase name="aoi"]
[r]被葵猛地一扑失去平衡，我就这样倒了下去。
[np]

[chisato storage="A_tokushu_L AB_5_L"]
[playcv storage="chisato_chisato_00520_036.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_tokushu"]
【千圣】[r]「等……你、你在干什么呀！？别对我的龙一做奇怪的事！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「唔！？」
[np]

[r]什、什么情况……！？千圣吗？压、压在我身上了……！？
[np]

[aoi storage="C_tokushu_M CD_9_M" trans=false]
[chisato storage="C_tokushu_M CD2_8_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00520_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「闪、闪开！披着天使外皮的魅魔！」
[np]
[FACEHIDE]

[playcv storage="chisato_chisato_00520_037.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「谁、谁是魅魔啊！　喂，别、别动手！？」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]
[r]怎、怎么回事？发生什么了……！？
[np]

[r]脑袋轻轻撞到的冲击逐渐消退，当我缓缓睁开眼睛时——
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


;//JUMP:chisato_00530
[jump storage="scenario/chisato/chisato_00530.ks"]


;//お、落ち着いて話し合おうっ！！、を選んだ場合
*selectB

[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「冷、冷静下来好好谈谈！」
[np]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[r]随着我这句话，现场暂时陷入了短暂的寂静。
[np]

[character name="ryuichi"]
【龙一】[r]「葵啊…刚才我对天使的所作所为…都是被幕后黑手操控的违心之举！」
[np]

[aoi storage="B_tokushu_L B_8_L"]
[playcv storage="aoi_chisato_00520_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「什么…！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「恐怕是盘踞在这宿舍的魔女…她的精神控制搞的鬼…」
[np]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_chisato_00520_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「居、居然…可恨，又是那家伙干的好事…！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]很好…！虽然对前辈有点抱歉，但只要顺利转移话题就能让这件事不了了之——
[np]

[chisato storage="A_tokushu_M AB_11_M"]
[playcv storage="chisato_chisato_00520_038.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「既然如此，为了防止更多伤害…看来有必要先把翼神龙的肉体消灭掉…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊…？」
[np]

[chisato storage="C_tokushu_M CD2_11_M"]
[playcv storage="chisato_chisato_00520_039.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_tokushu"]
【千圣】[r]「唯有如此才能彻底解除魔女的精神控制……」
[np]
[FACEHIDE]

[char_erase name="chisato"]


[aoi storage="B_tokushu_L B_8_L"]
[playcv storage="aoi_chisato_00520_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「可、可是……那样做的话，翼神龙会……」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[chisato storage="A_tokushu_M AB_4_M"]
[playcv storage="chisato_chisato_00520_040.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_tokushu"]
【千圣】[r]「没关系的，这副人形躯体不过是个容器……灵魂不会有事。对吧……？」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「不、不是……那个……哎？」
[np]

[r]总觉得千圣的眼睛……好像吊得比任何时候都要吓人。
[np]

;//「ダークリベンジャー」でお願いします
[chisato storage="A_tokushu_M AB_2_M"]
[playcv storage="chisato_chisato_00520_041.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_tokushu"]
【千圣】[r]「所以……我要先消灭这具肉体了。漆黑复仇者，愿意帮忙吗？」
[np]
[FACEHIDE]

[char_erase name="chisato"]


[aoi storage="D_tokushu_M CD_11_M"]
[playcv storage="aoi_chisato_00520_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「哼……好吧，刚才的敌人就是现在的朋友！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[character name="ryuichi"]
【龙一】[r]「等、等等！快住手！两、两人联手的话那可是——」
[np]

;//背景を青空に
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]



[chisato storage="A_tokushu_L AB_11_L"]
[playcv storage="chisato_chisato_00520_042.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「这个……色鬼啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「咕啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！！！」
[np]

[r]……就这样，我的肉体逐渐崩坏……最终只剩下经过反省后得到净化的纯洁灵魂。
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

;//JUMP:chisato_00550
[jump storage="scenario/chisato/chisato_00550.ks"]
