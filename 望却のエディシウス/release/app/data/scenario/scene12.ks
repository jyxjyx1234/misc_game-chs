
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

回到房间时，我和望的目光相遇了。[p]
她坐在床上抱着膝盖，似乎是在等我回来。[p]
还没来得及开口，望就扑了过来。[p]

[playbgm  storage="02Unopened.mp3" volume="40"]
[bg storage="jishitsu_yuu_bokasi.jpg" time="500" wait=false]
[playse buf="3"  storage="huku01.mp3" volume="50"]
[chara_show  name="望3_ネックレス有" face="gimon" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
……我还以为你不会回来了。[p]

[saku_window]
#朔
这里是我家啊，我当然会回来。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji4" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
就是啊，我总觉得那些对我有利的话都不可信。所以即使你说一定会回来，我也没能完全相信。对不起，朔。[r]
[p]

[saku_window]
#朔
就算知道了你的过去，也不会成为我不回来的理由啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="gimon2" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
全都看了吗？[p]

[saku_window]
#朔
至少，这里面的内容是看了。[p]

[default_window]
#
我拿出了据说是望的母亲写的日记本。[p]
虽然拿到这本日记完全是个意外，但望应该知道那个男人在家里吧。[p]
否则，她也不会说出「去家里看看就知道了」这种话吧。[p]

[chara_mod  name="望3_ネックレス有" face="metoji2" cross=false time=500]
[nozomi_window]
#望
妈妈的日记？……这样啊。[p]

[saku_window]
#朔
…………[p]

[default_window]
#
我还是看了日记的内容。[p]
我知道了望的父母所做的事情。[p]

[saku_window]
#朔
望你是……真的，那……[p]

[default_window]
#
我一瞬间语塞。[p]
回想起看到的内容……不知道该从何说起。[r]
[p]

[fadeoutbgm]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji4" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
…………[p]

[default_window]
#
望低下头，沉默不语。[p]
她看起来似乎在害怕接下来要被说出的事情。[p]
不过，过了一会儿，她像是放弃了一样开口了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望3_ネックレス有" top="50" time=250]
[wait time="800"]

[nozomi_window]
#望
…………嗯，是的。我就是……那上面写的那个没能幸福的小女孩。[r]
[p]

[default_window]
#
_　[r]
_　[cm]

她用几乎消失的声音这样说道。[p]

[chara_hide_all time=800 wait=true]

然后，望以微弱的声音开始讲述自己的过去。[p]

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
妈妈从超市买了蛋糕回来。[p]
她说是半价买的。[p]
半价？那是什么呢？[p]
蛋糕好像很贵，是一种奢侈品。[p]
今天，我们在米饭上浇了「酱汁」的豆芽吃。[p]
豆芽的脆感特别好吃。[p]
吃完后，妈妈拿来了蛋糕。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

把蜡烛插在蛋糕上，点燃后，关掉灯。[p]

[bg storage="nozomi_heya02.jpg" time="800"]

和妈妈一起唱完「生日快乐歌」后，对着蜡烛吹了一口气。[r]
[p]

[bg storage="nozomi_heya03.jpg" time="800"]

每次过生日都是这样。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

呜呜，好想快点吃啊。[p]
但是……今天不止这些。[p]

[chara_show  name="母" top="190" time=500]
[mob_window]
#母
今天有个特别的惊喜哦？[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

妈妈这么说着，把一个男人带回了家。[p]

[chara_show  name="母" top="190" time=500]
[chara_show  name="父" top="70" time=500]

妈妈说是新的爸爸。[p]

[fadeoutbgm]

是第三个爸爸了。[p]
那个男人看着我，微笑着。[p]
前一个爸爸去哪了呢？[p]
比起这个，我更想快点吃蛋糕。[p]

[chara_hide name="父" time=500 wait=true]

那个男人去了厕所，我就看向蛋糕那边。[p]
然后，[p]

[chara_show  name="母" top="190" time=500]
[wait time=200]
[playse buf="3"  storage="HandSynthClap.mp3" volume="50"]
[quake count=2 time=200 hmax=20 vmax=20]
[wait time=800]

我被妈妈打了一巴掌。[p]

[mob_window]
#母
@layopt layer=message0 visible=false
[nowait]
孝昌先生是个特别好的人，不许你摆出那种表情！
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

_　[r]
_　[cm]

[nolog]
孝昌先生是个特别好的人，不许你摆出那种表情！[p]
[endnolog]

[default_window]
#
虽然被打很痛，但已经习惯了。[p]
如果我不听妈妈的话，就经常会被骂，还会挨打。[p]
不过，骂完之后她会抱紧我，我们还会睡在同一张床上。[p]
抱着我的时候，她总是说「对不起啊，对不起啊」，不停地道歉。[p]
看着道歉的妈妈，我心里也会难受，于是也跟她说「对不起，我做错了」。[r]
[p]
和妈妈之间，总是在道歉和被道歉中度过……一直都是这样。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_03.jpg" time="800"]

所以每次有新爸爸来的时候，我都会担心妈妈会不会生气。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[playbgm storage="08Voices_orgel.mp3" volume="40"]

自从第三个爸爸来到我们家后[p]
刚开始有点担心，不过……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

爸爸做了非常好吃的料理。[p]
有肉啊，还有鱼啊！[p]
美味料理的完整套餐。[p]
在爸爸的料理中，我最喜欢的是蛋包饭。[p]
为了感谢美味的饭菜，我还会帮爸爸捶肩膀。[p]
不过，爸爸很少跟我说话。[p]
其实他可能觉得我在害怕吧。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

不过，半夜我起来上厕所的时候，他会默默跟着我，还会陪我一起睡觉。[p]

[bg storage="monolog_01.jpg" time="800"]

虽然我不像其他小朋友一样能去幼儿园或者学校……[p]
但因为有妈妈和爸爸在，所以不觉得孤单。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

这样的生活持续了大约三年…………[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[wait time="800"]
[bg storage="CG22/CG22.jpg" time="800"]
[cg storage="CG22/CG22.jpg"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

我到了十岁。[p]
妈妈工作到很晚，爸爸从早上工作到傍晚。[p]
两个人都不在的时候，我一个人在家，就反复看录下来的动画片。[p]
是以战斗女孩为主角的动画片。[p]
我特别喜欢那个毫不气馁、勇敢对抗坏人的主人公『渚』。[p]
还会在不用的纸背面画她的画。[p]

[bg storage="nozomi_yuuyake.jpg" time="800"]

爸爸一回家，就立刻帮忙准备晚饭。[p]
因为妈妈总是在工作地方吃饭，所以只需要做两个人的份。[p]

[bg storage="nozomi_yokushitsu.jpg" time="800"]

一起吃完饭后，那天决定一起洗澡。[p]
虽然和爸爸关系变好了，但被看到裸体还是觉得丢人。[p]
所以，我背对着他，尽量不让他看到。[p]
爸爸看起来因为能跟我一起洗澡而很开心。[p]
我想着，如果爸爸高兴的话，那就算了吧。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

但是，洗完澡出来后，我脱下来的内衣不见了。[p]
明明记得是放在篮子里的啊。[p]
后来也没找到……不过，每次都会多出新的内衣来。[p]
可能是妈妈或者爸爸帮我换的吧。[p]
如果是爸爸换的，那就有点害羞了。[p]

[bg storage="monolog_03.jpg" time="800"]

即便如此，我还是一直心里想着谢谢爸爸。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

就是因为这么想的，我……[p]
一直想着想为爸爸做点什么来报答他。[p]
为了感谢他给我做美味的饭菜，还对我那么温柔。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

我问爸爸：有没有什么是我能做的？然后……[p]

[chara_show  name="父" top="70" time=500]

爸爸说『只有望才能做到的事』，然后提了个请求。[p]

[chara_hide_all time=500 wait=false]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_super.jpg" time="1500"]

让我去家附近的『超市』，带一瓶棕色的瓶子回来……是这么说的。[p]
他说什么『威士忌』啊、『酒』之类的……到底是什么呢？[p]
他说即使店里的人问起，也要保密不能提到他。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[wait time="800"]
[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

看到我回到家后，爸爸有点紧张……但后来狠狠地夸了我一顿。[p]
那让我真的特别开心。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="700" wait="true"]

从那以后，我每天都会帮爸爸带『酒』回家。[p]

[bg storage="nozomi_super.jpg" time="800"]

不过，有一次被店里的人说了句『不能随便拿走哦』……[p]
所以，从那以后我就学会了不被店里的人发现，偷偷地把『酒』带回来。[p]
偶尔也会带些『罐啤酒』或者别的东西回去。[p]

[bg storage="nozomi_heya04.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

每次带回去，爸爸都会夸奖我，还会偶尔给我买点零食或者巧克力。[p]
因为奖励让我特别高兴，所以我更加卖力地带了很多『酒』回家。[p]
爸爸很喜欢这种叫『酒』的饮料，喝完后经常直接睡在地板上。[p]
他说是喝醉了。[p]
醉了，是什么意思呢？是会犯困吗？[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[wait time="2000"]
[chara_hide_all time=0 wait=false]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="700" wait="true"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

又有一天，我在离家有点远的地方发现了一只小猫咪正在睡觉。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

它的毛有点乱糟糟的，看起来不是很有精神。[p]
所以，我从『超市』拿了些猫粮过来喂它。[p]
一开始它总是马上就跑掉，但每天坚持喂它后，小猫咪渐渐开始依赖我了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_sukima.jpg" time="0"]
[mask_off time="700" wait="true"]

后来，它习惯了，还会用身体蹭我的腿呢。[p]
不过关于小猫咪的事情，还有给爸爸带『酒』回家的事情，我都没告诉妈妈。[p]
总觉得，好像会被骂吧。[p]
但是，这样的小秘密时光让我觉得有点开心。[p]

[bg storage="monolog_03.jpg" time="800"]

而且……总是出现在同一个地方的小猫咪，让我觉得它和我有些相似。[p]
看着这只没有其他地方可去的小猫咪，我好像看到了自己。[p]
所以，我就更加喜欢这只小猫咪了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

中午照顾小猫咪，晚上和爸爸一起吃饭。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

妈妈通常会在我快睡觉的时候回来，聊一会儿天，有时候还会一起睡。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="500"]

可是……这样的日子并没有持续太久。[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="1200"]

某天早上，听到外面爸爸在吵吵嚷嚷，我跑出去一看……[p]
家里的墙上被涂满了乱七八糟的涂鸦。[p]

[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

『「罪犯」』[p]
『「被诅咒的家」』[p]
『「小偷」』[p]
『「惯偷」』[p]
『「去死」』[p]
『「还钱」』[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="800"]

虽然我不明白这些是什么意思……[p]
但因为爸爸很慌乱，我知道这些一定是些不好的东西。[p]
爸爸说是附近孩子的恶作剧，然后很快就把它们清理掉了……[p]

[bg storage="monolog_01.jpg" time="800"]

可从那以后，爸爸的态度变了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

说话变得粗暴了，和妈妈半夜吵架的次数也多了起来。[p]
我假装睡着，心里想着希望他们能和好。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

第二天。[p]
为了让爸爸振作起来……我问爸爸，要不要再给他拿点「酒」来？[r]
[p]

[chara_show  name="父" top="70" time=500]

结果，爸爸用可怕的表情瞪了我一眼。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

他的表情让我害怕得，差点当场哭出来。[p]
我马上就明白，我做了不该做的事。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

爸爸举起了手臂，我下意识地用双手护住了头。[p]
因为我以为他会像妈妈一样，突然打我的头。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

……但是爸爸没有打我的脸。[p]
取而代之的是……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

[mob_window]
#父
脸上留下淤青就不好了……真是的，要是你能做得更好一点，我就不会落到这个地步！[r]
[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya05.jpg" time="800"]

[default_window]
#

_　[r]
_　[cm]

……那是第一次，他叫我「你」。[p]
平时他都会叫我「望」的。[p]
「这个地步」是什么意思？[p]
我没太明白，问了也没人告诉我。[p]
对不起。对不起。对不起。[p]
虽然不知道理由，但因为不想被讨厌……就只是一直道歉。[p]

[fadeoutbgm]
[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]

……那幅涂鸦，到底是什么意思呢？[p]

[bg storage="kuro.jpg" time="800"]

不过，随着时间的推移……[p]
关于那幅涂鸦的事也渐渐被我淡忘了……。[p]

[mask time=" 2000" graphic="kuro.jpg"]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="1000" wait="true"]
[wait time="800"]
[bg storage="CG22/CG22_2.jpg" time="800"]
[cg storage="CG22/CG22_2.jpg"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

然后7年过去了……我已经17岁了。[p]
虽然这么说，但再过两天我就要满18岁了。[p]
小时候，我觉得17岁是差不多算步入成年人的年纪。[p]
可是……我一直都在察言观色，小心翼翼地揣摩着妈妈和爸爸的情绪过日子。[p]
一个人的时候，就画画、看电视，或者照顾流浪猫咪。[p]
电视里的世界对我来说简直充满了魅力。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshimaeki02_2.jpg" time="0"]
[mask_off time="300" wait="true"]

那些看起来很有趣的交通工具……[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima01_2.jpg" time="0"]
[mask_off time="300" wait="true"]

还有看起来很好吃的食物，热闹非凡的街道。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima07_2.jpg" time="0"]
[mask_off time="300" wait="true"]

特别是，我很想去一个叫卯之岛的旅游胜地看看。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima09_2.jpg" time="0"]
[mask_off time="300" wait="true"]

岛上有一个小山坡，从那里望出去，是一片天空和大海交融的湛蓝世界。[p]
仅仅是在电视里看到这样的景色，就让我心跳加速。[p]

[bg storage="CG22/CG22_2.jpg" time="800"]

总有一天，我也想去看看那样的风景。[p]
还有，我会看妈妈喜欢并录下来的爱情电视剧。[p]

[bg storage="monolog_01.jpg" time="800"]

爱情。[p]
这个词跟我没什么关系……更别说想象自己和男人接吻了，完全无法想象。[r]
[p]
看电视剧的时候，总会不由自主地想起爸爸和妈妈的事情。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

现在的爸爸和妈妈……自从那次涂鸦事件后，就不怎么显得幸福了。[r]
[p]
总是忍不住将电视剧里的幸福和现实进行比较。[p]

总有一天，我也能和某个美好的人谈一场幸福的恋爱……就好了。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

正想着这些，去脱衣间准备开洗衣机时，发现了一个陌生的东西。[p]
是一个小手电筒。[p]
而且还被塞进了叠放在架子上的毛巾之间，像是故意藏起来一样。[p]
以前有这样的东西吗……？[p]
这么想着，我拿起手电筒，却感到了一丝违和感。[p]
……和我们家之前用的不一样。[p]
而且仔细一看，根本没有可以发光的开关。[p]
最引人注意的是侧面装着的小屏幕。[p]

[bg storage="nozomi_yokushitsu2.jpg" time="800"]
[playbgm storage="06_hansinhangi.mp3" volume="40"]

屏幕上显示的是我面前的浴室。[p]
或者说……是我手里拿着的手电筒指向的方向被显示出来了。[p]
也就是说，这是……相机？[p]
是爸爸或者妈妈放在这儿的吗？[p]
可是，为什么会放在这种地方……[p]
简直就像是……有人在偷拍一样……。[p]
……不，不可能，我一直都在家，要是有人进来干这种事，我肯定会马上发现的。[p]
大概是爸爸妈妈的私人物品，随手放在这里忘记收起来了吧。[p]
放在这里的话可能会因为潮湿坏掉，还是收进壁橱里吧。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[mask_off time="1000" wait="true"]

当天晚上。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

爸爸回到家后，慌慌张张地到处找东西。[p]
平时的话，这个时间应该开始准备晚饭了才对。[p]
正当我这么想的时候，爸爸问了我一句。[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
手电筒，是不是被望收起来了？[p]

[default_window]
#
原来是爸爸的啊。[p]

[chara_hide_all time=500 wait=true]

我告诉他我收进了壁橱里，他立刻急匆匆地去拿了。[p]
没被骂真是太好了，不过……[p]

[bg storage="nozomi_heya05.jpg" time="800"]

『那种好像有人在偷拍的感觉』[p]
一瞬间又浮现在脑海里。[p]
如果说……爸爸偷拍了我和妈妈的……裸体的话……。[p]
不，不要再想下去了。[p]
爸爸从以前开始就会做饭，也会在害怕的时候陪着我睡觉。[p]
那么温柔的爸爸，不可能做出那种事。[p]
虽然这么想着，但还是想弄清楚爸爸没有做过那种事。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_heya01.jpg" time="0"]
[mask_off time="700" wait="true"]

第二天中午。[p]
趁着家里没人，我偷偷翻看了爸爸的桌子抽屉。[p]
虽然几年前就被告诫过说里面放着重要的东西，不能随便打开……。[p]
因为觉得擅自打开会被骂，最近连打开的念头都没有了。[p]
所以，为了不被发现，为了不留下痕迹……[p]
我一个一个地打开抽屉。[p]
里面塞满了文件、小物件和文具，乱七八糟的。[p]
然后，当我打开最下面的抽屉时……忍不住叫出了声。[p]

[bg storage="monolog_01.jpg" time="800"]

放在里面的是……[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[wait time=500]
[bg storage="nozomi_heya11.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

被整齐叠好装在拉链袋里的，我的……内裤。[p]
而且，还是一周前我洗澡时脱下后以为弄丢了的那条内裤。[p]
……说起来更早以前，也有脱下的内衣不见过的事情。[p]

;;;よどんだようなエフェクト
[bg storage="effect_04.jpg" time="800"]

一种难以形容的、令人恶心的不适感涌上心头。[p]

[bg storage="kuro.jpg" time="800"]

但是，如果说，爸爸真的……我的……[p]
偷了我的内衣，还偷拍了的话……[p]
……是为了什么？[p]
是为了自己……享受吗？[p]

[bg storage="nozomi_heya01.jpg" time="800"]

这个答案我很快就知道了。[p]
和内衣放在一起的抽屉里还有一个信封……上面连收件地址都写好了。[p]
那个信封是网络二手交易平台用的那种。[p]
电视上说，现在这样卖东西赚钱很流行。[p]
而且，当我看信封里的内容时，发现里面还有我之前用过的另一件内衣。[p]

[bg storage="effect_04.jpg" time="800"]

也就是说，爸爸他……[p]
把我用过的内衣拿到网上卖掉了……也许，还把偷拍的视频卖到某个地方去了？[p]
虽然还没有证据，这种东西居然能卖出去，真是太恶心、太荒唐了。[p]
但是……新闻里看到过有人因为做同样的事被抓住的报道。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="300"]
[playse buf="3"  storage="Door_open_short.mp3" volume="30"]

就在想到这里的一瞬间。[p]
听到了玄关传来开门的声音。[p]

[playse buf="3"  storage="run_in_house.mp3" volume="40"]
[bg storage="nozomi_heya01.jpg" time="1000"]

回来的，是爸爸。[p]
明明这个时间他应该还在工作……[p]

[bg storage="monolog_01.jpg" time="300"]

……原因马上就明白了。[p]
因为他的书桌抽屉平时都是上锁的。[p]
他害怕抽屉被打开，所以趁着午休回来了。[p]

[bg storage="nozomi_heya01.jpg" time="300"]

但是，已经太晚了。[p]

[chara_show  name="父" top="70" time=500]

看到站在那里的我，爸爸露出了震惊的表情。[p]
然后他的表情渐渐变得愤怒起来……[p]

[quake count=3 time=200 hmax=20 vmax=20]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[wait time=100]

他像推开障碍物一样，把站在桌子前的我推到一边。[p]
我重重地摔在地上，他却连看都没看一眼……[p]

[chara_hide_all time=500 wait=true]

爸爸锁上了桌子的抽屉，然后装作什么都没发生似的准备离开。[p]
我对着他的背影问道。[p]

[playbgm storage="naraku.mp3" volume="30"]
[bg storage="monolog_01.jpg" time="300"]

──喂，爸爸，抽屉里的东西……是怎么回事？[p]

[bg storage="nozomi_heya01.jpg" time="300"]
[chara_show  name="父" top="70" time=500]

他停下脚步转过身来，那张脸上依然带着怒气。[p]

[mob_window]
#父
望。一直以来，谢谢你啊。[p]

[default_window]
#
明明他绝对是在生气……却带着笑容对我说出了感谢的话。[p]
完全搞不懂爸爸在想什么……我的脑子都快要乱掉了。[p]

[mob_window]
#父
家里很穷，所以我把望用过的内衣和录像数据拿去卖了。穷人嘛，只能这样赚钱啊。[r]
[p]

#父
瞒着望是我的错。我不会再这样做了。我知道这是错的，也会反省的。一会儿我会告诉你妈妈的。[r]
[p]

[default_window]
#
_　[r]
_　[cm]

即使他说得那么轻描淡写，我也完全听不进去。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]

可是爸爸你根本就没有打算道歉吧。[p]
虽然我知道这么说肯定会被骂……[p]
心里那股郁闷实在太让人难受了，我忍不住追问下去。[p]
忍不住追问了下去。[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[chara_show  name="父" top="70" time=500]

[nozomi_window]
#望
那就是说我一直……都只是被爸爸用来赚钱的工具吗？[p]

[default_window]
#
我这么一说，爸爸顿时火冒三丈。[p]

[mob_window]
#父
那还用说！内衣也好，录像也好，全都以高价卖出去，整整九年了！[p]

#父
以前让你从超市偷酒也是一样的……啊，对了，没跟你说过吧，擅自拿走卖品可是犯罪哦。[r]
[p]

#父
就是因为这事被发现了，家里的墙才会被涂鸦，那是店主发泄不满的手段吧……[p]

#父
我跟美希解释说是小孩子的恶作剧，可要不是因为你被抓包，那种涂鸦根本不会出现！[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

──犯罪？[p]
犯罪不是因为会被警察抓，所以绝对不能做的事吗？[p]
可爸爸却让我……做这种事？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="nozomi_heya06.jpg" time="0"]
[kanim layer=base keyframe="shake" time="2000" count="infinite"]
[mask_off time="300" wait="true"]

就像心脏被贯穿了一样，一阵剧烈的冲击袭来。[p]
我所相信的现实开始动摇……扭曲得一塌糊涂。[p]
而且，我一直都是为了爸爸才做这些事的……[p]
不想相信。不敢相信。[p]
可是爸爸却承认了，他是在利用我。[p]

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
只是想对爸爸……报答恩情而已！[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
你知道我为什么一直在做这些事吗？其实并不是为了钱。其实是因为……[r]
[p]

#父
因为我想……好好爱你。我觉得，只要对我有好处……我就能好好地去爱你。[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya06.jpg" time="1000"]

啊────[p]
我在不知不觉中犯下了罪。[p]
而且不止如此……[p]
父亲在网上出售了我的内衣和视频。[p]
更重要的是……继父竟然用那种眼光看待我这个事实。[p]

[bg storage="monolog_01.jpg" time="500"]

罪恶感和被注视时的恶心感让我无法忍受，跪倒在地。[p]
在这样的情况下，那个人说过的话在我脑海中不断回响。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

『我只是想爱你』。[p]

[bg storage="monolog_01.jpg" time="500"]
[fadeoutbgm]

他所做的事情和这句话，实在是太格格不入了……[p]
我完全无法理解。[p]
还有……自己犯下的罪，被这个人做过的事……以及曾经的回忆，还有那份依然想要相信的心情。[r]
[p]
各种各样的事情，在脑海中不停地搅成一团……[p]
已经，不想，再去思考任何事情了。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

之后，不知道过了多久。[p]
什么都没法思考，只是茫然地呆坐着……[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

突然，很想见见小猫咪，于是在天还亮着的时候出了门。[p]
大概，是在寻求某种帮助吧。[p]
这七年来，每天几乎都能见到它的身影。[p]
前段时间，它看到我就会跑过来蹭蹭我。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]

可是，最近因为忙着讨好父母，完全没时间见到它……[p]
差不多有一个月没看到它的身影了。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

去看的时候，小猫咪正躺在它平时待的地方睡觉。[p]
阳光洒在身上，看起来很舒服的样子。[p]
我松了一口气，开始轻轻地抚摸它的身体。[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

────但是，它没有任何反应。[p]
而且，冷得让人难以置信。[p]
平时只要把手指放到它头旁边，它都会用脸蹭过来的……[p]
可现在……完全没有动静。[p]

[bg storage="nozomi_sukima.jpg" time="500"]

我以为它可能身体不舒服，就把小猫咪抱了起来。[p]
结果发现，它的右腿上有一道严重的伤口……[p]
原来是受伤了，动不了了。[p]

[bg storage="nozomi_sukima2.jpg" time="500"]

但就在那一瞬间，从小猫咪的肚子附近，涌出了大量的蛆虫。[p]

[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

全身起了一层鸡皮疙瘩，我下意识地把小猫咪甩开了。[p]

[bg storage="nozomi_sukima3.jpg" time="800"]

被甩出去的冲击力让小猫咪的身体翻转成仰面朝天……[p]

[nolog]
蠕动的蛆虫不仅侵蚀了小猫咪的身体，甚至连眼球也毫不留情地吃得干干净净，眼窝深处还能看到蛆虫在不停地蠕动。[r]
[p]
[endnolog]

[pushlog text="蠕动的蛆虫不仅侵蚀了小猫咪的身体，甚至连眼球也毫不留情地吃得干干净净，眼窝深处还能看到蛆虫在不停地蠕动。"]

[bg storage="effect_02.jpg" time="800"]

自那之后，我再也无法直视它了。[p]
中午吃下去的饭突然涌上喉咙，我忍不住当场吐了出来。[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

拼命呕吐着，眼泪止不住地流下来。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

为什么，为什么，为什么，为什么，为什么。[p]
为什么……我非得遭遇这样的事情────？[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

那个我一直把自己投影进去的小猫咪……就在我面前变成了这副惨不忍睹的模样。[p]
而我竟然────觉得它很恶心。[p]

[bg storage="kuro.jpg" time="800"]

啊……[p]
我是个彻底的废物。[p]
被那个人利用了。[p]
犯下了罪行。[p]

[bg storage="nozomi_sukima4.jpg" time="800"]

一直努力忍住不哭，可一呕吐出来，那股难受像决堤了一样，眼泪止不住地涌出来。[r]
[p]
各种事情交织在一起，情绪变得一团糟，已经无法控制了。[p]
全部，全部，都想吐出来。[p]
每次这么想，恶心感就涌上来。[p]
即使胃液都吐干净了，什么都吐不出来了，我还是干呕着，想要把什么东西吐出来。[p]
把所有让人恶心的东西都吐出来……如果能像什么都没发生过一样轻松就好了……[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

……但是……对啊。[p]

[bg storage="monolog_03.jpg" time="800"]

我还有……妈妈在。[p]
虽然妈妈现在偶尔还是会让我害怕，也会打我……[p]
可即便如此，她一定还是站在我这边的……。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

过去这十年里，妈妈工作一直很忙，总是半夜才回家。[p]
即使爸爸变了样，妈妈还是为了这个家一直努力工作着。[p]
这样的妈妈，我一直很尊敬她。[p]

[bg storage="nozomi_heya07.jpg" time="800"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]

那天晚上，我和妈妈两个人单独聊了一会儿。[p]
聊的当然是关于那个人的事。[p]
发生的事情，我全都，全都告诉了妈妈。[p]
我害怕如果说那个人的坏话会被骂。[p]
但妈妈静静地听着我的话。[p]
等我说完后，妈妈……温柔地抱住了我。[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
以前没能发现这些事，对不起。那个人趁妈妈不在家竟然做出这种事……真是个人渣。[r]
[p]

#母
望啊，妈妈会保护你的……不用再害怕了。[p]

[default_window]
#
她一边抱着我，一边用温柔的声音反复说道。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

那天晚上，是时隔七年后第一次和妈妈一起睡在同一个被窝里。[p]
久违的妈妈的味道。[p]
虽然有很多痛苦和悲伤的事情……[p]
但只要有妈妈在，我就觉得没问题了。[p]

[bg storage="kuro.jpg" time="800"]

不过，让我意外的是……[p]
听了我的话后，妈妈并没有太惊讶，而且直接认定爸爸是坏人。[r]
[p]
我虽然想相信爸爸，但却怎么也无法相信，这让我很痛苦……[p]
可是妈妈……难道她就不想试着相信爸爸吗……？[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="1000" wait="true"]

第二天。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

像往常一样，爸爸和妈妈因为工作都不在家……[p]
我翻了翻妈妈的私人物品。[p]
妈妈总是因为「工作」忙到很晚才回来，但我并不知道她具体在做什么工作。[p]

[bg storage="monolog_01.jpg" time="800"]
[playbgm storage="05_kaikoroku.mp3" volume="40"]

仔细想想，其实我对妈妈的了解并不多。[p]
因为觉得熬夜聊天不好，所以一直没有认真和她聊过天。[p]
这样翻找她的东西虽然有点像作弊，但我的好奇心根本停不下来。[p]
而且最重要的是，妈妈的存在是我唯一的救赎……[p]
是我的救赎……也希望她真的能成为那样的存在。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我打开了桌子的抽屉，往里面看去。[p]
里面有一本笔记本。[p]
这本笔记本……应该是妈妈半夜偶尔会写的日记吧。[p]
关于那些我不知道的事情，妈妈每天都在经历着什么。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo.jpg" time="800"]

想着答案应该就在这里，我翻开了日记本的页面。[p]

[bg storage="kuro.jpg" time="500"]
[stopbgm]

然而刚一打开，我就看到了一句让我无法相信的话……[p]

[playse buf="3"  storage="BookDrop.mp3" volume="80"]

手一抖，不小心把日记本掉到了地上。[p]
这是大约两周前的记录。[p]
上面写着的是……[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo1_noranekowo.jpg" time="800"]

──『用陷阱杀死了野猫』[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不可能。[p]
不可能，不可能，不可能，不可能，不可能！[p]
肯定是我看错了。[p]
但是，翻回去再看，写的还是同样的内容。[p]
而且在下面……还接着写着。[p]

[bg storage="memo2_kaitaitoka.jpg" time="800"]
[playbgm storage="naraku.mp3" volume="30"]

──『在望说想养野猫之前处理掉了，真是太好了』[p]

[bg storage="memo3_atarasiistress.jpg" time="800"]

──『虽然是第一次，但意外地很顺利，好像发现了一种新的减压方式』[p]

[bg storage="memo4_noranekonositai.jpg" time="800"]

──『尸体就放在那里吧，总会有人发现的吧？希望市政的人能来处理掉』[p]

[bg storage="memo5_baremasenn.jpg" time="800"]

──『希望望不会发现我杀了野猫这件事』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="800"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

拿着手账的手在颤抖，寒意止不住地涌上来。[p]
写下这些话的……真的是妈妈吗？[p]
其实是有人调换了手账，我只是碰巧读到了某个陌生人的文字──[p]
明明想这么认为，可是因为日记里到处写着我的名字……[p]
让我不得不觉得这是无法改变的事实。[p]
妈妈……[p]
为什么？[p]
完全无法理解。[p]
妈妈。[p]
为什么？[p]
到底……[p]
在想些什么？[p]
那个每天为了家努力、让我尊敬的妈妈。[p]

[bg storage="effect_02.jpg" time="800"]

她的形象正在轰然崩塌。[p]

[bg storage="kuro.jpg" time="800"]

昨天还温柔地抱着我，一遍遍地说「没事的」。[p]
完全无法理解。[p]
虽然明白了文字的意思，但大脑却拒绝去接受。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

颤抖着手翻回过去的日记。[p]
日记的最前面部分，正好是10年前的日期──[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo6_manbikisaseteru.jpg" time="800"]

──『老公好像让望去偷东西』[p]
──『还没有证据。不过望拿酒回来的样子被摄像头拍到了』[p]

[bg storage="memo7_oyogaseteoku.jpg" time="800"]

──『想阻止来着……但还是先放着不管』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈，你知道偷东西的事吗……？[p]
为什么不阻止我？为什么不告诉我？[p]
为什么……明明知道却一直沉默？[p]

[bg storage="kuro.jpg" time="500"]

不明白。[p]
不明白。[p]
完全搞不懂妈妈。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻看其他页面。[p]
这次是9年前的日记。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo8_musumenositagi.jpg" time="800"]

──『看到老公在卖女儿的内衣。太恶心了！』[p]

[bg storage="memo9_sauganiyougo.jpg" time="800"]

──『实在无法辩护。不过，如果他把卖的钱给我，那就另当别论了』[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

──『这也先放着不管。证据越来越多，对我来说倒是有利』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="500"]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈──[p]
你明明知道爸爸做的那些事，全都、全都知道。[p]
可是……你却什么都没对爸爸说，就这样放任不管。[p]
为什么……你不帮帮我呢？[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

所谓的『好都合』，到底是什么意思？[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我已经没有心情再继续读日记了，把它放回了原处。[p]
在放回的时候，我在抽屉最里面发现了一本存折。[p]
是用来管理家计的存折。[p]

[bg storage="CG12/CG12_2.jpg" time="800"]
[cg storage="CG12/CG12_2.jpg"]

打开一看……[p]

[bg storage="CG12/CG12.jpg" time="800"]
[cg storage="CG12/CG12.jpg"]

竟然有一大笔存款。[p]
而且……这笔存款从15年前就开始了。[p]
15年前，那时候我才两岁。[p]
而且汇款来源写着的是前任爸爸的名字。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻到后面的页面，还能看到更早以前的前任爸爸的汇款记录。[p]
……是离婚后的那些爸爸们在给钱吗？[p]
那为什么……我们一直过着这么贫穷的生活呢？[p]
到现在为止，甚至连生日蛋糕都买不起。[p]
从以前开始，妈妈就一直对爸爸的事情置之不理。[p]
从来没有帮助过我。[p]
明明有钱，却一直过着贫穷的生活。[p]
为什么？为什么？为什么？[p]

[fadeoutbgm]
[bg storage="nozomi_heya05.jpg" time="800"]

不过……这个违和感的答案在晚上揭晓了。[p]

[mask time="700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[wait time="1000"]
[mask_off time="700" wait="true"]
[chara_show  name="母" top="190" time=500]

晚上，刚过了零点，妈妈回来了。[p]
虽然说是回来了……[p]
却是被某人的车送回来的。[p]
送妈妈回来的是个开着豪车的陌生男人。[p]
而且妈妈醉得连路都走不了。[p]
察觉到情况的爸爸走到外面大喊起来。[p]

[chara_show  name="父" top="70" time=500]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

[mob_window]
#父
喂，美希，这些男人是谁啊！[p]

[default_window]
#
然后爸爸和妈妈立刻吵了起来。[p]
妈妈似乎想要敷衍过去，挑着词说话，但最后像是放弃了一样脱口而出。[p]

[mob_window]
#母
啊，真是全都毁了！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="nozomi_kako_apart_yoru2.jpg" time="800"]
激烈的争吵最终甚至演变成了肢体冲突。[p]
那些陌生男人试图调解，但爸爸大声吼着让他们赶紧滚。[p]

[bg storage="nozomi_kako_apart_yoru.jpg" time="800"]

车开走后，妈妈和爸爸回到房间，又开始夹杂着怒吼的争论。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

我被他们吓得……在卧室里瑟瑟发抖。[p]
隔着拉门，他们的对话清晰可闻……。[p]
爸爸追问刚才那些男人到底是什么人。[p]
妈妈则把昨晚和我谈过的内容直接说了出来。[p]

[mob_window]
#母
我从望那里听说了！你竟然做出把望「卖掉」这样的事，还让她去偷东西……！简直不可理喻！我居然嫁给了这样的人……！[r]
[p]

#父
美希，你自己晚上回家那么晚，原来是跟那些男人鬼混，你有什么资格指责我？你假装工作却整整几年都在外面游手好闲吧！！[p]

[default_window]
#
虽然妈妈表现得像是「昨天才知道」一样……[p]

[bg storage="kuro.jpg" time="800"]

但她其实早就知道了吧？[p]
从很久很久以前开始──。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

然后，妈妈向爸爸提出了离婚。[p]
离婚……[p]
对我来说，这已经是第三次了……。[p]
妈妈和爸爸无法继续和睦相处，这一点从这几年的关系恶化中早就看出来了……。[r]
[p]
所以，我也不会想着让他们现在和好如初。[p]
无所谓了。[p]
但是。[p]
要我跟着爸爸一起生活，我是绝对不愿意的。[p]
可即便如此，要我跟着妈妈一起生活的话……。[p]

[mob_window]
#母
他居然这么对待我的女儿，必须赔偿精神损失费！赔偿金一定要给！！[p]

[default_window]
#
听到妈妈在提出离婚的同时，说出了这样的话。[p]
赔偿金。[p]
这是个我在电视上听过的词语。[p]

[fadeoutbgm]
[bg storage="tuutyou.jpg" time="800"]

听到这话，我想起了存折上的事。[p]
汇款来源是前一个爸爸的名字。而且，金额非常巨大。[p]

[wait time="500"]

直到这一刻，所有的点才终于连成了一条线。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

啊，原来是这样啊。[p]
我一直被这些人利用着啊。[p]
妈妈……明明知道我被爸爸利用，却没有阻止……[p]
因为那可以作为以后离婚时要求赔偿的「证据」来利用。[p]
日记里写的「正合适」，肯定就是这个意思吧……。[p]
爸爸从十年前开始，就一直让我拍摄偷拍视频、卖我的内衣，还让我去偷东西。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

而妈妈呢，一次又一次地离婚。[p]
或许，妈妈从一开始就预料到了会这样，所以才再婚……[p]
然后用爸爸对我做的事作为证据，推进离婚……[p]
如果从「最初」开始……从我出生的时候开始……[p]
一切，一切，都已经被安排好了的话。[p]

[bg storage="kuro.jpg" time="500"]

不，不对──是早就被安排好的。[p]
我是，为了赚取金钱而被利用的，仅仅是一个工具而已。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

但是…………………………[p]
为什么？[p]
不明白。[p]
我搞不懂妈妈。[p]

[wait time="500"]

爸爸……他是个利用我的，无可救药的垃圾。[p]
他利用继父的身份，对我表现得很温柔，骗取我的信任，然后在不被发现的情况下背叛了我。[p]
每次想起这些，恶心感就从胃底涌上来，让我忍不住作呕。[p]

[bg storage="kuro.jpg" time="500"]

但是。[p]

[bg storage="monolog_01.jpg" time="800"]

为什么……为什么连妈妈……连妈妈也……[p]
──『做了那种事』这种话，我怎么能轻易相信？[p]
我只是读了日记里的那些文字，并不是妈妈亲口对我说的。[p]
在再婚之前，妈妈一直照顾年幼的我。[p]
她为了不让我一个人孤单，拼命地为我寻找新的爸爸。[p]
她绝对不会做那种事的。[p]

[bg storage="monolog_03.jpg" time="800"]

因为，妈妈是我的妈妈———[p]
妈妈是会珍惜孩子、爱孩子的人。[p]
本来应该是这样的吧？[p]
因为，她是我的妈妈啊。[p]
我想要相信她。[p]
不，不是想要。[p]

[bg storage="nozomi_sukima3.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我是相信她的。[p]

[bg storage="memo5_baremasenn.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我一定要相信她。[p]

[bg storage="memo8_musumenositagi.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我要相信她。相信她。一定要相信她。[p]
……要相信。要相信。一定要相信她。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

嗯。[p]
我，相信妈妈。[p]
想着妈妈的同时，我也回想起了一件事。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="1200"]
[wait time="500"]

……今天是我的十八岁生日啊。[p]

[mask time="1000" graphic="kuro.jpg"]
[bg storage="nozomi_heya03.jpg" time="0"]
[wait time="2000"]
[mask_off time="1000" wait="true"]

凌晨四点。[p]

[nozomi_window]
#望
……呜、呜呜……唔、呜呜呜……呜……[p]

[default_window]
#
明明是相信的啊。[p]
明明是相信的啊。[p]
眼泪止不住地流下来。[p]
刚才妈妈和爸爸一直在大声争吵……现在终于安静下来了。[p]
已经不想再听他们在说什么了。[p]
所以我捂住耳朵……蜷缩在被子里……[p]
但眼泪还是止不住地涌出来。[p]

[bg storage="kuro.jpg" time="500"]
[playse buf="3"  storage="gisi.mp3" volume="20"]

胸口闷得厉害。[p]
一直以来堆积的那些温馨记忆，全都像是变成了痛苦和折磨，不断地在心里回响。[p]
不要。[p]
不要。不想。不行。[p]
快点睡着吧。[p]
睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，睡着，快点……[p]
快点……睡吧。[p]

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

房间的灯亮了起来……[p]
[playse buf="3"  storage="huton.mp3" volume="30"]
[wait time="1000"]

盖在身上的被子被毫不留情地掀开了。[p]
肿胀的双眼抬头看去……[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
……哭什么哭啊。[p]

[default_window]
#
妈妈低头看着我，脸上露出了从未见过的可怕表情。[p]
就像……看着什么丑陋的东西，带着无法原谅的愤怒……。[p]

[mob_window]
#母
想哭的是我才对吧！明明再一点点就可以一切顺利了……！[p]


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
明明想着要抛弃你，却一直忍耐到现在……！！！[p]

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
本来可以和你爸一起甩掉你，用赡养费重新找个帅气的新男人开始新生活的！！[p]

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
要是没有你这个累赘的话……！！！[p]

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

妈妈大喊了一声之后……[p]
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

飞过来的东西——插在我身旁几厘米远的榻榻米上的，是一把刀。[p]
那把刀刚刚从我的身边擦了过去。[p]
看到那一幕后，我才意识到刀刃擦过了我的脸颊。[p]
从脸颊上——那极细小的伤口中——缓缓渗出血珠，滴落下来。[p]

[clearfix name="role_button"]
;;;@layopt layer=message0 visible=false
;;;@layopt layer=message1 visible=false

[bg storage="kuro.jpg" time="300"]

; メッセージウィンドウの設定 - 一時的に変更

[position layer="message0" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[font color="red"]

妈妈妈妈想要杀了我妈妈想要杀了我因为那把刀不对妈妈怎么可能会做出这种事可是……[r]
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
要是没有你……要是没有你……要是没有你……要是没有你……要是没有你……要是没有你……要是没有你……要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你，要是没有你────────[r]
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

那句话的含义，还有那把刀被投掷的意义，我迟迟才明白过来。[p]
[wait time="300"]
但我还是明白了。[p]

[bg storage="CG13/CG13_2.jpg" time="500"]

十八年来，从未有过一次，我被爱过。[p]
[wait time="300"]
我是。[p]

[bg storage="kuro.jpg" time="500"]

已经不需要的孩子了。[p]

[nozomi_window]
#望
──啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！[p]

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

听到声音，爸爸跑了过来。[p]
[wait time="300"]
看着我，愣住了。[p]
[wait time="300"]
好像马上就明白该做什么了一样。[p]
[wait time="300"]
抱住了低着头的我，把我拉近怀里。[p]
[wait time="300"]

[mob_window]
#父
望……！！太痛苦了吧，我也恨透了妈妈，甚至想她去死。所以我是望的伙伴，你看，是吧？[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[wait time="300"]

他抱紧我，试图让我安心下来。[p]
[wait time="300"]
这是这个混蛋的惯用伎俩。[p]
[wait time="300"]
反正，等让我安心下来之后，又会再利用我。[p]
[wait time="300"]
他为了拉拢我，不停地唠唠叨叨。[p]
[wait time="300"]
啊──────[p]
[wait time="300"]
吵死了。[p]
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

终于安静下来了。[p]
[wait time="300"]
接下来，我也──[p]
[wait time="300"]
把沾满鲜血的刀子抵在自己的脖子上……[p]
[wait time="300"]
确认自己的意志。[p]

[bg storage="nozomi_heya04_3.jpg" time="800"]

啊…………[p]
[wait time="300"]
……嗯。[p]
[wait time="300"]
没问题。[p]

[bg storage="kuro.jpg" time="500"]

已经可以随时动手了。[p]

[bg storage="monolog_02.jpg" time="1200"]

但在那之前……我想……[p]
至少最后一次做点「普通女孩子」的事情。[p]
哪怕是假的也无所谓。[p]
父母已经再也不能利用我了。[p]
和某个人一起吃好吃的东西，开心地玩耍，像恋人一样度过，那样的。[p]

[fadeoutbgm]
[bg storage="nozomi_heya04_3.jpg" time="800"]

那样的「普通女孩子的普通」………………[p]

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
