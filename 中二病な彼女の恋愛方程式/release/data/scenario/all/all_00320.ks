[SCENESTART file=all_00320.ks]
;//all_00320
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

;//TIME:夜
;//日付:6/25(木)
;//CH:竜一,sifuku

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]用毛巾擦拭还带着些许湿气的头发，重新回到牢笼里。
[np]

[r]这里的浴池挺宽敞舒服的。总有种包场旅馆大浴场的感觉。
[np]

[character name="ryuichi"]
【龙一】[r]「啊，已经过零点了吗……」
[np]

[r]看了眼手机显示的时间，发现日期已经变更了。
[np]

[r]大家应该都睡了吧……啊，澪音前辈好像还醒着。门缝里透出灯光。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]平日热闹的起居室在这个时刻彻底安静下来。
[np]

[r]这是我在伏木庄唯一能独自思考的时间。
[np]

[character name="ryuichi"]
【龙一】[r]「好……」
[np]

[r]倒在被褥上，呆呆望着昏暗的天花板。
[np]

[r]来到这里马上快两周了……我和大家相处得还算好吧。
[np]

[r]虽然第一印象糟糕透顶……但至少比起那时，我们的关系应该已经改善许多了。
[np]

[r]不止剩下的一个月……直到毕业……都要一直……
[np]

[r]如果能在这个宿舍……一起……生活下去……
[np]

[r]……………………。
[np]

[r]…………。
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

;//JUMP:all_00330
[jump storage="scenario/all/all_00330.ks"]