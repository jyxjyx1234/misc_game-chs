*END03|&sf.sname_END03
;■■■■■□□□□□■■■■■□□□□□■■■■■
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm05"]

;● 王制側勝利の姉END END03
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●背景　bg02　主人公、自室（昼）
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02a]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
今天从宫殿外也能听到民众的声音。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【国民们】[endnowait][r]
卡拉斯特，从宫殿里滚出来吧！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【国民们】[endnowait][r]
这里不是你们该待的地方！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
最近一直都是这样。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
反卡拉斯特政权的势力经常组织示威游行和言论集会，手举标语横幅。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
民众的意识已达到顶峰，我们陷入了绝境。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡拉斯特也调动了军队亲自来警卫。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
不过，这只是时间问题而已，大家都有这种感觉。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●ＳＥ（大広間の扉が無理矢理開けられる音。どーん！）
[seplay buf=&sf.buf_se storage=se07]
[quake2 pow=1]

[cm2]
哇哦哦哦哦哦！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
是什么声音．．．？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
伴随着轰鸣声，从宫殿内传来了大量的呼喊声。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
难道说．．．
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
民众冲到这里来了吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
那些只拿着标语的家伙，怎么可能？宫殿入口还有士兵把守呢。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一股令人不快的汗水顺着喉咙流了下来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●ＳＥ（扉の開く音）
[seplay buf=&sf.buf_se storage=se08]


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_204]
[ud time=300]

[cm2]

[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=END03d001][r]
老板，国民们已经！！！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一脸惊恐的香苗冲了进来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
啊……看来是这样。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她显得十分慌乱，我勉强还能保持冷静。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_204]
[ud time=300]

[cm2]

[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=END03d002][r]
趁还来得及，快点逃吧！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
逃？在这种情况下，哪里逃得掉。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
大部分士兵都被派去镇压各地的暴乱了，这里只剩下少数人。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
要是没有武器还好说，可现在大批民众手持武器冲了过来，我们根本逃不掉。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
得想办法才行
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

;●背景　bg01　宮殿内、大広間。(電燈光)
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]
[quake2 pow=1]

[cm2]
哇哦哦哦哦哦！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
这、这是……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我们到达大厅时，激烈的枪战已经打响了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c001][r]
健二！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
丽安发现了我，急忙跑了过来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
丽安！你平安无事！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_405]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c002][r]
勉强
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch05_404]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c003][r]
我原以为只是一场示威活动，没想到他们竟然在标语后面藏了武器！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
……原来如此，这就解释得通了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
从二楼往下看，将军正在与反对派激烈交战。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
虽然腐败，但作为军人，在这种时候还是可靠的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]


[cm2]

[nowait]【卡拉斯特】[endnowait][r]
愚蠢的平民！为什么听不懂我们的话语！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]


[cm2]

[nowait]【卡拉斯特】[endnowait][r]
君主制已经结束了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【兵士】[endnowait][r]
将军，请快点逃走！这里已经……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]


[cm2]

[nowait]【卡拉斯特】[endnowait][r]
白痴！逃跑是绝对不可能的！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]


[cm2]

[nowait]【卡拉斯特】[endnowait][r]
我必须向这个国家的人民解释，直到现在这个国家从未拥有的民意！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
君主制忽视了每个人的人格，只会带来危害！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
我们播放了政见宣传，国民们才渐渐学会自己思考。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
我们不能让这刚刚萌芽的感情熄灭！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]

[nowait]【兵士】[endnowait][r]
将军……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
被将军训斥，士兵感动不已。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
我会战斗！为了这个国家的未来！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
啊啊啊啊啊啊啊啊啊啊！！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡拉斯特拿着枪反击。看到这一幕，正在听将军讲话的士兵前来支援。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
愚蠢的家伙们啊啊啊啊啊！！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
将军们一边开枪一边冲锋。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但是，他们的英勇行为最终化为乌有，陷入重重包围。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_203]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c004][r]
真是愚蠢……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c005][r]
这些政治理念，不都是我教给他们的吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c006][r]
竟然真的相信了，真是大傻瓜
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
丽安冲着将军投去冰冷的目光。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但是，她的话语中却透着一丝温暖的血意。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]

[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=END03c007][r]
陪着傻瓜玩也真是累人
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]



[cm2]
她嘴角泛起一丝冷笑，眼神坚毅，下定了决心。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

;●背景　bg01　宮殿内、大広間。(電燈光)
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]
[quake2 pow=1]

[cm2]
哇哦哦哦哦哦！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
民众的势头越来越猛烈。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
最终，一楼被完全控制，我们这些在二楼的人也被彻底包围了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
被攻占的宫殿大厅。我们这些没有武器的人被押到一楼中央。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我很想设法解决，但是无能为力。
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
远处传来悠然的脚步声。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
直觉告诉我，这是谁的脚步声，我似乎无意中记住了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
咔嗒……，咔嗒……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我的心脏随着脚步声的节奏跳动。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
卡秋娅……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
获救的卡秋娅走进大厅，民众欢呼起来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
随后，玛娅也来到了这里。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【国民】[endnowait][r]
快把公主们请上前来！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
该死的……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在这个我曾经犯罪的地方，我被作为罪犯押解到她们面前。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
真是命运多舛啊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●ＣＧ　EV04_012
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV04_012a]
[ud time=500]
[wait time=1000]
[mesw_on]
;●銃を構えた兵士がずらりと囲み、その真中に右手を上げて発砲を止めている姉姫の姿。
;●逆光で見えにくいが姉姫の表情は険しい。


[cm2]
我站起身来，卡秋娅举起右手，持枪的人立即对准了我。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a001][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
姐姐公主冷冷地盯着我，她脸上的表情透露出对我的仇恨。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
我就这么让你恨吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a002][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
那就开枪吧，就在你被我夺去贞操的这个地方――

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我的挑衅让卡秋娅咬住了嘴唇。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她眉间的皱纹更深了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但是……过了一会儿，她的手还是没有落下。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●黒背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]
;■ＢＧＭ設定
[bgmstop time=2000]

[cm2]
最终，卡秋娅没有开枪打我。………………。…………。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;●背景　bg02　主人公、自室（昼）
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02a]
[ud time=500]

;■ＢＧＭ設定
[bgmplay storage="bgm10"]

[cm2]
几天后……。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
今天是我回日本的日子。作为被驱逐出境的人，我竟然能活着回去。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

;●ＳＥ（扉が開く音）
[seplay buf=&sf.buf_se storage=se08]







[cm2]
随着房门打开的声音，卡秋娅带着士兵出现在眼前。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
我还以为会无人送行呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
你特地来送我，还真是有趣啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_205]
[ud time=300]

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a003][r]
我有些事想问你
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_202]
[ud time=300]

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a004][r]
因为我们以后再也不会见面了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她用直视的眼神看着我。那不是当时充满仇恨的眼神，而是迷人的聪慧之眼。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我一生都不会忘记这双眼睛。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
如果我能回答的话
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a005][r]
那么这次的结果，是否可以单纯地认为是人心引导失败了呢？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_205]
[ud time=300]

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a006][r]
还是说……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
宝石般美丽的双眸，微微泛起了水光。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她在询问，我是否为了拯救她而故意导致了这个结果。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
是否为了拯救她而刻意失败了。
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
我苦笑着提起了脚下的行李箱。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
再不走就要赶不上飞机了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_205]
[ud time=300]

[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a007][r]
健二……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
虽然被叫住了，但我还是离开了房间。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

;●黒背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]

;●背景　bg13　機内
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg13]
[ud time=500]

[cm2]
和橘一起，登上了飞机。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
然后，起飞了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
透过窗户望向外面的我，在起飞的那一刻，看到了在小丘上送别的两个身影。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
卡秋娅……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


;●ＣＧ　EV04_013
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV04_013a]
[ud time=500]
[wait time=1000]
[mesw_on]
;●風邪の吹く少し小高い丘で王子と一緒に飛行機雲を見送っている姉姫。


[cm2]
轰隆隆……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
卡秋娅和王子一起，目送着离开这座岛屿的飞机。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在耀眼的阳光下，舒适的微风拂过卡秋娅的脸颊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|



[cm2]

[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=END03a008][r]
所有的答案都在风中啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她喃喃自语着，目送飞机消失在视野中。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这座岛屿，将会比以往更加美好。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
经历了政变后，受到民意支持的国民，在聪明的王子和公主的治理下，国家将会变得更加繁荣。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
巴拉莱卡，将会变成一个更加美丽的天堂。
[p2]




;■■■■■□□□□□■■■■■□□□□□■■■■■
[return]

