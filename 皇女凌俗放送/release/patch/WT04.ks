*WT04|&sf.sname_WT04
;■■■■■□□□□□■■■■■□□□□□■■■■■
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

;●WT04、姉妹を語るタチバナ、それに対してケンジは……
;■■■■■□□□□□■■■■■□□□□□■■■■■
;● bg02　主人公、自室（夜）

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]

[cm2]
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
吃完晚饭后，我把香苗带回了房间。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
看来这里确实是个南国乐园，水果种类真是丰富啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
不过我还是不太喜欢喝纯椰子汁
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_204]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d001][r]
对我们日本人来说，这确实是一种陌生的味道呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_203]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d002][r]
不过，卡秋娅小姐和玛娅小姐似乎很喜欢呢

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
嗯……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_204]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d003][r]
最近我一直在想，那两个人好像有点脱离现实呢

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_206]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d004][r]
我听说卡秋娅小姐做不了用火的菜，玛娅小姐也从未和朋友们玩过

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
做不了用火的菜？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d005][r]
是的。据说是因为专属厨师的嘱咐，说火太危险不让她们使用

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_204]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d006][r]
卡秋娅小姐一直都遵守着这个规矩
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
那么玛娅就一直被年长的人们围绕着，过着幸福的生活了，对吧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d007][r]
是的，就是这样
[p2]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■選択肢
[history output=false]
;●ランダムで設問の位置関係を変更
[rand min=1 max=100]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=0]


[cm2]
【香苗】[r]
是的，就是这样

[endnowait]
[if exp="f.rand >  50"][selecting sel=2 sel1='１．作为前皇女，这也算是正常的吧' t1=*wt04_01_a sel2='２．毕竟只是前皇女而已' t2=*wt04_01_b][endif]
[if exp="f.rand <= 50"][selecting sel=2 sel2='２．作为前皇女，这也算是正常的吧' t2=*wt04_01_a sel1='１．毕竟只是前皇女而已' t1=*wt04_01_b][endif]
[s]
;■■■■■□□□□□■■■■■□□□□□■■■■■

*wt04_01_a
[cm2]
[eval exp="f.ch_a_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●１．元皇女なら、あり得る話だな
;●カチェア＋１
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]
[nowait]【健二】[endnowait][r]
作为前皇女，这也算是正常的吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
但对于平民来说，这是难以理解的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
不过，她们也不会过上普通人的生活
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d008][r]
是啊……连一个普通人的幸福都
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
对，她们一生都要作为国民的发泄口存在

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_205]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d009][r]
呵呵，真可怜♪
[p2]
[jump target=*wt04_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*wt04_01_b
[cm2]
[eval exp="f.ch_b_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●２．所詮は元皇女か
;●マイヤ＋１
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]
[nowait]【健二】[endnowait][r]
毕竟只是前皇女而已
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d010][r]
当皇女真是不方便啊。就连玛娅小姐，一个人都活不下去呢

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
她不需要一个人生活
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[nowait]【健二】[endnowait][r]
她以后也会像母狗一样吃着食物，取悦大家的

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_205]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d011][r]
呵呵，这倒也是♪
[p2]


[jump target=*wt04_01_end]





;■■■■■□□□□□■■■■■□□□□□■■■■■
*wt04_01_end
;●選択肢ここまで
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]
[nowait]【健二】[endnowait][r]
好了，这种无聊的话就到此为止吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[cm2]
[nowait]【健二】[endnowait][r]
赶快完成今天的工作吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_205]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=WT04d012][r]
「是的，老板」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗微微一笑，立即开始准备工作。
[p2]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[return]

