
;;; ループ④

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_09_{number}.mp3" number="1"]
[vostart]

;;; 画面ぼかし
[mask time=" 300" graphic="shiro.jpg"]
[playbgm storage="summer_city5.mp3" volume="20"]

[fadeoutbgm]
[bg storage="unoshima02_bokasi.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]
;;; アクセサリー店前

[wait time=" 800"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

……[p]
…………[p]
………………[p]

[bg storage="aozora3_bokasi.jpg" time="800"]

[nozomi_window]
#望
…………唉。果然……又失败了[p]

#望
我来整理一下现状吧[p]

#
[default_window]
[bg storage="unoshima02_zoom_bokasi.jpg" time="800"]

[nozomi_window]
#望
虽然不明白原理……但是一次又一次……死了之后就会回到这里[p]

#望
回到买海豚饰品的那个时刻[p]

#望
第二次的时候，我还以为『我死的瞬间，就会回到这个时间点』[p]

#望
但是……并非如此[p]

#望
『那个人』死了，也是一样的[p]

#
[default_window]
[filter layer="0" blur="3"]
[bg storage="unoshima02_bokasi.jpg" time="500" method="vanishIn"]
[chara_show  name="望2_ネックレス有" face="metoji" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
——喂，朔？[p]

[saku_window]
#朔
………………………………[p]

[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]

[nozomi_window]
#望
真是的，一副魂都飞了的表情……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
喂！[p]

[saku_window]
#朔
啊、——诶？[p]

[default_window]
#
聚焦视线，让模糊的意识中的影像变得清晰。[p]

;;; ぼやけた画面をくっきりとさせる
[bg storage="unoshima02.jpg" time="500"]
[free_filter ]

站在我面前的是那个…………[p]
那个■了我的人的身影──[p]

[saku_window]
#朔
…………啊，诶……？[p]

#
[default_window]

;;; 画面ぼかし
[bg storage="unoshima02_bokasi.jpg" time="600"]

在意识到这一点的瞬间，我察觉到自己『并没有死』。[p]
四肢健全，脖子上也没有伤痕。全身上下没有任何疼痛感。[p]

[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[stopbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_8.jpg" time="0"]
[mask_off time="300" wait="true"]

────然而，只有那清晰的死亡景象，依然深深烙印在脑海中────[p]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[bg storage="unoshima02_aka.jpg" time="800" wait=false]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=800 wait=true]

[saku_window]
#朔
呃……啊啊啊啊啊啊啊啊啊！！别过来啊啊啊啊啊……！！[p]

[default_window]
#
我一喊出声，周围的游客立刻都把注意力集中在了我身上。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]
[playse buf="3"  storage="start_running_long.mp3" volume="40" loop=true]

我像是要逃离恐惧一般，开始奔跑。[p]

[bg storage="unoshima02_run.jpg" time="800"]

跑下坡道。[p]

[bg storage="michi02_run.jpg" time="800"]

穿过狭窄的小路。[p]

[bg storage="unoshima01_run.jpg" time="800"]

横穿过来往的街道。[p]
直到体力耗尽为止──不，甚至连体力都顾不上考虑，只是一味地继续奔跑。[p]

[bg storage="unoshima_michi02_run.jpg" time="800"]

……太奇怪了，太奇怪了，太奇怪了！[p]
这种事情，绝对不可能发生……！[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2_8.jpg" time="0"]
[mask_off time="300" wait="true"]

我明明应该已经被■了才对。[p]
证据就是，脖子和大腿内侧、腹部还残留着阵阵刺痛。[p]

[mask time=" 700" graphic="shiro.jpg"]
[bg storage="unoshima_michi02_run.jpg" time="0"]
[mask_off time="200" wait="true"]

可是……我还活着。[p]
难道是一场梦？[p]
但是……对于这到底是梦境还是现实的质疑，我已经重复了无数遍。[p]

[fadeoutse buf="3"]
[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako.jpg" time="0"]
[mask_off time="400" wait="true"]

一次又一次。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="doukutsu_05.jpg" time="0"]
[mask_off time="400" wait="true"]

一次又一次。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="0"]
[mask_off time="400" wait="true"]

一次又一次……[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshima_michi01.jpg" time="0"]
[fadeoutbgm]
[mask_off time="300" wait="true"]

如果是这样的话……我是否真的活着也变得模糊不清了。[p]
是活着，还是已经死了？[p]
是梦境，还是现实？[p]
我现在────站在哪里？[p]
不知道。[p]
已经什么都……不知道了。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

[saku_window]
#朔
唔！[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeinbgm storage="city_traffic.mp3" time="1000" volume="50"]
[playse buf="3"  storage="truck_craction.mp3" volume="40"]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="truck.jpg" time="800"]
[mask_off time="200" wait="true"]
[wait time=" 1500"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

突然抬头一看，一辆卡车已经逼近到我身边。[p]
刺耳的喇叭声让我慌忙回过神来。[p]
我此刻正站在红灯亮着的人行横道上。[p]
「那种感觉」突然闪回脑海。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[bg storage="truck2.jpg" time="800"]

四肢发冷，全身的血色瞬间褪去────[p]
在这种情况下，我只有一种感觉。[p]

[bg storage="kuro.jpg" time="800"]
[stopbgm]
[stopse buf="3"]
[wait time=" 400"]

;;;中央表示になるよう調整する
　　　　　　　　　　　　　　　　　　那就是「安心」。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="truck.jpg" time="0"]
[mask_off time="200" wait="true"]

[nozomi_window]
#望
唔──！[p]

#
[default_window]
[bg storage="unoshima_michi01.jpg" time="800" method="vanishIn"]
[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]

被人从后面拉了一把，我重重地摔坐在地上。[p]

[playse buf="3"  storage="truck_pass1.mp3" volume="40"]
[wait time=" 1000"]
那辆几乎贴着我身边的卡车，从我面前几厘米的地方呼啸而过。[p]

[bg storage="kuro.jpg" time="800"]

──……没能死成。[p]

[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

我茫然地转过身，那里站着的是……[p]

[bg storage="unoshima_michi02_bokasi.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="metoji2" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
哈、哈……真是的……你、为什么、擅自、逃跑啊……！[p]

[saku_window]
#朔
……………………望，[p]

[default_window]
#
望气喘吁吁地站在那里。[p]

[fadeoutse buf="3"]
[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="umi02.jpg" time="0"]
[wait time=" 2000"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[mask_off time="700" wait="true"]

[chara_show  name="望1_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
……稍微冷静点了吗？[p]

[saku_window]
#朔
……虽然完全没法冷静下来……[p]

[default_window]
#
杀害我的凶手。[p]
那个凶手，此刻就站在我眼前。[p]
但是……曾经感受到的杀气，现在却一丝也看不到了。[p]
难道又是一场噩梦吗？[p]
然而，望接下来的一句话彻底打破了我的想象。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
这也难怪。毕竟……你刚刚才死过呢[p]

[saku_window]
#朔
为什么…………为什么，望你会知道[p]

#
[default_window]
我死去的事，应该只发生在我的梦中才对。[p]
而望也是……应该只在我的梦中死去才对。[p]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500 wait=false]

[nozomi_window]
#望
那个啊，我希望你能冷静地听我说[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

#望
我们……虽然不知道原因，但每次死后都会回到同一个时间点[p]

#
[default_window]
望像是要吐出来似的说道。[p]

[saku_window]
#朔
啊？……我不明白你在说什么[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
我也不明白，这种事我也不想要啊。但是如果我的推测是对的，朔你应该已经经历过我死去好几次了吧？对不对？[r]
[p]

[saku_window]
#朔
……………………[p]

#
[default_window]
[fadeoutse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[playbgm storage="RainDrop_loop.mp3" volume="40"]
[mask_off time="200" wait="true"]

我说不出话来。[p]
那些我以为只是噩梦般的经历，原来全都不是梦。[p]
而是『通过反复，多次经历过的』事情。[p]
望……是这么说的吗。[p]
然而，我以为只有我一个人经历的事，事实上望也经历过。[p]
这个事实恰恰证明了，这些并非我的梦中发生的事。[p]

[mask time=" 300" graphic="shiro.jpg"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[chara_show  name="望2_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=0]
[bg storage="umi02.jpg" time="0" wait=false]
[mask_off time="200" wait="true"]

[saku_window]
#朔
我确实经历过。大概……有3次[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
我啊……一直以为朔你用某种特殊的力量阻止了我的死亡。因为，不这样的话根本无法解释啊[r]
[p]

[saku_window]
#朔
我怎么可能做得到那种事。我倒想问问为什么会遇到这种事呢[p]

#朔
不过……确实是这样的机制没错[p]

[default_window]
#
虽然难以置信……。[p]
我们中的任何一方死亡，就会回到特定的时间点，就是这么回事。[p]
身体状态保持原样，记忆也得以保留。[p]

[fadeoutbgm]
[fadeoutse buf="3"]
[mask time=" 500" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="0"]
[mask_off time="500" wait="true"]

……就连那些过于真实的死亡景象，也清晰地留存着。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="umi02.jpg" time="0" wait=false]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=0]
[mask_off time="500" wait="true"]

[nozomi_window]
#望
朔……你不怕我吗？[p]

[saku_window]
#朔
要说不怕，那就是在撒谎了[p]

#
[default_window]
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="truck3.jpg" time="0" wait=false]
[mask_off time="400" wait="true"]

[saku_window]
#朔
……不过。刚才…………[p]
当我差点被车撞到，以为自己要死了的那一刻……[p]
我……反而松了一口气……[p]

#
[default_window]
[mask time=" 400" graphic="shiro.jpg"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=0]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[playbgm storage="03Nerine.mp3" volume="40"]
[bg storage="umi02.jpg" time="0" wait=false]
[mask_off time="400" wait="true"]

[saku_window]
#朔
我想着，也许不用再经历望一次又一次地死去，或者我自己死去了……[p]
我以为这样就能『结束』了……就是这种想法[p]

[default_window]
#
因为我已经意识到，我和望被囚禁在一个强行要求我们活下去的机制中。[r]
[p]
死亡并不能带来『终结』。[p]
尽管如此，望还是渴望着死亡。[p]

;;;自殺シーンスチル過去風
[fadeoutse buf="3"]
[chara_hide_all time=500 wait=false]
[bg storage="CG8/CG8_haikei_kako.jpg" time="800" method="vanishIn"]

肯定是从我们初次相遇的时候开始──[p]

[mask time=" 400" graphic="shiro.jpg"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="umi02.jpg" time="0" wait=false]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=0]
[mask_off time="400" wait="true"]

一直持续到现在。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……就算被车撞了，反正也会再次回到过去的[p]

[saku_window]
#朔
是啊，哈哈——[p]

[default_window]
#
面对望的讽刺，我只能以干笑回应。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……哎呀！今天一整天都在为了死亡而活，结果因为朔的缘故反而无法死成了[p]

[saku_window]
#朔
所以说，这不是我的错……[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki2" cross=false time=500 wait=false]

[nozomi_window]
#望
……不开玩笑似的说出来的话，我可撑不下去。想死的人的心情……朔也稍微理解了一点吧？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

望那强烈的「想死」的念头。[p]
这反过来说，也就是……[p]
望真的杀了自己的父母，最终目的是自杀……这样的意思。[p]
她说来卯之岛的理由是「觉得从远处来的人会比较多」……大概是因为与自己没有联系的人更容易无所顾忌地玩耍吧。[r]
[p]
毕竟……她执着地说着想「约会」。[p]
在这背后，到底隐藏着怎样的事情呢。[p]
想死的人的心情，我……不明白。[p]
……不对。不是这样的。[p]

[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="densha_05_2.jpg" time="0"]
[mask_off time="400" wait="true"]

我在「今天」早上，不是差点从站台跳到电车轨道上吗。[p]
在漫长的循环中几乎要忘记了，但是……[p]

[bg storage="densha_01_kako.jpg" time="800" method="vanishIn"]

原本的我，是个无法从生存中找到价值的人。[p]
不是「曾经」。现在也是如此。[p]
我无法到达那边。[p]

[mask time=" 400" graphic="shiro.jpg"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="50" width="1600" height="2259" time=0]
[bg storage="umi02.jpg" time="0"]
[mask_off time="500" wait="true"]

但是，望不一样。[p]
她一个人反复地、一次又一次地……试图自杀。[p]
循环的次数就是证明。[p]

[fadeoutbgm]
[fadeoutse buf="3"]
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="400" wait="true"]

但是。[p]
那又怎样呢？[p]

[bg storage="unoshima_michi02.jpg" time="800"]
[stopbgm]
[stopse buf="3"]

望所说的约会目的已经达成了。[p]
那么就没有继续在一起的理由了。[p]
现在的我，对望来说只是个无关紧要的陌生人罢了。[p]

[bg storage="office_asa2_kako.jpg" time="800" method="vanishIn"]

所以，只需要回到原来的日子就行了。[p]
回到那如同循环一般的日子……[p]

[mask time=" 400" graphic="shiro.jpg"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="50" width="1600" height="2259" time=0]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="umi02.jpg" time="0"]
[mask_off time="500" wait="true"]

对于望问我是否理解了想死的人的心情，我回答道。[p]
我无法到达那边。[p]
我无法到达那边——但是。[p]

[saku_window]
#朔
即使理解了想死的人的心情，如果最终还是无法死去的话，只能回到原来的生活[p]

#朔
对望来说，我只是个约会对象而已。对吧？[p]

#朔
约会在「一开始」的时候就已经结束了。所以，我要回去了[p]

#
[default_window]
我要回去了。[p]
回到原来的日子……[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="140" width="1100" height="1553" time=250]
[anim name="望2_ネックレス有" top="150" time=250]

[wait time=" 500"]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500]

[nozomi_window]
#望
…………这样啊。是呢……这是理所当然的呢[p]

[default_window]
#
望脸上露出了极度失望的表情。[p]
已经没什么可说的了。[p]

[fadeoutse buf="3"]
[mask time=" 800" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="michi04.jpg" time="0"]
[mask_off time="800" wait="true"]
[stopse buf="3"]

我转身背对望，朝车站走去。[p]

[bg storage="unoshimaeki01.jpg" time="800"]
[playse buf="3"  storage="huku01.mp3" volume="50"]

正当我要通过检票口时，突然被人从后面紧紧抓住。[p]
那只手……在剧烈地颤抖。[p]

[chara_show  name="望3_ネックレス有" face="obie1_1" top="-130" width="2558" height="3541" time=500]
[playbgm storage="02Unopened.mp3" volume="40"]

[nozomi_window]
#望
我，呜……该去哪里啊！！？[p]

[chara_mod  name="望3_ネックレス有" face="obie2_1" cross=false time=500 wait=false]

#望
明明觉得已经无处可归，只有死路一条了……！！可是，却又死不了……！[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
_　[r]
_　[cm] 

[chara_show  name="望1_ネックレス有" face="obie1_3" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
呐，朔，别走啊……呜，非朔不可啊……。别丢下我一个人……！！！[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="obie2_5" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
再带我去朔的家吧……。好不好？像以前一样做爱吧。我什么都愿意做……！[r]
[p]

[saku_window]
#朔
──────[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

我感受到了紧贴在背上的望的体温。[p]
起初我以为她是个坚强、开朗、爱恶作剧、充满谜团的女孩。[p]
但是，啊──[p]
这才是望真实的、赤裸裸的样子。[p]
哭喊着，寻求依靠般地伸出手……试图用短暂的接触来填补内心的空洞。[r]
[p]
如此地脆弱。[p]
不──说什么脆弱。[p]
我哪有资格这么说啊。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshimaeki01.jpg" time="0"]
[chara_show  name="望3_ネックレス有" face="obie2_5" top="-130" width="2558" height="3541" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
……望[p]

[default_window]
#
我转身面对在我背后抽泣的望，握住了她的手。[p]

[chara_mod  name="望3_ネックレス有" face="obie2_3" cross=false time=500 wait=false]

望惊讶地抬起头。[p]

[chara_hide_all time=300 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=500]

她哭泣的脸庞很快变成了安心的表情。[p]
看到这一幕，我……[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0]
[bg storage="kuro.jpg" time="0"]
[bgmopt volume=0]
[mask_off time="300" wait="true"]

我感到很高兴。[p]

[wait time=" 400"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=500]
[bgmopt volume=40]

我——和眼前的望是一样的啊。[p]
我握住望的手，不是出于保护欲也不是占有欲……[p]
而是通过接纳紧紧依靠着我的望，试图填补自己内心那个一直空着的洞。[p]

[chara_hide_all time=500 wait=true]

但是……[p]
这又有什么关系呢？[p]
携手相扶，互相帮助。[p]
这是非常——[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshimaeki01.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
我们一起走吧[p]

#
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[default_window]
[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=true]
[wait time=" 700"]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500 wait=true]
[wait time=" 200"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#望
……嗯！谢谢你，朔。真好，朔是个温柔的人。又一次帮助了我……我真的很高兴[r]
[p]

#
[default_window]
_　[r]
_　[cm] 

[fadeoutbgm]
[chara_hide_all time=800 wait=true]

非常、美好的事情不是吗。[p]

[mask time=" 1500" graphic="kuro.jpg"]
[bg storage="manshon_erebeta_hiru.jpg" time="0"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[wait time=" 4000"]
[mask_off time="1000" wait="true"]
[stopbgm]
[stopse buf="3"]

@jump storage="scene10.ks"

