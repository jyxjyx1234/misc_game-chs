*CT02|&sf.sname_CT02
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm02"]

;■変更
;リアンの持っているディスクをビデオテープに変更
;
;それに伴い、
;リアンのセリフを、一部変更
;　ディスク　→　ビデオテープ
;　データ　→テープ
;


;■■■■■□□□□□■■■■■□□□□□■■■■■□□


;● CT02、リアンヒロインイベント２ リアンコレクション　黒の章
;● bg01　宮殿内、大広間。(電燈光)

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c001][r]
健二
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
当我在宫殿里走动时，丽安叫住了我。回头一看，她手里拿着一盒录像带。

[p2]

;訂正前
;宮殿内を歩いていると、リアンに呼び止められた。[r]
;振り返ると、彼女はディスクを手に持っていた。


;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_202]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c002][r]
我刚刚拿到了前几天播放的节目的录像带
[p2]
;訂正　データ　→　テープ
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c003][r]
晚上的时候，我打算在房间里看。健二要不要一起看？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
好吧．．．那等我们有时间的时候，你再叫我一声

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_202]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c004][r]
好的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
不过，我们为什么要再看一遍呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
对我的疑问，丽安嘴角上扬。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c005][r]
因为里面有别人的不幸
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_202]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c006][r]
仅仅拿在手里，就能感受到快感
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c007][r]
如果里面有我讨厌的人，那就更好了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她亲吻了录像带，微笑着。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c008][r]
啊．．．我现在就想杀了他们．．．
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c009][r]
我想割断他们的喉咙，挖出他们的眼球，把内脏撕成八块．．．

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安眨了眨睫毛说道。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c010][r]
但是，短暂的痛苦并不能赎清你们的罪孽
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c011][r]
长期遭受侮辱和羞辱才更适合你们

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c012][r]
健二也这么认为吧？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
．．．是啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
当现政权的支持率上升，巩固了其地位的那一刻，她的复仇就结束了。但这也意味着要摧毁卡秋娅等人的精神。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c013][r]
喂，健二。为什么别人的不幸会让人如此愉悦呢？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■選択肢
[history output=false]
;●ランダムで設問の位置関係を変更
[rand min=1 max=100]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=0]


[cm2]
【丽安】[r]
喂，健二。为什么别人的不幸会让人如此愉悦呢？


[endnowait]
[if exp="f.rand >  50"][selecting sel=2 sel1='１． 因为丽安认识到了仇恨这种情感' t1=*ct02_01_a   sel2='２． 因为上帝注定了丽安会这样' t2=*ct02_01_b][endif]
[if exp="f.rand <= 50"][selecting sel=2 sel2='２． 因为丽安认识到了仇恨这种情感' t2=*ct02_01_a   sel1='１． 因为上帝注定了丽安会这样' t1=*ct02_01_b][endif]
[s]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*ct02_01_a
[cm2]
[eval exp="f.ch_c_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●１．リアンが憎しみという感情を知ったからだ
;●リアン＋１
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|

[cm2]
[nowait]【健二】[endnowait][r]
是因为丽安认识到了仇恨这种情感
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c014][r]
．．．是啊，也许是这样

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安自嘲般地轻笑了一下。
[p2]
[jump target=*ct02_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*ct02_01_b
[cm2]
;●２．神がリアンをそう運命づけたからです
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|

[cm2]
[nowait]【健二】[endnowait][r]
是因为上帝注定了丽安会这样
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_203]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c015][r]
上帝注定了我会这样．．．？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c016][r]
……是啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安的声音带着一丝冷冽的气息。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c017][r]
那么，我们应该感谢上帝……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c018][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
她本想再说些什么，但最终还是没有说出口。

[p2]
[jump target=*ct02_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*ct02_01_end
;●選択肢ここまで


*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c019][r]
也许我的房间会被录像带塞满

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那时候就给宰相增加专用房间吧。反正这里的宫殿房间数也很多

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c020][r]
也是，那就这么办
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=CT02c021][r]
那么，再见。等会儿我们一起看录像带吧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
好的……那就再见
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安点了点头，然后离开了我的面前。
[p2]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[return]


