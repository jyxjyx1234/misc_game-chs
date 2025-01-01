*start

[stop_keyconfig]

[if exp="tf.ending==1"]

	[cm]
	[bg storage="title_bad.jpg" time="1000" wait=false]

[else]

	[cm]

	[wait time="800"]
	[bg storage="circlelogo.jpg" time="1000" ]
	[wait time="2000"]
	[bg storage="kuro.jpg" time="1000" ]
	[wait time="500"]

	@clearstack

	;アニメーション定義
	[keyframe name="FadeIn"]
		[frame p="0%" opacity="0.0"]
		[frame p="50%" opacity="0.5"]
		[frame p="55%" opacity="0.55"]
		[frame p="60%" opacity="0.6"]
		[frame p="65%" opacity="0.65"]
		[frame p="70%" opacity="0.7"]
		[frame p="75%" opacity="0.75"]
		[frame p="80%" opacity="0.8"]
		[frame p="85%" opacity="0.85"]
		[frame p="90%" opacity="0.9"]
		[frame p="95%" opacity="0.95"]
		[frame p="100%" opacity="1.0"]
	[endkeyframe]

	[keyframe name="NozomiFadeIn"]
		[frame p="0%" opacity="0.0" y="0"]
		[frame p="100%" opacity="1.0" y="90"]
	[endkeyframe]

	[keyframe name="AwaFadeIn"]
		[frame p="0%"  opacity="0.0" y="0"]
		[frame p="100%" opacity="1.0" y="-100"]
	[endkeyframe]

	;;; タイトル画面表示
	[chara_new  name="nozomi" storage="title/title_nozomi.png" jname="nozomi"]
	[chara_new  name="awa" storage="title/title_4_awa.png" jname="awa"]
	[bg storage="title.jpg" time="1000" wait=false]
	[layermode_movie name="particles" video="particles_.mp4" opacity="150" mode="screen"]

	[playbgm storage="title.mp3" volume="60"]
	[wait time="100"]

	[chara_show layer=0 name="nozomi" width="2300" height="1294" left="-100" top="-90" time=0 wait=true]
	[kanim keyframe=NozomiFadeIn name=nozomi time=1500]
	[wait time="500"]

	[chara_show layer=1 name="awa" width="2300" height="1294" left="-100" top="100" time=0 wait=false]
	[kanim keyframe=AwaFadeIn name=awa time=1500]
	[wait time="700"]

	[bg storage="title02.jpg" time="1000" wait=false]
	[wait time="800"]

[endif]

[chara_new  name="logo" storage="title/title_6_logo.png" jname="logo"]
[chara_show layer=1 name="logo" width="1000" height="619" left="950" top="-95" time=1500 wait=false]
[wait time="1500"]

[playse buf="3" storage="Titlecall.mp3" volume="100"]

[wait time="300"]

[eval exp="tf.replayModeBack = 0"]

; リプレイから戻った時にのみ実行される処理
[if exp="tf.replayModeBack==1"]
	*replaymode_back
	
	[if exp="tf.ending==1"]
		[bg storage="title_bad.jpg" time="1000" wait=false]
		[chara_show layer=1 name="logo" width="1000" height="619" left="950" top="-95" time=800 wait=false]
	[else]
		[mask time="500"]
		[bg storage="title02.jpg" time="0" wait=false]
		[chara_show layer=0 name="nozomi" width="2300" height="1294" left="-100" top="0" time=0 wait=true]
		[chara_show layer=1 name="awa" width="2300" height="1294" left="-100" top="0" time=0 wait=false]
		[chara_show layer=1 name="logo" width="1000" height="619" left="950" top="-95" time=0 wait=false]
		[layermode_movie name="particles" video="particles_.mp4" opacity="150" mode="screen"]
		[mask_off time="500"]
	[endif]
[endif]

; 名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

; メッセージウィンドウの設定
[position layer="message0" frame="../others/plugin/theme_kopanda_22/image/frame_message_default.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_default.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]

; 名前枠の設定
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" size="32" x="14" y="812" width="520" align="center"]
[chara_config ptext="chara_name_area"]

@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

; デフォルトのフォントカラー指定
[font color="&mp.font_color"]
[deffont color="&mp.font_color"]

; デフォルトのフォントサイズ指定
[font size="36"]
[deffont size="36"]

; クリック待ちグリフの設定（on設定時のみ有効）
[if exp="mp.glyph == 'on'"]
	[glyph line="../../../data/others/plugin/theme_kopanda_22/image/system/nextpage2.png"]
[endif]

[cm]

;;;バックログの初期化
[iscript]
tf.system.backlog=[];
[endscript]

*001
	#
	[button name=hajimekara x=1335 y=470 graphic="button/hajimekara.png" enterimg="button/hajimekara_hover.png" clickse="button/button_enter.mp3" target="gamestart" keyfocus="1"]
	[kanim keyframe=FadeIn name=hajimekara time=500]

	[button name=tudukikara x=1335 y=560 graphic="button/tudukikara.png" enterimg="button/tudukikara_hover.png" clickse="button/button_enter.mp3" role="load" storage="config.ks" keyfocus="2"]
	[kanim keyframe=FadeIn name=tudukikara time=500]

	[button name=cgmode x=1335 y=650 graphic="button/cgmode.png" enterimg="button/cgmode_hover.png" clickse="button/button_enter.mp3" role="sleepgame" storage="cg.ks" keyfocus="3"]
	[kanim keyframe=FadeIn name=cgmode time=500]

;	[button name=scene_kaisou x=1335 y=740 graphic="button/scene_kaisou.png" enterimg="button/scene_kaisou_hover.png" clickse="button/button_enter.mp3" role="sleepgame" storage="replay.ks" keyfocus="4"]
	[button name=scene_kaisou x=1335 y=740 graphic="button/scene_kaisou.png" enterimg="button/scene_kaisou_hover.png" clickse="button/button_enter.mp3" storage="replay.ks" keyfocus="4"]
	[kanim keyframe=FadeIn name=scene_kaisou time=500]

	[button name=option x=1335 y=830 graphic="button/option.png" enterimg="button/option_hover.png" role="sleepgame" clickse="button/button_enter.mp3" storage="config.ks" keyfocus="5"]
	[kanim keyframe=FadeIn name=option time=500]

	[button name=game_end x=1335 y=920 graphic="button/game_end.png" enterimg="button/game_end_hover.png" clickse="button/button_enter.mp3" target="close" keyfocus="6"]
	[kanim keyframe=FadeIn name=game_end time=500]

	[wa]
	[s]	

*gamestart
	[cm]
	@jump storage="scene0.ks"

*close
	[close ask="true"]
	[jump storage="title.ks" target="*001"]
