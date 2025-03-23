[SCENESTART file=momo_00350.ks]
;//momo_00350
;//BG:bg02_03(消灯)

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/14(火)
;//CH:竜一,pajyama
;//CH:もも,pajyama

;//\SE雨の音、BGMとして常時

[playse buf=5 storage="sound/50180.ogg" loop=true]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]众人应该都已入睡的深夜时分。
[np]

[r]在熄了灯的客厅里，将冰镇麦茶灌入刚洗完澡的燥热身体。
[np]

[r]直到刚才还热闹非凡的这里，虽然现在已变得一片寂静……
[np]

[r]但总觉得还残留着欢乐空气的余韵，嘴角自然浮现微笑。
[np]

[r]虽然觉得没必要隐瞒……不过在那之前就被发现了啊。
[np]

[r]不过多亏如此得到了大家的祝福……真是从心底感激大家。
[np]

[character name="ryuichi"]
【龙一】[r]「好了……」
[np]

[r]打开笼门，躺在铺好的被褥上。
[np]

[r]在这里睡觉的日子，也只剩屈指可数的次数了吧……
[np]

[r]想到这里，不禁感到些许寂寞——
[np]

;//\SE雷の音
[playse buf=5 storage="sound/50240.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「呜哇……」
[np]

[r]刚才有很响的声音呢……啊对了，天气预报说过半夜会有雷雨什么的。
[np]

[r]就像之前的短时暴雨一样，夏日的雨总是来得急去得快呢。
[np]

;//\SE雷の音
[playse buf=5 storage="sound/50250.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]这次雷声离得挺近的……要是太吵的话，都没法睡了——
[np]

[playcv storage="momo_momo_00350_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_pajyama"]
【桃】[r]「前、前辈……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[playse buf=5 storage="sound/00320.ogg"]
[ws]
[playse buf=1 storage="sound/00200.ogg"]
[wait time="500"]

[r]楼上突然传来开门声。紧接着传来跑下楼梯的声响……
[np]

[momo storage="B_pajyama_L AB_6_L"]
[playcv storage="momo_momo_00350_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_pajyama"]
【桃】[r]「前～～～～～～～～～～～～辈！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00040.ogg"]
[quake time=500]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[r]飞越围栏突然扑向我……喂、桃酱！？
[np]

[momo storage="C_pajyama_L C_6_L"]
[playcv storage="momo_momo_00350_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_pajyama"]
[char_quake name="momo"]
【桃】[r]「前、前辈！救、救救我啊，请救救我啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱冷静点……！发、发生什么事了！？」
[np]

[momo storage="D_pajyama_L D_10_L"]
[playcv storage="momo_momo_00350_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_pajyama"]
【桃】[r]「雷、是雷啊……！轰隆隆的！噼里啪啦的——！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊…是打雷啊」
[np]

[r]虽然知道有人会怕打雷…但害怕到这种程度的人还是头一次见。
[np]

[momo storage="A_pajyama_L AB_6_L"]
[playcv storage="momo_momo_00350_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_pajyama"]
【桃】[r]「不、不要不要，绝对不要呜呜呜……！要、要是再在附近劈下来…在附近劈下来的话…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没事的桃酱，不用这么害怕…」
[np]

[momo storage="B_pajyama_L AB_5_L"]
[playcv storage="momo_momo_00350_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_pajyama"]
【桃】[r]「可、可是…但是…」
[np]
[FACEHIDE]

[r]从桃酱拼命抓住我手腕的样子，能感受到她确实害怕到了极点。
[np]

[character name="ryuichi"]
【龙一】[r]「真的没事…你看，有我在呢」
[np]

[momo storage="C_pajyama_L C_7_L"]
[playcv storage="momo_momo_00350_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_pajyama"]
【桃】[r]「啊…」
[np]
[FACEHIDE]

[r]为了让这样的桃酱安心，我轻轻抚摸她的头。
[np]

[momo storage="D_pajyama_L D_8_L"]
[playcv storage="momo_momo_00350_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_pajyama"]
【桃】[r]「哈啊……被、被前辈这样摸着…就感觉安心了…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真的？那…」
[np]

[r]就这样抱着桃酱好一会儿……继续抚摸着她散发淡淡洗发水香气的柔软秀发。
[np]

[momo storage="A_pajyama_L AB_9_L"]
[playcv storage="momo_momo_00350_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_9_FACE_pajyama"]
【桃】[r]「哈呜……」
[np]
[FACEHIDE]

[r]简直像是在哄被雷吓到的小孩子……这么说的话可能会被她生气吧。
[np]

[momo storage="A_pajyama_L AB_1_L"]
[playcv storage="momo_momo_00350_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_pajyama"]
【桃】[r]「谢、谢谢前辈……已经、已经冷静很多了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好。那现在……」
[np]

[r]原本紧紧抱住我的桃酱突然松手起身——
[np]

;//\SE雷の音
[playse buf=5 storage="sound/50240.ogg"]
[wait time="500"]

[momo storage="C_pajyama_L C_5_L"]
[playcv storage="momo_momo_00350_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_pajyama"]
[char_quake name=momo]
【桃】[r]「噫……！」
[np]
[FACEHIDE]

[r]……就在这时响起的雷声又吓得她缩成一团。
[np]

[character name="ryuichi"]
【龙一】[r]「哈哈哈，真的没事吗？」
[np]

[momo storage="B_pajyama_L AB_6_L"]
[playcv storage="momo_momo_00350_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_pajyama"]
【桃】[r]「没、没事……真、真的……」
[np]
[FACEHIDE]

[r]怎么看都不像是没事的人会有的反应……
[np]

[momo storage="D_pajyama_M D_7_M"]
[playcv storage="momo_momo_00350_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_pajyama"]
【桃】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过应该再过一个小时左右，雨势就会减弱了吧……」
[np]

[playse buf=5 storage="sound/30240.ogg"]
[wait time="500"]

[momo storage="A_pajyama_M AB_3_M"]
[playcv storage="momo_momo_00350_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_pajyama"]
【桃】[r]「嗯咻……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「到那时候雷声肯定也会停的……咦？」
[np]

[playse buf=5 storage="sound/30240.ogg"]
[wait time="500"]

[momo storage="C_pajyama_M C_8_M"]
[playcv storage="momo_momo_00350_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_pajyama"]
【桃】[r]「嘿咻……」
[np]
[FACEHIDE]

[r]不知为何桃酱正抱着我的枕头和当被子的毛巾被。
[np]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱……？」
[np]

[momo storage="B_pajyama_M AB_8_M"]
[playcv storage="momo_momo_00350_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_pajyama"]
[char_jump name="momo"]
【桃】[r]「呀啊……！怎、怎么了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是，你问我怎么了……你在做什么？」
[np]

[momo storage="A_pajyama_M AB_5_M"]
[playcv storage="momo_momo_00350_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_pajyama"]
【桃】[r]「啊……那、那个，这是……那个……」
[np]
[FACEHIDE]

[r]桃酱把脸埋在我的枕头里，抿着嘴局促不安地扭动着身子。
[np]

[momo storage="C_pajyama_M C_8_M"]
[playcv storage="momo_momo_00350_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_pajyama"]
【桃】[r]「……我、我们……已经在交往了…………这、这不算……奇怪的事……对吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[momo storage="D_pajyama_M D_5_M"]
[playcv storage="momo_momo_00350_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_pajyama"]
【桃】[r]「～～～……」
[np]
[FACEHIDE]

[r]……难道说……
[np]

[char_erase name="momo"]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

;//時間経過
;//雨の音、ここでストップ
;//背景をももの部屋bg05_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg05_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

[character name="ryuichi"]
【龙一】[r]「打扰了……」
[np]

[r]抱着满怀行李，第一次踏入桃的房间。
[np]

[r]处处流露着主人性格的可爱氛围……不过那个角落稍微有点那个啊。
[np]

[momo storage="A_pajyama_M AB_3_M"]
[playcv storage="momo_momo_00350_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_pajyama"]
【桃】[r]「学、学长，在这里可以吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，谢谢你帮忙啦」
[np]

[momo storage="B_pajyama_M AB_3_M"]
[playcv storage="momo_momo_00350_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_pajyama"]
【桃】[r]「怎、怎么会……！倒是我才应该感谢您……！」
[np]
[FACEHIDE]

[r]刚把行李放在地上，桃酱就立刻低头鞠躬。
[np]

[momo storage="C_pajyama_M C_5_M"]
[playcv storage="momo_momo_00350_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_pajyama"]
【桃】[r]「都是我的任性要求……因为害怕打雷就说睡不着要人陪……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……咦？」
[np]

[momo storage="D_pajyama_M D_7_M"]
[playcv storage="momo_momo_00350_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_pajyama"]
【桃】[r]「怎、怎么了……？」
[np]
[FACEHIDE]

[r]被她投以疑惑的视线，我侧耳倾听外面的动静。
[np]

[character name="ryuichi"]
【龙一】[r]「……雨好像停了」
[np]

[momo storage="B_pajyama_M AB_7_M"]
[playcv storage="momo_momo_00350_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_pajyama"]
【桃】[r]「咦……？」
[np]
[FACEHIDE]

[r]听到我这么说，桃酱也侧耳倾听窗外的动静……
[np]

[momo storage="C_pajyama_M C_3_M"]
[playcv storage="momo_momo_00350_025.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_pajyama"]
【桃】[r]「啊……真的、呢……」
[np]
[FACEHIDE]

[r]就在刚搬完行李的时候才发现这一点，感觉有些滑稽……
[np]

[momo storage="A_pajyama_M AB_2_M"]
[playcv storage="momo_momo_00350_026.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_pajyama"]
【桃】[r]「……呵呵呵♪」
[np]
[FACEHIDE]

[r]我和桃酱相视而笑。
[np]

;//通常ＣＧ挿入
[CG cgno=04 sabunno=01]
[char_erase name="momo"]

[playcv storage="momo_momo_00350_027.ogg" name="momo"]
[character name="momo"]
【桃】[r]「总觉得……完全清醒了……」
[np]

[r]坐在床边的桃酱转头看向我，开口说道。
[np]

[character name="ryuichi"]
【龙一】[r]「那要不……聊会儿天直到你犯困？」
[np]

[playcv storage="momo_momo_00350_028.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊，好呀」
[np]

[r]虽然我擅自认为女孩子都喜欢聊天……不过看来这个提议让她挺开心的。
[np]

[playcv storage="momo_momo_00350_029.ogg" name="momo"]
[character name="momo"]
【桃】[r]「虽然事情还没完全解决……今天一整天发生了太多事……头脑还有点混乱」
[np]

[character name="ryuichi"]
【龙一】[r]「确实……」
[np]

[r]本来光是发试卷时情绪起伏就够呛了，加上桃酱的告白，大家的祝福……
[np]

[r]最后还在交往当天直接开始同居生活……这么多事情接二连三地来，会不知所措也是正常的。
[np]

[playcv storage="momo_momo_00350_030.ogg" name="momo"]
[character name="momo"]
【桃】[r]「……那、那个……」
[np]

[character name="ryuichi"]
【龙一】[r]「嗯？」
[np]

[playcv storage="momo_momo_00350_031.ogg" name="momo"]
[character name="momo"]
【桃】[r]「虽然有点强硬的方式……学、学长觉得这样好吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「你指什么？」
[np]

[playcv storage="momo_momo_00350_032.ogg" name="momo"]
[character name="momo"]
【桃】[r]「就是……明明很快就能修好房间，可以回到期待已久的独居生活……」
[np]

[playcv storage="momo_momo_00350_033.ogg" name="momo"]
[character name="momo"]
【桃】[r]「结、结果却要和我……在这种狭窄的房间里同居……」
[np]

[character name="ryuichi"]
【龙一】[r]「……对我来说……反而更开心……」
[np]

[CG cgno=04 sabunno=02]

[playcv storage="momo_momo_00350_034.ogg" name="momo"]
[character name="momo"]
【桃】[r]「哎……？」
[np]

[character name="ryuichi"]
【龙一】[r]「虽然这话有点难为情……不过这样就能和桃酱待更长时间了……」
[np]

[character name="ryuichi"]
【龙一】[r]「可以像这样睡前聊聊天……说不定还能看到你可爱的睡脸……」
[np]

[playcv storage="momo_momo_00350_035.ogg" name="momo"]
[character name="momo"]
【桃】[r]「可、可爱……啊哇哇……！」
[np]

[r]桃酱顿时羞红了那张可爱的小脸，手忙脚乱地掩饰着羞涩。
[np]

[CG cgno=04 sabunno=01]

[playcv storage="momo_momo_00350_036.ogg" name="momo"]
[character name="momo"]
【桃】[r]「但、但是说的对呢……这样就能和学长待更久了……」
[np]

[playcv storage="momo_momo_00350_037.ogg" name="momo"]
[character name="momo"]
【桃】[r]「既、既然都成为恋人了……也应该比之前更加……亲密……」
[np]

[r]说到此处桃酱突然用双手夹住大腿，忸怩地扭动身子。
[np]

[character name="ryuichi"]
【龙一】[r]「……不过果然还是有点问题」
[np]

[CG cgno=04 sabunno=02]

[playcv storage="momo_momo_00350_038.ogg" name="momo"]
[character name="momo"]
【桃】[r]「哎……？」
[np]

[character name="ryuichi"]
【龙一】[r]「要是每天都这样……说不定会忍不住熬夜，早上赖床次数会变多哦」
[np]

[CG cgno=04 sabunno=04]

[playcv storage="momo_momo_00350_039.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊……噗噗……也是呢……♪」
[np]

[r]光是现在这样两个人单独待在同一个房间里，心中就雀跃不已。
[np]

[r]既然和桃酱这样聊下去恐怕会一直说到天亮，所以……
[np]

[playcv storage="momo_momo_00350_040.ogg" name="momo"]
[character name="momo"]
【桃】[r]「那……差不多该睡了吧？」
[np]

[character name="ryuichi"]
【龙一】[r]「是啊」
[np]

[r]我朝理解了我意图的桃酱点点头，钻进自己的被褥里。
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg05_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[momo storage="C_pajyama_M C_2_M"]
[playcv storage="momo_momo_00350_041.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_pajyama"]
【桃】[r]「那学长……晚安」
[np]
[FACEHIDE]

[char_erase name="momo"]

;//消灯
[backlay]
[freeimage layer=1 page=back]
[image storage="bg05_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]说完，桃酱关掉电灯……
[np]

[momo storage="A_pajyama_M AB_1_M"]
[playcv storage="momo_momo_00350_042.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_pajyama"]
【桃】[r]「……虽然我还有很多不足……今后请多多指教……♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我才是，请多指教」
[np]

[char_erase name="momo"]

[r]最后，交换完这样的话语……我们便缓缓沉入了梦乡。
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

[jump storage="scenario/momo/momo_00360.ks"]