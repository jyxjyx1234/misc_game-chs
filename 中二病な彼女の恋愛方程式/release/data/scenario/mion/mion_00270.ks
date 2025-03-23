[SCENESTART file=mion_00270.ks]
;//mion_00270
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
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夕
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[r]离开车站前，踏上返回宿舍的归途。
[np]

[r]在活力十足的蝉鸣声中，混杂着从远方传来的暮蝉鸣叫。
[np]

[r]能有余裕聆听这般充满夏日黄昏气息的声音，说明现在……
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00270_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「……」
[np]
[FACEHIDE]

[r]我与澪音前辈之间，只有沉默在空气中流淌。
[np]

[r]在游戏厅两人同坐一席打游戏时，我还以为这是和好的机会呢……看来是太天真了。
[np]

[r]不过一直沉默下去也很尴尬……要不试着开启个话题吧。
[np]

[character name="ryuichi"]
【龙一】[r]「哎呀——刚才的游戏真是可惜啊」
[np]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00270_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「……若是平时，那种程度的对手根本不足为惧……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00270_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「今天因为有碍事的人在才会分心，没能发挥出真正的实力啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、碍事的人…明明是前辈说要跟过来的啊」
[np]

[mion storage="C_sifuku_M CD1_9_M"]
[playcv storage="mion_mion_00270_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[r]或许连她自己都意识到说了不该说的话……澪音前辈保持着沉默的姿态。
[np]

[r]面对这样的她，我既没有感到焦躁……反而暗自松了口气。
[np]

[r]我也不想吵架啊。只想修复和澪音前辈的关系，回到从前那样……不，甚至要比之前更——
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00270_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「说起来……我看到了哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看到什么？」
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00270_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「在游戏厅和我身体紧贴的时候……你又起反应了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]还以为没被发现，结果早就暴露得一干二净了吗……！
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00270_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「不只是在房间里，连在外面都会兴奋……难道全天下的男人都这样吗？」
[np]
[FACEHIDE]

[r]前辈带着嘲弄的口吻让我紧紧咬住嘴唇忍耐着。
[np]

[r]此刻要是反驳的话，又会演变成争吵……更重要的是，我确实起了反应是事实。
[np]

[r]可是即便如此……我会变成那样，还不都是因为你……被前辈你做了那种事……
[np]

[r]想要倾诉这份感情……却又犹豫是否该说出口。
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00270_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]随后，沉默再次笼罩了两人之间。
[np]

[r]直到回到宿舍……这份寂静都未被打破。
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

[jump storage="scenario/mion/mion_00280.ks"]