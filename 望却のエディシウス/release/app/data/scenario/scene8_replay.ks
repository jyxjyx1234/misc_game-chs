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
望！你在干什么……！！？[p]

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
────────唔[p]

#
[default_window]

[playbgm storage="01Voices_horror.mp3" volume="50"]
[kanim layer=0 keyframe="shake" time="2000" count="infinite"]
[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

啊────[p]

这次的，尤其糟糕……是个可怕的噩梦。[p]
望──正试图杀死我。[p]
瞬间，我的身体僵硬了。[p]

;ナイフ部分ズーム
[bg storage="CG9/CG9_sasumae_2_3.jpg" time="800"]

然后，是那把只为「刺杀」而握着的刀。[p]

[bg storage="kuro.jpg" time="800"]

几乎是下意识地，我用双臂遮住了脸。[p]
纯粹的恐惧。[p]
死亡的预感。[p]

[bg storage="CG9/CG9_sasumae_2_2.jpg" time="800"]

然而，杀人这种事────。[p]
……「正常来说」应该会产生犹豫才对。[p]
就在这个念头一闪而过的瞬间。[p]

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

有什么灼热的东西悄然刺入了我的脖颈。[p]
这已经不是擦伤的程度了──[p]

[mask time=" 400" graphic="red.jpg"]
[wait time=" 400"]
[bg storage="CG9/CG9_sashi_udenashi_3_1.jpg" time="0"]
[mask_off time="250" wait="true"]

为了单一的目的────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

深深地，深深地，深深地──────[p]

[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_3.jpg" time="0"]
[mask_off time="250" wait="true"]

仿佛要刺穿脊髓一般──────[p]

[bg storage="red.jpg" time="800"]

[saku_window]
#朔
──唔……啊啊啊啊啊啊啊啊啊！！[p]

#
[default_window]
[mask time=" 400" graphic="red.jpg"]
[bg storage="CG9/CG9_sashi_udenashi_3_2.jpg" time="0"]
[mask_off time="250" wait="true"]

我几乎是条件反射般地尖叫出声。[p]
疼痛伴随着热量。[p]
热量不由自主地让人联想到死亡。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_2.jpg" time="800"]

好烫。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

好烫……！！！[p]
我几乎是下意识地用四肢使劲反抗。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_3_1.jpg" time="800"]

但望却丝毫没有松开的意思。[p]
不对──[p]

[mask time=" 400" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="300"]
[mask_off time="250" wait="true"]

不仅如此，她还在持续施加强大的力量，试图将刀刃刺得更深。[p]
她只有一个念头，那就是必须完成杀害──[p]
我……[p]
不知不觉中，我已经在拼命地试图阻止从脖子上流出的液体。[p]
恐惧扭曲了我的心智，甚至连自己现在在做什么都不知道……[p]

[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_1.jpg" time="800"]

[nozomi_window]
#望
……明明只死一次就够了[p]

#
[default_window]
[bg storage="CG9/CG9_sashi_udenashi_3_2_3.jpg" time="800"]

啊────已经[p]
使不上[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_4.jpg" time="800"]

力气了……………………[p]

;;; 以降、セリフごとに刺される演出を入れる。ここから
[playbgm storage="01Voices_horror2.mp3" volume="50"]

[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_5.jpg" time="800"]
[playse buf="3"  storage="knife_saku.mp3" volume="40"]
[nozomi_window]
#望
明明早就做好了死亡的准备。一次又一次地下定决心，付诸实践……！[p]

[wait time=500]

#望
可是，却死不了──[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_3_2.jpg" time="800"]

[nozomi_window]
#望
──别一次又一次地救我啊！！！[p]

#
[default_window]
[playse buf="3"  storage="knife_saku2.mp3" volume="40"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=100]

[bg storage="CG9/CG9_sashi_udenashi_3_2_6.jpg" time="800"]

[nozomi_window]
#望
你这个伪善者[p]

[wait time=500]

#望
如果你要妨碍我……那就由你来……[p]

#
[default_window]
[fadeoutbgm]
[bg storage="CG9/CG9_sashi_udenashi_3_2_7.jpg" time="800"]

[nozomi_window]
#望
去死[p]

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
