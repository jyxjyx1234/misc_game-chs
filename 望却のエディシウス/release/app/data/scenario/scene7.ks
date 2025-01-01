
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

战战兢兢地睁开眼——[p]
又是同样的地方，同样的时间。[p]

[bg storage="unoshima02_zoom_bokasi_2.jpg" time="200"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_zoom_bokasi.jpg" time="300"]

[saku_window]
#朔
呜，呃——[p]

#
[default_window]

就在意识到这一瞬间，感到体内的东西开始逆流的不适感。[p]
同样的地方。[p]
同样的时间。[p]
不断延续下来的记忆。[p]
从哪里开始是梦，到哪里为止是梦——[p]
界限早已模糊不清，甚至无法确认现在是否真正是现实……[p]

[bg storage="unoshima02_zoom_bokasi2.jpg" time="500"]
[saku_window]
#朔
……呃，呕……[p]

#
[default_window]
不顾旁人的目光，把胃里的东西吐了出来。[p]
从眼睛、鼻腔深处……身体的每个孔洞都像要将什么东西强行推出体外般的强烈压迫感。[p]
周围的游客既惊讶又小心翼翼地绕开走了过去。[p]
但就在这时，有一个人跑了过来。[p]

[filter layer="0" blur="3"]
[chara_show  name="望1_ネックレス有" face="odoroki" top="50" width="1600" height="2259" time=500]
[nozomi_window]
#望
那、你没事吧！？先、先喝点这个吧！[p]

[default_window]
#
模糊的视线中映出了望的身影。[p]
望递过来的是一瓶矿泉水。[p]
顾不上嘴角还脏着，拼命地喝了起来。[p]

[saku_window]
#朔
哈、哈啊、哈啊……呃……！[p]

[default_window]
#
刚用水冲下去的呕吐物再次涌上来，但拼命忍住了。[p]

[chara_mod  name="望1_ネックレス有" face="tuujou" cross=false time=500 wait=false]
[nozomi_window]
#望
这种时候吐出来会舒服点哦？配合着呼气，用力收紧腹部……[p]

[default_window]
#
按她说的做后，随着吞下去的水，呕吐物又一次被排出了体外。[p]
然后猛地把剩下的水一口气喝完。[p]

[bg storage="unoshima02_zoom.jpg" time="800" wait=false]
[free_filter ]

多亏如此，胃酸的不适感和食道里的异物感减轻了不少。[p]
在梦醒前感受到的头痛依然持续着，不过……[p]
比起这个，现在更重要的是。[p]

[saku_window]
#朔
你去哪儿了，望！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
去哪儿？我一直就在朔你旁边啊……？这么远离开我，你会这么不愿意吗？[p]

[saku_window]
#朔
…………[p]

[default_window]
#
问出口后猛然惊觉。[p]
我竟然把那个白日梦的情景误以为是真实发生的。[p]

[chara_mod  name="望2_ネックレス有" face="tuujou" cross=false time=500 wait=false]

望的反应和买饰品时的反应一模一样。[p]
果然……只有我一个人做了那个梦吗。[p]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500 wait=false]

偶尔会做一些真实到让人误以为是现实的梦……[p]
但刚才那个梦，无疑让我觉得那就是『现实』，触感真实得令人深信不疑。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
那个……如果你没事的话，可以告诉我刚才发生了什么吗？[p]

[saku_window]
#朔
……好吧。我们去个能静下来坐着的地方吧。[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

于是，我们决定去附近的一家咖啡馆。[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="unoshima06_2.jpg" time="0"]
[wait time=1000]
[mask_off time="1000" wait="true"]
[playbgm storage="01Voices.mp3" volume="40"]

一直以来，我都对把梦里的内容告诉望感到犹豫。[p]
因为我担心，如果望真的有过轻生的念头怎么办。[p]
不过，从望的反应来看，梦中的望和眼前的望似乎是完全不同的两个人。[p]
于是，我决定向望坦白这些年来我所做过的白日梦。[p]
更重要的是……我已经无法再一个人承受这些了。[p]
实际上，每当开始思考梦与现实的界限时，恶心感就会再次涌上来。[p]
如果不相信现在是现实，我根本无法继续下去。[p]
所以，我尽量不去想……[p]

[bg storage="aozora2.jpg" time="800"]

把一切都告诉了她。[p]
从望约会的原因，到她杀了父母……甚至她最后也投河自尽的事。[r]
[p]

[bg storage="unoshima06_2.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500 wait=true]

[nozomi_window]
#望
嗯——………………[p]

[default_window]
#
她沉默了一会儿……[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]
[nozomi_window]
#望
……朔，你是不是喜欢那种『循环』的故事？[p]

[saku_window]
#朔
我可不是在说我喜欢的类型！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
你得好好分清楚虚构和现实才行……[p]

[saku_window]
#朔
即使是梦，也挺难受的。如果在我面前死了的话。[p]

[nozomi_window]
#望
是吗……确实是这样呢。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
在朔眼中，我竟然是那样的形象啊。有点奇怪的感觉。[p]

[saku_window]
#朔
我还是想确认一下，望为什么要和我约会？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
啊。等等！我的名字……你怎么知道的？我是不是在哪说过？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

这是一段曾经有过的对话。[p]

[saku_window]
#朔
因为在我的梦里你也自称是望，所以我想你应该在哪说过吧。[p]

[default_window]
#
望原本自称是渚。[p]
我一直以为那只是梦里的事……但肯定是在哪说过吧。[p]
不然就说不通了。[p]

[saku_window]
#朔
话说回来，你为什么要跟我约会？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[fadeoutbgm]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哼哼，现实中的我会好好告诉你的。[p]

[saku_window]
#朔
好吧好吧，拜托了……[p]

#
[default_window]
[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]

[nozomi_window]
#望
直截了当！[p]

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
援助交际！！！！！[p]

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
为什么一副这么无语的表情啊！？[p]

[saku_window]
#朔
不要……这也太意料之中了吧。而且，你真的能对我说这种话吗？[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="wink" cross=false time=500 wait=false]

[nozomi_window]
#望
总比被误会成奇怪的事要好吧。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
再说了，我们只是今天限时的关系嘛。[p]

[saku_window]
#朔
嗯，确实是这样。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

聊天时，我突然有了种感觉。[p]
把望带回家然后做点什么的念头……已经消失了。[p]
毕竟刚做了一堆奇怪的梦。[p]
至于所谓的「援助交际」这个目的嘛……嗯。[p]
果然是这样啊，感觉理所当然。[p]
现在我能因为望的坦然而感到安心。[p]
我们之间，是仅限今天的关系。[p]
也就是说……之后不用承担任何责任。[p]
享受一番之后分开，各自回到自己的日常生活就好。[p]

[bg storage="unoshima06.jpg" time="800"]

这样想着，我结了咖啡的账单。[p]
当然，全部是我付的。[p]

[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time="500"]
[nozomi_window]
#望
诶，可以吗？谢谢款待啦～！[p]

[saku_window]
#朔
你本来就是打算让我请客吧？[p]

#
[default_window]
[chara_hide_all time=500 wait=false]

一边说着这场茶番对话，一边走出了店门。[p]
我的思绪渐渐恢复了冷静。[p]
然后，我又意识到了一件事。[p]

[bg storage="monolog_01.jpg" time="800"]

望并没有经历过我梦中发生的那些事。[p]

[bg storage="unoshima06.jpg" time="800"]

从她对被称作「望」这个名字的反应，我确信了这一点。[p]

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

仿佛是为了再现梦中的内容一般，度过了这一天的约会。[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="umi02.jpg" time="0"]
[mask_off time="1000" wait="true"]
[playbgm  storage="07umi.mp3" volume="30"]

站在海边。[p]
梦里玩得浑身湿透，但现在只是把脚浸在海水里而已。[p]

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
凉凉的，真舒服——[p]

[default_window]
#
我们互相脱下鞋子，赤脚站在海水中。[p]
波浪一点点地带走脚下的沙子。[p]
梦里望开心地踢着海水玩耍，而现在她只是静静地感受着海水的冰凉。[p]
明明还说什么「这才是约会的乐趣」呢。[p]

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

与此同时，夕阳渐渐变成了橙色和紫色交织的颜色。[p]
夜幕降临。[p]
望一边看着景色，一边轻声说道。[p]

#
[playbgm  storage="05Homecoming.mp3" volume="40"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]
[wait  time="500"]

[nozomi_window]
#望
真漂亮啊。如果世界一直都这么美就好了呢。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="yuuyake.jpg" time="800"]

我好像以前听过同样的话。[p]
望是抱着什么样的想法才说出这句话的呢？[p]
……不要。[p]
这跟我没关系。[p]
在这里我和望分别，然后再也不会有交集了。[p]
这样不是挺好吗？[p]

[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
天快黑了，差不多该回去了吧？[p]

[nozomi_window]
#望
……是啊。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]

擦干湿漉漉的脚，穿上鞋子走了起来。[p]

;;; 長い橋の上
[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima_michi02_yuu.jpg" time="0"]
[mask_off time="700" wait="true"]

[playbgm  storage="City_Ambi-Street02-1.mp3" volume="20"]

[saku_window]
#朔
那就这样吧。[p]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
谢谢……您了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="130" width="1100" height="1553" time=500]
[anim name="望1_ネックレス有" top="150" time=250]
[wait  time="300"]
[chara_hide_all time=500 wait=true]

与梦中不同，这次的告别出奇地平淡无奇。[p]
我回到了原本的日常生活中去。[p]
突然想起今天无故旷了工。[p]
[fadeoutse buf="3"]

[bg storage="unoshimaeki01_yuu.jpg" time="800"]

这样就好了。[p]
这样就好。[p]
一想到会被说些什么，身体就会吓得发抖，但我强迫自己接受。[p]

[bg storage="yuuyake.jpg" time="800"]

不过，望……她有可以回去的地方吗？[p]
我不知道，但这不是我需要知道的事情。[p]

[bg storage="unoshimaeki01_yuu.jpg" time="800"]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="350" width="760" height="1073" time=500]

忽然回头一看，远处能看到望的背影。[p]
……我不需要知道。[p]
本来如此。[p]
这是不需要知道的事情。[p]

[chara_hide_all time=500 wait=false]
[stopse buf="3"]

但是……[p]
但是？[p]
没有什么但是。[p]
我只是……想要安心而已。[p]
通过目送她回去，就不必再为望担心了。[p]
回过神来时，我已经在追赶望的背影了。[p]

[fadeoutbgm]

;;; 駅のホーム
[bg storage="yuuyake.jpg" time="1500"]

从卯之岛站坐几站电车后，有一个可以换乘别的线路快速电车的车站。[p]
望在那站下车，我也跟着下车。[p]
保持不远不近的距离，同时在人群中不让她从视线中消失。[p]
先出了检票口，然后移动到快速电车的站台。[p]

[playbgm storage="04_zankyou.mp3" volume="30"]
[bg storage="eki_02.jpg" time="800"]

虽然是无关紧要的事……但她有没有准备好足够的交通费啊？[p]
嗯……要是回不去就得不偿失了。[p]

[bg storage="eki_01.jpg" time="800"]
[playse buf="3" storage="rail_station.mp3" volume="20" loop=true]

为了不让望从视线中消失，我一路跟到了快速电车的站台。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="densha_10.jpg" time="800"]

我自己是不会乘坐这条线路的……不过，大不了就说是误入检票口了，应该没问题吧。[p]
随便怎么编个借口都行。[p]
就在这时，快速电车即将到站的广播响了起来。[p]
就是在这个时候。[p]

[chara_show  name="駅員" top="100" time=500]

[mob_window]
#站务员
那个，有其他乘客举报说您在进行跟踪行为，可以麻烦您配合我们了解一下情况吗？[r]
[p]

[saku_window]
#朔
…………[p]

[mob_window]
#站务员
喂！听得到吗！[p]

[saku_window]
#朔
啊，啊？[p]

[mob_window]
#站务员
我说，有人举报您在进行跟踪行为。如果您真的在尾随某人，那可是犯罪行为哦。能麻烦您到那边详细说明一下情况吗？[p]

[saku_window]
#朔
等、等一下。你说我是跟踪狂？[p]

#
[fadeoutbgm]
[default_window]

……糟了。[p]
虽然确实有太多可疑之处，但我绝不能承认……。[p]
闹得太大可能会被望发现我的存在。[p]
最重要的是，我的未来可能就此完蛋……。[p]

[mob_window]
#站务员
所以说，就是有人这么举报了啊。你看，这里人来人往的，能麻烦你到那边去吗？[p]

[default_window]
#
最终还是被抓住了手臂。[p]

[chara_hide_all time=500 wait=false]
[bg storage="densha_11.jpg" time="800"]
[playbgm storage="tinnitus3.mp3" volume="20"]

电车来了。[p]

[bg storage="densha_10_nozomi.jpg" time="800"]

望依然站在原地……等待着电车。[p]
[playse buf="1" storage="heartbeats_fast.mp3" volume="40" loop=true]

看到她的身影，不由得心头一震。[p]

[bg storage="eki.jpg" time="500"]

就像是从旁观者的角度看着今天早上试图跳电车的自己一般……一阵焦虑感袭来。[p]

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

抓着手臂的力道变得更大了。[p]
在这股力量下踉跄了一下，视线短暂地离开了望。[p]

[bg storage="densha_10_nozomi.jpg" time="800"]

等我再抬起头的瞬间──[p]

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

望的身影──────────。[p]

[wait time=800]

[mask time=" 250" graphic="kuro.jpg"]
[bg storage="densha_13.jpg" time="0"]
[mask_off time="250" wait="true"]

[wait time=500]

出现在快速电车的『正前方』。[p]

[nozomi_window]
[playse buf="1" storage="Train_attack.mp3" volume="50"]
#望
────────────────────────────────[p]

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

跳到电车正前方的望的身体────[p]
像失去力量的人偶一样，被电车压得稀巴烂，紧接着掉到了铁轨上……[p]
[wait time=1000]
望的身影，就此消失不见了。[p]

[stopse buf="3"]
[playse buf="3"  storage="Train_brake.mp3" volume="50"]
[bg storage="densha_14.jpg" time="2000"]
[wait time=1000]

[saku_window]
#朔
……不、不可能吧[p]

#
[fadeoutse buf="3"]
[default_window]

刺耳的刹车声。[p]
──撕裂、粉碎、削减的声音。[p]
[playse buf="3"  storage="Train_alarm.mp3" volume="50" loop=true]
紧接着，响起了通知紧急停车的警报声。[p]

[bg storage="red.jpg" time="800"]
[playbgm storage="tinnitus3.mp3" volume="20"]

[saku_window]
#朔
梦……啊，对了，这也是……对吧，因为这种事……[p]

[bg storage="kuro.jpg" time="200"]
[bg storage="red.jpg" time="300"]

[saku_window]
#朔
不可能、绝对不可能……为什么，会这样、呜……[p]

[bg storage="kuro.jpg" time="200"]
[bg storage="red.jpg" time="300"]

[saku_window]
#朔
────呜、咕啊[p]

#
[default_window]
[fadeoutse buf="3"]
[wait time=800]

头痛得仿佛要裂开一般。[p]

[stopse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="red.jpg" time="0"]
[mask_off time="200" wait="true"]

心跳、呼吸、视野、感知、重力。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako2.jpg" time="0"]
[mask_off time="200" wait="true"]

坠落──黑暗──自杀。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="densha_13.jpg" time="0"]
[mask_off time="200" wait="true"]

撞击──黑暗──自杀。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="effect_01.jpg" time="0"]
[mask_off time="200" wait="true"]

梦、梦、梦、梦、梦。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

这是梦。[p]
这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦，这是梦────[p]

[bg storage="red.jpg" time="2000"]

即使闭上眼，视野依然被赤红覆盖。[p]
赤红。[p]
鲜艳的赤红。[p]
炽烈闪耀的，生命的颜色。[p]

[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[wait time=1500]
[mask_off time="200" wait="true"]
[stopbgm]

不知是第几次了，象征着从梦中醒来的信号。[p]
不对。[p]
还没有从梦中醒来。[p]
一直，都在这无法醒来的梦中────。[p]

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
