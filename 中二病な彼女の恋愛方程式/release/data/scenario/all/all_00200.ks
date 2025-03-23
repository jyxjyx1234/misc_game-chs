[SCENESTART file=all_00200.ks]
;//all_00200
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:6/17(水)
;//CH:竜一,sifuku

[character name="ryuichi"]
【龙一】[r]「哈……」
[np]

[r]当宿舍的大家在自己房间熟睡的时候……
[np]

[r]在漆黑的客厅里，不自觉地漏出了叹息声。
[np]

[character name="ryuichi"]
【龙一】[r]「明天就是星期四了……」
[np]

[r]澪音前辈所说的试用期也即将过去一半。
[np]

[r]明明只要注意七天、短短一周的行为举止就好……
[np]

[character name="ryuichi"]
【龙一】[r]「……虽然澡堂里真珠星那件事，她本人好像并不在意……」
[np]

[r]但在盥洗室和厕所连续引发两次意外是事实。
[np]

[r]这样下去，好不容易住进的宿舍可能就得搬出去了吧……
[np]

[character name="ryuichi"]
【龙一】[r]「哼！」
[np]

[r]用双手啪地拍打自己的双颊。好痛……
[np]

[r]剩下的几天里，要比之前更加绷紧神经好好生活才行……！
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

;;//JUMP:all_00210
[jump storage="scenario/all/all_00210.ks"]
