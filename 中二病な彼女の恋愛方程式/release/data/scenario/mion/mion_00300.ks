[SCENESTART file=mion_00300.ks]
;//mion_00300
;//BG:bg06_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM13.ogg" time=1000]

;//TIME:夜
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[r]擦拭着彼此的体液，整理凌乱不堪的衣物……在这片难以名状的沉默笼罩下……
[np]

[r]我感受到体内正翻涌着某种前所未有的情绪，如同沸水般在血管里奔流。
[np]

[character name="ryuichi"]
【龙一】[r]「呃…」
[np]

[r]重获自由的我霍然起身，此刻正以居高临下的姿态俯视着仍瘫坐在地的澪音前辈。
[np]

[character name="ryuichi"]
【龙一】[r]「…您究竟想怎样」
[np]

[r]出口的质问竟比想象中更镇定。面对我灼灼的目光，前辈也不甘示弱地回瞪过来。
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00300_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「刚才不是说过了吗……看你好像积压太久的样子，就想着帮你解决生理需求——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我可没拜托过您」
[np]

[r]刀刃般锋利的声音让澪音前辈的嘴唇微微颤抖了一下。
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00300_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「…啊、这和您没关系，是我自己——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「都说没拜托过您做这种事啊！！」
[np]

[r]回荡在房间里的怒吼让前辈吃惊地瞪大了眼睛。
[np]

[character name="ryuichi"]
【龙一】[r]「……前辈您……」
[np]

[r]等等——
[np]

[character name="ryuichi"]
【龙一】[r]「您可能是存心捉弄我……觉得开这种玩笑很有趣……」
[np]

[r]别说了——
[np]

[character name="ryuichi"]
【龙一】[r]「可是我…可是我…！」
[np]

[r]偏偏在这种时候提起这么重要的事——
[np]

[character name="ryuichi"]
【龙一】[r]「我…！！是真心喜欢你的啊！！！！！」
[np]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00300_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
[quake time=500]
【澪音】[r]「呃……！！！」
[np]
[FACEHIDE]

[r]澪音前辈的瞳孔剧烈颤动。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]——我在说什么啊我……
[np]

[r]不对、不是这样的……我并不是、想要在这种状况下表明心意……！
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00300_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「龙一……这、是说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃——！！！」
[np]

[char_erase name="mion"]

[playcv storage="mion_mion_00300_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「啊！！」
[np]
[FACEHIDE]

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

[jump storage="scenario/mion/mion_00310.ks"]