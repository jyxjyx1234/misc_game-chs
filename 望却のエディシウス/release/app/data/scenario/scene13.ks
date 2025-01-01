
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_13_{number}.mp3" number="1"]
[voconfig sebuf="2" name="警察" vostorage="mob_otoko/keisatsu_13_{number}.mp3" number="1"]
[vostart]

[bg storage="jishitsu_yuu.jpg" time="800"]
[fadeinbgm storage="PerituneMaterial_Memories2.mp3" time="1000" volume="40"]
[mask_off time="700" wait="true"]

[chara_show  name="望3_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[nozomi_window]
#望
啊啊，我的人生真是幸福啊……我想这样想着……死去。[p]

[default_window]
#
──那是望的愿望。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
可是，没能如愿呢。[p]

[default_window]
#
她这么说着，勉强地笑了笑。[p]
那样的笑容，是因为没能死去吗……[p]
还是因为没能感受到「幸福」呢。[p]
我觉得两者似乎都包含在其中了。[p]
但是，比起这些，我更是……[p]

[saku_window]
#朔
望……！[p]

[default_window]
#
[playse buf="3"  storage="huku01.mp3" volume="50"]
[chara_hide_all time=100 wait=true]
[bg storage="jishitsu_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="odoroki" top="-160" width="2558" height="3541" time=400 wait=true]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
哇！[p]

[default_window]
#
忍不住抱住了望那纤细的身体。[p]
想起了以前，当我试图抛下望离开时，被她用力拉住的情景。[p]

[chara_hide_all time=500 wait=false]

[bg storage="kako_07.jpg" time="1000" method="vanishIn"]

[nozomi_window]
#望
『喂，朔，不要走啊……！没有朔的话我不行的……不要把我一个人丢下……！！！』[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[bg storage="kuro.jpg" time="1000"]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

望真的「无处可去」。[p]
虽然以为自己早已明白，但又一次深刻地认识到了这一点。[p]
不仅是没有住的地方，更重要的是……「没有心灵的寄托」。[p]
无处安放自己的心。[p]
……因为没有属于自己的归宿。[p]

[chara_hide_all time=500 wait=true]
[bg storage="nozomi_heya09.jpg" time="800"]

曾以为是归宿的家庭，却是一个充满欲望与背叛的地狱。[p]
由此产生的不安感，肯定远远超出了我所能想象的范围。[p]

[bg storage="jishitsu_yuu.jpg" time="800" method="vanishIn"]

一边担忧着望，我开了口。[p]

[saku_window]
#朔
一直以来……都很痛苦吧。[p]
如果你在这里能感受到「快乐」，那就留在这里吧。[p]

[default_window]
#
我希望自己能成为你的归宿。[p]

[bg storage="jishitsu_yuu_bokasi.jpg" time="500" wait=false]
[chara_show  name="望3_ネックレス有" face="gimon" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
你不会觉得我恶心吗……？[p]

[saku_window]
#朔
不会啊，就算知道了过去，我也不会离开你。现在的望才是重要的。[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="utsumuki" cross=false time=500]

[nozomi_window]
#望
可是，我杀了自己的父母啊？[p]

[saku_window]
#朔
我知道啊。[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="utsumuki2" cross=false time=500]

[nozomi_window]
#望
那朔为什么还会想着去救一个这么疯狂的人呢？[p]

[saku_window]
#朔
那是因为……[p]

[default_window]
#
说出『那句话』的时候，我有些犹豫。[p]
因为我觉得这会确定我和望的关系。[p]

[chara_hide_all time=300 wait=false]
[bg storage="monolog_01.jpg" time="500"]

不过……但是……[p]

[bg storage="jishitsu_yuu.jpg" time="800"]

……不要。[p]
这种像借口一样的话，不需要吧。[p]
无视犹豫，把应该告诉望的话说出来。[p]

[bg storage="jishitsu_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望3_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=500]

[saku_window]
#朔
因为我喜欢上望了[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="gimon" cross=false time=500]

[nozomi_window]
#望
……真的吗？[p]

[saku_window]
#朔
真的[p]

[default_window]
#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
因为能做那种事？[p]

[saku_window]
#朔
……不只是那样[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
包括在内吧[p]

[saku_window]
#朔
呃……对不起[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
哈哈，朔还真是坦率。不过……如果你说不是为了做那种事！就感觉有点假，所以你这么说我反而安心了呢[r]
[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500]

#望
不过啊。那么，你是喜欢我哪里呢？[p]

[saku_window]
#朔
我……[p]

#朔
我觉得，望能为了自己选择自杀，还一次次去尝试，真的很了不起。[p]

#朔
其实啊……在去卯之岛之前，我也试过想跳进列车里。[p]
但是……我没跳下去。[p]

#朔
望的那种勇气……让我很憧憬。[p]

[default_window]
#
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
……只是疯了而已。[p]

[saku_window]
#朔
而我没能走到那一步。[p]

[default_window]
#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
别过来比较好哦？[p]

[saku_window]
#朔
那，我不会过去，只要让我待在你身边就好。[p]

[default_window]
#
[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500]

[nozomi_window]
#望
…………[p]

[default_window]
#
望……[p]
她害怕有人向她伸出援手。[p]
因为总有种可能会被背叛的不安感伴随着她。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="gimon2" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
那么…………一直陪着我好吗？答应我，绝对不要离开。[p]

[saku_window]
#朔
我答应你。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="jishitsu_yuu.jpg" time="500"]

说着，不知是谁先主动，两人握住了彼此的手。[p]
一想到望，我也莫名觉得自己像是被拯救了一样。[p]
虽然不知道原因……。[p]
当我把望请进家里的时候，心里还残留着一丝愧疚感。[p]
但是。[p]
如今的我，已经离不开望了。[p]

[fadeoutbgm]

所以……这样就好。[p]

[mask time="1000" graphic="kuro.jpg"]
[bg storage="yozora.jpg" time="0"]
[wait time="2500"]
[playse buf="3"  storage="okugai_yoru.mp3" volume="50" loop=true]
[mask_off time="1000" wait="true"]
[playse buf="1" storage="wind.mp3" volume="30"]

那天晚上，我们一起躺在床上聊着天，还到阳台上吹夜风。[p]
感受着温暖的风以及紧握的手中传来的真实温度。[p]
靠在阳台边，我们一边吃晚饭，一边聊着天。[p]

[fadeoutse buf="3"]
[bg storage="CG8/CG8_haikei.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=500]
[stopse buf="3"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

[saku_window]
#朔
虽然晚饭只有三明治，实在不好意思啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
嗯嗯，没事啦。在外面吃东西感觉很新鲜，也很好吃呢！[p]

[default_window]
#
我们用露营用的小型燃气炉和三明治机做了三明治。[p]
家里有这样的工具，是大学时期迷上露营留下的痕迹。[p]

[saku_window]
#朔
明天我去买点别的吃的回来吧。[p]

[default_window]
#
不过说实话，我已经很久没自己做饭了，而且还是第一次考虑买两个人的份。[p]
嘛，明天再想也不迟。[p]

[saku_window]
#朔
望平时都吃什么样的饭啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
经常有人给我做蛋包饭吃，因为我很喜欢。不过自己做的时候总是没办法弄得软绵绵的。我问过方法，但还是做不好呢。[p]

[saku_window]
#朔
那下次一起做蛋包饭吧。不过两个人一起做的话，好像也不怎么费劲就是了。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500]

[nozomi_window]
#望
嗯！不管是做饭还是别的什么，我都想和朔一起做点什么呢！[p]

[saku_window]
#朔
哦，差不多可以了。还要再吃点吗？[p]

[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]
[nozomi_window]
#望
嗯！我开动啦！用刚烤好的面包夹的三明治最好吃了呢！[p]

[saku_window]
#朔
很烫，小心点啊。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
唔，哈啰，哈啰！[p]
;;; （っ、あついっ、あっつい！）

[default_window]
#
看来提醒得有点晚了……。[p]

[chara_hide_all time=500 wait=false]
[bg storage="yozora.jpg" time="800"]

聊着些无关紧要的话，不知不觉就把两人份的三明治都吃完了。[p]
把工具留在原地，我的目光又回到了夜景上。[p]

[bg storage="CG8/CG8_haikei.jpg" time="800" wait=false]
[chara_show  name="望2_ネックレス有" face="metoji" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
从我家看的话，可以清楚地看到星星哦。[p]

[saku_window]
#朔
确实，那边晚上看起来很暗啊。从这里看的话，只能看到特别显眼的星星呢。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哼哼，我赢了！[p]

[saku_window]
#朔
到底是什么比赛啊……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500]

[nozomi_window]
#望
朔为什么会一个人住在这里呢？[p]

[saku_window]
#朔
工作了一段时间后搬过来的。本来住在大学附近，但是房租太贵了。虽然通勤时间变长了，但想着能省点房租。[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
原来如此，上过大学啊。那个，学校是什么样的呢？[p]

[saku_window]
#朔
学校是什么样的……嗯——[p]

#朔
大概就是去学些不知道以后有没有用的各种知识，同时培养和人打交道的能力吧。[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki2" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
嗯——好难懂啊，我不是很明白呢。[p]

[saku_window]
#朔
不过怎么看都不像是没上过学的人啊，望。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="wink" cross=false time=500]

[nozomi_window]
#望
可能是因为我经常看书吧，一边问爸妈「这个怎么读呀？」一边读。而且，我其实也有朋友哦！你是不是以为我没有？[r]
[p]

[saku_window]
#朔
是吗。我倒没有觉得你没有朋友啦。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
以前邻居有个比我小一岁的孩子，我们经常在家附近的公园玩。你看，我家周围公寓很多嘛。[r]
[p]

[saku_window]
#朔
总觉得很难想象望和朋友一起玩的样子呢。[p]

#
[default_window]
[chara_mod  name="望2_ネックレス有" face="odoroki" cross=false time=500]

[nozomi_window]
#望
以前的我是个开朗又活泼的小孩哦！[p]

[saku_window]
#朔
听起来好像现在不是这样似的啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
现在嘛……嗯。[p]

[saku_window]
#朔
嗯，也是。没办法啊。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = true;
[endscript]

[nozomi_window]
#望
抱歉抱歉，我不是想让你同情我。不过，只要有朔在，我觉得以前的那些痛苦都能忘掉……好像是这样。[r]
[wait time="3200"]
[chara_mod  name="望1_ネックレス有" face="metoji" cross=false time=500 wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
就算忘不掉，也可以一点点克服过去。[p]

[default_window]
#
虽然我知道这对望来说是件很难的事。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……嗯，是啊。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="yozora.jpg" time="800"]

现在只是。[p]
希望能做一个幸福的梦就好了。[p]

[fadeoutbgm]
[mask time="1000" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="aozora.jpg" time="0"]
[wait time="3500"]
[fadeinbgm storage="city_traffic.mp3" time="1000" volume="50"]
[mask_off time="1000" wait="true"]

第二天。[p]
把望留在家里，我出门去买了几天用的食材。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

……好热啊。[p]
炙热的阳光让我想起了在卯之岛度过的循环日子。[p]

[bg storage="kako_05.jpg" time="800" method="vanishIn"]

现在还会想，如果死了，会不会又回到那个时间呢？[p]

[bg storage="oudanhodou_hiru_ao.jpg" time="800" method="vanishIn"]

不……已经没必要了。[p]
再也不用去在意这些事情了。[p]

[bg storage="machi03.jpg" time="800"]

一边想着这些事情，一边买好了食材和饮料，提着已经变得沉甸甸的包出了超市。[r]
[p]
从这里到家大约步行十分钟左右。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

在让人窒息的酷热中，尽管感觉提着重物回家很吃力，但还是迈开了步伐。[p]
就在这时，突然有人从后面叫住了我。[p]

[saku_window]
#朔
嗯……？[p]

[fadeoutbgm]
[default_window]
#
听到叫声回头一看，站在那里的是──[p]

[chara_show  name="警察" top="90" time=500]

[mob_window]
#警察
这么热的天真是辛苦了，不好意思啊，很快就结束了。只是问几个问题。[p]

[saku_window]
#朔
────呃！[p]

[default_window]
#
一个警察的身影。[p]
思绪停滞了一瞬，但马上明白过来。[p]

[stopbgm]
[chara_hide_all time=500 wait=false]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="kuro.jpg" time="500"]

为什么会被叫住？[p]
答案……显而易见。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="500"]
[chara_show  name="警察" top="90" time=500]

[mob_window]
#警察
最近治安不太好啊。据说这附近有人窝藏了这个城市发生的一起杀人案的犯人。而且还有目击证言呢。[p]

[default_window]
#
这么说着，警察拿出了一张地图……[p]
地图上标注的地方……警察口中的「这个城市」所指的位置是……[p]
毫无疑问，那是望曾经住过的区域。[p]

[mob_window]
#警察
小兄弟，有什么线索能提供吗？[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="800"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[playbgm storage="05_anyanotobari.mp3" time="1000" volume="30"]

是关于望的事情。[p]
而那个被窝藏的人，不是别人，正是我自己。[p]
心脏猛地一跳，汗水像要被挤出来似的涌了出来。[p]
不是因为炎热，而是因为动摇，感觉视线都开始晃动了。[p]
……不要慌。[p]
不要慌。不要慌。[p]
冷静下来。[p]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]
[chara_show  name="警察" top="90" time=500]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]

眼神要控制好。[p]
说话的方式也要注意。[p]
表情的管理也不能出问题。[p]
回忆起平常的状态，把它再现出来──[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

[saku_window]
#朔
……[p]

[default_window]
#
刚想开口说话的瞬间──[p]
一瞬间闪过的疑问。[p]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]

……警察是不是已经知道我窝藏了她，才故意这样问的？[p]
如果真是这样的话……根本无路可逃。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]

张开的嘴，却没能发出声音。[p]
看着这样的我，警察露出了疑惑的表情。[p]
逃跑的选项完全不可能，那和坦白承认没有区别。[p]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
挤出来吧，语言。小心翼翼地，把谎话说得像真的一样────。[p]
────我什么都不知道。我什么都不知道。我什么都不知道。我什么都不知道。[p]
在心里调整好深呼吸的节奏后，开口说道。[p]

[saku_window]
#朔
……对不起……完全没有头绪……关于事件也完全不清楚……[p]

[mob_window]
#警察
是吗。那么，这个孩子你在附近见过吗？哪怕只是觉得有点像的人也可以。[r]
[p]

[default_window]
#
_　[r]
_　[cm]

警察一边说着，一边拿出了一张照片给我看。[p]
希望是个完全不认识的人……[p]

[chara_hide_all time=500 wait=true]
[bg storage="camera.jpg" time="800"]

[saku_window]
#朔
啊……[p]

#
[default_window]
[bg storage="camera2.jpg" time="800"]

然而，出乎我的意料，那张照片上竟然是望。[p]
画质非常糟糕。大概是从监控摄像头之类的影像中截取的。[p]

[bg storage="monolog_01.jpg" time="800"]
[playse buf="3"  storage="heartbeats.mp3" volume="40" loop=true]

警方的调查已经逼近到触手可及的地方了。[p]
短短几天的、逃避法律的私会。[p]
那终结到来的无可抗拒感扑面而来。[p]
对警方的怀疑仍未能消除。如果一切都已暴露，他们只是故意试探我呢？[r]
[p]
……把一切都说出来，对我和望来说会不会更幸福一些？[p]
……至少不用再过这种随时可能被抓住、胆战心惊的日子了吧。[p]
……甚至连这样的念头都冒了出来。[p]
然而，我必须作出回答。[p]
时间已经所剩无几了。[p]
不仅是望，我的处境也岌岌可危。[p]

[bg storage="kuro.jpg" time="500"]

有一种罪名叫窝藏罪。[p]
是指故意窝藏犯罪者所犯下的罪行。[p]
毫无疑问，我正符合这个罪名。[p]
我明白的。[p]
明明知道，却在危险临近的一刻，判断变得迟钝。[p]
──该怎么回答才好呢。[p]

#
[fadeoutbgm]
[default_window]
[fadeoutse buf="3"]
[bg storage="oudanhodou_hiru_aka.jpg" time="800"]
[chara_show  name="警察" top="90" time=500]

已经没有时间犹豫了。[p]
是时候做出选择了。[p]

[saku_window]
#朔
………………………………[p]


;;; 選択肢表示

#
[default_window]
[stopse buf="3"]
[stopbgm]
[autostop]
[skipstop]
;@layopt layer=message0 visible=false
;@layopt layer=message1 visible=false

[default_window]
选项1：有印象[r]
选项2：没有印象

[bg storage="oudanhodou_hiru_aka_select.jpg" time="200"]

;;; 見覚えがある
	[button name=option x=763 y=425 graphic="button/scene13_aru.png" enterimg="button/scene13_aru_hover.png" clickse="button/button_enter.mp3" target="aru" keyfocus="1"]
	[kanim keyframe=FadeIn name=option time=200]

;;; 見覚えがない
	[button name=game_end x=763 y=545 graphic="button/scene13_nai.png" enterimg="button/scene13_nai_hover.png" clickse="button/button_enter.mp3" target="nai" keyfocus="2"]
	[kanim keyframe=FadeIn name=game_end time=200]

	[wa]
	[s]

*aru
	@layopt layer=message0 visible=true
	@layopt layer=message1 visible=true
	[cm]
	@jump storage="scene14.ks"

*nai
	@layopt layer=message0 visible=true
	@layopt layer=message1 visible=true
	[cm]
	@jump storage="scene14_bad.ks"
