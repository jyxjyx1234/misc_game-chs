
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
我觉得只要一直待在家里就不会被发现。但如果出去的话……大概就完蛋了[p]

[default_window]
#
在回家的路上，我一直在思考今后该如何安排望的生活。[p]
但无论怎么想，都想不出能让她离开家的选择。[p]
……如果害怕被抓的话。[p]

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
…………啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！
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
……哈、哈……。……啊啊啊，舒服多了！
[wait time=2500]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
叫得太大声会有人投诉的……！[p]

[chara_mod  name="望1_ネックレス有" face="metoji" cross=false time=500]

[nozomi_window]
#望
对不起，不过……我已经没事了[p]

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
我明白了，像我这样的杀人犯，是不应该获得幸福的。所以，我已经没事了[r]
[p]

[saku_window]
#朔
──────那是不是意味着[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……嗯[p]

[saku_window]
#朔
不要……别光说嗯[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="140" width="1100" height="1553" time=250]
[anim name="望2_ネックレス有" top="150" time=250]

[nozomi_window]
#望
活着并不是唯一的幸福啊[p]

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
……如果仅仅活着就能获得幸福，那就不会这么辛苦了[p]

[chara_mod  name="望1_ネックレス有" face="metoji4" cross=false time=500]
#望
那样的幸福只是被选中的人的特权。我没有被选中[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki3" cross=false time=500]
#望
从一开始就没有可去的地方，也没有可回的地方[p]

#望
我不认为赎罪之后还能重新开始人生。……因为！！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki2" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……没有人教过我该如何前进啊[p]

[default_window]
#
我无法反驳。[p]
──看着已经下定决心的望的表情。[p]
我什么也说不出来。[p]
想和她一起活下去……我无法用这种自私的想法束缚住望。[p]
对望来说，在那个选择中，已经没有通往幸福的路了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="metoji3" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
而且……我从一开始就知道，无法获得真正意义上的『幸福』[p]

[default_window]
#
……我在内心深处，察觉到了望的这种真实想法。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

无法获得真正意义上的『幸福』这件事。[p]
我伸出的手，只是一种暂时的救济形式……[p]
我自己也明白，这无法成为真正拯救望的内心的方法。[p]
多么……多么残酷的伪善啊。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[mask_off time="300" wait="true"]

但是，我还是希望即使是暂时的，也能让望的心情得到慰藉。[p]
即便是权宜之计伸出的手，这份心意至少是真诚的。[p]

[saku_window]
#朔
喂，望──[p]

[chara_show  name="望3_ネックレス有" face="metoji3" top="150" width="1100" height="1553" time=800]

[nozomi_window]
#望
没事的，朔。我已经没事了[p]

[saku_window]
#朔
……不，不是的。我想说的不是这个[p]

[default_window]
#

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

无法适应社会的我，和杀害父母的望。[p]
无法融入／无法回归人群的同类。[p]
就像是依偎在一起舔舐彼此伤口一般。[p]
我们逃进了暂时的快乐和虚假的安心中。[p]
但是。[p]
我感觉到，没有必要不惜逃避法律也要回到从前的生活。[p]
也不需要再继续逃避下去了。[p]

[fadeoutbgm]
[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[chara_show  name="望3_ネックレス有" face="metoji3" top="150" width="1100" height="1553" time=0]
[mask_off time="300" wait="true"]

因为──[p]

[saku_window]
#朔
我也可以去那边吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[playbgm  storage="05Homecoming.mp3" volume="40"]

我已经心满意足了。[p]
不需要再追求更多了。[p]

[chara_hide_all time=800 wait=false]
[bg storage="monolog_03.jpg" time="800"]

我终于理解了一个人。[p]
这份喜悦肯定了我的存在。[p]
望似乎察觉到了我的意图，露出了难以置信的表情。[p]

[bg storage="jishitsu_hiru_01.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="utsumuki3" top="150" width="1100" height="1553" time=500]

[nozomi_window]
#望
你以为我会说可以吗？[p]

[saku_window]
#朔
……望不是也说过「不想被阻止」吗[p]

[nozomi_window]
#望
可是……！我不想朔……死[p]

[saku_window]
#朔
我也一直、一直在说同样的话啊……[p]

[nozomi_window]
#望
……就算你这么说！……就算你这么说啊……[p]

[saku_window]
#朔
嘛，总之就是彼此彼此啦[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="gimon" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
我……不会同意的哦？[p]

[saku_window]
#朔
我只是自作主张地待在你身边而已。你不同意也没关系[p]
而且……我们还没试过两个人一起呢[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
你是说……一起……死？[p]

[saku_window]
#朔
我说过要让我待在你身边，直到最后[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki2" cross=false time=500]

[nozomi_window]
#望
啊哈哈……真奇怪啊，朔。为什么呢？[p]

[default_window]
#
她并非只是惊讶得笑不出来……的那种样子。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=100 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

那声音里……包含着一丝微小的喜悦。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="utsumuki2" top="150" width="1100" height="1553" time=0]
[mask_off time="300" wait="true"]

[saku_window]
#朔
我一直在想「必须活下去」[p]
即使受到他人恶劣的对待，即使没有目标和目的，也必须活下去[p]
到目前为止的人生中，没有一件事能让我全身心投入到忘记无聊，也没有想要维系的人际关系[r]
[p]
我至少装作能够很好地融入社会生活的样子，但实际上那只是表面文章[p]

[default_window]
#
啊——[p]
说出口时，出乎意料地顺畅。[p]
直到现在，我一直无法接受自己所处的状况。[p]
但是，现在不同了。[p]
如果说过去和现在有什么不同的话，那就是……[p]
就是内心是否获得了平静。[p]

[saku_window]
#朔
……了解了望的心情后，我安心了[p]

#朔
@layopt layer=message0 visible=false
[nowait]
我觉得那样的『结局』也不错
[endnowait]
[cm]
@layopt layer=message0 visible=true

[nolog]
我觉得那样的『生存方式』也不错[p]
[endnolog]

[default_window]
#
现在我甚至相信了「死亡是救赎」这种听起来虚伪的话。[p]

[chara_mod  name="望1_ネックレス有" face="utsumuki" cross=false time=500]
[nozomi_window]
#望
你……不后悔吗？[p]

[saku_window]
#朔
已经不后悔了[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="metoji3" top="140" width="1100" height="1553" time=250]
[anim name="望3_ネックレス有" top="150" time=250]

[nozomi_window]
#望
……不后悔，了啊。这样啊……呐。如果，再回去的话……你还会陪在我身边吗？[r]
[p]

[saku_window]
#朔
当然[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon2" top="140" width="1100" height="1553" time=250]
[anim name="望1_ネックレス有" top="150" time=250]

[nozomi_window]
#望
那……我可以靠近你吗？[p]

[saku_window]
#朔
可以啊，不过为什么说『那』？[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="metoji3" cross=false time=500]

[nozomi_window]
#望
因为，靠在一起取暖，很快就再也做不到了嘛[p]

[saku_window]
#朔
……确实。我也再也感受不到望的体温了呢[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[bg storage="jishitsu_hiru_01_bokasi.jpg" time="400"]
[chara_show  name="望1_ネックレス有" face="metoji" top="-160" width="2558" height="3541" time=250]
[anim name="望1_ネックレス有" top="-130" time=250]

不约而同地靠近彼此。[p]
透过相触的衣物，牵着的手，感受着望的体温。[p]

[chara_mod  name="望1_ネックレス有" face="egao2" cross=false time=500]

[nozomi_window]
#望
好温暖啊……呢。让人特别安心。感觉以前所有悲伤的事，痛苦的事，都在慢慢消失[r]
[p]

[saku_window]
#朔
……我也是。就像要融化一样，感到非常平静[p]

[nozomi_window]
#望
呵呵……。总觉得……有点奇怪呢[p]

[saku_window]
#朔
嗯？[p]

[nozomi_window]
#望
……明明很开心，很平静，很温暖……但是呢，总觉得……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="metoji3" cross=false time=500 wait=false]

[nozomi_window]
#望
啊，咦？对、对不起。明明不是想哭的……为什么……[p]

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

────不要。[p]
就这样不说出来也好。[p]
大概如果说出来的话，望一定会……知道那感情的真相。[p]
而我也会……意识到吧。[p]

[mask time=" 500" graphic="shiro.jpg"]
[bg storage="jishitsu_hiru_01_bokasi.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="metoji3" top="-130" width="2558" height="3541" time=0]
[mask_off time="500" wait="true"]

[saku_window]
#朔
…………对不起，望[p]

#
[default_window]
[chara_hide_all time=1000 wait=true]

所以……就到此为止吧。[p]

;;; 夜
[mask time=" 2500" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="2000" wait="true"]
[playbgm  storage="04Faraway.mp3" volume="40"]

[saku_window]
#朔
不可思议地……感到心情舒畅[p]

#朔
我一直以来都是漫无目的地活着……现在终于觉得找到了自己想做的事[p]

#
[default_window]
[bg storage="CG8/CG8_haikei_bokasi.jpg" time="800" wait=false]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="-130" width="2558" height="3541" time=800 wait=true]

[nozomi_window]
#望
你真的确定这就是你想做的事吗？[p]

[saku_window]
#朔
嗯[p]

[wait time=" 500"]

#朔
没问题的[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="metoji3" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
……………………这样啊[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[chara_hide_all time=0 wait=true]
[mask_off time="800" wait="true"]

夜的深处。[p]
黑暗而深邃，仿佛层层交织着无数黑色，看不到尽头的黑暗。[p]

[bg storage="CG8/CG8_haikei_bokasi.jpg" time="800" wait=true]
[chara_show  name="望1_ネックレス有" face="metoji3" top="-130" width="2558" height="3541" time=500 wait=true]

站在阳台上，我牵着望的手。[p]
远处零星分布的街灯，仿佛在静静地等待着我们下去。[p]
比那街灯更加鲜明，美丽闪耀的星星和月亮。[p]
皎洁明亮的夜空，温柔地照耀着我们。[p]
就像是──在华丽的舞台上，成为了沐浴在聚光灯下的主角一样。[p]

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

我稍微弯下身，与望的嘴唇相触。[p]
不到一秒的瞬间，一想到这可能是最后一个吻，突然就觉得格外珍惜。[p]
多希望这一刻能永远持续下去。[p]
虽然知道不可能继续了，但是还是。[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500]

[saku_window]
#朔
真是幸福啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望3_ネックレス有" face="utsumuki2" top="-160" width="2558" height="3541" time=250]
[anim name="望3_ネックレス有" top="-130" time=250]

[nozomi_window]
#望
如果能幸福……就好了[p]

[default_window]
#
愿我们选择的前路，是正确的──[p]
我如此祈祷着。[p]

[setreplay name="BAD_CG" storage="scene16_bad_replay.ks" label="*BAD_CG_replay"]

;;;スチル表示
[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG8/CG8_haikei_2.jpg" time="0"]
[chara_hide_all time=0 wait=true]
[mask_off time="300" wait="true"]

[wait time=" 500"]
[bg storage="kuro.jpg" time="500" method="fadeInUp"]

带着幸福的笑容──[p]
像祈祷一样紧握着手，越过栏杆，坠入夜的深处。[p]
被重力牵引，开始坠落。[p]

[stopbgm]
[bg storage="BAD_CG/ED2_namida.jpg" time="1000" ]
[bg storage="kuro.jpg" time="500"]

但是，就在坠落的瞬间，有什么闪烁了一下。[p]
[wait time=" 300"]
既不是星光，也不是城市的灯光。[p]
[wait time=" 300"]

[saku_window]
#朔
────────啊[p]

#
[default_window]
[wait time=" 300"]

我以为我们是带着「很幸福」的笑容一起跳下去的──[p]
[wait time=" 300"]
可是，为什么────[p]
[wait time=" 300"]

[bg storage="BAD_CG/ED2.jpg" time="1000"]
[cg storage="BAD_CG/ED2.jpg"]

为什么──────[p]
[wait time=" 300"]

为什么你会露出那样的表情────────[p]

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
