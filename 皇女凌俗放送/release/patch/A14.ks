*A14|&sf.sname_A14
;■■■■■□□□□□■■■■■□□□□□■■■■■
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

;●　A14.選挙広報撮影 姉（恥辱）（大広間）
;●　（妹14に対応）
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●背景　bg01　宮殿内、大広間。(電燈光)
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在丽安的提议下，这个岛屿首次举行了选举。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
今天是政府为提高投票率而拍摄的宣传片。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
当然，这不仅仅是一档普通的宣传节目。既然是我来制作，一定会准备一些能让观众享受的玩意儿。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
嘿，卡秋娅．．．．．．呵呵。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
巴拉莱卡第一公主卡秋娅已经接待过许多根肉棒了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
丽安。真的，不是将军而是你在说话吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c001][r]
．．．．．．别说了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c002][r]
我亲自教了她几天，但她还是记不住

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c003][r]
现在只能在大选前一鼓作气灌输了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
看来是不能让她拿着提词卡念稿了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c004][r]
当然。那样是无法触动民众心弦的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
那也没办法了．．．．．．是吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c005][r]
所以这次只能由我这个宰相来负责宣传活动了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
原来如此
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c006][r]
我已经准备好了。要开始的话，就赶快开始吧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
啊，如果一直放任卡秋娅那样下去，她就会变得毫无用处了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
开始准备拍摄，立即开始启动摄像机。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*all_14
*all_15
;■ＢＧＭ設定
[bgmplay storage="bgm06"]

*|
;●背景　bg01　宮殿内、大広間。(電燈光)
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadtvon storage=bg01]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch10 storage=LCAB14]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch10 storage=live]

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_401]
[ud time=300]
[wait time=1000]
[mesw_on]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c007][r]
各位国民，大家好。我是宰相丽曼·丽安。很高兴认识各位。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c008][r]
相信大家已经知道，这次即将举行选举。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c009][r]
是要把我们的国家变成以民为本的民主制度，还是继续维持王政，这就是这次投票的关键。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_401]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c010][r]
这是关乎我国未来的重要选举，所以希望大家都能去投票。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_402]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c011][r]
当然，我相信这个国家会走向民主制度。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c012][r]
王室真的曾经给我们带来过什么好处吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c013][r]
我们被限制信息，只能听信国王所说的话。这样我们真的幸福吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_405]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c014][r]
国民应该享有自由平等，哪里还需要什么王政？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_405]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c015][r]
王族不过也是凡人一个，与我们并无二致。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c016][r]
看看这个堕落的王家的公主吧！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●ＣＧ　＜＜EV01_020＞＞
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV01_020a]
[ud time=500]
[wait time=1000]
[mesw_on]
;●　複数の男に犯されている姉姫。
;●　悦楽の表情に顔をゆがめて、淫らにあえいでいます。
;●　表情は歓喜、全裸

;■ＢＧＭ設定
[bgmplay storage="bgm05"]

[cm2]
映像中显示的是，公主卡秋娅正在角落里被多名男子侵犯的场景。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a001][r]
啊……嗯啊……啊，啊啊……嗯……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a002][r]
好硬啊，进到里面了……嗯……啊啊！哈啊……嗯，嗯……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c017][r]
这就是证明，王族和我们是一样的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c018][r]
即使是高贵的公主，只要被插入阳具，也会疯狂地乱了方寸
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c019][r]
哼，像这样疯狂的女人还真是少见啊……哼哼哼
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅的嘴里也被插入了淫棒，她的身体已经被淫液浸透了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a003][r]
嗯……，吸……吸吮……嗯吸，滋滋……，唔唔，嗯……啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●条件分岐ここから
;●１．現政権側有利
;●２．姉側有利
[if exp="f.getno == 14 && f.inmemory == 1"][jump target=*A14_01_a][endif]
[if exp="f.getno == 15 && f.inmemory == 1"][jump target=*A14_01_b][endif]
[eval exp="f.A14_win ='無'"]
[if exp="f.ch_a_point >= 5 && f.AEV02_on == 1"]
[eval exp="f.A14_win ='王'"][eval exp="f.a14_04 ='反発'"]
[eval exp="f.sijiritu     = f.sijiritu     /3 *2"]
[eval exp="f.tv_onare_old = f.tv_onare_old /3 *2"]
[jump target=*A14_01_b][endif]
[eval exp="f.A14_win ='軍'"][eval exp="f.a14_04 ='渇望'"][jump target=*A14_01_a]
[s]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*A14_01_a
;●１．現政権側有利
*|
;■ＢＧＭ設定
[bgmplay storage="bgm09"]


[cm2]
这个彻底被淫欲支配的公主开始自己握住另一根肉棒。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a004][r]
啊啊……啊，嗯……这根也寂寞了……我来伺候它吧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a005][r]
这根肉棒我要用嘴吸吮……唧溜，滋……吸，吸吮吸吮

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她紧紧地闭着嘴唇，一边用手撸动，一边同时给予口交。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅的口腔被阳具反复抽插着，就像被玩弄一般。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a006][r]
啊♪变这么大了，就放不进我的嘴里了呢

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a007][r]
嗯……嗯，唔……滋，啵……唧溜，溜
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她露出陶醉的表情，发出淫靡的水声，疯狂地蹂躏着那根肉棒。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这淫靡的声音让她自己和其他男人们都更加疯狂了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a008][r]
舔……滋，舔舔……吸吮，吸，吸……舔，哈……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a009][r]
呵呵呵……苦涩的汁液，已经进入了我的口中……♪

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅像是要向男人炫耀自己的阴道，用舌头舔舐吸吮，把汁液展示在外界空气中。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
黏糊糊的舌头上，唾液和精液混在一起。真是淫靡啊。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a010][r]
呢吸，吸吸吸……舔，舔……好吃，嗯……咽下，咽下……嗯嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a011][r]
我已经把精液全部喝下了……呢吸，吸溜……嗯，还有一些残留……呼噜噜噜！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她像孩子舔棒棒糖一样，疯狂地吮吸发出啧啧的水声，一滴不剩地全部吞下。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这样摩擦肉棒的粘膜，让男人全身颤抖。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a012][r]
嗯，嗯……呃，嗯……吸溜，吸……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a013][r]
啾！啾！哈啊……嗯啊……哎呀……嗯，吸个不停，前液却越流越多♪


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她扭动腰肢表达愉悦，一边高兴地继续吮吸淫棒。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她舔舐挺立的筋脉，再次吸吮溢出的汁液，贪婪地全部吞下。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a014][r]
前液很好吃，请全部给我吧……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a015][r]
吸溜……舔，嗯……吸溜，吸吸，呃，啊……嗯嗯……嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
其他男人也忍不住来到卡秋娅身边，把从极限处挤出的精液全部喷洒在她身上。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
更加沾满精液的卡秋娅，像是品尝温暖的感觉一样，扭动着身体。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a016][r]
啊……温暖的牛奶洒在我的乳房上，嗯，啊……好香，好棒……嗯嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a017][r]
嗯……啊，呀，嗯……呵呵，洒到我的脸上了……舔……嗯，吸溜……呵呵呵

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
姐姐一边舔舐流到嘴边的精液，一边继续吮吸肉棒。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅用湿润的眼神环视四周，微笑着看着自己正在抚慰的阴茎。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a018][r]
呵呵呵……我正在抚慰的这个也流出了前液，沾到我的手指上了……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a019][r]
看，我的手指都被你的液体弄得黏糊糊的了……啊，好舒服

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一边露出迷醉的表情，一边用手指搓弄着流出的液体，玩得很开心。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
虽然看起来就像个猪一样的脸。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a020][r]
竟然把我的手指弄得这么脏呢……呵呵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她用流出的前液涂抹在阴茎上。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
粗壮的肉棒就像涂了润滑油一样变得湿润。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a021][r]
你的阴茎已经有反应了哦
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a022][r]
被我用手指摩擦前液而感到兴奋，看来你和我一样都是变态呢♪

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她邪魅一笑，用手指快速套弄着。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在她手中变得粗壮坚硬的阳具，更加激起了她淫乱的欲望。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a023][r]
啊……嗯，嗯嗯……嗯，吸吮，吸吮……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a024][r]
啊！啊，啊……啊，我的小穴……被你的肉棒摩擦着好舒服

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
被一次次插入湿润的花穴，卡秋娅不禁仰起了身子。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她已经满身大汗，每次身体的颤抖都让汗水溅落在地上。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a025][r]
啊……啊，啊！嗯！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a026][r]
我的小穴好厉害哦……嗯，啊……啊，被狠狠地搅弄着……发出咕啾咕啾的声音

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c020][r]
呵呵呵……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
看着完全沦陷的卡秋娅，丽安忍不住笑了出来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c021][r]
看吧，这就是大家所崇拜的卡秋娅公主的真面目！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c022][r]
这样的贱猪怎么能好好治理国家呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c023][r]
这样一来，巴拉莱卡必将一蹶不振
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
丽安滔滔不绝地向民众诉说着。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这样一来，她的计划必将顺利实施。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a027][r]
啊！嗯……啊，我的身体……嗯，啊，我的大脑都要被快感冲刷得一片空白了……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a028][r]
我可能会在大家面前高潮了……嗯，啊啊……啊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
被剧烈的肉棒插入，卡秋娅扭动着身体。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
每当她感到快感时，阴道就会紧紧地夹住插入的阴茎，不断增加男人的射精感。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a029][r]
啊……嗯啊啊，嗯……呜。啊啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a030][r]
我的小穴，发出淫靡的声音，正在流水……嗯，啊哈，啊，……嗯，嗯，……哦，唔唔

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅在阴道口处发出淫荡的声音，看来她也在感到快感并为之欢愉。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a031][r]
啊……啊，嗯……呼，啊啊啊……嗯，啊啊，嗯……好，好……嗯，我的小穴要高潮了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a032][r]
嗯……啊，啊……呃，哈啊啊，啊……嗯，啊啊……啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
激烈的腰部动作，让卡秋娅的乳房淫靡地变形。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
乳头通红肿胀，坚硬如蕾，在地上摩擦，卡秋娅扭动着臀部，向正在进行活塞运动的男人抛媚眼。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a033][r]
啊……嗯，呃……唔！再用力抓挠我……嗯，唔，唔，呃

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a034][r]
唔嗯，好舒服……小穴太舒服了，止不住地在颤抖呢……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
眼神迷离，发出淫荡的娇喘声的卡秋娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
白皙的臀部颤抖着，一边握住淫棒套弄，一边期待着精液的到来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a035][r]
啊……唉呀，嗯嗯……要去了，要去了，粗大的肉棒要让我高潮了……啊啊啊……啊啊，嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a036][r]
请用滚烫的精液玷污我的身体……啊，嗯嗯
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她眨动着睫毛，身体微微颤抖。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她似乎也快到高潮了，从吮吸的双唇中流出唾液，但仍在不停地喘息。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a037][r]
啊，啊，不行了……嗯，啊，呜呜！请把你的精液洒在我的身上吧！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a038][r]
啊……嗯嗯！啊啊啊啊啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【男】[endnowait][r]
啊啊……卡秋娅公主……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
哇啊啊！哇！哇，哇……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

;●射精
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bgffffff]
[ud time=500]
[loadev storage=EV01_020a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
大量的精液被射进了阴道，连带着正在抽插的阴茎也全部被白浊的液体淹没。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a039][r]
啊……啊啊……嗯……哈，哈……好多精液……呵呵呵……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
目光迷离地沉浸在余韵中的卡秋娅，丽安趁机开始说教。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c024][r]
呵呵呵……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c025][r]
大家也都明白了吧，她所带来的恩惠，与娼妓完全一样

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c026][r]
为什么还要容忍她的存在呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c027][r]
为了不受不公正的制裁，大家一起起来吧！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
喔喔喔喔喔！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
男人们的欢呼声响彻整个宫殿。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这是……丽安的胜利。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
王政的终结了……
[p2]
;■ＢＧＭ設定
[bgmstop]

;●ＴＶ　ＯＦＦ
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadtvoff storage=bg000000]
[ud time=500]
[wait time=1000]
[mesw_on]

[return cond="f.inmemory == 1"]
[eval exp="sf.all_14  =1"]
[jump target=*A14_01_end]
[s]




;■■■■■□□□□□■■■■■□□□□□■■■■■
*A14_01_b

;●２．姉側有利
*|
;■ＢＧＭ設定
[bgmplay storage="bgm01"]


[cm2]
意识到镜头对准卡秋娅时，她突然变得很有镜头感。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●ＣＧ　＜＜差分＞＞
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV01_020b]
[ud time=500]
[wait time=1000]
[mesw_on]
;●　精液まみれで髪を掴まれて顔に男根を押し付けられている姉姫。
;●　苦しげで涙してますが毅然とした表情です。
;●　表情は怒り、全裸


[cm2]
虽然被插入并被浇上精液，散发着淫靡的气息，但她的表情仍然坚毅，保持着本来的样子。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a040][r]
嗯……呜，呃……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a041][r]
各位，不要被蒙骗……啊，嗯……不要被宰相的话语迷惑……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c028][r]
什么……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a042][r]
只要不满意，就立即变成恐怖分子，动用武力……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c029][r]
我，我是恐怖分子吗……！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a043][r]
宰相做过的事……嗯，嗯……就是这样……呃，嗯嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a044][r]
这种事情能被允许吗……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a045][r]
各位难道忘记了先王被处决的那天吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
虽然身体被肉棒压迫，但卡秋娅仍然没有停止说话。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a046][r]
我相信巴拉莱卡的人民不是任由恐怖分子横行的愚民。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a047][r]
我绝对不会承认这种自私自利的自由！！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在卡秋娅的有力言辞下，所有人都停下了动作。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a048][r]
直到现在，我的哥哥……即将成为国王的阿克拉斯王子，仍在战场上作战

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=A14a049][r]
请大家支持阿克拉斯王子。作为王室代表，我在此恳请各位

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
……哼
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
现在，国民只听你一个人的话。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
不错嘛，卡秋娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
能让敌军士兵和丽安闭嘴的力量。难怪我会想要夺取你的处女。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这场胜负，一瞬间就让国民的心被卡秋娅所吸引了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这样一来，丽安就没有胜算了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
是吧，丽安？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=A14c030][r]
啧……呜呜呜……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她无言地瞪视着卡秋娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
看来……已经定下来了。
[p2]
;■ＢＧＭ設定
[bgmstop]

;●ＴＶ　ＯＦＦ
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadtvoff storage=bg000000]
[ud time=500]
[wait time=1000]
[mesw_on]

[return cond="f.inmemory == 1"]
[eval exp="sf.all_15  =1"]
[jump target=*A14_01_end]




;■■■■■□□□□□■■■■■□□□□□■■■■■
;●条件分岐ここまで
*A14_01_end



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[return]

f
