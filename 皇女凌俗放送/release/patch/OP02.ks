*OP02|&sf.sname_OP02
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm03"]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■選択肢
[if exp="sf.cleared == 1"]

[history output=false]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=0]


[cm2]
是否跳过玛娅的初夜剧情？

[endnowait]
[selecting sel=2 sel1='是' t1=*OP02_01_a   sel2='否' t2=*OP02_01_b]
[s]

[endif]
*OP02_01_b
[cm2]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□













;● 妹姫処女喪失 OP02
;●プレイしている場所が、大広間なのに、本文は、マイヤの部屋扱いで書かれているのを修正
;●プレイの最中に、視線を外して、リアンと長話しているので、
;　回想では、その部分をショートカット

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;● bg02　主人公、自室（昼）
*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02a]
[ud time=500]

[cm2]
第二天早上，我被吵闹的声音吵醒了。走廊里有人在说话。其中一个是橘小姐。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP02d001][r]
老板现在正在休息
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
听到士兵们的谈话，我怎么能闭嘴呢！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP02d002][r]
但是，这个时间实在是太不合理了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
你以为我是谁啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
快去叫醒那个小子！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
……那个小子，难道就是我吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
不管了，将军，你的声音太大了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
从床上起来，简单整理了一下，就打开了门。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
早上好，将军
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_204]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP02d003][r]
啊，老板
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
;■ＢＧＭ設定
[bgmplay storage="bgm08"]


[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哦，先生！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
先生啊……看来不是个小子呢？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]

[cm2]
卡拉斯特亲切地笑着，拍了拍我的肩膀就走进了房间。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_203]
[ud time=300]

[cm2]
[nowait]【健二】[endnowait][r]
橘，能不能帮我拿点喝的？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_204]
[ud time=300]

[cm2]


[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP02d004][r]
好的，我知道了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
因为吵醒了我，她很抱歉地鞠了一躬就离开了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
将军自顾自地坐到了椅子上，示意我也坐到空着的座位上。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
真是抱歉这么早就来打扰了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
哦，连将军也会用这种说法啊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
不，请不要放在心上
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_104]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
不过先生，我听说了哦？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
听说前几天你在士兵们面前抱过卡秋娅呢

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
原来是这件事啊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
这样做，能让事情按我的意愿进行得更顺利……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
那么玛娅就归我了吧？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……什么意思呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我的话被打断了，结果还被提出了一个令人讨厌的要求。谁说要夺走玛娅的处女之身？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我感到头晕目眩。希望这只是听错了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
据士兵们说……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安没有告诉你吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
他们似乎打算将侵犯卡秋娅和玛娅的录像作为政见宣传片播放

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
是的，就是这样
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我也不应该说这个，但还是不能隐瞒。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我打算在节目开头播放玛娅失去处女的画面

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□


*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
那么，玛娅的对象就让我来吧！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
说实话，我不太建议这样做
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
军队刚刚开始从播放国王处决的政见宣传中恢复过来，受到了很多批评

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
在这种情况下，将军亲自侵犯玛娅，很可能会再次引发强烈的批评。将军这个头衔具有很大的影响力


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
嗯嗯……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
不如让一些不为人知的士兵来吧，会比我这样的人更好

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
这么说，你打算再次夺走皇女的处女之身吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我并非出于私欲而行动
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
一涉及女性，你就格外敏感。实际上你也是出于私欲在行动，但被别人这样做你就会很困扰。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
算了吧……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
那么，我们这样做吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
我来戴面具
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
请别这样做
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_103]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
为什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我坚决不同意
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_104]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
呜呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
白痴！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
你的体型已经够显眼了，再戴上面具就更加引人注目了，这对玛娅有什么好处？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
那么，我该如何才能抱到玛娅呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
请放弃吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_103]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
你竟让我放弃！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
你这种人也能抱到她，我为什么就抱不到！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]
[cm2]
[quake2 pow=2]
[nowait]【卡拉斯特】[endnowait][r]
哼，这是命令！立刻把玛娅带过来！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
就在这里，我要夺走玛娅的处女！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那么，就不在广播中播放了？这本来是吸引国民眼球的绝佳机会啊。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
夺走其中一个诱饵的人，不就是你吗！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我的任务是在政见放送中，将国民的目光引向军方。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我只是为了这个目的而行动，并非出于私欲。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_105]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
这不过是一派胡言！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
结果才是最重要的。多亏了我，卡秋娅已经同意在国民面前遭到凌辱了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_104]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
够了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
将军背过身，离开了房间。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
将军，您要去哪里？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
去玛娅的房间。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
让一个毛头小子来办这事，真是我的错。从一开始我就应该亲自动手的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
他的表情渐渐变得冷硬无情。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……啧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
需要重新编排节目内容。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
我明白了。我会跟着去的

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
要是被人跟踪就糟了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*OP02_01|&sf.sname_OP02_01


;● bg01　宮殿内、大広間。(電燈光)
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]

[cm2]
我拜托了香苗，让丽安也过来。姐姐不够，还要看妹妹的初夜。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
而且丽安是负责人，应该亲自见证。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我和丽安冷冷地看着玛娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
刚从房间里被拽出来的玛娅，还不知道发生了什么，全身发抖。她瑟缩在地上，泪眼汪汪地看着压在她身上的将军。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
早上好，玛娅。你今天也真可爱啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b001][r]
将军……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
嘿，玛娅。我们来做些有趣的事吧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_101]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
就像你姐姐和老师前几天做的那样，很有趣的事

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b002][r]
……什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
笼罩在玛娅身上的阴影越来越大。她抱住膝盖，缩得更小了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b003][r]
可是……之前那次……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
嗯？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军凑近了颤抖着说话的玛娅，她下意识地遮住脸，渐渐后退。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b004][r]
啊啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b005][r]
那、那次……健二哥哥和姐姐，约好了……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
因为紧张，玛娅说话有些结巴。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_103]
[ud time=300]
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
什么约好了？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b006][r]
说好不会对我……动手的……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
不知道怀疑他人的妹妹，时不时偷瞄着我的脸。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b007][r]
那、那个约好的……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
什么事？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b008][r]
诶！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我露出狞笑，她惊恐万分，脸色越来越苍白，视线也开始游移不定。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b009][r]
不、不是约好了吗？那个……是约好了吧？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
很遗憾，我不记得了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_206]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b010][r]
啊，对了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅拼命回忆那令她不愿回想的昨天，突然想到了什么。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_201]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b011][r]
那时候，宰相也在场啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_201]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b012][r]
宰相应该还记得，健二哥哥和姐姐之间的约定吧？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
被搭话的丽安毫不犹豫地回答。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c001][r]
我可没听说过什么约定啊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b013][r]
什么！？怎么会这样……玛娅明明听到了啊！


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
看来，玛娅是因为姐姐的事情太过震惊，产生了幻听。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
这不过是她自私的心理在作祟罢了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b014][r]
幻、幻听？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_206]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b015][r]
怎么会！玛娅明明听到了！求你们相信我！请回想一下！


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
然而，没有人去搭理她。只有皇女徒劳的控诉在大厅里回荡。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
真遗憾啊，玛娅。如果你觉得委屈，就拿出证据来吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b016][r]
证、证据？我可没有证据。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b017][r]
可是，玛娅明明听到了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅正想继续说下去，却突然浑身一颤。眼前的大个子男人正在露出令人作呕的男根。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b018][r]
不要啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*all_16
;■ＢＧＭ設定
[bgmplay storage="bgm04"]

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=0]

[cm2]
她发出了短促的尖叫，但这声音被压在将军的腹中而消失了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;●＜＜ＣＧ1＞＞
;●　髪の毛を掴まれて、頭が腹にめり込んでいる妹姫。
;●　その目も前にはそそり立った男根がある。
;●　表情は泣き、着衣
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[mesw_off]
[loadev storage=EV04_005a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b019][r]
不要……不要啊啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
看到眼前高高耸立的巨物，玛娅拼命挣扎反抗，但终究无法与将军的力量抗衡。她软弱无力的身躯被抓住头发，动弹不得。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b020][r]
不要，请放开我！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
那根青黑的肉棒跳动着，在她白皙的脸颊上爬行。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b021][r]
啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哈哈哈！我用我的阳具在玛娅的脸颊上摩擦了一下！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这样微不足道的事情就让这个将军欣喜若狂。这反应大概算是正常的吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
能够玷污自己国家的公主，这种快感。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
仅凭这一点，就已经让他兴奋得前液直流了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b022][r]
呜……呜……这是什么？好臭啊……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
看来它的味道也和外表一样糟糕。真是太糟了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
什么？！你们竟然说我的东西臭？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b023][r]
可是……真的好刺鼻啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b024][r]
这股味道真奇怪，既有汗味，又有别的什么味道混在一起。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
呵呵呵。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
别他妈笑了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
这可真是失礼……呵呵。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
呜哇哇哇！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c002][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我发出了嘲笑的声音，而丽安则沉默地观察着事态的发展。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
与昨天满足的表情不同，她的脸上带着一丝阴郁。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
好好看着吧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
这东西马上就要进入你那小小的阴道了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b025][r]
不要啊……玛娅不想和你做那种事！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c003][r]
你没有拒绝的权利。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b026][r]
怎么会这样……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
绝望的玛娅意识到了什么。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b027][r]
啊！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b028][r]
这是……什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她惊恐万状地盯着将军的阴茎，那里渗出了一些透明的液体。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b029][r]
这是尿液……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哼？哦，我太想夺取玛娅的处女了，所以忍不住流出了前列腺液。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
这是你第一次见到吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b030][r]
是，是第一次……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
是吗，是吗。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军满意地摆动腰部，把前列腺液涂抹在玛娅的脸颊上。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
就这样，那张稚嫩的脸庞渐渐被粘稠的液体弄脏了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b031][r]
呜……呜，比刚才还要臭啊！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
瞧，玛娅那漂亮的脸蛋被我的前列腺液弄得乱七八糟的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b032][r]
不要啊……好恶心啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她被恐惧吓得想要转过头去。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
但稍微一离开，小小的脸颊就被阴茎的粘液牵连着，这淫靡的景象刺激着他的欲望。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
仅仅是摩擦，他的呼吸就变得粗重了，足以点燃他的淫欲。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哈……哈……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b033][r]
求求你了……请不要再这样了……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
哀求的声音，更加激起了将军的欲望。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军把龟头更深地嵌入玛娅的脸颊。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b034][r]
啊……不要啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她再次想要逃脱，但这次她的头发被紧紧抓住，无法逃走。卡拉斯特肆意地摆动腰部，一个人喘息着，看起来很舒服。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
啊……唔……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b035][r]
擦起来……好烫……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b036][r]
玛娅的脸颊变得黏糊糊的，好恶心啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
开始可能是这样，但是……嗯……慢慢地就会上瘾的

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b037][r]
玛娅不会变成那样的……！呜……讨厌，好害怕……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哭喊的样子也很诱人啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
有多少男人梦想着夺取你的处女，你有想过吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
跨越王族和平民的绝对鸿沟，有无数人渴望这样做

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
全国上下的男人，内心深处都渴望夺取玛娅的处女

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b038][r]
呜，呜呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
被抓住头发的疼痛。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
脸颊的触感。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
刺鼻的气味。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
国民用那种眼神看着自己，这种冲击。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这些都混杂在一起，玛娅呻吟了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b039][r]
救救我……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
没人会来救你的。卡秋娅现在还在梦中。哈哈哈

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b040][r]
呜……呜呜……姐姐……呜，啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
好了，我们该开始了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
我的儿子正渴望破坏你的处女膜
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b041][r]
求求你不要！我什么都愿意做！所以请救救我！


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哦？什么都愿意做吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这句话让卡拉斯特有些动摇。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这个笨蛋。在这里夺取处女之外，还有什么更大的目的吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
太迟了，玛娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b042][r]
「呜……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
「将军，请快点解决掉她。要是拖太久，我可能就忍不住自己上了。」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
「呜呜呜……！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军感到被小看，狠狠瞪了过来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
「哼！竟敢对我指手画脚，你这小子！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
说着，卡拉斯特粗暴地扯开了玛娅的衣服。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;●＜＜ＣＧ2＞＞
;●　デブなカラストに後背位で組み敷かれている妹姫。
;●　表情は泣き、半裸
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[mesw_off]
[loadev storage=EV04_006a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
她那无知的肉体暴露无遗，随即被粗大的淫棒猛烈地插入了未经人事的秘处。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b043][r]
「啊啊啊啊啊！！！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅拼命挣扎想逃脱，
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
但那根粗壮的肉棒已经深深捅入了她的最深处。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b044][r]
「呜呜呜！！好痛……好痛啊……！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
「哈哈哈哈！好极了！玛娅的小穴正在吞吐着我的肉棒呢……呼呼呼」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b045][r]
「不要！不要啊啊啊啊！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b046][r]
「姐姐！姐姐救救我啊！不要，不要……啊啊！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军夺取了玛娅的处女，舔了舔嘴唇，开始大力抽动起来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这样小小的身体要承受如此粗壮的肉棒，想必会非常痛苦吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
更何况对方是一个相貌丑陋、智力低下的愚蠢将军。这样胆小的她，恐怕不仅肉体，连精神都会遭受折磨。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b047][r]
啊啊啊！不要，不要！玛娅的里面全被塞满了！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b048][r]
那股臭味和黏糊糊的感觉，全都进到里面去了！啊，不要，不要啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
像小狗一样哭喊着的玛娅，让卡拉斯特露出了陶醉的表情。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
即使再怎么不愿意，玛娅的里面也已经湿润了呢。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
看来她其实很高兴呢，这个贱种母狗！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b049][r]
玛娅不是那样的……唔！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b050][r]
啊，啊！一次次进入到最深处……啊，啊啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
只顾自己满足的活塞运动，使她的身体不安定地摇晃。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
每次被猛烈顶撞，软弱无力的玛娅都在颤抖。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b051][r]
唔……将军的那个，好像在把玛娅的里面撑开一样，好讨厌……！


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
不是＇好像＇，而是事实……哈哈哈！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b052][r]
唔……啊！不要，啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b053][r]
好痛苦啊，住手！啊，唔……啊啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅啜泣不止，一遍遍乞求饶恕。但将军怎会听进去，仍然肆意蹂躏着她鲜血淋漓的肉穴。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|


[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b054][r]
将军大人！啊，好痛！玛娅好痛啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b055][r]
求求你快停下！呜，呜……啊，啊……呜，嗯！啊，啊！呜，啊……


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
公主每次抽搐，里面就会变得更紧，让我的阴茎颤抖……哈哈哈！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
再大声哭喊吧，求饶吧！让我更加高兴！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b056][r]
呜呜呜！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
他的腰部抽动越来越快。她只能勉强承受，发出了既不妖艳也不动听的痛苦呻吟。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b057][r]
啊啊！痛，好痛……眼泪止不住流……啊，啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b058][r]
这种事情……啊！将军大人，求您住手……，嗯，玛娅好痛苦……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
我感觉太棒了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
我的阴茎把她粉红色的小穴塞得满满的，正在贪婪地渴望着肉棒

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b059][r]
好恶心……呜……呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
果然处女最好……这种支配感真让我欲罢不能

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b060][r]
啊啊！不，比刚才更烫了！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
我要在里面好好标记你……哈哈哈
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b061][r]
不要！啊，那种痕迹，玛娅不要！求求您，请原谅我吧……嗯！啊呜

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]
[nowait]【卡拉斯特】[endnowait][r]
原谅你？别开玩笑了……呃，啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b062][r]
请原谅我吧……嗯……啊呜，嗯呜！求求您，原谅玛娅……求您了……！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;回想中ならここからショートカットする
[jump target=*op02_memcat cond="f.inmemory == 1"]
;■ＢＧＭ設定
[bgmplay storage="bgm04"]


*|

[cm2]
玛娅在痛苦呻吟，拒绝着。我冷冷地旁观着这一切。

[p2]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=sf.lay_ev0]
[loadbg storage=bg01]
[ud time=500]

[cm2]
我的视线转向丽安。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c004][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她从刚才开始就没有改变过表情。有些阴郁，眉头紧锁，像是在生气。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]

[cm2]
但当玛娅一次次被狠狠贯穿，发出惨叫时，丽安终于移开了视线。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这不是避开眼前的景象，而是一种厌恶的表情。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这与姐姐的反应明显不同，让我产生了疑问。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
丽安……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c005][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
难道你不想看这精彩的表演吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c006][r]
……我已经看过了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她背过身去，简短地回答。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
你的反应和卡秋娅可真不一样啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c007][r]
……是啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
过了一会儿，她这样回答。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安没有否认。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c008][r]
……我感觉很不舒服……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c009][r]
……我原以为自己能坦然接受，但现在一想到那个，我就觉得胃里翻江倒海的……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她抱着双臂，似乎在忍受着什么，发出呻吟。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c010][r]
那就不是处女了，是吗……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她的眼神变得黯淡无光。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她说出的话，让我隐约预感到了什么。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
丽安……难道你也是？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c011][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
这是一个无声的肯定。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
原来如此
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c012][r]
虽然是为了利用，但我还是主动奉献了自己
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
这种事很常见
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c013][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
你没有后悔吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我的提问，丽安点了点头。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c014][r]
我别无选择
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那也没什么大不了的，不必回避

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c015][r]
要是能这么简单就释怀，我也不会苦恼
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
呵呵……你还太天真了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c016][r]
那么，你自己又做过什么坏事呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
坏事我都干过了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
他没有多说什么，只这么一说，丽安就能感受到其中的意味。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c017][r]
……看来是同路人啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……是的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
原本背对着他们的她，又重新面向玛娅和将军。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;回想中ショートカット合流
*op02_memcat

;■ＢＧＭ設定
[bgmplay storage="bgm04"]


*|
[loadev storage=EV04_006a]
[ud time=500]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b063][r]
呜哇哇哇！！呜呜，呜呜……不要，我不要了！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b064][r]
在玛娅的内心深处，有一股强烈的热意在翻腾、蠕动……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅的精神已经到了濒临崩溃的边缘，随时都可能失去意识。她不断遭受着凌辱。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
她的秘处渐渐变得湿润黏腻，但她自己却浑然不觉，痛苦已经压过了快感。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b065][r]
啊啊！嗯……呼，啊，啊啊啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b066][r]
将军的……好痛，好痛……咳，嗯……啊，啊啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅的身体颤抖着，将军感到欣喜。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

;*|
;[cm2]
;肌を打ち付ける音が、メルヘンな部屋とのギャップで、[r]
;より淫靡な音に聞こえてくる。
;[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b067][r]
求求您，饶了我吧……嗯，我发誓再也不做坏事了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b068][r]
好痛苦，我快要死了……呜，呜呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
哈哈哈！好紧啊……玛娅！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b069][r]
啊啊！？嗯，不要……，啊，啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
像小鸟一样的呻吟声，渐渐变小了。但将军并没有停下。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP02c018][r]
玛娅快要死了……呵呵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
丽安愉快地笑着。我旁观着玛娅和将军的行为。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
也许我们都疯了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
并非无动于衷或漠不关心，只是觉得很有趣而已。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【卡拉斯特】[endnowait][r]
啊啊啊……！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[loadbg storage=bgffffff]
[ud time=500]
[loadev storage=EV04_006a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
咕咚……！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
将军在玛娅的阴道里射精了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b070][r]
啊！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
卡拉斯特那丑陋的身体颤抖着，溢出的脂肪激烈地摇晃。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b071][r]
啊……啊啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
意识到自己遭受的厄运，只是在一瞬间之后。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b072][r]
不……不要……不要啊啊啊啊！！！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
玛娅的尖叫声，在宫殿中回荡。在大家忙碌的傍晚时分，也许没人会注意，但现在是早晨。大家都会被玛娅的尖叫声惊醒。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
也许卡秋娅也注意到了。
[p2]

[return cond="f.inmemory == 1"]
[eval exp="sf.all_16 =1"]












*OP02_02|&sf.sname_OP02_02


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ＢＧＭ設定
[bgmplay storage="bgm04"]



*|
[clearimage layer1=sf.lay_ev0]
[loadbg storage=bg01]
[ud time=500]

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b073][r]
啊啊啊……怎么会这样……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
哭泣的玛娅。将军满意地从她体内拔出肉棒。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
我和丽安目睹了全过程。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
那么，玛娅。以后也请继续这样配合我吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b074][r]
……什么？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
泪水浸湿了她的脸颊，她缓缓地看向我。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
玛娅，难道你只想让卡秋娅成为国民的慰藉品吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b075][r]
什……什么？我，我也要做吗……？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
你不想被认为是个懦夫吧？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]


[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP02b076][r]
呜……呜呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
[nowait]【健二】[endnowait][r]
明白了吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=ex1]
[ud time=500]

[cm2]
她当然没有拒绝的权利。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
呵呵……。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
虽然玛娅的处女计划失败了，但这对于保持一致还是有好处的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□

*|

[cm2]
从现在开始就让我期待吧，玛娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■クリヤー後の、ショートカット
*OP02_01_a
[cm2]
;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[cm2]
广播企划书已经添加完成。
[nowait]【[emb exp="f.b03_00"]】[endnowait]
[eval exp=" f.b03_01x = 1"]
[p2]

[return]


