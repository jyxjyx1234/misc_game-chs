*BT02|&sf.sname_BT02
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

;●BT02　マイヤヒロインイベント２
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;● bg02　主人公、自室（夜の電燈光）

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]

[cm2]
今天晚餐时间和丽安在一起，之后我们也一直在一起行动。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
如果是有意义的话题，我也不介意花时间聊聊，但是整个用餐期间她一直在抱怨，我已经有些厌烦了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我不情愿地坐在椅子上，她也在对面坐下。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那么……你到底想让我做什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c001][r]
继续保持现状就好
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c002][r]
我看到那种软弱的人就觉得反胃
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■選択肢
[history output=false]
;●ランダムで設問の位置関係を変更
[rand min=1 max=100]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=0]


[cm2]
【丽安】[r]
我看到那种软弱的人就觉得反胃

[endnowait]
[if exp="f.rand >  50"][selecting sel=2 sel1='１． 是因为看到了自己过去的样子而讨厌吗？' t1=*bt02_01_a   sel2='２． 因为我们是完全相反的人吧' t2=*bt02_01_b][endif]
[if exp="f.rand <= 50"][selecting sel=2 sel2='２． 是因为看到了自己过去的样子而讨厌吗？' t2=*bt02_01_a   sel1='１． 因为我们是完全相反的人吧' t1=*bt02_01_b][endif]
[s]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*bt02_01_a
[cm2]
[eval exp="f.ch_b_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●１．過去の自分を見ているようで嫌なのか？
;●マイヤ＋１
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=0]


[cm2]
[nowait]【健二】[endnowait][r]
是因为看到了自己过去的样子而讨厌吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_203]
[ud time=300]
[cm2]
我微微扬起嘴角问道，丽安眨了眨眼睛，脸红了。

[wait time=2000]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_202]
[ud time=300]
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c003][r]
不是那样的！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]
[quake2 pow=1]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c004][r]
过去是无法抹去的，但至少我不是只会哭泣的人！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那么，就当作是这样吧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c005][r]
这是真的！
[p2]
[jump target=*bt02_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*bt02_01_b
[cm2]
;●２．俺たちとは正反対だからな
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|

[cm2]
[nowait]【健二】[endnowait][r]
我们是完全相反的人，连哭泣的时间都没有。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c006][r]
完全正确。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安严肃地点了点头。
[p2]
[jump target=*bt02_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*bt02_01_end
;●選択肢ここまで

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c007][r]
光是想到自己也流着那讨厌的血液，我就感到一阵寒意。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
卡秋娅和玛娅也是这么想的吧。看来我们很有共同语言呢。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c008][r]
怎么可能有共同语言！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安瞪视着我。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
呼……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
总之，我已经听完了丽安的抱怨。还有什么要说的吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c009][r]
……还有很多不满意的地方。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那就去找将军倾诉吧。关于玛娅的事，他也很乐意倾听。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c010][r]
……也就是说，健二你已经听腻了？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
被要求去找将军倾诉，丽安开始愤怒地颤抖。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
这当然。如果你想多待一会儿，就说点有意义的话吧。我可不是丽安的恋人。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]
[quake2 pow=2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=BT02c011][r]
将军可不是我的恋人！！！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
她的愤怒一下子达到了顶点，站起身从房间里走了出去。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……丽安真是容易生气啊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这样终于可以享受一些安静的时光了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
……玛娅，对吧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
虽然之前没什么兴趣，但是相处下来，这个女孩还真有一种奇特的魅力。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这个被娇养成长的公主妹妹，今后会以什么样的方式堕落下去，真让人期待啊。

[p2]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[return]


