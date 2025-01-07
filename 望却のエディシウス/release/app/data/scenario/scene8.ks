
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
…………『又』是同一个地方。[p]
究竟在这里待了多长时间……[p]
我确认了一下自己的身体状况。[p]
那种特有的恶心感……这次倒是没有。[p]
但取而代之的是，胸口附近传来阵阵疼痛。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="aozora3_2.jpg" time="300"]
[bg storage="aozora3.jpg" time="200"]

不要……这哪里只是疼痛那么简单。[p]
当模糊的思绪开始凝聚成形时，我也同时感受到了疼痛的程度。[p]

[bg storage="aozora3_3.jpg" time="300"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]

[saku_window]
#朔
呃，啊…………！[p]

[default_window]
#
如果要比喻的话────就像是有人用赤手紧紧握住我的心脏一般的剧痛。[p]
全身的感觉变得模糊不清，渐渐地，一种血液停止流动的危机感袭来。[p]
呼吸和发声都变得困难，回过神来时，我已经双手捂着胸口倒在地上了。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="monolog_02.jpg" time="800"]

[saku_window]
#朔
……呃，…………唔唔！[p]

[default_window]
#
这到底是什么痛────[p]
我感觉身体承受着巨大的负荷。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_aka.jpg" time="800"]

有人吗，谁都行……！[p]
我拼命地向虚空伸出手。[p]
谁都可以，只要有人……！[p]
然而我的手只是徒劳地挥舞着，没有人来拉住它。[p]
就在这时，我听到了一个声音。[p]

[filter layer="0" blur="3"]
[filter layer="base" blur="3"]

[chara_show  name="望2_ネックレス有" face="utsumuki" top="150" width="1100" height="1553" time=500]

[nozomi_window]
#望
朔[p]

[saku_window]
#朔
…………望、み……[p]

[default_window]
#
看到她的那一瞬间，我清晰地回想起来了。[p]

[mask time=" 300" graphic="kuro.jpg"]
[playse buf="3"  storage="heartbeats.mp3" volume="40" loop=true]
[chara_hide_all time=0 wait=true]
[bg storage="densha_10_nozomi2.jpg" time="0"]
[mask_off time="200" wait="true"]

[wait time=" 500"]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="densha_14.jpg" time="0"]
[mask_off time="200" wait="true"]

望的身体被扭曲变形，被压得粉碎……[p]
被卷入车轮的肉体被撕裂，骨头被磨碎的声音……[p]

[bg storage="kuro.jpg" time="800"]
[free_filter ]

本应死去的人却还活着——这种清晰的印象。[p]
不可逆的法则。[p]
然而，[p]
望，[p]

[stopse buf="3"]
[chara_show  name="望2_ネックレス有" face="metoji" top="150" width="1100" height="1553" time=500]

就在我眼前……依旧笑着。[p]

[chara_hide_all time=500 wait=true]

我已经到达极限了。[p]
早已超出了我能承受的信息量────。[p]

[bg storage="monolog_02.jpg" time="800"]

我的意识，就在那时消失了。[p]


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
…………唔唔……[p]

[default_window]
#
当我再次睁开眼睛时，发现自己躺在长椅上。[p]
远处传来游客的声音。[p]
这里是……商店街尽头的建筑吗。[p]
而在我身旁是望的身影。[p]

[bg storage="bench_bokasi.jpg" time="800" wait=false]
[chara_show  name="望2_ネックレス有" face="metoji2" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
你没事吧？[p]

#
[default_window]
听到望关切的声音，我稍微恢复了一些冷静。[p]
但是……[p]

[chara_hide_all time=300 wait=false]
[bg storage="densha_13.jpg" time="500"]
[bg storage="monolog_02.jpg" time="800"]

刚才的景象，深深烙印在我的脑海里挥之不去。[p]
──望从站台上掉落到铁轨上的画面。[p]
然后电车碾过望──就像爆炸一样，血花四溅──[p]
肉体被碾碎，骨头被粉碎，我听到削磨的声音──[p]
亲眼目睹如此确凿的『死亡』……我再也无法继续看下去了。[r]
[p]

[bg storage="bench_bokasi.jpg" time="500"]
[chara_show  name="望2_ネックレス有" face="metoji2" top="50" width="1600" height="2259" time=500]

但是……望就在这里。[p]
那么……那个如此真实的景象……[p]
果然只是一场梦吧。[p]
我想要这样相信。[p]
然而，意识仍然模糊不清，仿佛还在梦中。[p]

[bg storage="bench.jpg" time="500"]
[free_filter ]

[saku_window]
#朔
望你……没事吧？[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

[nozomi_window]
#望
……啊。名字…………算了，无所谓了[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
你为什么要担心我呢？[p]

#
[default_window]
[bg storage="bench_02.jpg" time="500" wait=true]

啊，对了。[p]
我又把梦境的内容带入现实了。[p]
望不是就在我眼前……活得好好的吗……[p]

[bg storage="bench.jpg" time="500" wait=false]

[saku_window]
#朔
不……没什么[p]

#
[default_window]
[bg storage="bench_02.jpg" time="500" wait=true]

现在躺着的状态让我感到舒适。[p]
一旦开始思考，就会搞不清自己身在何处，感觉快要疯了。[p]

[bg storage="bench.jpg" time="500" wait=false]

所以我不去想。[p]
尽量不去思考。[p]
现在只想顺其自然，选择轻松的方式。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
饰品店的人把你送到店里的休息室了[p]

[saku_window]
#朔
……是吗，我倒在店门口了啊[p]

[nozomi_window]
#望
是的。身体没事吧？[p]

[saku_window]
#朔
……我想再睡一会儿[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
我明白了。你可以继续睡[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
啊，不过……醒来后，我们去洞窟好吗？[p]

[chara_mod  name="望1_ネックレス有" face="tuujou" cross=false time=500 wait=false]
#望
继续我们的约会[p]

[saku_window]
#朔
知道了……我们去吧[p]

#
[default_window]
好像在梦里也去过洞窟……[p]
不……[p]
不能想。[p]
因为太痛苦了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……………………[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

我感觉望正在盯着我看。[p]
在闭着眼的视界那边，我能感受到望的气息。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]

有那么一瞬间，不安感涌上心头。[p]
……没事的。[p]
……全都……是梦中发生的事情……[p]
………………[p]
…………[p]
……[p]


;;; 洞窟へ移動
[mask time=" 800" graphic="kuro.jpg"]
[wait time=" 1000"]
[bg storage="bench.jpg" time="0"]
[mask_off time="800" wait="true"]

睁开眼睛时，身体已经轻松多了。[p]
按照望的建议，我们去了洞窟。[p]

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

令人惊讶的是，洞窟的构造与梦中所见完全一致。[p]
接过微微发光的灯笼，我们向洞穴深处前进。[p]

[playse buf="1" storage="walking.mp3" volume="30" loop=true]
[mask time=" 700" graphic="kuro.jpg"]
[bg storage="doukutsu_03.jpg" time="0"]
[chara_show  name="望2_ネックレス有" face="metoji2" top="150" width="1100" height="1553" time=500]
[mask_off time="700" wait="true"]
[playbgm storage="02Unopened.mp3" volume="40"]

这次是望走在前面。[p]
她似乎有想去的地方。[p]
我跟着望的脚步前行。[p]
四周空无一人。[p]
这洞窟里除了我和望，再无他人。[p]

[chara_hide_all time=500 wait=true]
[playse buf="3"  storage="inside_cave.mp3" volume="30" loop=true]

难得的是，望几乎没有主动说话。[p]
她是不是知道我身体不适，所以特意不跟我搭话呢？[p]
如果是这样的话，那真是太感谢她了。[p]
脚步声和偶尔滴落在水洼中的水滴声静静回响。[p]

[fadeoutse buf="1"]

不久后我们来到了尽头。[p]

[chara_show  name="望2_ネックレス有" face="metoji2" top="150" width="1100" height="1553" time=500]

望慢慢转过身来。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]
[stopse buf="1"]

[nozomi_window]
#望
朔[p]

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
我有些话想单独和你说。所以才带你来这里的[p]

[saku_window]
#朔
想说的话？[p]

[nozomi_window]
#望
对[p]

[saku_window]
#朔
想说的话……是什么？[p]

[chara_mod  name="望1_ネックレス有" face="metoji4" cross=false time=500 wait=false]

[nozomi_window]
#望
那个……[p]

[default_window]
#
望露出了稍作思考的样子。[p]
但是——[p]

[chara_hide_all time=100 wait=true]
[stopse buf="3"]
[stopbgm]
[chara_show  name="望2_ネックレス有" face="tuujou2" top="-160" width="2558" height="3541" time=200]
[anim name="望2_ネックレス有" top="-130" time=200]

[nozomi_window]
#望
对不起，其实是骗你的[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

紧接着，我眼前闪过一道光。[p]

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
————————————————[p]

#
[default_window]
[bg storage="red.jpg" time="200"]
[bg storage="doukutsu_03.jpg" time="300"]

[saku_window]
#朔
——————————诶？[p]

[default_window]
#
[bg storage="doukutsu_04.jpg" time="300"]

我慌忙摸了摸脖子……[p]
…………在流血。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="red.jpg" time="200"]
[bg storage="doukutsu_04.jpg" time="300"]

而且流得很多。[p]
用手按住也止不住血。[p]

[saku_window]
#朔
什、么…………[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="red.jpg" time="500"]

[default_window]
#
但我很快就明白了。[p]
明白了『望用刀割伤了我的脖子』这件事。[p]
虽然伤口不深，但我感受到脖子上从未有过的热度——那是血液的热度——正在慢慢扩散开来。[p]
然后——[p]
她把手中的刀反握——[p]

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
望！你要干什么……！！？[p]

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
————————啊[p]

#
[default_window]

[playbgm storage="01Voices_horror.mp3" volume="50"]
[kanim layer=0 keyframe="shake" time="2000" count="infinite"]
[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

啊啊————[p]

这次的，是特别糟糕的……噩梦。[p]
望——正试图杀死我。[p]
瞬间，我的身体僵硬了。[p]

;ナイフ部分ズーム
[bg storage="CG9/CG9_sasumae_2_3.jpg" time="800"]

然后，那把只为「刺入」而握着的刀。[p]

[bg storage="kuro.jpg" time="800"]

我几乎是下意识地用双臂遮住了脸。[p]
纯粹的恐惧。[p]
死亡的预感。[p]

[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

然而，杀人这种事————。[p]
……「正常人」应该会产生犹豫才对。[p]
就在这个念头一闪而过的瞬间。[p]

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

脖子上，有什么灼热的东西悄然刺入。[p]
已经不是擦伤的程度了——[p]

[mask time=" 400" graphic="red.jpg"]
[wait time=" 400"]
[bg storage="CG9/CG9_sashi_udenashi_3_1.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_1.jpg"]
[mask_off time="250" wait="true"]

只为了执行单一的目的————[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_2.jpg"]
[mask_off time="250" wait="true"]

深深地，深深地，深深地——————[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_3.jpg" time="0"]
[cg storage="CG9/CG9_sashi_udenashi_3_3.jpg"]
[mask_off time="250" wait="true"]

仿佛要刺到脊髓——————[p]

[bg storage="red.jpg" time="800"]

[saku_window]
#朔
——咯……啊，啊啊啊啊啊啊啊啊啊！！[p]

#
[default_window]
[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

几乎是本能地叫喊出声。[p]
疼痛伴随着热量。[p]
热量不由自主地让人联想到死亡。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg"]

好烫。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

好烫……！！！[p]
几乎是自动地，我用尽全身力气抵抗着。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_3_1.jpg" time="800"]

但是望完全没有松手。[p]
不对——[p]

[mask time=" 400" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="300"]
[mask_off time="250" wait="true"]

不仅如此，她还在持续施加强大的力量，想要将刀刃刺得更深。[p]
只为了一个目的，那就是绝对要杀死我——[p]
我……[p]
不知不觉中，已经在拼命地试图堵住从脖子上流出的液体。[p]
恐惧扭曲了我的心智，甚至连自己现在在做什么都不知道……[p]

[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

[nozomi_window]
#望
……明明只需要死一次就够了[p]

#
[default_window]
[bg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg"]

啊————已经[p]
使不上[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg"]

力气了……………………[p]

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
明明早就做好了死的准备。一次又一次地下定决心，付诸行动……！[p]

[wait time=500]

#望
可是，却死不了——[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg"]

[nozomi_window]
#望
——别一次又一次地救我啊！！！[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg" time="800"]
[cg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg"]

[nozomi_window]
#望
你这个，伪善者[p]

[wait time=500]

#望
如果你要妨碍我的话……那就换你来……[p]

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
