*CG4_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_03_{number}.mp3" number="1"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

;このゲームで登場するキャラクターを宣言
[chara_new  name="望1_ネックレス有" storage="chara/nozomi/tachie_1/on_neckless/1_tuujou.png" jname="望1_ネックレス有"]
[chara_new  name="望2_ネックレス有" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou.png" jname="望2_ネックレス有"]

;キャラクターの表情登録

;;; 望1 ────────────────────
[chara_face name="望1_ネックレス有" face="egao" storage="chara/nozomi/tachie_1/on_neckless/1_egao.png"]
[chara_face name="望1_ネックレス有" face="egao2" storage="chara/nozomi/tachie_1/on_neckless/1_egao_2.png"]
[chara_face name="望1_ネックレス有" face="gimon" storage="chara/nozomi/tachie_1/on_neckless/1_gimon.png"]
[chara_face name="望1_ネックレス有" face="gimon2" storage="chara/nozomi/tachie_1/on_neckless/1_gimon_2.png"]
[chara_face name="望1_ネックレス有" face="gyagu1" storage="chara/nozomi/tachie_1/on_neckless/1_gyagu1.png"]
[chara_face name="望1_ネックレス有" face="gyagu2" storage="chara/nozomi/tachie_1/on_neckless/1_gyagu2.png"]
[chara_face name="望1_ネックレス有" face="metoji" storage="chara/nozomi/tachie_1/on_neckless/1_metoji.png"]
[chara_face name="望1_ネックレス有" face="metoji2" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_2.png"]
[chara_face name="望1_ネックレス有" face="metoji3" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_3.png"]
[chara_face name="望1_ネックレス有" face="metoji4" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_4.png"]
[chara_face name="望1_ネックレス有" face="obie1_3" storage="chara/nozomi/tachie_1/on_neckless/1_obie1_3.png"]
[chara_face name="望1_ネックレス有" face="odoroki" storage="chara/nozomi/tachie_1/on_neckless/1_odoroki.png"]
[chara_face name="望1_ネックレス有" face="odoroki2" storage="chara/nozomi/tachie_1/on_neckless/1_odoroki_2.png"]
[chara_face name="望1_ネックレス有" face="pien" storage="chara/nozomi/tachie_1/on_neckless/1_pien.png"]
[chara_face name="望1_ネックレス有" face="tuujou" storage="chara/nozomi/tachie_1/on_neckless/1_tuujou.png"]
[chara_face name="望1_ネックレス有" face="utsumuki" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki.png"]
[chara_face name="望1_ネックレス有" face="utsumuki2" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki_2.png"]
[chara_face name="望1_ネックレス有" face="utsumuki3" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki_3.png"]
[chara_face name="望1_ネックレス有" face="wink" storage="chara/nozomi/tachie_1/on_neckless/1_wink.png"]


;;; 望2 ────────────────────
[chara_face name="望2_ネックレス有" face="egao" storage="chara/nozomi/tachie_2/on_neckless/2_egao.png"]
[chara_face name="望2_ネックレス有" face="egao2" storage="chara/nozomi/tachie_2/on_neckless/2_egao2.png"]
[chara_face name="望2_ネックレス有" face="gimon" storage="chara/nozomi/tachie_2/on_neckless/2_gimon.png"]
[chara_face name="望2_ネックレス有" face="gyagu1" storage="chara/nozomi/tachie_2/on_neckless/2_gyagu1.png"]
[chara_face name="望2_ネックレス有" face="metoji" storage="chara/nozomi/tachie_2/on_neckless/2_metoji.png"]
[chara_face name="望2_ネックレス有" face="metoji2" storage="chara/nozomi/tachie_2/on_neckless/2_metoji_2.png"]
[chara_face name="望2_ネックレス有" face="odoroki" storage="chara/nozomi/tachie_2/on_neckless/2_odoroki.png"]
[chara_face name="望2_ネックレス有" face="pien" storage="chara/nozomi/tachie_2/on_neckless/2_pien.png"]
[chara_face name="望2_ネックレス有" face="tuujou" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou.png"]
[chara_face name="望2_ネックレス有" face="tuujou2" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou_2.png"]
[chara_face name="望2_ネックレス有" face="utsumuki" storage="chara/nozomi/tachie_2/on_neckless/2_utsumuki.png"]
[chara_face name="望2_ネックレス有" face="wink" storage="chara/nozomi/tachie_2/on_neckless/2_wink.png"]


[wait time=" 1000"]
[playbgm  storage="07umi.mp3" volume="30"]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]
[wait time=" 1000"]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]
[wait time=" 500"]
[fadeoutse buf="3"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
冰凉舒适──[p]

[default_window]
#
感受着涨落的海浪从脚下冲刷走沙子的触感，不禁觉得有些痒痒的。[p]
我不经意间看了眼手表，突然想起了一件事。[p]

[saku_window]
#朔
……啊……这会儿应该正忙着收尾工作吧……[p]

[default_window]
#
明明正尽情享受着假期，一回过神来想起的却全是工作的事。[p]
本该抱怨几句的，但是……[p]
即便被逼到跳上电车轨道的地步，首先想到的却是担心和焦虑之类的情绪。[p]
看来，我已经被这样的习惯根深蒂固地影响了。[p]

[stopse buf="3"]
[bg storage="CG4/CG4_sage_2.jpg" time="800"]
[cg storage="CG4/CG4_sage_2.jpg"]
[nozomi_window]
#渚
朔的工作有意思吗？[p]

[saku_window]
#朔
哪里有意思啊。每天都是重复同样的事，还没时间休息……[p]
这话题一开始就没完没了了[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[nozomi_window]
#渚
即使很无聊，您也一直在坚持呢。我也能理解每天重复同样的事情会让人厌烦的心情[p]

[default_window]
#
渚补充道，虽然我没有工作。[p]

[saku_window]
#朔
这种时候就别想起工作的事了[p]

[default_window]
#
我这么嘟囔着，渚突然抓起自己裙子的下摆──[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG4/CG4_age_6.jpg" time="800" wait=false]
[cg storage="CG4/CG4_age_6.jpg"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
嘿！[p]

[saku_window]
#朔
哇……！好冷！[p]

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[cg storage="CG4/CG4_sage_4.jpg"]
[nozomi_window]
#渚
约会的时候就该开心点嘛！朔的对象可是我，不是工作哦？[p]

[saku_window]
#朔
话是这么说没错……[p]

#

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[default_window]
[bg storage="CG4/CG4_age_6.jpg" time="800" wait=false]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
在海滩上互相泼水不也是约会的乐趣之一吗！[p]

#
[default_window]
[bg storage="CG4/CG4_age_6_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_6_zoom.jpg"]
在波光粼粼的水面反射中，渚无忧无虑地笑着。[p]
她的表情看起来比海洋更明媚，比太阳更耀眼。[p]

[bg storage="CG4/CG4_sage_2.jpg" time="800"]

然而，我却在担心被海水打湿的套装。[p]

[saku_window]
#朔
……[p]

[default_window]
#
我并不是讨厌套装被打湿。[p]
我讨厌的是那个在意套装被打湿这种「无聊事」的自己。[p]
所以——[p]

[bg storage="CG4/CG4_age_2_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_2_zoom.jpg"]
[saku_window]
#朔
好啊，你竟敢这么做！！[p]

[bg storage="CG4/CG4_age_5_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_5_zoom.jpg"]

[nozomi_window]
#渚
哇！[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask time=" 500" graphic="shiro.jpg"]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[chara_hide_all time=0 wait=true]
[bg storage="mizu.jpg" time="0"]
[mask_off time="500" wait="true"]
[wait time=1000]
[playse buf="3"  storage="Diving_in_water.mp3" volume="50"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
……诶，朔——！！？[p]

[default_window]
#
我装作要向渚泼水，实际上却整个人扑进了海里。[p]

[fadeoutse buf="3"]
[nozomi_window]
#渚
你、你在干什么啊！？套装都湿透了不是吗！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

从稍远的地方，传来了渚担心的声音。[p]
啊，确实湿透了，难受得不得了。[p]
漂浮在水中，仰望着天空。[p]
但是……[p]

[stopse buf="3"]
[bg storage="densha_01_kako.jpg" time="1200" method="vanishIn"]

翘掉工作，特意跑到卯之岛这么远的地方，和渚玩了个痛快，可我却……[p]

[bg storage="monolog_01.jpg" time="1200" method="vanishIn"]

还是没能到达「另一边」。[p]
我还不能从内心真正地享受自己所处的状况……脱离轨道后的前路。[p]
另一个冷静的自己，正站在轨道上用冷漠的眼神看着我。[p]
我突然意识到了这一点。[p]
内心深处，我仍在试图回到原来的生活。[p]

[bg storage="mizu.jpg" time="1200" ]

我讨厌这样，所以才想着无论如何也要做一些平常的我绝对不会做的事。[p]
当然，做了这些事也不会有什么改变……[p]

[bg storage="aozora2.jpg" time="800"]
[saku_window]
#朔
……哈哈[p]

[default_window]
#
我到底在干什么啊？[p]
这样做，只会让衣服被海水浸湿，增加洗衣服的麻烦而已。[p]
但是…………[p]

[saku_window]
#朔
啊哈哈哈哈哈……！[p]

[default_window]
#
感觉心情稍微轻松了一些。[p]

[bg storage="umi01_2.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gyagu2" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
快点回来啊——！[p]

[default_window]
#
正想着这些的时候，从稍远的地方传来了渚的声音。[p]

[saku_window]
#朔
抱歉，抱歉[p]

[default_window]
#
从漂浮的姿势站起来，准备回到渚那里……[p]

[chara_hide_all time=500 wait=false]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[bg storage="mizu.jpg" time="800"]

[saku_window]
#朔
噗！[p]

[default_window]
#
可能是被冲得比想象中还要远，想要踩到底的脚落空了，整张脸都扎进了水里。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_4_zoom.jpg"]

[nozomi_window]
#渚
哎呀。我可没带毛巾之类的东西哦？[p]

[saku_window]
#朔
没事。感觉什么都无所谓了。就算湿透了也完全不在乎[p]

#
[default_window]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]

[nozomi_window]
#渚
……不过确实，现在的朔看起来非常开心呢[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[saku_window]
#朔
渚也来试试吧[p]

[default_window]
#
虽然是半开玩笑地这么说……[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_7_zoom.jpg"]

[nozomi_window]
#渚
……真的吗？[p]

[saku_window]
#朔
这可是约会啊，只有一个人玩可不行吧[p]

[default_window]
#
虽然我自己也觉得这理由荒谬至极。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
你不是在开玩笑吧？[p]

[saku_window]
#朔
要是你不愿意的话，我就自己再游一会儿[p]

#
[default_window]
[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]

[nozomi_window]
#渚
啊——好吧我知道了！那、那我也……跳进去就是了[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

[nozomi_window]
#渚
呃、咿！[p]

#
[default_window]
[playse buf="3"  storage="Splash2.mp3" volume="50"]
[bg storage="umi01_2.jpg" time="800"]

虽然战战兢兢地跳了进去……[p]
看来水很浅，只没到腰部。[p]

[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
你那副傻笑的表情是怎么回事！[p]

[saku_window]
#朔
哈哈，我在想你真可爱[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那是当然。我本来就很可爱[p]

[saku_window]
#朔
让我来示范一下。跳水应该是这样的——！[p]

#
[default_window]
[playse buf="3"  storage="Diving.mp3" volume="30"]
[wait  time="500"]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=250]
[wait  time="300"]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
哇噗！[p]

[default_window]
#
飞溅起的水直接击中了渚的脸。[p]

[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500 wait=false]

[nozomi_window]
#渚
我、我也要……！[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=300 wait=true]
[anim name="望1_ネックレス有" top="20" time=750]
[wait  time="750"]
[anim name="望1_ネックレス有" top="1090" time=500]
[wait  time="200"]
[playse buf="3"  storage="Diving.mp3" volume="30"]
[wait  time="1000"]

渚也猛地跳进海水中，整个身子都湿透了。[p]
我还以为她马上就露出脸站起来了，但看来似乎是不小心喝到了海水……[p]

[mask time=" 500" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG4/CG4_age_3_zoom.jpg" time="0"]
[cg storage="CG4/CG4_age_3_zoom.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
……好咸————！呸、呸[p]

[saku_window]
#朔
哈哈哈，你跳得真不错！[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
呜呜……这种状态要怎么回去啊[p]

[saku_window]
#朔
没想过！[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[nozomi_window]
#渚
诶，那……意思是不回去了！？[p]

[saku_window]
#朔
不回去的话你想去哪啊，这种状态[p]

[nozomi_window]
#渚
诶……？那个……酒、酒店之类的……？[p]

#
[default_window]
我心里突然一惊。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[bg storage="CG4/CG4_age_4.jpg" time="800" wait=false]
[cg storage="CG4/CG4_age_4.jpg"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
你脸红什么啊！你、你该不会是处男吧？[p]

#
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[default_window]
[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[bg storage="CG4/CG4_age_4.jpg" time="800"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="200"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
因为没想到你会说这种话……[p]

#
[default_window]
[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
真是的，这不是明摆着在开玩笑吗！[p]

[default_window]
#
渚经常开玩笑，但有时候会混杂一些分不清是不是玩笑的话，这就麻烦了……[p]

[bg storage="umi02.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
我就这样湿着回去吧。这个时间电车应该也不太挤[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
朔要是感冒了我可不管哦？[p]

[default_window]
#
她倒是不担心自己会感冒啊……[p]


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
[fadeoutse buf="1"]

[chara_hide_all time=3000 wait=false]
[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
