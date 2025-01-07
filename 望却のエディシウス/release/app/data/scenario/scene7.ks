
;;; ループ②

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_07_{number}.mp3" number="1"]
[voconfig sebuf="2" name="站务员" vostorage="mob_otoko/ekiin_07_{number}.mp3" number="1"]
[vostart]

[mask time=" 300" graphic="shiro.jpg"]
[playbgm storage="summer_city5.mp3" volume="20"]
[bg storage="aozora3.jpg" time="0"]
[mask_off time="4000" wait="true" method="vanishIn"]

[wait time=1000]

;;; アクセサリー店前
[bg storage="unoshima02_zoom.jpg" time="1500"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

我战战兢兢地睁开眼睛——[p]
又是同样的地点，同样的时间。[p]

[bg storage="unoshima02_zoom_bokasi_2.jpg" time="200"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_zoom_bokasi.jpg" time="300"]

[saku_window]
#朔
呃、呜——————[p]

#
[default_window]

意识到这一点的瞬间，我感到体内的内容物逆流而上的不适感。[p]
相同的地方。[p]
相同的时间。[p]
连续不断的记忆。[p]
哪里是梦境，哪里又是现实————[p]
界限早已模糊不清，甚至无法确定现在是否真实存在……[p]

[bg storage="unoshima02_zoom_bokasi2.jpg" time="500"]
[saku_window]
#朔
……呃，呕……[p]

#
[default_window]
我不顾他人目光，将体内的东西吐了出来。[p]
从眼睛和鼻子深处……从每个孔洞都感受到一种强烈的压迫感，仿佛要将什么东西从体内挤出来。[p]
周围的游客虽然惊讶，但还是像对待瘟疫一样避开我走过。[p]
然而就在这时，有个人朝我跑了过来。[p]

[filter layer="0" blur="3"]
[chara_show  name="望1_ネックレス有" face="odoroki" top="50" width="1600" height="2259" time=500]
[nozomi_window]
#望
你、你没事吧？！先、先把这个喝了！[p]

[default_window]
#
模糊的视野中映出了望的身影。[p]
望递给我的是一瓶矿泉水。[p]
不顾嘴边还有污渍，我神志恍惚地喝了起来。[p]

[saku_window]
#朔
哈、哈啊、哈啊……呃……！[p]

[default_window]
#
被水冲下去的呕吐物又一次涌了上来，我拼命地想要忍住。[p]

[chara_mod  name="望1_ネックレス有" face="tuujou" cross=false time=500 wait=false]
[nozomi_window]
#望
这种时候吐出来会舒服一些哦？配合呼气，用力收紧腹部……[p]

[default_window]
#
按照她说的做，伴随着喝下的水，呕吐物再次被排出体外。[p]
然后我大口大口地喝完了剩下的水。[p]

[bg storage="unoshima02_zoom.jpg" time="800" wait=false]
[free_filter ]

多亏如此，胃酸的不适感和食道的异物感减轻了。[p]
醒来前感受到的头痛现在还在持续……[p]
但比起那个，现在更重要的是。[p]

[saku_window]
#朔
你刚才去哪儿了，望！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哪儿？我一直就在朔的身边啊……？你这么不想我离开吗？[p]

[saku_window]
#朔
…………[p]

[default_window]
#
问完后我才恍然大悟。[p]
我把那个白日梦中发生的事误以为是现实。[p]

[chara_mod  name="望2_ネックレス有" face="tuujou" cross=false time=500 wait=false]

望的反应，和买首饰时一模一样。[p]
果然……那只是我一个人做的梦吗。[p]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500 wait=false]

虽然有时会做一些逼真到把梦中内容误认为现实的梦……[p]
但刚才那个梦却有一种让人不由自主地相信是「现实」的质感。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
那个……如果你觉得没事了的话，能告诉我刚才发生了什么吗？[p]

[saku_window]
#朔
……好吧。我们找个能安静坐下的地方吧。[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

于是，我们决定去附近的咖啡厅。[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="unoshima06_2.jpg" time="0"]
[wait time=1000]
[mask_off time="1000" wait="true"]
[playbgm storage="01Voices.mp3" volume="40"]

到目前为止，我一直犹豫要不要把梦中的内容告诉望。[p]
因为担心如果望真的有自杀的想法的话。[p]
但是，从望的反应来看，梦中的望和现在眼前的望是不同的。[p]
我……决定向望坦白这些白日梦的内容。[p]
最重要的是……我已经无法独自承受这些了。[p]
事实上，一开始思考梦境和现实的界限，我就又开始感到恶心。[p]
如果不相信现在是现实的话，我就无法继续下去了。[p]
所以，我尽量不去思考……[p]

[bg storage="aozora2.jpg" time="800"]

把一切都告诉了她。[p]
从望约会的理由，到望杀害了父母……最后望自己也跳楼自杀的事。[r]
[p]

[bg storage="unoshima06_2.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500 wait=true]

[nozomi_window]
#望
嗯ー………………[p]

[default_window]
#
她沉默了一会儿……[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]
[nozomi_window]
#望
……朔是喜欢那种『循环类』的故事吗？[p]

[saku_window]
#朔
我可不是在讲自己喜欢的类型的故事啊！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
你得好好分清虚构和现实才行啊……[p]

[saku_window]
#朔
就算是梦也很难受啊。眼睁睁看着你死去[p]

[nozomi_window]
#望
这样啊……也是呢[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
原来朔是这样看我的啊。感觉有点奇怪[p]

[saku_window]
#朔
我想确认一下，望为什么要和我约会呢？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
啊。话说！我的名字……你怎么知道的？我是不是在哪里说漏嘴了？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

这是一段似曾相识的对话。[p]

[saku_window]
#朔
在我的梦里你也自称望，所以我想你应该是在哪里说过[p]

[default_window]
#
望原本自称渚。[p]
我还以为只是在梦里……看来肯定是在哪里说过了。[p]
不然就说不通了。[p]

[saku_window]
#朔
回到刚才的话题。你为什么要和我约会？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[fadeoutbgm]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哼哼。让现实中的我好好告诉你吧[p]

[saku_window]
#朔
好好，拜托了……[p]

#
[default_window]
[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]

[nozomi_window]
#望
直截了当地说！[p]

;;; ドアップ演出
#
[default_window]
[chara_hide_all time=100 wait=true]

[bg storage="unoshima06_2_bokasi.jpg" time="300" wait=false]
[chara_show  name="望1_ネックレス有" face="gyagu1" top="-160" width="2558" height="3541" time=250]
[layermode_movie name="intensive_line" video="intensive_line.mp4" opacity="200" mode="screen"]

[playse buf="3"  storage="Flash08.mp3" volume="50"]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
援交！！！！！[p]

;;; ドアップ戻し

#
[default_window]
[chara_hide_all time=100 wait=true]
[bg storage="unoshima06_2.jpg" time="300" wait=false]
[free_layermode name="intensive_line"]
[chara_show  name="望1_ネックレス有" face="gyagu1" top="20" width="1600" height="2259" time="250"]
[anim name="望1_ネックレス有" top="50" time=250]

[saku_window]
#朔
…………………………[p]

[playbgm storage="03yomoyamabanasi.mp3" volume="30"]

[saku_window]
#朔
………………………………………………………………………………[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu2" cross=false time=500 wait=false]

[nozomi_window]
#望
你干嘛露出那种目瞪口呆的表情啊！？[p]

[saku_window]
#朔
不是……太符合预想了。话说，你这样直接告诉我没问题吗？[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="wink" cross=false time=500 wait=false]

[nozomi_window]
#望
比起被奇怪地误会，这样还好一点吧[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
而且我们只是今天的关系而已[p]

[saku_window]
#朔
嗯，确实[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

聊着聊着，突然有了一种感觉。[p]
把望带回家做些什么的念头……已经消失了。[p]
毕竟刚做了一堆奇怪的梦。[p]
至于援交这个目的嘛……嗯。[p]
感觉就是「果然如此啊」。[p]
现在能安心的是望能够看得开。[p]
我们彼此都只是今天的关系。[p]
也就是说……之后不需要负任何责任。[p]
尽情享受之后分别，然后各自回到日常生活就好。[p]

[bg storage="unoshima06.jpg" time="800"]

带着这样的想法，我结清了咖啡厅的账单。[p]
当然全额由我来付。[p]

[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time="500"]
[nozomi_window]
#望
诶，这样可以吗？谢谢款待[p]

[saku_window]
#朔
本来就是这么打算的吧[p]

#
[default_window]
[chara_hide_all time=500 wait=false]

一边进行着这种客套的对话，我们离开了店铺。[p]
思绪慢慢恢复了冷静。[p]
然后我意识到了一件新的事情。[p]

[bg storage="monolog_01.jpg" time="800"]

望并没有经历过我在梦中看到的那些事。[p]

[bg storage="unoshima06.jpg" time="800"]

从她对被称呼为「望」这个名字的反应，我可以确定这一点。[p]

;;; 海辺へ移動
[fadeoutbgm]
[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="unoshima09.jpg" time="0"]
[wait time=1500]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="1000" wait="true"]

[wait time=500]
[bg storage="unoshima02.jpg" time="1000"]
[wait time=500]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="1000"]
[wait time=500]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

带着仿佛要重现梦境内容的心情，我度过了那天的约会。[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="umi02.jpg" time="0"]
[mask_off time="1000" wait="true"]
[playbgm  storage="07umi.mp3" volume="30"]

我们站在海边。[p]
在梦里我们玩得浑身湿透，但现在只是把脚浸在海水里。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG4/CG4_sage_1.jpg" time="800"]
[wait time=500]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]
[wait time=500]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[nozomi_window]
#望
好凉爽舒服啊——[p]

[default_window]
#
我们都脱掉鞋子，赤脚站在海水中。[p]
波浪一点点冲刷着脚下的沙子。[p]
在梦里，望开心地踢着海水玩耍，但现在她只是静静地感受着海水的凉意。[p]
明明说过这是约会的精髓。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="umi02.jpg" time="800"]
[fadeoutbgm]
[wait time=500]

[bg storage="umi02_yuu.jpg" time="800"]
[wait time=500]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

同时，夕阳的颜色逐渐变成了橙色和紫色交织的色彩。[p]
夜晚即将来临。[p]
望一边眺望着风景，一边轻声说道。[p]

#
[playbgm  storage="05Homecoming.mp3" volume="40"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]
[wait  time="500"]

[nozomi_window]
#望
真美啊。要是世界一直这么美就好了[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="yuuyake.jpg" time="800"]

我感觉以前也听过同样的话。[p]
望说这句话时在想些什么呢。[p]
……不。[p]
这与我无关。[p]
在这里我和望就要分开了，之后再也不会有交集。[p]
这样不是很好吗。[p]

[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
天快黑了，差不多该回去了吧[p]

[nozomi_window]
#望
……是啊[p]

#
[default_window]
[chara_hide_all time=500 wait=false]

我们擦干湿漉漉的脚，穿上鞋子走路。[p]

;;; 長い橋の上
[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima_michi02_yuu.jpg" time="0"]
[mask_off time="700" wait="true"]

[playbgm  storage="City_Ambi-Street02-1.mp3" volume="20"]

[saku_window]
#朔
那么[p]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
谢谢你[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="130" width="1100" height="1553" time=500]
[anim name="望1_ネックレス有" top="150" time=250]
[wait  time="300"]
[chara_hide_all time=500 wait=true]

与梦中不同，这是一个出乎意料的简单告别。[p]
我要回到原来的日常生活中去了。[p]
想起今天擅自请假没去上班的事。[p]
[fadeoutse buf="3"]

[bg storage="unoshimaeki01_yuu.jpg" time="800"]

这样就好。[p]
这样就好。[p]
想象会被说些什么，身体都吓得发抖，但我强迫自己接受。[p]

[bg storage="yuuyake.jpg" time="800"]

话说回来，望……她有回去的地方吗？[p]
不清楚，但这也不是我需要知道的事。[p]

[bg storage="unoshimaeki01_yuu.jpg" time="800"]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="350" width="760" height="1073" time=500]

突然回头一看，远处能看到望的背影。[p]
……我没必要知道。[p]
本来就是。[p]
这是不需要知道的事。[p]

[chara_hide_all time=500 wait=false]
[stopse buf="3"]

但是……[p]
但是？[p]
没什么但是。[p]
我只是……想要安心而已。[p]
通过确认她回去，让自己不用再为望担心。[p]
回过神来，我已经在追随望的背影了。[p]

[fadeoutbgm]

;;; 駅のホーム
[bg storage="yuuyake.jpg" time="1500"]

从卯之岛站坐几站电车，就有一个换乘其他线路快速列车的车站。[p]
我也跟着下车，像是在追赶下车的望。[p]
保持着不远不近的距离，小心不要在人群中跟丢她。[p]
出了一次检票口，然后移动到快速列车的站台。[p]

[playbgm storage="04_zankyou.mp3" volume="30"]
[bg storage="eki_02.jpg" time="800"]

虽然这不关我的事……但她有足够的交通费吗？[p]
嘛……如果回不去的话就前功尽弃了。[p]

[bg storage="eki_01.jpg" time="800"]
[playse buf="3" storage="rail_station.mp3" volume="20" loop=true]

为了不跟丢望，我一直跟到快速列车站台。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="densha_10.jpg" time="800"]

虽然我不会乘坐这条线路……不过，就说是不小心进了检票口好了。[p]
随便找个借口都行。[p]
这时，快速列车即将到站的广播响起。[p]
就在那时。[p]

[chara_show  name="駅員" top="100" time=500]

[mob_window]
#站务员
那个。有其他乘客报告说你在进行跟踪行为。能稍微谈谈吗？[r]
[p]

[saku_window]
#朔
…………[p]

[mob_window]
#站务员
喂！[p]

[saku_window]
#朔
啊，什么？[p]

[mob_window]
#站务员
我是说，有人报告你在进行跟踪行为。如果你真的在跟踪某人的话，那可是犯罪行为。能到那边详细谈谈吗？[p]

[saku_window]
#朔
等、等一下。我是跟踪狂？[p]

#
[fadeoutbgm]
[default_window]

……糟糕了。[p]
虽然有太多可疑之处，但绝不能承认……[p]
闹得太大的话，也可能会被望看到我的身影。[p]
更重要的是，我的未来可能就此毁掉……[p]

[mob_window]
#站务员
所以我说，有人这样举报了啊。喂，这里会有乘客经过。能到那边去吗？[p]

[default_window]
#
我的手臂终于被抓住了。[p]

[chara_hide_all time=500 wait=false]
[bg storage="densha_11.jpg" time="800"]
[playbgm storage="tinnitus3.mp3" volume="20"]

列车来了。[p]

[bg storage="densha_10_nozomi.jpg" time="800"]

望停在原地……等待着列车。[p]
[playse buf="1" storage="heartbeats_fast.mp3" volume="40" loop=true]

看到她的身影，我的心脏不禁猛跳起来。[p]

[bg storage="eki.jpg" time="500"]

就像是在客观地看着今早想要跳上电车的自己一样……一种焦躁感。[p]

[bg storage="densha_10_nozomi.jpg" time="500"]
[chara_show  name="駅員" top="100" time=500]

[mob_window]
#站务员
喂！[p]

#
[default_window]

[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="800"]

拉扯我手臂的力道变强了。[p]
被那股力道带得踉跄了一下，我瞬间把目光从望身上移开了。[p]

[bg storage="densha_10_nozomi.jpg" time="800"]

再次抬头的瞬间——[p]

[wait time=500]
[fadeoutse buf="1"]

[mask time=" 250" graphic="kuro.jpg"]
[bg storage="densha_10_nozomi2.jpg" time="0"]
[mask_off time="25" wait="true"]

[wait time=500]

[mask time=" 250" graphic="kuro.jpg"]
[bg storage="densha_10.jpg" time="0"]
[mask_off time="25" wait="true"]
[stopse buf="3"]
[stopse buf="1"]
[stopbgm]

望的身影——[p]

[wait time=800]

[mask time=" 250" graphic="kuro.jpg"]
[bg storage="densha_13.jpg" time="0"]
[mask_off time="250" wait="true"]

[wait time=500]

出现在快速列车的「正前方」。[p]

[nozomi_window]
[playse buf="1" storage="Train_attack.mp3" volume="50"]
#望
——[p]

#
[default_window]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[wait time=1000]
[bg storage="red.jpg" time="800" wait=false]
[playse buf="3"  storage="BoneBreak.mp3" volume="60"]
[wait time=2800]
[fadeoutse buf="3"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

跳到列车前方的望的身体——[p]
像失去力气的人偶一样被列车压得粉碎，随即掉落到轨道上……[p]
[wait time=1000]
望的身影，就此消失不见了。[p]

[stopse buf="3"]
[playse buf="3"  storage="Train_brake.mp3" volume="50"]
[bg storage="densha_14.jpg" time="2000"]
[wait time=1000]

[saku_window]
#朔
……这不可能吧[p]

#
[fadeoutse buf="3"]
[default_window]

刺耳的刹车声。[p]
——撕裂、碎裂、磨削的声音。[p]
[playse buf="3"  storage="Train_alarm.mp3" volume="50" loop=true]
紧接着，紧急停车的警报声响彻整个车站。[p]

[bg storage="red.jpg" time="800"]
[playbgm storage="tinnitus3.mp3" volume="20"]

[saku_window]
#朔
是梦吧……啊，对了，这也是……没错吧，因为这种事……[p]

[bg storage="kuro.jpg" time="200"]
[bg storage="red.jpg" time="300"]

[saku_window]
#朔
不可能发生的……为什么啊……[p]

[bg storage="kuro.jpg" time="200"]
[bg storage="red.jpg" time="300"]

[saku_window]
#朔
——呃，唔[p]

#
[default_window]
[fadeoutse buf="3"]
[wait time=800]

仿佛要裂开的头痛。[p]

[stopse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="red.jpg" time="0"]
[mask_off time="200" wait="true"]

心跳、呼吸、视线、感觉、重力。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako2.jpg" time="0"]
[mask_off time="200" wait="true"]

坠落——黑暗——自杀。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="densha_13.jpg" time="0"]
[mask_off time="200" wait="true"]

冲撞——黑暗——自杀。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_01.jpg" time="0"]
[mask_off time="200" wait="true"]

梦、梦、梦、梦、梦。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

这是梦。[p]
这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦————[p]

[bg storage="red.jpg" time="2000"]

即使闭上眼睛，视野中依然被红色覆盖。[p]
红色。[p]
鲜艳的红色。[p]
灼灼发光的，生命的颜色。[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[wait time=1500]
[mask_off time="200" wait="true"]
[stopbgm]

不知是第几次，梦醒的信号。[p]
不。[p]
梦并未醒来。[p]
一直，身处在无法醒来的梦中————。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[wait time=2500]

[skipstop]
[autostop]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="200" wait="true"]

;;; ループエフェクト
[bgmovie storage=loop3.mp4]
[wait time=1000]
[wait time=12000]
;ここのwaitは動画の秒数分

[stop_bgmovie]
[stopbgm]

[wait time=5000]


@jump storage="scene8.ks"
