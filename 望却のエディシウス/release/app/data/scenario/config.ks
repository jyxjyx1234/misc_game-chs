; 2016/09/24 @ko10panda edit
;--------------------------------------------------------------------------------

;=========================================
; コンフィグ モード　画面作成
;=========================================

; 初期化
	[layopt layer=message0 visible=false]
	[layopt layer=message1 visible=false]
	[layopt layer=0 visible=true]
	[layopt layer=1 visible=true]
	[clearfix name="role_button"]

	[clearfix]
	[cm]

	[stop_keyconfig]
	[free_layermode time="100" wait="true"]
	[reset_camera time="100" wait="true"]

	[iscript]
		$(".layer_camera").empty();
	[endscript]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	if (sf.bgm_volume == undefined) {
		tf.current_bgm_vol    = parseInt(TG.config.defaultBgmVolume);
	} else {
		tf.current_bgm_vol = sf.bgm_volume
	}

	if (sf.se_volume == undefined) {
		tf.current_se_vol    = parseInt(TG.config.defaultSeVolume);
	} else {
		tf.current_se_vol = sf.se_volume
	}

	if (sf.vo_volume == undefined) {
		tf.current_vo_vol    = parseInt(TG.config.defaultSeVolume);
	} else {
		tf.current_vo_vol = sf.vo_volume
	}

	if (sf.ch_speed == undefined) {
		tf.current_ch_speed    = parseInt(TG.config.chSpeed);
	} else {
		tf.current_ch_speed = sf.ch_speed
	}

	if (sf.auto_speed == undefined) {
		tf.set_auto_speed    = parseInt(TG.config.autoSpeed);
		tf.current_auto_speed    = parseInt(TG.config.autoSpeed);
	} else {
		tf.set_auto_speed = sf.auto_speed
		tf.current_auto_speed = sf.auto_speed
	}

	tf.text_skip ="ON";

	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path     = '../others/plugin/theme_kopanda_22/image/config/';
	tf.btn_path_off = tf.img_path + 'c_btn.png';
	tf.btn_path_on  = tf.img_path + 'slidebtn.png';
	tf.btn_on  = tf.img_path + 'c_set.png';
	tf.img_path_skip_on  = tf.img_path + 'c_uts_on.png';
	tf.img_path_skip_off = tf.img_path + 'c_uts_off.png';

	// チェック画像の座標
	tf.config_x = [1607, 489, 595, 701, 807, 913, 1019, 1124, 1230, 1336, 1442];
	tf.config_y = [207, 307, 412, 517, 624];

	// チェック画像の幅と高さ
	tf.img_check_width  = 40;
	tf.img_check_height = 40;

	// 配列の要素番号取得用
	tf.config_num_bgm;
	tf.config_num_se;
	tf.config_num_vo;
	tf.config_num_ch;
	tf.config_num_auto;

	switch(tf.current_bgm_vol){
		case   0: tf.config_num_bgm =  0; break;
		case  10: tf.config_num_bgm =  1; break;
		case  20: tf.config_num_bgm =  2; break;
		case  30: tf.config_num_bgm =  3; break;
		case  40: tf.config_num_bgm =  4; break;
		case  50: tf.config_num_bgm =  5; break;
		case  60: tf.config_num_bgm =  6; break;
		case  70: tf.config_num_bgm =  7; break;
		case  80: tf.config_num_bgm =  8; break;
		case  90: tf.config_num_bgm =  9; break;
		case 100: tf.config_num_bgm = 10; break;

		default: break;
	};

	switch(tf.current_se_vol){
		case   0: tf.config_num_se =  0; break;
		case  10: tf.config_num_se =  1; break;
		case  20: tf.config_num_se =  2; break;
		case  30: tf.config_num_se =  3; break;
		case  40: tf.config_num_se =  4; break;
		case  50: tf.config_num_se =  5; break;
		case  60: tf.config_num_se =  6; break;
		case  70: tf.config_num_se =  7; break;
		case  80: tf.config_num_se =  8; break;
		case  90: tf.config_num_se =  9; break;
		case 100: tf.config_num_se = 10; break;

		default: break;
	};

	switch(tf.current_vo_vol){
		case   0: tf.config_num_vo =  0; break;
		case  10: tf.config_num_vo =  1; break;
		case  20: tf.config_num_vo =  2; break;
		case  30: tf.config_num_vo =  3; break;
		case  40: tf.config_num_vo =  4; break;
		case  50: tf.config_num_vo =  5; break;
		case  60: tf.config_num_vo =  6; break;
		case  70: tf.config_num_vo =  7; break;
		case  80: tf.config_num_vo =  8; break;
		case  90: tf.config_num_vo =  9; break;
		case 100: tf.config_num_vo = 10; break;

		default: break;
	};

	switch(tf.current_ch_speed){
		case 100: tf.config_num_ch =  1; break;
		case  90: tf.config_num_ch =  2; break;
		case  80: tf.config_num_ch =  3; break;
		case  70: tf.config_num_ch =  4; break;
		case  60: tf.config_num_ch =  5; break;
		case  50: tf.config_num_ch =  6; break;
		case  40: tf.config_num_ch =  7; break;
		case  30: tf.config_num_ch =  8; break;
		case  20: tf.config_num_ch =  9; break;
		case  10: tf.config_num_ch = 10; break;

		default: break;
	};

	switch(tf.set_auto_speed){
		case 5000: tf.config_num_auto =  1; break;
		case 4550: tf.config_num_auto =  2; break;
		case 4100: tf.config_num_auto =  3; break;
		case 3650: tf.config_num_auto =  4; break;
		case 3200: tf.config_num_auto =  5; break;
		case 2750: tf.config_num_auto =  6; break;
		case 2300: tf.config_num_auto =  7; break;
		case 1850: tf.config_num_auto =  8; break;
		case 1400: tf.config_num_auto =  9; break;
		case  950: tf.config_num_auto = 10; break;
		default: break;
	};

	// ミュート用のBGM、SE、ボイス音量管理
	if( typeof f.prev_vol_list === 'undefined'){
		f.prev_vol_list = [tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.config_num_se, tf.current_vo_vol, tf.config_num_vo];
	}

	[endscript]

	[cm]

	[mask time="200"]

;	コンフィグ用の背景
	[bg storage="&tf.img_path + 'config_bg.png'" time="100"]

;	画面タイトル
;	[image name="label_config" layer=1 left=0 top=0 storage="../others/plugin/theme_kopanda_22/image/config/label_config.png"]

;	「Back」ボタン
	[button fix="true" target="*backtitle" graphic="&tf.img_path + 'back.png'" enterimg="&tf.img_path + 'back2.png'" x="20" y="910"]

	[jump target="*config_page"]

;------------------------------------------------------------------------------------------------------
*config_page
[clearstack]
;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[1]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  1; tf.current_bgm_vol =  10" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[2]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  2; tf.current_bgm_vol =  20" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[3]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  3; tf.current_bgm_vol =  30" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[4]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  4; tf.current_bgm_vol =  40" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[5]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  5; tf.current_bgm_vol =  50" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[6]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  6; tf.current_bgm_vol =  60" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[7]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  7; tf.current_bgm_vol =  70" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[8]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  8; tf.current_bgm_vol =  80" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[9]"  y="&tf.config_y[0]" exp="tf.config_num_bgm =  9; tf.current_bgm_vol =  90" clickse="button/button_enter.mp3" ]
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[10]" y="&tf.config_y[0]" exp="tf.config_num_bgm = 10; tf.current_bgm_vol = 100" clickse="button/button_enter.mp3" ]

;	ミュート
	[button name="bgmvol,bgmvol_0" fix="true" target="*vol_bgm_mute" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[0]" y="&tf.config_y[0]" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[1]"  y="&tf.config_y[1]" exp="tf.config_num_se =  1; tf.current_se_vol =  10" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[2]"  y="&tf.config_y[1]" exp="tf.config_num_se =  2; tf.current_se_vol =  20" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[3]"  y="&tf.config_y[1]" exp="tf.config_num_se =  3; tf.current_se_vol =  30" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[4]"  y="&tf.config_y[1]" exp="tf.config_num_se =  4; tf.current_se_vol =  40" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[5]"  y="&tf.config_y[1]" exp="tf.config_num_se =  5; tf.current_se_vol =  50" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[6]"  y="&tf.config_y[1]" exp="tf.config_num_se =  6; tf.current_se_vol =  60" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[7]"  y="&tf.config_y[1]" exp="tf.config_num_se =  7; tf.current_se_vol =  70" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[8]"  y="&tf.config_y[1]" exp="tf.config_num_se =  8; tf.current_se_vol =  80" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[9]"  y="&tf.config_y[1]" exp="tf.config_num_se =  9; tf.current_se_vol =  90" clickse="button/button_enter.mp3" ]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[10]" y="&tf.config_y[1]" exp="tf.config_num_se = 10; tf.current_se_vol = 100" clickse="button/button_enter.mp3" ]

;	SEミュート
	[button name="sevol,sevol_0" fix="true" target="*vol_se_mute" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[0]" y="&tf.config_y[1]" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; ボイス音量
;------------------------------------------------------------------------------------------------------
	[button name="vovol,vovol_10"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[1]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  1; tf.current_vo_vol =  10"  ]
	[button name="vovol,vovol_20"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[2]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  2; tf.current_vo_vol =  20"  ]
	[button name="vovol,vovol_30"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[3]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  3; tf.current_vo_vol =  30"  ]
	[button name="vovol,vovol_40"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[4]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  4; tf.current_vo_vol =  40"  ]
	[button name="vovol,vovol_50"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[5]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  5; tf.current_vo_vol =  50"  ]
	[button name="vovol,vovol_60"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[6]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  6; tf.current_vo_vol =  60"  ]
	[button name="vovol,vovol_70"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[7]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  7; tf.current_vo_vol =  70"  ]
	[button name="vovol,vovol_80"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[8]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  8; tf.current_vo_vol =  80"  ]
	[button name="vovol,vovol_90"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[9]"  y="&tf.config_y[2]" exp="tf.config_num_vo =  9; tf.current_vo_vol =  90"  ]
	[button name="vovol,vovol_100" fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[10]" y="&tf.config_y[2]" exp="tf.config_num_vo = 10; tf.current_vo_vol = 100"  ]

;	ボイスミュート
	[button name="vovol,vovol_0" fix="true" target="*vol_vo_mute" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[0]" y="&tf.config_y[2]" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
	[button name="ch,ch_100" fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[1]"  y="&tf.config_y[3]" exp="tf.set_ch_speed =100; tf.config_num_ch =  1" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_90"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[2]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 90; tf.config_num_ch =  2" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_80"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[3]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 80; tf.config_num_ch =  3" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_70"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[4]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 70; tf.config_num_ch =  4" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_60"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[5]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 60; tf.config_num_ch =  5" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_50"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[6]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 50; tf.config_num_ch =  6" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_40"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[7]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 40; tf.config_num_ch =  7" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_30"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[8]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 30; tf.config_num_ch =  8" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_20"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[9]"  y="&tf.config_y[3]" exp="tf.set_ch_speed = 20; tf.config_num_ch =  9" clickse="button/button_enter.mp3" ]
	[button name="ch,ch_10"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[10]" y="&tf.config_y[3]" exp="tf.set_ch_speed = 10; tf.config_num_ch = 10" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
	[button name="auto,auto_5000" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[1]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 5000; tf.config_num_auto =  1" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_4550" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[2]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 4550; tf.config_num_auto =  2" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_4100" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[3]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 4100; tf.config_num_auto =  3" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_3650" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[4]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 3650; tf.config_num_auto =  4" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_3200" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[5]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 3200; tf.config_num_auto =  5" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_2750" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[6]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 2750; tf.config_num_auto =  6" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_2300" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[7]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 2300; tf.config_num_auto =  7" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_1850" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[8]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 1850; tf.config_num_auto =  8" clickse="button/button_enter.mp3" ]
	[button name="auto,auto_1400" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[9]"  y="&tf.config_y[4]" exp="tf.set_auto_speed = 1400; tf.config_num_auto =  9" clickse="button/button_enter.mp3" ]
	[button name= "auto,auto_950" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.img_check_width" height="&tf.img_check_height" x="&tf.config_x[10]" y="&tf.config_y[4]" exp="tf.set_auto_speed =  950; tf.config_num_auto = 10" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; 未読スキップ
;------------------------------------------------------------------------------------------------------
;	未読スキップ-OFF
	[button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btn_path_off" width="88" height="88" x="448" y="722" clickse="button/button_enter.mp3" ]

;	未読スキップ-ON
	[button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btn_path_off" width="88" height="88" x="640" y="722" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; フルスクリーンボタン
;------------------------------------------------------------------------------------------------------
	[button role="fullscreen" graphic="button/ch_fullscreen.png" enterimg="button/ch_fullscreen2.png" x="1253" y="722" width="88" height="88" clickse="button/button_enter.mp3" ]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

	[layopt layer="0" visible="true"]

	[call target="*load_bgm_img"]
	[call target="*load_se_img"]
	[call target="*load_vo_img"]
	[call target="*load_ch_img"]
	[call target="*load_auto_img"]
	[call target="*load_skip_img"]

	[test_message_start]

	[mask_off time="200"]

	[s]

;--------------------------------------------------------------------------------
; コンフィグを抜ける
;--------------------------------------------------------------------------------
*backtitle
	[eval exp="sf.bgm_volume = tf.current_bgm_vol"]
	[eval exp="sf.se_volume = tf.current_se_vol"]
	[eval exp="sf.vo_volume = tf.current_vo_vol"]
	[eval exp="sf.ch_speed = tf.current_ch_speed"]
	[eval exp="sf.auto_speed = tf.set_auto_speed"]
	[playse storage="button/button_cancel.mp3" volume="&tf.current_se_vol"]
	[cm]
	[layopt layer="message1" visible="false"]
	[free layer=1 name="label_config"]
	[clearfix]
	[start_keyconfig]
	[clearstack]
	[awakegame]

;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_mute

[iscript]
	// ミュート
	if( tf.current_bgm_vol != 0 ){
		f.prev_vol_list[0] = tf.current_bgm_vol;
		f.prev_vol_list[1] = tf.config_num_bgm;
		tf.current_bgm_vol = 0;
		tf.config_num_bgm  = 0;

	// 解除
	} else {
		tf.current_bgm_vol = f.prev_vol_list[0];
		tf.config_num_bgm  = f.prev_vol_list[1];
	}
[endscript]

*vol_bgm_change

	[free layer="0" name="bgmvol" time="0" wait="true"]
	[call target="*load_bgm_img"]
	[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_mute

[iscript]
	// ミュート
	if( tf.current_se_vol != 0 ){
		f.prev_vol_list[2] = tf.current_se_vol;
		f.prev_vol_list[3] = tf.config_num_se;
		tf.current_se_vol = 0;
		tf.config_num_se  = 0;

	// 解除
	} else {
		tf.current_se_vol = f.prev_vol_list[2];
		tf.config_num_se  = f.prev_vol_list[3];
	}
[endscript]

*vol_se_change

	[free layer="0" name="sevol" time="0" wait="true"]
	[call target="*load_se_img"]
	[seopt buf="0" volume="&tf.current_se_vol"]
	[seopt buf="1" volume="&tf.current_se_vol"]
	[seopt buf="3" volume="&tf.current_se_vol"]

[return]

;--------------------------------------------------------------------------------
; ボイス音量
;--------------------------------------------------------------------------------
*vol_vo_mute

[iscript]
	// ミュート
	if( tf.current_vo_vol != 0 ){
		f.prev_vol_list[4] = tf.current_vo_vol;
		f.prev_vol_list[5] = tf.config_num_vo;
		tf.current_vo_vol = 0;
		tf.config_num_vo  = 0;

	// 解除
	} else {
		tf.current_vo_vol = f.prev_vol_list[4];
		tf.config_num_vo  = f.prev_vol_list[5];
	}
[endscript]

*vol_vo_change

	[free layer="0" name="vovol" time="0" wait="true"]
	[call target="*load_vo_img"]
	[seopt buf="2" volume="&tf.current_vo_vol"]
	[playse buf="2" storage="Titlecall.mp3" volume="&tf.current_vo_vol"]

[return]

;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change

	[test_message_reset]

	[iscript]

	tf.current_ch_speed = tf.set_ch_speed;

	[endscript]

	[free layer="0" name="ch" time="0" wait="true"]
	[call target="*load_ch_img"]
	[configdelay speed="&tf.set_ch_speed"]


[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change

	[iscript]

	tf.current_auto_speed = tf.set_auto_speed;

	[endscript]

	[free layer="0" name="auto" time="0" wait="true"]
	[call target="*load_auto_img"]
	[autoconfig speed="&tf.set_auto_speed"]

[return]

;--------------------------------------------------------------------------------
; スキップ処理-OFF
;--------------------------------------------------------------------------------
*skip_off

	[iscript]

		tf.text_skip = "OFF";

	[endscript]

	[free layer="0" name="skip" time="0" wait="true"]
	[call target="*load_skip_img"]
	[config_record_label skip="false"]

[return]

;--------------------------------------------------------------------------------
; スキップ処理-ON
;--------------------------------------------------------------------------------
*skip_on

	[iscript]
		tf.text_skip = "ON";
	[endscript]

	[free layer="0" name="skip" time="0" wait="true"]
	[call target="*load_skip_img"]
	[config_record_label skip="true"]

[return]

;================================================================================

; 画像の読み込み

;================================================================================

*load_bgm_img
	[image layer="0" name="bgmvol" storage="&tf.btn_path_on" x="&tf.config_x[tf.config_num_bgm]" y="&tf.config_y[0]"]
	[return]

*load_se_img
	[image layer="0" name="sevol"  storage="&tf.btn_path_on" x="&tf.config_x[tf.config_num_se]" y="&tf.config_y[1]"]
	[return]

*load_vo_img
	[image layer="0" name="vovol"  storage="&tf.btn_path_on" x="&tf.config_x[tf.config_num_vo]" y="&tf.config_y[2]"]
	[return]

*load_ch_img
	[image layer="0" name="ch" storage="&tf.btn_path_on" x="&tf.config_x[tf.config_num_ch]" y="&tf.config_y[3]"]
	[return]

*load_auto_img
	[image layer="0" name="auto"  storage="&tf.btn_path_on" x="&tf.config_x[tf.config_num_auto]" y="&tf.config_y[4]"]
	[return]

*load_skip_img
	[if exp="tf.text_skip == 'ON'"]
		[image layer="0" name="skip" storage="&tf.img_path_skip_on"  x="640" y="722"]
	[else]
		[image layer="0" name="skip" storage="&tf.img_path_skip_off" x="448" y="722"]
	[endif]
	[return]

