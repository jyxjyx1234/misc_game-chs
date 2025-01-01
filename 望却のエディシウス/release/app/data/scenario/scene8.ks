
;;; ループ③

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_08_{number}.mp3" number="1"]
[vostart]

[mask time=" 700" graphic="shiro.jpg"]
[playbgm storage="summer_city5.mp3" volume="20"]

[bg storage="aozora3_bokasi.jpg" time="0"]

[wait time=" 1000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[mask_off time="700" wait="true"]
;;; アクセサリー店前


[saku_window]
#朔
──────────[p]

#
[default_window]
…………『又是』同一个地方。[p]
到底过了多久，一直这样待着……[p]
确认一下自己的身体状况。[p]
那种特有的恶心感……这次没有。[p]
但取而代之的是，胸口一带隐隐作痛。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="aozora3_2.jpg" time="300"]
[bg storage="aozora3.jpg" time="200"]

不要……说是隐隐作痛已经不足以形容了。[p]
模糊的思绪开始逐渐清晰，同时也感知到了疼痛的程度。[p]

[bg storage="aozora3_3.jpg" time="300"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]

[saku_window]
#朔
啊，呃…………！[p]

[default_window]
#
如果要形容的话────就像被人用赤手紧紧握住心脏一般的剧烈疼痛。[p]
全身的感觉变得模糊不清，渐渐有种血液流动停止的危机感。[p]
无法正常呼吸，也无法发声，回过神时已经双手按着胸口倒在地上了。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="monolog_02.jpg" time="800"]

[saku_window]
#朔
……呃、…………呜呜！[p]

[default_window]
#
这是什么啊，这种疼痛────[p]
能感觉到身体正承受着巨大的负荷。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_aka.jpg" time="800"]

谁来救救我，谁啊……！[p]
拼命地向虚空伸出手。[p]
谁都可以，谁都行，求求你……！[p]
然而手只是徒劳地划过空气，没有人来握住它。[p]
就在这时，仿佛取而代之般，耳边传来了声音。[p]

[filter layer="0" blur="3"]
[filter layer="base" blur="3"]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="150" width="1100" height="1553" time=500]

[nozomi_window]
#望
朔。[p]

[saku_window]
#朔
……望、……啊……！[p]

[default_window]
#
看到那身影的瞬间，我清晰地回想了起来。[p]

[mask time=" 300" graphic="kuro.jpg"]
[playse buf="3"  storage="heartbeats.mp3" volume="40" loop=true]
[chara_hide_all time=0 wait=true]
[bg storage="densha_10_nozomi2.jpg" time="0"]
[mask_off time="200" wait="true"]

[wait time=" 500"]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="densha_14.jpg" time="0"]
[mask_off time="200" wait="true"]

望的身体被狠狠扭曲、碾压……[p]
肉体被车轮绞碎、骨头被削裂的声音──我听到了。[p]

[bg storage="kuro.jpg" time="800"]
[free_filter ]

本该死去的人却活着，这种──清晰到无法否认的印象。[p]
不可逆转的法则。[p]
可是，[p]
望却，[p]

[stopse buf="3"]
[chara_show  name="望2_ネックレス有" face="metoji" top="150" width="1100" height="1553" time=500]

就在眼前……依旧笑着。[p]

[chara_hide_all time=500 wait=true]

已经到了极限。[p]
早已超出了我能承受的信息量────。[p]

[bg storage="monolog_02.jpg" time="800"]

我的意识，在那里失去了。[p]


;;; お店の休憩室
[mask time=" 1000" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="bench_02_bokasi.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="700" wait="true"]
[stopbgm]
[playbgm storage="City_Ambi-Street02-1.mp3" volume="10"]

[filter layer="0" blur="3"]

[saku_window]
#朔
……嗯嗯……[p]

[default_window]
#
再次睁开眼时，我的身体在长椅上。[p]
远处传来游客的声音。[p]
这里是……商店街尽头的建筑吗？[p]
而旁边是望的身影。[p]

[bg storage="bench_bokasi.jpg" time="800" wait=false]
[chara_show  name="望2_ネックレス有" face="metoji2" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
你还好吗？[p]

#
[default_window]
听到望关心我的声音，我稍微恢复了一点冷静。[p]
但是……[p]

[chara_hide_all time=300 wait=false]
[bg storage="densha_13.jpg" time="500"]
[bg storage="monolog_02.jpg" time="800"]

刚才的景象，挥之不去地烙印在脑海中。[p]
──从站台掉落到铁轨上的望的身影。[p]
然后电车碾过望──像是爆裂一般，血花四溅──[p]
听到肉被碾碎、骨头被砸碎、削裂的声音──[p]
目睹了确凿无疑的『死亡』……我再也无法继续看下去了。[r]
[p]

[bg storage="bench_bokasi.jpg" time="500"]
[chara_show  name="望2_ネックレス有" face="metoji2" top="50" width="1600" height="2259" time=500]

但是……望现在就在这里。[p]
那么……带着真实感的那个场景是……[p]
果然只是个梦吧。[p]
我想这么相信。[p]
然而，就像还在梦中一样，意识依然模糊不清。[p]

[bg storage="bench.jpg" time="500"]
[free_filter ]

[saku_window]
#朔
望你才是……没事吧？[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

[nozomi_window]
#望
……啊。名字……算了，随便啦。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
为什么要担心我呢？[p]

#
[default_window]
[bg storage="bench_02.jpg" time="500" wait=true]

啊，是这样啊。[p]
又不由自主地把梦里的内容带到了现实中来。[p]
望就这样……明明好好地活在我面前啊……。[p]

[bg storage="bench.jpg" time="500" wait=false]

[saku_window]
#朔
不要……没什么。[p]

#
[default_window]
[bg storage="bench_02.jpg" time="500" wait=true]

此刻躺着的状态让我感到很舒服。[p]
一旦开始思考，就会搞不清楚自己身处何地，感觉脑子都快崩溃了。[p]

[bg storage="bench.jpg" time="500" wait=false]

所以不去想。[p]
尽量不去想。[p]
现在只想随波逐流，选择轻松的方向。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
是饰品店那边的人把你送到店里的休息室的。[p]

[saku_window]
#朔
……这样啊，我是倒在店门口了吧？[p]

[nozomi_window]
#望
是的。身体没事吧？[p]

[saku_window]
#朔
……还想再睡一会儿。[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
好的，可以继续睡哦。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
啊，不过……醒了之后，要不要一起去洞窟？[p]

[chara_mod  name="望1_ネックレス有" face="tuujou" cross=false time=500 wait=false]
#望
继续我们的约会。[p]

[saku_window]
#朔
好……去吧。[p]

#
[default_window]
好像在梦里也去了洞窟……[p]
不，不要……。[p]
一想到就不行了。[p]
因为太痛苦了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
…………[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

我感觉望正盯着我看。[p]
在闭上的视线另一侧，我感受到望的气息。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]

一瞬间，不安感涌了上来。[p]
……没事的。[p]
……这一切……只是梦里的事情罢了……。[p]
………………[p]
…………[p]
……[p]


;;; 洞窟へ移動
[mask time=" 800" graphic="kuro.jpg"]
[wait time=" 1000"]
[bg storage="bench.jpg" time="0"]
[mask_off time="800" wait="true"]

醒来后，身体感觉轻松了许多。[p]
按照望的提议，前往洞窟。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3"  storage="summer_beach2.mp3" volume="30" loop=true]
[playse buf="1"  storage="walking.mp3" volume="30" loop=true]
[bg storage="michi03.jpg" time="1200"]
[wait time=" 1500"]

[bg storage="umi03.jpg" time="1200"]
[wait time=" 1500"]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="doukutsu_01.jpg" time="0"]
[fadeoutse buf="3"]
[fadeoutse buf="1"]
[wait time=" 300"]
[mask_off time="300" wait="true"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

令人惊讶的是，梦中见过的洞窟和这里一模一样。[p]
拿着微微发光的灯笼，向深处走去。[p]

[playse buf="1" storage="walking.mp3" volume="30" loop=true]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="doukutsu_03.jpg" time="0"]
[chara_show  name="望2_ネックレス有" face="metoji2" top="150" width="1100" height="1553" time=500]
[mask_off time="700" wait="true"]
[playbgm storage="02Unopened.mp3" volume="40"]

这次是望走在前面。[p]
她看起来像是有想去的地方。[p]
跟在望的身后走着。[p]
周围没有人影。[p]
除了我和望，这洞窟里空无一人。[p]

[chara_hide_all time=500 wait=true]
[playse buf="3"  storage="inside_cave.mp3" volume="30" loop=true]

难得的是，望几乎没有主动开口说话。[p]
她是不是知道我状态不佳，所以故意不跟我搭话？[p]
如果真是这样，那还真是让我感激不尽。[p]
脚步声和偶尔水滴落入水洼的声音在静谧中回荡着。[p]

[fadeoutse buf="1"]

不久后，我们走到了尽头。[p]

[chara_show  name="望2_ネックレス有" face="metoji2" top="150" width="1100" height="1553" time=500]

望忽然回过头来。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]
[stopse buf="1"]

[nozomi_window]
#望
朔。[p]

[saku_window]
#朔
嗯？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
有件事想单独跟你聊聊。所以才带你到这里来。[p]

[saku_window]
#朔
想聊的事？[p]

[nozomi_window]
#望
嗯。[p]

[saku_window]
#朔
想聊的事……是什么？[p]

[chara_mod  name="望1_ネックレス有" face="metoji4" cross=false time=500 wait=false]

[nozomi_window]
#望
那个嘛……[p]

[default_window]
#
望露出一副思考的样子。[p]
然而──[p]

[chara_hide_all time=100 wait=true]
[stopse buf="3"]
[stopbgm]
[chara_show  name="望2_ネックレス有" face="tuujou2" top="-160" width="2558" height="3541" time=200]
[anim name="望2_ネックレス有" top="-130" time=200]

[nozomi_window]
#望
抱歉，其实是骗你的。[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

就在那一瞬间，眼前有什么东西闪了一下。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bgmovie storage=zangeki.mp4]
[playse buf="3"  storage="knife_nozomi.mp3" volume="40"]
[wait time=670]
[stop_bgmovie]
[stopse buf="3"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[saku_window]
#朔
────────────────────[p]

#
[default_window]
[bg storage="red.jpg" time="200"]
[bg storage="doukutsu_03.jpg" time="300"]

[saku_window]
#朔
──────────────咦？[p]

[default_window]
#
[bg storage="doukutsu_04.jpg" time="300"]

慌忙摸向脖子……[p]
……发现正在流血。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="red.jpg" time="200"]
[bg storage="doukutsu_04.jpg" time="300"]

而且还是大量的血。[p]
用手捂住也止不住地涌出来。[p]

[saku_window]
#朔
什、啊……[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="red.jpg" time="500"]

[default_window]
#
但我很快明白了。[p]
『望用刀划伤了我的脖子』这件事。[p]
虽然伤口不深，但脖子上那种从未感受过的灼热感——是血液的热度——正缓缓扩散开来。[p]
然后──[p]
手中的刀子，倒握了过来──[p]

;;; スチル表示

[setreplay name="CG9" storage="scene8_replay.ks" label="*CG9_replay"]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sasumae_1.jpg" time="500"]
[cg storage="CG9/CG9_sasumae_1.jpg"]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[mask_off time="300" wait="false"]

[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[saku_window]
#朔
望，你在干什……！！？[p]

[nozomi_window]
#望
………………[p]

[default_window]
#
[bg storage="CG9/CG9_sasumae_2.jpg" time="800"]
[cg storage="CG9/CG9_sasumae_2.jpg"]

[nozomi_window]
#望
为什么……[p]

[default_window]
#
[bg storage="CG9/CG9_sasumae_3.jpg" time="800"]
[cg storage="CG9/CG9_sasumae_3.jpg"]

[nozomi_window]
#望
为什么，不让我死呢？[p]

[saku_window]
#朔
────────啊[p]

#
[default_window]

[playbgm storage="01Voices_horror.mp3" volume="50"]
[kanim layer=0 keyframe="shake" time="2000" count="infinite"]
[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

啊────[p]

这一次，尤其糟糕……是个可怕的噩梦。[p]
望──想要杀了我。[p]
瞬间，身体僵住了。[p]

;ナイフ部分ズーム
[bg storage="CG9/CG9_sasumae_2_3.jpg" time="800"]

然后，那把单纯为了『刺下去』而握紧的刀子。[p]

[bg storage="kuro.jpg" time="800"]

几乎是下意识地，用双臂护住了脸。[p]
纯粹的恐惧。[p]
死亡的预感。[p]

[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

但是，要杀人什么的────。[p]
……『一般来说』应该会产生犹豫。[p]
就在那一瞬间，这个念头闪过脑海。[p]

[mask time=" 400" graphic="kuro.jpg"]
[stop_kanim]
[bg storage="CG9/CG9_sashi0_1.jpg" time="0"]
[cg storage="CG9/CG9_sashi0_1.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="250" wait="true"]
[playse buf="3"  storage="knife_saku.mp3" volume="40"]

[wait time=" 500"]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi1_1.jpg" time="0"]
[cg storage="CG9/CG9_sashi1_1.jpg"]
[mask_off time="250" wait="true"]

[wait time=" 500"]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi2_1.jpg" time="0"]
[cg storage="CG9/CG9_sashi2_1.jpg"]
[mask_off time="250" wait="true"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

脖子上，突然有某种炙热的东西刺了进来。[p]
这已经不是轻轻擦过的程度──[p]

[mask time=" 400" graphic="red.jpg"]
[wait time=" 400"]
[bg storage="CG9/CG9_sashi_udenashi_3_1.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_1.jpg"]
[mask_off time="250" wait="true"]

只是为了完成那单一的目标────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_2.jpg"]
[mask_off time="250" wait="true"]

深深地，深深地，深深地──────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_3.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_3.jpg"]
[mask_off time="250" wait="true"]

仿佛要刺到脊髓一般──────[p]

[bg storage="red.jpg" time="800"]

[saku_window]
#朔
──咕……啊、啊啊啊啊啊啊啊啊啊啊！！[p]

#
[default_window]
[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

几乎是反射性地叫了出来。[p]
疼痛伴随着炙热感。[p]
炙热感不由自主地让人联想到死亡。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg"]

好烫。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

好烫……呃！！！[p]
几乎是下意识地，双臂双腿用力挣扎着抗拒。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_3_1.jpg" time="800"]

但是望完全没有松手。[p]
不对──[p]

[mask time=" 400" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="300"]
[mask_off time="250" wait="true"]

不仅如此，她还在更用力地把刀刃刺进去。[p]
为了绝对完成杀人的目标，只是为了这个信念──[p]
我……[p]
不知不觉中，我拼命想要止住从脖子里流出来的液体。[p]
内心被恐惧扭曲，甚至不知道自己现在在做什么……[p]

[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

[nozomi_window]
#望
……明明只需要死一次就够了啊。[p]

#
[default_window]
[bg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg"]

啊啊────已经不行了。[p]
力气……[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg"]

用不上了……………………[p]

;;; 以降、セリフごとに刺される演出を入れる。ここから
[playbgm storage="01Voices_horror2.mp3" volume="50"]

[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_5.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_5.jpg"]
[playse buf="3"  storage="knife_saku.mp3" volume="40"]
[nozomi_window]
#望
明明早就做好了死的准备。一次又一次下定决心去死，然后去实行……！[p]

[wait time=500]

#望
可是，却没能死成──[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg"]

[nozomi_window]
#望
──一次又一次别来救我啊！！！[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg"]

[nozomi_window]
#望
你这个伪善者。[p]

[wait time=500]

#望
如果你要妨碍我……那就由你来……[p]

#
[default_window]
[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_7.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_7.jpg"]

[nozomi_window]
#望
去死吧[p]

#
[default_window]
[bg storage="red.jpg" time="2500"]

………………………………………………………………………………………………[p]
………………………………………………………………………………………………[p]
………………………………………………………………………………………………[p]
………………………………………………………………………………………………[p]
──────────。[p]


[mask time=" 1000" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[wait time=4000]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[skipstop]
[autostop]

[mask_off time="200" wait="true"]

;;; ループエフェクト
[bgmovie storage=loop4.mp4]
[wait time=1000]
[wait time=12000]
;ここのwaitは動画の秒数分

[stop_bgmovie]
[stopbgm]

[wait time=5000]

@jump storage="scene9.ks"
