
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_12_{number}.mp3" number="1"]
[voconfig sebuf="2" name="父" vostorage="mob_otoko/chichi_12_{number}.mp3" number="1"]
[voconfig sebuf="2" name="母" vostorage="mob_onna/haha_12_{number}.mp3" number="1"]
[vostart]

[playse buf="3"  storage="room_door_open.mp3" volume="20"]

[wait time=" 2000"]

[playse buf="3"  storage="room_door_close.mp3" volume="20"]

[bg storage="jishitsu_yuu.jpg" time="1500"]
[wait time=" 700"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

回到房间后，我和望四目相对。[p]
她似乎一直抱着膝盖坐在床上等我回来。[p]
还没来得及开口，望就扑过来抱住了我。[p]

[playbgm  storage="02Unopened.mp3" volume="40"]
[bg storage="jishitsu_yuu_bokasi.jpg" time="500" wait=false]
[playse buf="3"  storage="huku01.mp3" volume="50"]
[chara_show  name="望3_ネックレス有" face="gimon" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
……我还以为你不会回来了[p]

[saku_window]
#朔
这里可是我家啊。我当然会回来的[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji4" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
就是觉得，那些对我有利的话总是难以相信。所以即使你说一定会回来，我也没法完全相信。对不起，朔[r]
[p]

[saku_window]
#朔
就算知道了望的过去，也不会成为我不回来的理由啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="gimon2" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
你都看了？[p]

[saku_window]
#朔
至少，看了这个里面的内容[p]

[default_window]
#
我拿出据说是望母亲留下的日记。[p]
虽然收到日记纯属偶然，但望应该知道那个男人在家里吧。[p]
否则，她不会说「去家里就知道了」这样的话。[p]

[chara_mod  name="望3_ネックレス有" face="metoji2" cross=false time=500]
[nozomi_window]
#望
妈妈的日记？……原来如此[p]

[saku_window]
#朔
…………[p]

[default_window]
#
我看了日记的内容。[p]
我得知了望父母所做的事。[p]

[saku_window]
#朔
望……真的，那个……[p]

[default_window]
#
我一时语塞。[p]
回想起看到的内容……不知该从何说起。[r]
[p]

[fadeoutbgm]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji4" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……………………[p]

[default_window]
#
望低着头沉默不语。[p]
她看起来似乎害怕听到接下来的话。[p]
但过了一会儿，她像是放弃了似的开口了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望3_ネックレス有" top="50" time=250]
[wait time="800"]

[nozomi_window]
#望
…………嗯。没错。我就是……如同那里写的那样，无法获得幸福的女孩[r]
[p]

[default_window]
#
_　[r]
_　[cm]

她用几乎微不可闻的声音说道。[p]

[chara_hide_all time=800 wait=true]

然后，望虚弱地开始讲述自己的过去。[p]

[mask time="3000" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="kuro.jpg" time="0"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="2000" wait="true"]

;;; - - - - - - - - - - - - - - - - - - - - - 過去回想

[bg storage="nozomi_kako_apart_yoru.jpg" time="1000" method="vanishIn"]
[wait time="1000"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_heya04.jpg" time="1000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

7岁生日那天。[p]
妈妈从超市买来了蛋糕。[p]
她说是半价买的。[p]
半价？那是什么呢？[p]
蛋糕似乎很贵，是奢侈品。[p]
今天，我们吃的是浇了「酱汁」的豆芽盖饭。[p]
豆芽的脆嫩口感特别好吃。[p]
吃完后，妈妈拿来了蛋糕。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

她在蛋糕上插上蜡烛，点燃后关掉了电灯。[p]

[bg storage="nozomi_heya02.jpg" time="800"]

和妈妈一起唱完「生日快乐歌」后，我对着蜡烛的火苗吹了一口气。[r]
[p]

[bg storage="nozomi_heya03.jpg" time="800"]

每到生日，我们都是这样庆祝的。[p]

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

妈妈说完就把一个男人带进了家里。[p]

[chara_show  name="母" top="190" time=500]
[chara_show  name="父" top="70" time=500]

妈妈说这是新爸爸。[p]

[fadeoutbgm]

这是第三个爸爸了。[p]
那个男人看着我，笑眯眯的。[p]
不知道之前的爸爸去哪里了呢？[p]
比起那个，我更想快点吃蛋糕。[p]

[chara_hide name="父" time=500 wait=true]

那个男人去厕所的时候，我看向了蛋糕。[p]
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
孝昌先生是个非常好的人，你不能露出那种表情！
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

_　[r]
_　[cm]

[nolog]
孝昌先生是个非常好的人，我不能露出那种表情！[p]
[endnolog]

[default_window]
#
虽然不想感到疼痛，但这已经是家常便饭了。[p]
如果我不按妈妈说的做，经常会被骂被打。[p]
但是，等她不生气了，就会紧紧抱着我，和我一起睡在同一个被窝里。[p]
她一边紧紧抱着我，一边不停地道歉说「对不起让你疼了，对不起」。[p]
看到妈妈道歉的样子，我的心里就会很难受，所以我也会道歉说「对不起我做了坏事」。[r]
[p]
和妈妈之间，总是在不停地道歉……[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_03.jpg" time="800"]

所以每次有新爸爸来的时候，我总是担心妈妈会不会生气。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[playbgm storage="08Voices_orgel.mp3" volume="40"]

自从第三个爸爸开始来我们家之后。[p]
一开始我还有点担心，但是……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

爸爸为我做了非常美味的料理。[p]
有肉有鱼！[p]
美味料理的全套菜单。[p]
在爸爸做的料理中，我最喜欢的是蛋包饭。[p]
为了感谢爸爸做的美味饭菜，我会拍拍爸爸的肩膀。[p]
但是，爸爸很少和我说话。[p]
也许他真的以为我在害怕他。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

但是，当我半夜要上厕所时，他会默默地跟着我，还会和我一起睡。[p]

[bg storage="monolog_01.jpg" time="800"]

虽然我不像其他孩子那样能上幼儿园或学校……[p]
但因为有妈妈和爸爸在身边，我并不感到孤单。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

这样的生活持续了大约3年…………[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[wait time="800"]
[bg storage="CG22/CG22.jpg" time="800"]
[cg storage="CG22/CG22.jpg"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

我10岁了。[p]
妈妈工作到深夜，爸爸从早上工作到傍晚。[p]
当他们两个都不在家的时候，只有我一个人在家，所以我会反复观看录下来的动画片。[p]
那是一部以战斗少女为主角的动画。[p]
我最喜欢那个永不言弃、勇敢对抗坏人的主角「渚」。[p]
我还会在一些废纸的背面画她的画像。[p]

[bg storage="nozomi_yuuyake.jpg" time="800"]

爸爸回来后，就立即为我准备晚餐。[p]
因为妈妈总是在工作地点吃饭，所以他只需要准备两人份的饭菜。[p]

[bg storage="nozomi_yokushitsu.jpg" time="800"]

那天我们一起吃完饭后，决定一起洗澡。[p]
虽然我和爸爸关系变好了，但是被看到裸体还是很丢人。[p]
所以，我背对着他，尽量不让他看到。[p]
爸爸看起来很高兴能和我一起洗澡。[p]
我想，只要爸爸高兴就好。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

但是，从浴室出来后，我脱下的内衣不见了。[p]
明明应该放在篮子里的。[p]
之后也一直找不到……不过每次都会多出新的内衣。[p]
是妈妈或爸爸在帮我换吗？[p]
如果是爸爸在做这件事，感觉有点丢人。[p]

[bg storage="monolog_03.jpg" time="800"]

尽管如此，我心里还是一直对爸爸充满感激。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

因为我一直这么想着……[p]
所以我一直想着要报答爸爸。[p]
为了感谢他给我做美味的饭菜，对我那么温柔。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

当我问爸爸有什么我能做的事情时……[p]

[chara_show  name="父" top="70" time=500]

爸爸说『这是只有望才能做到的事』，然后提出了一个请求。[p]

[chara_hide_all time=500 wait=false]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_super.jpg" time="1500"]

他拜托我去家附近的『超市』，带回来一个棕色的瓶子……[p]
他说的是『威士忌』还是『酒』来着……是什么呢？[p]
他还说，即使店里的人说什么，也要对爸爸的事保密。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[wait time="800"]
[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

看到我回家时，爸爸有点坐立不安……但后来他非常夸奖我。[p]
那真的让我很高兴。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="700" wait="true"]

从那以后，每当爸爸拜托我，我就会把『酒』带回家。[p]

[bg storage="nozomi_super.jpg" time="800"]

但有一次，店里的人对我说『不能擅自拿走哦』……[p]
所以，从那以后我就小心地藏起来，不让店里的人发现，然后把『酒』带走。[p]
有时也会带回一些不同的，比如『罐装啤酒』。[p]

[bg storage="nozomi_heya04.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

每次带回来，爸爸都会夸奖我，有时还会给我一些零食或巧克力。[p]
因为奖励让我很开心，所以我更加卖力地带回了很多『酒』。[p]
爸爸很喜欢这种叫『酒』的饮料，喝完后经常就睡在地板上了。[p]
他说是醉了。[p]
醉，是什么呢？是会变得很困吗？[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[wait time="2000"]
[chara_hide_all time=0 wait=false]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="700" wait="true"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

又有一天，我在离家不远的地方发现了一只小猫在睡觉。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

它的毛发有点乱蓬蓬的，看起来不太有精神。[p]
所以，我从『超市』带来了猫粮，给小猫吃。[p]
一开始它马上就跑掉了，但每天重复这样做，小猫慢慢变得亲近我了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_sukima.jpg" time="0"]
[mask_off time="700" wait="true"]

渐渐熟悉后，它还会用身体蹭我的脚。[p]
但是关于小猫的事，还有我给爸爸带回『酒』的事，我都没有告诉妈妈。[p]
总觉得，可能会被骂。[p]
不过，这种秘密的时光有点让人开心。[p]

[bg storage="monolog_03.jpg" time="800"]

而且……总是来同一个地方的小猫，感觉有点像我。[p]
我想，我是在那只看起来无处可去的小猫身上，看到了自己的影子。[p]
所以我越来越喜欢那只小猫了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

中午照顾小猫咪，晚上和爸爸一起吃饭。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

妈妈在我睡觉的时候回来，我们会聊一会儿天，有时还会一起睡。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="500"]

但是……这样的时光并没有持续太久。[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="1200"]

某天早上，听到爸爸在外面大吵大闹，我走出去一看……[p]
家里的墙上被涂满了乱七八糟的字。[p]

[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

『犯罪者』[p]
『诅咒之家』[p]
『小偷』[p]
『惯犯』[p]
『去死』[p]
『还钱』[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="800"]

虽然不明白这些字是什么意思……[p]
但看到爸爸那么着急，我就知道肯定写的不是什么好话。[p]
爸爸说是附近孩子的恶作剧，立刻就把那些字擦掉了……[p]

[bg storage="monolog_01.jpg" time="800"]

但从那以后，爸爸的态度变了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

他说话变得粗鲁，半夜和妈妈吵架的次数也增多了。[p]
我装睡的时候，总是在心里祈祷他们能和好。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

第二天。[p]
因为想让爸爸高兴起来……我问爸爸要不要再给他拿点「酒」来。[r]
[p]

[chara_show  name="父" top="70" time=500]

结果爸爸板着脸瞪着我。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

那表情太可怕了，光是看到就快要哭出来了。[p]
我立刻意识到自己做错了事。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

爸爸抬起了胳膊，我下意识地用双手护住了头。[p]
我以为他会像妈妈那样，一生气就打我的头。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

……但是爸爸没有打我的脸。[p]
取而代之的是……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

[mob_window]
#父
不能在脸上留下瘀痕……真是的，要是你能做得更好一点，我也不至于落到这个地步！[r]
[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya05.jpg" time="800"]

[default_window]
#

_　[r]
_　[cm]

……那是我第一次被叫做「你」。[p]
明明以前都是叫我「望」的。[p]
「这个地步」是指什么呢？[p]
我不太明白，问了也不告诉我。[p]
对不起。对不起。对不起。[p]
虽然不知道原因，但因为不想被讨厌……所以一直不停地道歉。[p]

[fadeoutbgm]
[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]

……那个涂鸦到底是什么意思呢。[p]

[bg storage="kuro.jpg" time="800"]

但是，随着时间的流逝……[p]
涂鸦的事也渐渐被遗忘了……[p]

[mask time=" 2000" graphic="kuro.jpg"]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="1000" wait="true"]
[wait time="800"]
[bg storage="CG22/CG22_2.jpg" time="800"]
[cg storage="CG22/CG22_2.jpg"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

7年过去了……我17岁了。[p]
说是17岁，其实再过两天我就18岁了。[p]
小时候觉得，17岁就算是成年人了。[p]
但是……一直以来，我都在小心翼翼地观察妈妈和爸爸的心情。[p]
独处的时候就画画、看电视，或者照顾流浪猫。[p]
电视里的世界对我来说充满了魅力。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshimaeki02_2.jpg" time="0"]
[mask_off time="300" wait="true"]

看起来很有趣的交通工具……[p]

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

岛上有一座小山丘，从那里看出去，是天空和大海融为一体的蓝色世界。[p]
仅仅是在电视里看到这样的景色就让我心跳加速。[p]

[bg storage="CG22/CG22_2.jpg" time="800"]

希望有一天我也能去看看那样的景色。[p]
还有，我也会看妈妈喜欢录下来的爱情剧。[p]

[bg storage="monolog_01.jpg" time="800"]

恋爱。[p]
这对我来说是个遥不可及的词……我甚至无法想象自己和男生接吻的场景。[r]
[p]
看电视剧的时候，总会不由自主地想起爸爸妈妈。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

自从那次涂鸦事件之后，爸爸妈妈看起来就不太幸福了。[r]
[p]
我总是不自觉地把电视剧里的幸福和现实比较。[p]

希望有一天，我也能和一个很棒的人谈一场幸福的恋爱……那就太好了。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

带着这样的想法去脱衣间准备洗衣服时，我发现了一个从未见过的东西。[p]
是一个小手电筒。[p]
而且它被藏在架子上叠放的毛巾之间，像是故意被塞进去的。[p]
以前有这种东西吗……？[p]
我一边这么想着一边拿出手电筒，感觉有些奇怪。[p]
……和我们家以前用的不一样。[p]
而且仔细看的话，根本找不到开关灯的按钮。[p]
最引人注目的是侧面安装的小屏幕。[p]

[bg storage="nozomi_yokushitsu2.jpg" time="800"]
[playbgm storage="06_hansinhangi.mp3" volume="40"]

那个屏幕上显示的是我面前的浴室。[p]
不如说……显示的是我手中这个手电筒所指的方向。[p]
也就是说，这是……摄像头？[p]
是爸爸或妈妈放在这里的吗？[p]
但是，为什么要放在这种地方……[p]
就像是……有人在偷拍一样……[p]
……不对，我一直在家，如果有人进来做这种事的话，我肯定会马上发现的。[p]
大概是爸爸妈妈的私人物品，不小心放在这里忘记拿走了吧。[p]
放在这里的话可能会因为潮湿而坏掉，还是放到壁橱里去吧。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[mask_off time="1000" wait="true"]

那天晚上。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

爸爸回到家后，慌慌张张地到处找着什么东西。[p]
平常这个时候他应该开始准备晚饭的。[p]
正当我这么想着的时候，爸爸向我问道。[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
手电筒是望收起来了吗？[p]

[default_window]
#
原来是爸爸的啊。[p]

[chara_hide_all time=500 wait=true]

我告诉他我放在壁橱里了，他急忙去取。[p]
一方面我很庆幸没有被骂……[p]

[bg storage="nozomi_heya05.jpg" time="800"]

『另一方面却又想起了那个像是有人在偷拍的』[p]
那一瞬间的画面。[p]
如果爸爸在偷拍我或妈妈的……裸体的话……[p]
不……还是不要再想了。[p]
爸爸……从以前就一直为我们做饭，我害怕的时候还会陪我一起睡。[p]
温柔的爸爸不可能会做那种事。[p]
虽然这么想着，但我还是想确认爸爸真的没有做那种事。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_heya01.jpg" time="0"]
[mask_off time="700" wait="true"]

第二天中午。[p]
趁没人的时候，我偷偷看了爸爸书桌里的东西。[p]
虽然几年前就被告诫过里面放着重要的东西不能打开……[p]
我以为如果擅自打开会被骂，所以最近也没想过要打开。[p]
所以，为了不被发现，不留下痕迹……[p]
我按顺序打开抽屉。[p]
里面杂乱地塞满了文件、小物件和文具。[p]
然后当我打开最下面的抽屉时……不由得叫出了声。[p]

[bg storage="monolog_01.jpg" time="800"]

里面放着的是……[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[wait time=500]
[bg storage="nozomi_heya11.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

整齐叠好放在拉链袋里的，我的……内裤。[p]
而且，那还是我一周前洗澡时脱下的，之后就以为丢了的内裤。[p]
……说起来很久以前，也曾发生过脱下的内衣不见了的事。[p]

;;;よどんだようなエフェクト
[bg storage="effect_04.jpg" time="800"]

一种难以言喻的恶心感涌上心头。[p]

[bg storage="kuro.jpg" time="800"]

但是，那么，如果爸爸……偷了我的……[p]
内衣，而且还偷拍的话……[p]
……是为了什么？[p]
为了自己……享乐？[p]

[bg storage="nozomi_heya01.jpg" time="800"]

答案很快就明白了。[p]
内衣同一个抽屉里还有一个信封……上面已经写好了收件地址。[p]
那个信封是网上二手交易平台的。[p]
电视上说过，现在通过这种方式卖东西赚钱很流行。[p]
而且看了信封里的东西，还有我之前穿过的其他内衣。[p]

[bg storage="effect_04.jpg" time="800"]

也就是说，爸爸……[p]
把我用过的内衣在网上卖掉……可能还把偷拍的视频也卖到了某个地方？[p]
虽然还没有确凿证据，而且这种东西能卖出去也太恶心、太奇怪了。[p]
但是……我在新闻上见过因为做同样的事被抓的人。[p]

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

……很快就明白了原因。[p]
因为桌子的抽屉平常都是锁着的。[p]
他害怕抽屉被打开，所以在午休时间回来了。[p]

[bg storage="nozomi_heya01.jpg" time="300"]

但是，已经太晚了。[p]

[chara_show  name="父" top="70" time=500]

看到呆立的我，爸爸露出了愕然的表情。[p]
然后慢慢地变成了带有怒气的表情……[p]

[quake count=3 time=200 hmax=20 vmax=20]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[wait time=100]

他把站在桌子前的我推开，就像移开一件物品一样。[p]
对重重摔坐在地上的我视而不见……[p]

[chara_hide_all time=500 wait=true]

爸爸锁上了桌子的锁，装作什么事都没发生地想要离开。[p]
我对着他的背影问道。[p]

[playbgm storage="naraku.mp3" volume="30"]
[bg storage="monolog_01.jpg" time="300"]

——喂，爸爸，抽屉里的东西……是怎么回事？[p]

[bg storage="nozomi_heya01.jpg" time="300"]
[chara_show  name="父" top="70" time=500]

他突然停下脚步，转过身来的表情中依然残留着怒气。[p]

[mob_window]
#父
望。一直以来，真是谢谢你啊[p]

[default_window]
#
明明绝对是在生气……却笑着说出了感谢的话。[p]
完全不明白爸爸在想什么……感觉头都要乱了。[p]

[mob_window]
#父
我们家很穷，所以一直在卖望用过的内衣和录像数据。穷人啊，只能这样赚钱[r]
[p]

#父
瞒着望是我不对。以后不会再这样了。我知道这是坏事，我很后悔。待会儿我也会告诉你妈妈的[r]
[p]

[default_window]
#
_　[r]
_　[cm]

被这样子说，就像只是在堆砌词语一样，根本无法打动我。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]

因为爸爸，你根本就没打算道歉吧。[p]
我知道这么说会惹你生气，但是……[p]
心里残留的那种不舒服的感觉让我忍不住追问下去。[p]
我还是追问了。[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[chara_show  name="父" top="70" time=500]

[nozomi_window]
#望
那么我一直……都只是被爸爸用来赚钱的工具吗？[p]

[default_window]
#
我这么一说，爸爸顿时火冒三丈。[p]

[mob_window]
#父
那不是理所当然的吗！内衣和录像都卖了高价，整整9年都是这样！[p]

#父
以前让你从超市偷酒也是这个道理。……啊，我没跟你说过，擅自拿走商品是犯罪行为[r]
[p]

#父
那事被发现后，我们家的墙上就被涂鸦了。大概是店主在发泄不满吧……[p]

#父
我跟美希解释说那是小孩子的恶作剧，但如果不是你暴露了，根本就不会有那种涂鸦！[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

——犯罪？[p]
犯罪不是会被警察抓走，所以不能做的事吗？[p]
爸爸竟然让我做这种事？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="nozomi_heya06.jpg" time="0"]
[kanim layer=base keyframe="shake" time="2000" count="infinite"]
[mask_off time="300" wait="true"]

我感到仿佛心脏被贯穿一般的冲击。[p]
我一直相信的现实开始动摇……变得支离破碎。[p]
而且，我一直都是为了爸爸才这么做的……[p]
我不想相信。我无法相信。[p]
但是爸爸承认了，他一直在利用我。[p]

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
只是想要报答爸爸而已！[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
你知道我为什么一直做这种事吗？其实不是为了钱。其实是……[r]
[p]

#父
我想要……爱你。我以为只要有利可图……我就能好好爱你[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya06.jpg" time="1000"]

啊────[p]
我在不知不觉中侵犯了法律。[p]
不仅如此……[p]
父亲在网上出售我的内衣和视频。[p]
更糟糕的是……继父用性的眼光看我这个事实。[p]

[bg storage="monolog_01.jpg" time="500"]

罪恶感和被那种令人作呕的目光注视的感觉让我无法忍受，我跪倒在地。[p]
在这种情况下，这个人说的话在我脑海中不断重复。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

『我想要爱你』。[p]

[bg storage="monolog_01.jpg" time="500"]
[fadeoutbgm]

他的所作所为与这句话之间的差距太大了……[p]
我无法理解。[p]
而且……自己犯下的罪行，被这个人做的事……以及过去的回忆，还有仍然想要相信的心情。[r]
[p]
各种各样的事情，在我的脑海中不断混杂在一起……[p]
我已经不想再思考任何事了。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

从那时起，不知过了多长时间。[p]
我什么都想不了，只是茫然地呆着……[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

突然，我想见小猫了，趁天还亮着就出门了。[p]
也许，我是在寻求帮助吧。[p]
这7年来，我几乎每天都见到它。[p]
上次它还在看到我的时候靠近我蹭来蹭去呢。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]

但是最近为了讨好父母，我根本没机会见到它……[p]
已经大概一个月没见到它的身影了。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

去看的时候，小猫正睡在平常的地方。[p]
阳光照在它身上，看起来很舒服的样子。[p]
我松了一口气，轻轻抚摸它的身体。[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

——但是，它没有反应。[p]
而且，冷得令人难以置信。[p]
平时把手指放在它头旁边的话，它总是会蹭蹭我的手指。[p]
但现在……它一动不动。[p]

[bg storage="nozomi_sukima.jpg" time="500"]

我想它可能是身体不舒服，就把小猫抱了起来。[p]
这时，我发现它的右腿上有一处严重的伤口……[p]
我明白了，它是因为受伤而无法动弹。[p]

[bg storage="nozomi_sukima2.jpg" time="500"]

但就在那一瞬间，小猫的肚子附近突然涌出大量的蛆虫。[p]

[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

我浑身起了鸡皮疙瘩，本能地把小猫扔了出去。[p]

[bg storage="nozomi_sukima3.jpg" time="800"]

被我扔出去的冲击让小猫的身体翻了个身，仰面朝天……[p]

[nolog]
蠕动的蛆虫不仅吞噬了小猫的身体，连眼球都毫不留情地啃食殆尽，我甚至能看到眼窝深处蛆虫蠕动的景象。[r]
[p]
[endnolog]

[pushlog text="蠕动的蛆虫不仅吞噬了小猫的身体，连眼球都毫不留情地啃食殆尽，我甚至能看到眼窝深处蛆虫蠕动的景象。"]

[bg storage="effect_02.jpg" time="800"]

看到那一幕后，我再也无法直视它了。[p]
中午吃的饭突然涌上喉头，我忍不住当场呕吐起来。[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

拼命呕吐的同时，眼泪也流了下来。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

为什么，为什么，为什么，为什么，为什么。[p]
为什么……我要遭遇这种事────？[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

那只我一直把自己投射其中的小猫……就这样在我眼前变成了如此凄惨的模样。[p]
而我────居然觉得恶心。[p]

[bg storage="kuro.jpg" time="800"]

啊啊……[p]
我真是个糟糕的人。[p]
被那个人利用。[p]
犯下罪行。[p]

[bg storage="nozomi_sukima4.jpg" time="800"]

一直强忍着不哭，却在感到恶心呕吐的瞬间，泪水像决堤一般涌了出来。[r]
[p]
各种事情叠加在一起，情绪变得一团糟，我再也无法控制自己了。[p]
想要把一切，全部都吐出来。[p]
每当这么想的时候，恶心感就涌上心头。[p]
胃液都吐干净了，明明已经什么都吐不出来了，却还是在干呕，试图吐出些什么。[p]
要是能把所有令人作呕的东西都吐出来……就像什么都没发生过一样，变得轻松就好了……[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

……但是……对了。[p]

[bg storage="monolog_03.jpg" time="800"]

我还有……妈妈。[p]
虽然妈妈现在偶尔还是会让我感到害怕，有时候还会打我……[p]
但即便如此，她一定会站在我这边的……[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

这十年来，妈妈一直工作很忙，总是半夜才回家。[p]
即使爸爸变了，妈妈还是一直为了这个家不停地工作。[p]
我一直都很尊敬这样的妈妈。[p]

[bg storage="nozomi_heya07.jpg" time="800"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]

那天晚上，我和妈妈单独谈了谈。[p]
谈的当然是那个人的事。[p]
我把所有发生的事，全部，全部都告诉了妈妈。[p]
我很害怕，觉得如果说那个人的坏话会被骂。[p]
但妈妈静静地听我说完了。[p]
说完后，妈妈……温柔地抱住了我。[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
对不起，一直没能注意到。那个人，居然在妈妈不在家的时候做出这种事……真是人渣[r]
[p]

#母
望的事就交给妈妈来保护你……不用再害怕了哦[p]

[default_window]
#
她一边抱着我，一边用温柔的声音一遍又一遍地说着。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

那天晚上，我时隔7年和妈妈一起睡在同一个被窝里。[p]
久违的妈妈的气味。[p]
虽然经历了痛苦和悲伤的事……[p]
但只要有妈妈在，我就觉得一切都会没事的。[p]

[bg storage="kuro.jpg" time="800"]

不过，让我意外的是……[p]
听了我的话后，妈妈并没有表现得特别惊讶，而且她直接认定爸爸是坏人。[r]
[p]
我虽然想相信爸爸却无法相信，感到非常痛苦……[p]
但妈妈……是不是根本就不想相信爸爸呢……[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="1000" wait="true"]

第二天。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

像往常一样，爸爸妈妈因为工作不在家……[p]
我翻找了妈妈的私人物品。[p]
妈妈总是因为「工作」而很晚才回家，但我不知道她具体是做什么工作的。[p]

[bg storage="monolog_01.jpg" time="800"]
[playbgm storage="05_kaikoroku.mp3" volume="40"]

仔细想想，我其实对妈妈了解得并不多。[p]
因为熬夜聊天不好，所以一直以来我们都没有好好交谈过。[p]
这样翻找她的私人物品感觉像是在作弊，但我控制不住想要了解的欲望。[p]
而且最重要的是，妈妈的存在是我唯一的救赎……[p]
是我的救赎……我真的希望事实如此。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我打开桌子的抽屉，看里面。[p]
里面有一本记事本。[p]
这本记事本……没错，是妈妈有时半夜会写的日记。[p]
在我不知道的地方，妈妈每天是怎么度过的。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo.jpg" time="800"]

我想答案就写在这里，于是翻开了页面。[p]

[bg storage="kuro.jpg" time="500"]
[stopbgm]

然而刚一打开，我就看到了一句难以置信的话……[p]

[playse buf="3"  storage="BookDrop.mp3" volume="80"]

不由得把记事本掉在了地上。[p]
这是两周前的日记。[p]
上面写着……[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo1_noranekowo.jpg" time="800"]

——「用陷阱杀死了一只流浪猫」[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不可能。[p]
不可能，不可能，不可能，不可能，不可能！[p]
一定是看错了。[p]
但是，再次确认页面，写的还是同样的内容。[p]
下面……还继续写着。[p]

[bg storage="memo2_kaitaitoka.jpg" time="800"]
[playbgm storage="naraku.mp3" volume="30"]

——「在望说要养流浪猫之前就处理掉了，真是太好了」[p]

[bg storage="memo3_atarasiistress.jpg" time="800"]

——「虽然是第一次，但意外地顺利，感觉发现了新的发泄压力的方法」[p]

[bg storage="memo4_noranekonositai.jpg" time="800"]

——「尸体就放在那里。会有人发现的吧？希望市政府的人能处理掉」[p]

[bg storage="memo5_baremasenn.jpg" time="800"]

——「希望望不会发现是我杀了流浪猫」[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="800"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

拿着记事本的手在颤抖，止不住地发冷。[p]
这真的是……妈妈写的吗？[p]
也许是有人调换了记事本，我只是碰巧读到了不认识的人的文字——[p]
虽然我想这样认为，但由于日记中到处都写着我的名字……[p]
不得不承认这是无法改变的事实。[p]
妈妈……[p]
为什么？[p]
我无法理解。[p]
妈妈。[p]
为什么？[p]
到底……[p]
你在想什么？[p]
本应每天都为家里努力的、我尊敬的妈妈。[p]

[bg storage="effect_02.jpg" time="800"]

那个形象，正在发出声响地崩塌。[p]

[bg storage="kuro.jpg" time="800"]

昨天还温柔地拥抱我，一遍又一遍地说没事的。[p]
我不明白这是什么意思。[p]
虽然能理解文字的含义，但我的大脑拒绝去理解它。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

我用颤抖的手翻阅着过去的日记。[p]
手册最开始的部分，正好是10年前的日期——[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo6_manbikisaseteru.jpg" time="800"]

——「看起来丈夫让望去偷东西」[p]
——「还没有证据。但摄像头拍到望带着酒回来了」[p]

[bg storage="memo7_oyogaseteoku.jpg" time="800"]

——「本想阻止的，但是……先放任一段时间」[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈，你知道偷窃的事……？[p]
为什么不阻止我？为什么不告诉我？[p]
为什么……明明知道却一直保持沉默？[p]

[bg storage="kuro.jpg" time="500"]

我不明白。[p]
我不明白。[p]
我不明白妈妈的想法。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

我看向其他页面。[p]
这次是9年前的日记。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo8_musumenositagi.jpg" time="800"]

——「看到丈夫在卖女儿的内衣。太恶心了！」[p]

[bg storage="memo9_sauganiyougo.jpg" time="800"]

——「这实在无法辩护。不过，如果他把卖的钱给我的话，那就另当别论了」[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

——「这件事也先放任不管。对我来说，材料越来越多，正合我意」[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="500"]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈——[p]
原来全都知道，全都知道爸爸做的事。[p]
可是……却什么都不对爸爸说，就这样放任不管。[p]
为什么……不来帮我？[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

「正合我意」是什么意思？[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我再也没有心情继续读下去，把日记放回原处。[p]
放回时，在抽屉最里面发现了存折。[p]
这是用来管理家庭开支的。[p]

[bg storage="CG12/CG12_2.jpg" time="800"]
[cg storage="CG12/CG12_2.jpg"]

打开一看……[p]

[bg storage="CG12/CG12.jpg" time="800"]
[cg storage="CG12/CG12.jpg"]

竟然存了一大笔钱。[p]
而且……从15年前就开始了。[p]
15年前，那时我才2岁。[p]
而存款的来源写的是前一任爸爸的名字。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻到下一页，还有更早之前爸爸的转账记录。[p]
……难道是从离婚的爸爸们那里收钱？[p]
那么……为什么我们一直过着贫穷的生活？[p]
一直以来，连生日蛋糕都买不起。[p]
妈妈从以前就对爸爸的事置之不理。[p]
没有来帮我。[p]
明明有钱，却一直过着贫穷的生活。[p]
为什么。为什么。为什么。[p]

[fadeoutbgm]
[bg storage="nozomi_heya05.jpg" time="800"]

但是……这些疑惑的答案在晚上就明白了。[p]

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
而且妈妈醉得连路都走不动了。[p]
察觉到情况的爸爸冲出去大喊。[p]

[chara_show  name="父" top="70" time=500]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

[mob_window]
#父
喂美希，这些男人是怎么回事！[p]

[default_window]
#
然后爸爸和妈妈立刻就吵了起来。[p]
妈妈本想挑选词语搪塞过去，但似乎放弃了，直接这样说道。[p]

[mob_window]
#母
啊，全都完蛋了！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="nozomi_kako_apart_yoru2.jpg" time="800"]
激烈的争吵最后甚至演变成了扭打。[p]
那些陌生男人试图来调解，但爸爸大声吼叫让他们赶快离开。[p]

[bg storage="nozomi_kako_apart_yoru.jpg" time="800"]

车子离开后，妈妈和爸爸回到房间，继续他们夹杂着怒吼的争吵。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

我被他们俩吓得……在卧室里发抖。[p]
隔着拉门能听到他们的对话……[p]
爸爸追问那些男人是怎么回事。[p]
妈妈则脱口说出昨晚和我谈话的内容。[p]

[mob_window]
#母
我从望那里听说了。你居然做出卖望的事，甚至还让她去偷东西……！简直难以置信！我竟然和这样的人结婚……！[r]
[p]

#父
美希你晚上回来得那么晚，原来是和那些男人鬼混！你有什么资格说我坏话？！装作在工作，其实这么多年一直在外面玩！！[p]

[default_window]
#
妈妈说得好像「昨天才第一次听说」似的……[p]

[bg storage="kuro.jpg" time="800"]

妈妈不是早就知道了吗？[p]
从很久很久以前就──。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

然后妈妈向爸爸提出了离婚。[p]
离婚……[p]
对我来说，这已经是第3次了……[p]
妈妈和爸爸无法继续和睦相处这件事，从这几年的关系恶化就已经很明显了……[r]
[p]
所以，我也不会天真地希望他们现在能和好如初。[p]
我已经无所谓了。[p]
但是。[p]
跟着爸爸走，我是绝对不愿意的。[p]
可是，跟着妈妈走也……[p]

[mob_window]
#母
你对我女儿做出那么过分的事，必须赔偿！一定要你付赔偿金！！[p]

[default_window]
#
我听到妈妈一边提出离婚，一边这样说着。[p]
赔偿金。[p]
这是我在电视上听过的词。[p]

[fadeoutbgm]
[bg storage="tuutyou.jpg" time="800"]

听到这个，我想起了存折的事。[p]
汇款人那栏写着前一任爸爸的名字。还有那笔数额巨大的汇款。[p]

[wait time="500"]

这时我终于把所有的点连成了一条线。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

啊，原来如此。[p]
我一直以来，都被这些人利用着啊。[p]
妈妈……明知道我被爸爸利用，却没有阻止……[p]
那是因为将来离婚时可以作为条件……可以作为要求赔偿金的「材料」来利用。[p]
日记里写的「正合我意」，肯定就是这个意思……[p]
爸爸从10年前开始一直在卖我的偷拍视频和内衣，还让我去偷东西。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

而妈妈，已经反复离婚好几次了。[p]
说不定，妈妈从一开始就预料到会变成这样才再婚的……[p]
用爸爸对我做的事作为材料，妈妈推进离婚……[p]
如果从「一开始」……从我出生的时候起……[p]
全部，全部，都是精心策划好的话。[p]

[bg storage="kuro.jpg" time="500"]

不，不对——就是精心策划好的。[p]
我只是为了获取金钱而被利用的，一个单纯的工具而已。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

但是…………………………[p]
为什么？[p]
我不明白。[p]
我不明白妈妈的事。[p]

[wait time="500"]

爸爸……是个利用我的无可救药的人渣。[p]
他利用继父的身份，对我温柔以博取我的信任，然后背地里背叛了我。[p]
每次想起这些，恶心感就从胃里涌上来，让我想吐。[p]

[bg storage="kuro.jpg" time="500"]

但是。[p]

[bg storage="monolog_01.jpg" time="800"]

为什么……为什么连妈妈……连妈妈也要……[p]
——为什么我会那么轻易地相信「她做了那种事」呢？[p]
我只是读了日记上写的内容，并没有直接从妈妈那里听到。[p]
在再婚之前，妈妈一直照顾年幼的我。[p]
为了不让我孤单，她拼命地为我寻找新的爸爸。[p]
她不可能做那种事的。[p]

[bg storage="monolog_03.jpg" time="800"]

因为，妈妈是我的妈妈——[p]
妈妈应该是珍惜孩子、爱着孩子的。[p]
应该是这样的吧？[p]
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
我，相信，妈妈。[p]
在想着妈妈的同时，我突然想起了一件事。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="1200"]
[wait time="500"]

……我，今天，是18岁生日。[p]

[mask time="1000" graphic="kuro.jpg"]
[bg storage="nozomi_heya03.jpg" time="0"]
[wait time="2000"]
[mask_off time="1000" wait="true"]

凌晨4点。[p]

[nozomi_window]
#望
……呜，呜咽……呜，呜呜……抽泣……[p]

[default_window]
#
明明相信着。[p]
明明相信着。[p]
眼泪止不住地流。[p]
刚才妈妈和爸爸一直在大声争吵……终于安静下来了。[p]
我已经不想听他们在说什么了。[p]
所以我捂住耳朵……蜷缩在被子里……[p]
泪水不停地涌出，无法控制。[p]

[bg storage="kuro.jpg" time="500"]
[playse buf="3"  storage="gisi.mp3" volume="20"]

心里很吵。[p]
仿佛所有积累的温柔回忆都在变成痛苦和折磨的声音，不断地在心中回响。[p]
不要。[p]
不要。不要。不要。[p]
快点睡吧。[p]
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

盖在身上的被子被无情地掀开了。[p]
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
该哭的是我才对！再过一会儿本该一切都顺利的……！[p]


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
[cg storage="CG13/CG13.jpg"]
[mask_off time="300" wait="true"]

飞过来的东西──插在我身旁几厘米的榻榻米上的，是一把刀。[p]
刀刚刚从我身边擦过。[p]
看到那把刀后，我才意识到刀刃擦过了我的脸颊。[p]
从脸颊上──从那极小的裂口中──渗出血来，滴落下来。[p]

[clearfix name="role_button"]
;;;@layopt layer=message0 visible=false
;;;@layopt layer=message1 visible=false

[bg storage="kuro.jpg" time="300"]

; メッセージウィンドウの設定 - 一時的に変更

[position layer="message0" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[font color="red"]

妈妈妈妈她妈妈她　　　想要　　　杀死我因为　　　　刀不对妈妈怎么可能会做这种事但是[r]
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
要是你不在就好了要是你不在就好了要是你不在就好了要是你不在就好了要是你不在就好了要是你不在就好了要是你不在就好了要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了，要是你不在就好了────────[r]
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

我迟迟才理解了那句话和投掷刀子的含义[p]
[wait time="300"]
我终于明白了[p]

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

听到声音，爸爸跑了过来[p]
[wait time="300"]
看到我，他愣住了[p]
[wait time="300"]
好像很快就明白了该做什么[p]
[wait time="300"]
他把低着头的我　　　　　　　搂了过去[p]
[wait time="300"]

[mob_window]
#父
望……！！　很痛苦吧，我也恨你妈妈恨得想让她去死。所以我是望的同伴。看，对吧？[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[wait time="300"]

他抱着我，想要安慰我[p]
[wait time="300"]
这就是这个人渣的　惯用伎俩[p]
[wait time="300"]
反正　　　　安抚我之后又要利用我[p]
[wait time="300"]
他喋喋不休地说着，想要把我拉到他那边[p]
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
没问题。[p]

[bg storage="kuro.jpg" time="500"]

现在，随时都可以下手了。[p]

[bg storage="monolog_02.jpg" time="1200"]

但在那之前……我……[p]
至少想在最后做一次『普通女孩子会做的事』。[p]
就算是假的也无所谓。[p]
反正父母已经不会再利用我了。[p]
和某个人一起吃美味的食物，开心地玩耍，像恋人一样度过时光，就是那种。[p]

[fadeoutbgm]
[bg storage="nozomi_heya04_3.jpg" time="800"]

那种『普通女孩子的普通生活』………………[p]

;;; - - - - - - - - - - - - - - - - - - - - - 過去回想おわり


[mask time=" 1500" graphic="kuro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[stopbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 6000"]
[mask_off time="500" wait="true"]

@jump storage="scene13.ks"
