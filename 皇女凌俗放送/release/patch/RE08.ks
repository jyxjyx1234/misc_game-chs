*RE08|&sf.sname_RE08
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

;●RE08、支持率が中くらい
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02a]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_401]
[ud time=300]

[cm2]
[houkoku]
[setwindow]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=RE08c001][r]
接下来……支持率的定期报告，但是……
[houkoku]
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]
[houkoku]
[setwindow]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=RE08c002][r]
现政权的支持，与王制的支持相比，大约五五开吧

[houkoku]
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]
[houkoku]
[setwindow]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=RE08c003][r]
虽然情况有所好转，但也不能掉以轻心

[houkoku]
[p2]
[endhoukoku]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]
[return]


