
;ボイス設定
[voconfig sebuf="2" name="？？" vostorage="nozomi/nozomi_02_{number}.mp3" number="1"]
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_02_{number}.mp3" number="36"]
[voconfig sebuf="2" name="受付" vostorage="mob_onna/uketsuke_02_{number}.mp3" number="1"]
[vostart]

[bg storage="densha_03.jpg" time="500"]
[wait time=" 500"]

[saku_window]
#朔
────────、──[p]

#
[default_window]

[playse buf="3" storage="Train_attack.mp3" volume="30"]
[wait time=" 1500"]
[bg time=" 1200" storage="monolog_01.jpg"]

啊──[p]
不知不觉中，我──[p]
在无意识中，一直──[p]
一直觉得，自己仿佛已经做好了这样的准备──[p]

[mask time=" 500" graphic="shiro.jpg"]
[wait time=" 300"]
[playse buf="3"  storage="nozomi_echo.mp3" volume="100"]
[bg time=" 0" storage="densha_05.jpg"]
[wait time=" 1200"]
[mask_off time="2500" wait="true"]
[fadeoutse buf="3"]

[saku_window]
#朔
──！[p]

#
[default_window]
[playse buf="3" storage="rail_station.mp3" volume="30" loop=true]

回过神来时，我的脚已经不自觉地想要迈向车站月台的另一边。[p]
然而，就在那一瞬间，我感觉有人在叫我，猛然惊醒。[p]
仿佛是为了阻止我，那样的声音──[p]
不要…………是错觉吗。[p]

[mask time=" 300" graphic="kuro.jpg"]
[playse buf="1" storage="Train_attack.mp3" volume="30"]
[bg storage="densha_05.jpg" time=" 0" ]
[wait  time="2000"]
[mask_off time="3000" wait="true"]


[saku_window]
#朔
………………[p]

#
[default_window]
[fadeoutse buf="3"]
我盯着眼前飞速驶过的列车……[p]
然后，很快地，似乎是站务员抓住了我的身体，用大声提醒着我……这样的感觉。[p]
但是，我已经顾不上那些了。[p]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[bg storage="densha_06.jpg" time="800"]

『想要去死』。[p]
我？[p]
那个一心扑在工作上，连想别的事情的空闲都没有的我吗？[p]

[bg storage="monolog_01.jpg" time="500"]
但是……[p]
通过这种无意识的行为，不得不意识到。[p]
自己早已到了极限，甚至不知道是从什么时候开始的。[p]

[fadeoutbgm]
[bg storage="densha_06.jpg" time="800"]

[saku_window]
#朔
………………[p]

#
[default_window]
[quake count=2 time=200 hmax=20 vmax=20]
[playse buf="1"  storage="BodyDrop_soft.mp3" volume="60"]
[playbgm  storage="02Unopened.mp3" volume="40"]

我瘫坐在了原地。[p]
全身的力气一下子被抽空了。[p]
是因为试图自杀，还是因为察觉到了自己的真心……又或者是两者兼有。[r]
[p]
眼泪不由自主地涌了出来。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

[saku_window]
#朔
呜、啊啊啊啊啊啊啊……不想再去工作了啊啊啊……讨厌……真的……讨厌讨厌讨厌啊啊啊！！！[r]
[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
_　[r]
_　[cm]
[bg storage="densha_06.jpg" time="0"]
[mask_off time="300" wait="true"]

完全忘记了周围还有人，我只是放声哭泣。[p]
明知道自己在哭，却还是止不住眼泪……。[p]
…………[p]
[fadeoutbgm]
……[p]

[fadeoutse buf="3"]
[mask time=" 1500" graphic="kuro.jpg"]
[bg storage="densha_05.jpg" time="0"]
[stopbgm]
[wait  time="1000"]
[mask_off time="1500" wait="true"]
[wait  time="500"]
[stopse buf="3"]

哭了个痛快之后，心情稍微平复了一些。[p]

[bg storage="densha_hiru.jpg" time="800"]
[playse buf="3"  storage="Train.mp3" volume="20" loop=true]
[playbgm  storage="02_tsuikai.mp3" volume="20"]

我换乘了另一辆电车。[p]
回家只会让我想起工作的事情，现在更不可能去上班。[p]
没有决定目的地，只是想随便去个地方。[p]
因为如果不这样做，心里的不安就无法平静下来。[p]

[playse buf="1" storage="Vibration.mp3" volume="60"]

[saku_window]
#朔
呃……[p]

#
[default_window]
[fadeoutse buf="1"]
看了眼手机，是职场前辈的来电。[p]
因为到了上班时间我还没出现，所以打电话过来了……[p]
我条件反射地关掉了手机电源。[p]
绝对会被骂的。[p]
绝对会被骂的……。[p]
明明知道这一点…………[p]
但现在我只想逃避。[p]

;;; 暗転
[mask time=" 300" graphic="kuro.jpg"]
[fadeoutbgm]
[fadeoutse buf="3"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

最终，在一站停靠的车站，我下了车。[p]

;;; 駅前
[stopbgm]
[stopse buf="3"]
[bg storage="unoshimaeki01.jpg" time="800"]
[playbgm  storage="04Faraway.mp3" volume="40"]

卯之岛站。[p]
虽然是有名的观光地，但可能因为是平日的早晨，人并不算多。[p]

[bg storage="michi04.jpg" time="800"]

出了车站，过了桥后，有一个大型的温泉设施。[p]
反正也没能好好洗个澡……[p]
就在那儿慢慢放松一下吧……。[p]

;;; 長い橋の上
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

一边想着今天一天的计划，一边走过桥。[p]
幸好钱还够，不如就吃点平时舍不得吃的美味吧……。[p]

[fadeoutse buf="3"]
[bg storage="unoshima01.jpg" time="800"]

走了一会儿，就能看到温泉设施了。[p]
幸运的是，它似乎从早上就开始营业了。[p]
……感觉心情稍微轻松了一点。[p]
一边对自己意外单纯的心情感到无奈……。[p]
不过，这总比跳进电车里要好得多吧……。[p]

;;; 温泉施設前
[bg storage="onsen_03.jpg" time="800"]
[stopse buf="3"]

正这么想着，准备进去的时候。[p]

[bg storage="onsen_02.jpg" time="800"]
[fadeoutbgm]

[saku_window]
#朔
……嗯？[p]

#
[default_window]
从入口旁边感觉到了一道强烈的视线。[p]

[bg storage="onsen_04.jpg" time="800"]

与其说是在等谁，更像是……在看着我一样，不过可能是错觉吧。[p]
大概是我多心了吧。[p]
那样的女孩子不可能会找我有事。[p]

[bg storage="onsen_02.jpg" time="500"]

正想无视她直接走进入口时——[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="onsen_01.jpg" time="500"]
[chara_show  name="望1_ネックレス無" face="odoroki" top="550" width="490" height="692"]
[chara_hide_all time=200 wait=false]
[playbgm  storage="horizonblue.mp3" volume="40"]
[chara_show  name="望1_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#？？
那个！[p]

#
[default_window]
突然，一个女孩子挡在我面前，开口叫住了我。[p]
难道说……[p]
被当成可疑人物了吗……？[p]

[saku_window]
#朔
啊？[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
	TYRANO.kag.ftag.master_tag.anim.log_join = true;
	TYRANO.kag.ftag.master_tag.chara_mod.log_join = true;
[endscript]

[nozomi_window]
#？？
那个……可以和我一起泡澡吗！？
[wait  time="1300"]
[chara_mod  name="望1_ネックレス無" face="gyagu1" cross=false time=500]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
	TYRANO.kag.ftag.master_tag.anim.log_join = false;
	TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
……呃……啥？[p]

#
[default_window]

刚才，她说了什么？[p]
突如其来的话语太过出乎意料，我愣了几秒钟。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
所以，我刚刚说的是『可以和我一起泡澡吗！？』[p]

[saku_window]
#朔
等一下……我脑子还转不过来。[p]

[delay speed=25]
#朔
首先，你是谁？还有，这里不是混浴！男女是分开的，根本不可能一起泡，而且我可不想被抓，拜托你自己去泡吧！[p]

#
[default_window]
[resetdelay]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
你说话好快啊——[p]

[saku_window]
#朔
还不是因为你突然提了这么离谱的要求！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gyagu2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
不是的啦！我才不会想跟你一起泡澡呢。只是因为情侣套餐好像会便宜点，我只是希望在前台假装一下而已。[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
你误会了，哈哈哈。真是个奇怪的人。[p]

[saku_window]
#朔
那你去找别人吧。我只想一个人安安静静地休息。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="gyagu1" cross=false time=600 wait=false]
[wait time=" 200"]
[anim name="望1_ネックレス無" left="250" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス無" left="160" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス無" left="250" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス無" left="160" time=300]
[wait time=" 300"]

[nozomi_window]
#？？
拜托了！就进门的时候！就进门那一下就行了！只要进去一次就算是既成事实了嘛！[r]
[p]

[saku_window]
#朔
所以找别人也可以啊！还有，你刚才那种说法让我觉得很不舒服好吗！？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望3_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
刚才我一直在找合适的人，但全是大叔……年纪差太多的话看起来会很奇怪吧？对吧？[r]
[p]

[saku_window]
#朔
对吧个头。我总之是要一个人进去的……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
哎——等一下啦！我什么都愿意做的啊啊啊！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
;;; 温泉施設ロビー
[playse buf="3" storage="auto_door.mp3" volume="30"]
[bg storage="onsen_05.jpg" time="800"]
[wait time=" 1000"]

无视她的恳求，我径直走进了入口。[p]
脱下鞋子，把鞋柜的钥匙交给前台。[p]

[mob_window]
#受付
需要租用什么物品吗？[p]

[saku_window]
#朔
请给我这个毛巾套装。[p]

[mob_window]
#受付
嗯……您是一位客人吗？[p]

[saku_window]
#朔
？　啊——[p]

#
[default_window]
前台的人露出了疑惑的表情。[p]
正当我感到一丝违和感，准备回应时，旁边立刻传来了声音。[p]

[chara_show  name="望1_ネックレス無" face="egao" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#？？
请适用情侣折扣！还有我也要租一套毛巾！[p]

[mob_window]
#受付
好的。那么请慢慢享用。[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 500" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="onsen_05.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="500" wait="true"]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[saku_window]
#朔
…………喂，你这家伙……！！[p]

;;; 望立ち絵表示
[chara_show  name="望2_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望2_ネックレス無" top="20" time=350]
[anim name="望2_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#？？
没关系啦，又不会少块肉！而且这样更划算不是吗？[p]

[saku_window]
#朔
一般人会对陌生人提这种请求吗……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
那就当我是个不一般的人好了。[p]

[saku_window]
#朔
怎么看都不一般吧……你对谁都这样吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
才不是呢！别把我当成那种随便的女人好吗！[p]

[saku_window]
#朔
我可没那么想！[p]
...真的没有吗？真的是这样？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
是真的啦！只是为了生存不得不这么做而已，没得挑了。[p]

#
[default_window]
...为了生存而拼命利用情侣折扣的人到底在哪啊。[p]
难道她真的这么缺钱吗……。[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#？？
话说这里是女浴室哦。你打算跟到哪儿啊？啊，难不成你是心里住着个女人的那种人？[r]
[p]

[saku_window]
#朔
才不是呢。只是你的话太冲击了，我思绪一时间冻结了而已。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
就是这么找借口想混进女浴室吧……[p]

[saku_window]
#朔
喂喂……！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
哈哈哈。啊，泡完澡后在休息区集合哦。那么～[p]

[saku_window]
#朔
好好……[p]

#
[default_window]
[mask time=" 500" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 300"]
[mask_off time="500" wait="true"]

我转过身，穿过男浴室的帘子。[p]
因为是工作日早晨，人非常少。[p]
几乎像是包场了一样。[p]
终于可以清洗一下身体了……！[p]
而且……这也是个慢慢疗愈日常疲劳的好机会。[p]
毕竟已经有好几年没泡过澡了……。[p]

;;; 温泉
[bg storage="shiro.jpg" time="200"]
[playbgm  storage="04Faraway.mp3" volume="40"]
[bg storage="onsen_06.jpg" time="800"]

[saku_window]
#朔
哈～～……！[p]

#
[default_window]
伴随着一声长叹，我浸入了温泉中。[p]
舒服得灵魂好像要直接飘走了。[p]
我的身体可能一直在渴望这个。[p]
身体是诚实的。[p]
但是，因为沉迷于工作的日子，偶尔想起的都是工作的事情。[p]

[saku_window]
#朔
……联络……等会儿得回一下……[p]

#
[default_window]

;;; 卯ノ島の坂道
[mask time=" 500" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima03.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="500" wait="true"]
[playbgm  storage="City_Ambi-Street02-1.mp3" volume="20"]

[saku_window]
#朔
……那么。原本的目的已经达成了，不过[p]

#
[default_window]

接下来该怎么办呢……[p]
一边想着，一边慢慢地爬上卯之岛的坡道。[p]

[bg storage="unoshima02.jpg" time="800"]

路途中，有复古怀旧的商店街，还有可以一览无余的景观点。[p]
顺便散步观光一下也不错。[p]

[playse buf="3" storage="start_running.mp3" volume="20"]
[nozomi_window]
#？？
……啊，哈，哈……[p]

#
[default_window]
[bg storage="unoshima03.jpg" time="800"]
这几年完全没怎么观光过。[p]
最后一次应该是用第一份工资租车的时候吧。[p]
那种坐上车瞬间，世界一下子扩展开来的全能感。[p]
和现在的情况有点相似。[p]
就像是在玩RPG游戏时，逐渐能去到之前去不了的地方……那种感觉。[p]

[playse buf="3" storage="start_running.mp3" volume="30" loop=true]
[nozomi_window]
#？？
哈，哈……！！[p]

#
[default_window]
[bg storage="unoshima02.jpg" time="800"]

[fadeoutse buf="3"]
[fadeoutbgm]
[chara_show  name="望1_ネックレス無" face="gyagu1" top="150" width="1100" height="1553" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="120" time=350]
[anim name="望1_ネックレス無" top="150" time=250]
[wait  time="200"]

[nozomi_window]
#？？
等、等一下……！[p]

[saku_window]
#朔
啊，哇啊啊！？[p]

#
[anim name="望1_ネックレス無" top="120" time=350]
[anim name="望1_ネックレス無" top="150" time=250]
[anim name="望1_ネックレス無" top="120" time=350]
[anim name="望1_ネックレス無" top="150" time=250]
[wait  time="200"]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[nozomi_window]
#？？
为什么先回去了呢！[p]

[saku_window]
#朔
为什么？也没什么……没有一起的理由吧[p]

#
[default_window]
我这是被追赶了吗？[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="odoroki" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
不是说好在休息处集合的吗！你还说了「好好」，不记得了吗？[r]
[p]

[saku_window]
#朔
……诶[p]

#
[default_window]
完全不记得了。[p]
是在去更衣室时分开的吧。[p]
只想着赶快泡澡，随便应付的记忆……好像有点。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="utsumuki" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
……随便应付[p]

[saku_window]
#朔
对、对不起[p]

#
[default_window]
条件反射般地道歉了。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="tuujou" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
光道歉可不行哦。作为惩罚，今天一天陪我约会吧！[p]

[saku_window]
#朔
不……这个我可不干……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu2" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
这么可爱的女孩邀请你耶！？[p]

[saku_window]
#朔
居然自己说自己可爱啊……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="metoji" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
最近才发现，表现欲强一点，生活会更有趣呢！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="tuujou" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
那我去找别人啦。能陪我一下已经很感谢了哦，大哥哥。[p]

[saku_window]
#朔
嗯……适可而止就好。[p]

#
[chara_hide_all time=500 wait=true]
[default_window]
这怎么看都像是援交或者仙人跳的套路吧。[p]
毕竟对方可是为了情侣优惠而随便搭讪陌生男人的人啊？[p]
要是真陪她约会了，最后肯定会被逼着买什么名牌包包或者珠宝之类的东西。[p]
然后一散伙，她就把那些我买的东西挂在二手网站上卖掉了，绝对没跑。[r]
[p]
明知道是这样的套路，还偏要往里跳的人才怪呢。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="500"]

不过……[p]
幸也好不幸也罢，我有的是钱。[p]
把请假得来的非日常体验，当成和陌生女孩共度一天，也未尝不可。[p]
反而……这也许能成为一直积压的压力的好宣泄口。[p]
啊，对，就是这样。这只是单纯的私心罢了。[p]
不管花多少钱都无所谓。[p]
我知道这是一种卑劣的欲望。[p]
只是，如果能顺利的话…………[p]
我想和她共度一夜。[p]
在工作中被压抑的欲望，就像要喷涌而出一般冒了出来。[p]
上一次和人「做」还是大学二年级的时候，已经有好几年没有过了……[p]

[playse buf="3"  storage="heartbeats_fast.mp3" volume="40" loop=true]

心脏开始激烈地跳动，这种感觉再明显不过了。[p]
甚至感受到了一种忍不住想要露出笑容的兴奋感。[p]
当然，我绝不会表现出来。[p]
仅仅是想象「那一刻」，就已经让下半身中心充满血液……越是去想，欲望越是强烈。[r]
[p]

[fadeoutse buf="3"]
[bg storage="shiro.jpg" time="200"]
[bg storage="unoshima02.jpg" time="800"]

[saku_window]
#朔
等一下！[p]

#
[default_window]
[chara_show  name="望2_ネックレス無" face="odoroki" top="350" width="760" height="1073" time=600]
[stopse buf="3"]

不知不觉间，我喊住了已经转身离开的她。[p]
虽然连自己都觉得自己很糟糕……。[p]
因为请了假，加上那股冲劲，我已经停不下来了。[p]

[chara_hide_all time=200 wait=true]
[wait  time="200"]
[playbgm  storage="horizonblue.mp3" volume="40"]
[chara_show  name="望1_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=200]
[anim name="望1_ネックレス無" top="50" time=250]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
	TYRANO.kag.ftag.master_tag.anim.log_join = true;
[endscript]

[nozomi_window]
#？？
嗯？……啊，难道说，你改变主意了～？觉得放弃一个年轻女孩太可惜了吗？
[wait  time="1100"]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]
[r]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
	TYRANO.kag.ftag.master_tag.anim.log_join = false;
[endscript]

#
[default_window]
_　[r]
_　[cm] 

虽然完全被看穿了，但我绝不会承认。[p]

[saku_window]
#朔
今天还没吃东西呢。既然在这里碰到了，也算是缘分，一起吃个饭怎么样？[p]
钱我来出。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
	TYRANO.kag.ftag.master_tag.anim.log_join = true;
[endscript]

[nozomi_window]
#？？
欸──这意思是约会吗！？
[wait  time="300"]
[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=600 wait=false]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
	TYRANO.kag.ftag.master_tag.anim.log_join = false;
[endscript]

#
[default_window]
_　[r]
_　[cm] 

她似乎对「约会」这个词特别在意……。[p]
本以为她是冲着钱来的，但看来并不是这样。[p]

[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

不，不要下结论太早。[p]
接下来才是观察的重点。[p]
总之。[p]
无论如何，不管用什么方法，我一定要和她做爱。[p]
下定这个决心后，心情稍微振奋了一些。[p]

[setreplay name="CG1" storage="scene2_replay.ks" label="*CG1_replay"]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="famires.jpg" time="0"]
[wait time=" 2000"]
[playse buf="3"  storage="cafegaya.mp3" volume="10" loop=true]
[mask_off time="700" wait="true"]
[wait time=" 1000"]
[bg storage="famires2.jpg" time="800"]
[stopbgm]

;;; レストランへ移動
;;; AM10:30

一进店，在店员的引导下找了个空位坐下。[p]
可能因为还早，客人稀稀拉拉的没几个。[p]

;;; CG1表示
[fadeoutse buf="3"]
[mask time=" 1000" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[wait time=" 500"]
[bg storage="CG1/CG1_tuujou_1.jpg" time="0"]
[cg storage="CG1/CG1_tuujou_1.jpg"]
[mask_off time="1000" wait="true"]
[stopse buf="3"]
[playbgm  storage="02itsumonoasa.mp3" volume="30"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
对了，还没问你的名字呢。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_2.jpg"]

[nozomi_window]
#？？
欸，你是打算搭讪店员小姐吗！明明我还在这儿！[p]

[saku_window]
#朔
不是店员小姐啦！……是问你的名字啊。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_3.jpg"]

[nozomi_window]
#？？
我也不知道哥哥你的名字呢，只知道你是个想进女浴室的变态而已。[r]
[p]

[saku_window]
#朔
要求陌生男人用情侣优惠的你，没资格说我吧！[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[cg storage="CG1/CG1_menu_1.jpg"]

[nozomi_window]
#？？
啊，我想试试这个叫奶油苏打的饮料。[p]

[saku_window]
#朔
别转移话题啊。[p]

#
[default_window]
话说回来……你没喝过奶油苏打吗？[p]
我一直以为这是小时候大家都会喝的东西呢。[p]
看来还真有稀奇的人呢。[p]

[bg storage="CG1/CG1_menu_3.jpg" time="800"]
[cg storage="CG1/CG1_menu_3.jpg"]

[nozomi_window]
#？？
切～[p]

[saku_window]
#朔
话说回来，如果要约会的话，不知道名字就没法用名字称呼吧？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_5.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_5.jpg"]

[nozomi_window]
#？？
果然这就是约会啊……[p]

[saku_window]
#朔
最开始说约会的是你吧。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

[nozomi_window]
#？？
渚。[p]

[saku_window]
#朔
渚？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_4.jpg"]

[nozomi_window]
#渚
对，我的名字，叫渚。[p]

[saku_window]
#朔
姓呢？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_6.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_6.jpg"]

[nozomi_window]
#渚
姓嘛……等好感度再高一点再说吧。[p]

[saku_window]
#朔
好好好，就这种套路是吧。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_8.jpg"]

[nozomi_window]
#渚
试着叫一下吧。[p]

[saku_window]
#朔
……渚。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#渚
别这么随便直呼名字啊！[p]

[saku_window]
#朔
让叫的是你吧！[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
骗你的啦，开玩笑的。那么，大哥哥你呢？[p]

[saku_window]
#朔
啊……名字？小清水朔。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[nozomi_window]
#渚
那我也叫你朔了，直接叫名字哦。这下我们正式成为情侣啦！[p]

#
[default_window]
有好多想吐槽的地方啊。[p]
不过，约会啊、情侣关系什么的……感觉不知不觉朝着不错的方向发展了。[p]

[saku_window]
#朔
好啦好啦，总之，你要点什么？[p]

#
[default_window]
店员稍微站远了一点，等待我们下单，这气氛实在有点尴尬。[p]

[bg storage="CG1/CG1_menu_5.jpg" time="800"]
[cg storage="CG1/CG1_menu_5.jpg"]
[nozomi_window]
#渚
那就来一杯奶油苏打……烤嫩鸡饭沙拉套餐，再加一份炸薯条，还有甜点的巧克力香蕉圣代！然后饭要大份的♪[r]
[p]

#
[default_window]
_　[r]
_　[cm]

多了多了多了多了！[p]
明显不是一个人能吃得完的量啊。而且还是早上！[p]

[saku_window]
#朔
我还是问一下，你确定能全部吃完吧？[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[nozomi_window]
#渚
吃不完就让朔帮我吃，所以没问题～[p]

[saku_window]
#朔
全靠我吗？[p]

#
[default_window]
[bg storage="CG1/CG1_menu_5.jpg" time="800"]

[nozomi_window]
#渚
人生中总得有一次不在意价格，把想吃的全都点一遍吧。啊，店员～可以下单了吗？[r]
[p]

[saku_window]
#朔
等一下，我还没决定好呢！[p]

#
[default_window]
站着等待的店员走了过来，我慌忙地翻看菜单。[p]
随便点了一份映入眼帘的凯撒沙拉。[p]

[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[nozomi_window]
#渚
只点个沙拉吗？[p]

[saku_window]
#朔
反正到时候肯定还得帮你吃剩下的吧……[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_9.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_9.jpg"]

[nozomi_window]
#渚
你最好别小看我的食量哦。我会让你后悔的，到时候哭鼻子可别怪我！[r]
[p]

#
[default_window]
_　[r]
_　[cm]

这莫名其妙的自信到底是从哪来的啊！[p]
一副等不及了的样子，渚。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="famires2.jpg" time="0"]
[mask_off time="700" wait="true"]

一边闲聊一边等待料理上桌时……[p]
从奶油苏打和沙拉开始，点的菜品一个接一个地被端上了桌。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG1/CG1_eating_5.jpg" time="500"]
[cg storage="CG1/CG1_eating_5.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
哇啊……！真、真的可以吃这么多吗？[p]

[saku_window]
#朔
明明是你自己点的吧，渚。[p]

#
[default_window]
[bg storage="CG1/CG1_eating_4.jpg" time="800"]
[cg storage="CG1/CG1_eating_4.jpg"]

[nozomi_window]
#渚
嗯哼哼～♪ 好期待，好期待♪[p]

[saku_window]
#朔
嘛，你开心就好……[p]

#
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG1/CG1_eating_1.jpg" time="800"]
[cg storage="CG1/CG1_eating_1.jpg"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_2.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_2.jpg"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_5.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_5.jpg"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_6.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_6.jpg"]
[wait time=" 600"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[default_window]
每吃一口，渚的表情都会变得丰富多彩。[p]
不知为何有种当了监护人的感觉，不由得盯着看了起来。[p]
[bg storage="CG1/CG1_eating_kasu_4.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_4.jpg"]
……约会，啊。[p]
她为什么这么执着，这点让我很在意。[p]
不过如果渚想约会的话，对我来说再好不过了。[p]
为了这个目的的话，请她吃饭也不算什么大事。[p]


;;; 暗転
[fadeoutse buf="3"]
[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="monolog_01.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]

不算什么……本来我是这么想的。[p]

[wait time=" 300"]
[bg storage="CG1/CG1_eating_kasu_7_zoom.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_7_zoom.jpg"]
[stopse buf="3"]

[nozomi_window]
#渚
呜、好撑……已经吃不下去了……[p]

#渚
………………[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_9.jpg"]

[nozomi_window]
#渚
哼哼～你以为我会这么说吗？真是太天真了。[p]

[saku_window]
#朔
那当然了。[p]

#
[default_window]
[playse buf="1"  storage="OnomaImpact03.mp3" volume="40"]
[wait time=" 500"]

[saku_window]
#朔
……结果几乎全是我在吃啊！[p]

#
[default_window]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

摆在渚面前的那么多菜里，只有一点点动过的烤嫩鸡、大份米饭，还有薯条，全都被移到了我面前。[p]
至于渚，她只吃完了沙拉和圣代，现在正用吸管戳着奶油苏打里的冰淇淋喝着。[p]
偶尔还会像突然想起来似的，伸手去拿薯条。[p]

[bg storage="CG1/CG1_tuujou_soda_1.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_1.jpg"]

[nozomi_window]
#渚
哎嘿～[p]

[saku_window]
#朔
别给我装可爱啊。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_4.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_4.jpg"]

[nozomi_window]
#渚
因为你看起来很饿嘛，所以没办法才让给你的。而且，奶油苏打真的超级好喝呢！[p]

[saku_window]
#朔
这话说得真巧妙……算了，男人嘛，这点分量还是能吃下去的。[p]

#
[default_window]
可能是因为做了些平时不一样的事情，确实有点饿了……。[p]
不过话说回来，这分量也差不多到了能不能勉强吃完的极限了。[p]

[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_8.jpg"]

正埋头吃得起劲的时候，不知不觉间发现渚一直盯着我看。[p]
难道是脸上沾了什么食物残渣吗……？[p]
被人盯着吃饭还真让人不自在。[p]
等嘴里咽下去后，我问了渚一个问题。[p]

[saku_window]
#朔
……你有什么想说的吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_3.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_3.jpg"]

[nozomi_window]
#渚
……朔，你还真是个怪人呢。[p]

[saku_window]
#朔
这话我可不想从你嘴里听到。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

[nozomi_window]
#渚
为什么你对我这么温柔呢？[p]

[saku_window]
#朔
……谁知道呢？[p]

#
[default_window]
很显然，她对我还是存有疑虑的。[p]
我装作毫不知情的样子，又继续吃了起来。[p]
……这个女孩，肯定也有某些原因才会待在这里吧。[p]
不过嘛，对我来说这些都无所谓。[p]

[bg storage="monolog_01.jpg" time="800"]

像海市蜃楼般摇曳不定，下一瞬间就会消失得无影无踪……。[p]
这种不可思议、不稳定、危险的关系。[p]
对于现在的我来说，这样的距离感反而让人觉得舒服。[p]
既舒服，也刚好可以利用渚为自己谋点便利。[p]

[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
这种时候说『我才没有对你温柔呢』会更帅哦？[p]

[saku_window]
#朔
多谢指教。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

一边聊着天，一边把摆在面前的料理吃了个精光。[p]
『约会』就是这种感觉吗？[p]
自从成了社会人以后就没什么时间玩，约会的方式早就忘光了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[fadeoutse buf="3"]
[bg storage="unoshima08.jpg" time="0"]
[wait time=" 2000"]
[mask_off time="700" wait="true"]
[stopse buf="3"]
;;; 卯ノ島の坂道

走出店门后，我向渚问了一句。[p]

[playbgm  storage="horizonblue.mp3" volume="40"]
[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=500 wait=true]

[saku_window]
#朔
渚，你为什么想约会啊？[p]

[chara_mod  name="望1_ネックレス無" face="gyagu1" cross=false time=600 wait=false]
[wait  time="300"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
因为我还是处女嘛！[p]

[saku_window]
#朔
别这么大声说这种话啊！[p]

#
[default_window]
而且这根本不是理由吧！[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="egao" top="50" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="20" time=350]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
开玩笑的啦。[p]

[saku_window]
#朔
哦，那就是说你不是处女了……[p]

#
[default_window]
虽然并不觉得遗憾，但我刚刚的反应好像有点恶心啊。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
你是问为什么想约会吧？其实今天我决定要过一个体验许多从未经历过事情的一天！[r]
[p]

[saku_window]
#朔
所以你特地跑到卯之岛来是为了搭讪吗？[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
不是为了搭讪啦。我只是觉得会有很多从远地方来的人。[p]

#
[default_window]

不过你做的事完全就是搭讪啊。[p]

[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

确实，游客……从远地方来的人应该不少。[p]
实际上相比早上，人流量已经明显多了起来。[p]
但『从远地方来的人』到底是什么意思呢？[p]
难道不是谁都可以吗……？[p]
想和从远地方来的人约会的理由。[p]
是不是完全不认识的对象会更方便之类的？[p]
……不行，搞不懂。[p]
是因为我想象力太贫乏……还是渚根本就没多想什么呢。[p]

[bg storage="unoshima08.jpg" time="800"]

希望是后者吧。[p]

[chara_show  name="望1_ネックレス無" face="egao" top="50" width="1600" height="2259" time=500 wait=true]
[nozomi_window]
#渚
啊！你快看！好棒的景色……！[p]

#
[default_window]
顺着渚所看的方向望去，卯之岛的美丽景色映入眼帘。[p]

;;; 卯ノ島の眺望
[fadeoutbgm]
[mask time=" 300" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima07.jpg" time="500"]
[mask_off time="300" wait="true"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

[saku_window]
#朔
哇……真壮观啊。[p]

#
[default_window]
[bg storage="unoshima07_zoom1.jpg" time="800"]
眼前展开的风景，展现了我和渚一路走到这里的轨迹。[p]
将目光投向地平线，天空的蓝与海洋的碧交汇成一条界线。[p]
那是一种仿佛天空与海洋融为一体般的深邃蓝色。[p]

[bg storage="unoshima07_zoom2.jpg" time="800"]
[nozomi_window]
#渚
……这样的景色，我还是第一次见到。真美……[p]

#
[default_window]
渚双手撑在栏杆上，凝视着眼前的景色。[p]
她睁大的双眼闪闪发光，给人一种像孩子般天真的感觉。[p]
我不知不觉中，比起景色，更加注视起渚的表情。[p]
她的表情仿佛是在努力将这满眼展开的景色深深刻入记忆中。[p]

[bg storage="unoshima07.jpg" time="800"]
[fadeoutbgm]
[saku_window]
#朔
（我这是……在干什么）[p]

#
[default_window]
[bg storage="unoshima08.jpg" time="800"]
[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=800 wait=true]

似乎察觉到了我的视线，渚转过身朝我看了过来。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[playbgm  storage="07umi.mp3" volume="20"]

[nozomi_window]
#渚
朔经常来这种地方吗？[p]

[saku_window]
#朔
没有啦，以前和家人来过一次后，这是第二次。这几年完全没出去旅行过。[p]

#
[default_window]
确切地说，是没办法去。[p]

[chara_mod  name="望2_ネックレス無" face="egao2" cross=false time=600 wait=false]
[nozomi_window]
#渚
我想更多地了解朔呢，毕竟是约会对象嘛。[p]

[saku_window]
#朔
我可没什么好说的哦？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
那我来问好了。为什么穿着套装呢？看起来也不像是去工作啊……[p]

[saku_window]
#朔
呃，那是……[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
难道说……是偷懒吗！？[p]

[saku_window]
#朔
声音太大了啊[p]

#
[default_window]
我不由得环顾四周。[p]
明明知道没有同事在这里……。[p]

[saku_window]
#朔
不过……没错。我今天是翘班来这儿的。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
太好了，朔是个坏人。这样我就放心了。[p]

#
[default_window]
为什么她会因为我是个坏人而感到安心呢……。[p]
真搞不懂小辈们在想什么。[p]

[saku_window]
#朔
我得说明一下，这真的是我第一次偷懒。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
为什么会偷懒呢？[p]

[saku_window]
#朔
……那是因为[p]

#
[default_window]
因为工作压力导致精神崩溃甚至想到自杀……这种事没必要特意告诉渚。[p]

[saku_window]
#朔
等你成为社会人就会明白了，渚。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="gyagu1" cross=false time=600 wait=false]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
不要！我绝对不想工作！不想上班！[p]

#
[default_window]
太强势了！[p]

[chara_mod  name="望1_ネックレス無" face="tuujou" cross=false time=600 wait=false]

嘛，毕竟你还不是社会人吧，一看就知道……。[p]
连泡温泉的钱都舍不得花。[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]

是个学生……吧？[p]
不过，追问别人的私生活总觉得有点不好意思。[p]
因为一旦知道太多，就会不自觉地产生感情。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
不过今天真热啊。我好久没出门了……要不要吃点冰凉的东西？[p]

#
[default_window]
渚一边擦着额头上的汗，一边这样说道。[p]
确实，我正好也想找个地方凉快一下。[p]

[chara_hide_all time=500 wait=false]
[bg storage="unoshima06.jpg" time="800"]

[saku_window]
#朔
正好那家咖啡店门口好像在卖冰淇淋，要不要吃点？[p]

#
[default_window]
[chara_show  name="望1_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
诶，真的吗！？[p]

[saku_window]
#朔
果然还是默认让我请客啊……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=600]

嘛，也没关系啦。[p]

[setreplay name="CG2" storage="scene2_replay2.ks" label="*CG2_replay"]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[chara_hide_all time=0 wait=true]
[bg storage="unoshima06.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]
;;; アイスをテイクアウトして屋外で食べる

[wait time=" 600"]


[keyframe name="kirakira"]
	[frame p="0%" scale="0"]
	[frame p="50%" scale="1"]
	[frame p="100%" scale="0"]
[endkeyframe]

[keyframe name="hana"]
	[frame p=0% rotate="0deg"]
	[frame p=100% rotate="360deg"]
[endkeyframe]

;;;エフェクト定義
[chara_new  name="kirakira1" storage="CG2_kirakira1.png" jname="kirakira1"]
[chara_new  name="kirakira2" storage="CG2_kirakira2.png" jname="kirakira2"]
[chara_new  name="kirakira3" storage="CG2_kirakira3.png" jname="kirakira3"]
[chara_new  name="kirakira4" storage="CG2_kirakira4.png" jname="kirakira4"]
[chara_new  name="bikkuri" storage="CG2_bikkuri.png" jname="bikkuri"]
[chara_new  name="hana1" storage="CG2_hana1.png" jname="hana1"]
[chara_new  name="hana2" storage="CG2_hana2.png" jname="hana2"]
[chara_new  name="hana3" storage="CG2_hana3.png" jname="hana3"]
[chara_new  name="hana4" storage="CG2_hana4.png" jname="hana4"]
[chara_new  name="kiin" storage="CG2_kiin.png" jname="kiin"]

[chara_show layer=1 name="kirakira1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="kirakira2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="kirakira3" width="88" height="104" left="730" top="360" time=800 wait=false]
[chara_show layer=1 name="kirakira4" width="121" height="141" left="1450" top="450" time=800 wait=false]
[bg storage="CG2/CG2_1_1_1.jpg" time="800" wait=true]
[cg storage="CG2/CG2_1_1_1.jpg"]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[kanim name="kirakira1" keyframe="kirakira" time="1200" count="infinite"]
[kanim name="kirakira4" keyframe="kirakira" time="1200" count="infinite"]
[wait time=" 600"]
[kanim name="kirakira2" keyframe="kirakira" time="1200" count="infinite"]
[kanim name="kirakira3" keyframe="kirakira" time="1200" count="infinite"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
会化掉的，我们得赶紧吃才行呢！[p]

#
[default_window]

渚正在纠结从哪开始吃那两层叠在甜筒上的冰淇淋。[p]
正当我以为她在纠结的时候，她却完全无视了我的忠告，猛地咬了一口，或者舔了舔……[r]
[p]
这样的样子让我觉得她像只小动物一样。[p]

[saku_window]
#朔
别慌着一下子吃完，小心牙齿会被冻得发酸啊。[p]

#
[default_window]
[stop_kanim]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[bg storage="CG2/CG2_1_1_2.jpg" time="800" wait=true]
[cg storage="CG2/CG2_1_1_2.jpg"]
[wait time=" 200"]
[chara_show layer=1 name="hana1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="hana4" width="121" height="141" left="1450" top="450" time=800 wait=false]
[chara_show layer=1 name="hana2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="hana3" width="88" height="104" left="730" top="360" time=800 wait=false]
[wait time=" 800"]

[kanim name="hana1" keyframe="hana" time="3500" count="infinite" easing="linear"]
[kanim name="hana4" keyframe="hana" time="3500" count="infinite" easing="linear"]
[wait time=" 600"]
[kanim name="hana2" keyframe="hana" time="4500" count="infinite" easing="linear"]
[kanim name="hana3" keyframe="hana" time="4500" count="infinite" easing="linear"]


不过，她吃得还真是香啊……。[p]
我自己也好久没吃冰淇淋了，但渚的反应简直就像……[p]
第一次吃冰淇淋一样，新奇又开心。[p]
刚才的奶油苏打也是，她应该很喜欢甜食吧。[p]
正当我这么想着的时候，[p]

[stop_kanim]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[bg storage="CG2/CG2_1_1_3.jpg" time="800" wait=true]
[cg storage="CG2/CG2_1_1_3.jpg"]
[wait time=" 200"]
[chara_show layer=1 name="kiin" time=800 wait=false]
[kanim layer=1 keyframe="shake" time="100" count="infinite"]

[nozomi_window]
#渚
嗯～～～～～……！呜哇……一定会注意的……[p]

#
[default_window]
看来已经太迟了。[p]

[bg storage="CG2/CG2_1_2_3.jpg" time="800"]
[cg storage="CG2/CG2_1_2_3.jpg"]
[saku_window]
#朔
早就提醒过你了吧。[p]

#
[default_window]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[stop_kanim]
[bg storage="CG2/CG2_1_2_4.jpg" time="800"]
[cg storage="CG2/CG2_1_2_4.jpg"]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
[endscript]

[nozomi_window]
#渚
你还说呢，朔的冰淇淋眼看着也要融化掉了哦。……啊，看吧！[r]
[wait time=" 4400"]
[bg storage="CG2/CG2_1_2_5.jpg" time="800" wait=false]
[cg storage="CG2/CG2_1_2_5.jpg"]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
[endscript]

#
[default_window]
[playse buf="3" storage="Anime_Motion07.mp3" volume="70"]
[bg storage="CG2/CG2_1_3_5.jpg" time="800" wait=false]
[cg storage="CG2/CG2_1_3_5.jpg"]
[wait time=" 200"]
[chara_show layer=1 name="bikkuri" time=800 wait=false]
[kanim layer=1 keyframe="shake" time="100" count="infinite"]

[saku_window]
#朔
……啊啊啊啊啊！！[p]

#
[default_window]
[playse buf="3" storage="Anime_Motion02.mp3" volume="70"]
[bg storage="CG2/CG2_2_3_5.jpg" time="800"]
[cg storage="CG2/CG2_2_3_5.jpg"]

就在我调侃渚的时候，我的冰淇淋上层滑溜溜地掉到了地上……。[p]

[stop_kanim]
[chara_hide_all time=500 layer=1 wait=false]
[bg storage="CG2/CG2_2_3_2.jpg" time="800"]
[cg storage="CG2/CG2_2_3_2.jpg"]
[chara_show layer=1 name="hana1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="hana2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="hana3" width="88" height="104" left="730" top="360" time=800 wait=false]
[chara_show layer=1 name="hana4" width="121" height="141" left="1450" top="450" time=800 wait=false]

[kanim name="hana1" keyframe="hana" time="3500" count="infinite" easing="linear"]
[kanim name="hana4" keyframe="hana" time="3500" count="infinite" easing="linear"]
[wait time=" 600"]
[kanim name="hana2" keyframe="hana" time="4500" count="infinite" easing="linear"]
[kanim name="hana3" keyframe="hana" time="4500" count="infinite" easing="linear"]

[nozomi_window]
#渚
哈哈哈，谁让你刚才取笑我呢？活该吧！[p]

#
[default_window]
[bg storage="CG2/CG2_2_4_2.jpg" time="800"]
[cg storage="CG2/CG2_2_4_2.jpg"]

[saku_window]
#朔
呜呜……都是夏天的炎热惹的祸……[p]

#
[default_window]
[mask time=" 500" graphic="shiro.jpg"]
[stop_kanim]
[chara_hide_all time=0 layer=1 wait=false]
[bg storage="unoshima06.jpg" time="0"]
[wait time=" 800"]
[mask_off time="500" wait="true"]

渚吃冰淇淋吃得那么快，我的冰淇淋也掉了一块……[p]
就这样比预想中更快地吃完了。[p]
事情的发展比想象中还要快。[p]
本来就没有计划，所以当然也没考虑过约会路线。[p]

[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=500]

正在想接下来要去哪里。[p]

[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=500 wait=true]

渚没有片刻停歇，对周围的一切都表现出兴趣……[p]
她那仿佛在说「看到的一切都很新鲜！」的样子，让我不禁微微一笑。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
啊，我们去那边的饰品店吧！[p]

[saku_window]
#朔
好好好[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

我被她拉着手跟着走。[p]
话说，自然地就握住手了……[p]

[saku_window]
#朔
……！[p]

#
[default_window]

好、好柔软……！！[p]
知道了这种感觉之后……我……我！[p]
我感觉到血液全都集中到了下腹部。[p]
明明只是握了个手而已。[p]
嘿嘿，身体还真是诚实啊。[p]

[chara_mod  name="望1_ネックレス無" face="gimon" cross=false time=600 wait=true]

总觉得渚用一种怪异的眼神看着我……[p]
危险危险。[p]
冷静，冷静。[p]
……刚才不还想着「我要做给你看！」之类的话吗。我啊。[p]
算了……现在还是让这孩子觉得开心更重要吧。[p]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima02_zoom.jpg" time="0"]
[wait time=" 2000"]
[mask_off time="700" wait="true"]

[chara_show  name="望2_ネックレス無" face="egao" top="50" width="1600" height="2259" time=600]
[playbgm  storage="02itsumonoasa.mp3" volume="30"]

[nozomi_window]
#渚
这种店，我一直想来看看呢！[p]

[saku_window]
#朔
你家那边没有这种店吗？[p]

[chara_mod  name="望2_ネックレス無" face="gimon" cross=false time=600 wait=false]
[nozomi_window]
#渚
嗯～……可能没有吧？[p]

#
[default_window]
可能没有？这算什么回答啊。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="tuujou" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#渚
啊，你快看这个！这个……[p]

[saku_window]
#朔
嗯？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
金色的粪便戒指呢，哈哈哈！这种东西真的会有人买吗？[p]

[saku_window]
#朔
朋友之间会买成对的吧？这边还有银色的呢。[p]

[chara_mod  name="望2_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
真的耶……原来还有这种成对购买的方法啊。[p]

#
[default_window]
那当然有啊。[p]
总觉得，渚的发言里好像缺少了点女孩子该有的感觉。[p]
不仅是女孩子该有的感觉……连一般常识也有点欠缺。[p]
难道说，渚是……[p]
那种无处可去的女孩子聚集的地方……待过吗？[p]
如果真是那样的话，也不是完全不能理解。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
啊！你看这个，情侣项链！哇～这个好可爱啊……[p]

#
[default_window]
渚一边说着，一边拿起的是一条海豚项链。[p]
金色和银色两种款式，海豚抱着串珠的样子让人印象深刻。[p]
她拿起两条仔细端详着……[p]

[saku_window]
#朔
咦……嗯？[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="CG3/CG3.jpg" time="800"]
[cg storage="CG3/CG3.jpg"]

金色和银色的海豚，像被吸引似的互相贴在了一起。[p]

[saku_window]
#朔
里面是不是装了磁铁啊？[p]

[nozomi_window]
#渚
可是这个，好像不会吸附在铁上呢。这是怎么回事啊……[p]

#
[default_window]
看起来与其说是紧紧贴合，不如说是稍微颤动着靠在一起的样子。[p]
里面是不是装了什么有吸引力的东西呢……[p]
总觉得有种奇妙的力量在其中。[p]

[bg storage="unoshima02_zoom.jpg" time="800"]
[chara_show  name="望1_ネックレス無" face="wink" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
戴上这个的话，说不定能知道朔的位置哦。你看，那个，叫什么来着……就像那个一样。[r]
[p]

[saku_window]
#朔
占卜棒？[p]

[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=600 wait=false]
[nozomi_window]
#渚
对对对！项链会飘～起来，然后指引出你的位置呢！[p]

[saku_window]
#朔
如果是我戴的话吧。[p]

[chara_mod  name="望1_ネックレス無" face="gyagu2" cross=false time=600 wait=false]
[nozomi_window]
#渚
哎——！你不戴吗！[p]

[saku_window]
#朔
我从来没特意戴过项链之类的东西啊……[p]

#
[default_window]
而且穿套装配海豚项链也显得有点奇怪。[p]

[chara_mod  name="望1_ネックレス無" face="pien" cross=false time=600 wait=false]
[wait  time="200"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
就今天一天嘛！拜托啦！我什么都愿意做！[p]

[saku_window]
#朔
……为什么你这么想让我戴啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
因为这是约会呀？情侣装不是很让人向往吗！[p]

[saku_window]
#朔
嗯……既然渚这么想要的话。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
太好了！啊，我要金色的海豚哦！[p]

[saku_window]
#朔
要是……可不是免费的啊？[p]

#
[default_window]
[chara_hide_all time=600 wait=true]
拿着两条项链结完账后走出了店。[p]

[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[bg storage="unoshima02.jpg" time="0"]
[wait time=" 500"]
[mask_off time="700" wait="true"]

[chara_show  name="望1_ネックレス無" face="wink" top="50" width="1600" height="2259"]
[nozomi_window]
#渚
谢谢您！……哇，好漂亮……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]

把金色的海豚递给她后，她一边沐浴在阳光下，一边陶醉地凝视着。[p]
如果能看到这样的表情，那这点钱花得值了。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
好想戴上试试……嗯——一个人好像弄不好呢……[p]

#
[default_window]
渚笨手笨脚地折腾着，但似乎还偷偷瞟了我几眼。[p]
这家伙……是故意的吧。[p]

[saku_window]
#朔
拿来我看看。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[playbgm  storage="horizonblue.mp3" volume="40"]
[bg storage="unoshima02_bokasi.jpg" time="200" wait=false]
[chara_show  name="望2_ネックレス無" face="odoroki" top="-130" width="2558" height="3541" time=500]
[wait  time="200"]
[anim name="望2_ネックレス無" top="-160" time=350]
[anim name="望2_ネックレス無" top="-130" time=250]

[nozomi_window]
#渚
诶？[p]

#
[default_window]
我把双手绕到渚的脖子后面，试图扣上项链的扣子。[p]
不过……咦，比想象中难弄得多。[p]
而且……[p]
好、好近啊。[p]

[chara_mod  name="望2_ネックレス無" face="utsumuki" cross=false time=600 wait=false]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
	TYRANO.kag.ftag.master_tag.anim.log_join = true;
[endscript]

[nozomi_window]
#渚

……你是不是故意装作戴不上去的？哈，不会是想合法地摸女生吧！？[r]
[wait  time="3000"]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu2" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス無" top="-130" time=250]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
	TYRANO.kag.ftag.master_tag.anim.log_join = false;
[endscript]

[saku_window]
#朔
别把自己称作女生的身体啊……[p]

[chara_mod  name="望1_ネックレス無" face="wink" cross=false time=600 wait=false]
[nozomi_window]
#渚
嘿嘿……如果我现在大喊的话，朔就不是和我约会了，而是和警察来一场兜风约会了哦……[p]

[saku_window]
#朔
所以说，最开始说想约会的可是你吧！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]
[chara_show  name="望2_ネックレス有" face="tuujou" top="-130" width="2558" height="3541" time=500]

一边拌嘴，一边终于扣上了项链的扣子，我松开了手。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
啊，这次换我给朔戴。来，来嘛。[p]

#
[default_window]
看着她示意让我稍微弯腰的动作，我配合地半蹲下，把银色海豚项链递给了渚。[r]
[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="gimon" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
嗯嗯……？果然还挺难弄的……这里要这样子……？[p]

#
[default_window]
看到她和我一样也有些笨手笨脚的，我突然起了点恶作剧的心思。[p]

[saku_window]
#朔
现在如果我大喊的话，渚也得和警察来一场兜风约会吧。[p]

#
[default_window]
[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500]

[nozomi_window]
#渚
不管发生什么都不要叫警察哦。[p]

[saku_window]
#朔
啊，好吧。[p]

#
[default_window]
面对一本正经的渚，我有些愣住了。[p]
难道她有什么不想被叫警察的理由吗……？[p]
嗯……离家出走的少女？[p]
难道其实是被父母报了失踪吗……？[p]

#
[chara_hide_all time=100 wait=true]
[bg storage="unoshima02.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
好啦，完成了！[p]

#
[default_window]
就在我胡思乱想的时候，项链已经戴到了我的脖子上。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="50" width="1600" height="2259"]

[saku_window]
#朔
谢谢……不过，套装配这么可爱的项链，是不是有点不搭啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那就把套装脱掉吧。[p]

[saku_window]
#朔
全裸配项链也太恶心了吧……[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
我还以为朔就喜欢那样呢。[p]

[saku_window]
#朔
哪里会有那种变态的社会人啊！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
切——真无聊。[p]

[saku_window]
#朔
别「切」啦！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊，对了。喂，朔，把海豚这样对在一起……[p]

;;; スチル表示
#
[default_window]
[mask time=" 300" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG3/CG3_2.jpg" time="0"]
[mask_off time="500" wait="true"]

渚拿着金色的海豚，我拿着银色的海豚，两只海豚从正面靠在一起。[p]
这样一来，正好像两只海豚在亲吻一样。[p]

[nozomi_window]
#渚
啵！[p]

[saku_window]
#朔
真的是「啵」呢。[p]

#
[default_window]
就在那一瞬间──[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="shiro.jpg" time="200"]
[bg storage="CG3/CG3_3.jpg" time="100"]
[wait  time="400"]
[bg storage="shiro.jpg" time="200"]
[bg storage="CG3/CG3_2.jpg" time="100"]
[wait  time="400"]

[bg storage="unoshima02.jpg" time="800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
啊！[p]

#
[default_window]

是项链刚好反射了太阳的光吗？[p]
我突然感到一阵强烈的眩晕。[p]
眨了几次眼后……眼前还是那条刚才看的海豚项链。[p]
刚才有点软绵绵的奇怪感觉……但现在没事了。[p]
可能是因为夏天的炎热吧。[p]

[chara_show  name="望1_ネックレス有" face="egao" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
哈哈哈，这就是所谓的约会吧！丢人……但还是很开心呢！[p]

#
[default_window]
渚完全没在意刚才我的眩晕，一边笑一边这么说道。[p]
简直像画里描绘的约会一样。[p]
仿佛不真实一般，这一天限定的关系。[p]
甚至让我感到丢人的，无邪气的嬉戏。[p]
但是……[p]

[saku_window]
#朔
哈哈，是啊。[p]

#
[default_window]
看着渚玩得那么开心，我也忍不住露出了笑容。[p]

#
[mask time=" 500" graphic="shiro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="500" wait="true"]
[stopbgm]


@jump storage="scene3.ks"
