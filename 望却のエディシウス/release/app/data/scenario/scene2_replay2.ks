*CG2_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_02_{number}.mp3" number="72"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

;このゲームで登場するキャラクターを宣言
[chara_new  name="望1_ネックレス無" storage="chara/nozomi/tachie_1/off_neckless/1_tuujou.png" jname="望1_ネックレス無"]

;キャラクターの表情登録

;;; 望1 ────────────────────
[chara_face name="望1_ネックレス無" face="egao" storage="chara/nozomi/tachie_1/off_neckless/1_egao.png"]
[chara_face name="望1_ネックレス無" face="tuujou" storage="chara/nozomi/tachie_1/off_neckless/1_tuujou.png"]


[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[chara_hide_all time=0 wait=true]
[bg storage="unoshima06.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]
;;; アイスをテイクアウトして屋外で食べる

[wait time=" 600"]

;;;keyflameの定義
[keyframe name="shake"]
	[frame p= "10%" x=1 y=0]
	[frame p= "20%" x=2 y=1]
	[frame p= "30%" x=3 y=2]
	[frame p= "40%" x=4 y=3]
	[frame p= "50%" x=5 y=4]
	[frame p= "60%" x=4 y=5]
	[frame p= "70%" x=3 y=4]
	[frame p= "80%" x=2 y=3]
	[frame p= "90%" x=1 y=2]
	[frame p="100%" x=0 y=1]
[endkeyframe]

[keyframe name="kirakira"]
	[frame p="0%" scale="0"]
	[frame p="50%" scale="1"]
	[frame p="100%" scale="0"]
[endkeyframe]

[keyframe name="hana"]
	[frame p=0% rotate="0deg"]
	[frame p=100% rotate="360deg"]
[endkeyframe]

;;;エフェクト定義
[chara_new  name="kirakira1" storage="CG2_kirakira1.png" jname="kirakira1"]
[chara_new  name="kirakira2" storage="CG2_kirakira2.png" jname="kirakira2"]
[chara_new  name="kirakira3" storage="CG2_kirakira3.png" jname="kirakira3"]
[chara_new  name="kirakira4" storage="CG2_kirakira4.png" jname="kirakira4"]
[chara_new  name="bikkuri" storage="CG2_bikkuri.png" jname="bikkuri"]
[chara_new  name="hana1" storage="CG2_hana1.png" jname="hana1"]
[chara_new  name="hana2" storage="CG2_hana2.png" jname="hana2"]
[chara_new  name="hana3" storage="CG2_hana3.png" jname="hana3"]
[chara_new  name="hana4" storage="CG2_hana4.png" jname="hana4"]
[chara_new  name="kiin" storage="CG2_kiin.png" jname="kiin"]

[chara_show layer=1 name="kirakira1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="kirakira2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="kirakira3" width="88" height="104" left="730" top="360" time=800 wait=false]
[chara_show layer=1 name="kirakira4" width="121" height="141" left="1450" top="450" time=800 wait=false]
[bg storage="CG2/CG2_1_1_1.jpg" time="800" wait=true]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[kanim name="kirakira1" keyframe="kirakira" time="1200" count="infinite"]
[kanim name="kirakira4" keyframe="kirakira" time="1200" count="infinite"]
[wait time=" 600"]
[kanim name="kirakira2" keyframe="kirakira" time="1200" count="infinite"]
[kanim name="kirakira3" keyframe="kirakira" time="1200" count="infinite"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
得赶快吃掉，不然要化掉了呢[p]

#
[default_window]

渚正在为从哪里开始吃这个堆叠在蛋筒上的双层冰淇淋而烦恼着。[p]
本来还在烦恼，转眼间就像是完全没听到我的忠告一样，大口咬着，小舌头舔着……[r]
[p]
这样的模样让人觉得她像只小动物。[p]

[saku_window]
#朔
别着急一口气吃完，小心牙齿会酸痛哦[p]

#
[default_window]
[stop_kanim]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[bg storage="CG2/CG2_1_1_2.jpg" time="800" wait=true]
[wait time=" 200"]
[chara_show layer=1 name="hana1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="hana4" width="121" height="141" left="1450" top="450" time=800 wait=false]
[chara_show layer=1 name="hana2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="hana3" width="88" height="104" left="730" top="360" time=800 wait=false]
[wait time=" 800"]

[kanim name="hana1" keyframe="hana" time="3500" count="infinite" easing="linear"]
[kanim name="hana4" keyframe="hana" time="3500" count="infinite" easing="linear"]
[wait time=" 600"]
[kanim name="hana2" keyframe="hana" time="4500" count="infinite" easing="linear"]
[kanim name="hana3" keyframe="hana" time="4500" count="infinite" easing="linear"]


话说回来，她吃得真香啊……[p]
虽然我也很久没吃冰淇淋了，但渚的反应，简直就像是……[p]
第一次吃冰淇淋一样，显得那么新鲜，那么开心。[p]
再加上刚才的奶油苏打，看来她是很喜欢甜食呢。[p]
正当我这么想着，[p]

[stop_kanim]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[bg storage="CG2/CG2_1_1_3.jpg" time="800" wait=true]
[wait time=" 200"]
[chara_show layer=1 name="kiin" time=800 wait=false]
[kanim layer=1 keyframe="shake" time="100" count="infinite"]

[nozomi_window]
#渚
嗯～～～～～……！　呜啊……我会、会特别小心的……[p]

#
[default_window]
看来已经为时已晚了。[p]

[bg storage="CG2/CG2_1_2_3.jpg" time="800"]
[saku_window]
#朔
我早就说过了[p]

#
[default_window]
[chara_hide_all time=800 layer=1 wait=false]
[wait time=" 200"]
[stop_kanim]
[bg storage="CG2/CG2_1_2_4.jpg" time="800"]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = true;
[endscript]

[nozomi_window]
#渚
你这么说，可是朔的冰淇淋看起来马上就要化掉了哦。……啊，你看！[r]
[wait time=" 4400"]
[bg storage="CG2/CG2_1_2_5.jpg" time="800" wait=false]
[p]

[iscript]
	TYRANO.kag.ftag.master_tag.wait.log_join = false;
[endscript]

#
[default_window]
[playse buf="3" storage="Anime_Motion07.mp3" volume="70"]
[bg storage="CG2/CG2_1_3_5.jpg" time="800" wait=false]
[wait time=" 200"]
[chara_show layer=1 name="bikkuri" time=800 wait=false]
[kanim layer=1 keyframe="shake" time="100" count="infinite"]

[saku_window]
#朔
……啊啊啊啊啊！！[p]

#
[default_window]
[playse buf="3" storage="Anime_Motion02.mp3" volume="70"]
[bg storage="CG2/CG2_2_3_5.jpg" time="800"]

我正在逗渚的时候，自己冰淇淋的上层一下子滑落到了地上……[p]

[stop_kanim]
[chara_hide_all time=500 layer=1 wait=false]
[bg storage="CG2/CG2_2_3_2.jpg" time="800"]
[chara_show layer=1 name="hana1" width="121" height="141" left="660" top="50" time=800 wait=false]
[chara_show layer=1 name="hana2" width="88" height="104" left="1550" top="120" time=800 wait=false]
[chara_show layer=1 name="hana3" width="88" height="104" left="730" top="360" time=800 wait=false]
[chara_show layer=1 name="hana4" width="121" height="141" left="1450" top="450" time=800 wait=false]

[kanim name="hana1" keyframe="hana" time="3500" count="infinite" easing="linear"]
[kanim name="hana4" keyframe="hana" time="3500" count="infinite" easing="linear"]
[wait time=" 600"]
[kanim name="hana2" keyframe="hana" time="4500" count="infinite" easing="linear"]
[kanim name="hana3" keyframe="hana" time="4500" count="infinite" easing="linear"]

[nozomi_window]
#渚
啊哈哈哈！这就是你取笑别人的报应哦？[p]

#
[default_window]
[bg storage="CG2/CG2_2_4_2.jpg" time="800"]

[saku_window]
#朔
呜呜……这都怪夏天太热了……[p]

#
[default_window]
[mask time=" 500" graphic="shiro.jpg"]
[stop_kanim]
[chara_hide_all time=0 layer=1 wait=false]
[bg storage="unoshima06.jpg" time="0"]
[wait time=" 800"]
[mask_off time="500" wait="true"]

渚吃冰淇淋吃得那么起劲，而我却不小心掉了一层冰淇淋……[p]
就这样，我们比预想中更快地吃完了冰淇淋。[p]
事情的发展比我想象的要快。[p]
本来就没有制定什么计划，自然也没考虑过约会路线。[p]

[chara_show  name="望1_ネックレス無" face="tuujou" top="50" width="1600" height="2259" time=500]

我正在思考下一步该去哪里。[p]

[chara_mod  name="望1_ネックレス無" face="egao" cross=false time=500 wait=true]

可渚却一刻不停地对周围的各种事物表现出浓厚的兴趣……[p]
看她那副对所见之物都感到新鲜无比的样子，我不禁露出了微笑。[p]


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
[chara_hide_all time=800 wait=true]
[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
