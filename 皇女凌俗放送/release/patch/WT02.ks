*WT02|&sf.sname_WT02
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

;●WT02、妹の事を語る姉姫、それに対してケンジは……
;姉姫＝鎖でつながれている　と書かれているが、通常立ち絵で代用する

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;● bg01　宮殿内、大広間。(電燈光)

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01b]
[ud time=500]

[cm2]
临近播出日期时，懂行的人就会忙得不可开交。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|

[cm2]
我也不例外，正在赶往在另一个房间进行的会议。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_203]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a001][r]
好痛啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
被铁链锁住的卡秋娅，发出尖锐的叫声怒斥士兵。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
怎么了，卡秋娅？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]
听到我的声音，她浑身一颤。小心翼翼地抬起头，与我对视。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
虽然被恐惧笼罩，腰也有些发软，但她的眼神中仍保持着清醒。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a002][r]
健二……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
从内心深处发出的声音。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a003][r]
你竟敢欺骗我！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
什么事？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_203]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a004][r]
别装傻！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a005][r]
你不是说过不会伤害玛娅的吗！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a006][r]
每晚我都能听到她的哭声。她一直在呼唤家人的名字。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a007][r]
但是，我现在什么也帮不了她……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a008][r]
你能理解我这种痛苦吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■選択肢
[history output=false]
;●ランダムで設問の位置関係を変更
[rand min=1 max=100]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01b]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=0]


[cm2]
【卡秋娅】[r]
你能理解我这种痛苦吗？

[endnowait]
[if exp="f.rand >  50"][selecting sel=2 sel1='１．我也是人类啊' t1=*wt02_01_a sel2='２．我不明白，因为我没有家人' t2=*wt02_01_b][endif]
[if exp="f.rand <= 50"][selecting sel=2 sel2='２．我也是人类啊' t2=*wt02_01_a sel1='１．我不明白，因为我没有家人' t1=*wt02_01_b][endif]
[s]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*wt02_01_a
[cm2]
[eval exp="f.ch_a_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●１．まぁ、俺も人の子だからな
;●カチェア＋１
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01b]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|

;■ＢＧＭ設定
[bgmplay storage="bgm07"]


[cm2]
[nowait]【健二】[endnowait][r]
我也是人类啊，我能理解你的感受
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a009][r]
那就好！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
正因为我知道痛苦，所以才能伤害你们

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a010][r]
唔……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
卡秋娅咬紧嘴唇，低下了头。
[p2]
[jump target=*wt02_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*wt02_01_b
[cm2]
;[eval exp="f.ch_b_point_get +=1 "][seplay buf=&sf.buf_se storage=se30]
;●２．分からない、俺は家族が居ないからな
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01b]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

[cm2]
[nowait]【健二】[endnowait][r]
我不明白，因为我没有家人
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_204]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a011][r]
诶……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我……是个孤儿
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a012][r]
原来如此……吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
卡秋娅的表情瞬间变了。不是惊讶，而是带着同情的表情。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

;■ＢＧＭ設定
[bgmplay storage="bgm07"]

[cm2]
[nowait]【健二】[endnowait][r]
哼哼，我只是在开玩笑而已
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]
我露出笑容，但她的脸上却写满了愤怒。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a013][r]
你竟然敢对我说谎……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
真是个纯真的公主啊。哈哈哈！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我的笑声让卡秋娅的肩膀颤抖，满是怒意。
[p2]
[jump target=*wt02_01_end]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*wt02_01_end
;●選択肢ここまで
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01b]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=0]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*|
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

[cm2]
[nowait]【健二】[endnowait][r]
那么，我们下次节目见吧……哈哈哈哈哈！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=WT02a014][r]
……啧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
卡秋娅狠狠瞪了我一眼，被士兵带走了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
……下次见面我会很期待的。
[p2]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[return]

