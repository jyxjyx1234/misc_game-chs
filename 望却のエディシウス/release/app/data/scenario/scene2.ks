
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
不知不觉间，我──[p]
在不经意间，一直──[p]
总觉得，我一直在为这一刻做准备──[p]

[mask time=" 500" graphic="shiro.jpg"]
[wait time=" 300"]
[playse buf="3"  storage="nozomi_echo.mp3" volume="100"]
[bg time=" 0" storage="densha_05.jpg"]
[wait time=" 1200"]
[mask_off time="2500" wait="true"]
[fadeoutse buf="3"]

[saku_window]
#朔
──嘶！[p]

#
[default_window]
[playse buf="3" storage="rail_station.mp3" volume="30" loop=true]

回过神来，我的脚不知不觉间已经要踏出站台的另一侧了。[p]
然而，就在最后一刻，我似乎听到有人在呼唤我，猛然惊醒过来。[p]
仿佛──有一个声音在阻止我，那样的声音──[p]
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
我凝视着眼前飞速驶过的列车……[p]
随即，站务员似乎抓住了我的身体，大声地警告我……我有这种感觉。[p]
但是，我已经无暇顾及那些了。[p]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[bg storage="densha_06.jpg" time="800"]

『我试图自杀』。[p]
我？[p]
一直全身心投入工作，甚至没有时间去考虑其他事情的我，竟然会……[p]

[bg storage="monolog_01.jpg" time="500"]
但是…………[p]
通过这个无意识的行为，我不得不意识到了。[p]
不知从什么时候开始，我已经达到了极限。[p]

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
身体里的力气一下子被抽空了。[p]
是因为刚才试图自杀，还是因为意识到了自己的真心……又或者是两者兼而有之。[r]
[p]
眼泪不受控制地流了下来。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

[saku_window]
#朔
呜、呜啊啊啊啊啊啊…………我……再也不想去上班了啊啊啊…………讨厌……真的……讨厌讨厌讨厌啊啊啊……！！！[r]
[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
_　[r]
_　[cm]
[bg storage="densha_06.jpg" time="0"]
[mask_off time="300" wait="true"]

完全忘记了周围还有人，我只是一个劲地哭泣。[p]
明明知道自己在哭，却怎么也止不住眼泪……[p]
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

哭了一阵子后，心情稍微平静了下来。[p]

[bg storage="densha_hiru.jpg" time="800"]
[playse buf="3"  storage="Train.mp3" volume="20" loop=true]
[playbgm  storage="02_tsuikai.mp3" volume="20"]

我坐上了另一辆列车。[p]
回家的话可能会想起工作的事，现在去上班更是不可能。[p]
没有确定目的地，就这样打算随便去哪里。[p]
不这样做的话，内心的躁动就无法平息。[p]

[playse buf="1" storage="Vibration.mp3" volume="60"]

[saku_window]
#朔
啧[p]

#
[default_window]
[fadeoutse buf="1"]
看了看手机，是工作上的前辈打来的电话。[p]
因为到了上班时间还没来，所以联系我了吧……[p]
我条件反射般地关掉了手机电源。[p]
肯定会被骂的。[p]
绝对会被骂的……[p]
虽然明白……[p]
但现在我只想逃避。[p]

;;; 暗転
[mask time=" 300" graphic="kuro.jpg"]
[fadeoutbgm]
[fadeoutse buf="3"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

终于，列车停靠在一个站台，我下了车。[p]

;;; 駅前
[stopbgm]
[stopse buf="3"]
[bg storage="unoshimaeki01.jpg" time="800"]
[playbgm  storage="04Faraway.mp3" volume="40"]

卯之岛站。[p]
虽然是著名的旅游景点，但可能因为是工作日的早晨，人并不是很多。[p]

[bg storage="michi04.jpg" time="800"]

出了车站，过了桥就是一个大型温泉设施。[p]
反正也没洗澡……[p]
就在那里好好放松一下吧……[p]

;;; 長い橋の上
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

一边思考着今天一天的计划，一边过桥。[p]
幸运的是我有足够的钱，可以吃些平时不吃的美食……[p]

[fadeoutse buf="3"]
[bg storage="unoshima01.jpg" time="800"]

走了一会儿，温泉设施就出现在眼前。[p]
幸运的是，看起来从早上就开始营业了。[p]
……感觉心情稍微有点雀跃。[p]
对自己意外简单的心情感到有些惊讶……[p]
不过，比起跳上火车……这种倾向要好得多。[p]

;;; 温泉施設前
[bg storage="onsen_03.jpg" time="800"]
[stopse buf="3"]

就在我这么想着，准备进去的时候。[p]

[bg storage="onsen_02.jpg" time="800"]
[fadeoutbgm]

[saku_window]
#朔
……？[p]

#
[default_window]
从入口旁边感受到一道强烈的视线。[p]

[bg storage="onsen_04.jpg" time="800"]

与其说是在等人，倒不如说……感觉像是在看我，但可能只是我的错觉吧。[p]
一定是我的错觉。[p]
那样的女孩子怎么可能会有事找我。[p]

[bg storage="onsen_02.jpg" time="500"]

我决定无视她，正要走进入口的时候。[p]

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
突然，那个女孩子挡在我面前，对我搭话。[p]
难道说…………[p]
她把我当成可疑人物了……？[p]

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
那个……能不能和我一起泡温泉！？
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

她刚才说什么？[p]
突如其来的话语太过出乎意料，我愣住了几秒钟。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
我是说『能不能和我一起泡温泉！？』[p]

[saku_window]
#朔
等等……我还没反应过来[p]

[delay speed=25]
#朔
首先你是谁啊？而且这里不是混浴！男女是分开的所以不能一起泡而且我现在还不想被抓让我一个人进去吧[p]

#
[default_window]
[resetdelay]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
哇，你说话好快啊[p]

[saku_window]
#朔
因为你突然提出这么过分的要求啊！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gyagu2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
不是这样的！我怎么可能想和你一起洗澡呢。只是听说情侣优惠比较便宜，所以只想请你在前台装一下而已[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
你误会了啦，啊哈哈。真是个奇怪的人[p]

[saku_window]
#朔
那你去找别人吧。我想一个人安安静静地休息，不想被人打扰[p]

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
求求你了！只要在入口装一下就行！只要进去一次就成既定事实了！[r]
[p]

[saku_window]
#朔
所以说找别人不也行吗！而且你这说法听着就不对劲！？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望3_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
我刚才一直在找合适的人，但都是大叔...年龄差太多看起来不自然吧？对吧？[r]
[p]

[saku_window]
#朔
别「对吧」我。总之我要自己一个人进去了...[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
诶——等等啊——！我什么都愿意做啦！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
;;; 温泉施設ロビー
[playse buf="3" storage="auto_door.mp3" volume="30"]
[bg storage="onsen_05.jpg" time="800"]
[wait time=" 1000"]

我无视她的恳求，走进了入口。[p]
脱掉鞋子，把鞋柜钥匙交给前台。[p]

[mob_window]
#受付
请问需要租借什么物品吗？[p]

[saku_window]
#朔
这套毛巾套装麻烦了[p]

[mob_window]
#受付
那个...请问是一位客人吗？[p]

[saku_window]
#朔
啊？好的——[p]

#
[default_window]
前台露出了疑惑的表情。[p]
虽然感到有些违和，但就在我准备回答的瞬间，旁边突然传来一个声音。[p]

[chara_show  name="望1_ネックレス無" face="egao" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#？？
请给我们使用情侣优惠！还有我也要租借毛巾套装！[p]

[mob_window]
#受付
好的，明白了。那么请慢慢享受[p]

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
…………喂你……！！[p]

;;; 望立ち絵表示
[chara_show  name="望2_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望2_ネックレス無" top="20" time=350]
[anim name="望2_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#？？
没关系嘛，又不会少什么！反而更划算不是吗？[p]

[saku_window]
#朔
正常人会对陌生人提这种要求吗……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
那就当我不正常好了[p]

[saku_window]
#朔
怎么看都不正常啊……你对谁都这样吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
我没有。请不要把我当成那种随便的女人[p]

[saku_window]
#朔
我可没那么说！[p]
等等……真的没有吗？真的？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
真的啊！只是为了活下去不得不这么做，我也是别无选择[p]

#
[default_window]
为了活下去而拼命想用情侣优惠的人到底在哪里啊。[p]
她真的这么缺钱吗……[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#？？
话说这边是女浴室哦。你要跟到哪里啊？啊，难道是那种心理上是女性的人？[r]
[p]

[saku_window]
#朔
不是啦。只是你说的话太震撼了，我大脑当机了而已[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#？？
原来是用这种借口想混进女浴室啊……[p]

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
啊哈哈。啊，洗完澡后在休息区集合吧。那么再见～[p]

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

我转身钻进了男浴室的门帘。[p]
因为是工作日的早上，人很少。[p]
几乎是包场状态。[p]
终于可以好好清洗身体了……！[p]
而且……这也是慢慢治愈平日疲劳的机会。[p]
我已经好几年没有泡过浴缸了……[p]

;;; 温泉
[bg storage="shiro.jpg" time="200"]
[playbgm  storage="04Faraway.mp3" volume="40"]
[bg storage="onsen_06.jpg" time="800"]

[saku_window]
#朔
哈～～……！[p]

#
[default_window]
我伴随着一声长叹沉入了浴池。[p]
舒服得仿佛灵魂都要飘出体外了。[p]
也许我的身体一直都在渴望这个。[p]
身体是诚实的。[p]
但是，因为沉浸在工作中，突然想起的还是只有工作的事。[p]

[saku_window]
#朔
……联系……待会儿得回复啊……[p]

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
……好吧。原本的目的已经达到了[p]

#
[default_window]

接下来该怎么办呢……[p]
一边思考着，一边慢慢爬上卯之岛的坡道。[p]

[bg storage="unoshima02.jpg" time="800"]

路上有复古怀旧的商店街，还有能一览风景的观景点。[p]
边散步边观光也不错。[p]

[playse buf="3" storage="start_running.mp3" volume="20"]
[nozomi_window]
#？？
……啊，哈，哈……[p]

#
[default_window]
[bg storage="unoshima03.jpg" time="800"]
这几年我根本没有观过光。[p]
最后一次大概是用第一份工资租车的时候。[p]
那种坐上车的瞬间，世界一下子变得广阔的全能感。[p]
现在的状况和那时有点相似。[p]
就像玩RPG游戏时，随着剧情推进，原本去不了的地方也能去了……那种感觉。[p]

[playse buf="3" storage="start_running.mp3" volume="30" loop=true]
[nozomi_window]
#？？
哈……哈……！！[p]

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
等、等等我啊……！[p]

[saku_window]
#朔
诶，哇啊啊啊！？[p]

#
[anim name="望1_ネックレス無" top="120" time=350]
[anim name="望1_ネックレス無" top="150" time=250]
[anim name="望1_ネックレス無" top="120" time=350]
[anim name="望1_ネックレス無" top="150" time=250]
[wait  time="200"]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[nozomi_window]
#？？
为什么自己先回去了啊！[p]

[saku_window]
#朔
为什么……也没什么特别的理由，我们没必要一起走吧[p]

#
[default_window]
为什么我会被追着跑啊？[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="odoroki" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
不是说好在休息处集合吗！你还回答了「好好」呢。你忘了吗？[r]
[p]

[saku_window]
#朔
……啊[p]

#
[default_window]
我完全不记得了。[p]
是在去更衣室时分开的时候说的吗。[p]
好像有点印象，当时急着想泡澡就随便应付了一下……[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="utsumuki" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
……敷衍[p]

[saku_window]
#朔
对、对不起[p]

#
[default_window]
我条件反射地道歉了。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="tuujou" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
光是形式上的道歉可不行。作为惩罚，今天请陪我约会一整天[p]

[saku_window]
#朔
不要……那个我可不会做……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gyagu2" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
这么可爱的女孩子邀请你竟然还拒绝！？[p]

[saku_window]
#朔
你还真敢自称可爱啊……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="metoji" top="120" width="1100" height="1553" time=250]
[anim name="望2_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
我最近发现，自我表现欲强一点生活会更有趣哦[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="tuujou" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#？？
那我去找别人吧。谢谢你陪我聊天，大哥哥[p]

[saku_window]
#朔
嗯……适可而止吧[p]

#
[chara_hide_all time=500 wait=true]
[default_window]
这很容易被误会成援交或者仙人跳之类的吧。[p]
毕竟是为了情侣折扣而随便找陌生男人搭讪的人啊。[p]
要是真陪她约会，最后肯定会被要求买名牌包或珠宝之类的吧。[p]
然后分开后，买给她的东西就会被挂到二手网站上卖掉。一定是这样没错。[r]
[p]
没人会故意往这种显而易见的套路里钻。[p]

[fadeoutbgm]
[bg storage="monolog_01.jpg" time="500"]

但是……[p]
不知是福是祸，我有钱。[p]
作为擅自请假得来的非日常，和不认识的女孩子一起度过一天也不坏。[p]
反而……这可能是个很好的机会来发泄长期积累的压力。[p]
啊对了。这不过是单纯的色心作祟罢了。[p]
不管花多少钱都无所谓。[p]
我明白这是卑劣的欲望。[p]
但是，如果有机会的话…………[p]
真想和她共度一夜。[p]
被工作压抑的欲望，如同决堤般涌了出来。[p]
上次和别人「做」还是在大学二年级的时候，已经好几年没做了……[p]

[playse buf="3"  storage="heartbeats_fast.mp3" volume="40" loop=true]

心脏开始扑通扑通地跳个不停。[p]
感到一股难以抑制的兴奋，差点就要笑出来了。[p]
当然绝不能表现出来。[p]
光是想象「那个时候」的场景，下半身的中心就开始充血……越想欲望就越强烈。[r]
[p]

[fadeoutse buf="3"]
[bg storage="shiro.jpg" time="200"]
[bg storage="unoshima02.jpg" time="800"]

[saku_window]
#朔
等一下[p]

#
[default_window]
[chara_show  name="望2_ネックレス無" face="odoroki" top="350" width="760" height="1073" time=600]
[stopse buf="3"]

不知不觉中，我叫住了正转身要走的她。[p]
虽然我觉得自己真是太差劲了……[p]
休息工作的势头也推动着我，已经无法停下来了。[p]

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
嗯？……啊，难道是改变主意了吗～？觉得放弃年轻女孩太可惜了？
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

虽然完全被看穿了，但我绝对不会说是的。[p]

[saku_window]
#朔
我今天还没吃东西呢。既然在这里遇到了，也算是缘分，要不要一起吃个饭？[p]
费用我来付[p]

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
诶——这是在说约会吗！？
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

看来她对「约会」这个词特别在意……[p]
我还以为她是冲着钱来的，看来并非如此。[p]

[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

不过，现在下定论还为时尚早。[p]
接下来才是真正考验的时候。[p]
总之。[p]
无论如何，我一定要和她做爱。[p]
下定这个决心后，我感觉稍微有了些精神。[p]

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

一进店，在服务员的引导下就坐在了空位上。[p]
可能因为还是早上，客人并不多。[p]

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
说起来还没问你名字呢[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_2.jpg"]

[nozomi_window]
#？？
诶？你是打算搭讪店员吗！明明我就在这里！[p]

[saku_window]
#朔
不是店员啦！……我是说你的名字[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_3.jpg"]

[nozomi_window]
#？？
我也不知道哥哥的名字啊。只知道你是个想闯进女浴室的变态[r]
[p]

[saku_window]
#朔
我可不想被向陌生男人要求情侣折扣的你这么说！[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[cg storage="CG1/CG1_menu_1.jpg"]

[nozomi_window]
#？？
啊，我想尝尝这个奶油苏打饮料[p]

[saku_window]
#朔
别转移话题啊[p]

#
[default_window]
话说……你没喝过奶油苏打吗？[p]
我还以为是每个小孩都会喝的东西呢。[p]
看来也有特别的孩子啊。[p]

[bg storage="CG1/CG1_menu_3.jpg" time="800"]
[cg storage="CG1/CG1_menu_3.jpg"]

[nozomi_window]
#？？
切——[p]

[saku_window]
#朔
回到刚才的话题。要是约会的话，不知道名字就没法直呼其名了吧？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_5.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_5.jpg"]

[nozomi_window]
#？？
果然这是约会啊……[p]

[saku_window]
#朔
明明最先说约会的是你那边啊[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

[nozomi_window]
#？？
渚[p]

[saku_window]
#朔
渚？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_4.jpg"]

[nozomi_window]
#渚
对。我的名字。我叫渚[p]

[saku_window]
#朔
姓呢？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_6.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_6.jpg"]

[nozomi_window]
#渚
姓的话……得再提高一下好感度才行[p]

[saku_window]
#朔
行行，就这样吧[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_8.jpg"]

[nozomi_window]
#渚
试着叫叫看嘛[p]

[saku_window]
#朔
……渚[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#渚
请不要这么随便地直呼其名[p]

[saku_window]
#朔
明明是你让我叫的吧！[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
骗你的啦。开玩笑的。那么，哥哥呢？[p]

[saku_window]
#朔
啊……名字吗？我叫小清水朔[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[nozomi_window]
#渚
那我也直接叫你朔。这下我们正式成为恋人了呢！[p]

#
[default_window]
虽然有很多想吐槽的地方。[p]
不过，约会啊恋人啊……感觉不知不觉间朝着好的方向发展了。[p]

[saku_window]
#朔
好好。总之，你想点什么？[p]

#
[default_window]
服务员站在稍远的地方等待前来点单，这种情况实在有点尴尬。[p]

[bg storage="CG1/CG1_menu_5.jpg" time="800"]
[cg storage="CG1/CG1_menu_5.jpg"]
[nozomi_window]
#渚
那就要奶油苏打和……烤嫩鸡肉饭沙拉套餐，再单点一份薯条，还有巧克力香蕉芭菲甜点！饭要大份哦♪[r]
[p]

#
[default_window]
_　[r]
_　[cm]

太多太多太多太多了！[p]
这明显不是一个人能吃完的量啊。而且还是从早上开始！[p]

[saku_window]
#朔
我姑且问一下，你真的能全部吃完吗？[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[nozomi_window]
#渚
吃不完的话就让朔帮我吃掉啦[p]

[saku_window]
#朔
你就指望我啊[p]

#
[default_window]
[bg storage="CG1/CG1_menu_5.jpg" time="800"]

[nozomi_window]
#渚
人生中总有一次想不考虑价格，把所有想吃的东西都点一遍嘛。啊，服务员！可以点单了吗？[r]
[p]

[saku_window]
#朔
等等，我还没决定好呢！[p]

#
[default_window]
等候的服务员已经过来了，我慌忙看起了菜单。[p]
随便点了一份映入眼帘的凯撒沙拉。[p]

[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[nozomi_window]
#渚
你只吃沙拉吗？[p]

[saku_window]
#朔
反正最后肯定要吃你剩下的东西……[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_9.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_9.jpg"]

[nozomi_window]
#渚
最好别小看我的食量哦。我会让你后悔的。到时候哭鼻子也来不及了！[r]
[p]

#
[default_window]
_　[r]
_　[cm]

这莫名其妙的自信是从哪来的啊！[p]
渚一副迫不及待的样子。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="famires2.jpg" time="0"]
[mask_off time="700" wait="true"]

我们一边闲聊一边等待料理上桌时……[p]
奶油苏打和沙拉率先送到，随后点的其他菜品也陆续摆上了桌面。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG1/CG1_eating_5.jpg" time="500"]
[cg storage="CG1/CG1_eating_5.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
哇啊……！这、这么多真的可以吃吗？[p]

[saku_window]
#朔
不是你自己点的吗[p]

#
[default_window]
[bg storage="CG1/CG1_eating_4.jpg" time="800"]
[cg storage="CG1/CG1_eating_4.jpg"]

[nozomi_window]
#渚
嗯哼哼～♪ 好兴奋，好兴奋♪[p]

[saku_window]
#朔
嘛，看你开心就好……[p]

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
每吃一口，渚的表情就变化多端。[p]
我不知不觉盯着她看，感觉自己好像成了监护人似的。[p]
[bg storage="CG1/CG1_eating_kasu_4.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_4.jpg"]
……约会，吗。[p]
虽然很好奇她为什么这么执着。[p]
如果渚想约会的话，对我来说再好不过了。[p]
为了这个目的，请她吃顿饭我倒是不介意。[p]


;;; 暗転
[fadeoutse buf="3"]
[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="monolog_01.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]

不介意……我本是这么想的。[p]

[wait time=" 300"]
[bg storage="CG1/CG1_eating_kasu_7_zoom.jpg" time="800"]
[cg storage="CG1/CG1_eating_kasu_7_zoom.jpg"]
[stopse buf="3"]

[nozomi_window]
#渚
呃、好难受……再也吃不下了……[p]

#渚
………………[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_9.jpg"]

[nozomi_window]
#渚
开玩笑的啦。你真以为我会那么说吗？你也太天真了[p]

[saku_window]
#朔
那当然了[p]

#
[default_window]
[playse buf="1"  storage="OnomaImpact03.mp3" volume="40"]
[wait time=" 500"]

[saku_window]
#朔
……毕竟几乎都是我在吃啊！[p]

#
[default_window]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

摆在渚面前的一大堆料理中，只稍微动过的烤鸡肉、大份米饭，还有炸薯条都被移到了我面前。[p]
至于渚本人，只把沙拉和芭菲吃完了，现在正用吸管戳着奶油苏打里的冰淇淋喝着。[p]
偶尔还像是突然想起来似的伸手去拿薯条。[p]

[bg storage="CG1/CG1_tuujou_soda_1.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_1.jpg"]

[nozomi_window]
#渚
嘿嘿[p]

[saku_window]
#朔
别嘿嘿[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_4.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_4.jpg"]

[nozomi_window]
#渚
看你好像很饿的样子，我才不得不让给你的。话说回来，奶油苏打真的超级好喝呢[p]

[saku_window]
#朔
你这说法真有意思……不过，作为男人这点量倒是能吃得下[p]

#
[default_window]
可能是因为在做平常不会做的事，我确实有点饿……[p]
但即便如此，这份量也是勉强能吃完的程度。[p]

[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_8.jpg"]

我专心吃了一会儿，不知不觉间发现渚一直盯着我看。[p]
难道是我脸上沾到什么了吗……[p]
被人盯着吃饭也让人觉得不自在。[p]
等嘴里的食物咽下去后，我向渚提出了疑问。[p]

[saku_window]
#朔
……你有什么想说的吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_3.jpg" time="800"]
[cg storage="CG1/CG1_tuujou_soda_3.jpg"]

[nozomi_window]
#渚
……朔，你真是与众不同呢[p]

[saku_window]
#朔
我最不想听到你这么说[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

[nozomi_window]
#渚
为什么要对我这么温柔呢？[p]

[saku_window]
#朔
……谁知道呢？[p]

#
[default_window]
虽然是理所当然的事，但看来我还是被怀疑了。[p]
我故意装作不知道的样子，继续吃了起来。[p]
……这孩子肯定也有什么原因才会在这里吧。[p]
不过嘛，对我来说这都无所谓。[p]

[bg storage="monolog_01.jpg" time="800"]

就像海市蜃楼一样摇曳，下一瞬间就会消失不见……[p]
这种不可思议、不稳定又危险的关系。[p]
这种程度的距离感对现在的我来说正合适。[p]
不仅舒适，而且正好适合我方便利用渚。[p]

[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
这种时候说「我根本没有温柔对待你」会更帅气哦？[p]

[saku_window]
#朔
多谢指教[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

边聊天边把摆在桌上的料理吃完了。[p]
「约会」是不是就该是这样的呢？[p]
成为社会人之后就没有时间玩了，约会的方式都忘得一干二净了。[p]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[fadeoutse buf="3"]
[bg storage="unoshima08.jpg" time="0"]
[wait time=" 2000"]
[mask_off time="700" wait="true"]
[stopse buf="3"]
;;; 卯ノ島の坂道

出了店后，我问渚。[p]

[playbgm  storage="horizonblue.mp3" volume="40"]
[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=500 wait=true]

[saku_window]
#朔
渚为什么想约会啊？[p]

[chara_mod  name="望1_ネックレス無" face="gyagu1" cross=false time=600 wait=false]
[wait  time="300"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
因为我是处女！[p]

[saku_window]
#朔
别大声说这种话啊！[p]

#
[default_window]
而且这根本不是理由！[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="egao" top="50" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="20" time=350]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
骗你的啦[p]

[saku_window]
#朔
啊原来不是处女啊……[p]

#
[default_window]
虽然我并不觉得遗憾，但不知不觉做出了有点恶心的反应。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
你是问约会的理由吧？我决定今天要体验很多很多从未体验过的事情[r]
[p]

[saku_window]
#朔
所以你特意来到卯之岛是为了搭讪吗[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
不是为了搭讪。我只是觉得这里会有很多从远处来的人[p]

#
[default_window]

虽然她做的事完全就是在搭讪。[p]

[chara_hide_all time=500 wait=false]
[bg storage="aozora.jpg" time="800"]

确实，观光客……从远处来的人应该会很多吧。[p]
实际上比起早上，人流量已经增加了不少。[p]
但是，「从远处来的人」是什么意思呢？[p]
难道不是随便谁都行吗……？[p]
想和从远处来的人约会的理由。[p]
是不是完全不认识的对象反而更方便什么的？[p]
……不行，我搞不懂。[p]
是我的想象力太贫乏了吗……还是说渚其实什么都没想？[p]

[bg storage="unoshima08.jpg" time="800"]

我希望是后者。[p]

[chara_show  name="望1_ネックレス無" face="egao" top="50" width="1600" height="2259" time=500 wait=true]
[nozomi_window]
#渚
啊！你看啊！景色真是太棒了……！[p]

#
[default_window]
顺着渚所指的方向看去，卯之岛的全景尽收眼底。[p]

;;; 卯ノ島の眺望
[fadeoutbgm]
[mask time=" 300" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima07.jpg" time="500"]
[mask_off time="300" wait="true"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

[saku_window]
#朔
哇……真壮观啊[p]

#
[default_window]
[bg storage="unoshima07_zoom1.jpg" time="800"]
眼前展现的景色，见证了我和渚一路走来的历程。[p]
将目光投向水平线，天空的蓝色和海洋的碧绿在那里交汇。[p]
那是一种仿佛天空与海洋融为一体的深邃蓝色。[p]

[bg storage="unoshima07_zoom2.jpg" time="800"]
[nozomi_window]
#渚
……这样的景色，我还是第一次见。真美……[p]

#
[default_window]
渚双手扶着栏杆，凝视着眼前的景色。[p]
她睁大的眼睛闪闪发光，给人一种孩子般天真无邪的印象。[p]
我不知不觉中，视线从景色转移到了渚的表情上。[p]
她的表情就像是在努力将眼前铺展开来的景色鲜明地刻印在记忆中一样。[p]

[bg storage="unoshima07.jpg" time="800"]
[fadeoutbgm]
[saku_window]
#朔
（啊……我在干什么）[p]

#
[default_window]
[bg storage="unoshima08.jpg" time="800"]
[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=800 wait=true]

也许是注意到了我的目光，渚转过身来面向我。[p]

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
不，以前和家人来过一次，这是第二次了。这几年我根本没有出过门旅游[p]

#
[default_window]
准确地说，是没能出门旅游。[p]

[chara_mod  name="望2_ネックレス無" face="egao2" cross=false time=600 wait=false]
[nozomi_window]
#渚
我想更多地了解朔。毕竟是约会对象嘛[p]

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
那我来问吧。为什么穿着套装呢？看起来也不像是要去工作的样子……[p]

[saku_window]
#朔
呃，那个……[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
难道说……是在旷工！？[p]

[saku_window]
#朔
声音太大了啦！[p]

#
[default_window]
我不由自主地环顾四周。[p]
明明知道这里没有公司的人……[p]

[saku_window]
#朔
不过……你说对了。今天我是翘班来这里的[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
太好了，朔是个坏人啊。不知怎么的，我松了口气[p]

#
[default_window]
为什么说是坏人反而会让人安心呢……[p]
真是搞不懂年轻人在想什么。[p]

[saku_window]
#朔
我先说明，这真的是我第一次翘班[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
为什么要翘班呢？[p]

[saku_window]
#朔
……那个[p]

#
[default_window]
因为工作压力过大导致精神崩溃甚至考虑自杀……这种事没必要特意告诉渚。[p]

[saku_window]
#朔
等渚也成为社会人就会明白的[p]

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
主张真强啊！[p]

[chara_mod  name="望1_ネックレス無" face="tuujou" cross=false time=600 wait=false]

嘛，不管怎么看她应该还不是社会人吧……[p]
连泡温泉的钱都舍不得花。[p]

[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]

是学生吗……？[p]
话说回来，我还是不要过多打探她的私事为好。[p]
要是知道得太多反而会产生感情。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
话说回来真热啊。我好久没出门了……要不要吃点凉的东西？[p]

#
[default_window]
渚一边擦拭额头上冒出的汗水，一边这样说道。[p]
确实，我也正想找个地方乘凉呢。[p]

[chara_hide_all time=500 wait=false]
[bg storage="unoshima06.jpg" time="800"]

[saku_window]
#朔
那家咖啡店门口好像在卖冰淇淋，我们去吃那个吧[p]

#
[default_window]
[chara_show  name="望1_ネックレス無" face="odoroki" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
诶，可以吗！？[p]

[saku_window]
#朔
果然你是默认我请客啊……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=600]

算了，也无所谓。[p]

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
得赶快吃掉，不然就要化掉啦[p]

#
[default_window]

渚正在为从哪里开始吃这个堆成两层的甜筒冰淇淋而烦恼。[p]
她刚刚还在犹豫，转眼间就不顾我的忠告，大口咬下去，又舔又吃的……[r]
[p]
这样的样子让人联想到小动物。[p]

[saku_window]
#朔
别着急一口气吃完，小心牙齿会很敏感的哦[p]

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


话说回来，她吃得真香啊……[p]
虽然我自己也很久没吃冰淇淋了，但渚的反应，简直就像是……[p]
第一次吃冰淇淋一样，充满新鲜感，看起来很开心。[p]
加上刚才的奶油苏打，看来她很喜欢甜食啊。[p]
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
嗯～～～～～……！呜哇……我、我会小心的……[p]

#
[default_window]
看来已经来不及了。[p]

[bg storage="CG2/CG2_1_2_3.jpg" time="800"]
[cg storage="CG2/CG2_1_2_3.jpg"]
[saku_window]
#朔
我就说吧[p]

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
你说这话，自己的冰淇淋都快要化掉了哦。……啊，你看！[r]
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

我正嘲笑渚的时候，自己冰淇淋的上面一层滑落到地上了……[p]

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
哈哈哈哈。这就是嘲笑别人的下场哦？[p]

#
[default_window]
[bg storage="CG2/CG2_2_4_2.jpg" time="800"]
[cg storage="CG2/CG2_2_4_2.jpg"]

[saku_window]
#朔
呜呜……都怪夏天太热了……[p]

#
[default_window]
[mask time=" 500" graphic="shiro.jpg"]
[stop_kanim]
[chara_hide_all time=0 layer=1 wait=false]
[bg storage="unoshima06.jpg" time="0"]
[wait time=" 800"]
[mask_off time="500" wait="true"]

渚吃冰淇淋吃得那么起劲，我却把冰淇淋掉到地上了……[p]
就这样，我们比预想中更快地吃完了。[p]
发展比我想象的要快。[p]
本来就没有制定什么计划，自然也没考虑过约会路线。[p]

[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=500]

我正在考虑下一步去哪里。[p]

[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=500 wait=true]

渚却没有休息的意思，对周围的各种东西都表现出了兴趣……[p]
看她那副仿佛在说「看到的一切都很新鲜！」的样子，我不禁露出了微笑。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
啊，我们去那边的饰品店看看吧！[p]

[saku_window]
#朔
好好[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

我任由渚牵着手跟着她走。[p]
话说回来，我们不知不觉就牵上手了……[p]

[saku_window]
#朔
……！[p]

#
[default_window]

好、好软……！！[p]
感受到这样的触感，我……我要！[p]
我感觉到血液正在向下腹部集中。[p]
仅仅是牵个手而已。[p]
嘿嘿，身体果然是诚实的。[p]

[chara_mod  name="望1_ネックレス無" face="gimon" cross=false time=600 wait=true]

总觉得渚用怀疑的眼神看着我……[p]
危险危险。[p]
保持冷静，保持冷静。[p]
……明明刚才还在想着要做爱呢！真是的，我啊。[p]
嗯……现在还是让这孩子觉得开心吧。[p]

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
我一直想来这种店看看呢[p]

[saku_window]
#朔
你家那边没有吗？[p]

[chara_mod  name="望2_ネックレス無" face="gimon" cross=false time=600 wait=false]
[nozomi_window]
#渚
嗯～……可能没有吧？[p]

#
[default_window]
可能？……这是什么意思啊。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="tuujou" top="120" width="1100" height="1553" time=250]
[anim name="望1_ネックレス無" top="150" time=250]

[nozomi_window]
#渚
啊，你看你看。这个……[p]

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
居然是金色粪便的戒指，啊哈哈！有人会买这种东西吗？[p]

[saku_window]
#朔
朋友之间不是会买成对的吗？这边还有银色的呢[p]

[chara_mod  name="望2_ネックレス無" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
真的诶……原来还有买成对的方式啊[p]

#
[default_window]
这种方式当然是有的吧。[p]
我总觉得渚的言行举止中，时不时地缺乏一些女孩子的特质。[p]
不仅是女孩子的特质……连一般常识也欠缺。[p]
难道说，渚她……[p]
是不是一直待在那种……无处可去的女孩子聚集的地方？[p]
如果真是这样的话，倒也说得通。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
啊！你看这个，情侣项链！哇～，好可爱啊……[p]

#
[default_window]
渚拿起的是一条海豚项链。[p]
有金色和银色两种，海豚抱着珍珠的样子给人留下深刻印象。[p]
当我拿起两个仔细看时……[p]

[saku_window]
#朔
咦……奇怪？[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="CG3/CG3.jpg" time="800"]
[cg storage="CG3/CG3.jpg"]

金色和银色的海豚像是被吸引一样互相粘在了一起。[p]

[saku_window]
#朔
里面是不是装了磁铁啊[p]

[nozomi_window]
#渚
但是这个好像不会吸附在铁上呢。这是怎么回事呢……[p]

#
[default_window]
与其说是紧紧贴在一起，倒不如说是在轻微振动中相互靠近的样子。[p]
里面是不是装了什么具有相互吸引力的东西呢……[p]
总觉得有种说不出的神奇力量。[p]

[bg storage="unoshima02_zoom.jpg" time="800"]
[chara_show  name="望1_ネックレス無" face="wink" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
戴上这个的话，说不定就能知道朔的位置了呢。你看，就像那个，叫什么来着……那个一样[r]
[p]

[saku_window]
#朔
占卜？[p]

[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=600 wait=false]
[nozomi_window]
#渚
对对对！项链会飘～地浮起来，指示出你的位置也说不定哦？[p]

[saku_window]
#朔
那得是我戴着才行啊[p]

[chara_mod  name="望1_ネックレス無" face="gyagu2" cross=false time=600 wait=false]
[nozomi_window]
#渚
诶～！你不愿意戴吗！[p]

[saku_window]
#朔
我从来没特意戴过项链啊……[p]

#
[default_window]
而且西装配海豚项链也太奇怪了。[p]

[chara_mod  name="望1_ネックレス無" face="pien" cross=false time=600 wait=false]
[wait  time="200"]
[anim name="望1_ネックレス無" top="20" time=350]
[anim name="望1_ネックレス無" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
就今天戴一天嘛！拜托了！我什么都愿意做！[p]

[saku_window]
#朔
……你为什么这么想让我戴啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
因为这是约会啊？情侣装多让人向往啊！[p]

[saku_window]
#朔
好吧……既然渚你这么想的话[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス無" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
太好啦！啊，我要金色的海豚哦！[p]

[saku_window]
#朔
要是……你知道这不是免费的吧？[p]

#
[default_window]
[chara_hide_all time=600 wait=true]
拿着两条项链结了账，走出店外。[p]

[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[bg storage="unoshima02.jpg" time="0"]
[wait time=" 500"]
[mask_off time="700" wait="true"]

[chara_show  name="望1_ネックレス無" face="wink" top="50" width="1600" height="2259"]
[nozomi_window]
#渚
非常感谢。……哇～，好漂亮……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス無" face="odoroki" cross=false time=600 wait=false]

把金色的海豚递给她后，她在阳光下陶醉地欣赏着。[p]
能看到这样的表情，这点钱算不了什么。[p]

#
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス無" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス無" top="50" time=250]

[nozomi_window]
#渚
想试着戴上看看……嗯～，一个人好像戴不好啊……[p]

#
[default_window]
渚似乎在为难，但看起来又时不时地偷瞄这边。[p]
这家伙……是故意的吧。[p]

[saku_window]
#朔
给我一下[p]

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
诶[p]

#
[default_window]
我把双手绕到渚的脖子后面，试图扣上项链的搭扣。[p]
但是……咦，比想象中难啊。[p]
而且……[p]
太、太近了。[p]

[chara_mod  name="望2_ネックレス無" face="utsumuki" cross=false time=600 wait=false]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
	TYRANO.kag.ftag.master_tag.anim.log_join = true;
[endscript]

[nozomi_window]
#渚

……你该不会是故意装不会扣吧？哈！难道是想借机合法地摸女人的身体！？[r]
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
别把自己说成「女人的身体」好吗……[p]

[chara_mod  name="望1_ネックレス無" face="wink" cross=false time=600 wait=false]
[nozomi_window]
#渚
嘿嘿……我要是现在尖叫的话，朔就不是和我约会，而是要和警察来一场兜风约会了哦……[p]

[saku_window]
#朔
喂，一开始说要约会的不是你吗！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]
[chara_show  name="望2_ネックレス有" face="tuujou" top="-130" width="2558" height="3541" time=500]

虽然嘴上这么说着，项链的搭扣终于扣上了，我松开了手。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
啊，我来帮朔戴上。来，来[p]

#
[default_window]
她做出一副「稍微弯下腰」的姿势，我配合地半蹲下来，把银色的海豚项链递给渚。[r]
[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="gimon" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
嗯嗯……？确实意外地难啊……这里是这样……？[p]

#
[default_window]
看她和我一样也在费劲，我突然有点想捉弄她。[p]

[saku_window]
#朔
要是我现在尖叫的话，渚也得和警察来场兜风约会了吧[p]

#
[default_window]
[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500]

[nozomi_window]
#渚
无论发生什么都请不要叫警察哦[p]

[saku_window]
#朔
啊，好的[p]

#
[default_window]
渚突然认真的态度让我有点措手不及。[p]
她是有什么不想被警察知道的事情吗……[p]
嗯……离家出走的少女？[p]
难道说……她其实已经被父母报案寻人了？[p]

#
[chara_hide_all time=100 wait=true]
[bg storage="unoshima02.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
好啦。弄好了[p]

#
[default_window]
我胡思乱想的时候，项链已经戴在了我的脖子上。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="50" width="1600" height="2259"]

[saku_window]
#朔
谢谢……不过，穿着套装戴可爱的项链是不是有点不搭调啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那你可以脱掉套装哦[p]

[saku_window]
#朔
全裸只戴项链也太变态了吧……[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=600 wait=false]
[nozomi_window]
#渚
我还以为朔更喜欢那样呢[p]

[saku_window]
#朔
哪有这么变态的社会人啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="gyagu1" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
切——真没意思[p]

[saku_window]
#朔
别「切」了好吗[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊，对了。喂朔，把海豚这样放在一起……[p]

;;; スチル表示
#
[default_window]
[mask time=" 300" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG3/CG3_2.jpg" time="0"]
[mask_off time="500" wait="true"]

渚拿着金色的海豚，我拿着银色的海豚，把它们面对面靠近。[p]
这样一来，海豚就正好变成了接吻的样子。[p]

[nozomi_window]
#渚
啾！[p]

[saku_window]
#朔
是「啾」啊[p]

#
[default_window]
就在那一瞬间——[p]

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
唔！[p]

#
[default_window]

是阳光恰好反射在项链上了吗？[p]
我一瞬间陷入了强烈的眩晕中。[p]
眨了几下眼睛后……眼前的依然是刚才那条海豚项链。[p]
刚才还有种软绵绵的奇妙感觉……现在却什么都没有了。[p]
是夏天的炎热导致的吗？[p]

[chara_show  name="望1_ネックレス有" face="egao" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
啊哈哈，约会就是这样的啊！虽然有点丢人……但是很开心呢！[p]

#
[default_window]
渚似乎并没有注意到刚才的眩晕，笑着说出了这样的话。[p]
简直就像画中的约会一样。[p]
仿佛是谎言般，只属于今天的关系。[p]
天真无邪的玩闹，甚至让人感到有些丢人。[p]
但是……[p]

[saku_window]
#朔
哈哈，是啊[p]

#
[default_window]
看着渚那么开心的样子，我也不禁露出了笑容。[p]

#
[mask time=" 500" graphic="shiro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="500" wait="true"]
[stopbgm]


@jump storage="scene3.ks"
