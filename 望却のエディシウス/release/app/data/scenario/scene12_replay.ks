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

7岁生日。[p]
妈妈从超市买回了蛋糕。[p]
她说是半价买的。[p]
半价？是什么意思呢。[p]
听说蛋糕很贵，真是奢侈啊。[p]
今天吃的是浇了「酱汁」的豆芽盖饭。[p]
豆芽脆脆的口感特别好吃。[p]
吃完饭后，妈妈拿出了蛋糕。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

把蜡烛插在蛋糕上点燃，然后关灯。[p]

[bg storage="nozomi_heya02.jpg" time="800"]

和妈妈一起唱了「生日快乐歌」，然后对着蜡烛呼——地吹了一口气。[r]
[p]

[bg storage="nozomi_heya03.jpg" time="800"]

每次过生日都是这样庆祝的。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

呜呜，好想快点吃啊！[p]
不过……今天可不止这些呢。[p]

[chara_show  name="母" top="190" time=500]
[mob_window]
#母
今天还有个特别的惊喜哦！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

妈妈这么说着，把一个男人带回了家。[p]

[chara_show  name="母" top="190" time=500]
[chara_show  name="父" top="70" time=500]

妈妈说，这是我的新爸爸。[p]

[fadeoutbgm]

是第三个爸爸了。[p]
那个男人看着我，微笑着。[p]
之前的爸爸去哪儿了呢？[p]
不过，比起这些，我更想快点吃蛋糕。[p]

[chara_hide name="父" time=500 wait=true]

男人去上厕所了，我盯着蛋糕看。[p]
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
孝昌先生是个非常好的人，不许你摆出那样的表情！
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

_　[r]
_　[cm]

[nolog]
孝昌先生是个非常好的人，不许你摆出那样的表情！[p]
[endnolog]

[default_window]
#
虽然被打很疼，但已经习惯了。[p]
如果我不听妈妈的话，就会经常被骂，还会挨打。[p]
不过，骂完之后，她会抱紧我，还会和我睡在同一张床上。[p]
抱着我的时候，她总是说对不起，对不起，一直在道歉。[p]
看到道歉的妈妈，我心里就会揪得很紧，所以也会说对不起，是我做错了事情。[r]
[p]
我和妈妈，总是互相道歉……一直都是这样。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_03.jpg" time="800"]

所以，每次有新爸爸来的时候，我总是担心妈妈会不会生气。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[playbgm storage="08Voices_orgel.mp3" volume="40"]

从第三个爸爸来到我们家之后[p]
刚开始有点担心……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

可是爸爸做了非常好吃的料理给我们吃。[p]
有肉啊，还有鱼啊！[p]
一整套美味的料理全都有。[p]
在爸爸做的料理里，我最喜欢的是蛋包饭。[p]
为了感谢这么好吃的饭菜，我还帮爸爸捶过背呢。[p]
不过，爸爸很少主动跟我说话。[p]
可能他觉得我其实有点害怕他吧。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

但是，半夜我起床上厕所的时候，他会默默跟在我后面，还会陪我一起睡觉。[p]

[bg storage="monolog_01.jpg" time="800"]

虽然我不像其他小朋友那样能去幼儿园或者学校……[p]
但因为有妈妈和爸爸在身边，我并不觉得孤单。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

这样的生活持续了大概三年…………[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[wait time="800"]
[bg storage="CG22/CG22.jpg" time="800"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

我已经10岁了。[p]
妈妈工作到很晚才回家，爸爸从早上忙到傍晚。[p]
两个人都不在家的时候，我一个人在家，就反复看录下来的动画片。[p]
是以战斗的女孩子为主角的动画片。[p]
我最喜欢从不气馁、勇敢对抗坏人的主角「渚」。[p]
还会在不用的纸背面画她的画。[p]

[bg storage="nozomi_yuuyake.jpg" time="800"]

爸爸一回来就马上给我准备晚饭。[p]
因为妈妈总是在工作地点吃饭，所以只需要做两个人的份量。[p]

[bg storage="nozomi_yokushitsu.jpg" time="800"]

一起吃完饭，那天我们还一起洗了澡。[p]
虽然和爸爸关系变好了，但被看见身体还是觉得丢人。[p]
所以，我背对着他，尽量不让他看到太多。[p]
爸爸看起来因为能和我一起洗澡很开心。[p]
如果爸爸开心的话，那也没关系吧，我这样想着。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

但是，洗完澡后，我脱下来的内衣却不见了。[p]
明明记得是放在篮子里的啊。[p]
后来也一直没找到……但每次都会多出新的内衣。[p]
是妈妈或者爸爸帮我换的吗？[p]
如果是爸爸做的，那就有点丢人了。[p]

[bg storage="monolog_03.jpg" time="800"]

即便如此，我一直对爸爸心存感激。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="700" wait="true"]

正因为这样，我……[p]
一直想着想为爸爸做点什么来报答他。[p]
作为感谢他总是为我做美味的饭菜、对我那么温柔的回报。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

我问爸爸：「有没有什么是我可以帮忙的？」……然后[p]

[chara_show  name="父" top="70" time=500]

爸爸说「这是只有望才能做到的事情」，并向我提出了一个请求。[p]

[chara_hide_all time=500 wait=false]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]
[bg storage="nozomi_super.jpg" time="1500"]

他说让我去家附近的「超市」，把棕色瓶子带回来……这是他的请求。[p]
他说什么「威士忌」啊，「酒」啊之类的……到底是什么呢？[p]
还叮嘱我，就算店里的人说什么，也不要透露和爸爸有关的事。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]
[wait time="800"]
[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

当我回到家时，看到爸爸有点紧张兮兮的样子……不过后来他非常夸奖了我。[p]
那让我真的很开心。[p]

[mask time=" 700" graphic="kuro.jpg"]
[wait time="1000"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="700" wait="true"]

从那以后，每天都在为爸爸跑腿，把「酒」带回家。[p]

[bg storage="nozomi_super.jpg" time="800"]

不过，有一次店里的人对我说了句「不可以擅自拿走哦」……[p]
所以，从那以后，我就尽量不被店里的人发现，偷偷把「酒」带走。[p]
偶尔也会带回「罐啤酒」之类的东西。[p]

[bg storage="nozomi_heya04.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

每次带回去，爸爸都会夸奖我，有时候还会给我零食或者巧克力。[p]
因为奖励让我很开心，所以我更加卖力地带回更多的「酒」。[p]
爸爸很喜欢这种叫「酒」的饮料，喝完后经常直接倒在地上睡着了。[p]
他说是醉了。[p]
醉是啥意思呢？是会犯困吗？[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[wait time="2000"]
[chara_hide_all time=0 wait=false]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="700" wait="true"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

又是某一天，我在离家稍远的地方发现了一只猫咪正在睡觉。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

它的毛有点乱，看起来不是很有精神的样子。[p]
于是，我从「超市」拿来了猫咪的食物，喂给它吃。[p]
刚开始它总是立刻跑掉，但每天坚持喂，猫咪渐渐开始对我撒娇了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_sukima.jpg" time="0"]
[mask_off time="700" wait="true"]

后来它熟悉了，还会用身体蹭我的腿呢。[p]
不过关于猫咪的事情，还有给爸爸带「酒」回家的事，我都没有告诉妈妈。[p]
总觉得可能会被骂吧。[p]
不过，这种偷偷摸摸的时光还挺有意思的。[p]

[bg storage="monolog_03.jpg" time="800"]

而且……总是出现在同一个地方的小猫，我觉得有点像我自己。[p]
好像是在那只看起来无处可去的小猫身上，看到了自己的影子。[p]
所以，就更加喜欢上了那只小猫。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

白天照顾小猫，晚上和爸爸一起吃饭。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

妈妈一般等到我快睡觉的时候才回来，我们会聊一会儿，有时候还会一起睡。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="500"]

但是……这样的日子并没有持续太久。[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="1200"]

某天早上，听到外面爸爸闹得很大声，我跑出去一看……[p]
发现家墙上被画满了乱七八糟的涂鸦。[p]

[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

『犯罪者』[p]
『诅咒之屋』[p]
『小偷』[p]
『惯犯』[p]
『去死吧』[p]
『还钱』[p]

[bg storage="nozomi_kako_apart_yuu.jpg" time="800"]

我不知道是什么意思……[p]
但因为爸爸很着急，我知道上面写的不是好话。[p]
爸爸说是附近小孩的恶作剧，很快就把它擦掉了……[p]

[bg storage="monolog_01.jpg" time="800"]

从那以后，爸爸的态度变了。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

说话变得粗暴，和妈妈半夜吵架的次数也多了。[p]
我假装睡着，心里想着希望他们能和好。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

第二天。[p]
因为想让爸爸振作起来……我问他要不要再拿点「酒」给他？[r]
[p]

[chara_show  name="父" top="70" time=500]

结果爸爸用可怕的表情瞪着我。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

他的脸色很吓人，我差点就哭出来了。[p]
我马上意识到自己做错了事。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

爸爸抬起了手臂，我下意识地用双手护住头。[p]
因为我以为他会像妈妈那样，一气之下打我的头。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

……但爸爸并没有打我的脸。[p]
取而代之的是……[p]

[bg storage="nozomi_heya01.jpg" time="800"]
[chara_show  name="父" top="70" time=500]

[mob_window]
#父
脸上不能留下痕迹……真是的，要是你能再干得漂亮点，我也不会落到这步田地！[r]
[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya05.jpg" time="800"]

[default_window]
#

_　[r]
_　[cm]

……那是第一次，他叫我「你」。[p]
明明平时都会叫我「望」的。[p]
「这步田地」是什么意思？[p]
我完全不明白，问了他也不告诉我。[p]
对不起。对不起。对不起。[p]
虽然不知道原因，但因为不想被讨厌……只能不停地道歉。[p]

[fadeoutbgm]
[bg storage="nozomi_kako_apart_yuu2.jpg" time="800"]

……那个涂鸦到底是什么意思呢。[p]

[bg storage="kuro.jpg" time="800"]

不过，随着时间流逝……[p]
关于涂鸦的事也渐渐淡忘了……。[p]

[mask time=" 2000" graphic="kuro.jpg"]
[bg storage="nozomi_aozora.jpg" time="0"]
[mask_off time="1000" wait="true"]
[wait time="800"]
[bg storage="CG22/CG22_2.jpg" time="800"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

然后过了7年……我已经17岁了。[p]
虽然说17岁，但再过两天我就满18岁了。[p]
小时候总觉得，17岁应该算是踏入大人行列的年纪了吧。[p]
可是……一直以来，我都小心翼翼看着妈妈和爸爸的脸色过日子。[p]
一个人的时候，不是画画就是看电视，或者照顾流浪猫咪。[p]
电视里的世界对我来说就是魅力的化身。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshimaeki02_2.jpg" time="0"]
[mask_off time="300" wait="true"]

有趣的交通工具啊……[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima01_2.jpg" time="0"]
[mask_off time="300" wait="true"]

看起来很好吃的食物，还有热闹的街道。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima07_2.jpg" time="0"]
[mask_off time="300" wait="true"]

特别想去的地方是一个叫卯之岛的旅游景点。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="unoshima09_2.jpg" time="0"]
[mask_off time="300" wait="true"]

岛上有一座小山丘，从那里可以看到天空和大海融为一体的一片湛蓝世界。[p]
光是在电视里看到这样的景色就让我心跳加速了。[p]

[bg storage="CG22/CG22_2.jpg" time="800"]

希望有一天，我也能去看看这样的风景。[p]
还有，偶尔也会看妈妈喜欢并录下来的爱情电视剧。[p]

[bg storage="monolog_01.jpg" time="800"]

爱情。[p]
对我来说是个无缘的词……自己和男人接吻什么的，根本无法想象。[r]
[p]
但看电视剧的时候，总会不自觉地想起爸爸和妈妈。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

现在的爸爸和妈妈……自从那次涂鸦事件后，看起来并不怎么幸福。[r]
[p]
总是忍不住把电视剧里的幸福和现实做比较。[p]

希望有一天，我也能和某个很棒的人，谈一场幸福的恋爱……就好了。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

正想着这些事，走到更衣室准备开洗衣机时，却发现放着一个陌生的东西。[p]
是一只小手电筒。[p]
而且它被夹在架子上堆放的毛巾之间，好像是故意藏起来的。[p]
以前有这种东西吗……？[p]
这样想着，我拿起手电筒时，感到一丝违和感。[p]
……和我们家以前用的不一样。[p]
而且仔细一看，根本没有任何能发光的开关。[p]
最引人注意的是侧面装着一个小屏幕。[p]

[bg storage="nozomi_yokushitsu2.jpg" time="800"]
[playbgm storage="06_hansinhangi.mp3" volume="40"]

屏幕上显示着我面前的浴室。[p]
或者说……是手电筒指向的方向被显示出来了。[p]
也就是说，这个是……摄像机？[p]
是爸爸或者妈妈放的吗？[p]
可是，为什么会放在这种地方……[p]
简直就像是……有人在偷拍一样……。[p]
……不对，我一直都在家，如果有人进来做这种事，我肯定会马上发现的。[p]
大概是爸爸妈妈的私人物品，不小心落在这里了吧。[p]
放在这里的话可能会因为湿气坏掉，还是收进壁橱里吧。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[mask_off time="1000" wait="true"]

那天晚上。[p]

[bg storage="nozomi_heya04.jpg" time="800"]

爸爸回到家后，慌慌张张地在找什么东西。[p]
平时这个时候应该开始准备晚饭了才对。[p]
正这么想着，爸爸问了我一句话。[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
手电筒，是不是望收起来放到什么地方了？[p]

[default_window]
#
原来是爸爸的啊。[p]

[chara_hide_all time=500 wait=true]

告诉他我把它收进壁橱里后，他立刻急匆匆地去拿了。[p]
没被骂真是太好了，不过……[p]

[bg storage="nozomi_heya05.jpg" time="800"]

『却忍不住又想起了那种像是有人在偷拍的感觉。』[p]
一瞬间，那件事又浮现在脑海中。[p]
如果爸爸是在偷拍我或者妈妈的……裸体的话……[p]
不，不要再想了。[p]
爸爸从以前开始就会做饭给我们吃，害怕的时候也会陪我一起睡觉。[p]
温柔的爸爸，不可能做出那种事情的。[p]
虽然这么想，但我还是想弄清楚爸爸真的没有做那种事。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="nozomi_heya01.jpg" time="0"]
[mask_off time="700" wait="true"]

第二天中午。[p]
趁着没人时，我偷偷翻了爸爸的书桌。[p]
虽然很多年前就被告知里面有重要的东西，不可以随便打开……[p]
想着如果擅自打开会被骂，最近都没再动过那个念头。[p]
所以，为了不被发现，不留下痕迹……[p]
我一个个抽屉依次打开。[p]
里面塞满了文件、小物件和文具，乱七八糟的。[p]
然后，当我打开最底下那个抽屉时……忍不住叫出了声。[p]

[bg storage="monolog_01.jpg" time="800"]

在那里放着的是……[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[wait time=500]
[bg storage="nozomi_heya11.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

被整齐叠好装进拉链袋里的，我的……内裤。[p]
而且那条内裤，正是我一周前洗澡时脱下后以为丢失的那条。[p]
……说起来更早以前，也有过脱下的内衣不见了的情况。[p]

;;;よどんだようなエフェクト
[bg storage="effect_04.jpg" time="800"]

一种难以形容、令人恶心的不适感涌上心头。[p]

[bg storage="kuro.jpg" time="800"]

但是，如果，爸爸真的……对我的……[p]
如果他不仅偷了内衣，还偷拍了的话……[p]
……是为了什么？[p]
是为了……自己享乐吗？[p]

[bg storage="nozomi_heya01.jpg" time="800"]

这个答案很快就明白了。[p]
和内衣放在一起的抽屉里还有一个信封……上面写着收件地址。[p]
那个信封是网络跳蚤市场服务用的。[p]
电视上说，现在通过这种方式卖东西赚钱很流行。[p]
而且当我看信封里的内容时，发现之前我用过的另一件内衣也在里面。[p]

[bg storage="effect_04.jpg" time="800"]

也就是说，爸爸他……[p]
把我用过的内衣拿去网上卖掉……可能还有偷拍的视频，也被卖到某个地方？[p]
虽然还没有证据，而且这种东西居然能卖出去，真是又脏又荒唐。[p]
但是……我确实在新闻上看到过做类似事情被抓的人。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="300"]
[playse buf="3"  storage="Door_open_short.mp3" volume="30"]

就在想到这里的一瞬间。[p]
听到了玄关传来开门的声音。[p]

[playse buf="3"  storage="run_in_house.mp3" volume="40"]
[bg storage="nozomi_heya01.jpg" time="1000"]

回来的，是爸爸。[p]
明明这个时间应该在工作中的……[p]

[bg storage="monolog_01.jpg" time="300"]

……原因很快就明白了。[p]
因为桌子的抽屉一直是上锁的。[p]
他是害怕抽屉被打开，所以趁午休赶回来的。[p]

[bg storage="nozomi_heya01.jpg" time="300"]

但是，已经太晚了。[p]

[chara_show  name="父" top="70" time=500]

看到站在那里一动不动的我，爸爸露出了震惊的表情。[p]
然后表情一点点变得愤怒起来……[p]

[quake count=3 time=200 hmax=20 vmax=20]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[wait time=100]

他像推开障碍物一样，把站在桌前的我推到一边。[p]
我重重地摔倒在地，他却连看都不看一眼……[p]

[chara_hide_all time=500 wait=true]

爸爸锁上了桌子的抽屉，装作什么也没发生过一样准备离开。[p]
我对着他的背影问道。[p]

[playbgm storage="naraku.mp3" volume="30"]
[bg storage="monolog_01.jpg" time="300"]

──喂，爸爸，抽屉里的东西……到底是怎么回事？[p]

[bg storage="nozomi_heya01.jpg" time="300"]
[chara_show  name="父" top="70" time=500]

他猛地停下脚步，回头时脸上依旧带着怒意。[p]

[mob_window]
#父
望。这些年一直以来，谢谢你啊。[p]

[default_window]
#
明明还在生气……却带着笑容说出了感谢的话。[p]
完全搞不懂爸爸在想什么……脑子都快要炸了。[p]

[mob_window]
#父
咱家穷啊，所以我把望用过的内衣和录像数据拿去卖了。穷人嘛，只能靠这种办法赚钱。[r]
[p]

#父
瞒着望是我不对。我以后不会再这么做了。我也知道这是不好的事，我会反省的。等会儿我也会告诉你妈妈的。[r]
[p]

[default_window]
#
_　[r]
_　[cm]

他只是随便堆砌了一些话，根本打动不了我。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]

因为爸爸根本没有道歉的意思啊。[p]
虽然知道这么说肯定会惹他生气……[p]
但心里的郁结让我难受得不行，我还是追问了下去。[p]
我忍不住追问了下去。[p]

[bg storage="nozomi_heya01.jpg" time="500"]
[chara_show  name="父" top="70" time=500]

[nozomi_window]
#望
那就是说……我一直被爸爸当成赚钱的工具利用吗？[p]

[default_window]
#
我这么一说，爸爸顿时火冒三丈。[p]

[mob_window]
#父
那当然了！内衣也好，录像也好，全都被高价买走了，这九年都是这样！[p]

#父
以前让你从超市偷酒也是一样的……啊，对了，我好像没跟你说过，擅自拿走店里的东西可是犯罪啊！[r]
[p]

#父
后来这事被发现了，家里的墙上才被人乱涂乱画，那是店主发泄不满吧……[p]

#父
虽然跟美希解释说是小孩子恶作剧，但要不是你被发现了，就不会有那些乱涂乱画！[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

──犯罪？[p]
犯罪，不就是因为会被警察抓才不能做的事吗？[p]
爸爸竟然让我做这些？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="nozomi_heya06.jpg" time="0"]
[kanim layer=base keyframe="shake" time="2000" count="infinite"]
[mask_off time="300" wait="true"]

仿佛心脏被刺穿了一样的冲击感袭来。[p]
原本坚信的现实开始动摇……变得一团糟，扭曲不堪。[p]
而且，我明明一直都是为了爸爸才做这些的……[p]
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
只是想要……报答爸爸而已！[p]

[chara_show  name="父" top="70" time=500]

[mob_window]
#父
你知道我为什么一直做这种事吗？其实并不是为了钱。其实是……[r]
[p]

#父
是因为……我想要去爱你。对我来说，只要有好处……我就觉得自己能好好地去爱你。[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya06.jpg" time="1000"]

啊────[p]
我在不知不觉中犯下了罪。[p]
而且这还不止……[p]
父亲在网络上出售我的内衣和视频。[p]
最重要的是……继父竟然用那种眼光看待我。[p]

[bg storage="monolog_01.jpg" time="500"]

罪恶感和那种被注视的恶心感让我无法忍受，双膝跪地。[p]
就在这种情况下，这个人说过的话在我的脑海中不断回响。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

『我想要去爱你』。[p]

[bg storage="monolog_01.jpg" time="500"]
[fadeoutbgm]

他的行为和这句话实在是相差太远了……[p]
我根本无法理解。[p]
还有……自己犯下的罪，这个人对我做的事，以及过去的回忆，还有那份仍然想要相信的心情。[r]
[p]
各种各样的事情，在脑海中不停地搅拌混杂……[p]
已经，什么都，不想再去思考了。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

然后，不知道过了多久时间。[p]
什么都想不出来，只是呆呆地发愣……[p]

[bg storage="nozomi_aozora.jpg" time="800"]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

突然很想见小猫，于是趁着天还亮着就出门了。[p]
大概是想寻求帮助吧。[p]
这七年来，几乎每天都会见到它。[p]
前些天，它看到我还会跑过来蹭蹭呢。[p]

[bg storage="nozomi_kako_apart_hiru.jpg" time="800"]

但最近因为讨好父母，一直没机会见到它……[p]
差不多有一个月没看到它的身影了。[p]

[bg storage="nozomi_sukima.jpg" time="800"]

去看的时候，小猫正躺在它常待的地方睡觉。[p]
晒着太阳，看起来很舒服的样子。[p]
我松了口气，伸手轻轻抚摸它的身体。[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

────可是，它没有任何反应。[p]
而且，身体冷得让我难以置信。[p]
平时只要把手指放到它头旁边，它总会主动蹭过来的，可是……[p]
现在……完全没有动静。[p]

[bg storage="nozomi_sukima.jpg" time="500"]

我以为是不是身体不舒服，就把小猫抱了起来。[p]
然后，发现右脚有很严重的伤……[p]
才明白是受了伤动不了。[p]

[bg storage="nozomi_sukima2.jpg" time="500"]

但就在那一瞬间，从猫咪的肚子附近，突然涌出了大量的蛆虫。[p]

[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

全身起了鸡皮疙瘩，反射性地把猫咪扔了出去。[p]

[bg storage="nozomi_sukima3.jpg" time="800"]

被扔出去的冲击，让猫咪的身体仰面朝天……[p]

[nolog]
蠕动的蛆虫不仅在身体上，还无情地吞噬着猫咪的眼球，可以看到眼窝深处也在蠕动。[r]
[p]
[endnolog]

[pushlog text="蠕动的蛆虫不仅在身体上，还无情地吞噬着猫咪的眼球，可以看到眼窝深处也在蠕动。"]

[bg storage="effect_02.jpg" time="800"]

自从看到那一幕后，再也无法直视。[p]
午饭吃下去的东西急速涌上来，忍不住当场呕吐。[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

拼命呕吐时，泪水止不住地流下来。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="08Voices_orgel_slow2.mp3" volume="40"]

为什么，为什么，为什么，为什么，为什么。[p]
为什么……我必须遭遇这样的事────？[p]

[bg storage="nozomi_sukima2.jpg" time="800"]

曾经把自己重叠在一起的小猫……在眼前变得如此凄惨。[p]
对此────感到恶心。[p]

[bg storage="kuro.jpg" time="800"]

啊……[p]
我真是糟透了。[p]
被那个人利用了。[p]
犯下了罪。[p]

[bg storage="nozomi_sukima4.jpg" time="800"]

明明一直忍着不哭，可是一吐出来，眼泪就像决堤了一样涌了出来。[r]
[p]
各种事情交织在一起，情绪一团糟，已经无法控制了。[p]
全部、全部，都想吐出来。[p]
每次这么想，恶心感就涌上来。[p]
胃液都吐光了，明明已经什么都吐不出来了，可还是在干呕，想要把什么东西吐出来。[p]
把那些恶心的东西都吐出来……要是能像什么都没发生过一样轻松就好了……[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="800"]

……但是……对啊。[p]

[bg storage="monolog_03.jpg" time="800"]

我还有……妈妈在。[p]
妈妈现在偶尔还是会让我害怕，也会打我……[p]
即便如此，她一定还是站在我这边的……。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[wait time="1000"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="1500" wait="true"]

这十年来，妈妈工作一直很忙，总是半夜才回家。[p]
即使爸爸变了样，妈妈也一直为了家努力工作着。[p]
我一直都很尊敬这样的妈妈。[p]

[bg storage="nozomi_heya07.jpg" time="800"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]

那天晚上，我和妈妈两个人单独聊了很久。[p]
聊的当然是关于那个人的事情。[p]
我把他对我做过的事，全都、全都告诉了妈妈。[p]
虽然觉得要是说他坏话会被骂，很害怕……[p]
但妈妈静静地听着我的讲述。[p]
等我说完以后，妈妈……温柔地抱住了我。[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
之前没能察觉到真的对不起。那个人竟然趁我不在家的时候做出这种事……真是人渣！[r]
[p]

#母
望，妈妈会保护你的……不用再害怕了，一切都会好起来的。[p]

[default_window]
#
她抱着我，用温柔的声音一遍又一遍地说着这些话。[p]

[chara_hide_all time=500 wait=false]
[bg storage="nozomi_heya03.jpg" time="800"]

那天晚上，我时隔七年再次和妈妈睡在了一张床上。[p]
久违的妈妈的气息。[p]
虽然有过痛苦，有过悲伤……[p]
但只要有妈妈在，我就觉得没问题了。[p]

[bg storage="kuro.jpg" time="800"]

不过，没想到的是……[p]
听了我的话，妈妈并没有特别惊讶，而且还直接认定了爸爸是坏人。[r]
[p]
我虽然想要相信爸爸，但却怎么也无法相信，内心特别痛苦……[p]
可是妈妈……她难道就不想去相信爸爸吗……。[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[wait time="2000"]
[bg storage="nozomi_kako_apart_hiru.jpg" time="0"]
[mask_off time="1000" wait="true"]

第二天。[p]

[bg storage="nozomi_heya01.jpg" time="800"]

像往常一样，爸爸和妈妈因为工作都不在家……[p]
我开始翻找妈妈的私人物品。[p]
虽然妈妈总是因为「工作」很晚才回来，但我并不知道她到底在做什么工作。[p]

[bg storage="monolog_01.jpg" time="800"]
[playbgm storage="05_kaikoroku.mp3" volume="40"]

仔细一想，我其实对妈妈的事情了解得很少。[p]
以往因为怕熬夜聊天不好，所以从来没有认真聊过天。[p]
这样翻找她的东西感觉像是在作弊一样，但我就是忍不住想知道。[p]
而且最重要的是，妈妈的存在是我唯一的救赎……。[p]
是我的救赎……也希望她真的能成为我的救赎。[p]

[bg storage="nozomi_heya05.jpg" time="800"]

我打开了书桌的抽屉，看了一眼里面的东西。[p]
那里有一本手账本。[p]
这本手账本……应该是妈妈半夜偶尔会写的日记吧。[p]
我不知道妈妈在我不知情的情况下过着怎样的每一天。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo.jpg" time="800"]

想着答案可能写在这里，我翻开了那本手账本。[p]

[bg storage="kuro.jpg" time="500"]
[stopbgm]

然而刚翻开没多久，我就看到了无法相信的一句话……[p]

[playse buf="3"  storage="BookDrop.mp3" volume="80"]

我忍不住把手账本掉在了地上。[p]
那是写于仅仅两周前的记录。[p]
上面写着的是……[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo1_noranekowo.jpg" time="800"]

──『用陷阱杀死了流浪猫』[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不可能。[p]
不可能，不可能，不可能，不可能，不可能！[p]
一定是我看错了。[p]
可是不管怎么回头再看，写的都是同样的句子。[p]
而在那句下面……还接着写道。[p]

[bg storage="memo2_kaitaitoka.jpg" time="800"]
[playbgm storage="naraku.mp3" volume="30"]

──『能在望说想养流浪猫之前处理掉真是太好了』[p]

[bg storage="memo3_atarasiistress.jpg" time="800"]

──『虽然是第一次，但意外地很顺利，感觉发现了一种新的解压方式』[p]

[bg storage="memo4_noranekonositai.jpg" time="800"]

──『尸体就放着吧，总会有人发现吧？希望政府的人能来处理掉就好了』[p]

[bg storage="memo5_baremasenn.jpg" time="800"]

──『希望望不会发现我杀了流浪猫』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="800"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

握着手账本的手在颤抖，寒意止不住地涌上来。[p]
这真的是……妈妈写的吗？[p]
其实是有人调换了手账本，而我只是碰巧读到一个陌生人的文字──[p]
虽然想这么相信，但因为手账里多次出现我的名字……[p]
让我不得不觉得，这就是无法逃避的真相。[p]
妈妈……[p]
为什么？[p]
完全无法理解。[p]
妈妈。[p]
为什么？[p]
到底……[p]
在想些什么？[p]
那个每天为了家拼命努力、让我敬佩的妈妈。[p]

[bg storage="effect_02.jpg" time="800"]

她的形象，正在轰然崩塌。[p]

[bg storage="kuro.jpg" time="800"]

昨天明明还温柔地抱着我，一遍又一遍地说没事的……[p]
完全无法理解。[p]
虽然读懂了文字的意思，但大脑却拒绝去接受。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

颤抖着手翻看过去的日记。[p]
手账的开头部分，正好是10年前的日期──[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo6_manbikisaseteru.jpg" time="800"]

──『老公好像让望去偷东西』[p]
──『虽然还没证据，但摄像头拍到望带着酒回来了』[p]

[bg storage="memo7_oyogaseteoku.jpg" time="800"]

──『本想阻止……但还是决定先放任一下』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="effect_04.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈……原来你知道偷东西的事吗……？[p]
为什么不阻止我？为什么不告诉我？[p]
为什么……明明知道，却一直保持沉默？[p]

[bg storage="kuro.jpg" time="500"]

不明白。[p]
真的不明白。[p]
我完全搞不懂妈妈了。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻看其他的页面。[p]
这次是9年前的日记。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]
[bg storage="memo8_musumenositagi.jpg" time="800"]

──『看到老公在卖女儿的内衣。恶心死了！』[p]

[bg storage="memo9_sauganiyougo.jpg" time="800"]

──『实在是无法辩护。不过，如果他把卖的钱给我，那就另当别论了』[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

──『这次也放任不管。证据越来越多了。对我来说倒是挺好的』[p]

[mask time=" 300" graphic="kuro.jpg"]
[wait time="500"]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="300" wait="true"]

妈妈她──[p]
爸爸做的那些事，全都、全都知道。[p]
可是……她什么都没对爸爸说，就这么放任不管了。[p]
为什么……为什么不来救我呢？[p]

[bg storage="memo10_zairyouga.jpg" time="800"]

『挺好的』是什么意思？[p]

[bg storage="nozomi_heya05.jpg" time="800"]

已经没心情再读下去了，把日记放回了原来的地方。[p]
放回去的时候，在抽屉最深处发现了一本存折。[p]
这是用来管理家计的东西。[p]

[bg storage="CG12/CG12_2.jpg" time="800"]

打开一看……[p]

[bg storage="CG12/CG12.jpg" time="800"]

竟然，存了巨额的存款。[p]
而且……从15年前就开始了。[p]
15年前的话，那时我才2岁。[p]
而且，存折上写着汇款来源的名字，是前一个爸爸的名字。[p]

[playse buf="3"  storage="Notebook.mp3" volume="50"]

翻到下一页，甚至还有更早之前那个爸爸的汇款记录。[p]
……是从离婚的那些爸爸那里拿的钱吗？[p]
如果是这样……那为什么我们一直过着这么贫穷的生活？[p]
到现在连生日蛋糕都买不起。[p]
从以前开始，妈妈对爸爸的事情一直放任不管。[p]
也没有来救过我。[p]
明明有钱，却一直过着贫穷的生活。[p]
为什么。为什么。为什么。[p]

[fadeoutbgm]
[bg storage="nozomi_heya05.jpg" time="800"]

不过……这种违和感的答案，到了晚上才知道了。[p]

[mask time="700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="nozomi_kako_apart_yoru.jpg" time="0"]
[wait time="1000"]
[mask_off time="700" wait="true"]
[chara_show  name="母" top="190" time=500]

晚上，跨过零点之后，妈妈回来了。[p]
虽然说是回来了……[p]
是被谁的车送回来的。[p]
送妈妈回来的是一个开着豪车、我不认识的男人。[p]
而且妈妈已经醉得连路都走不了。[p]
察觉到情况的爸爸走到外面大喊起来。[p]

[chara_show  name="父" top="70" time=500]
[playbgm storage="05_anyanotobari.mp3" volume="30"]

[mob_window]
#父
喂，美希，这些男人是怎么回事！[p]

[default_window]
#
然后爸爸和妈妈立刻争吵了起来。[p]
妈妈试图用话语掩饰，但最后像是放弃了一样，直接说道。[p]

[mob_window]
#母
啊，真是全都毁了！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="nozomi_kako_apart_yoru2.jpg" time="800"]
激烈的争吵最终甚至演变成了肢体冲突。[p]
那些陌生男人试图介入调停，但爸爸愤怒地大喊让他们赶紧离开。[p]

[bg storage="nozomi_kako_apart_yoru.jpg" time="800"]

车子离开后，妈妈和爸爸回到了房间，继续带着怒气争吵。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

我害怕极了他们两个……在卧室里瑟瑟发抖。[p]
隔着拉门能听到他们的对话……。[p]
爸爸质问刚才那些男人到底是什么人。[p]
妈妈则把昨晚跟我谈过的内容直接说了出来。[p]

[mob_window]
#母
我从望那里听说了，你竟然做出那种把望卖掉的事，还让她去偷东西……！简直不可理喻！我居然跟这种人结婚……！[r]
[p]

#父
美希，你以为你有资格批评我吗？你晚上回来的那么晚，原来是在跟那些男人鬼混！装作在工作，其实这么多年一直在外面玩得开心吧！！[p]

[default_window]
#
妈妈说得好像是『昨天才第一次听说』一样……[p]

[bg storage="kuro.jpg" time="800"]

可妈妈不是早就知道了吗？[p]
从很久、很久以前开始──。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

然后妈妈向爸爸提出了离婚。[p]
离婚……[p]
对我来说，这已经是第三次了……。[p]
妈妈和爸爸继续好好相处是不可能的，这几年他们关系的恶化早已说明了一切……。[r]
[p]
所以，我并没有觉得他们现在还能和好如初。[p]
无所谓了。[p]
但是。[p]
跟着爸爸一起生活，我不愿意。[p]
可即便如此，跟着妈妈一起生活也……。[p]

[mob_window]
#母
他对我的女儿做了那么过分的事，当然得赔偿金！我要他付赔偿金！！[p]

[default_window]
#
听到妈妈在提出离婚的同时这么说道。[p]
赔偿金。[p]
这是在电视里听过的词。[p]

[fadeoutbgm]
[bg storage="tuutyou.jpg" time="800"]

听到这个，我想起了存折的事。[p]
汇款来源是前一个爸爸的名字。而且，金额巨大。[p]

[wait time="500"]

就在那时，点与点终于连成了一条线。[p]

[bg storage="kuro.jpg" time="500"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

啊，原来如此。[p]
我一直被这些人利用了啊。[p]
妈妈……明知道我被爸爸利用，却一直没有阻止……[p]
因为那可以作为以后离婚时的条件……作为索要赔偿金的『证据』来利用。[p]
日记里写着『正合适』，一定就是这个意思吧……。[p]
爸爸从十年前开始，就一直让我拍摄我的偷录视频、卖我的内衣，还让我去偷东西。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

而妈妈则一再重复离婚这件事。[p]
或许，妈妈一开始就预料到了会发展成这样才再婚的……[p]
利用爸爸对我做的那些事情作为证据，妈妈推进了离婚……[p]
如果从『最初』开始……从我出生的时候开始……[p]
这一切，全都是被设计好的呢。[p]

[bg storage="kuro.jpg" time="500"]

不，不对──这一切都是被安排好的。[p]
我只是个被利用来赚钱的工具而已。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

但是…………………………[p]
为什么？[p]
我不明白。[p]
我不明白妈妈的想法。[p]

[wait time="500"]

爸爸……是个利用我的、无可救药的渣滓。[p]
他利用继父的身份，对我表现出温柔，获取我的信任，然后背地里背叛了我。[p]
每次回想起这些，恶心感就从胃里翻涌上来，让我忍不住干呕。[p]

[bg storage="kuro.jpg" time="500"]

但是。[p]

[bg storage="monolog_01.jpg" time="800"]

为什么……为什么连妈妈也……连妈妈也会这样……[p]
──『会做出这种事』这种想法，我怎么能轻易相信？[p]
我只是读了日记里的内容，并不是妈妈亲口告诉我的。[p]
在再婚之前，妈妈一直照顾着年幼的我。[p]
为了不让我孤单，妈妈拼命地为我寻找新的爸爸。[p]
妈妈不可能做出那种事。[p]

[bg storage="monolog_03.jpg" time="800"]

因为，妈妈是我的妈妈——[p]
妈妈是会珍惜孩子、爱孩子的。[p]
本来就是这样的吧？[p]
毕竟，她是妈妈啊。[p]
我想相信。[p]
不[p]

[bg storage="nozomi_sukima3.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我相信。[p]

[bg storage="memo5_baremasenn.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我要相信。[p]

[bg storage="memo8_musumenositagi.jpg" time="300"]
[bg storage="monolog_03.jpg" time="700"]

我要相信。我要相信。我要相信。[p]
……要相信。要相信。我一定要相信。[p]

[bg storage="nozomi_heya03.jpg" time="800"]

嗯。[p]
我，相信妈妈。[p]
想着妈妈的同时，我也想起了一件事。[p]

[fadeoutbgm]
[bg storage="kuro.jpg" time="1200"]
[wait time="500"]

……今天，是我18岁的生日啊。[p]

[mask time="1000" graphic="kuro.jpg"]
[bg storage="nozomi_heya03.jpg" time="0"]
[wait time="2000"]
[mask_off time="1000" wait="true"]

凌晨4点。[p]

[nozomi_window]
#望
……呜、呜呜……唔、呜呜呜……呜……[p]

[default_window]
#
明明相信着的。[p]
明明相信着的。[p]
眼泪却止不住地流下来。[p]
刚才妈妈和爸爸还一直在激烈争吵……终于安静下来了。[p]
已经不想再去听他们到底在说什么了。[p]
所以我捂住耳朵……缩进被子里……[p]
可眼泪还是止不住地涌出来。[p]

[bg storage="kuro.jpg" time="500"]
[playse buf="3"  storage="gisi.mp3" volume="20"]

胸口一片喧闹。[p]
那些一直堆积起来的温馨记忆，全都像是化作了痛苦和煎熬，不断在心里回响。[p]
不要。[p]
不要。不想。不想这样。[p]
快睡吧。[p]
睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，睡吧，[p]
睡吧……。[p]

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

房间的灯突然亮了起来……[p]
[playse buf="3"  storage="huton.mp3" volume="30"]
[wait time="1000"]

盖着的被子被毫不留情地掀开了。[p]
肿着眼泪向上看去的时候……[p]

[chara_show  name="母" top="190" time=500]

[mob_window]
#母
……哭什么呢？[p]

[default_window]
#
母亲俯视着我，脸上露出我从未见过的可怕表情。[p]
那表情就像……在看什么丑陋的东西，又或者是带着无法原谅的怒火对准我一样……。[p]

[mob_window]
#母
想哭的人是我才对啊！明明再稍微努力一下就能一切顺利了……！[p]


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
本来可以和你爸一起把你丢掉，用赔偿金重新找个帅哥开始新生活的！！[p]

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
如果没有你……！！！[p]

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

在妈妈的喊叫声之后……[p]
有什么东西飞了过来。[p]

[nozomi_window]
#望
──────[p]

#
[default_window]
[mask time="300" graphic="kuro.jpg"]
[wait time="600"]
[bg storage="CG13/CG13.jpg" time="0"]
[mask_off time="300" wait="true"]

飞过来的东西——插在我身旁几厘米远的榻榻米上的，是一把刀。[p]
刀刚刚从我的身旁掠过。[p]
看到那一幕后，我才意识到刀刃擦过了我的脸颊。[p]
从脸颊上——从那几乎看不见的裂口——渗出了血，缓缓滴落下来。[p]

[clearfix name="role_button"]
;;;@layopt layer=message0 visible=false
;;;@layopt layer=message1 visible=false

[bg storage="kuro.jpg" time="300"]

; メッセージウィンドウの設定 - 一時的に変更

[position layer="message0" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../bgimage/CG13/CG13_2.jpg" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="1080" top="0" left="0" opacity="&mp.frame_opacity" page="fore"]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[font color="red"]

妈妈妈妈想要杀死我妈妈想要杀死我因为那把刀不对妈妈不会做出这种事但是[r]
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
如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你，如果没有你────────[r]
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

那句话和那把刀被投掷的意义，我后来才明白。[p]
[wait time="300"]
我终于理解了。[p]

[bg storage="CG13/CG13_2.jpg" time="500"]

十八年来，从来没有人真正爱过我。[p]
[wait time="300"]
我是个[p]

[bg storage="kuro.jpg" time="500"]

多余的孩子。[p]

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

听到声音，爸爸跑了过来。[p]
[wait time="300"]
看到我，他愣住了。[p]
[wait time="300"]
好像立刻明白了该做什么一样[p]
[wait time="300"]
把低着头的我抱了过去。[p]
[wait time="300"]

[mob_window]
#父
望……！！你很痛苦吧，我也恨你妈，甚至希望她去死。所以我是站在你这边的，怎么样，嗯？[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[wait time="300"]

他抱紧我，试图让我安心。[p]
[wait time="300"]
这是这个废物惯用的伎俩。[p]
[wait time="300"]
反正，在让我安心之后又会利用我。[p]
[wait time="300"]
他喋喋不休地说着，想让我站在他那边。[p]
[wait time="300"]
啊──────[p]
[wait time="300"]
好吵。[p]
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

安静下来了。[p]
[wait time="300"]
接下来我也──[p]
[wait time="300"]
把沾满鲜血的刀子按在自己的脖子上……[p]
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
至少最后一次做点『普通女孩子该做的事』。[p]
即使是假装的也无所谓。[p]
反正父母再也无法利用我了。[p]
和某个人一起吃好吃的东西、开开心心地玩耍、像恋人一样相处，这样的……[p]

[fadeoutbgm]
[bg storage="nozomi_heya04_3.jpg" time="800"]

那样『普通女孩子的普通』………………[p]

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
