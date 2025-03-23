[SCENESTART file=mion_00720.ks]
;//mion_00720
;//BG:bg06_01

;//TIME:昼
;//日付:8/30(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

;//青空背景
[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

[r]然后……
[np]

[r]为了能让前辈集中精力进行创作，伏木庄的大家都来帮忙了。
[np]

[r]为了让夜猫子的前辈能坚持熬夜创作，绫濑和桃酱准备了营养满点的夜宵……
[np]

[r]葵和真珠星也主动接替了打扫浴室和采购这些轮班制的杂务。
[np]

[r]而我也为前辈做了所有力所能及的事。
[np]

[r]刚才提到的那些杂务自不用说，前辈累的时候我会帮忙揉肩，说想早起时不论怎么被抵抗都会强行叫醒……
[np]

[r]为了不占用前辈的时间，我一直拼命克制着性欲生活到现在。
[np]

;//背景を澪音の部屋bg06_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]然后，在８月３０日的早晨……
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00720_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「……结束了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……」
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00720_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「结束了……终于，结束了……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「完成了吗！？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00720_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「是的……页数也控制在规定范围内……这样……就……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_4_M"]
[playcv storage="mion_mion_00720_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「接下来……只要校对……印刷……投稿……就完成了……对吧……」
[np]
[FACEHIDE]

[char_erase name="mion"]
[quake time=500]

[character name="ryuichi"]
【龙一】[r]「前辈！？」
[np]

[r]就像漫画里那样突然栽倒在桌上，没想到……
[np]

[playcv storage="mion_mion_00720_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_10_FACE_sifuku"]
【澪音】[r]「……呼……呼……」
[np]
[FACEHIDE]

[r]……这人居然睡着了。
[np]

[character name="ryuichi"]
【龙一】[r]「……哈哈」
[np]

[r]那张睡颜实在太过安详……我情不自禁露出了笑容。
[np]

[r]说起来她从昨晚就开始通宵赶稿……或许是完成后的安心感让困意突然涌上来了。
[np]

[character name="ryuichi"]
【龙一】[r]「……辛苦了，前辈」
[np]

[r]即使她听不见，我也必须说出这句话。
[np]

[r]给伏案而眠的前辈轻轻盖上薄毯……我悄悄离开了房间。
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

[jump storage="scenario/mion/mion_00730.ks"]