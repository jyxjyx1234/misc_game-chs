[SCENESTART file=mion_00390.ks]
;//mion_00390
;//BG:bg06_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time="1000"]

;//TIME:夜
;//日付:7/13(月)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「呼，吃得好饱……」
[np]

[r]吃完晚饭，在前辈房间里歇口气。
[np]

[r]本以为饭后又要开始中二战斗……
[np]

;//回想っぽく
;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="kaisou_1.png" left=0 top=0 layer=1 page=back mode=psscreen visible=true]
[trans method=crossfade time=1000]
[wt]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_mion_00390_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「开动吧。今天可是我做的炸虾排，做好心理准备再吃哦！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_mion_00390_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「炸虾排！？哇啊……！我开动啦！」
[np]
[FACEHIDE]

[char_erase name="aoi satomi"]

;//回想終了
;//背景を澪音の部屋bg06_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]……于是乎，葵全神贯注地大嚼着最爱的炸虾排……
[np]

[r]最后心满意足地回了房间，宿舍的和平就这样被圣水守护住了。
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00390_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「嗯……下周开始有限时活动……经验值双倍呢……」
[np]
[FACEHIDE]

[r]前辈凝视着显示屏，轻声呢喃道。
[np]

[character name="ryuichi"]
【龙一】[r]「在说网络游戏的事吗？」
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00390_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「是啊。正好要放暑假了，想着尽可能多参加活动……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00390_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「不过比起游戏，是不是该优先和男朋友相处呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个嘛……」
[np]

[r]面对这个提问和随之投来的视线，我一时不知该如何作答。
[np]

[character name="ryuichi"]
【龙一】[r]「对我来说当然希望能多和前辈相处……但同时也想尽量尊重你的兴趣爱好……」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00390_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「哎呀，真体贴呢。那要不我整个礼拜都黏在电脑前好了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那样的话，先不说相处时间的问题，对身体也太不好了吧……」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00390_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「是吗？不过认真玩网游可是需要辞掉工作那种程度的觉悟哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这么夸张！？」
[np]

[mion storage="D_sifuku_M CD1_9_M"]
[playcv storage="mion_mion_00390_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「当然我还没狂热到那种程度啦」
[np]
[FACEHIDE]

[r]前辈关掉显示着的游戏窗口，转身面向我。
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00390_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「所以今年暑假——就优先和龙一度过的时光吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噢，那真是太好了」
[np]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00390_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「不过作为交换，你可要让我这个女朋友玩得尽兴才行哦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「要是不答应的话……？」
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00390_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「……会发生很严重的事哦」
[np]
[FACEHIDE]


[r]好可怕！正因为不知道内容才更加可怕啊！！
[np]

[character name="ryuichi"]
【龙一】[r]「我、我知道了，会妥善处理的……」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00390_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「呵呵，这态度不错呢」
[np]
[FACEHIDE]

[r]对我来说，光是能和前辈在一起就已经感到无比幸福了……但前辈那边，究竟是怎么看待这件事的呢。
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之，先去多约会几次吧！」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00390_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「好啊，约会当然要的……不过难得开始交往了，今后也要多做些亲热的事情才行呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噗——————！！！」
[np]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00390_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「呀……！真是的，好恶心啦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「突然说这种话任谁都会喷出来的好吧！怎么突然就往禁区投直球啊！」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00390_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「不过，你也不会拒绝吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[mion storage="A_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00390_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「我已经不再是单纯的前辈，而是龙一的女朋友了……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00390_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「随时随地都可以哦……让我来帮你处理性欲需求，这样好吗？」
[np]
[FACEHIDE]

[r]她说着，露出恶作剧般的笑容……
[np]

[char_erase name="mion"]

[r]刚才的发言……莫非是在介意我之前说过的话？
[np]

[character name="ryuichi"]
【龙一】[r]「那、那倒也是。毕竟我们现在正在交往……」
[np]

[r]当然会看场合和时间……但原则上只要想做的时候就可以做这种事吧……
[np]

[r]这么一想，胯下突然就……呜啊，开始躁动起来了啊……！
[np]

[character name="ryuichi"]
【龙一】[r]「那、那比如说……现在怎么样？」
[np]

[mion storage="D_sifuku_M CD1_5_M"]
[playcv storage="mion_mion_00390_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「我拒绝」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么啊！？」
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00390_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「因为今天已经洗过澡了。浑身是汗地睡觉很难受的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……」
[np]

[char_erase name="mion"]

[r]可恶，我还以为完全会是那种展开呢……！
[np]

;//背景を空bg21_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]……之后，我和澪音前辈在同一时间躺下准备睡觉了……
[np]

[character name="ryuichi"]
【龙一】[r]「唔……！冷静、冷静啊儿子……！」
[np]

[r]回想起前辈的「多做几次吧」发言，或是昨天的初体验……
[np]

[r]在被窝里独自兴奋不已，迟迟无法入睡。
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

[jump storage="scenario/mion/mion_00400.ks"]