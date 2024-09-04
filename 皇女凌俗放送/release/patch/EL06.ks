*EL06
;■■■■■□□□□□■■■■■□□□□□■■■■■
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm07"]


;●エンディング直前専用シナリオ
;■■■■■□□□□□■■■■■□□□□□■■■■■
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]

[cm2]
[nowait]【健二】[endnowait][r]
……总之，已经结束了呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我一个人在自己的房间里喝着葡萄酒，喃喃自语。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我们签订的合约期限内的最后一个节目已经播出完毕。接下来就只剩下丽安策划的总统选举了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●条件分岐ここから
;■主人公支配ＥＮＤ　　　　　　ＥＮＤ０５　Ｅ
;■現政権側勝利のリアンＥＮＤ　ＥＮＤ０２　Ｂ
;■現政権側勝利の普通ＥＮＤ　　ＥＮＤ０１　Ａ
;■王制側勝利のカチェアＥＮＤ　ＥＮＤ０３　Ｃ
;■王制側勝利のマイヤＥＮＤ　　ＥＮＤ０４　Ｄ
;■失敗ＥＮＤ　　　　　　　　　ＥＮＤ０６　Ｆ

[if exp="f.END01_on == 1"][jump target=*EL06_x_01_a][endif]
[if exp="f.END02_on == 1"][jump target=*EL06_x_01_b][endif]
[if exp="f.END03_on == 1"][jump target=*EL06_x_01_c][endif]
[if exp="f.END04_on == 1"][jump target=*EL06_x_01_d][endif]
[if exp="f.END05_on == 1"][jump target=*EL06_x_01_e][endif]
[if exp="f.END06_on == 1"][jump target=*EL06_x_01_f][endif]





;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_c

;●条件分岐＜AEV02を見ている＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
不放弃面前命运中的希望……吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我一字一句地重复着曾经一笑置之的话语。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
说出这番话的，正是卡秋娅。即便身陷无法想象的耻辱和凌辱之中，她也未曾放弃作为王族的骄傲，直到最后一刻都在与我们抗争。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
就像是象征着她那番话的一样，我们如今陷入了绝境。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我们原以为必胜的选举中，她对国民说出的话语，远远超出了我们的预料。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这掀起了一阵波澜，从而极大地影响了民众的意志。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一旦公开宣扬了民主制，这场总统选举就无法再收回了，选举最终还是会如期进行。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
实际上，即便现在进行选举，我们还剩下多少支持者也是未知数。丽安并非不知道这一点，但她仍然积极主张进行选举。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我无法理解她在明知必败的情况下仍要参战的内心动机，但我也没有强烈否定她的打算。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我这些年来进行的那些宣传，最终会导向什么样的结果……我有责任亲眼目睹。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
呵呵呵……巧合也许就是必然，是吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我一口气喝光了剩下的葡萄酒，就这样沉浸在自己的思绪中度过了整个夜晚……。

[p2]

[jump target=*EL06_x_01_end]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_d

;●条件分岐＜BEV02を見ている＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
玛娅……吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
第一次见面，是在我凌辱卡秋娅的时候。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
此后我们虽然多次碰面，但她始终惶恐不安，如同受惊的皇女。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
玛娅从未知晓烦恼，也从未有过反抗的需求。但自从我出现，她的一切都被打碎了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
真是的……被那样的小鬼给耍了，我也真是落魄啊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我回想起几周前的选举报道，陷入了沉思。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
屈辱、凌辱，各种痛苦折磨着她，她甚至一度做好了赴死的准备，但她最终还是发出了那句最初也是最后的坚定言语。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她之前一无所知，正因如此才犯下了错误。现在，她有机会去纠正那个错误了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
正因为是玛娅在政见发布中说出的话语，所以才有如此分量。她在遭受凌辱直播的打击下，仍然保持了皇女的骄傲，并因此而成长了一圈。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一旦公开宣扬了民主制，这场总统选举就无法再收回了，选举最终还是会如期进行。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
实际上，即便现在进行选举，我们还剩下多少支持者也是未知数。丽安并非不知道这一点，但她仍然积极主张进行选举。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我无法理解她在明知必败的情况下仍要参战的内心动机，但我也没有强烈否定她的打算。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我这些年来进行的那些宣传，最终会导向什么样的结果……我有责任亲眼目睹。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
呵呵呵……巧合也许就是必然，是吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我一口气喝光了剩下的葡萄酒，就这样沉浸在自己的思绪中度过了整个夜晚……。

[p2]

[jump target=*EL06_x_01_end]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_e
;●条件分岐＜ハーレムエンド用＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我在这个巴拉莱卡岛上，受托负责政见发布的制作。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我就按照托付的任务，一直在不懈地集结着民众的支持。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
对于这个缺乏娱乐的国家的民众来说，最终也不过如此。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
民众在我的掌控之下，欢笑、哭泣，一切都如我所愿。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
如今，民众已经开始真正理解，谁才是这个国家真正需要的人。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
那个人，究竟是谁呢。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
有能的宰相？勇敢的将军？忧国的士兵？高贵的王族后裔？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
全都不是。真正需要的是……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
呵呵呵……哈哈哈哈哈哈！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
在空无一人的房间里，我的笑声回荡不绝。月光静静地照耀着，仿佛在祝颂这个国家真正的统治者。


[p2]

[jump target=*EL06_x_01_end]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_b
;●条件分岐＜リアンエンド用＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
等这一切结束后，这个国家就会在民主的名义下统一起来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
统治者也许是军阀，但表面上将由人民作为主体。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
看来对丽安来说，彻底消灭王权是她的最大愿望啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
杀死国王，凌辱与国王有关的姐妹，彻底追捕王子……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但我没有错过她内心对王族的憎恨正在动摇的迹象。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
当阿克拉斯亲自来杀我时，他对丽安说的话，在她内心激起了某种东西。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
选举结束后……我在这个国家就没有用处了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我进行的那些宣传活动，到此为止。看完结果后，我就没有其他事可做了。我只能离开这个国家，再次踏上旅程。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但我内心深处总有一丝挂念。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
从第一次见面开始，我就对这个少女产生了兴趣，把她视为同路人。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
她散发着一种独特的魅力，让我想要将她拉拢过来，这个小家伙。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
一旦离开这个国家，我就再也见不到她了。

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
我一口气喝光了杯中剩余的葡萄酒。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
唉……我居然会这么留恋，真是不像我的作风。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我自言自语，试图压抑内心涌起的那些情感。

[p2]

[jump target=*EL06_x_01_end]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_a
;●条件分岐＜ノーマルエンド用＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
宣传活动基本完成了。民意正如丽安所愿，军方的胜利已是板上钉钉的事了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我的「角色」已经结束了。剩下的就是等待结果。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
呵，竟然这么快就结束了，这场政见宣传。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我已经完成了合同规定的「角色」。宰相对我的辛劳表示感谢，还给了额外的报酬。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
「最后的收尾工作由我们来做」，他是这么说的。现在我已经没有其他事可做了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
[nowait]【健二】[endnowait][r]
呵呵呵……真是让我玩得很ｈｉｇｈ啊。那么，我就启程去往新的舞台吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我轻轻举起酒杯，一口气喝干了杯中剩余的酒。

[p2]


[jump target=*EL06_x_01_end]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*EL06_x_01_f
;●条件分岐＜バッドエンド用＞
;●背景
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我拼命灌下酒液，试图压抑内心的焦虑。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
说实话，宣传活动失败了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我准备的那些政见，起初还被接受，但后来民众渐渐发现其中的残暴性和缺乏道德，一个接一个地对军方表示叛逆。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
起初微小的涟漪逐渐扩散，如今几乎所有国民都渴望王族复辟，各地都发生了示威游行。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
曾一度销声匿迹的阿克拉斯王子率领的叛军如今重新出现在公众视野，如今甚至能够击败我方军队。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这样下去可不是选举的问题了，必须与全体国民为敌作战。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
明明是为了民主制度，怎么会沦落到这般田地？是方法出错了，还是本来就是一个不切实际的想法？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
……不，现在已经不重要了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我的「角色」已经结束了。如果能成为这个国家历史的基石，那也算是一种成就。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
这么一想，我的内心竟然变得平静了下来。人的思维，取决于心境和观点，都是可以控制的。这正是我的信念。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
但有时也并非如此简单。更何况是一个异国他乡的大多数民众的内心。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
所有结果的真相，即将揭晓……现在，我只能等待。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[cm2]
我静静地将杯中最后一滴酒液送入口中。
[p2]

[jump target=*EL06_x_01_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●条件分岐ここまで
*EL06_x_01_end
;■ＢＧＭ設定
[bgmstop]

;●夜→朝


[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=ex3]
[ud time=500]
[wait time=2000]
[loadbg storage=ex1]
[ud time=500]
[wait time=1500]
[mesw_on]
[cm2]

[return]

