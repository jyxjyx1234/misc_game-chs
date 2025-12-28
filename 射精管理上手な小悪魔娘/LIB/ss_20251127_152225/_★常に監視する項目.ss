#z00

////ＶＡよりお借りしたスクリプトを参考に改造しております。


// *************************************************************
// ＭＷボタンシステム：定義
// =============================================================
#inc_start
	#define		T_BTN_CNT		17		// ★（要調整）ボタンの個数です。調整して下さい。
	#define		T_LOCK_BTN_NO	16		// ★（要調整）ロックボタンの番号です。調整して下さい。
	#define		T_FA_NO			15		// ★（要調整）使うフレームアクションチャンネルの番号です。調整して下さい。
	#define		T_AREA_LEFT		1675	// ★（要調整）このＸ座標よりマウスを右に持ってくると、ボタンが現れます。調整して下さい。
	#define		T_AREA_TOP		00		// ★（要調整）このＹ座標よりマウスを下に持ってくると、ボタンが現れます。調整して下さい。

	#define		<menu_x>		1150	//メニューウィンドウの初期Xの値
	
	
	#DEFINE		<menu_color_back>	121,177,197
	#DEFINE		<menu_color_qsave>	161,4,38
	
	#DEFINE		<help_obj>	front.object[<help_txt_objno_wm>]

	#property	$mwnd_btn_appear
	
#inc_end

// *************************************************************
// ＭＷボタンシステム：初期化
// =============================================================
//		ゲームスタート時に必ず呼んで下さい。
// =============================================================
command $mwnd_button_init()
{

	//---------------------
	//初期設定

	// 初期状態ではボタンが現れています。
	$mwnd_btn_appear = 1
	
	set_mwnd(0)	
	key.clear	

	// フレームアクションでマウスを監視します。
	frame_action_ch[T_FA_NO].start(-1, "$mwnd_btn_check")
	
}

// *************************************************************
// ＭＷボタンシステム：ロード直後処理
// =============================================================
//		ロード直後処理の中で必ず呼んで下さい。
// =============================================================
command $mwnd_btn_load_after()
{

	L[10] = 0 
	
	key.clear

	// ロックしていない場合はボタンを隠します。
	
	front.mwnd[L[10]].button[000]. x = 200
	front.mwnd[L[10]].button[001]. x = 200
	front.mwnd[L[10]].button[002]. x = 200	
	front.mwnd[L[10]].button[003]. x = 200
	front.mwnd[L[10]].button[004]. x = 200
	front.mwnd[L[10]].button[005]. x = 200
	front.mwnd[L[10]].button[006]. x = 200

	//front.mwnd[L[10]].object[0].x = 1280
		
	$mwnd_btn_appear = 0


	// ロックしている場合はボタンを出現させます。
	if (T_LOCK_FLAG == 1)	{
		
		front.mwnd[L[10]].button[000]. x = 0
		front.mwnd[L[10]].button[001]. x = 0
		front.mwnd[L[10]].button[002]. x = 0
		front.mwnd[L[10]].button[003]. x = 0
		front.mwnd[L[10]].button[004]. x = 0
		front.mwnd[L[10]].button[005]. x = 0
		front.mwnd[L[10]].button[006]. x = 0

		$mwnd_btn_appear = 1
	}
	
}

// *************************************************************
// ＭＷボタンシステム：フレームアクションでボタンの出現判定
// =============================================================
command $mwnd_btn_check(property $fa : frameaction)		//☆常に監視
{

	L[10] = 0

	if (($novel_mode_flag == 0)) {
		@フォント縁設定一時ストック = syscom.get_font_decoration	//保存されてないようなのでチェック
	}

	front.object[<mark_auto>].create(__sys_mark_auto,syscom.get_auto_mode_onoff_flag,1837,17)
	front.object[<mark_skip>].create(__sys_mark_skip,syscom.get_read_skip_onoff_flag,1689,17)
	
	front.object[<mark_auto>].order = 11		//メッセージウィンドウと同じ
	front.object[<mark_skip>].order = 11		//メッセージウィンドウと同じ

	if (@キー操作による画面キャプチャー許可 == 1) {

		if (key[016].is_down == 1) {
			
				if (key[067].on_down_up == 1) {	//shift+c
				
					$capture_system(0)
				
					key.clear
				
				}
				
				if (key[086].on_down_up == 1) {	//shift+v
				
					$capture_system(1)
				
					//farcall("_capture_system")
				
					key.clear
				
				}
			}
	}
	
	l[0] = mouse.pos_x
	l[1] = mouse.pos_y

	// ボタンが現れていない場合
	if ($mwnd_btn_appear == 0)	{
		if (T_LOCK_FLAG == 1 || (system.check_active && (L[00] >= T_AREA_LEFT && l[1] >= T_AREA_TOP)))	{
			$mwnd_btn_appear = 1	// 出現！
			
			front.mwnd[L[10]].button[000].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[001].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[002].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[003].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[004].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[005].x_eve.set(0,200,0,2)
			front.mwnd[L[10]].button[006].x_eve.set(0,200,0,2)
		}
	}
	// ボタンが現れている場合
	else	{
		if (T_LOCK_FLAG == 0 && (system.check_active && (L[00] < T_AREA_LEFT || l[1] < T_AREA_TOP)))	{
		
			$mwnd_btn_appear = 0	// 隠れる…
			
			front.mwnd[L[10]].button[000].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[001].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[002].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[003].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[004].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[005].x_eve.set(200,200,0,2)
			front.mwnd[L[10]].button[006].x_eve.set(200,200,0,2)
		}

		if (front.mwnd[L[10]].button[000].get_button_hit_state == 1) {
			$help_text_save(0,<help_obj>,"01","[SAVE01]にクイックセーブします。")
		}
		elseif (front.mwnd[L[10]].button[001].get_button_hit_state == 1) {
			$help_text_save(0,<help_obj>,"01","[SAVE01]をロードします。")

		}
		elseif (front.mwnd[L[10]].button[002].get_button_hit_state == 1) {
			$help_text_save(1,<help_obj>,"02","[SAVE02]にクイックセーブします。")
		}
		elseif (front.mwnd[L[10]].button[003].get_button_hit_state == 1) {
			$help_text_save(1,<help_obj>,"02","[SAVE02]をロードします。")

		}
		elseif (front.mwnd[L[10]].button[004].get_button_hit_state == 1) {
			$help_text_save(2,<help_obj>,"03","[SAVE03]にクイックセーブします。")
		}
		elseif (front.mwnd[L[10]].button[005].get_button_hit_state == 1) {
			$help_text_save(2,<help_obj>,"03","[SAVE03]をロードします。")

		}
		
		elseif (front.mwnd[L[10]].button[010].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"メッセージウィンドウを一時的に消去します。")
		}
		elseif (front.mwnd[L[10]].button[011].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"ボイスをもう一度再生します。")
		}
		elseif (front.mwnd[L[10]].button[012].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"コンフィグを開きます。")
		}
		elseif (front.mwnd[L[10]].button[013].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"メッセージウィンドウ背景を変更します。#D[通常]→[黒]→[透明]→...　と押すたびに変わります。")
		}
		elseif (front.mwnd[L[10]].button[014].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"オートモードをONにします。")
		}
		elseif (front.mwnd[L[10]].button[015].get_button_hit_state == 1) {
			$help_text(<help_obj>,MW,"オートモードをOFFにします。")
		}
		else{
			<help_obj>.disp = 0
		}

	}
	
	$always_monitor_item()
	
}

// *************************************************************
// ＭＷボタンシステム：ロックボタンを押した
// =============================================================
#z01

	// ロック状態を 0/1 で切り替えるだけです。
	// 後の処理はフレームアクション内でやってくれます。
	T_LOCK_FLAG = 1 - T_LOCK_FLAG

	return





// *************************************************************
// 常に監視する項目
// ベースシステム以外で、企画ごとに監視する項目を記載する。
// =============================================================

command $always_monitor_item{
	
	//$chat_comment_random_display()
	//$chat_time_display() 

}


//-------------------------------------
//セーブデータ表示用ヘルプテキスト

command $help_text_save(property $quick_save_no,property $obj:object,property $position:str,property $moji : str) {

	property $xpos
	property $ypos
	property $step
	property $mes:str


	if (@ヘルプテキスト表示 == 0) {return}


	switch($position) {

		case("01")			L[01] = 1200 L[02] = 0
		case("02")			L[01] = 1200 L[02] = 160
		case("03")			L[01] = 1200 L[02] = 320

	
	}


	@ex_color_expand(<help_text_bg_color>)
	$obj.create_rect(0,0,560,540,$ex_color_r,$ex_color_g,$ex_color_b,215,1,L[01],L[02])

	$obj.layer = <help_txt_objno>
	$obj.order = <order_message>

	$obj.child.resize(30)
	
	$obj.child[0].create_rect(5,5,555,535,0,15,30,128,1)
	
	$obj.child[1].create_string($moji,1,15,20)	//画像配置のためやや下に
	$obj.child[1].set_string_param(26,0,7,20,21,0,0)
	
	if( syscom.get_quick_save_exist($quick_save_no) == 1 ){	//データ存在確認

		$obj.child[3].create_save_thumb($quick_save_no+100, 1, 75, 140)	//quicksave参照

		$obj.child[4].create_string("★現在のセーブデータ★",1,130,100)
		$obj.child[4].set_string_param(26,0,7,20,21,0,0)
		
		$xpos = 75
		$ypos = 380 
		$step = 16

		//0123/56/89 12:45:78
		$obj.child[05].create_number("__sys_saveload_time", 1, $xpos, $ypos )	//年
		$obj.child[05].set_number(syscom.get_quick_save_year($quick_save_no))
		$obj.child[05].set_number_param(4,1,0,1,1,$step)

		$obj.child[06].create("__sys_saveload_time", 1, $xpos+$step*4, $ypos, 10 )	//／

		$obj.child[07].create_number("__sys_saveload_time",1,$xpos+$step*5,$ypos)	//月
		$obj.child[07].set_number(syscom.get_quick_save_month($quick_save_no))
		$obj.child[07].set_number_param(2,1,0,1,1,$step)

		$obj.child[08].create("__sys_saveload_time",1,$xpos+$step*7,$ypos,10)	//／

		$obj.child[09].create_number("__sys_saveload_time",1,$xpos+$step*8,$ypos)	//日
		$obj.child[09].set_number(syscom.get_quick_save_day($quick_save_no))
		$obj.child[09].set_number_param(2,1,0,1,1,$step)

		$obj.child[10].create_number("__sys_saveload_time",1,$xpos+$step*11,$ypos)	//時
		$obj.child[10].set_number(syscom.get_quick_save_hour($quick_save_no))
		$obj.child[10].set_number_param(2,1,0,1,1,$step)

		$obj.child[11].create("__sys_saveload_time",1,$xpos+$step*13,$ypos,11)	//：

		$obj.child[12].create_number("__sys_saveload_time",1,$xpos+$step*14,$ypos)	//分
		$obj.child[12].set_number(syscom.get_quick_save_minute($quick_save_no))
		$obj.child[12].set_number_param(2,1,0,1,1,$step)

		$obj.child[13].create("__sys_saveload_time",1,$xpos+$step*16,$ypos,11)	//：

		$obj.child[14].create_number("__sys_saveload_time",1,$xpos+$step*17,$ypos)	//秒
		$obj.child[14].set_number(syscom.get_quick_save_second($quick_save_no))
		$obj.child[14].set_number_param(2,1,0,1,1,$step)

		$obj.child[15].create_rect(0,0,408,2,255,255,255,255,1,$xpos,$ypos+37)

		$mes = syscom.get_quick_save_message($quick_save_no)            // セーブデータのメッセージを取得する
		$mes = $mes.left_len(20*2*3)
		$obj.child[16].create_string($mes,1,$xpos,$ypos+50)	//メッセージ
		$obj.child[16].set_string_param( 20, 0, 0, 20, 0, 1, 0 )

		$obj.child[26].create_rect(  5,  5,555,  6,220,240,255,245,1)
		$obj.child[27].create_rect(  5,534,555,535,220,240,255,245,1)

		$obj.child[28].create_rect(  4,  5,  6,535,  0, 40, 60,245,1)
		$obj.child[29].create_rect(554,  5,556,535,  0, 40, 60,245,1)

	}else{
		$obj.child[4].create_string("現在、セーブデータはありません。",1,75,200)
		$obj.child[4].set_string_param(26,0,7,20,21,0,0)
	}


}




