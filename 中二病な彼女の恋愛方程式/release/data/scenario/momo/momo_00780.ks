[SCENESTART file=momo_00780.ks]
;//momo_00780
;//BG:bg15_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:昼
;//日付:8/3(月)
;//CH:竜一,sifuku
;//CH:もも,sifuku

[r]……虽然我本打算一直保持决心等待检查结果，可是……
[np]

[character name="ryuichi"]
【龙一】[r]「……桃酱？」
[np]

[momo storage="D_sifuku_M D_6_M"]
[playcv storage="momo_momo_00780_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_sifuku"]
【桃】[r]「～……！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]从诊室出来的桃酱一言不发地跑出了医院……
[np]

[r]我匆忙付完诊疗费取回保险证后，慌忙追赶她的背影。
[np]

[r]而现在桃酱……只是在我身边红着脸，连一句话都不肯回答。
[np]

[r]看这样子，至少似乎不是桃酱所希望的结果……
[np]

[character name="ryuichi"]
【龙一】[r]「那个，桃酱……结果……」
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00780_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「……没…………事……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？」
[np]

[r]经过数次呼唤后，终于转向我的桃酱……
[np]

[r]那张泫然欲泣的脸庞，此刻正染得通红——
[np]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_momo_00780_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「不要啦呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜！！！！！！！」
[np]
[FACEHIDE]

[char_erase name=momo to=left time=800 fade=true]

[character name="ryuichi"]
【龙一】[r]「桃酱————————————！！？」
[np]

[r]那速度，简直和之前回家路上被爽史目击到中二病现场时不相上下……
[np]

[r]现在可不是冷静旁观的时候！不追上去不行！！
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

[jump storage="scenario/momo/momo_00790.ks"]