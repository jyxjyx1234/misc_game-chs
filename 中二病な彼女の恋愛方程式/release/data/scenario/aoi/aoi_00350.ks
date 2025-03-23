[SCENESTART file=aoi_00350.ks]
;//aoi_00350
;//BG:bg10_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM11.ogg" time="500"]

;//TIME:昼
;//日付:7/15(水)
;//CH:葵,seifuku
;//CH:もも,seifuku

;//葵視点
[aoi storage="B_seifuku_M B_8_M" from="right" accel="0"]
[playcv storage="aoi_aoi_00350_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「哈……哈……」
[np]
[FACEHIDE]

[r]借着冲出教室的势头，在人来人往的走廊上奔跑。
[np]

[r]啊，我怎么会……！为什么，我——
[np]

;//\SEお腹の鳴る音
[wait time="500"]
[playse buf=5 storage="sound/00430.ogg"]
[wait time="1000"]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00350_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]「说什么肚子不饿，都是骗人的」
[np]

[r]仿佛在抗议一般，肚子咕～地叫了起来。
[np]

[r]可是，我没有撒谎……那时候，真的……真的，一点食欲都没有。
[np]

[r]和龙一一起，吃便当……一想到这里，胸口突然变得难受起来……
[np]

[r]明明上课时还感觉到的饥饿，突然消失得无影无踪……
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00350_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「……怎么办」
[np]
[FACEHIDE]

[r]看今天的情况，大家好像都要在教室里吃便当。
[np]

[r]那我现在就去屋顶，一个人把这个——
[np]

;//[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_aoi_00350_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「咦……葵？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[r]循声回头望去，桃正站在那里。
[np]

[r]她像是刚结束分班课程回来，手里攥着课本和笔记本，用困惑的眼神打量着我。
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00350_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「葵怎么一个人在这儿……？神原学长和千圣她们呢……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00350_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「这、这个……就……发生了些状况……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_aoi_00350_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「状况……？」
[np]
[FACEHIDE]

[r]承受不住桃纯真的目光，我不由自主垂下了头。
[np]

[r]攥着便当盒的手指微微加重了力道。
[np]

[momo storage="B_seifuku_M AB_1_M"]
[playcv storage="momo_aoi_00350_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「……那个，葵。方便的话……今天要不要一起吃午饭？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「诶……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00350_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「不对！应该说必须一起吃！就这么说定啦！」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00350_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「啊、啊……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00350_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「那我这就去拿便当过来，请稍等一下！」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_aoi_00350_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「我、我知道了……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//背景を屋上bg12_01に
[r]将学习用具换成便当盒的桃和我，两人来到了屋顶。
[np]

[aoi storage="A_seifuku_M A_9_M" trans=false]
[momo storage="D_seifuku_M D_5_M" trans=false]
[char_trans]
[playcv storage="momo_aoi_00350_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「唔、果然还是很热呢……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00350_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「不过人少倒是帮大忙了……如果觉得难受的话，换个地方也……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00350_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「不，没关系的……！我平时一直在教室吃饭……其实有点向往这里呢」
[np]
[FACEHIDE]

[r]幸运地发现一小块阴凉处，两人便在那里并肩坐下。
[np]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_aoi_00350_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「那我开动啦」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00350_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「我开动了」
[np]
[FACEHIDE]

[r]掀开盒盖，里面依旧是那盒令人食指大动的便当。
[np]

[r]这是绫濑和桃每天早起为我准备的便当啊……
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_aoi_00350_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「谢谢……桃」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_aoi_00350_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00350_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「啊、不……那个……一直以来、都帮大家做便当……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_1_M"]
[aoi storage="C_seifuku_M CD_1_M"]

[playcv storage="momo_aoi_00350_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「不用在意……确实、做饭是由我和千圣负责……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00350_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「但是相对的、打扫浴室和洗衣、院子除草这些活、都是葵你们在帮忙做嘛」
[np]
[FACEHIDE]

[r]听桃这么说并向我微笑，我的表情也不由得放松下来。
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00350_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「今天……天气也不错呢……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00350_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「是啊……」
[np]
[FACEHIDE]

[r]我们以悠闲的节奏夹着菜，一同仰望清澈的蓝天。
[np]

[r]远处可见的积雨云与近在耳畔的蝉鸣……盛夏的气息正扑面而来。
[np]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_aoi_00350_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「那个……葵」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「怎么了？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_aoi_00350_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「刚才你说的「很多事情」……能告诉我发生了什么吗？」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00350_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「哎……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00350_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「当然，如果是难以启齿的事情……直接告诉我也没关系」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00350_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[r]我此刻心中所怀揣的事情……
[np]

[r]虽然向人倾诉非常难为情……但如果不找个人说出来，或许会一直这样下去。
[np]

[r]既然如此……如果是桃的话——
[np]

[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_aoi_00350_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「……我是从龙一那里逃出来的」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_aoi_00350_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「从神原前辈那里……？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00350_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「我……自从和大家去游乐园之后……就变得有些奇怪……回过神来时，发现自己总是在想龙一的事情……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00350_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「最近连正常对视都做不到了。只要和龙一目光交汇，胸口就会发闷，心跳加速……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00350_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「……桃……这果然还是……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00350_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「看来你自己也察觉到了呢」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00350_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「嗯……」
[np]
[FACEHIDE]

[r]我其实也察觉到了。第一次看到龙一受伤的那天，这份感情就已经萌芽了吧。
[np]

[r]然后在共同生活的日子里，这份心情逐渐成长……
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00350_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「我…喜欢上龙一了」
[np]
[FACEHIDE]

[r]对龙一的恋慕之心，已然绽放成花。
[np]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_aoi_00350_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「太好了」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_1_M"]
[playcv storage="momo_aoi_00350_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「我本来还想着要是葵小姐迟迟不行动，必须由我来推葵小姐一把……！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_aoi_00350_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「看来不需要我多此一举了呢」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00350_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「等、等一下！桃、桃你早就发现了吗！？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_aoi_00350_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「是的。或者说，葵小姐的表现实在太过明显……说不定其他同伴们也都察觉到了呢」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「哎……哎哎哎哎哎哎哎哎哎！！？？　大、大家都指澪音和千圣吗！？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_aoi_00350_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「是啊。真珠星酱的话可能没什么兴趣……但那两位的话，肯定……」
[np]
[FACEHIDE]

[r]怎、怎么会这样……！我的心思居然早就暴露了吗……！？
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00350_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「呜……太、太丢人了……！！」
[np]
[FACEHIDE]

;//「澪音さんは～」を小声で
[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00350_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「没、没关系的。千圣小姐应该会体贴地装作不知情……澪音小姐就不清楚了」
[np]
[FACEHIDE]

[r]眼、眼前有画面了……！那个魔女知道我的心意后，挂着惹人厌的嘲弄笑脸捉弄我的样子浮现在眼前！！
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00350_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「可、可恶的魔女……既然知道了秘密就不能留活口……！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_4_M"]
[playcv storage="momo_aoi_00350_025.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「这句话听起来可不像是在开玩笑……不过太好了」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00350_028.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_aoi_00350_026.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「葵小姐的表情……比刚才明朗了许多」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00350_029.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]被桃这么一说，自己也真切感受到了。
[np]

[r]将深埋心底的情愫向他人倾诉后，心情是否真的会轻松许多……
[np]

[r]甚至觉得方才的烦闷，仿佛都消散在这片晴空的某处了。
[np]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_aoi_00350_027.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「看来已经不要紧了呢……♪」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00350_030.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「……桃，谢谢你」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00350_028.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「嘿嘿，不用客气……的说」
[np]
[FACEHIDE]

[r]没错……我，喜欢龙一。
[np]

[r]将这份心意化作言语……才得以切实确认。
[np]

[r]这样的我，此刻应当做的事……那便是……
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00350_031.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「桃、今天放学后有空吗？」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_aoi_00350_029.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「放学后吗？嗯，没问题的」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_aoi_00350_032.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「好……来助我一臂之力吧！作战会议！！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

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

;//JUMP:aoi_00360
[jump storage="scenario/aoi/aoi_00360.ks"]