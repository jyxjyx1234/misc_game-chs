//===========================================================================
//!
//!    @file     __sys_toast.ss
//!    @brief    トースト（レコード取得時のポップアップなど）
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     右上に表示されるレコード取得時などに使用できるポップアップ
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	#property	$toast_title : strlist			// 表示するタイトル
	#property	$toast_text  : strlist			// 表示する本文
	
	#property	$toast_state					// トーストの状態(0:表示判定／1:表示中／2:終了判定)
	#property	$toast_time						// 表示管理用の時間

#inc_end

#z00

//---------------------------------------------------------------------------
// トーストの機能を初期化する
//---------------------------------------------------------------------------
command $$init_toast(property $stage : stage)
{
	// トーストシーンオブジェクトを作成する
	$$create_toast_scene_object($stage)
	
	// システム画面出力ツールで絶対座標が出力されるため、子供オブジェクトの座標は親座標から相対座標化する
	$stage.object[@オブジェクト_トースト_タイトル].x -= $stage.object[@オブジェクト_トースト_背景].x
	$stage.object[@オブジェクト_トースト_タイトル].y -= $stage.object[@オブジェクト_トースト_背景].y
	$stage.object[@オブジェクト_トースト_本文].x -= $stage.object[@オブジェクト_トースト_背景].x
	$stage.object[@オブジェクト_トースト_本文].y -= $stage.object[@オブジェクト_トースト_背景].y
	
	// トーストは初期状態で画面外の座標に設定する
	$stage.object[@オブジェクト_トースト_背景].x = <SCREEN_WIDTH>
	$stage.object[@オブジェクト_トースト_背景].order = <ORDER_TOAST>
	$stage.object[@オブジェクト_トースト_背景].x_rep.resize(1)
	$stage.object[@オブジェクト_トースト_背景].tr_rep.resize(2)
	
	$stage.object[@オブジェクト_トースト_タイトル].set_string_param($stage.object[@オブジェクト_トースト_タイトル].f_font_size, 0, 0, 0, 0, 0, 0)
	$stage.object[@オブジェクト_トースト_本文].set_string_param($stage.object[@オブジェクト_トースト_本文].f_font_size, 0, 0, 0, 0, 0, 0)
	
	// トーストの制御を開始する
	frame_action_ch[<FRAME_ACTION_CH_TOAST>].start_real(-1, "$$fa_toast")
}

//---------------------------------------------------------------------------
// トーストの制御を開始する
//---------------------------------------------------------------------------
command $$fa_toast(property $fa : frameaction)
{
	// スタックがない場合は処理を終了する
	if( $toast_title.get_size == 0 ) {
		return
	}
	
	// スタックがあるので表示処理を行う
	switch( $toast_state ) {
	case(0)			// 表示
		
		// トーストを表示する
		$$show_toast_object(front)
		
		// 表示管理用の時間を保存する
		$toast_time = $fa.counter.get + 5000
		$toast_state = 1
		
	case(1)			// 消去待ち
		
		// 表示待ち時間を超えたので次の遷移へ
		if( $toast_time < $fa.counter.get )
		{
			$toast_state = 2
		}
		
	case(2)			// 次のトーストへ
		
		$$next_toast
		$toast_state = 0
	}
}

//---------------------------------------------------------------------------
// トーストを追加する
//---------------------------------------------------------------------------
command $$push_toast(property $title : str, property $text : str)
{
	property $len
	
	// 機能が有効になっていない場合は処理を終了する
	if( __TOAST_ENABLE == 0 ) {
		return
	}
	
	$len = $toast_title.get_size
	
	$toast_title.resize($len + 1)
	$toast_text.resize($len + 1)
	
	$toast_title[$len] = $title
	$toast_text[$len] = $text
}

//---------------------------------------------------------------------------
// 次のトーストに進む
//---------------------------------------------------------------------------
command $$next_toast
{
	property $i
	property $len
	
	$len = $toast_title.get_size - 1
	for( $i = 0, $i < $len, $i += 1 )
	{
		$toast_title[$i] = $toast_title[$i + 1]
		$toast_text[$i] = $toast_text[$i + 1]
	}
	
	$toast_title.resize($len)
	$toast_text.resize($len)
	
	return ($toast_title.get_size)
}

//---------------------------------------------------------------------------
//  現在追加されているトーストの数を取得する（表示中を含む）
//---------------------------------------------------------------------------
command $$get_toast_size : int
{
	return ($toast_title.get_size)
}

//---------------------------------------------------------------------------
// トーストを表示する
//---------------------------------------------------------------------------
command $$show_toast_object(property $stage : stage)
{
	property $title_width
	property $text_width
	property $move_x
	
	// トーストで表示するテキストを設定する
	$stage.object[@オブジェクト_トースト_タイトル].set_string($toast_title[0])
	$stage.object[@オブジェクト_トースト_本文].set_string($toast_text[0])
	
	// タイトルと本文、座標と文字数を考慮してどちらがより幅を取っているかを計算する
	$title_width = $stage.object[@オブジェクト_トースト_タイトル].f_font_size * $toast_title[0].len
	$text_width = $stage.object[@オブジェクト_トースト_本文].f_font_size * $toast_text[0].len - ($stage.object[@オブジェクト_トースト_本文].x - $stage.object[@オブジェクト_トースト_タイトル].x)
	
	if( $text_width < $title_width )
	{
		$move_x = $stage.object[@オブジェクト_トースト_タイトル].x + $stage.object[@オブジェクト_トースト_タイトル].f_font_size / 2 * $toast_title[0].len + __TOAST_MARGIN_RIGHT
	}
	else
	{
		$move_x = $stage.object[@オブジェクト_トースト_本文].x + $stage.object[@オブジェクト_トースト_本文].f_font_size / 2 * $toast_text[0].len + __TOAST_MARGIN_RIGHT
	}
	
	// 出現イベント
	$stage.object[@オブジェクト_トースト_背景].x_rep[0] = 0
	$stage.object[@オブジェクト_トースト_背景].x_rep_eve[0].set_real(-$move_x, __TOAST_SHOW_TIME, 0, 2)
	
	// 出現イベント
	$stage.object[@オブジェクト_トースト_背景].tr_rep[0] = 0
	$stage.object[@オブジェクト_トースト_背景].tr_rep_eve[0].set_real(255, __TOAST_SHOW_TIME, 0, 2)
	
	// 消去イベント
	$stage.object[@オブジェクト_トースト_背景].tr_rep[1] = 255
	$stage.object[@オブジェクト_トースト_背景].tr_rep_eve[1].set_real(0, __TOAST_HIDE_TIME, __TOAST_WAIT_TIME, 2)
}




//---------------------------------------------------------------------------
// システムトーストを表示する
//---------------------------------------------------------------------------
command $$show_system_toast(property $type)
{
	// システムメッセージが有効でない場合は終了する
	if( __SYSTEM_TOAST_ENABLE == 0 ) {
		return
	}
	
	// セーブなど重い処理が走っている場合があるので画面を一度更新する
	disp
	
	// オブジェクトを作成する
	front.object[<OBJ_SYS_TOAST>].create(__SYSTEM_TOAST_FILENAME, 1, __SYSTEM_TOAST_POS_X + __SYSTEM_TOAST_ANIM_X, __SYSTEM_TOAST_POS_Y + __SYSTEM_TOAST_ANIM_Y, $type)
	front.object[<OBJ_SYS_TOAST>].order = <ORDER_TOAST>
	front.object[<OBJ_SYS_TOAST>].tr = 0
	
	// 透明度、座標を変更するアクションを実行する
	front.object[<OBJ_SYS_TOAST>].frame_action.start(__SYSTEM_TOAST_SHOW_TIME + __SYSTEM_TOAST_WAIT_TIME + __SYSTEM_TOAST_HIDE_TIME, "$$fa_system_toast")
}

//---------------------------------------------------------------------------
// システムトーストのフレームアクション
//---------------------------------------------------------------------------
command $$fa_system_toast(property $fa : frameaction, property $obj : object)
{
	l[0] = $fa.counter.get
	
	// 座標アニメーションを実行する
	$obj.x  = math.timetable(l[0], 0, __SYSTEM_TOAST_POS_X + __SYSTEM_TOAST_ANIM_X, [0, __SYSTEM_TOAST_SHOW_TIME, __SYSTEM_TOAST_POS_X, 2])
	$obj.y  = math.timetable(l[0], 0, __SYSTEM_TOAST_POS_Y + __SYSTEM_TOAST_ANIM_Y, [0, __SYSTEM_TOAST_SHOW_TIME, __SYSTEM_TOAST_POS_Y, 2])
	
	// 透明度アニメーションを実行する
	$obj.tr = math.timetable(l[0], 0, 0, [0, __SYSTEM_TOAST_SHOW_TIME, 255, 2], [__SYSTEM_TOAST_SHOW_TIME + __SYSTEM_TOAST_WAIT_TIME, __SYSTEM_TOAST_SHOW_TIME + __SYSTEM_TOAST_WAIT_TIME + __SYSTEM_TOAST_HIDE_TIME, 0, 2])
}
