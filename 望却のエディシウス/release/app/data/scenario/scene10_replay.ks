*CG10_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_10_{number}.mp3" number="3"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

[mask time=" 300" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="jishitsu_hiru_04.jpg" time="0"]
[playbgm storage="DAY201.mp3" volume="20"]
[mask_off time="800" wait="true"]

;;;カットイン定義
[chara_new  name="CG10_cutin" storage="CG10_cutin_1.png" jname="CG10_cutin"]
[chara_face name="CG10_cutin" face="cut1" storage="CG10_cutin_1.png"]
[chara_face name="CG10_cutin" face="cut2" storage="CG10_cutin_2.png"]
[chara_face name="CG10_cutin" face="cut3" storage="CG10_cutin_3.png"]

[chara_show  name="CG10_cutin" face="cut3" time=800]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#望
……啊、嗯……啊[p]

#
[default_window]
[chara_mod  name="CG10_cutin" face="cut2" cross=false time=500]

『第一次』交合时我就感觉到了，望对做爱几乎没有抵触。[p]
即使我沉默地随心所欲，她也没有表现出害怕。[p]
甚至……她好像知道让我开心的方法……[p]
她似乎有意为之，让我感到愉悦，这样的印象挥之不去。[p]

;;; スチル表示
[bg storage="CG10/CG10_zoom_1.jpg" time="800"]

正当我这样想着时，望的双腿缠上了我的身体。[p]
那柔韧的腿线缠绕上来的样子，某种程度上让人联想到蛇的捕食动作。[p]

[chara_hide_all time=800 wait=true]

或许是为了追求更紧密的接触，她的双手也环绕到了我的后脑勺。[p]

[saku_window]
#朔
体重……会压到你哦[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_2.jpg" time="800"]

[nozomi_window]
#望
没事的。床很软嘛[p]

[saku_window]
#朔
……好近啊[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_3.jpg" time="800"]

[nozomi_window]
#望
……是我靠近的嘛[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_8.jpg" time="800"]

[nozomi_window]
#望
啊。你刚才是不是在想，现在跟那时候反过来了？[p]

[default_window]
#
她指的是那次她骑在我身上……的时候吧。[p]
不过，望的提问确实说中了。[p]

[saku_window]
#朔
……有一点点吧[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_3.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.chara_show.log_join = true;
[endscript]

[nozomi_window]
#望
这次轮到朔在上面了呢……嗯姆……啊！？
[wait time=" 1700"]
[chara_show  name="CG10_cutin" face="cut1" time=500]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_show.log_join = false;
[endscript]

[default_window]
#
_　[r]
_　[cm]

我强行封住了望的嘴唇。[p]

[chara_mod  name="CG10_cutin" face="cut2" cross=false time=500]

[nozomi_window]
#望
嗯唔……啾、啾啾、啾～……噗哈……[p]

[bg storage="CG10/CG10_zoom_6.jpg" time="0"]
[chara_hide_all time=800 wait=false]

#望
……嗯，真是的，我还在说话呢……[p]

[saku_window]
#朔
别让我想起来啊[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_3.jpg" time="800"]

[nozomi_window]
#望
可是，对那样的人还会有欲望……你真奇怪啊，朔。而且刚到家的时候就已经硬了吧？[r]
[p]

[saku_window]
#朔
……望你不也差不多吗？[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_1.jpg" time="800"]

[nozomi_window]
#望
嗯～是吗……？啊～不过确实是这样呢……不过和朔正好相反啦。[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_1_2.jpg" time="800"]

对我来说，她是曾经杀过我的人。[p]
对望来说，我是和她共享无法自杀命运的人。[p]
这样两个人如今却相互依偎，这种状况未免太讽刺了。[p]

[bg storage="CG10/CG10_zoom_3.jpg" time="800"]

[nozomi_window]
#望
再来一次，亲亲？[p]

[default_window]
#
我点了点头，再次吻上她的嘴唇。[p]

[chara_show  name="CG10_cutin" face="cut2" time=500]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.chara_hide_all.log_join = true;
[endscript]

[nozomi_window]
#望
啾，嘻嘻……朔，你身体好烫啊。心脏咚咚跳的声音，都传到我这边了哦。
[wait time=" 1000"]
[chara_hide_all time=800 wait=true]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_hide_all.log_join = false;
[endscript]

[default_window]
#
_　[r]
_　[cm]

伴随着急促的心跳，血液逐渐充满下半身。[p]
这种感觉让我的思考更加迟钝。[p]
我能感觉到，身体不受控制地渴望着更加沉溺于快感之中。[p]

[saku_window]
#朔
为什么呢……可能是有史以来最兴奋的一次吧。[p]

[default_window]
#
[bg storage="CG10/CG10_zoom_8.jpg" time="800"]

[nozomi_window]
#望
……哼。所以说，之前和我那次还没有这么兴奋咯？[p]

[saku_window]
#朔
也许是每次做都会越来越兴奋吧。[p]

[nozomi_window]
#望
这话说得可真漂亮！[p]

[saku_window]
#朔
那你呢，望？[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_6.jpg" time="800"]

[nozomi_window]
#望
我啊……看着朔兴奋，我也会兴奋。想着你在兴奋，我就忍不住小鹿乱撞。[r]
[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_5.jpg" time="800"]

[nozomi_window]
#望
--哎呀！[p]

#
[default_window]
我抬起覆在她身上的身体，开始准备插入。[p]

[bg storage="CG10/CG10_zoom_8.jpg" time="800"]
[nozomi_window]
#望
之前……好像已经到这里了呢。[p]

[default_window]
#
望指着龟头的顶端说道。[p]

[saku_window]
#朔
这次也一样哦。[p]

[default_window]
#
[bg storage="CG10/CG10_zoom_6.jpg" time="800"]

[nozomi_window]
#望
已经要来了吗？[p]

[saku_window]
#朔
……可以吗？[p]

[default_window]
#
[bg storage="CG10/CG10_zoom_7.jpg" time="800"]

[nozomi_window]
#望
嗯……应该没问题。[p]

#
[default_window]
[playse buf="3"  storage="H/H_pitya.mp3" volume="40" loop=true]

瞥了一眼放在床边的避孕套，我将顶端对准了望的入口。[p]
反复摩擦了几次后，传来了啪嗒啪嗒的水声。[p]
不知道是来自谁的……或者是两个人的。[p]
虽然有点早，但可以确定的是，望已经做好了准备。[p]

[bg storage="CG10/CG10_zoom_7.jpg" time="800"]
[nozomi_window]
#望
……别弄出声音玩啦！[p]

[fadeoutse buf="3"]
[saku_window]
#朔
就像是在玩会发声的玩具一样的感觉。[p]

#
[default_window]
[bg storage="CG10/CG10_zoom_5.jpg" time="800"]

[nozomi_window]
#望
你是不是把我当成玩具了？[p]

[saku_window]
#朔
不是不是。[p]

[default_window]
#
一边聊着，我用力将腰向前推进。[p]

[playse buf="3"  storage="H/H_sounyu.mp3" volume="40"]
[bg storage="CG10/CG10_aka_9.jpg" time="800"]

[nozomi_window]
#望
啊、啊────啊……♡[p]

[default_window]
#
缓缓地，缓缓地，湿润柔软的壁慢慢地接纳了我的存在。[p]
仅仅是感受到那温暖的摩擦，就有一种接近绝顶的快感袭来。[p]

[bg storage="CG10/CG10_aka_4.jpg" time="800"]

[nozomi_window]
#望
@layopt layer=message0 visible=false
[nowait]
喂，插进来的时候要说一声啊……！♡
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

喂，插进来的时候要说一声啊……！♡
[nolog]
[p]
[endnolog]

[saku_window]
#朔
@layopt layer=message0 visible=false
[nowait]
我要插进来了。
[endnowait]
[cm]
@layopt layer=message0 visible=true

[nolog]
我要插进来了。[p]
[endnolog]

#
[default_window]
[bg storage="CG10/CG10_aka_9.jpg" time="800"]

[nozomi_window]
#望
@layopt layer=message0 visible=false
[nowait]
已经插进来了啊……！
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

已经插进来了啊……！
[nolog]
[p]
[endnolog]

#
[default_window]
[bg storage="CG10/CG10_aka_4.jpg" time="800"]

[nozomi_window]
#望
……话说，你戴套了吗？[p]

[saku_window]
#朔
………………[p]

#
[default_window]
[bg storage="CG10/CG10_aka_5.jpg" time="800"]

[nozomi_window]
#望
啊。[p]

[saku_window]
#朔
……那个。[p]

#朔
原来如此。之前可以不戴是因为……那是「最后一次」的想法吧。一般来说……还是不要的吧。[p]

#
[default_window]
[bg storage="CG10/CG10_aka_7.jpg" time="800"]

[nozomi_window]
#望
………………[p]

[saku_window]
#朔
……不要吗？[p]

[default_window]
#
感受着已经进入的东西被包裹的触感，我问了望。[p]

[bg storage="CG10/CG10_aka_5.jpg" time="800"]

[nozomi_window]
#望
……不要！[p]

#
[default_window]
[bg storage="CG10/CG10_aka_7.jpg" time="800"]

[nozomi_window]
#望
……………………不，不是的[p]

[saku_window]
#朔
……诶，真的可以吗？[p]

#
[default_window]
[bg storage="CG10/CG10_aka_6.jpg" time="800"]

[nozomi_window]
#望
那个，其实……也不是因为上次是最后一次才那样的。……只是因为直接来的感觉更好嘛……[r]
[p]

[saku_window]
#朔
……哇哦[p]

[default_window]
#
这实在让我大为兴奋。[p]

[bg storage="CG10/CG10_aka_8.jpg" time="800"]

[nozomi_window]
#望
所以……请吧？[p]

[default_window]
#
听到这话后，我感觉自己的限制被彻底解除。[p]
或者说，被这样的话挑逗了，根本不可能停下来。[p]

[bg storage="CG10/CG10_aka_9.jpg" time="800"]
[playse buf="3"  storage="H/H_panpan01.mp3" volume="40" loop=true]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
啊、呀啊、太激烈了……嗯、嗯啊……嗯、唔呜呜……！朔也是，想要直接这样做的，对吧……？[r]
[wait time="3200"]
[bg storage="CG10/CG10_aka_3.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
这是男人的梦想嘛……[p]

[default_window]
#
[bg storage="CG10/CG10_aka_8.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
但是，擅自插进来，我觉得，不太好……啊，那，那边被揉搓的感觉，好舒服……
[r]
[wait time=" 3200"]
[bg storage="CG10/CG10_aka_6.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
望你也是，其实更喜欢直接来的吧……[p]

[default_window]
#
[bg storage="CG10/CG10_aka_4.jpg" time="800"]

[nozomi_window]
#望
是这样没错啦……但让我主动说出来，总觉得，有点奇怪吧？[p]

[saku_window]
#朔
一点也不奇怪。尽管说吧。[p]

[default_window]
#
[bg storage="CG10/CG10_aka_6.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
真的嘛……？好吧，那、啊、啊啊……等一下……这个，太厉害了……
[wait time=" 1800"]
[bg storage="CG10/CG10_aka_9.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

;;; セリフ後半で絶頂

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
嗯啊、啊、不要、停下，停下啊……♡啊、不要，不要啊、要去了、啊、啊────♡♡[r]
[wait time=" 2000"]
[bg storage="CG10/CG10_aka_10.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

#
[default_window]
_　[r]
_　[cm]

[fadeoutse buf="3"]
[mask time=" 750" graphic="shiro.jpg"]
[bg storage="CG10/CG10_nure_aka_10.jpg" time="0"]
[mask_off time="750" wait="true"]

一边忍耐着娇声一边迎来绝顶，望的身体静静地颤抖着。[p]
可以感觉到她的手和脚尖都绷紧了力量。[p]

[nozomi_window]
#望
哈——哈——……♡被在花径上方那地方用力摩擦，我好喜欢……♡[p]

[saku_window]
#朔
我说可以去，可不是那个意思啊……[p]

#
[default_window]
[bg storage="CG10/CG10_nure_aka_5.jpg" time="800"]
[playse buf="3"  storage="HandSynthClap.mp3" volume="40"]

啪地一下，大腿被拍了一下。[p]
用拍过的大腿的手握住了我的手臂，像是在催促似地摇晃着。[p]

[bg storage="CG10/CG10_nure_aka_8.jpg" time="800"]

[nozomi_window]
#望
喂喂，别停下来嘛。再多动动吧……？[p]

[saku_window]
#朔
在去的时候也能继续动吗？[p]

#
[default_window]
[bg storage="CG10/CG10_nure_aka_6.jpg" time="800"]

[nozomi_window]
#望
我没问题……那样会更舒服呢。[p]

[saku_window]
#朔
男人和女人的构造还真是不一样啊……[p]

[default_window]
#
[bg storage="CG10/CG10_nure_aka_9.jpg" time="800"]
[playse buf="3"  storage="H/H_panpan01.mp3" volume="40" loop=true]

再次开始动作时，能感觉到更多的爱液缠绕上来。[p]
因为刚刚经历了一次绝顶，分泌变得过于旺盛了。[p]
或许正因如此，望的表情和声音也变得甜美得像是融化了一般。[p]
为了攻击她说喜欢的地方，我调整角度开始抽送起来。[p]

[bg storage="CG10/CG10_nure_aka_9.jpg" time="800"]
[nozomi_window]
#望
嗯嗯～……喂，那儿，真的好喜欢……啊，太厉害了，被发现了♡我喜欢的地方，被发现了……♡[r]
[p]

[saku_window]
#朔
可以边亲边动吗？[p]

#
[default_window]
[bg storage="CG10/CG10_nure_aka_8.jpg" time="800"]

[nozomi_window]
#望
呵呵。我之前就说过不需要许可的……？[p]

[saku_window]
#朔
……是吗[p]

[default_window]
#
而且，你也说过，什么都愿意做的……。[p]
或许可以更随心所欲一点。[p]

[fadeoutse buf="3"]
[chara_show  name="CG10_cutin" face="cut2" time=500]
[nozomi_window]
#望
嗯……啾，啾，啾……啊……舔，舔，舔，啾……嗯呼……啾，啾啾啾……[p]

[default_window]
#
彼此的舌头来回交缠，吸吮着相互渴求。[p]
这种行为甚至让人感觉像是在进餐。[p]

[playse buf="3"  storage="H/H_panpan04.mp3" volume="40" loop=true]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
TYRANO.kag.ftag.master_tag.chara_hide_all.log_join = true;
[endscript]

[nozomi_window]
#望
噗哈。嗯，再来一次……啾，舔舔舔……啊，嗯啊，啊……小幅度地咚咚地，被顶到里面，不要啊……[r]
[wait  time="6500"]
[bg storage="CG10/CG10_nure_aka_9.jpg" time="0"]
[chara_hide_all time=500 wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
TYRANO.kag.ftag.master_tag.chara_hide_all.log_join = false;
[endscript]

[saku_window]
#朔
你并不是真的讨厌吧[p]

[default_window]
#
[bg storage="CG10/CG10_nure_aka_6.jpg" time="800"]


[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
虽然不讨厌，但还是会说不要的……呀，啊，啊……嗯♡刚才，鸡鸡抖了一下呢……
[wait  time="2200"]
[bg storage="CG10/CG10_nure_aka_9.jpg" time="800"]
[r]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[default_window]
#
_　[r]
_　[cm]

随着交合渐渐激烈，很快就接近极限。[p]

[bg storage="CG10/CG10_nure_aka_8.jpg" time="800"]
[nozomi_window]
#望
嗯呵呵……要去了，我知道哦……？随时都可以出来哦……[p]

[default_window]
#
想出来，想出来，好想出来……！[p]
只是专注于这一刻，忘我地贪恋着她的双唇，摆动着腰身。[p]

[chara_show  name="CG10_cutin" face="cut3" time=500]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
嗯，啧啧，啧……嗯，呼……啊，啊啊！动作，好激烈……给我，就这样，在花径里……♡
[wait  time="2600"]
[bg storage="CG10/CG10_nure_aka_9.jpg" time="0"]
[chara_hide_all time=500 wait=false]
[r]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
抱歉，从一开始就是这么打算的……！[p]

#
[default_window]
[bg storage="CG10/CG10_nure_aka_6.jpg" time="800"]

[nozomi_window]
#望
嗯，嗯……啊，已经到极限了……？可以哦，出来吧，出来吧……♡[p]

#
[default_window]
[bg storage="CG10/CG10_nure_aka_9.jpg" time="800"]

[nozomi_window]
#望
啊，啊，啊啊♡嗯嗯，嗯啊，啊，啊……啊，不会吧，这样颤抖着……这、太厉害了────[p]

[saku_window]
#朔
呃……要出来了……！！[p]

[nozomi_window]
#望
嗯，啊，啊啊啊啊啊啊啊♡♡♡[p]

#
[fadeoutse buf="3"]
[default_window]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask time=" 300" graphic="shiro.jpg"]
[mask_off time="200" wait="true"]
[playse buf="3"  storage="H/H_shasei01.mp3" volume="40"]
[wait time=" 300"]
[mask time=" 300" graphic="shiro.jpg"]
[mask_off time="200" wait="true"]
[wait time=" 300"]
[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG10/CG10_nure_shasei_aka_10.jpg" time="0"]
[mask_off time="2000" wait="true"]
[wait time=" 2000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

在那种紧紧收缩的感觉中迎来了绝顶。[p]
似乎是对我的抖动有所反应，望的花径也一阵阵地紧缩着……[p]
就像上次一样，好像又一起达到了高峰。[p]

[bg storage="CG10/CG10_nure_shasei_aka_9.jpg" time="800"]

[nozomi_window]
#望
@layopt layer=message0 visible=false
[nowait]
啊……花径里扑通扑通的……好温暖的东西进来了……♡
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

啊……花径里扑通扑通的……好温暖的东西进来了……♡
[nolog]
[p]
[endnolog]

[saku_window]
#朔
哈、哈、哈……[p]

#
[default_window]
[bg storage="CG10/CG10_nure_seieki_aka_6.jpg" time="800"]
[nozomi_window]
#望
颤、颤、颤抖着……我也突然就来了。[p]

[saku_window]
#朔
果然……又是同时到了吗？[p]

#
[default_window]
[bg storage="CG10/CG10_nure_seieki_aka_3.jpg" time="800"]

[nozomi_window]
#望
啊哈哈……[p]

[default_window]
#
望有点害羞地说道。[p]

[saku_window]
#朔
再这样待一会儿……[p]

[default_window]
#
依然紧密相连着，我轻轻抚摸着望的脸颊和脖子。[p]

[bg storage="CG10/CG10_nure_seieki_aka_9.jpg" time="800"]

她把头靠在我的手掌上，像极了一只猫。[p]

[bg storage="CG10/CG10_nure_seieki_aka_7.jpg" time="800"]
[nozomi_window]
#望
我可不是猫啊……[p]

[default_window]
#
看来我的心思被看穿了……。[p]

[saku_window]
#朔
就是忍不住想摸了……因为太可爱了。[p]

#
[default_window]
[bg storage="CG10/CG10_nure_seieki_aka_8.jpg" time="800"]

[nozomi_window]
#望
……咚[p]

[saku_window]
#朔
什么啊，那声咚是怎么回事？[p]

#
[default_window]
[bg storage="CG10/CG10_nure_seieki_aka_3.jpg" time="800"]

[nozomi_window]
#望
是我心里的音效。[p]

#
[default_window]
[bg storage="CG10/CG10_aka_zoom_4.jpg" time="800"]

一边说着，我把手绕到她的后颈，她似乎有些怕痒地缩了缩。[p]
这样的望实在太可爱了，我忍不住把她抱紧了些。[p]

[bg storage="CG10/CG10_aka_zoom_8.jpg" time="800"]

回应似的，她环绕在我背后的双手也用力收紧了一些。[p]

[saku_window]
#朔
……我喜欢你，望。[p]

#
[default_window]
[bg storage="CG10/CG10_aka_zoom_3.jpg" time="800"]

[nozomi_window]
#望
……我也是。最喜欢你了！[p]


;;; リプレイモード終了

[autostop]
[skipstop]

[cm]
[clearfix]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[fadeoutse buf="3"]
[fadeoutse buf="2"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[stopse buf="2"]
[stopse buf="1"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
