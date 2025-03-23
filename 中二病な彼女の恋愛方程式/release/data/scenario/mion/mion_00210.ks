[SCENESTART file=mion_00210.ks]
;//mion_00210
;//BG:bg13_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time="1000"]

;//TIME:夕
;//日付:7/11(土)
;//CH:竜一,sifuku
;//CH:澪音,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]打工回来的路上。被夕阳染红的街道上，脚步略显沉重。
[np]

[r]今天对葵说出口的那番话……并不是在逞强，也没有说谎的打算。那毫无疑问是我的真心话。
[np]

[r]我确实开始把澪音前辈当作恋爱对象来看待了……
[np]

[r]这已经是毋庸置疑的事实了吧。
[np]

;//背景を寮の外bg01_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]正因如此……正因如此确信自己的心意……
[np]

[r]绝对不想以别有用心为借口随便出手。
[np]

[r]所有这一切，都是因为想要珍惜和澪音前辈的关系……
[np]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]回过神来已经走到宿舍前了……看来是思考得太入神了。
[np]

;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了」
[np]

[r]本以为有人在才出声打招呼，却没有得到回应。
[np]

[r]真少见啊，圣水也不在客厅……算了，偶尔也会有这种情况吧。
[np]

[r]走上楼梯，来到澪音前辈的房间前……
[np]

;//\SEノック音
[playse buf=5 storage="sound/00690.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「前辈，你在吗？」
[np]

[r]不忘敲门确认是否可以进入。
[np]

;//ドア越し
[playcv storage="mion_mion_00210_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「啊……龙、龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯。我刚打工回来……」
[np]

;//ドア越し
[playcv storage="mion_mion_00210_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「这、这样……嗯，好、好的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……？」
[np]

[r]听起来她的回应有些慌张……应该没问题吧。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]既然已经得到允许，我便伸手推开了房门……
[np]

;//通常ＣＧ挿入
[CG cgno="51" sabunno="02"]
[fadeinbgm storage="sound/BGM09.ogg" time=1000]

[playcv storage="mion_mion_00210_003.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呃……！」
[np]

[r]与我对视的澪音前辈，无论怎么看都正在换衣服——
[np]

[character name="ryuichi"]
【龙一】[r]「哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎！！！！！！！？？？？？」
[np]

[playcv storage="mion_mion_00210_004.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「等……你、你声音太大了吧！」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、对、对不起！！」
[np]

[r]等等等等！重点不是这个吧！！
[np]

[character name="ryuichi"]
【龙一】[r]「前、前辈你、这不是正在换衣服吗……！！」
[np]

[playcv storage="mion_mion_00210_005.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「是、是啊……？可你却这样闯进房间……」
[np]

[character name="ryuichi"]
【龙一】[r]「我、我敲过门了！？然后前辈也说了可以……跟那时候完全一样啊！！」
[np]

[playcv storage="mion_mion_00210_006.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「那、那时候……？有这回事吗……？」
[np]

[r]你还要装傻吗……！我脑子里可是记得清清楚楚的啊！
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之、我先失陪——」
[np]

[playcv storage="mion_mion_00210_007.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「站住」
[np]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[playcv storage="mion_mion_00210_008.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「这、这是命令……不准离开房间，给我乖乖待在那里！」
[np]

[character name="ryuichi"]
【龙一】[r]「什……！」
[np]

[r]这莫名其妙的命令也和上次一样啊……！
[np]

[playcv storage="mion_mion_00210_009.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「……」
[np]

[r]话说……咦？
[np]

[playcv storage="mion_mion_00210_010.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「当、当然也不准移开视线……明白了吗？」
[np]

[r]说的话做的事都和上次一样……可是……
[np]

[playcv storage="mion_mion_00210_011.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「听、听到了吗？神原龙一……！」
[np]

[character name="ryuichi"]
【龙一】[r]「是、是的……！」
[np]

[r]澪音学姐……怎么好像有点害羞的样子……？
[np]

[playcv storage="mion_mion_00210_012.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呼……夏天胸口闷着汗真是难受呢……」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]前辈解开了内衣的束缚，让那对丰满的胸部完全暴露在外……
[np]

[CG cgno="51" sabunno="06"]

[playcv storage="mion_mion_00210_013.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呜……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「前、前辈……？」
[np]

[playcv storage="mion_mion_00210_014.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「怎、怎么了……？」
[np]

[character name="ryuichi"]
【龙一】[r]「没、没什么……」
[np]

[r]……不是我的错觉吧……？
[np]

[r]澪音前辈明明主动展示给我看……现在却好像对自己的行为感到羞耻……
[np]

[playcv storage="mion_mion_00210_015.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呜……」
[np]

[r]之前明明还以捉弄我为乐……现在却完全没有了那种态度……
[np]

[r]现在哪是冷静分析的时候！这种状况持续下去，对谁都没好处！
[np]

[r]所、所以……！
[np]

[character name="ryuichi"]
【龙一】[r]「我、我去洗个手！」
[np]

[playcv storage="mion_mion_00210_016.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「啊！！」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景をリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[r]我做好违反规定的觉悟，冲出前辈的房间跑下楼梯。
[np]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_mion_00210_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊～舒服多了……啊，这不是龙一嘛。欢迎回来～」
[np]
[FACEHIDE]

[r]呃、圣水小姐……看你这副样子，刚才是在上厕所吗……！
[np]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_mion_00210_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「嗯……？怎么了？你脸有点红哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、这个……今、今天主要是在户外工作，可能晒伤了吧！大概！」
[np]

[satomi storage="D_sifuku_M CD_1_M"]
[playcv storage="satomi_mion_00210_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「这样啊～毕竟已经完全是夏天了呢」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]好险，幸好对方接受了这种借口……！
[np]

[r]话说回来，澪音前辈……到底想做什么……？
[np]

[r]到底为什么要做那种事……
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

[jump storage="scenario/mion/mion_00220.ks"]