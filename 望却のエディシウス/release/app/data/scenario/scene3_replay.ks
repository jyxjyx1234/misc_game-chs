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
冰凉的，真舒服──[p]

[default_window]
#
感受到浪花拍打后又退去，从脚下带走沙子的触感，我不禁觉得有些痒痒的。[p]
忽然看了一眼手表，我想起了一件事。[p]

[saku_window]
#朔
……啊……这个时间应该正忙着收尾工作吧……[p]

[default_window]
#
明明已经尽情享受了假期，可一旦回过神来，脑海中浮现的却全是工作的事情。[p]
本来或许该抱怨几句才对……[p]
即使被逼到想跳进电车轨道的地步，脑海里首先浮现的却是担忧和不安之类的情绪。[p]
看来，这种心态已经深深地烙印在我身上了。[p]

[stopse buf="3"]
[bg storage="CG4/CG4_sage_2.jpg" time="800"]
[cg storage="CG4/CG4_sage_2.jpg"]
[nozomi_window]
#渚
朔，你的工作开心吗？[p]

[saku_window]
#朔
一点都不开心啊。每天都在重复同样的事情，却连休息的时间都没有……[p]
这个话题要是开始说起来就没完没了了。[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[nozomi_window]
#渚
虽然无聊，但每天都一直努力着呢。我也能理解那种对重复日子的厌倦感。[p]

[default_window]
#
渚补充了一句，说自己并没有在工作。[p]

[saku_window]
#朔
这种时候还要想起工作的事情，真是没必要啊。[p]

[default_window]
#
我这么嘟囔了一句，渚突然轻轻提起了自己的裙摆──[p]

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
哇啊……！好凉！[p]

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[cg storage="CG4/CG4_sage_4.jpg"]
[nozomi_window]
#渚
约会的时候要开心点嘛！陪着朔的可不是工作，而是我哦？[p]

[saku_window]
#朔
这倒是没错……[p]

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
在沙滩上互相泼水也是约会的乐趣之一啊！[p]

#
[default_window]
[bg storage="CG4/CG4_age_6_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_6_zoom.jpg"]
阳光下，波光粼粼的水面映衬着渚无忧无虑的笑容。[p]
那笑容，比大海，比太阳还要耀眼夺目。[p]

[bg storage="CG4/CG4_sage_2.jpg" time="800"]

然而，我却在担心被海水弄湿的套装。[p]

[saku_window]
#朔
……[p]

[default_window]
#
并不是讨厌套装被弄湿了。[p]
而是讨厌自己竟然会在意像「套装被弄湿」这种『无聊的小事』。[p]
所以──[p]

[bg storage="CG4/CG4_age_2_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_2_zoom.jpg"]
[saku_window]
#朔
你给我记住啊啊啊啊啊！！[p]

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
……等、等下，朔——！？[p]

[default_window]
#
假装要往渚身上泼海水，我却直接全身跳进了海里。[p]

[fadeoutse buf="3"]
[nozomi_window]
#渚
你、你在干什么啊！？套装都湿透了啊！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

从稍远的地方，听到了渚担忧的声音。[p]
啊，确实湿透了，别提多难受了。[p]
漂浮在水面上，我仰望着天空。[p]
但是……[p]

[stopse buf="3"]
[bg storage="densha_01_kako.jpg" time="1200" method="vanishIn"]

逃避工作，特意跑到这遥远的卯之岛，和渚尽情地玩闹了一番，可我却……[p]

[bg storage="monolog_01.jpg" time="1200" method="vanishIn"]

依然没能跨过那个「界限」。[p]
对自己所处的境况……对偏离轨道后的方向，我依然无法由衷地感到享受。[p]
另一个冷静的自己，从轨道上冷漠地注视着我。[p]
我意识到了这一点。[p]
我的心还在试图回到原来的生活中去。[p]

[bg storage="mizu.jpg" time="1200" ]

正因为不甘心，所以才想强迫自己去做那些平常绝对不会做的事。[p]
当然，做了这些也不会让什么发生改变……[p]

[bg storage="aozora2.jpg" time="800"]
[saku_window]
#朔
……哈啊。[p]

[default_window]
#
我到底在干什么啊？[p]
做这种事，衣服被海水弄湿了，只会增加洗衣服的麻烦而已。[p]
但是…………[p]

[saku_window]
#朔
啊哈哈哈哈哈……！[p]

[default_window]
#
心情稍微有点豁然开朗了。[p]

[bg storage="umi01_2.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gyagu2" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
快点回来啊！[p]

[default_window]
#
正想着这些的时候，从稍远的地方传来了渚的声音。[p]

[saku_window]
#朔
抱歉，抱歉。[p]

[default_window]
#
从漂浮的姿势站起来，试图回到渚身边……[p]

[chara_hide_all time=500 wait=false]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[bg storage="mizu.jpg" time="800"]

[saku_window]
#朔
噗！[p]

[default_window]
#
可能是被冲得比想象中更远了，脚踩空了，脸直接扑进了水里。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_4_zoom.jpg"]

[nozomi_window]
#渚
真是的。我可没带毛巾哦？[p]

[saku_window]
#朔
没事，反正现在感觉什么都无所谓了。湿了也完全不在意。[p]

#
[default_window]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]

[nozomi_window]
#渚
……不过确实，现在的朔，看起来真的很开心呢。[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[saku_window]
#朔
渚你也试试吧。[p]

[default_window]
#
虽然是开玩笑这么说的……[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_7_zoom.jpg"]

[nozomi_window]
#渚
……真的？[p]

[saku_window]
#朔
既然是约会，怎么能只有一方参与呢？[p]

[default_window]
#
虽然我自己也觉得这理由有点强词夺理。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
你不会是在开玩笑吧？[p]

[saku_window]
#朔
要是不愿意的话，那我一个人再去游一圈好了。[p]

#
[default_window]
[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]

[nozomi_window]
#渚
啊——真是的，好吧！那、那我也……跳下去就是了！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

[nozomi_window]
#渚
欸、欸——！[p]

#
[default_window]
[playse buf="3"  storage="Splash2.mp3" volume="50"]
[bg storage="umi01_2.jpg" time="800"]

小心翼翼地跳了下去……[p]
结果水很浅，只浸到了腰。[p]

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
哈哈，我觉得你很可爱啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那当然了，我可是很可爱的。[p]

[saku_window]
#朔
我来给你示范一下，跳水应该是这样的——！[p]

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
哇扑！[p]

[default_window]
#
跳水的冲击力激起的水花，直接击中了渚的脸。[p]

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

渚也用力地跳进了海水里，全身都湿透了。[p]
刚一露出脸站起来，看来是呛了一口海水……[p]

[mask time=" 500" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG4/CG4_age_3_zoom.jpg" time="0"]
[cg storage="CG4/CG4_age_3_zoom.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
……好咸啊——！呸，呸！[p]

[saku_window]
#朔
哈哈哈，跳得不错嘛！[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
呜呜……这样子我们怎么回去啊！[p]

[saku_window]
#朔
没想过！[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[nozomi_window]
#渚
欸，那就是说……不回去了！？[p]

[saku_window]
#朔
不回去的话，这样的状态还能去哪儿啊？[p]

[nozomi_window]
#渚
欸……？那、那个……比如酒店之类的……？[p]

#
[default_window]
心里突然一阵小鹿乱撞。[p]

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
你脸红什么呀！难、难道你是个处男吗？[p]

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
因为完全没想到你会说这种话嘛……[p]

#
[default_window]
[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
真是的，当然是在开玩笑啦！[p]

[default_window]
#
渚经常开玩笑，但有时候会夹杂一些让人分不清是不是玩笑的话，真是让人头疼……。[p]

[bg storage="umi02.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
我就这样湿着回去吧。这时间段的电车应该还算空。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
朔要是感冒了我可不管哦！[p]

[default_window]
#
她倒是完全不担心自己会不会感冒……。[p]


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
