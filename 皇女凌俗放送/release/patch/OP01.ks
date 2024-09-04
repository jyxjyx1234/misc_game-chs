*OP01|&sf.sname_OP01
;■■■■■□□□□□■■■■■□□□□□■■■■■
[setwindow]
;■ＢＧＭ設定
[bgmplay storage="bgm02"]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■選択肢　一回クリアーしている場合表示される
[if exp="sf.cleared == 1"]

[history output=false]
*|
[nowait]

[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=0]


[cm2]
是否跳过卡秋娅的初夜剧情？

[endnowait]
[selecting sel=2 sel1='是' t1=*OP01_01_a   sel2='否' t2=*OP01_01_b]
[s]

;■チュートリアルへ接続
*OP01_01_a
[jump storage="OP01.ks" target=*OP01_01_exit]
[endif]

;■そのまま、本編を続行
*OP01_01_b
[cm2]
;■■■■■□□□□□■■■■■□□□□□■■■■■



;● プロローグ OP01

*|
;●背景　bg13　機内
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg13]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_405]
[ud time=300]

[cm2]
　本补丁为AI翻译补丁，使用Claude-3-haiku进行翻译，由ALyCE\jyxjyx1234制作，免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费下载到本补丁，请顺手点个举报。
[p2]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d001][r]
哎呀，老板的事情被大肆报道了呢♪
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗展开报纸，兴奋地发出声音。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
啊。文也就是喜欢闹腾嘛
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_401]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d002][r]
哎呀哎呀……著名节目制作人片仲健二，和秘书神秘失踪……是这么写的吧，老板

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那当然是个谜了。我们谁也没告诉，用假名逃到国外去了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_404]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d003][r]
这样一来，热门节目的收视率肯定会一落千丈呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
热门节目？那些不都是我的工作吗？那样的话，电视收视率本身就会下降。这样赚钱的就是影碟店了


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_402]
[ud time=300]

[cm2]
健二耸了耸肩说，香苗咯咯地笑了。香苗是个绝色美人，但并不因自己的美貌而自负，而且还是个头脑灵活的秘书。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_403]
[ud time=300]


[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d004][r]
老板，说『乐园岛巴拉莱卡发生政变』……巴拉莱卡不就是我们去过的国家吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
没错。直到不久前还是君主制国家。听说民主派军人发动政变，夺取了政权


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_404]
[ud time=300]


[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d005][r]
去那么危险的国家没问题吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗晃动着自己引以为豪的巨乳，提出疑问。作为秘书的香苗，我并没有告诉她详细情况，所以她很不安。就连我自己，也不太清楚具体情况。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
放心吧，橘君。准备我们机票的正是那个军部的人。在日大使对我也很友好，所以不用担心


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_401]
[ud time=300]

[cm2]
说完这番话，香苗如释重负般地拍了拍胸口。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
这些年跟着我，你有遭受过什么不好的遭遇吗？……香苗

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch10 storage=ch07_405]
[ud time=300]


[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d006][r]
没有，老板。从未发生过♪
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
不再称呼她为『橘君』，而是直呼『香苗』，让香苗眯起了眼睛。美人无论是什么表情都美丽动人，但笑容尤其迷人。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
;●背景　空
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=ex1]
[ud time=500]

[cm2]
从报纸望向窗外，可以看到一座蓝色的孤岛在海面上若隐若现。这座被珊瑚礁环绕的美丽岛屿，随着飞机的接近，景象也在不断变化。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
哈哈哈……那些战火的痕迹，反而增添了几分美丽

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我低声笑着，看着那些生动的政变痕迹。光是带着这些愚蠢的偶像和肮脏的艺人来采访，就能制作出高收视率的节目了。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
随着广播宣布即将着陆，我将报纸叠好，系好安全带。这次经过多国的漫长旅途，终于要结束了。我凝视着报纸上记载的自己的名字。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
;■ＢＧＭ設定
[bgmstop time=2000]

;●背景　黒
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]


[cm2]
………………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|

[cm2]
……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*OP01_01|&sf.sname_OP01_01
;● bg01　宮殿内、大広間。(電燈光)
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]

[cm2]
我们经历了漫长的旅途后，终于被邀请进入了这座华丽的宫殿。王朝时期这里一定非常繁荣昌盛，到处都装点着华丽的装饰品。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
;●ＳＥ　ぼよ～ん　（コミカルなバウンド音）
[seplay buf=&sf.buf_se storage=se23]

[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_102]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
从日本来的制作人就是你们吗？我是卡拉斯特将军

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch06 storage=ch05_201]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch03 storage=ch09_102]
[ud time=300]

[cm2]
一个穿着丑陋军服的胖男人向我们搭话。卡拉斯特将军身边站着一名身穿军服的女性。……看起来就像个为那个傻瓜服务的小童子。这种廉价的组合，我忍不住要笑出声来。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
是的。我是制作人片仲健二，她是秘书橘香苗

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
两人恭敬地鞠躬，望向卡拉斯特将军。……这老家伙，真是个大色狼。卡拉斯特将军的视线不是盯着我，而是牢牢锁定在香苗那对巨乳上。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
卡拉斯特将军，您为什么要召唤我们来到这个国家？准备了假名和伪造护照，一定有什么隐情吧？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我直率地询问被召唤到这个国家的原因。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_103]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
啊，那个嘛……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【？？？】[endnowait][voice buf=&sf.buf_vo storage=OP01c001][r]
让我来为您解释吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
在支支吾吾的卡拉斯特将军面前，一名身穿军服的女性冒了出来。……不，应该说是少女才对。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c002][r]
我是宰相利曼·丽安。可以叫我丽安吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
好的，丽安宰相
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c003][r]
那么，我也允许你们称呼我为丽安。那么，关于你的问题……在此之前，你们是否已经从大使馆那里收到了预付款？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安突然提到了金钱的事，即使是我也感到有些惊讶。这样一个小丫头竟然知道这些，看来宰相的头衔并非浪得虚名。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
是的，我们已经收到了预付款并签了字
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c004][r]
那么，合同已经生效了，我可以告诉你们详情了吗？在确认这一点之前，我是不会透露任何信息的

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
虽然声音如同小女孩，但丽安的话语中却有一种奇特的压迫感。……这个女人，绝对不是普通人。我的直觉在这样低语。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
既然已经收到了预付款，我就来到这里履行承诺。如果你们不相信，我现在就可以离开。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
虽然说是预付款，但对我来说也不过是小钱而已。我是抱着被邀请来度假的心情来的，所以回去也不在乎。不过……



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【兵士】[endnowait][r]
你说要回去？你是活不想要了吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
;●ＳＥ　ガチャ
[seplay buf=&sf.buf_se storage=se15]


[cm2]
随着枪支上膛的声音，一名士兵从我们身后逼近。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d007][r]
老、老板……他们把枪对准我们了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
看着泫然欲泣的香苗，我耸了耸肩。察觉到我们的情况，丽安迅速举起了手。与此同时，士兵们也立即退了下去。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch6]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c005][r]
对不起，我们并不是怀疑你，健二
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c006][r]
但既然事情已经发展到这一步，我们不得不格外小心谨慎。所以我们才选择了一个勤勉踏实、嘴巴严实的日本人

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
呵呵呵……只要涉及金钱，日本人的嘴巴就会变得很严实呢
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]
丽安对我的玩笑轻笑了一下。虽然明显是客套寒暄，但笑容并没有恶意。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c007][r]
那么，我来解释吧。健二，我们想请你制作一些电视政见宣传片，为我们的新政权稳定做贡献


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
政见宣传片？那可真是一个大错误。我制作的都是娱乐节目和电视剧

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c008][r]
不，我们需要的正是娱乐节目等
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
恕我直言，政见宣传和娱乐节目可是完全不同的东西啊？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c009][r]
我明白这一点。但是你应该知道，宣传也可以融入娱乐元素吧？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]
丽安露出了一个意味深长的笑容。这与刚才那种无害的客套笑容完全不同，充满了毒辣。……是啊，这种笑容和我自己的如出一辙。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
原来如此啊……把宣传融入娱乐节目也是可行的。只要得到许可，连那些在许多国家都被禁止的潜意识暗示也可以用呢


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我回以微笑，丽安也笑着点了点头。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c010][r]
在我们国家的君主制时代，曾实行过严格的信息管控。其中，娱乐广播更是被完全禁止了。所以，娱乐节目对国民来说会更容易接受


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d008][r]
哎呀，是这样吗？电视不就是用来娱乐的吗……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c011][r]
那是其他国家的常识，而不是我们国家的常识

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c012][r]
国民虽然都有电视，但只能看教育节目、国王的政见宣传和新闻

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
原来如此……这就是为什么这个国家的娱乐节目无法获得的原因啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
看着我和香苗的惊讶，丽安继续解释道。原来，国王不仅限制了国民的娱乐，连言论自由都被束缚了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
虽然国王的支持率并不高，但也没有什么重大失政，这导致国内保持了稳定。只要稳定，国民就不会对王政造反。……也就是说，即使是恶法，只要成为法律，也就成了。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那么，政变就在这时发生了吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c013][r]
不是发生了，而是我们发动的
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安冷冷地说出这番话。她眼中似乎隐含着仇恨的情绪。……我也曾用这样的眼神在业界拼搏。我似乎和丽安有某种共鸣。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c014][r]
通过政变，巴拉莱卡变成了军政府。恶政的时代结束了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c015][r]
王室成员全部被捕，只留下一名王子。正潜藏在丛林中的王子也迟早会被抓获


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c016][r]
真是太好了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她的目光变得更加锐利和严厉。她低声说出的话语似乎蕴含着强烈的意义。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c017][r]
但说实话，并非一切都进展顺利

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c018][r]
前几天，为了向民众展示政权交接，我们在政见宣传节目中播放了被捕国王被处决的画面，结果却引起了民众的同情


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这确实是意料之中的结果。虽然信息被严格管控，但民众对国王并没有太大不满。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c019][r]
我们当前的首要任务，是削弱王党势力的战斗意志，同时制作能够吸引民众支持新政权的节目

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c020][r]
为此，我特意邀请了健二来帮忙

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c021][r]
片仲健二，日本收视率最高的制作人
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c022][r]
如果那些随意切换频道的观众恰好看到了他的节目，下次他们就很难再离开那个频道了


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c023][r]
听起来是这样吧？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这确实是我耳熟能详的说法。在日本的广播界，我似乎以这种方式出名。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
果然如此，您真是了解我啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
报酬什么的无关紧要。但是，能够操纵大众的心智确实让我感兴趣。何况这对这个国家的民众来说，也是全新的娱乐节目。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
我大致明白了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c024][r]
那么，你愿意接受这个任务吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
当然，我会全力以赴，不负丽安小姐的期望

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_202]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c025][r]
这是个可靠的答复
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我快快点头应允，丽安高兴地对我微笑。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c026][r]
那就拜托你了，同志
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她伸出手让我握，那双纤细的手掌刚好被我的手包裹住。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我感受到她与我一样的仇恨之心，不由自主地对她产生了亲近感。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这时，一只粗糙的大手重重地落在了我们的手上。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch09_107]
[ud time=300]

[cm2]

[nowait]【卡拉斯特】[endnowait][r]
拜托了，武士！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
．．．．．．我会尽力而为的，将军
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
那个像岩石一样的大手的主人得意地大笑起来。虽然刺耳的笑声让我很不舒服，但被男人握手更让我感到不快。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安不悦地看了将军一眼，比我更快地抽回了手。看来她也不太喜欢这个人。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c027][r]
具体的事情，我们待会再谈
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c028][r]
先好好休息吧，你一定累坏了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
非常感谢，那就恭敬不如从命了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c029][r]
对了．．．．．．健二，你一直都这么说话吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c030][r]
我们是同志，你可以放松些跟我聊天

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「……好吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_205]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d009][r]
「和老板住在同一个房间，真是让人心跳呢♪」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c031][r]
「房间是分开准备的。房间数量虽然有些浪费，但也无可厚非」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_207]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d010][r]
「诶……，啊，是这样啊」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她有些失望地耷拉下了肩膀。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c032][r]
「如果你想同住的话，我也没什么意见哦？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「不，分开住就好」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_207]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d011][r]
「呜呜……连老板也……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这不是来度假的。我不轻不重地瞪了香苗一眼，她注意到我的视线，只好闭上了嘴。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*OP01_02|&sf.sname_OP01_02

;● bg02　主人公、自室（昼）
;■ＢＧＭ設定
[bgmplay storage="bgm02"]

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02a]
[ud time=500]

[cm2]
被带到的房间，由于是宫殿的一间客房，装修得相当豪华。大概原本是贵宾用的房间吧。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「呼……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
放下行李，望向窗外。修剪整洁的庭院，让我的疲惫得到了些许缓解。不过仔细一看，墙壁上还残留着血迹。克里格德的痕迹依然历历在目。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
关上窗户，躺到床上。与其看着窗外，我觉得躺下休息会更有助于缓解疲劳。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●暗転

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]

[cm2]
………………。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]

[cm2]
……。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]

[cm2]
;● bg02　主人公、自室（電燈光）
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg02c]
[ud time=500]

[cm2]
晚餐只是简单地用锅煮了一些食物。与这栋建筑的奢华相比，简朴的餐点让人感觉窥见了这里的内在。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]

*|
;●ＳＥ（ノック音）
[seplay buf=&sf.buf_se storage=se10]

[cm2]
正在昏昏欲睡时，沉重的门传来了敲门声，让我清醒了过来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
是
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c033][r]
「是我，丽安。可以进来吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「丽安？……请进吧」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安一如白天般身穿军服，面容严肃地走进房间。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmplay storage="bgm07"]

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c034][r]
「打扰你休息，真是不好意思」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「没事，请坐」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我拉开椅子，她一时有些犹豫。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c035][r]
「不必客气」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「那我就不客气了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[cm2]
她自己拉开椅子坐下，我也在对面坐了下来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c036][r]
「实际上，我有一件事想拜托你」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「这么晚来找我，看来一定是件很重要的事吧？」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c037][r]
「是的，关于我委托的政见宣传的事」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她稍作停顿，压低声音开始说话。她的表情也变得更加严肃了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c038][r]
「先王的遗孤中，有两位公主」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
「我曾经到访过巴拉莱卡，在照片上见过她们的模样。不过那还是她们年幼时的样子，如今的容貌我并不了解。」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「对了，是姐姐卡秋娅和妹妹玛娅吧？」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c039][r]
「没错，我想请你彻底羞辱她们」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这话说得可真不客气。我静待丽安的下文。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c040][r]
「我要的是对她们进行性侮辱」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她眼中燃起了熊熊烈火。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c041][r]
「……我的母亲曾在王宫里当过女官」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她望着我，却好像在看着别的什么。充满怨恨的低沉嗓音，终于传进了我的耳中。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c042][r]
「母亲被国王强迫与他通奸，怀了我」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c043][r]
「可是当国王知道这件事后，为了避免丑闻，就秘密将母亲逐出了王宫」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c044][r]
「从王宫到市井，母亲一个人抚养了我」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c045][r]
「生活虽然贫困，但母亲在我面前从未丧失笑容，给予了我无私的爱」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c046][r]
「可是，母亲最终还是去世了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_206]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c047][r]
「因为家里连治病的药钱都没有……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c048][r]
当母亲临终前告诉我一切的时候，我发誓要为母亲报仇，惩治那个伤害她的国王！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[cm2]
她重重地拍了一下桌子，从座位上站了起来。
[quake2 pow=1]
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c049][r]
为了复仇，我巧妙地哄骗了那个愚蠢的将军，如今他完全听我摆布了！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c050][r]
即便处死了国王，我的复仇也还未结束
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c051][r]
这些年一直安逸生活的卡秋娅和玛娅，我要让她们尝尽羞辱！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
原来她对王族怀有如此深重的仇恨。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
但是……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
为什么要告诉我这些？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c052][r]
健二不知为何与我有着相同的眼神。一见面我就有这种感觉

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
他和我一样。丽安也感受到了这种相同的感觉。她微微对我一笑。我也怀着亲近的心情，温和地回以微笑。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我想要巧妙地操纵这个天才小丫头。无论今后如何发展，能自由支配丽安都是上策。我是这样计算的。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c053][r]
原来如此，你不过是为了自己的私利在行动。看来我让你失望了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
不，反而让我松了一口气。个人恩怨我更容易理解

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_202]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c054][r]
是吗
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她似乎松了一口气，紧张的神情也放松了下来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
这个委托，可以要求额外报酬吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c055][r]
钱啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
钱倒无所谓。倒是我发现了一件有趣的事

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c056][r]
那是什么？我会尽全力去做的

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
丽安，我想要你的身体
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_203]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c057][r]
……啊！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
直白的表达让丽安吓了一跳。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
只要这个条件达成，我就愿意快快接下这个委托
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我知道她不会拒绝我。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
为了复仇的成功，手段并不重要。正是凭借这样的手段，我才能一步步爬到将军的身边。否则，我根本无法接近他。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]
丽安微微扬起嘴角，笑了笑，那笑容里带着些许自嘲的意味。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c058][r]
知道了。互相了解会让工作进展得更顺利

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那就成交了
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*all_39
;■ＢＧＭ設定
[bgmplay storage="bgm06"]

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg00]
[ud time=500]

[cm2]
丽安点了点头，随即开始脱起军服。她动作迅速，显然已经习惯了这种事。不过，解开扣子的动作却有些生硬。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我上下打量着她的身体。她的双乳虽然不大，但还保留着少女的青涩。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
脱下内裤，全身赤裸。这个小姑娘连阴毛都还没长齐，不像香苗那样有女人味，但这样也很诱人。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_101]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c059][r]
那么，我就先用身体服务你吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●＜＜ＣＧ1＞＞
;●椅子に座っているケンジにフェラをしているリアン
;●リアン全裸、妖艶な笑み。
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV04_002a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
丽安跪在我面前，从我坐着的椅子上拉出我的阴茎。看到我勃起的肉棒，她露出妖艳的笑容，伸出舌头舔了上去。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c060][r]
嗯……舔……吸……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她用手指环住根部轻轻撸动，同时用柔软的舌头舔弄着冠状沟。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c061][r]
舔舔……吸吸……哇，健二的真是又大又硬啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c062][r]
啧啧……吸吮……嗯，感觉怎么样？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
啊，你真厉害，丽安
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
被夸奖后，丽安的脸颊微微泛红，看来是来劲了。这才是我想要的。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c063][r]
让我好好舔走你旅途的疲惫吧……舔舔，吸吸，啵……嗯

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她用力舔舐着我下体的凹陷处，仿佛要把所有的污垢都舔干净。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
被唾液浸润的舌头让我感到阵阵麻痒，舒服极了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c064][r]
尿道也要好好清洁干净哦……咕噜咕噜，嗯……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c065][r]
咕啾咕啾，啊……哈哈，已经流出苦苦的东西了。这么舒服吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她开心地笑着，执着地刺激着马眼，将津液连同前列腺液一起吸吮而尽。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c066][r]
嗯呜……咕噜咕噜、啊嗯、流出好多……吸吮、吸吮、啾啾、啵……舔舔……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c067][r]
健二的前列腺液竟然这么浓稠……好厉害啊……吸吮、舔舔

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她伸出淫荡的舌头，不停地挑逗着。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她只轻轻含住龟头，就像另一种生物一样用舌头舔弄，那感觉实在太舒服了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c068][r]
咕噜咕噜、啵……嗯……舔舔、啵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c069][r]
啊吸……咕噜噜噜、哈……嗯、啾……吸吮、吸吮……已经硬得不行了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安握住肉棒上下撸动，同时头部也跟着动，刺激加倍。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c070][r]
咕噜、咕噜……嗯、嗯……啊、嗯！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c071][r]
在我手中一颤一颤的……嗯、吻、咕噜噜……舔、啵、吻、咕噜……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
纤细的手指在唾液的润滑下动作越来越快。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
阴茎被丽安的唾液和我的前列腺液弄得黏糊糊的，淫靡不堪。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c072][r]
舔舔舔、嗯……嗯嗯……咕噜咕噜、吻……吸吮、咕噜噜……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c073][r]
哈……啵、吸吮、吸吮、啵……啊……咕噜，我的技术也不赖吧？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
;●ＳＥ（ノック音）
[seplay buf=&sf.buf_se storage=se10]


[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c074][r]
嗯嗯、嗯……咕噜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
房间传来敲门声，丽安的折磨稍微减轻了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「是的」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我回答后，她短暂地看了我一眼，但又把视线转回到那根肉棒上，继续吮吸。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d012][r]
「老板，是我，橘」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「是橘啊，进来吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c075][r]
「……呃！？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=sf.lay_ev0]
[loadbg storage=bg02c]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_103]
[ud time=300]

[cm2]
我叫香苗过来，丽安的动作完全停了下来。看来她没想到我会这么做。她睁大眼睛看着我。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_201]
[ud time=300]
;●ＳＥ　丁寧にドアを開ける音
[seplay buf=&sf.buf_se storage=se08]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d013][r]
「失礼了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
一脸轻松的香苗推开门走了进来。丽安从阴茎上移开了嘴唇，紧张地看着她。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_205]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d014][r]
「哎呀，宰相大人？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「今晚不需要你了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我这么说，丽安露出了疑惑的表情。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「丽安，不用在意，继续吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_103]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c076][r]
「真的不用在意吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「嗯，她是我调教出来的忠实下属，不仅照顾我的生活，连下面的事情也全都包办了」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch08_205]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d015][r]
「我们的关系有点神秘呢♪」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_104]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c077][r]
「原来如此，你是健二的性奴隶啊」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「嗯，差不多就是这样」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「她以前可是个女主播哦，很受观众欢迎，人气很高」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_101]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c078][r]
「……原来如此，她在节目上也很受欢迎啊」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安微微挑了挑眉。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「她在政见发布会上也一定能发挥所长」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_101]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c079][r]
「原来如此……我很期待你的表现，香苗」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_205]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d016][r]
「是的，请交给我吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_101]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c080][r]
「那么，我们一起庆祝一下如何？香苗也想加入吧？」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_203]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d017][r]
「诶，可以吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗带着期待的目光看着我，探询着情况。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「嗯，三个人一起玩也不错」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我笑着抱起了丽安的身体。
[p2]


;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

;●背景　暗転
[clearimage layer1=sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=500]

[cm2]
………………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[clearimage layer1=sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=500]

[cm2]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*|


[clearimage layer1=sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=500]

[cm2]
……
[p2]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;●＜＜ＣＧ2＞＞
;●リアンを抱えあげて挿入しているケンジと、リアンの口をディープキスで貪っているタチバナ。
;●リアンとタチバナは指と舌を絡めあってます。
;●リアン全裸、悦楽。タチバナ全裸、悦楽。
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadev storage=EV04_003a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d018][r]
「宰相大人，请把脸转过来……啾」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c081][r]
嗯……嗯……嗯，啾……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d019][r]
多么可爱的小嘴。鼓鼓的，像一颗小果实♪

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c082][r]
香苗的双唇，不知为何似乎在引诱着我
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d020][r]
呵呵，是这样吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗露出淫荡的表情，将舌头滑进了丽安的口腔。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
趁机，我将肉棒插入了丽安的秘处。她微微皱眉，脸颊泛红。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c083][r]
啊啊啊！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她的阴道比想象中还要狭窄。考虑到她娇小的身材，这也在情理之中。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c084][r]
嗯！嗯，啊……吸吮……嗯，啊啊……比想象中大得多……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c085][r]
啊，不要……啊啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
纯真的呻吟声让全身颤抖，阴茎也挺立了起来。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安就像被我们侵犯一样，任凭摆布。但她脸上的表情却流露出快感。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c086][r]
嗯，嗯！嗯，啊……好棒，好粗好硬，好喜欢，啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d021][r]
看你这么迷人的表情……啾，吸吮，啾……舔，舔……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c087][r]
嗯，啊……香苗的唾液，进来了，……吸吮……啊啊……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d022][r]
我会把宰相大人的唾液一滴不剩地吸干哦
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d023][r]
啾噜噜噜……，啾，咕噜，啾噜……呣……啾，呣……，咕噜

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c088][r]
唔……嗯，香苗的口水真是黏糊糊的……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d024][r]
这可是宰相大人的。看，我们之间都拉出了淫靡的银丝了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗离开双唇时，两人之间出现了闪耀的银丝。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
看着两人淫靡的姿态，我更加兴奋，于是更加用力地顶撞进丽安的阴道。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c089][r]
啊！啊，不要……嗯，啊啊……好棒，正好顶到最舒服的地方……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c090][r]
这种感觉我还是第一次体验……嗯，啊……再用力一些，再让我更舒服些吧……


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她的双臂紧紧地抱住我的身体，生怕被甩开。狭窄的阴道和响亮的呻吟声，让我不禁加快了动作。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c091][r]
啊！？啊，唔，啊啊，健二，好激烈……啊啊！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c092][r]
啊，太舒服了……啾，啾……唔，我快疯了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
我好想快点看到你失控的样子
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c093][r]
你为什么要摆出这种挑逗的表情，啊，唔……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c094][r]
看着你这张脸，我好想让你看到我疯狂的样子……嗯，快要到了……

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
你真是个不知羞耻的女人
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c095][r]
嗯……只是因为自尊心太强罢了……呵呵呵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
目光相交时，丽安愉悦地笑了。我直觉地感觉，和她相处应该会很顺利。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那么，只有在和我在一起的时候，我就要剥掉你的那层自尊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c096][r]
呵呵……你试试看吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
微笑着的丽安。她肌肤上的汗珠在灯光下闪闪发亮。她虽然没有公主般的美丽，但瘦弱的身体却有着出乎意料的力量。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这样的肌肤，我可不讨厌。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c097][r]
这样……唔，准确地刺激到那个地方的男人……还是第一次……嗯，啊，啊啊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c098][r]
啊啊，啊……唔，啊啊……到底，你已经睡过多少女人了……５０个？１００个？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那么，丽安呢？你到底被多少男人睡过？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c099][r]
呃……嗯……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
这种事对我们来说并不重要吧？只要现在能够愉快地相处就好了，对吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c100][r]
……是啊
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c101][r]
奇怪的是，在健二面前，我竟然有种重新变成处女的感觉

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c102][r]
和健二做这种事，还是第一次……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那是个好兆头
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c103][r]
「也许吧……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安的表情变得有些困扰，我便一鼓作气地顶到最深处。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c104][r]
「唔，啊，啊……嗯，啊，那里，湿润的地方正好被撞到了！唔，嗯……」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c105][r]
「啊！？嗯，啊，太强烈了，要坏掉了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安的身体渐渐绷紧，呼吸也变得急促，内壁紧紧地吸附住我坚挺的分身。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c106][r]
「啊，那里好弱，不行，要疯了，要高潮了……唔唔！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c107][r]
「香苗……接吻……再用力一点吻我……我不想疯掉，可身体却自己在渴求……嗯，唔，啾，啾啾」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d025][r]
「嗯……舔舔……啾，啾，唔唔……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d026][r]
「老板的这根东西，您很喜欢吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c108][r]
「好像上瘾了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d027][r]
「是吗，那就好」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d028][r]
「我也超喜欢的。只要含住老板的这根，我全身就会融化掉……」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
香苗满怀迷恋地凝视着我的脸。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「独自睡觉的时候寂寞了，就叫上香苗吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d029][r]
「好的，我会一直等着您哦♪」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
他露出无忧无虑的笑容说道。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c109][r]
唔……嗯哈……啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c110][r]
健二……啊，不行……已经……要高潮了……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
即使在交谈中，他也从未停止抚慰，看来她已经接近高潮。而我也快到极限了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c111][r]
哈啊……嗯，嗯，要去了……要去了，啊……健二……啊啊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c112][r]
唔……只有我，露出这么……拼命的样子……嗯嗯……啊，果然，还是有些屈辱啊

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
一次次顶撞子宫口，丽安的身体越发颤抖。阴茎被紧紧吸附，我的呼吸也变得粗重。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c113][r]
嗯，啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
丽安……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c114][r]
嗯，就这样，射进里面……啊！啊，嗯，啊，要去了！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c115][r]
啊，啊啊啊啊啊！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[mesw_off]
[clearimage layer1=sf.lay_ev0]
[loadbg storage=bgffffff]
[ud time=500]
[loadev storage=EV04_003a]
[ud time=500]
[wait time=1000]
[mesw_on]


[cm2]
咚咚咚……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我猛烈地将精液射进丽安的体内。精液很快充满了她的内部，从缝隙中溢了出来。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c116][r]
身体的深处，好烫……啊……啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她露出恍惚的表情，看着从肉穴流出的残渣。然后，她用手指擦拭了还连在一起的结合处流出的白浊液体。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c117][r]
这就是健二的精液吗……嘿
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她舔了舔手指，丽安的全身都颤抖了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c118][r]
嗯……好浓稠……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
那妖艳的笑容让我不寒而栗。我原本只想一次就够了，但现在看来……以后也许还能继续享受。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
下次有兴趣的时候，我会再找丽安。
[p2]

[clearimage layer1=sf.lay_ev0]
[ud time=0]
[return cond="f.inmemory == 1"]
[eval exp="sf.all_39 =1"]

;■ＢＧＭ設定
[bgmstop time=2000]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;日数経過　夕方→夜→朝
[cm2]
[mesw_off]
[loadbg storage=ex2]
[ud time=500]
[wait time=1000]
[loadbg storage=ex3]
[ud time=500]
[wait time=2000]
[loadbg storage=ex1]
[ud time=500]
[wait time=1500]
[mesw_on]

;■■■■■□□□□□■■■■■□□□□□■■■■■
*all_0
*OP01_03|&sf.sname_OP01_03
*|

;■ＢＧＭ設定
[bgmplay storage="bgm03"]


;● bg01　宮殿内、大広間。(電燈光)
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=500]

[cm2]
第二天，我准时来到大厅。我把橘放在一边，和丽安一起等着。士兵们带来了两个穿着礼服的少女。看来她们就是那位皇女了。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_203]
[ud time=300]

[cm2]


[nowait]【？？？】[endnowait][voice buf=&sf.buf_vo storage=OP01a001][r]
放开我，无礼的家伙！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]


[nowait]【？？？】[endnowait][voice buf=&sf.buf_vo storage=OP01b001][r]
好痛啊～
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch01 storage=ch03_202]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch02 storage=ch01_202]
[ud time=300]


[cm2]
两个人被带到我面前时，她们看到丽安就露出了敌意。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]


[nowait]【？？？】[endnowait][voice buf=&sf.buf_vo storage=OP01a002][r]
你是……！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c119][r]
你好啊，卡秋娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_202]
[ud time=300]

[cm2]


[nowait]【？？？】[endnowait][voice buf=&sf.buf_vo storage=OP01b002][r]
你，是杀害父亲的人……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_202]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c120][r]
我是丽安宰相。你好，玛娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a003][r]
你，我绝对不会原谅！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c121][r]
呵，看来你们皇女的言行举止并不像一个国家的公主应有的那般高贵。人民最喜欢的卡秋娅公主，难道不应该更加优雅大方吗？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c122][r]
你也这么觉得吧，玛娅？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b003][r]
啊……！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch02 storage=ch03_204]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]
在丽安高傲的表情下，玛娅把脸扭过去，躲在卡秋娅的身后。卡秋娅被丽安的话语和态度激怒，走到了前面。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a004][r]
要是你敢碰玛娅哪怕一根手指，我就咬断你的手指！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c123][r]
哇，好可怕。……呵呵
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_203]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a005][r]
宰相大人！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安一直挑衅的态度，激怒了卡秋娅到了极点。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
不知她们能保持这种气概多久。把她们受辱的样子展现给国民，她们也不可能一直保持这种气概。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]
面对两位皇女，丽安流露出一种既侮辱又陶醉的表情。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c124][r]
那么，我们就进入正题吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c125][r]
卡秋娅、玛娅。我现在宣布你们的判决
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a006][r]
什么，判决？凭什么宰相大人有权裁决我们？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_203]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c126][r]
你们难道还不明白自己的处境吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c127][r]
你们在我们看来，就和罪犯一样。仅凭你们是王的公主，就已经是罪人了

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a007][r]
唔……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c128][r]
王族实行的愚民政策时代已经结束了。你们只不过是过去的遗物。我们会好好利用你们这些工具的。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b004][r]
把我们当成工具来利用，是什么意思……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a008][r]
不要问，玛娅。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a009][r]
这种蛮族的行为，难道大家都会关注吗？难道不是因为把父王的处决画面在电视上播放，才让大家都讨厌我们吗？


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c129][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a010][r]
你们想知道我怎么知道这些信息吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_201]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a011][r]
因为我们有士兵在给我们提供情报。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a012][r]
不过你们这些乌合之众，还是好好保护好自己的周围吧。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]
丽安拼命压抑着内心的情绪，握紧的拳头都变得雪白。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c130][r]
我要处决所有和你有关的士兵。感谢他们提供了情报。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a013][r]
……啊！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c131][r]
叛徒是不能留活口的。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_203]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a014][r]
太残忍了！！你难道也是人类吗！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c132][r]
你不如诅咒自己的愚蠢。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c133][r]
对了，别忘了你我也有着同样的血脉。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a015][r]
……什、什么意思？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c134][r]
你不知道吗？王子似乎知道我们的关系。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c135][r]
我们是同母异父的姐妹。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她的表情冰冷到了极点，丝毫没有把自己和她们当成姐妹的意思。也难怪，这个秘密不过是最近才被揭开的。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_201]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b005][r]
姐妹……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_205]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a016][r]
怎、怎么会……！这怎么可能……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
面对两人惊恐的神情，丽安继续宣判。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c136][r]
皇女陛下们，我们已经安排你们通过媒体来配合我们了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_205]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c137][r]
在政见发布会上，让大家看看你们的裸体。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c138][r]
让国民们一睹你们沉沦于淫欲的全过程。呵，这听起来很有趣吧？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch06_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c139][r]
这个国家缺乏娱乐，你们两个皇女陷入淫乱的景象，一定会引起大家的极大兴趣。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch02_205]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a017][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅的脸色瞬间变得惨白，就像是受到了死刑宣告一般震惊。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_204]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c140][r]
执行刑罚的人就是他。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
丽安看向我，皇女们也看向我。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■


*|

[cm2]

[nowait]【健二】[endnowait][r]
我是片仲健二，请多指教。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch04 storage=ch01_202]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch03 storage=ch03_204]
[ud time=300]

[cm2]
他向皇女们伸出手想握手，但她们自然是没有伸出纤细的手来回应。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
姐姐用锐利的眼神瞪视着我。越是近距离观察，她就越是美丽动人。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
一个冷静自持的公主和一个胆怯内向的公主。作为吸引观众的素材，足够了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
非常抱歉，我还不太了解这个国家的风俗习惯，所以想请教一下。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch04 storage=ch01_204]
[loadch layer=&sf.lay_ch2 left=&sf.pos_ch03 storage=ch03_204]
[ud time=300]

[cm2]

[nowait]【健二】[endnowait][r]
你们两位公主，之前有没有过男性经验呢？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch04_204]
[ud time=300]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b006][r]
男性经验……？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
妹妹一脸茫然，不安地看向姐姐。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a018][r]
没有。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我原以为姐姐会骂我无礼，没想到她干脆利落地回答了，还挺有自信的。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a019][r]
虽然这个国家很小，但我们毕竟是公主。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a020][r]
有身份地位的人，除了已经许过婚的对象，是不可能有这种经历的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
听到卡秋娅的话，我感到非常高兴。看来这个国家还保留着适合我的良好传统。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
原来如此，我真是失礼了。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
那么，第一次直播就让国民们目睹你们两个失去贞操的全过程吧。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a021][r]
什、什么！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我在脑海中迅速构思起节目的安排。之后再根据国民的反响来调整节目内容。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b007][r]
不、不可能……不要……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
看来她已经明白了这个词的意思，玛娅显得非常害怕。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
但是，罪过必须得赎啊？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b008][r]
不要……不要啊……！呜呜，嗷呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_205]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a022][r]
玛娅……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b009][r]
姐姐大人……呜，呜呜……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_202]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_206]
[ud time=300]

[cm2]
卡秋娅紧紧地抱住玛娅，像是要保护她一样。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这真是一幕美丽的姐妹情深啊。要是有摄像机就好了，这也会是很好的素材。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_201]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_206]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a023][r]
不用担心，我一定会保护好玛娅的！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
在这种情况下，你打算怎么保护她呢？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_205]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_206]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a024][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅沉默了一瞬，深深地吸了口气。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_202]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_204]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a025][r]
我……我要把自己的贞洁献给国民。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_202]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b010][r]
姐姐大人！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_201]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_205]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a026][r]
不要露出那么悲伤的表情。保护可爱的你才是我的目标。只要你平安无事，我什么都不在乎。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b011][r]
不行，那样的事情……请不要为了我做那种事

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a027][r]
没事的，玛娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch04 storage=ch01_202]
[loadch layer=&sf.lay_ch1 left=&sf.pos_ch03 storage=ch03_205]
[ud time=300]

[cm2]
她坚定地直视着对方。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_202]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a028][r]
不过，这需要有个条件
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a029][r]
我愿意献出自己的身体，作为交换，请不要伤害玛娅

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
条件啊……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅似乎明白，丽安的军队还没有完全掌控这个微妙的局势。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
不过，从某种角度来看，这也许能派上用场。我是被军方雇佣的节目制作人，为了目的，手段是无所谓的。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
而且……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
一见这位公主，我就对她产生了兴趣。越是接触，这种欲望就越是膨胀。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅的初夜，就让我来享用吧。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
呵呵呵……好啊。不过，你真的有这个觉悟吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a030][r]
当然了。你看不出我的眼神在说谎吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
好吧……那就让我在你改变主意之前，看看你这份觉悟吧


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch01_204]
[ud time=300]

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a031][r]
诶！？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
在夺取卡秋娅的贞洁之后，把两人分开，只带走玛娅，然后在政见广播中播放她失去贞洁的画面，那就再好不过了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg01]
[ud time=0]
[quake2 pow=1]
[cm2]
我迫不及待想看到卡秋娅在我怀中哀嚎哭泣的样子。我抓住公主的手腕，将她摔倒在地。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmplay storage="bgm04"]

*|

[cm2]
我的行为让周围的人一时哗然，但没有人敢发表意见。士兵们都吞了口唾沫，而丽安则是一脸兴奋的样子，在偷笑。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●＜＜ＣＧ1＞＞
;●　ケンジに正面から無理やり繋がられている姉姫。
;●　ケンジはかなり乱暴に姉姫のアゴを掴んでいる。
;●　肩越しに泣きながら佇む妹姫と笑みを浮かべる宰相が見える。
;●　表情は泣き、半裸
;■■■■■□□□□□■■■■■□□□□□■■■■■
*|
[mesw_off]
[loadev storage=EV04_004a]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
我扯开卡秋娅的礼服，士兵们顿时兴奋不已，纷纷起哄。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这些平时无法触及的上等女子，此刻正在我们面前赤身露体。仅此一点，就足以让他们心满意足了。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a032][r]
不要啊！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
公主下意识想逃跑，但我紧紧抓住她的下巴，不让她逃脱。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
好好看着我的脸，卡秋娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我用力掰过她的下巴，让她无法移开视线。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a033][r]
呜，唔．．．．．．
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
从现在开始，就记住夺取你贞洁的男人的脸吧
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她狠狠瞪视着我，眼中却浮现了泪水。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b012][r]
有谁来救救姐姐啊！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c141][r]
谁来救她啊？马上就要开始精彩的表演了。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b013][r]
呜，呜呜．．．有谁来．．．有谁来啊．．．！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a034][r]
玛娅……
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
玛娅的哀嚎声传入我耳中，卡秋娅的力气也渐渐弱了下去。趁这个机会，我扯下她的内裤，一鼓作气插了进去。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a035][r]
啊啊！！不要，不要啊啊啊啊！！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这声悲鸣在宫殿中回荡。听到这声音，妹妹公主紧紧捂住耳朵，眼睛也紧闭了起来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
正如他所说，卡秋娅的身体从未接纳过男人的东西。他破开了处女般的膜，直插到子宫口。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a036][r]
好痛！！不要啊！啊，啊．．．呜！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a037][r]
呜，呜呜．．．在所有人面前暴露成这样．．．这怎么可能被原谅啊！呜，呜呜

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
尽管脸上流露着痛苦，但她还是强撑着说出这番话。否则就太无趣了。因为民众一定渴望看到像她这样的存在沦陷的模样。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a038][r]
呜，啊．．．嗯．．．好像要裂开一样好痛！！为什么会这么痛．．．

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c142][r]
正是因为你罪孽深重
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a039][r]
嗯嗯，啊啊．．．不要再插进来了！！

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
他用力压住腰部，玩弄着结合处，卡秋娅顿时哭喊了起来。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a040][r]
已经．．．啊．．．呜呜．．．我的贞洁，你已经夺走了吗？

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a041][r]
快点，把你那肮脏的东西从我身上拿出去．．．
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
…………
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a042][r]
怎么了？难道听不见我的话吗？
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
我听见了，卡秋娅
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a043][r]
既然听见了，就快点照我说的做！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a044][r]
「你给我放开这双手！我可是这个国家的第一公主，卡秋娅啊！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「啊，我当然知道」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「作为囚犯的你，也是如此」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a045][r]
「啊啊！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「难道你以为就这样就结束了吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「你不想让我对玛娅出手吧？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a046][r]
「．．．！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她咬破了嘴唇，鲜血直流。她的身体在恐惧和愤怒中颤抖，泪水不断流下。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「我们继续玩吧，卡秋娅」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
粗暴的言语让她绝望不已。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a047][r]
「呜．．．啊啊，啊啊啊．．．」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
他开始挺动腰部，迎合着勃起的欲望。比起普通的偶像，这种感觉更加兴奋。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a048][r]
「求求你，不要动．．．好痛啊．．．呜呜．．．」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a049][r]
「啊！嗯嗯．．．啊，啊．．．呜，呜呜．．．嗯，啊．．．」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
带着鼻音的哭腔，卡秋娅承受着淫棒的侵犯。她无法为妹妹反抗，只能任由自己沦陷。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a050][r]
「还有几秒就结束了吗……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「那要看你的表现了。再让我看看更诱人的表情吧。这样就能早点从痛苦中解脱了」


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a051][r]
「这怎么可能呢！呜呜！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「真遗憾」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a052][r]
「那我可以唱首歌吗？这样或许能让我稍微分散注意力……啊啊！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「在我身下的时候，你居然想用别的东西来转移注意力，这是不可原谅的」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
他用力地冲撞到最深处。这对她来说无疑是屈辱和难以忍受的痛苦。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a053][r]
「啊！呜呜呜！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a054][r]
「感觉身体要散架了……啊啊！不要，不要啊！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「我还没有射出来」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a055][r]
「呜呜……随你便吧……呜呜」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a056][r]
「随便你做什么……啊，快点结束吧！呜呜，啊啊……」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
虽然她感受到了痛苦，但她的内壁还是紧紧地包裹住了我，这种刺激让我忍不住发出了声音。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「啊……呜……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a057][r]
「不要……停下来……不要在我身上寻求快感，这太恶心了！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「别说这种无理的话」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「对于我和国民来说，你这具身体可是极品素材，让你不去感受是不可能的」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a058][r]
「我不是妓女！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「那你算什么？脱衣舞娘吗？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「你不过就是个为取悦男人而存在的工具。不如好好用你的身体来赎罪吧」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a059][r]
「呜呜……呜，哇……呜呜呜……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a060][r]
「健二，我永远都不会原谅你的」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a061][r]
「总有一天，我要报复你……。嗯，呼……呜！让你尝尝同样的痛苦！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「啊，我很期待那一天的到来」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我贬低自己的目光，卡秋娅似乎感到被小看了，睁大了眼睛。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a062][r]
「我是认真的！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「当然，我明白」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a063][r]
「你不明白！不要用和那个宰相小姐一样的眼神看我，呜！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c143][r]
「……你也不过是个小丫头而已」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c144][r]
「在众人的视奸下，被陌生男人侵犯……，真是活该你，卡秋娅」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a064][r]
「吵死了……吵死了，吵死了！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她摇头晃脑，挣扎扭动着身体。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「再这样乱动就不好了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a065][r]
「呜呜……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我再次开始挺动腰部。像是要撑开肉壁一般，一次次深入内部。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
那秘处发出细微的吱嘎声，内里的褶皱直接传递到我的阴茎上。隐藏的花瓣仿佛认定我再也无法进入一般，拼命拒绝着我。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a066][r]
「唔呃！啊……啊啊……我听说性行为是件美好的事，怎么会只有痛苦呢……」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a067][r]
「啊哈，嗯……唔嗯……啊！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
她紧闭双眼，泪珠如雨滴般落在地上。漂亮的脸庞被泪水弄得一团糟。那头秀丽的长发也被弄得凌乱不堪。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a068][r]
「啊哈！嗯……唔，啊……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a069][r]
「啊……被大家看着……我羞耻的地方，被大家看光了……」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「呵呵呵……感觉如何？」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a070][r]
「最糟糕了……！光是看着你的脸，我就想吐！」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「呵呵呵」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
微微的黏腻感和鲜血，前列腺液混合在一起的液体，让我的肉棒滑动得更加顺畅。黏糊糊的感觉，与我兴奋的心情成正比，让我感到非常舒服。



[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a071][r]
「呜呜……嗯，啊，嗯，呜呜呜！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a072][r]
「快点结束吧……嗯，嗯嗯……啊，啊」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅痛苦地呻吟着。如她所愿，我的肉棒已经肿胀到了极限。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a073][r]
「下巴也好痛……啊，呜呜呜……嗯，嗯」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a074][r]
「啊啊！讨厌，里面变得好粗！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「我会用我的精液好好地给你化妆的……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a075][r]
「不要，不要啊！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
我加快了抽插的动作，紧紧抓住她的下巴继续进出。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
淫靡的水声让我一下子就达到了高潮。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「啊啊……！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;●　＜差分1＞
;●　　射精差分。
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[loadbg storage=bgffffff]
[ud time=500]
[loadev storage=EV04_004b]
[ud time=500]
[wait time=1000]
[mesw_on]

[cm2]
喷涌而出！！喷，喷！！
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
在最后一刻拔了出来，将精液洒在她美丽的身体上。
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
从痛苦中解脱的卡秋娅，沉浸在余韵中痉挛着。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
每当精液沾到身体上，她的身体就会颤抖。这副景象给了我强烈的征服欲。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
这位美丽的公主被我这样的平民覆盖上精液，这种支配欲是我少有感受到的。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a076][r]
「啊……身体上有奇怪的东西……呼，呼……」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c145][r]
「那是精液哦，卡秋娅。如果被注入到阴道里，就会怀孕的」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a077][r]
「啊啊……！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
卡秋娅的表情瞬间变得惨白。然后，她用衣服擦拭掉沾在身上的大量精液。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a078][r]
「不要，我讨厌这样啊啊啊！！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「呵呵呵……这才刚刚开始呢」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]



[nowait]【卡秋娅】[endnowait][voice buf=&sf.buf_vo storage=OP01a079][r]
「呜……呜呜……」
[p2]


[return cond="f.inmemory == 1"]
[eval exp="sf.all_0  =1"]




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmplay storage="bgm03"]

*|
[clearimage layer1=&sf.lay_ev0]
[loadbg storage=bg01]
[ud time=500]

[cm2]
我已经完全满足了，就让旁边的香苗来处理残渣。

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch03_203]
[ud time=300]

[cm2]



[nowait]【玛娅】[endnowait][voice buf=&sf.buf_vo storage=OP01b014][r]
「姐姐……姐姐啊啊啊！」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
哭喊的玛娅。看着她们毫无掩饰的情感，我脑海中不禁浮现出了一个接一个的节目编排。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
将高贵出身的公主堕落的过程作为特别节目播出。这样一来，王室的威信也会轻易崩塌。


[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「呵呵呵……这可真有意思啊」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「丽安，把她们分别关在不同的房间里」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch05_201]
[ud time=300]

[cm2]



[nowait]【丽安】[endnowait][voice buf=&sf.buf_vo storage=OP01c146][r]
「知道了」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「橘君，赶快着手准备竞选演讲吧」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]

[nowait]【健二】[endnowait][r]
「把准备节目所需的一切工具，立刻都拿到我的房间来」

[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|
[loadch layer=&sf.lay_ch0 left=&sf.pos_ch00 storage=ch07_201]
[ud time=300]

[cm2]



[nowait]【香苗】[endnowait][voice buf=&sf.buf_vo storage=OP01d030][r]
「明白了，老板」
[p2]

;■■■■■□□□□□■■■■■□□□□□■■■■■

*|

[cm2]
好了，现在才是我施展才华的时候。让我们用宣传来操纵民众的意志吧！

[p2]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＢＧＭ設定
[bgmstop]
*OP01_01_exit
[cm2]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[ud time=500]

[return]

