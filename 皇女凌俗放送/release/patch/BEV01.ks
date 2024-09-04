*BEV01|&sf.sname_BEV01
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

;● マイヤルート01 BEV01.txt
;画面を揺らす効果として　[quake2 pow=1]　を使用する
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;● bg02　主人公、自室（夜の電燈光）
*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]

[cm2]
夜……。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我已经完成了今天应该做的所有事情，现在只剩下等待入睡的时间。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我本可以去找香苗或丽安聊聊天，但我现在也没什么这种心情。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
不如去找玛娅聊聊吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她应该是个不错的聊天对象。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她可能会害怕而不愿意说话，不过我想玛娅应该不会完全无视我。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;● bg04　妹姫、監禁室（夜の電燈光）

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg04c]
[ud time=500]

[cm2]

[nowait]【健二】[endnowait][r]
嗨，玛娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b001][r]
啊啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]
我一个人走进房间，玛娅看到我后立刻往后退了一步。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b002][r]
玛、玛娅有什么、什么事吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
没什么。我无聊了，就来看看你
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b003][r]
啊……无聊就来看我？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|


[cm2]

[nowait]【健二】[endnowait][r]
我和玛娅不一样，我想见谁就能见谁。我想犯罪的时候，随时都能去犯罪

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b004][r]
不、不要……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
很遗憾，玛娅是没有人权的。也就是说，她没有拒绝的权利

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_202]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b005][r]
为什么……你能说出这样的话呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她努力地发出颤抖的声音，想要隐藏自己的恐惧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
因为我们的地位不同
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_202]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b006][r]
健二先生因为地位高，所以可以为所欲为吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
对，就是这样
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b007][r]
……可、可是，我觉得这是错的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我反问她，玛娅就颤抖着身体，充满恐惧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_203]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b008][r]
可、可是，个人的意志能改变什么，不过是一种幻想而已

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
……哦？为什么你会这么想？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b009][r]
那是……因为之前姐姐告诉我的……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b010][r]
大家都认为，个人的意志是无法改变什么的……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
嗯……我可不这么认为
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
有时候，个人的意志能够激发民众
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
你说的以前，应该是王政时代吧？现在可是军政时代了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_203]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b011][r]
可、可是，国民的意志并不会那么容易改变
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
哦？你倒是说得好听，公主殿下的倔强？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b012][r]
不、不是那样的……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]
一步步靠近，玛娅却不断后退。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
虽然说出了很有见地的话，但她脸上依旧带着惊恐的表情。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

;■ＢＧＭ設定
[bgmplay storage="bgm07"]

[cm2]

[nowait]【健二】[endnowait][r]
看着玛娅，我就觉得很烦躁
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b013][r]
啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
不，不只是烦躁。我内心有一股想欺负你的冲动正在膨胀


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
被虐欲所挑拨
[p2]
;過度に虐待する心
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[quake2 pow=1]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=300]

[cm2]
一步、两步，渐渐加快步伐靠近玛娅。抓住她的身体，随后将她压倒在地。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]

[nowait]【健二】[endnowait][r]
真是软弱啊，玛娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b014][r]
不要啊！请、请放开我……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[quake2 pow=1]

[cm2]

[nowait]【健二】[endnowait][r]
放开？我才不会放开呢。刚刚好不容易抓住你
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
舔了舔嘴唇，开始扒掉玛娅的衣服。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[quake2 pow=1]

[cm2]
用力拽扯，她身上的珠宝首饰应声而碎，散落一地。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b015][r]
啊啊啊！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]

[nowait]【健二】[endnowait][r]
是的，就是那个声音。让我兴奋的是……呵呵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|


[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b016][r]
求求你！不要，玛娅不要，不要啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=BEV01b017][r]
呜……呜呜……不要！玛娅，这样的……不要啊……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅拼命尖叫着想逃脱。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
但她的抵抗都是徒劳的，我将坚硬的棒子深深插入了她的内部。

[p2]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]
[return]

