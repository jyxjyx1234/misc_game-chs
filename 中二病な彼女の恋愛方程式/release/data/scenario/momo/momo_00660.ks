[SCENESTART file=momo_00660.ks]
;//momo_00660
;//BG:bg13_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:夜
;//日付:7/26(日)
;//CH:竜一,sifuku
;//CH:もも,sifuku

[r]随着电车摇晃回到车站前，在那里吃完晚饭……
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00660_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「哼哼哼～嗯……♪」
[np]
[FACEHIDE]

[r]和哼着歌心情愉悦的桃酱手牵着手踏上归途。
[np]

[momo storage="D_sifuku_M D_3_M"]
[playcv storage="momo_momo_00660_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「学长，今天真的很开心呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「能听到妳这么说，答应妳的请求也算值得了」
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00660_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「啊、对了……这还是我向答应任何要求的学长提议的约会呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「其实我到刚才为止都完全忘记这件事了」
[np]

[r]毕竟桃酱当时也说了完全没有生气，所以道歉的印象不深也是情有可原……
[np]

[r]不过。
[np]

[momo storage="B_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00660_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「哎嘿嘿……♪」
[np]
[FACEHIDE]

[r]将视线投向面朝前方、面带笑容走着的桃酱的侧脸。
[np]

[r]和桃酱初次见面的时候，总之就是文静又怕生……这样的印象比较强烈，但
[np]

[r]交往后发现了很多不为人知的一面，或者说……意外地有着大胆的地方。
[np]

[r]特别是在色色的事情上真的……不过也不是单纯追求身体愉悦的感觉。
[np]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00660_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「学长，怎么突然不说话了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没事……」
[np]

[r]夜风拂过汗津津的皮肤，带来些许清凉。
[np]

[r]这个容易害羞的桃酱在情事上格外主动的理由……
[np]

[r]或许正是因为……她内心其实非常渴望有个孩子吧。
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

[jump storage="scenario/momo/momo_00670.ks"]