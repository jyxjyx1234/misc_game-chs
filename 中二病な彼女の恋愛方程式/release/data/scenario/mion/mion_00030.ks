[SCENESTART file=mion_00030.ks]
;//mion_00030
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,sifuku
;//CH:千聖,seifuku

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「……唔……」
[np]

[fadeinbgm storage="BGM05.ogg" time=1000]
[r]下课钟声响起，迎来放学时分……但显然，从早上就困扰我的问题并不会因此迎刃而解。
[np]

[chisato storage="D_seifuku_M CD_2_M" trans=false]
[aoi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]
[playcv storage="aoi_mion_00030_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「龙一，该回宿舍了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，好……」
[np]

[r]我抱着书包，和葵、绫濑一起走出教室——
[np]

[character name="ryuichi"]
【龙一】[r]「……抱歉，我稍微留一会儿」
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_mion_00030_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「哎……？」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_4_M"]
[playcv storage="aoi_mion_00030_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「怎么了，是感应到第三机关的邪气了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是那样……总之，你们俩先回去吧」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_mion_00030_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「啊，嗯……知道了」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]目送两人离校后，我也离开了教室。
[np]

[r]那么，该怎么办呢……要说适合独自思考的地方，大概就是……
[np]

;//背景を屋上bg12_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM05.ogg" time=1000]

[character name="ryuichi"]
【龙一】[r]「……果然变成这样了」
[np]

[r]午休时才刚来过的屋顶，现在又一次造访。
[np]

[r]所幸除我之外似乎没有别人，此刻正处于暂时独享的状态。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]抓着齐胸高的护栏，凝视视野尽头最遥远的那栋大楼。
[np]

[r]暂且抛开下仆身份的问题……和澪音学姐共处一室生活……
[np]

[r]这样真的没问题吗？就像绫濑说的，又不是在交往的男女共处一室什么的……
[np]

[character name="ryuichi"]
【龙一】[r]「……但澪音学姐是认真的……」
[np]

[r]至少她不是那种会说「今早的事全是假的」这种无聊玩笑的人。
[np]

[r]虽然不知道她有何企图，但对方是认真的……
[np]

[character name="ryuichi"]
【龙一】[r]「我……到底想怎样」
[np]

[r]说实话比起继续待在客厅，能进房间自然更好。可是……
[np]

[r]果然还是说……多多少少，我好歹也有正常的常识吧。
[np]

[r]要寄住在女生的房间里……那个，怎么说呢，会有各种各样的问题……
[np]

[character name="ryuichi"]
【龙一】[r]「……问题……啊……」
[np]

[r]比如说万一撞见更衣场面，亲眼看到那对饱满的双峰什么的……
[np]

[r]要是我比学姐早起的话，就能尽情欣赏她的睡颜和睡衣姿态什么的……
[np]

[r]最糟糕的情况，搞不好会阴差阳错发展成男女关系之类的……！
[np]

[character name="ryuichi"]
【龙一】[r]「呃！」
[np]

[r]猛地睁大双眼，死死盯着蓝天上的浮云。
[np]

[r]……对啊……澪音学姐除了内在之外都很完美啊……除了内在之外。除了内在之外！
[np]

[r]长得国色天香，身材又一级棒……说要和这样的人同居一室……
[np]

[r]这种时候作为男人不该欣然接受吗？不该甘之如饴地接受吗……！？
[np]

[character name="ryuichi"]
【龙一】[r]「等等！或、或许……」
[np]

[r]主动邀请我同住一个房间……该不会是故意要诱惑我、捉弄我吧……
[np]

[r]该不会是想制造什么麻烦，把我赶出宿舍吧……！？
[np]

[character name="ryuichi"]
【龙一】[r]「呜啊啊啊……！」
[np]

[r]这、这种可能性完全存在……如果是那个魔女的话，她可是比圣水前辈更掌控着伏木庄大权的人！！
[np]

[r]该怎么办，我到底该怎么办——
[np]

[supica storage="B3_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……诶？」
[np]

[r]身后传来五十音图里的第一个音节。
[np]

[r]回头望去，那里站着——
[np]

[character name="ryuichi"]
【龙一】[r]「……真珠星？」
[np]

[r]换上便服抱着阿斯特拉尔玩偶的真珠星，正目不转睛地注视着我。
[np]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_mion_00030_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……那个……龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对啊，龙一。表现得很不错嘛」
[np]

[supica storage="B3_seifuku_M AB_4_M"]
[playcv storage="supica_mion_00030_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……是在取笑我吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是不是不是！只是一时兴起就脱口而出了……！」
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……是吗」
[np]
[FACEHIDE]

[r]真珠星站到围栏前，仿佛在说「无所谓」。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，你来做什么……？」
[np]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_mion_00030_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……看星星」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶，今天也看？」
[np]

[supica storage="B4_seifuku_M AB_5_M"]
[playcv storage="supica_mion_00030_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_seifuku"]
【真珠星】[r]「最近持续多日天气不好……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……说起来，前些日子才刚出梅呢」
[np]

[r]记得新闻里说比往年提前了许多……
[np]

[supica storage="C1_seifuku_M CD_3_M"]
[playcv storage="supica_mion_00030_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「……龙一刚才在做什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我？我……稍微想点事情」
[np]

[supica storage="B3_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……是吗」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话说真珠星你早上不在……应该没听说吧？」
[np]

[supica storage="D_seifuku_M CD_3_M"]
[playcv storage="supica_mion_00030_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「其实啊……今天早上被澪音学姐说「我要把龙一君收为下仆！」之类的」
[np]

[supica storage="B1_seifuku_M AB_4_M"]
[playcv storage="supica_mion_00030_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……不像呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「抱歉啦」
[np]

[r]虽然我确实有在模仿……不过，先不说这个了。
[np]

[character name="ryuichi"]
【龙一】[r]「然后她说不能一直待在客厅里，让我搬去和她同住」
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……澪音的房间？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对。虽然对我来说也不是坏事……但男女共处一室还是有点」
[np]

[supica storage="C3_seifuku_M CD_3_M"]
[playcv storage="supica_mion_00030_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「……有什么……不对劲吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个嘛，会有各种问题……」
[np]

[supica storage="B3_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「问题……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「问题…你不觉得有问题吗？」
[np]

[supica storage="A_seifuku_M A_1_M"]
[playcv storage="supica_mion_00030_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「…无法理解问题所在」
[np]
[FACEHIDE]

[r]…看来真珠星对于这类事情属于非常宽大的类型。
[np]

[character name="ryuichi"]
【龙一】[r]「而、而且其实我自己也在想这会不会是个陷阱…」
[np]

[supica storage="A_seifuku_M AB_8_M"]
[playcv storage="supica_mion_00030_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_seifuku"]
【真珠星】[r]「…陷阱…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「让我住进她房间，然后故意给我制造麻烦，好把我赶出宿舍——」
[np]

[supica storage="B4_seifuku_M AB_4_M"]
[playcv storage="supica_mion_00030_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「不可能」
[np]
[FACEHIDE]

[r]…被真珠星斩钉截铁地否定后，我只好把说到一半的话咽了回去。
[np]

[supica storage="D_seifuku_M CD_5_M"]
[playcv storage="supica_mion_00030_017.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「澪音不会做那种事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……..」
[np]

[r]这与平时温吞的真珠星截然不同的断言方式。
[np]

[r]既没有提高声调，也没有加重语气……但那份笃定却让人不由自主地信服。
[np]

[character name="ryuichi"]
【龙一】[r]「……为什么你会这么想？」
[np]

[supica storage="A_seifuku_M AB_12_M"]
[playcv storage="supica_mion_00030_018.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_seifuku"]
【真珠星】[r]「……是星星……在这样低语」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[r]被真珠星的话牵引着仰头望天……然而此刻仍是万里无云的青空。
[np]

[supica storage="C1_seifuku_M CD_3_M"]
[playcv storage="supica_mion_00030_019.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「澪音绝对没有那种企图……这是星辰的启示……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这、这样啊……」
[np]

[r]被搬出星辰启示这种说辞，实在不知该如何接话。
[np]

[r]但不可思议的是……为何会莫名觉得真珠星说的就是真相呢。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星是要观测完星象再回去吧？」
[np]

[supica storage="B2_seifuku_M AB_1_M"]
[playcv storage="supica_mion_00030_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「正是」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……那我先回去了」
[np]

[supica storage="D_seifuku_M CD_3_M"]
[playcv storage="supica_mion_00030_021.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]真珠星瞥了我一眼，又将视线投向天空尽头。
[np]

[char_erase name="supica"]

[r]最终虽未得出结论……但事到如今，也只能顺其自然了。
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

[jump storage="scenario/mion/mion_00040.ks"]