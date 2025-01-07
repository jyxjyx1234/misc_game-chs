*CG13_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

[chara_new  name="母"   storage="chara/mob_onna/haha.png" jname="母"]
[chara_new  name="父"   storage="chara/mob_otoko/chichi.png" jname="父"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_12_{number}.mp3" number="7"]
[voconfig sebuf="2" name="父" vostorage="mob_otoko/chichi_12_{number}.mp3" number="1"]
[voconfig sebuf="2" name="母" vostorage="mob_onna/haha_12_{number}.mp3" number="1"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

;;; - - - - - - - - - - - - - - - - - - - - - 過去回想

[bg storage="nozomi_kako_apart_yoru.jpg" time="1000" method="vanishIn"]
[wait time="1000"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_heya04.jpg" time="1000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

7岁的生日。[p]
妈妈在超市买了蛋糕回来。[p]
她说是半价买的。[p]
半价？那是什么呢。[p]
蛋糕好像很贵，真是奢侈啊。[p]
今天，我们吃了浇上「酱汁」的豆芽菜盖饭。[p]
豆芽菜的脆嫩口感特别好吃。[p]
吃完饭后，妈妈端来了蛋糕。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

她在蛋糕上插上蜡烛，点燃后关掉了电灯。[p]

[bg storage="nozomi_heya02.jpg" time="800"]

我和妈妈一起唱完「生日快乐歌」后，我对着蜡烛的火焰吹了一口气。[r]
[p]

[bg storage="nozomi_heya03.jpg" time="800"]

每到生日，我们都会这样做。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

呜呜，好想快点吃啊。[p]
但是……今天不仅仅如此。[p]

[chara_show  name="母" top="190" time=500]
[mob_window]
#母
今天还有个特别的惊喜哦？[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

妈妈说着就把那个男人带回了家。[p]

[chara_show  name="母" top="190" time=500]
[chara_show  name="父" top="70" time=500]

妈妈说这是新爸爸。[p]

[fadeoutbgm]

是第三个爸爸了。[p]
那个男人看着我微笑。[p]
上一个爸爸去哪里了呢？[p]
比起这个，我更想快点吃蛋糕。[p]

[chara_hide name="父" time=500 wait=true]

趁那个男人去厕所的时候，我看向了蛋糕。[p]
这时，[p]

[chara_show  name="母" top="190" time=500]
[wait time=200]
[playse buf="3"  storage="HandSynthClap.mp3" volume="50"]
[quake count=2 time=200 hmax=20 vmax=20]
[wait time=800]

妈妈打了我的脸颊。[p]

[mob_window]
#母
@layopt layer=message0 visible=false
[nowait]
孝昌先生是个非常好的人，你不能摆出那种表情！
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

_　[r]
_　[cm]

[nolog]
孝昌先生是个非常好的人，你不能摆出那种表情！[p]
[endnolog]

[default_window]
#
虽然不想疼，但这已经是家常便饭了。[p]
如果我不按妈妈说的做，经常会被骂被打。[p]
不过，等她不生气了，就会紧紧抱着我，我们还会睡在同一个被窝里。[p]
她一边紧紧抱着我，一边不停地道歉说「对不起让你疼了，对不起」。[p]
看到道歉的妈妈，我心里一阵难过，所以我也说了对不起，为自己做错的事道歉。[r]
[p]
我和妈妈之间，总是在不停地道歉……[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_03.jpg" time="800"]

所以每次有新爸爸来的时候，我都很担心妈妈会不会生气。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[playbgm storage="08Voices_orgel.mp3" volume="40"]

从第三个爸爸开始来我家之后。[p]
一开始我有点担心……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

但爸爸为我们做了非常美味的料理。[p]
有肉有鱼！[p]
美味料理的全套菜单。[p]
在爸爸做的料理中，我最喜欢的是蛋包饭。[p]
为了感谢爸爸做的美味饭菜，我会拍拍爸爸的肩膀。[p]
不过，爸爸很少和我说话。[p]
也许他真的觉得我在害怕他吧。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

但是，当我半夜起来上厕所时，他会默默地跟着我，还会陪我一起睡。[p]

[bg storage="monolog_01.jpg" time="800"]

虽然我不像其他孩子那样能上幼儿园或学校……[p]
但因为有妈妈和爸爸在身边，我并不感到孤单。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

这样的生活持续了大约3年……[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[wait time="800"]
[bg storage="CG22/CG22.jpg" time="800"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

我到了10岁。[p]
妈妈工作到深夜，爸爸从早到晚都在工作。[p]
两个人都不在的时候，家里只有我一个人，所以我会反复观看录下来的动画。[p]
那是一部以战斗少女为主角的动画。[p]
我最喜欢那个不屈不挠地与坏人对抗的主角「渚」。[p]
我还会在不用的纸的背面画她的画。[p]

[bg storage="nozomi_yuuyake.jpg" time="800"]

爸爸回来后，马上就会为我准备晚饭。[p]
因为妈妈总是在工作地点吃饭，所以他只需要准备两人份。[p]

[bg storage="nozomi_yokushitsu.jpg" time="800"]

我们一起吃完饭，那天决定一起洗澡。[p]
虽然我和爸爸关系变好了，但是被看到裸体还是很丢人。[p]
所以，我背对着他尽量不让他看到。[p]
爸爸看起来很高兴能和我一起洗澡。[p]
我想，只要爸爸高兴就好。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

但是，从浴室出来后，我脱下的内衣不见了。[p]
明明应该放在篮子里的。[p]
之后也一直找不到……但每次都会多出新的内衣。[p]
是妈妈或爸爸在帮我换吗？[p]
如果是爸爸在做的话，有点丢人。[p]

[bg storage="monolog_03.jpg" time="800"]

尽管如此，我还是一直对爸爸心存感激。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

正因为这样想，所以我……[p]
一直想要报答爸爸。[p]
为了感谢他做美味的饭菜，对我温柔以待。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

当我问爸爸我能为他做些什么的时候……[p]

[chara_show  name="父" top="70" time=500]

爸爸说「这是只有望才能做到的事」，然后提出了一个请求。[p]

[chara_hide_all time=500 wait=false]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_super.jpg" time="1500"]

他拜托我去家附近的「超市」，带回来一个棕色的瓶子……[p]
他说了些「威士忌」啊「酒」之类的……是什么呢？[p]
他还说，即使店里的人问什么，也要对爸爸的事保密。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[wait time="800"]
[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

看到我回家后，爸爸有点坐立不安……但后来他非常非常地表扬了我。[p]
那真的让我很高兴。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="700" wait="true"]

从那以后，我每天都应父亲的要求把「酒」带回家。[p]

[bg storage="nozomi_super.jpg" time="800"]

但有一次，店里的人对我说「不能随便拿走哦」……[p]
所以从那以后，我就小心地藏起来，不让店里的人发现，然后把「酒」带走。[p]
有时也会带回一些不同的，比如「罐装啤酒」之类的。[p]

[bg storage="nozomi_heya04.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

每次带回来，父亲都会表扬我，有时还会给我糖果或巧克力。[p]
因为奖励让我很开心，所以我更加卖力地带回了更多「酒」。[p]
父亲很喜欢这种叫「酒」的饮料，喝完后经常睡在地板上。[p]
他说是醉了。[p]
醉，是什么意思呢？是会变得很困吗？[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[wait time="2000"]
[chara_hide_all time=0 wait=false]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="700" wait="true"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

又有一天，我在离家不远的地方发现了一只小猫在睡觉。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

它的毛发有点乱蓬蓬的，看起来不太精神。[p]
所以，我从「超市」带来了猫粮，给小猫吃。[p]
一开始它马上就跑掉了，但每天重复这样做，小猫慢慢地开始亲近我了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_sukima.jpg" time="0"]
[mask_off time="700" wait="true"]

渐渐熟悉之后，它还会用身体蹭我的腿。[p]
但是关于小猫的事，还有给父亲带「酒」回家的事，我都没有告诉妈妈。[p]
总觉得，可能会被骂，所以没说。[p]
但是，那种保守秘密的时光有点让人开心。[p]

[bg storage="monolog_03.jpg" time="800"]

而且……总是来同一个地方的小猫，我觉得有点像我。[p]
我想，我是在那只看起来无处可去的小猫身上，看到了自己的影子。[p]
所以我越发喜欢上了那只小猫。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

白天照顾小猫，晚上和爸爸吃饭。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

妈妈在我睡觉的时候回来，我们会聊一会儿天，有时还会一起睡。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="500"]

但是……这样的时光并没有持续太久。[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="1200"]

有一天早上，我听到爸爸在外面大吵大闹，就出去看看……[p]
发现家里的墙上被涂满了涂鸦。[p]

[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

『犯罪者』[p]
『诅咒之家』[p]
『小偷』[p]
『惯犯』[p]
『去死』[p]
『还钱』[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="800"]

虽然我不明白这些话是什么意思……[p]
但看到爸爸那么着急，我就知道墙上写的肯定不是什么好话。[p]
爸爸说这是附近孩子们的恶作剧，然后马上就把它擦掉了……[p]

[bg storage="monolog_01.jpg" time="800"]

但从那以后，爸爸的态度变了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

他说话变得粗暴，半夜和妈妈吵架的次数也增多了。[p]
我装睡的时候，心里总是在祈祷他们能和好。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

第二天。[p]
因为想让爸爸高兴起来……我问爸爸要不要再去拿些「酒」来？[r]
[p]

[chara_show  name="父" top="70" time=500]

结果爸爸露出可怕的表情瞪着我。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

那表情太可怕了，我差点就要哭出来了。[p]
我立刻意识到自己做错了事。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

看到爸爸举起胳膊，我下意识地用双手护住了头。[p]
我以为他会像妈妈发火时那样打我的头。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

……但是爸爸没有打我的脸。[p]
但是他……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

[mob_window]
#父
不要在脸上留下瘀痕……真是的，要是你能做得更好点，我也不至于落到这步田地！[r]
[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya05.jpg" time="800"]

[default_window]
#

_　[r]
_　[cm]

……那时我第一次被叫做「你」。[p]
明明一直都是叫我「望」的。[p]
「这步田地」是指什么呢？[p]
我不太明白，问了也不告诉我。[p]
对不起。对不起。对不起。[p]
虽然不知道原因，但我不想被讨厌……所以只是一直道歉。[p]

[fadeoutbgm]
[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]

……那个涂鸦到底是什么意思呢。[p]

[bg storage="kuro.jpg" time="800"]

但是，随着时间流逝……[p]
涂鸦的事也渐渐被遗忘了……[p]

[mask time=" 2000" graphic="kuro.jpg"]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="1000" wait="true"]
[wait time="800"]
[bg storage="CG22/CG22_2.jpg" time="800"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

从那以后过了7年……我17岁了。[p]
说是17岁，其实再过两天我就18岁了。[p]
小时候，我以为17岁就算是成年人了。[p]
但是……一直以来，我都在小心翼翼地观察妈妈和爸爸的脸色过日子。[p]
独自一人的时候，我会画画、看电视，或者照顾流浪猫咪。[p]
电视里的世界对我来说充满了魅力。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshimaeki02_2.jpg" time="0"]
[mask_off time="300" wait="true"]

看起来很有趣的交通工具和……[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima01_2.jpg" time="0"]
[mask_off time="300" wait="true"]

看起来很美味的食物，热闹的街道。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima07_2.jpg" time="0"]
[mask_off time="300" wait="true"]

特别想去的是卯之岛这个观光地。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima09_2.jpg" time="0"]
[mask_off time="300" wait="true"]

岛上有个小山丘，从那里看出去，是天空和大海融为一体的一片蓝色世界。[p]
仅仅是在电视里看到这景色就让我心跳加速。[p]

[bg storage="CG22/CG22_2.jpg" time="800"]

要是有朝一日我也能去看看那样的景色就好了。[p]
还有，我也会看妈妈喜欢录下来的恋爱剧。[p]

[bg storage="monolog_01.jpg" time="800"]

恋爱。[p]
这对我来说是个遥不可及的词……我甚至无法想象自己和男生接吻的场景。[r]
[p]
看剧的时候，不知不觉就会想起爸爸妈妈。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

现在的爸爸妈妈……自从那次涂鸦事件以来，看起来就不怎么幸福了。[r]
[p]
不由自主地就会把剧中的幸福和现实比较起来。[p]

要是有朝一日，我也能和某个wonderful的人，谈一场幸福的恋爱……那该多好啊。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

我一边这么想着，一边走向脱衣间准备开洗衣机，却发现那里放着一个陌生的东西。[p]
是一个小手电筒。[p]
而且它被塞在架子上叠放的毛巾之间，像是故意藏起来似的。[p]
以前有这种东西吗……？[p]
带着这样的疑问拿出手电筒时，我感到一丝违和感。[p]
……和家里一直用的那个不一样。[p]
而且仔细看，根本找不到开关灯的按钮。[p]
最引人注目的是侧面安装的小屏幕。[p]

[bg storage="nozomi_yokushitsu2.jpg" time="800"]
[playbgm storage="06_hansinhangi.mp3" volume="40"]

屏幕上显示的是我眼前的浴室。[p]
不，准确地说……显示的是我手中这个手电筒所指的方向。[p]
也就是说，这是……摄像头？[p]
是爸爸或妈妈放在这里的吗？[p]
可是，为什么要放在这种地方……[p]
就好像……有人在偷拍一样……[p]
……不对，我一直在家，如果有人进来做这种事的话，我肯定会立刻发现的。[p]
大概是爸爸妈妈的私人物品，不小心放在这里忘记拿走了。[p]
放在这里可能会因为潮湿而损坏，我还是把它收到壁橱里吧。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[mask_off time="1000" wait="true"]

那天晚上。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

爸爸回到家后，焦急地四处寻找着什么。[p]
平常这个时候他应该开始准备晚饭了。[p]
正当我这么想着的时候，爸爸问我：[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
手电筒，是望收起来了吗？[p]

[default_window]
#
原来是爸爸的东西啊。[p]

[chara_hide_all time=500 wait=true]

我告诉他我把它收到壁橱里了，他立刻急匆匆地去取。[p]
一方面我松了口气，没有被骂真是太好了，但另一方面……[p]

[bg storage="nozomi_heya05.jpg" time="800"]

『就像是有人在偷拍一样』[p]
那个画面瞬间又浮现在我脑海中。[p]
如果爸爸在偷拍我或妈妈的……裸体的话……[p]
不……还是别想了。[p]
爸爸……从小就给我做饭，我害怕的时候还陪我一起睡。[p]
温柔的爸爸不可能做那种事。[p]
虽然这么想着，但我还是想要证实爸爸没有做那种事。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_heya01.jpg" time="0"]
[mask_off time="700" wait="true"]

第二天中午。[p]
趁没人的时候，我偷偷看了爸爸的抽屉。[p]
虽然几年前就被告知里面放着重要的东西不能打开……[p]
因为觉得擅自打开会被骂，最近也没想过要打开。[p]
所以，为了不被发现，为了不留下痕迹……[p]
我按顺序打开抽屉。[p]
里面杂乱地塞满了文件、小物件和文具。[p]
当我打开最底下的抽屉时……不由得惊叫出声。[p]

[bg storage="monolog_01.jpg" time="800"]

里面放着的是……[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[wait time=500]
[bg storage="nozomi_heya11.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

整齐叠好放在拉链袋里的，我的……内裤。[p]
而且，那还是就在一周前我洗澡时脱下的，之后一直以为丢了的内裤。[p]
……说起来很久以前，也曾发生过脱下的内衣不见了的事。[p]

;;;よどんだようなエフェクト
[bg storage="effect_04.jpg" time="800"]

一种难以言喻的恶心感涌上心头。[p]

[bg storage="kuro.jpg" time="800"]

但是，如果爸爸真的……我的……[p]
偷了内衣，甚至还偷拍的话……[p]
……是为了什么？[p]
为了自己……享乐？[p]

[bg storage="nozomi_heya01.jpg" time="800"]

答案很快就明白了。[p]
和内衣放在一起的抽屉里还有一个信封……上面甚至写着收件地址。[p]
那个信封是网上二手交易平台的。[p]
电视上说现在流行通过这种方式卖东西赚钱。[p]
而且看了信封里的东西，还有我以前穿过的其他内衣。[p]

[bg storage="effect_04.jpg" time="800"]

也就是说，爸爸他……[p]
把我用过的内衣在网上卖掉……可能还把偷拍的视频也卖到了哪里？[p]
虽然还没有确凿证据，而且这种东西能卖出去也太恶心太奇怪了。[p]
但是……我在新闻上看到过有人因为做同样的事被抓了。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="300"]
[playse buf="3"  storage="Door_open_short.mp3" volume="30"]

就在我这么想的瞬间。[p]
听到了玄关的门被打开的声音。[p]

[playse buf="3"  storage="run_in_house.mp3" volume="40"]
[bg storage="nozomi_heya01.jpg" time="1000"]

回来的是爸爸。[p]
明明平常这个时候应该在工作的……[p]

[bg storage="monolog_01.jpg" time="300"]

……很快就明白了其中的原因。[p]
因为书桌的抽屉一直是锁着的。[p]
他害怕抽屉被打开，所以趁午休时间回来了。[p]

[bg storage="nozomi_heya01.jpg" time="300"]

但是，已经太迟了。[p]

[chara_show  name="父" top="70" time=500]

看到呆立在那里的我，爸爸露出了震惊的表情。[p]
然后慢慢地变成了带着愤怒的表情……[p]

[quake count=3 time=200 hmax=20 vmax=20]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[wait time=100]

他把站在书桌前的我推开，就像在移开一件物品一样。[p]
我重重地跌坐在地上，他却看都不看我一眼……[p]

[chara_hide_all time=500 wait=true]

爸爸锁上了书桌的锁，装作什么事都没发生过就要离开。[p]
我对着他的背影问道。[p]

[playbgm storage="naraku.mp3" volume="30"]
[bg storage="monolog_01.jpg" time="300"]

——喂，爸爸，抽屉里的东西……是怎么回事？[p]

[bg storage="nozomi_heya01.jpg" time="300"]
[chara_show  name="父" top="70" time=500]

他猛地停下脚步，转过身来，脸上依然残留着愤怒的表情。[p]

[mob_window]
#父
望。一直以来，真是谢谢你啊[p]

[default_window]
#
明明绝对是在生气……却笑着说出了感谢的话。[p]
完全不明白爸爸在想什么……感觉脑子都要乱了。[p]

[mob_window]
#父
我们家很穷，所以一直在卖望用过的内衣和录像数据。穷人啊，只能这样赚钱[r]
[p]

#父
瞒着望是我不对。以后不会再这样了。我知道这是错的，我反省了。待会儿我也会告诉你妈妈的[r]
[p]

[default_window]
#
_　[r]
_　[cm]

这样子，就像只是在排列词句一样说出来的话，根本打动不了我。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]

因为爸爸根本就没有道歉的意思嘛。[p]
我知道这么说会被骂……[p]
但心里残留的那种不舒服的感觉让我忍不住追问下去。[p]
我还是追问了下去。[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[chara_show  name="父" top="70" time=500]

[nozomi_window]
#望
那就是说我一直……都是被爸爸用来赚钱的工具吗？[p]

[default_window]
#
我这么一说，爸爸顿时火冒三丈。[p]

[mob_window]
#父
那当然了！内衣和录像都卖了高价，整整9年都是这样！[p]

#父
以前让你从超市偷酒也是这个道理。……啊，我没说过吧，擅自拿走商品是犯罪行为[r]
[p]

#父
那事被发现后，家里的墙被涂鸦了。大概是店主在泄愤吧……[p]

#父
我跟美希说那是小孩子恶作剧，要不是你被发现，哪会被涂成那样！[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

——犯罪？[p]
犯罪不就是会被警察抓起来，所以不能做的事吗？[p]
爸爸竟然让我做这种事？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="nozomi_heya06.jpg" time="0"]
[kanim layer=base keyframe="shake" time="2000" count="infinite"]
[mask_off time="300" wait="true"]

我感到心脏仿佛被贯穿一般的冲击。[p]
一直相信的现实开始动摇……变得支离破碎。[p]
而且，我一直都是为了爸爸才这么做的……[p]
不想相信。无法相信。[p]
但爸爸承认了，他一直在利用我。[p]

[mask time=" 300" graphic="kuro.jpg"]
[stop_kanim]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

我什么都不知道。[p]
什么都不知道。[p]
什么都不知道。[p]
什么都不知道！[p]

[bg storage="nozomi_heya01.jpg" time="800"]

我……[p]
我只是……[p]
只是想要……报答爸爸的恩情而已！[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
你知道我为什么一直做这种事吗？其实不是为了钱。其实是……[r]
[p]

#父
我想要……爱你。我觉得只要有利可图……就能好好爱你[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya06.jpg" time="1000"]

啊————[p]
我在不知不觉中犯下了罪行。[p]
不仅如此……[p]
父亲一直在网上贩卖我的内衣和视频。[p]
最重要的是……继父用性的眼光看待我这个事实。[p]

[bg storage="monolog_01.jpg" time="500"]

罪恶感和被注视的恶心感让我无法承受，我跪倒在地。[p]
在这种情况下，这个人说的话在我脑海中不断重复。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

「我想要爱你」。[p]

[bg storage="monolog_01.jpg" time="500"]
[fadeoutbgm]

他所做的事和这句话，实在是相去甚远……[p]
我无法理解。[p]
而且……自己犯下的罪行，被这个人做的事……以及过去的回忆，还有仍然想要相信的心情。[r]
[p]
各种各样的事情，在脑子里不断地混杂在一起……[p]
我已经，什么都，不想思考了。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

不知道过了多长时间。[p]
什么都无法思考，只是茫然地发呆……[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

突然，想见小猫了，趁着天还亮就出门了。[p]
大概，是在寻求帮助吧。[p]
这7年里，几乎每天都见面。[p]
前些天，它一看到我就靠近蹭蹭我。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]

但是，最近为了讨父母欢心，完全没能见面……[p]
大概有一个月没见到它了。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

去看的时候，小猫正在老地方睡觉。[p]
阳光照在它身上，看起来很舒服的样子。[p]
松了口气，轻轻抚摸它的身体。[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

——可是，没有反应。[p]
而且，冷得难以置信。[p]
平时把手指放在它头旁边，它总是会蹭蹭我的脸。[p]
现在……却完全不动了。[p]

[bg storage="nozomi_sukima.jpg" time="500"]

我以为它身体不舒服，就把小猫抱了起来。[p]
结果发现它右脚有一处严重的伤口……[p]
我明白了，它是因为受伤而无法动弹。[p]

[bg storage="nozomi_sukima2.jpg" time="500"]

但就在那一刻，无数蛆虫从小猫的腹部哗啦啦地涌了出来。[p]

[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

我浑身起了鸡皮疙瘩，下意识地把小猫扔了出去。[p]

[bg storage="nozomi_sukima3.jpg" time="800"]

因为被扔出去的冲击，小猫的身体仰面朝天……[p]

[nolog]
蠕动的蛆虫不仅吞噬了小猫的身体，连眼球也毫不留情地啃食殆尽，我甚至能看到眼窝深处蛆虫蠕动的景象。[r]
[p]
[endnolog]

[pushlog text="蠕动的蛆虫不仅吞噬了小猫的身体，连眼球也毫不留情地啃食殆尽，我甚至能看到眼窝深处蛆虫蠕动的景象。"]

[bg storage="effect_02.jpg" time="800"]

看到那一幕后，我再也无法直视它了。[p]
中午吃的饭突然涌上喉咙，我忍不住就地呕吐起来。[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

我拼命地呕吐着，眼泪也流了下来。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

为什么，为什么，为什么，为什么，为什么。[p]
为什么……我要遭遇这种事────？[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

那只我一直把自己投射在其身上的小猫……就这样在我眼前变成了如此凄惨的模样。[p]
而我────居然觉得它恶心。[p]

[bg storage="kuro.jpg" time="800"]

啊啊……[p]
我真是太差劲了。[p]
被那个人利用了。[p]
犯下了罪行。[p]

[bg storage="nozomi_sukima4.jpg" time="800"]

一直强忍着不哭，但在恶心呕吐的瞬间，眼泪像决堤一样涌了出来。[r]
[p]
各种事情叠加在一起，感情变得一团糟，再也无法控制了。[p]
全部，全部，都想吐出来。[p]
每当这么想的时候，恶心感就涌上来。[p]
胃液都吐光了，明明已经什么都吐不出来了，却还是在干呕，试图吐出些什么。[p]
把所有恶心的东西都吐出来……如果能像什么都没发生过一样，轻松起来就好了……[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

……但是……对了。[p]

[bg storage="monolog_03.jpg" time="800"]

我还有……妈妈。[p]
虽然妈妈现在有时还是很可怕，还会打我……[p]
但即便如此，她一定会站在我这边的……[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

在过去的10年里，妈妈工作一直很忙，总是半夜才回家。[p]
即使爸爸变了，妈妈还是一直为了这个家不停地工作。[p]
我一直都很尊敬这样的妈妈。[p]

[bg storage="nozomi_heya07.jpg" time="800"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]

那天晚上，我和妈妈两个人单独谈了谈。[p]
谈的当然是那个人的事。[p]
我把所有发生的事情，全部全部都告诉了妈妈。[p]
虽然我很害怕，觉得说那个人的坏话会被骂。[p]
但妈妈静静地听我说完。[p]
说完后，妈妈……温柔地抱住了我。[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
对不起，妈妈一直没有注意到。那个人，居然在妈妈不在家的时候做出这种事……真是人渣[r]
[p]

#母
望的事就交给妈妈来保护……你不用再害怕了[p]

[default_window]
#
她抱着我，一遍又一遍地用温柔的声音说着。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

那天晚上，我时隔7年和妈妈一起睡在同一个被窝里。[p]
久违的妈妈的气味。[p]
虽然经历了痛苦和悲伤的事……[p]
但是，我觉得只要有妈妈在就没问题。[p]

[bg storage="kuro.jpg" time="800"]

但是，意外的是……[p]
听完我的话后，妈妈并没有表现出太大的惊讶，反而直接认定爸爸是坏人。[r]
[p]
我虽然想相信爸爸却无法相信了，这让我非常痛苦……[p]
妈妈……难道不想相信爸爸吗……[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="1000" wait="true"]

第二天。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

和往常一样，爸爸妈妈因为工作不在家……[p]
我翻找了妈妈的私人物品。[p]
妈妈总是因为「工作」而在外面待到很晚，但我不知道她到底是做什么工作的。[p]

[bg storage="monolog_01.jpg" time="800"]
[playbgm storage="05_kaikoroku.mp3" volume="40"]

仔细想想，我其实对妈妈了解得并不多。[p]
因为熬夜聊天不好，所以一直以来我们都没有好好交谈过。[p]
这样翻找私人物品虽然感觉像是在作弊，但我无法抑制想要了解的心情。[p]
而且最重要的是，妈妈的存在是我唯一的救赎……[p]
是我的救赎……我真的希望能一直如此。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我打开桌子的抽屉，看里面。[p]
里面有一本记事本。[p]
这本记事本……没错，是妈妈有时半夜会写的日记。[p]
在我不知道的地方，妈妈每天都过着怎样的生活。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo.jpg" time="800"]

我想着答案就写在这里，于是翻开了页面。[p]

[bg storage="kuro.jpg" time="500"]
[stopbgm]

但刚一打开，我就看到了一句难以置信的话……[p]

[playse buf="3"  storage="BookDrop.mp3" volume="80"]

不由得把记事本掉在了地上。[p]
那是两周前的日期记录。[p]
上面写着的是……[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo1_noranekowo.jpg" time="800"]

——「用陷阱杀死了一只流浪猫」[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不可能。[p]
不可能，不可能，不可能，不可能，不可能！[p]
一定是看错了。[p]
但是，再次查看页面，写的还是同样的句子。[p]
下面……还接着写道。[p]

[bg storage="memo2_kaitaitoka.jpg" time="800"]
[playbgm storage="naraku.mp3" volume="30"]

——「在望说要养流浪猫之前就处理掉了，真是太好了」[p]

[bg storage="memo3_atarasiistress.jpg" time="800"]

——「虽然是第一次，但意外地顺利，感觉发现了新的发泄压力的方法」[p]

[bg storage="memo4_noranekonositai.jpg" time="800"]

——「尸体就放置不管了。总会有人发现的吧？希望市政人员能来处理掉[p]

[bg storage="memo5_baremasenn.jpg" time="800"]

——「祈祷望不会发现是我杀了那只流浪猫[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="800"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

拿着记事本的手在颤抖，一阵恶寒止不住地袭来。[p]
这些字……真的是妈妈写的吗？[p]
也许是有人调换了记事本，我只是碰巧读到了某个陌生人的文字——[p]
虽然我很想这么认为，但因为文中随处可见的我的名字……[p]
让我不得不相信这是无可争辩的事实。[p]
妈妈……[p]
为什么？[p]
我无法理解。[p]
妈妈。[p]
为什么？[p]
到底……[p]
你在想什么？[p]
本应每天都为家里努力的、我尊敬的妈妈。[p]

[bg storage="effect_02.jpg" time="800"]

那个形象，伴随着声响轰然崩塌。[p]

[bg storage="kuro.jpg" time="800"]

明明昨天还温柔地拥抱着我，一遍又一遍地说没关系。[p]
我无法理解。[p]
即使明白了文字的含义，大脑也拒绝去理解它。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

颤抖的手翻阅着过去的日记。[p]
手册的前面部分，正好是10年前的日期——[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo6_manbikisaseteru.jpg" time="800"]

——「看来丈夫让望去偷东西[p]
——「还没有证据。但监控拍到望带着酒回来了[p]

[bg storage="memo7_oyogaseteoku.jpg" time="800"]

——「本想阻止的……但还是放任不管[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈，你知道我偷东西的事……？[p]
为什么不阻止我？为什么不告诉我？[p]
为什么……明明知道却一直保持沉默？[p]

[bg storage="kuro.jpg" time="500"]

我不明白。[p]
我不明白。[p]
我不明白妈妈的想法。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

我翻看了其他页面。[p]
这次是9年前的日记。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo8_musumenositagi.jpg" time="800"]

——「看到丈夫在卖女儿的内衣。太恶心了！」[p]

[bg storage="memo9_sauganiyougo.jpg" time="800"]

——「这实在无法辩护。不过，如果他把卖的钱给我的话，那就另当别论了」[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

——「这件事也先不管。对我不利的材料越来越多了。对我来说正合适」[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="500"]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈——[p]
原来爸爸做的事，你全部、全部都知道啊。[p]
可是……你什么都没对爸爸说，就这样纵容了。[p]
为什么……你不来救我？[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

「正合适」是什么意思？[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我再也没有心情继续读下去，把日记放回了原处。[p]
放回时，在抽屉最里面发现了存折。[p]
这是用来管理家计的。[p]

[bg storage="CG12/CG12_2.jpg" time="800"]

我打开看了看……[p]

[bg storage="CG12/CG12.jpg" time="800"]

竟然存了一大笔钱。[p]
而且……这笔钱从15年前就开始存了。[p]
15年前，那时我才2岁。[p]
而且汇款人的名字是前一任爸爸的名字。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻到下一页，还有更早之前那个爸爸的汇款记录。[p]
……难道是从离婚的爸爸们那里收钱？[p]
那么……为什么我们到现在还过着贫穷的生活？[p]
一直以来，连买个生日蛋糕都买不起。[p]
妈妈从以前就对爸爸的所作所为置之不理。[p]
没有来救我。[p]
明明有钱，却一直过着贫穷的生活。[p]
为什么？为什么？为什么？[p]

[fadeoutbgm]
[bg storage="nozomi_heya05.jpg" time="800"]

但是……这些违和感的答案在晚上就明白了。[p]

[mask time="700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[wait time="1000"]
[mask_off time="700" wait="true"]
[chara_show  name="母" top="190" time=500]

晚上，过了午夜妈妈才回来。[p]
说是回来……[p]
其实是被人开车送回来的。[p]
送妈妈回来的是一个开着看起来很贵的车的陌生男人。[p]
而且妈妈醉得已经走不动路了。[p]
察觉到情况的爸爸冲出去大喊。[p]

[chara_show  name="父" top="70" time=500]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

[mob_window]
#父
喂美希，这些男人是怎么回事！[p]

[default_window]
#
之后爸爸和妈妈立刻就吵了起来。[p]
妈妈本想搪塞过去，仔细斟酌着用词，但最后像是放弃了似的直接说道。[p]

[mob_window]
#母
啊，全都完蛋了！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="nozomi_kako_apart_yoru2.jpg" time="800"]
激烈的争吵最后甚至演变成了扭打。[p]
那些陌生男人想要上前劝架，但爸爸厉声喝斥他们赶紧离开。[p]

[bg storage="nozomi_kako_apart_yoru.jpg" time="800"]

车子开走后，妈妈和爸爸回到房间，又开始了夹杂着怒吼的争吵。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

我被他们俩吓得……在卧室里瑟瑟发抖。[p]
隔着纸门能听到他们的对话……[p]
爸爸追问刚才那些男人是怎么回事。[p]
妈妈脱口而出昨晚和我谈话的内容。[p]

[mob_window]
#母
我从望那里听说了。你居然做出卖望那样的事，还让她去偷东西……！简直不可理喻！我竟然和这种人结了婚……！[r]
[p]

#父
美希也是，我还以为她晚上回来晚是因为工作，没想到居然是和那种男人鬼混！你有什么资格说我的不是！装模作样工作，其实这么多年来一直在外面玩乐吧！！[p]

[default_window]
#
妈妈说话的语气，就好像是『昨天才第一次听说』似的……[p]

[bg storage="kuro.jpg" time="800"]

妈妈不是早就知道了吗？[p]
从很久很久以前就——。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

然后妈妈向爸爸提出了离婚。[p]
离婚……[p]
对我来说，这已经是第3次了……。[p]
妈妈和爸爸无法继续和睦相处这件事，从这几年的关系恶化就已经很明显了……。[r]
[p]
所以，我也不会天真地希望他们现在能和好如初。[p]
我已经无所谓了。[p]
但是。[p]
我可不想跟爸爸走。[p]
可是，跟妈妈走也……。[p]

[mob_window]
#母
你这么虐待我的女儿，必须赔偿！我要你付赔偿金！！[p]

[default_window]
#
我听到妈妈一边提出离婚，一边这样说道。[p]
赔偿金。[p]
这是我在电视上听到过的词。[p]

[fadeoutbgm]
[bg storage="tuutyou.jpg" time="800"]

听到这个词，我想起了存折的事。[p]
存折上显示的汇款人是前一任父亲的名字。而且是一大笔钱。[p]

[wait time="500"]

这时我终于把所有的点连成了一条线。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

啊，原来如此。[p]
我一直被这些人利用着啊。[p]
妈妈……明知道我被爸爸利用，却没有阻止……[p]
那是因为可以在将来离婚时作为条件……作为要求赔偿金的「材料」来利用。[p]
日记里写的「正合我意」，肯定就是这个意思……[p]
爸爸从10年前开始一直在贩卖我的偷拍视频和内衣，还让我去偷东西。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

而妈妈已经多次重复离婚了。[p]
也许，妈妈从一开始就预料到会变成这样才再婚的……[p]
妈妈利用爸爸对我做的事作为材料，推进离婚……[p]
如果从「一开始」……从我出生的时候起……[p]
如果一切，一切都是被设计好的话。[p]

[bg storage="kuro.jpg" time="500"]

不，不对——这就是被设计好的。[p]
我只是为了获取金钱而被利用的一个工具而已。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

但是…………………………[p]
为什么？[p]
我不明白。[p]
我不明白妈妈的事。[p]

[wait time="500"]

爸爸……利用了我，是个无可救药的人渣。[p]
他利用继父的身份，对我温柔以博取我的信任，然后背着我背叛了我。[p]
每次想起这些，恶心感就从胃里涌上来，让我想吐。[p]

[bg storage="kuro.jpg" time="500"]

但是。[p]

[bg storage="monolog_01.jpg" time="800"]

为什么……为什么连妈妈……连妈妈也……[p]
——为什么我能这么轻易地相信「她做了这种事」？[p]
我只是读了日记上写的内容，并没有直接从妈妈那里听到。[p]
在再婚之前，一直都是妈妈在照顾年幼的我。[p]
她拼命地为我寻找新的爸爸，就是为了不让我一个人孤单。[p]
她怎么可能会做那种事。[p]

[bg storage="monolog_03.jpg" time="800"]

因为，妈妈是我的妈妈啊————[p]
妈妈珍惜孩子，爱着孩子。[p]
不就是这样的吗？[p]
因为，她是妈妈啊。[p]
我想相信。[p]
不。[p]

[bg storage="nozomi_sukima3.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我相信。[p]

[bg storage="memo5_baremasenn.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我相信。[p]

[bg storage="memo8_musumenositagi.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我相信。我相信。我相信。[p]
……相信啊。相信啊。一定要相信。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

嗯。[p]
我，相信妈妈。[p]
在想着妈妈的同时，我也想起了另一件事。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="1200"]
[wait time="500"]

……我，今天，是18岁的生日。[p]

[mask time="1000" graphic="kuro.jpg"]
[bg storage="nozomi_heya03.jpg" time="0"]
[wait time="2000"]
[mask_off time="1000" wait="true"]

凌晨4点。[p]

[nozomi_window]
#望
……呜，呜咽……呜，呜呜呜……呜咽……[p]

[default_window]
#
明明相信着。[p]
明明相信着。[p]
眼泪却止不住。[p]
刚才妈妈和爸爸一直在大声争吵……终于安静下来了。[p]
已经，不想听他们在说什么了。[p]
所以我捂住耳朵……蜷缩在被子里……[p]
眼泪却止不住地涌出来。[p]

[bg storage="kuro.jpg" time="500"]
[playse buf="3"  storage="gisi.mp3" volume="20"]

胸口好吵。[p]
仿佛至今为止积累的所有温柔回忆，都在变成痛苦和折磨的声音，不断地在心中回响。[p]
不要。[p]
不要。不要。不要。[p]
快点睡着吧。[p]
睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，[p]
睡吧……[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="nozomi_heya03.jpg" time="0"]
[playse buf="3"  storage="gisi.mp3" volume="20"]

[wait time="1200"]

[playse buf="3"  storage="Light_Switch.mp3" volume="50"]
[wait time="100"]
[bg storage="nozomi_heya04.jpg" time="200"]
[bg storage="nozomi_heya03.jpg" time="200"]
[wait time="200"]
[bg storage="nozomi_heya04.jpg" time="200"]
[bg storage="nozomi_heya03.jpg" time="200"]
[wait time="300"]
[bg storage="nozomi_heya04.jpg" time="1000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

房间的灯亮了……[p]
[playse buf="3"  storage="huton.mp3" volume="30"]
[wait time="1000"]

盖在身上的被子被无情地扯走了。[p]
用肿胀的眼睛抬头看去……[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
……你哭什么呢[p]

[default_window]
#
妈妈俯视着我，脸上露出了我从未见过的可怕表情。[p]
就像是……在看着什么丑陋的东西，充满了无法原谅的愤怒……[p]

[mob_window]
#母
该哭的是我才对！再过一会儿就应该全部顺利了……！[p]


[chara_hide_all time=500 wait=false]
;;;画像表示で「信じてる」
#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="nozomi_sinjiteru.jpg" time="300"]
[wait time="700"]
[chara_show  name="母" top="190" time=500 wait=false]
[bg storage="nozomi_heya04.jpg" time="700"]
[wait time="300"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[mob_window]
#母
一直想着要抛弃你，我忍耐了那么久……！！！[p]

#
[chara_hide_all time=500 wait=false]
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="nozomi_sinjiteru.jpg" time="300"]
[wait time="700"]
[chara_show  name="母" top="190" time=500 wait=false]
[bg storage="nozomi_heya04.jpg" time="700"]
[wait time="300"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true


[mob_window]
#母
本该和你爸一起把你也抛弃，用赔偿金和新的帅哥重新开始的！！[p]

#
[chara_hide_all time=500 wait=false]
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[setreplay name="CG13" storage="scene12_replay.ks" label="*CG13_replay"]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="nozomi_sinjiteru2.jpg" time="300"]
[wait time="700"]
[chara_show  name="母" top="190" time=500 wait=false]
[bg storage="nozomi_heya04.jpg" time="300"]
[wait time="500"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[mob_window]
#母
要是没有你就好了……！！！[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask time="300" graphic="kuro.jpg"]
[playse buf="3"  storage="MotionSwish.mp3" volume="60"]
[chara_hide_all time=0 wait=false]
[mask_off time="300" wait="true"]
[wait time="200"]
[playse buf="3"  storage="stab.mp3" volume="50"]
[wait time="800"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

妈妈喊完之后……[p]
接着，有什么东西飞了过来。[p]

[nozomi_window]
#望
──────[p]

#
[default_window]
[mask time="300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="CG13/CG13.jpg" time="0"]
[mask_off time="300" wait="true"]

飞过来的东西——插在我身旁几厘米处的榻榻米上的，是一把刀。[p]
刀刚刚从我身边擦过。[p]
看到那把刀后，我才意识到它擦过了我的脸颊。[p]
从脸颊上——从那微小的裂口中——渗出血来，滴落下来。[p]

[clearfix name="role_button"]
;;;@layopt layer=message0 visible=false
;;;@layopt layer=message1 visible=false

[bg storage="kuro.jpg" time="300"]

; メッセージウィンドウの設定 - 一時的に変更

[position layer="message0" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[font color="red"]

妈妈妈妈想要妈妈 杀我因为 刀不对妈妈怎么可能会做这种事但是[r]
[wait time="600"]
[r]
[r]
[r]
[r]
[r]
[wait time="600"]
[r]
[wait time="600"]
[wait time="600"]
[r]
[r]
[r]
[wait time="600"]
[wait time="600"]
[r]
[r]
[r]
[wait time="600"]
[r]
[r]
[wait time="600"]
[wait time="600"]
[r]
[p]

[wait time="600"]
[wait time="600"]
[r]
要是没有你要是没有你 要是没有你要是没有你 要是没有你要是没有你要是没有你要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你────────[r]
[r]
[wait time="600"]
[wait time="600"]
[r]
[r]
[r]
[r]
[wait time="600"]
[wait time="600"]
[r]
[r]
[wait time="600"]
[wait time="600"]
[wait time="600"]
[r]
[r]
[r]
[p]
[wait time="600"]

; メッセージウィンドウの設定戻し
[position layer="message0" frame="../others/plugin/theme_kopanda_22/image/frame_message_default.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_default.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[resetfont]
[add_theme_button]

[fadeoutbgm]
[bg storage="CG13/CG13.jpg" time="500"]

我迟迟才理解了 那些话和 投掷刀子的含义[p]
[wait time="300"]
我终于理解了[p]

[bg storage="CG13/CG13_2.jpg" time="500"]

18年来，我从未被爱过。[p]
[wait time="300"]
我[p]

[bg storage="kuro.jpg" time="500"]

已经是个不被需要的孩子了[p]

[nozomi_window]
#望
──啊啊啊啊啊啊啊啊啊啊！！！！！！！[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="nozomi_heya04.jpg" time="500"]
[wait time="500"]

;;; 刺殺SE、液体が落ちるSE、倒れるSE
[playse buf="3"  storage="knife.mp3" volume="50"]
[wait time="500"]
[wait time="4500"]
[playse buf="3"  storage="BodyDrop.mp3" volume="50"]
[quake count=4 time=300 hmax=20 vmax=20]
[bg storage="nozomi_heya04_1.jpg" time="500" wait=false]
[wait time="3000"]
[playbgm storage="01Voices_horror2.mp3" volume="50"]

[playse buf="3"  storage="run_in_house.mp3" volume="50"]
[wait time="500"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[chara_show  name="父" top="70" time=500]

听到声音 爸爸跑了过来[p]
[wait time="300"]
看到我 他愣住了[p]
[wait time="300"]
好像很快就 明白了 该做什么[p]
[wait time="300"]
他把垂头丧气的我紧紧抱在怀里[p]
[wait time="300"]

[mob_window]
#父
望……！！你一定很痛苦吧，我也曾经恨你妈妈恨得想让她去死。所以我和望是同伴。你看，对吧？[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[wait time="300"]

他紧紧抱住我，试图让我安心[p]
[wait time="300"]
这就是这个人渣惯用的伎俩[p]
[wait time="300"]
反正让我安心之后又会再次利用我[p]
[wait time="300"]
他喋喋不休地说着，想要把我拉到他这边[p]
[wait time="300"]
啊──────[p]
[wait time="300"]
吵死了[p]
[wait time="300"]
吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了，吵死了──[p]
[wait time="300"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[chara_hide_all time=500 wait=false]

[wait time="500"]
;;; 刺殺SE、液体が落ちるSE、倒れるSE
[playse buf="3"  storage="knife.mp3" volume="50"]
[wait time="500"]
[wait time="4500"]
[playse buf="3"  storage="BodyDrop.mp3" volume="50"]
[quake count=4 time=300 hmax=20 vmax=20]
[bg storage="nozomi_heya04_2.jpg" time="500" wait=false]
[wait time="2000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

终于安静了[p]
[wait time="300"]
接下来轮到我了──[p]
[wait time="300"]
我把沾满鲜血的刀抵在自己的脖子上……[p]
[wait time="300"]
确认自己的意志。[p]

[bg storage="nozomi_heya04_3.jpg" time="800"]

啊…………[p]
[wait time="300"]
……嗯。[p]
[wait time="300"]
没事的。[p]

[bg storage="kuro.jpg" time="500"]

现在，随时都可以实行了。[p]

[bg storage="monolog_02.jpg" time="1200"]

但在那之前……我……[p]
至少想在最后做一次「像普通女孩一样的事」。[p]
即使是假的也无所谓。[p]
反正父母已经不会再利用我了。[p]
和某个人一起吃美味的食物，开心地玩耍，像恋人一样度过时光，就是那种。[p]

[fadeoutbgm]
[bg storage="nozomi_heya04_3.jpg" time="800"]

那种「普通女孩的普通生活」………………[p]

;;; - - - - - - - - - - - - - - - - - - - - - 過去回想おわり


;;; リプレイモード終了

[autostop]
[skipstop]

[cm]
[clearfix]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[fadeoutse buf="3"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
