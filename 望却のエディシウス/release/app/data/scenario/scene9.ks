
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
……哈。果然……又不行了。[p]

#望
整理一下状况吧。[p]

#
[default_window]
[bg storage="unoshima02_zoom_bokasi.jpg" time="800"]

[nozomi_window]
#望
虽然不明白理由……但一次又一次地……死后就会回到这里。[p]

#望
回到被买了海豚饰品的那个时间点。[p]

#望
第二次的时候，我以为『我死的瞬间，就会被拉回到这个时间点』。[p]

#望
可是……不是这样的。[p]

#望
『那个人』死了，也一样。[p]

#
[default_window]
[filter layer="0" blur="3"]
[bg storage="unoshima02_bokasi.jpg" time="500" method="vanishIn"]
[chara_show  name="望2_ネックレス有" face="metoji" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
──喂，朔？[p]

[saku_window]
#朔
………………………………[p]

[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]

[nozomi_window]
#望
真是的，都一副魂都没了的样子……[p]

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
啊，──嗯？[p]

[default_window]
#
聚焦视线，让模糊的意识成像。[p]

;;; ぼやけた画面をくっきりとさせる
[bg storage="unoshima02.jpg" time="500"]
[free_filter ]

站在我面前的是，那个人……[p]
那个人，就是■了我的家伙──[p]

[saku_window]
#朔
……啊，诶……？[p]

#
[default_window]

;;; 画面ぼかし
[bg storage="unoshima02_bokasi.jpg" time="600"]

在意识到那是『那个人』的瞬间，我察觉到自己『并没有死』。[p]
手脚完好无损，脖子上也没有伤口。全身上下没有任何疼痛的感觉。[p]

[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[stopbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_8.jpg" time="0"]
[mask_off time="300" wait="true"]

────然而，清晰的死亡画面，却依然深深地刻在脑海中────[p]

[playbgm  storage="tinnitus3.mp3" volume="20"]
[bg storage="unoshima02_aka.jpg" time="800" wait=false]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=800 wait=true]

[saku_window]
#朔
唔……呜哇啊啊啊啊啊啊！！别过来啊啊啊啊……！！[p]

[default_window]
#
喊出的瞬间，周围的游客齐刷刷地看向了我。[p]

[chara_hide_all time=500 wait=false]
[bg storage="monolog_01.jpg" time="500"]
[playse buf="3"  storage="start_running_long.mp3" volume="40" loop=true]

像是要逃离恐惧一样，我拔腿就跑。[p]

[bg storage="unoshima02_run.jpg" time="800"]

跑下了坡道。[p]

[bg storage="michi02_run.jpg" time="800"]

穿过了狭窄的小路。[p]

[bg storage="unoshima01_run.jpg" time="800"]

冲过了人来人往的大街。[p]
直到体力耗尽为止──不，根本没想过体力的问题，只是拼命地跑着。[p]

[bg storage="unoshima_michi02_run.jpg" time="800"]

……不对劲，不对劲，不对劲！[p]
这种事，绝对不可能……！[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2_8.jpg" time="0"]
[mask_off time="300" wait="true"]

我，应该是确实被■了。[p]
作为证据，我的脖子、大腿和腹部内侧还残留着隐隐的痛感。[p]

[mask time=" 700" graphic="shiro.jpg"]
[bg storage="unoshima_michi02_run.jpg" time="0"]
[mask_off time="200" wait="true"]

可是……我还活着。[p]
是梦吗？[p]
但是……怀疑这是不是梦还是现实，我已经反复做过无数次了。[p]

[fadeoutse buf="3"]
[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako.jpg" time="0"]
[mask_off time="400" wait="true"]

无数次。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="doukutsu_05.jpg" time="0"]
[mask_off time="400" wait="true"]

无数次。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[mask time=" 400" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="0"]
[mask_off time="400" wait="true"]

无数次……[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshima_michi01.jpg" time="0"]
[fadeoutbgm]
[mask_off time="300" wait="true"]

如果是这样的话……我到底是真的活着还是模糊不清。[p]
到底是活着，还是死了。[p]
到底是梦，还是现实。[p]
我现在────站在哪里？[p]
不知道。[p]
什么都……不知道了。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="200" wait="true"]

[saku_window]
#朔
啊！[p]

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

猛然抬起头时，发现一辆卡车已经逼近到了我身旁。[p]
刺耳的喇叭声让我慌忙回过神来。[p]
而我现在所站的位置，是红灯的斑马线上。[p]
『那种感觉』如闪回般涌上心头。[p]

[playse buf="1" storage="heartbeat.mp3" volume="40"]
[bg storage="truck2.jpg" time="800"]

手脚冰凉，全身的血液仿佛都退去了────[p]
在这样的情况下，我心中只剩下了一种情感。[p]

[bg storage="kuro.jpg" time="800"]
[stopbgm]
[stopse buf="3"]
[wait time=" 400"]

;;;中央表示になるよう調整する
　　　　　　　　　　　　　　　　　　那就是『安心』。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="truck.jpg" time="0"]
[mask_off time="200" wait="true"]

[nozomi_window]
#望
啊──！[p]

#
[default_window]
[bg storage="unoshima_michi01.jpg" time="800" method="vanishIn"]
[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]

被从后方猛地拉了一把，我一屁股坐倒在地上。[p]

[playse buf="3"  storage="truck_pass1.mp3" volume="40"]
[wait time=" 1000"]
那辆逼近到眼前的卡车，从我的几厘米前呼啸而过。[p]

[bg storage="kuro.jpg" time="800"]

──……没能死成。[p]

[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

无助地回过头看去，那里是……[p]

[bg storage="unoshima_michi02_bokasi.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="metoji2" top="-130" width="2558" height="3541" time=500]

[nozomi_window]
#望
哈、哈啊……真是的……为什么、要擅自、逃跑啊……！[p]

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
……完全冷静不下来……[p]

[default_window]
#
杀死我的人。[p]
那个人，现在，就站在我面前。[p]
然而……曾经感受到的杀气，现在却一点也看不到了。[p]
又是一个糟糕的梦吗？[p]
但是，望接下来的话彻底打破了我的想法。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
也是没办法的事啊。毕竟……你才刚死过嘛。[p]

[saku_window]
#朔
什么…………为什么，望会知道这件事？[p]

#
[default_window]
我死掉的事，应该只发生在我的梦里才对。[p]
而且望也应该只是在我的梦里死去……才对。[p]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500 wait=false]

[nozomi_window]
#望
那个，我希望你冷静听我说……[p]

[chara_mod  name="望2_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

#望
我们啊……虽然不知道原因，但每次死了都会回到同一个时间点。[p]

#
[default_window]
望像是吐槽一般地说道。[p]

[saku_window]
#朔
哈？……什么意思，我不明白。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
我也不明白啊，这种事我也很讨厌。但是如果我的推测没错的话，朔你应该已经经历过好几次我死掉的场景了吧？不是吗？[r]
[p]

[saku_window]
#朔
………………[p]

#
[default_window]
[fadeoutse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[playbgm storage="RainDrop_loop.mp3" volume="40"]
[mask_off time="200" wait="true"]

我一句话也说不出来。[p]
那些看似像恶梦一样的事情，其实根本不是恶梦。[p]
而是『通过不断重复，经历了无数次』的事实。[p]
望……是在这么说吗？[p]
然而，那些我以为只有我经历过的事情，实际上望也同样经历了。[p]
这个事实无疑证明了，这一切并不是仅仅存在于我的梦中。[p]

[mask time=" 300" graphic="shiro.jpg"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[chara_show  name="望2_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=0]
[bg storage="umi02.jpg" time="0" wait=false]
[mask_off time="200" wait="true"]

[saku_window]
#朔
确实经历过。大概……有三次吧。[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
我啊……一直以为是朔用什么特别的力量阻止了我的死亡。不然的话，根本解释不通嘛。[r]
[p]

[saku_window]
#朔
我怎么可能做得到那种事。我还想问问，为什么会遇上这种事呢。[p]

#朔
不过……确实是有这么个机制存在吧。[p]

[default_window]
#
虽然难以置信……[p]
但似乎是因为双方中的某个人死去，就会回到某个特定的时间点。[p]
肉体的状态保持原样，记忆也得以保留。[p]

[fadeoutbgm]
[fadeoutse buf="3"]
[mask time=" 500" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="0"]
[mask_off time="500" wait="true"]

……甚至连那种伴随着强烈真实感的死亡画面，也清晰得历历在目。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="umi02.jpg" time="0" wait=false]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=0]
[mask_off time="500" wait="true"]

[nozomi_window]
#望
朔……你不觉得我可怕吗？[p]

[saku_window]
#朔
要说不怕，那肯定是骗人的。[p]

#
[default_window]
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="truck3.jpg" time="0" wait=false]
[mask_off time="400" wait="true"]

[saku_window]
#朔
……不过。刚才……[p]
差点被车撞上的时候，我心想啊……原来我要死了啊……[p]
但我却……感到安心了……[p]

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
望一直死去，我自己也死去，或许再也不用经历这些了……[p]
终于可以『结束』了……我当时是这么想的。[p]

[default_window]
#
因为我已经明白了，我和望被困在一个强行逼迫我们活下去的机制里。[r]
[p]
通过死亡迎来『终结』是不可能的。[p]
即便如此，望还是渴求着死亡。[p]

;;;自殺シーンスチル過去風
[fadeoutse buf="3"]
[chara_hide_all time=500 wait=false]
[bg storage="CG8/CG8_haikei_kako.jpg" time="800" method="vanishIn"]

一定是，从最初相遇的时候开始──[p]

[mask time=" 400" graphic="shiro.jpg"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="umi02.jpg" time="0" wait=false]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=0]
[mask_off time="400" wait="true"]

到现在为止，一直都是如此。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……就算被撞了，反正还是会回来的啦。[p]

[saku_window]
#朔
是啊，哈哈──[p]

[default_window]
#
面对望的讽刺，我只能干巴巴地笑着回应。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
……唉！今天一整天都在想着怎么去死，结果因为朔反而没法死了！[p]

[saku_window]
#朔
所以说，这不是我的错……[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki2" cross=false time=500 wait=false]

[nozomi_window]
#望
……不这样开玩笑说的话，我就撑不下去了。想死的人的心情……朔你也稍微能体会一点了吧？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

望那种强烈的『想死』的念头。[p]
换句话说就是……[p]
望真的杀了她的父母，最终的目的就是自杀……就是这么回事。[p]
她说来卯之岛的理由是『觉得会有很多从远方来的人』……大概是因为和没有交集的人相处起来更无拘无束吧。[r]
[p]
毕竟……她执拗地说着『想约会』呢。[p]
在这背后，又藏着怎样的隐情呢。[p]
想死的人的心情什么的，我……完全无法理解。[p]
……不，不对。[p]

[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="densha_05_2.jpg" time="0"]
[mask_off time="400" wait="true"]

今天早上，我不是还试图从站台跳下去撞电车吗？[p]
在漫长的循环中，我差点忘记了这件事……[p]

[bg storage="densha_01_kako.jpg" time="800" method="vanishIn"]

原本的我，是个找不到活着意义的人。[p]
不是「曾经是」。现在也是这样。[p]
我没能跨越那道界限。[p]

[mask time=" 400" graphic="shiro.jpg"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="50" width="1600" height="2259" time=0]
[bg storage="umi02.jpg" time="0"]
[mask_off time="500" wait="true"]

但是，望不一样。[p]
她一个人尝试了一次又一次，又一次……去结束自己的生命。[p]
循环的次数就是证明。[p]

[fadeoutbgm]
[fadeoutse buf="3"]
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="400" wait="true"]

可是。[p]
那又怎么样呢？[p]

[bg storage="unoshima_michi02.jpg" time="800"]
[stopbgm]
[stopse buf="3"]

望所说的约会目的已经达成了。[p]
既然如此，就没有继续在一起的理由了。[p]
我现在不过是对望来说毫无关系的陌生人罢了。[p]

[bg storage="office_asa2_kako.jpg" time="800" method="vanishIn"]

所以，只要回到原来的日子就好了。[p]
回到像循环一般的日子里……。[p]

[mask time=" 400" graphic="shiro.jpg"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="50" width="1600" height="2259" time=0]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="umi02.jpg" time="0"]
[mask_off time="500" wait="true"]

对于望问我「你能理解想死的人的感受了吧」这个问题，我作出了回答。[p]
我没能跨越那道界限。[p]
我没能跨越那道界限——但是。[p]

[saku_window]
#朔
就算能理解想死的人的感受，但最后还是没法去死的话，只能回到原来的生活了吧。[p]

#朔
我对望来说，只是个用来约会的对象而已，对吧？[p]

#朔
约会从一开始就已经结束了。所以，我要回去了。[p]

#
[default_window]
我要回去了。[p]
回到原来的日子里……。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="140" width="1100" height="1553" time=250]
[anim name="望2_ネックレス有" top="150" time=250]

[wait time=" 500"]

[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500]

[nozomi_window]
#望
……是嘛。也是呢……这才是正常的吧……[p]

[default_window]
#
望露出了极度失落的表情。[p]
已经没有什么好说的了。[p]

[fadeoutse buf="3"]
[mask time=" 800" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="michi04.jpg" time="0"]
[mask_off time="800" wait="true"]
[stopse buf="3"]

我转身背对着望，朝车站走去。[p]

[bg storage="unoshimaeki01.jpg" time="800"]
[playse buf="3"  storage="huku01.mp3" volume="50"]

就在通过检票口时，突然被从后面紧紧抓住了。[p]
那只手……颤抖得厉害。[p]

[chara_show  name="望3_ネックレス有" face="obie1_1" top="-130" width="2558" height="3541" time=500]
[playbgm storage="02Unopened.mp3" volume="40"]

[nozomi_window]
#望
我、我该去哪儿啊！！？[p]

[chara_mod  name="望3_ネックレス有" face="obie2_1" cross=false time=500 wait=false]

#望
明明觉得没有可以回去的地方，只能去死了……！！可是，却又没法死成……！[r]
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
喂、朔，别走啊……呜呜，非朔不可啊……别把我一个人丢下啊……！！！[r]
[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="obie2_5" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
再、再带我去你家吧……好不好？像之前那样，嘿嘿也可以哦。什么都可以做的……！[r]
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

我能感受到背后望紧贴着我的体温。[p]
最初我以为她是一个坚强、开朗、喜欢恶作剧、充满谜团的女孩。[p]
然而，啊──[p]
这才是她本来的、毫无遮掩的模样。[p]
哭喊着，伸手想要抓住什么依靠……试图用暂时的接触填补内心的空洞。[r]
[p]
如此地、脆弱。[p]
不──脆弱，这种话。[p]
我也没资格说吧。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshimaeki01.jpg" time="0"]
[chara_show  name="望3_ネックレス有" face="obie2_5" top="-130" width="2558" height="3541" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
……望。[p]

[default_window]
#
我转过身面对着在背后抽泣的望，握住了她的手。[p]

[chara_mod  name="望3_ネックレス有" face="obie2_3" cross=false time=500 wait=false]

望猛地抬起头看向我。[p]

[chara_hide_all time=300 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=500]

那张哭泣的脸，很快变成了安心的表情。[p]
看到这一幕，我……[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0]
[bg storage="kuro.jpg" time="0"]
[bgmopt volume=0]
[mask_off time="300" wait="true"]

很开心。[p]

[wait time=" 400"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=500]
[bgmopt volume=40]

我啊──和眼前的望是一样的。[p]
握住望的手，并不是出于保护欲，也不是占有欲……[p]
而是通过接纳紧抓不放的望，试图填补自己心中那空荡荡的洞。[p]

[chara_hide_all time=500 wait=true]

但是……[p]
那又怎么样呢？[p]
携手前行，互相扶持。[p]
这件事真的──[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="unoshimaeki01.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="-130" width="2558" height="3541" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
一起走吧。[p]

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
……嗯！谢谢你，朔。真好，朔是个温柔的人。又一次帮了我……真的好开心。[r]
[p]

#
[default_window]
_　[r]
_　[cm] 

[fadeoutbgm]
[chara_hide_all time=800 wait=true]

真的是件很美好的事情，不是吗？[p]

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

