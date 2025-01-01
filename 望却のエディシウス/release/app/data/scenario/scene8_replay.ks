*CG9_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_08_{number}.mp3" number="16"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG9/CG9_sasumae_1.jpg" time="500"]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[mask_off time="300" wait="false"]

[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

[saku_window]
#朔
望，你在干什么……！！？[p]

[nozomi_window]
#望
………………[p]

[default_window]
#
[bg storage="CG9/CG9_sasumae_2.jpg" time="800"]

[nozomi_window]
#望
为什么……[p]

[default_window]
#
[bg storage="CG9/CG9_sasumae_3.jpg" time="800"]

[nozomi_window]
#望
为什么，不让我死？[p]

[saku_window]
#朔
────────啊[p]

#
[default_window]

[playbgm storage="01Voices_horror.mp3" volume="50"]
[kanim layer=0 keyframe="shake" time="2000" count="infinite"]
[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

啊────[p]

这次的，特别糟糕……是个噩梦。[p]
望──想要杀了我。[p]
瞬间，身体僵硬了。[p]

;ナイフ部分ズーム
[bg storage="CG9/CG9_sasumae_2_3.jpg" time="800"]

然后，那把仅仅为了『刺下去』而握紧的刀。[p]

[bg storage="kuro.jpg" time="800"]

几乎是无意识地，用双手遮住了脸。[p]
纯粹的恐惧。[p]
死亡的预感。[p]

[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

但是，杀人这种事────。[p]
……『正常来说』应该会犹豫吧。[p]
就在那一瞬间，这个念头从脑海中闪过。[p]

[mask time=" 400" graphic="kuro.jpg"]
[stop_kanim]
[bg storage="CG9/CG9_sashi0_1.jpg" time="0"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="250" wait="true"]
[playse buf="3"  storage="knife_saku.mp3" volume="40"]

[wait time=" 500"]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi1_1.jpg" time="0"]
[mask_off time="250" wait="true"]

[wait time=" 500"]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi2_1.jpg" time="0"]
[mask_off time="250" wait="true"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

脖子上，一股炙热的东西猛地刺了进来。[p]
这已经不是擦过那么简单了──[p]

[mask time=" 400" graphic="red.jpg"]
[wait time=" 400"]
[bg storage="CG9/CG9_sashi_udenashi_3_1.jpg" time="0"]
[mask_off time="250" wait="true"]

仅仅是为了完成一个单一的目的────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

深深地，深深地，深深地──────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_3.jpg" time="0"]
[mask_off time="250" wait="true"]

仿佛要直达脊髓一般──────[p]

[bg storage="red.jpg" time="800"]

[saku_window]
#朔
──呃……啊啊啊啊啊啊啊啊！！！！！[p]

#
[default_window]
[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

几乎是本能地惨叫出声。[p]
痛楚伴随着炙热感袭来。[p]
炙热感不由分说地让人联想到死亡。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg" time="800"]

好烫。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

好烫……啊！！！[p]
几乎是自动反应般，用尽全力挣扎着挥动四肢。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_3_1.jpg" time="800"]

但望却丝毫没有松手的意思。[p]
不对──[p]

[mask time=" 400" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="300"]
[mask_off time="250" wait="true"]

不仅如此，她还在不断用更大的力气把刀刃刺进去。[p]
为了绝对达成杀人的目的，只是为了这一点──[p]
我……[p]
不知什么时候，我开始拼命试图堵住从脖子里涌出的液体。[p]
恐惧扭曲了我的内心，甚至不知道自己现在在做什么……[p]

[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

[nozomi_window]
#望
……明明死一次就够了啊。[p]

#
[default_window]
[bg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg" time="800"]

啊啊────已经……[p]
力气……[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg" time="800"]

使不上了……………………[p]

;;; 以降、セリフごとに刺される演出を入れる。ここから
[playbgm storage="01Voices_horror2.mp3" volume="50"]

[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_5.jpg" time="800"]
[playse buf="3"  storage="knife_saku.mp3" volume="40"]
[nozomi_window]
#望
早就已经做好死的准备了。无数次下定决心，无数次去执行……！[p]

[wait time=500]

#望
可是，就是死不了──[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg" time="800"]

[nozomi_window]
#望
──为什么要一次又一次地救我！！！[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg" time="800"]

[nozomi_window]
#望
你这个伪善者。[p]

[wait time=500]

#望
如果你要来妨碍我的话……那就代替我去……[p]

#
[default_window]
[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_7.jpg" time="800"]

[nozomi_window]
#望
去死吧。[p]

#
[default_window]
[bg storage="red.jpg" time="2500"]


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

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
