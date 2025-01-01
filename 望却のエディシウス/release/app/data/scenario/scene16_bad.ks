
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_16bad_{number}.mp3" number="1"]
[vostart]

[wait time=" 1500"]
[bg storage="jishitsu_hiru_01.jpg" time="800"]
[chara_show  name="望3_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[nozomi_window]
#望
………………原来如此[p]

[saku_window]
#朔
如果一直待在家里，应该不会暴露。但要是出门的话……多半，完了。[p]

[default_window]
#
接下来，要让望怎么生活下去呢……我一路回家的时候一直在思考。[p]
但是无论怎么想，都想不到让她出门的办法。[p]
……不过，那是因为害怕被抓住的缘故。[p]

;画面揺らし
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gyagu1" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.quake.log_join = true;
[endscript]

[nozomi_window]
#望
…………啊ーーーーーーーーーーーーーーーーーーーーー啊啊！！
[wait time=1200]
[quake count=20 time=1500 hmax=5 wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.quake.log_join = false;
[endscript]

[wait time=300]

[saku_window]
#朔
……！？[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = true;
[endscript]

[nozomi_window]
#望
……哈，哈……。……啊——，舒服多了！
[wait time=2500]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
别喊得太大声，会有人投诉的……！[p]

[chara_mod  name="望1_ネックレス有" face="metoji" cross=false time=500]

[nozomi_window]
#望
对不起，不过……已经没事了。[p]

[saku_window]
#朔
……没事了？[p]

#
[default_window]
[playbgm storage="PerituneMaterial_Memories2.mp3" volume="30"]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao" top="140" width="1100" height="1553" time=250]
[anim name="望2_ネックレス有" top="150" time=250]

[nozomi_window]
#望
果然，我这种杀人犯，是不该拥有幸福的。我明白了。所以，已经没事了。[r]
[p]

[saku_window]
#朔
──────那是指？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……嗯。[p]

[saku_window]
#朔
不要……不是，嗯，不是这样的。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="140" width="1100" height="1553" time=250]
[anim name="望2_ネックレス有" top="150" time=250]

[nozomi_window]
#望
活着并不代表就是幸福啊[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki3" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……如果只是活着就能感到幸福，那就不会这么辛苦了[p]

[chara_mod  name="望1_ネックレス有" face="metoji4" cross=false time=500]
#望
那种幸福是被选中的人才能拥有的特权。我没有被选中[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki3" cross=false time=500]
#望
从一开始，我就没有去的地方，也没有归宿[p]

#望
我没办法连赎罪都去做，还指望重新来过……因为！！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki2" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……连怎么走路，都没人教过我啊[p]

[default_window]
#
我无法反驳。[p]
──看着已经下定决心的望的表情。[p]
我什么话都说不出来了。[p]
希望她和我一起活下去……这样的自私想法，无法束缚住望。[p]
对望来说，在那个选择中，已经没有通往幸福的路了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji3" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
而且……从一开始，我就知道不可能真正意义上「幸福」起来[p]

[default_window]
#
……我在内心深处，察觉到了这样的望的真心。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

所谓真正意义上的「幸福」，是无法实现的事情。[p]
我伸出的手，不过是一个暂时性的救赎方式……[p]
无法真正拯救望的内心，这一点我自己很清楚。[p]
真是……真是残酷的伪善啊。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[mask_off time="300" wait="true"]

可是，即使只是暂时的，我也希望望的心能得到安慰。[p]
即便是权宜之计伸出的手，这份心意却是真的。[p]

[saku_window]
#朔
喂，望──[p]

[chara_show  name="望3_ネックレス有" face="metoji3" top="150" width="1100" height="1553" time=800]

[nozomi_window]
#望
没事的啦，朔。我已经没事了。[p]

[saku_window]
#朔
……不是，不是这样的。我想说的不是这个啊。[p]

[default_window]
#

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

无法适应社会的我，还有弑亲的望。[p]
我们都是无法融入／回归人类圈子的人。[p]
就像彼此依偎着舔舐伤口一般。[p]
逃避进暂时的快感和虚假的安心中。[p]
但是。[p]
我觉得，没有必要为了回到原来的生活而连法律都要逃避了。[p]
也不再需要继续逃下去了。[p]

[fadeoutbgm]
[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[chara_show  name="望3_ネックレス有" face="metoji3" top="150" width="1100" height="1553" time=0]
[mask_off time="300" wait="true"]

因为──[p]

[saku_window]
#朔
我也可以，去你那边吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[playbgm  storage="05Homecoming.mp3" volume="40"]

我已经满足了。[p]
觉得再也没有必要追求更多了。[p]

[chara_hide_all time=800 wait=false]
[bg storage="monolog_03.jpg" time="800"]

我理解了一个人，仅仅一个人。[p]
这种喜悦，让我肯定了自己的存在。[p]
望似乎察觉到了我的意图，露出了难以置信的表情。[p]

[bg storage="jishitsu_hiru_01.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="utsumuki3" top="150" width="1100" height="1553" time=500]

[nozomi_window]
#望
你觉得，我会说可以吗？[p]

[saku_window]
#朔
……可是望不是说过『不希望被阻止』吗？[p]

[nozomi_window]
#望
但是……！ 我不想让朔……死去啊[p]

[saku_window]
#朔
这种话，我也一直，一直都在说呢……[p]

[nozomi_window]
#望
……就算你这么说！ ……就算你这么说啊……[p]

[saku_window]
#朔
嘛，总之就是彼此彼此吧。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="gimon" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
我……不会承认的哦？[p]

[saku_window]
#朔
我只是随便待在你身边而已。不承认也没关系。[p]
而且……两个人一起试过还没有呢。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
一起……死……是这个意思吗？[p]

[saku_window]
#朔
我说了让我待在你身边，直到最后也是。[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki2" cross=false time=500]

[nozomi_window]
#望
哈哈哈……朔，你真是奇怪。为什么？[p]

[default_window]
#
我本该无奈地笑出来……但事实并非如此。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=100 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

她的声音里……夹杂着一丝微不可察的喜悦。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="150" width="1100" height="1553" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
我一直都觉得，「必须活下去」。[p]
即使被别人恶劣对待，即使没有目标或目的，也要活下去。[p]
在过去的生活中，没有一件事能让我全身心投入到填补无聊，也没有一段关系值得我去维系。[r]
[p]
至少表面上装作能好好融入社会，但实际上却是空洞的。[p]

[default_window]
#
啊──[p]
当我开口时，话语竟然顺畅得不可思议地溜了出来。[p]
到现在为止，我一直无法接受自己所处的境地。[p]
但现在不一样了。[p]
如果说过去和现在有什么不同的话，那就是……[p]
关键在于内心是否能获得安宁。[p]

[saku_window]
#朔
……知道了望的心意，我就安心了。[p]

#朔
@layopt layer=message0 visible=false
[nowait]
我觉得，这样的「结束方式」也不错。
[endnowait]
[cm]
@layopt layer=message0 visible=true

[nolog]
我觉得，这样的「生活方式」也可以接受。[p]
[endnolog]

[default_window]
#
「死亡是救赎」这种看似虚假的话，现在我却能相信了。[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki" cross=false time=500]
[nozomi_window]
#望
你……不后悔吗？[p]

[saku_window]
#朔
已经没有了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="metoji3" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……已经没有了，是吗。这样啊……喂，如果我们还能回去的话……你还会陪着我吗？[r]
[p]

[saku_window]
#朔
当然会。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
那……我可以靠近点吗？[p]

[saku_window]
#朔
可以啊，不过，什么叫「那」呢？[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="metoji3" cross=false time=500]

[nozomi_window]
#望
因为啊，再也不能靠近取暖了嘛。[p]

[saku_window]
#朔
……确实。我也再感受不到望的体温了呢。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[bg storage="jishitsu_hiru_01_bokasi.jpg" time="400"]
[chara_show  name="望1_ネックレス有" face="metoji" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

两人不约而同地靠近彼此。[p]
隔着触碰到的布料，握紧的手中，感受到望的体温。[p]

[chara_mod  name="望1_ネックレス有" face="egao2" cross=false time=500]

[nozomi_window]
#望
好温暖啊……呢。感觉特别安定。以前的那些悲伤啊、痛苦啊，好像全都消失了。[r]
[p]

[saku_window]
#朔
……我也是。就像融化了一样，心情很安宁。[p]

[nozomi_window]
#望
呵呵……。有点……奇怪呢。[p]

[saku_window]
#朔
嗯？[p]

[nozomi_window]
#望
……开心、平静、温暖……可是呢，总觉得……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="metoji3" cross=false time=500 wait=false]

[nozomi_window]
#望
啊，怎么回事？对，对不起。本来不想哭的……为什么……[p]

[saku_window]
#朔
望……[p]

[default_window]
#
那眼泪的理由，一定是──────[p]

[fadeoutbgm]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[chara_hide_all time=0]
[mask_off time="300" wait="true"]

────不要说了。[p]
就这样不说也可以。[p]
如果说出来的话，望一定会……知道那感情的真相。[p]
而我也会因此……意识到的。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01_bokasi.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="metoji3" top="-130" width="2558" height="3541" time=0]
[mask_off time="500" wait="true"]

[saku_window]
#朔
…………对不起啊，望。[p]

#
[default_window]
[chara_hide_all time=1000 wait=true]

所以……就这样结束吧。[p]

;;; 夜
[mask time=" 2500" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="2000" wait="true"]
[playbgm  storage="04Faraway.mp3" volume="40"]

[saku_window]
#朔
奇怪的是啊……心情却很开朗呢。[p]

#朔
我一直都是漫无目的地活着……现在终于感觉找到了自己想做的事情。[p]

#
[default_window]
[bg storage="CG8/CG8_haikei_bokasi.jpg" time="800" wait=false]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="-130" width="2558" height="3541" time=800 wait=true]

[nozomi_window]
#望
想做的事情，真的就是这个吗？[p]

[saku_window]
#朔
嗯。[p]

[wait time=" 500"]

#朔
没问题的。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="metoji3" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
…………是吗。[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[chara_hide_all time=0 wait=true]
[mask_off time="800" wait="true"]

夜的深处。[p]
黑暗深邃，仿佛层层叠叠地织进了无尽的黑色，看不到尽头的漆黑。[p]

[bg storage="CG8/CG8_haikei_bokasi.jpg" time="800" wait=true]
[chara_show  name="望1_ネックレス有" face="metoji3" top="-130" width="2558" height="3541" time=500 wait=true]

站在阳台上，与望牵着手。[p]
远处零星点缀的城市灯光，仿佛静静地等待着我们下去一般。[p]
比那城市灯光更加鲜明、美丽地闪耀着的是星辰与月亮。[p]
辉煌璀璨的夜空，温柔地照耀着我们。[p]
宛如──站在华丽舞台上，被聚光灯笼罩的主角一般。[p]

[saku_window]
#朔
望，最后……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]
[wait time=" 500"]
[chara_mod  name="望2_ネックレス有" face="metoji2" cross=false time=500]
[wait time=" 500"]

稍微俯下身，与望轻轻触碰嘴唇。[p]
不到一秒的瞬间，却因为想到这是最后的吻而顿时变得难以割舍。[p]
但愿，这段时间能永远持续下去。[p]
虽然已经无法继续了，但即便如此。[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500]

[saku_window]
#朔
真是幸福啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki2" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
如果能幸福……就好了。[p]

[default_window]
#
希望我们选择的方向，是正确的──[p]
这样祈祷着。[p]

[setreplay name="BAD_CG" storage="scene16_bad_replay.ks" label="*BAD_CG_replay"]

;;;スチル表示
[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG8/CG8_haikei_2.jpg" time="0"]
[chara_hide_all time=0 wait=true]
[mask_off time="300" wait="true"]

[wait time=" 500"]
[bg storage="kuro.jpg" time="500" method="fadeInUp"]

一边微笑着说「真是幸福」，一边──[p]
像祈祷般牵着手，翻过栏杆，坠入夜的深渊。[p]
被重力吸引，开始下坠。[p]

[stopbgm]
[bg storage="BAD_CG/ED2_namida.jpg" time="1000" ]
[bg storage="kuro.jpg" time="500"]

然而，就在坠落的瞬间，有什么东西闪烁了一下。[p]
[wait time=" 300"]
既不是星光，也不是城市的灯光。[p]
[wait time=" 300"]

[saku_window]
#朔
────────啊！[p]

#
[default_window]
[wait time=" 300"]

以为彼此微笑着说「真是幸福」，然后一起跳了下去──[p]
[wait time=" 300"]
可为什么────[p]
[wait time=" 300"]

[bg storage="BAD_CG/ED2.jpg" time="1000"]
[cg storage="BAD_CG/ED2.jpg"]

为什么──────[p]
[wait time=" 300"]

为什么要露出那样的表情────────[p]

[mask time=" 300" graphic="kuro.jpg"]

[wait time=" 2000"]
[bg storage="kuro.jpg" time="0"]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3"  storage="BodyDrop_echo.mp3" volume="70"]
[wait time=" 3500"]

[playse buf="3"  storage="okugai_yoru.mp3" volume="60" loop=true]

[mask_off time="3000" wait="true"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

────────────────────────────────────[p]
────────────────────────────────────[p]

[bg storage="BAD_CG/ED2_2.jpg" time="1000"]
[cg storage="BAD_CG/ED2_2.jpg"]

────────────────────────────────────[p]

[bg storage="BAD_CG/ED2_5.jpg" time="1000"]
[cg storage="BAD_CG/ED2_5.jpg"]

[p]

[eval exp="tf.ending = 1"]

[mask time=" 3000" graphic="kuro.jpg"]
[fadeoutbgm]
[autostop]
[skipstop]
[fadeoutse buf="3"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[stopbgm]
[stopse buf="3"]

[cm]
[clearfix]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="1000" wait="true"]

@jump storage="title.ks"

;;; BADEND
;;; titleへ戻る
