//===========================================================================
//!
//!    @file     __sys_sidebar.ss
//!    @brief    サイドバー(システム側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	// タブ定義
	#define		@サイドバー_タブ_オート			(@サイドバー_タブ最大数 - 2)
	#define		@サイドバー_タブ_クイック		(@サイドバー_タブ最大数 - 1)
	
	#property	$tab		// 現在のタブ
	#property	$page		// 現在のページ
	
	#property	$state				// ステート
	#property	$hit_thumb			// マウスオーバーしているサムネイルインデックス
	#property	$fa_stop_flag		// フレームアクション停止フラグ
	
	#property	$save_title_moji_max		// サムネイルのセーブタイトル文字最大数
	#property	$save_message_moji_max		// サムネイルのセーブメッセージ文字最大数
	
	#define		.font_size			.f[0]		// フォントサイズ

#inc_end

#z00

//---------------------------------------------------------------------------
// サイドバーを初期化する
//---------------------------------------------------------------------------
command $$init_sidebar(property $stage : stage, property $obj : object)
{
	property $i
	property $j
	property $len
	
	// 変数を初期化する
	$state = 0
	$hit_thumb = -1
	$fa_stop_flag = 0
	
	// セーブロードページからタブ／ページインデックスを取得する
	$tab  = <SAVELOAD_PAGE> / @サイドバー_ページ最大数
	$page = <SAVELOAD_PAGE> % @サイドバー_ページ最大数
	
	// サイドバーオブジェクトを作成する
	$obj.init
	$obj.disp = 1
	$obj.order = <ORDER_SIDEBAR>
	$obj.wipe_copy = 1
	
	if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) { $obj.x = -__SIDEBAR_MOVE_POS }
	else									 { $obj.x =  __SIDEBAR_MOVE_POS }
	$obj.child.resize(7 + 12 + 10 + 2)
	
	switch( <SIDEBAR_MODE> ) {
	case(<SIDEBAR_MODE_R>)		$$create_sidebar_r_object($stage, $obj)		// 右配置
	case(<SIDEBAR_MODE_L>)		$$create_sidebar_l_object($stage, $obj)		// 左配置
	case(<SIDEBAR_MODE_OFF>)	return
	}
	
	// サイドバーセーブサムネイルを作成する
	$obj.child[@イメージ_サイドバー_サムネイル].disp = 0
	$obj.child[@イメージ_サイドバー_サムネイル].child.resize(3)
	
	switch( <SIDEBAR_MODE> ) {
	case(<SIDEBAR_MODE_R>)		$$create_sidebar_r_save_thumbnail($obj.child[@イメージ_サイドバー_サムネイル])		// 右配置
	case(<SIDEBAR_MODE_L>)		$$create_sidebar_l_save_thumbnail($obj.child[@イメージ_サイドバー_サムネイル])		// 左配置
	case(<SIDEBAR_MODE_OFF>)	return
	}
	
	// 親オブジェクトから各サムネイルオブジェクトの座標を補正する
	$len = $obj.child[@イメージ_サイドバー_サムネイル].child.get_size
	for( $j = 0, $j < $len, $j += 1 )
	{
		if( $obj.child[@イメージ_サイドバー_サムネイル].child[$j].disp ) {
			$obj.child[@イメージ_サイドバー_サムネイル].child[$j].x -= $obj.child[@イメージ_サイドバー_サムネイル].x
			$obj.child[@イメージ_サイドバー_サムネイル].child[$j].y -= $obj.child[@イメージ_サイドバー_サムネイル].y
		}
	}
	
	// ＮＥＷ表記のデータボタンからのオフセット座標を保存する
	$obj.child[@イメージ_サイドバー_ＮＥＷ].f.resize(2)
	$obj.child[@イメージ_サイドバー_ＮＥＷ].f[0] = $obj.child[@イメージ_サイドバー_ＮＥＷ].x - $obj.child[@ボタン_サイドバー_データ].x
	$obj.child[@イメージ_サイドバー_ＮＥＷ].f[1] = $obj.child[@イメージ_サイドバー_ＮＥＷ].y - $obj.child[@ボタン_サイドバー_データ].y
	
	// 当たり判定用領域は表示しないようにする
	$obj.child[@ボタン_サイドバー_領域].tr = 1
	
	// 各オブジェクトの調整をする
	$obj.child[@イメージ_サイドバー_ページ番号].set_number_param(2, 1, 0, 0, 0, 4)
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object($obj)
	
	// 各ボタンコールを設定する
	$obj.child[@ボタン_サイドバー_領域].set_button_call("$$push_sidebar_area")
	$obj.child[@ボタン_サイドバー_モード_セーブ].set_button_call("$$push_save_mode")
	$obj.child[@ボタン_サイドバー_モード_ロード].set_button_call("$$push_load_mode")
	$obj.child[@ボタン_サイドバー_ページ_戻る].set_button_call("$$push_prev_page")
	$obj.child[@ボタン_サイドバー_ページ_進む].set_button_call("$$push_next_page")
	for( $i = 0, $i < @サイドバー_タブ最大数, $i += 1 ) {
		$obj.child[@ボタン_サイドバー_タブ + $i].set_button_call("$$push_tab" + math.tostr_zero($i, 2))
	}
	for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 ) {
		$obj.child[@ボタン_サイドバー_データ + $i].set_button_call("$$push_data" + math.tostr_zero($i, 2))
	}
	
	// フレームアクションを開始する
	frame_action_ch[<FRAME_ACTION_CH_SIDEBAR>].start(-1, "$$fa_sidebar")
}

//---------------------------------------------------------------------------
// サイドバーを終了する
//---------------------------------------------------------------------------
command $$end_sidebar(property $stage : stage, property $obj : object)
{
	// フレームアクションを停止する
	frame_action_ch[<FRAME_ACTION_CH_SIDEBAR>].end
	
	// サイドバーを初期化する
	$obj.init
}

//---------------------------------------------------------------------------
// サイドバーオブジェクトを更新する
//---------------------------------------------------------------------------
command $$update_sidebar_object(property $obj : object)
{
	property $i
	property $save_no
	
	// セーブロードページからタブ／ページインデックスを取得する
	if( <SAVELOAD_PAGE> == @サイドバー_ページ最大数 * @サイドバー_データ最大数 )
	{
		$tab  = @サイドバー_タブ_オート
		$page = 0
	}
	elseif( <SAVELOAD_PAGE> == @サイドバー_ページ最大数 * @サイドバー_データ最大数 + 1 )
	{
		$tab  = @サイドバー_タブ_クイック
		$page = 0
	}
	else
	{
		$tab  = <SAVELOAD_PAGE> / @サイドバー_ページ最大数
		$page = <SAVELOAD_PAGE> % @サイドバー_ページ最大数
	}
	
	if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ )
	{
		// 背景
		$obj.child[@イメージ_サイドバー_背景].patno = 0
		
		// モードボタン
		$obj.child[@ボタン_サイドバー_モード_セーブ].set_button_state_select
		$obj.child[@ボタン_サイドバー_モード_ロード].set_button_state_normal
		
		// ページ番号
		$obj.child[@イメージ_サイドバー_ページ番号].patno = 0
		
		// ページボタン
		$obj.child[@ボタン_サイドバー_ページ_戻る].patno = 0
		$obj.child[@ボタン_サイドバー_ページ_進む].patno = 0
		
		// タブボタン
		for( $i = 0, $i < @サイドバー_タブ最大数, $i += 1 )
		{
			$obj.child[@ボタン_サイドバー_タブ + $i].patno = 0
			
//			if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) {
//				if( $i == 0 || $i == @サイドバー_タブ最大数 - 1 ) {
//					$obj.child[@ボタン_サイドバー_タブ + $i].patno = 10
//				}
//			}
		}
		
		// データボタン
		for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
		{
			$obj.child[@ボタン_サイドバー_データ + $i].patno = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_ロック].patno = 0
		}
		
		// ＮＥＷ表示
		$obj.child[@イメージ_サイドバー_ＮＥＷ].patno = 0
	}
	else
	{
		// 背景
		$obj.child[@イメージ_サイドバー_背景].patno = 1
		
		// モードボタン
		$obj.child[@ボタン_サイドバー_モード_セーブ].set_button_state_normal
		$obj.child[@ボタン_サイドバー_モード_ロード].set_button_state_select
		
		// ページ番号
		$obj.child[@イメージ_サイドバー_ページ番号].patno = 10
		
		// ページボタン
		$obj.child[@ボタン_サイドバー_ページ_戻る].patno = 5
		$obj.child[@ボタン_サイドバー_ページ_進む].patno = 5
		
		// タブボタン
		for( $i = 0, $i < @サイドバー_タブ最大数, $i += 1 )
		{
			$obj.child[@ボタン_サイドバー_タブ + $i].patno = 5
			
//			if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) {
//				if( $i == 0 || $i == @サイドバー_タブ最大数 - 1 ) {
//					$obj.child[@ボタン_サイドバー_タブ + $i].patno = 15
//				}
//			}
		}
		
		// データボタン
		for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
		{
			$obj.child[@ボタン_サイドバー_データ + $i].patno = 5
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_ロック].patno = 1
		}
		
		// ＮＥＷ表示
		$obj.child[@イメージ_サイドバー_ＮＥＷ].patno = 1
	}
	
	// ページ表示
	$obj.child[@イメージ_サイドバー_ページ番号].set_number($page + 1)
	
	// タブ表示
	for( $i = 0, $i < @サイドバー_タブ最大数, $i += 1 )
	{
		if( $i == $tab ) { $obj.child[@ボタン_サイドバー_タブ + $i].set_button_state_select }
		else			 { $obj.child[@ボタン_サイドバー_タブ + $i].set_button_state_normal }
	}
	
	// ＮＥＷ表示
	for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
	{
		if( $$get_save_no($i) == $$get_new_save_no )
		{
			$obj.child[@イメージ_サイドバー_ＮＥＷ].disp = 1
			$obj.child[@イメージ_サイドバー_ＮＥＷ].x = $obj.child[@イメージ_サイドバー_ＮＥＷ].f[0] + $obj.child[@ボタン_サイドバー_データ + $i].x
			$obj.child[@イメージ_サイドバー_ＮＥＷ].y = $obj.child[@イメージ_サイドバー_ＮＥＷ].f[1] + $obj.child[@ボタン_サイドバー_データ + $i].y
			
			break
		}
	}
	
	if( $i == @サイドバー_データ最大数 )
	{
		$obj.child[@イメージ_サイドバー_ＮＥＷ].disp = 0
	}
	
	// タブボタン
	if( $tab == @サイドバー_タブ_オート || $tab == @サイドバー_タブ_クイック )
	{
		$obj.child[@ボタン_サイドバー_ページ_戻る].disp = 0
		$obj.child[@ボタン_サイドバー_ページ_進む].disp = 0
	}
	else
	{
		$obj.child[@ボタン_サイドバー_ページ_戻る].disp = 1
		$obj.child[@ボタン_サイドバー_ページ_進む].disp = 1
	}
	
	// データボタン
	for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
	{
		$save_no = $$get_save_no($i)
		
		if( $tab == @サイドバー_タブ_オート || $tab == @サイドバー_タブ_クイック )
		{
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_セーブ番号].set_number($i + 1)
		}
		else
		{
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_セーブ番号].set_number($save_no + 1)
		}
		
		$obj.child[@ボタン_サイドバー_データ + $i].set_button_state_normal
		$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_ロック].disp = $$get_savedata_lock($save_no)
		
		if( syscom.get_save_exist($save_no) )
		{
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日時_背景].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_年].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_月].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_日].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_時].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_分].disp = 1
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_年].set_number(syscom.get_save_year($save_no))
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_月].set_number(syscom.get_save_month($save_no))
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_日].set_number(syscom.get_save_day($save_no))
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_時].set_number(syscom.get_save_hour($save_no))
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_分].set_number(syscom.get_save_minute($save_no))
			
			if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ && $$get_savedata_lock($save_no) )
			{
				$obj.child[@ボタン_サイドバー_データ + $i].set_button_state_disable
			}
		}
		else
		{
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日時_背景].disp = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_年].disp = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_月].disp = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_日].disp = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_時].disp = 0
			$obj.child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_分].disp = 0
			
			if( <SAVELOAD_MODE> == @セーブロード_モード_ロード )
			{
				$obj.child[@ボタン_サイドバー_データ + $i].set_button_state_disable
			}
		}
		
		if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ && ($tab == @サイドバー_タブ_オート || $tab == @サイドバー_タブ_クイック) )
		{
			$obj.child[@ボタン_サイドバー_データ + $i].set_button_state_disable
		}
		
		// サイドバーデータボタンを更新する
		$$update_sidebar_data_button($obj.child[@ボタン_サイドバー_データ + $i], $i)
	}
	
	// サイドバーオブジェクトを調整する
	$$adjust_sidebar_object($obj)
}

//---------------------------------------------------------------------------
// サイドバーデータボタンを更新する
//---------------------------------------------------------------------------
command $$update_sidebar_data_button(property $obj : object, property $data_index)
{
	property $patno
	
	if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ )
	{
		switch( $obj.get_button_real_state ) {
		case(0)		$patno = 0
		case(1)		$patno = 10
		case(2)		$patno = 20
		case(3)		$patno = 20
		case(4)		$patno = 30
		}
	}
	else
	{
		switch( $obj.get_button_real_state ) {
		case(0)		$patno = 40
		case(1)		$patno = 50
		case(2)		$patno = 60
		case(3)		$patno = 60
		case(4)		$patno = 70
		}
	}
	
	$obj.child[@イメージ_サイドバー_データ_セーブ番号].patno = $patno
	$obj.child[@イメージ_サイドバー_データ_日時_背景].patno = $patno / 10
	$obj.child[@イメージ_サイドバー_データ_日付_年].patno = $patno
	$obj.child[@イメージ_サイドバー_データ_日付_月].patno = $patno
	$obj.child[@イメージ_サイドバー_データ_日付_日].patno = $patno
	$obj.child[@イメージ_サイドバー_データ_時間_時].patno = $patno
	$obj.child[@イメージ_サイドバー_データ_時間_分].patno = $patno
}

//---------------------------------------------------------------------------
// サイドバーサムネイルオブジェクトを更新する
//---------------------------------------------------------------------------
command $$update_sidebar_thumb_object(property $obj : object, property $save_no)
{
	property $x
	property $y
	property $tmp : str
	
	// セーブサムネイルの位置を取得する
	$x = $obj.child[@イメージ_サイドバー_サムネイル_画像].x
	$y = $obj.child[@イメージ_サイドバー_サムネイル_画像].y
	
	// セーブモードによる描画の更新
	if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ )
	{
		$obj.patno = 0
		$obj.child[@イメージ_サイドバー_サムネイル_タイトル].set_string_param(18, 0, 0, 0, @サイドバー_セーブ_テキストカラー, 1, 0)
		$obj.child[@イメージ_サイドバー_サムネイル_メッセージ].set_string_param(18, 0, 0, 0, @サイドバー_セーブ_テキストカラー, 1, 0)
	}
	else
	{
		$obj.patno = 1
		$obj.child[@イメージ_サイドバー_サムネイル_タイトル].set_string_param(18, 0, 0, 0, @サイドバー_ロード_テキストカラー, 1, 0)
		$obj.child[@イメージ_サイドバー_サムネイル_メッセージ].set_string_param(18, 0, 0, 0, @サイドバー_ロード_テキストカラー, 1, 0)
	}
	
	// セーブデータによる描画の更新
	$obj.child[@イメージ_サイドバー_サムネイル_画像].create_save_thumb($save_no, 1, $x, $y)
	
	// セーブタイトル
	$tmp = syscom.get_save_title($save_no)
	$obj.child[@イメージ_サイドバー_サムネイル_タイトル].set_string($tmp.left($save_title_moji_max))
	
	// セーブメッセージ
	$tmp = syscom.get_save_message($save_no)
	$obj.child[@イメージ_サイドバー_サムネイル_メッセージ].set_string($tmp.left($save_message_moji_max))
}

//---------------------------------------------------------------------------
// サイドバーオブジェクトを表示する
//---------------------------------------------------------------------------
command $$show_sidebar
{
	// ステートが表示可能な場合以外は終了する
	if( $state ) {
		return
	}
	
	// ステートを次に進める
	$state = 1
	
	// サイドバー表示アニメーションを実行する
	if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) {
		front.object[<OBJ_SIDEBAR>].x = -__SIDEBAR_MOVE_POS
	} else {
		front.object[<OBJ_SIDEBAR>].x =  __SIDEBAR_MOVE_POS
	}
	
	if( <EFFECT_SPEED_SYS_MENU> ) {
		front.object[<OBJ_SIDEBAR>].x_eve.set_real(0, 0, 0, 2)
	} else {
		front.object[<OBJ_SIDEBAR>].x_eve.set_real(0, __SIDEBAR_SHOW_TIME, 0, 2)
	}
}

//---------------------------------------------------------------------------
// サイドバーオブジェクトを非表示にする
//---------------------------------------------------------------------------
command $$hide_sidebar
{
	// ステートが非表示可能な場合以外は終了する
	if( $state == 0 ) {
		return
	}
	
	// ステートを次に進める
	$state = 3
	
	// サイドバー非表示アニメーションを実行する
	front.object[<OBJ_SIDEBAR>].x = 0
	if( <EFFECT_SPEED_SYS_MENU> ) {
		if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) {
			front.object[<OBJ_SIDEBAR>].x_eve.set_real(-__SIDEBAR_MOVE_POS, 0, 0, 2)
		} else {
			front.object[<OBJ_SIDEBAR>].x_eve.set_real( __SIDEBAR_MOVE_POS, 0, 0, 2)
		}
	} else {
		if( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> ) {
			front.object[<OBJ_SIDEBAR>].x_eve.set_real(-__SIDEBAR_MOVE_POS, __SIDEBAR_HIDE_TIME, 0, 2)
		} else {
			front.object[<OBJ_SIDEBAR>].x_eve.set_real( __SIDEBAR_MOVE_POS, __SIDEBAR_HIDE_TIME, 0, 2)
		}
	}
}


//---------------------------------------------------------------------------
// サイドバー領域を押した
//---------------------------------------------------------------------------
command $$push_sidebar_area
{
	// ※サイドバー領域をクリックすることで
	//   ＡＤＶモードではメッセージを進めないようにする
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

//---------------------------------------------------------------------------
// セーブモードを押した
//---------------------------------------------------------------------------
command $$push_save_mode
{
	// セーブモードに変更する
	<SAVELOAD_MODE> = @セーブロード_モード_セーブ
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

//---------------------------------------------------------------------------
// ロードモードを押した
//---------------------------------------------------------------------------
command $$push_load_mode
{
	// ロードモードに変更する
	<SAVELOAD_MODE> = @セーブロード_モード_ロード
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

//---------------------------------------------------------------------------
// 戻るページを押した
//---------------------------------------------------------------------------
command $$push_prev_page
{
	// ページを戻す
	$page -= 1
	if( $page < 0 )
	{
		$page = @サイドバー_ページ最大数 - 1
	}
	
	// セーブロードページを保存する
	<SAVELOAD_PAGE> = $tab * @サイドバー_ページ最大数 + $page
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

//---------------------------------------------------------------------------
// 進むページを押した
//---------------------------------------------------------------------------
command $$push_next_page
{
	// ページを進める
	$page += 1
	if( $page > @サイドバー_ページ最大数 - 1 )
	{
		$page = 0
	}
	
	// セーブロードページを保存する
	<SAVELOAD_PAGE> = $tab * @サイドバー_ページ最大数 + $page
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

//---------------------------------------------------------------------------
// タブを押した
//---------------------------------------------------------------------------
command $$push_tab(property $tab_index)
{
	// タブインデックスを更新する
	$tab = $tab_index
	
	// オート／クイックタブの場合はページを初期化する
	if( $tab == @サイドバー_タブ_オート || $tab == @サイドバー_タブ_クイック )
	{
		$page = 0
	}
	
	// セーブロードページを保存する
	if( $tab == @サイドバー_タブ_オート )
	{
		<SAVELOAD_PAGE> = @サイドバー_ページ最大数 * @サイドバー_データ最大数
	}
	elseif( $tab == @サイドバー_タブ_クイック )
	{
		<SAVELOAD_PAGE> = @サイドバー_ページ最大数 * @サイドバー_データ最大数 + 1
	}
	else
	{
		<SAVELOAD_PAGE> = $tab * @サイドバー_ページ最大数 + $page
	}
	
	// サイドバーオブジェクトを更新する
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
	
	// ボタングループを再開始する
	front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
}

command $$push_tab00 { $$push_tab(0) }
command $$push_tab01 { $$push_tab(1) }
command $$push_tab02 { $$push_tab(2) }
command $$push_tab03 { $$push_tab(3) }
command $$push_tab04 { $$push_tab(4) }
command $$push_tab05 { $$push_tab(5) }
command $$push_tab06 { $$push_tab(6) }
command $$push_tab07 { $$push_tab(7) }
command $$push_tab08 { $$push_tab(8) }
command $$push_tab09 { $$push_tab(9) }
command $$push_tab10 { $$push_tab(10) }
command $$push_tab11 { $$push_tab(11) }

//---------------------------------------------------------------------------
// データを押した
//---------------------------------------------------------------------------
command $$push_data(property $data_index)
{
	property $save_no
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($data_index)
	
	// セーブモードの場合
	if( <SAVELOAD_MODE> == @セーブロード_モード_セーブ )
	{
		// フレームアクションを停止する
		$fa_stop_flag = 1
		
		// サイドバーを非表示にする
		front.object[<OBJ_SIDEBAR>].disp = 0
		
		// ボタングループを終了する
		front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].end
		
		// セーブデータの存在をチェックする
		if( syscom.get_save_exist($save_no) )
		{
			// 上書きセーブ確認ダイアログへ
			$$excall_ready
			$$call_saveload_yesno_dialog(@確認ダイアログ_モード_上書きセーブ, $save_no)
			$$excall_free
		}
		else
		{
			// セーブ確認ダイアログへ
			$$excall_ready
			$$call_saveload_yesno_dialog(@確認ダイアログ_モード_セーブ, $save_no)
			$$excall_free
		}
		
		// サイドバーオブジェクトを更新する
		$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
		
		// サイドバーを表示する
		front.object[<OBJ_SIDEBAR>].disp = 1
		
		// 表示を更新して、ウェイトを入れる
		disp
		timewait(500)
		
		// フレームアクションを再開する
		$fa_stop_flag = 0
		
		// ボタングループを再開始する
		front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
	}
	
	// ロードモードの場合
	else
	{
		// フレームアクションを停止する
		$fa_stop_flag = 1
		
		// サイドバーを非表示にする
		front.object[<OBJ_SIDEBAR>].disp = 0
		
		// ボタングループを終了する
		front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].end
		
		// ロード確認ダイアログへ
		$$excall_ready
		$$call_saveload_yesno_dialog(@確認ダイアログ_モード_ロード, $save_no)
		$$excall_free
		
		// サイドバーオブジェクトを更新する
		$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
		
		// サイドバーを表示する
		front.object[<OBJ_SIDEBAR>].disp = 1
		
		// フレームアクションを再開する
		$fa_stop_flag = 0
		
		// ボタングループを再開始する
		front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
	}
}

command $$push_data00 { $$push_data(0) }
command $$push_data01 { $$push_data(1) }
command $$push_data02 { $$push_data(2) }
command $$push_data03 { $$push_data(3) }
command $$push_data04 { $$push_data(4) }
command $$push_data05 { $$push_data(5) }
command $$push_data06 { $$push_data(6) }
command $$push_data07 { $$push_data(7) }
command $$push_data08 { $$push_data(8) }
command $$push_data09 { $$push_data(9) }

//---------------------------------------------------------------------------
// サイドバーで使用するイメージを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_image(property $obj : object, property $filename : str, property $x, property $y)
{
	// ファイル名が指定されている場合はオブジェクトを作成する
	if( $filename != "" )
	{
		$obj.create($filename, 1, $x, $y)
	}
	else
	{
		// そうでない場合は表示状態にして座標を設定する
		$obj.disp = 1
		$obj.set_pos($x, $y)
	}
}

//---------------------------------------------------------------------------
// サイドバーで使用する数字イメージを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_number_image(property $obj : object, property $filename : str, property $x, property $y)
{
	$obj.create_number($filename, 1, $x, $y)
}

//---------------------------------------------------------------------------
// サイドバーで使用するボタンを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	$obj.create($filename, 1, $x, $y)
	$obj.set_button($button_no, $button_group_no, 1, $button_se_no)
}

//---------------------------------------------------------------------------
// サイドバーで使用する文字列を作成する
//---------------------------------------------------------------------------
command $$create_sidebar_string(property $obj : object, property $x, property $y, property $w, property $h, property $font_size)
{
	$obj.create_string("", 1, $x, $y)
	$obj.set_string_param($font_size, 0, 0, 0, 0, 0, 0)
	
	$obj.f.resize(1)
	$obj.font_size = $font_size
}

//---------------------------------------------------------------------------
// サイドバーで使用するすべてのデータボタンを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_all_data_button(property $stage : stage, property $filename : str, property $x, property $y, property $offset_x, property $offset_y, property $num)
{
	property $i
	property $j
	property $len
	
	for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
	{
		$$create_sidebar_button($stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i], $filename, $x, $y, @ボタン_サイドバー_データ + $i, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
		
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child.resize(8)
		
		// サイドバーデータオブジェクトを作成する
		switch( <SIDEBAR_MODE> ) {
		case(<SIDEBAR_MODE_R>)		$$create_sidebar_r_data_object($stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i])		// 右配置
		case(<SIDEBAR_MODE_L>)		$$create_sidebar_l_data_object($stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i])		// 左配置
		case(<SIDEBAR_MODE_OFF>)	return
		}
		
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].x = $x
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].y = $y + $offset_y * $i
		
		// 親オブジェクトから各サムネイルオブジェクトの座標を補正する
		$len = $stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child.get_size
		for( $j = 0, $j < $len, $j += 1 )
		{
			if( $stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[$j].disp ) {
				$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[$j].x -= $stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ].x
				$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[$j].y -= $stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ].y
			}
		}
		
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_セーブ番号].set_number_param(3, 1, 0, 0, 0, 0)
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_年].set_number_param(4, 1, 0, 0, 0, 0)
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_月].set_number_param(2, 1, 0, 0, 0, 0)
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_日付_日].set_number_param(2, 1, 0, 0, 0, 0)
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_時].set_number_param(2, 1, 0, 0, 0, 0)
		$stage.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].child[@イメージ_サイドバー_データ_時間_分].set_number_param(2, 1, 0, 0, 0, 0)
	}
}

//---------------------------------------------------------------------------
// サムネイルのセーブタイトル／メッセージ文字最大数(半角)を設定する
//---------------------------------------------------------------------------
command $$set_sidebar_save_title_moji_max(property $max)   { $save_title_moji_max   = $max }
command $$set_sidebar_save_message_moji_max(property $max) { $save_message_moji_max = $max }

//---------------------------------------------------------------------------
// セーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_save_no(property $index) : int
{
	if( $tab == @サイドバー_タブ_オート )
	{
		return (syscom.get_save_cnt - __AUTO_SAVE_CNT + $index)
	}
	elseif( $tab == @サイドバー_タブ_クイック )
	{
		return (syscom.get_save_cnt + $index)
	}
	else
	{
		return ($tab * @サイドバー_ページ最大数 * @サイドバー_データ最大数 + $page * @サイドバー_データ最大数 + $index)
	}
}

//---------------------------------------------------------------------------
// 最新のセーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_new_save_no : int
{
	property $save_no
	
	if( $tab == @サイドバー_タブ_オート )
	{
		$save_no = syscom.get_save_new_no(syscom.get_save_cnt - __AUTO_SAVE_CNT, syscom.get_save_cnt)
	}
	elseif( $tab == @サイドバー_タブ_クイック )
	{
		$save_no = syscom.get_save_cnt + syscom.get_quick_save_new_no
	}
	else
	{
		$save_no = syscom.get_save_new_no(0, syscom.get_save_cnt - __AUTO_SAVE_CNT)
	}
	
	return ($save_no)
}

//---------------------------------------------------------------------------
// サイドバーのフレームアクション
//---------------------------------------------------------------------------
command $$fa_sidebar(property $fa : frameaction)
{
	property $i
	property $save_no
	
	// メッセージバックが開いている場合は処理を終了する
	if( syscom.check_msg_back_open ) {
		return
	}
	
	// フレームアクション停止フラグがオンの場合は処理を終了する
	if( $fa_stop_flag == 1 ) {
		return
	}
	
	// 「ウィンドウを消す」が使用不可能になっている場合はサイドバーを表示しない
	if( syscom.get_hide_mwnd_enable_flag == 0 )
	{
		front.object[<OBJ_SIDEBAR>].disp = 0
		return
	}
	else
	{
		front.object[<OBJ_SIDEBAR>].disp = 1
	}
	
	// ステートによってサイドバーの処理を変更する
	switch( $state ) {
	
	// 非表示中
	case(0)
		
		// ウィンドウがアクティブでない場合は表示しない
		if( system.check_active == 0 ) {
			return
		}
		
		// セーブ不可の場合は表示しない
		if( syscom.check_save_enable == 0 ) {
			return
		}
		
		// マウスが当たり判定内に入った場合、サイドバーを表示する
		if( <SIDEBAR_MODE> == <SIDEBAR_MODE_R> )
		{
			if( __SIDEBAR_R_SHOW_HIT_RECT_L <= mouse.get_pos_x && __SIDEBAR_R_SHOW_HIT_RECT_T <= mouse.get_pos_y && mouse.get_pos_y <= __SIDEBAR_R_SHOW_HIT_RECT_B )
			{
				$$show_sidebar
			}
		}
		elseif( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> )
		{
			if( mouse.get_pos_x <= __SIDEBAR_L_SHOW_HIT_RECT_R && __SIDEBAR_L_SHOW_HIT_RECT_T <= mouse.get_pos_y && mouse.get_pos_y <= __SIDEBAR_L_SHOW_HIT_RECT_B )
			{
				$$show_sidebar
			}
		}
		
	// 表示アニメーション中
	case(1)
		
		// 表示アニメーションが終われば次のステートに進める
		if( front.object[<OBJ_SIDEBAR>].x_eve.check == 0 )
		{
			$state = 2
			front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
		}
	
	// 表示中
	case(2)
		
		// セーブ不可の場合は非表示にする
		if( syscom.check_save_enable == 0 )
		{
			front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].end
			$$hide_sidebar
		}
		
		for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
		{
			// サイドバーデータボタンを更新する
			$$update_sidebar_data_button(front.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i], $i)
		}
		
		// 各データボタンとの当たりを調べる
		// データボタンに当たっている場合、セーブサムネイルを表示する
		for( $i = 0, $i < @サイドバー_データ最大数, $i += 1 )
		{
			// データボタンに当たっていない場合は処理を飛ばす
			if( front.object[<OBJ_SIDEBAR>].child[@ボタン_サイドバー_データ + $i].get_button_hit_state == 0 ) {
				continue
			}
			
			// マウスオーバー中のボタンの場合は処理を飛ばす
			if( $hit_thumb == $i ) {
				continue
			}
			
			// 新しくデータボタンに当たった場合はセーブ番号を取得する
			$save_no = $$get_save_no($i)
			
			// セーブデータが存在していない場合は処理を飛ばす
			if( syscom.get_save_exist($save_no) == 0 ) {
				continue
			}
			
			// セーブデータが存在しているのでセーブサムネイルを更新する
			front.object[<OBJ_SIDEBAR>].child[@イメージ_サイドバー_サムネイル].disp = 1
			$$update_sidebar_thumb_object(front.object[<OBJ_SIDEBAR>].child[@イメージ_サイドバー_サムネイル], $save_no)
			
			break
		}
		
		// 何にも当たっていない場合はセーブサムネイルを非表示にする
		if( $i == @サイドバー_データ最大数 ) {
			front.object[<OBJ_SIDEBAR>].child[@イメージ_サイドバー_サムネイル].disp = 0
		}
		
		// 以下システムコール中は実行しない
		if( excall.is_excall ) {
			return
		}
		
		// マウスが当たり判定外の場合、サイドバーを非表示にする
		if( <SIDEBAR_MODE> == <SIDEBAR_MODE_R> )
		{
			// データボタンに当たってないとき
			if( front.object[<OBJ_SIDEBAR>].child[@イメージ_サイドバー_サムネイル].disp == 0 )
			{
				if( __SIDEBAR_R_HIDE_HIT_RECT_L > mouse.get_pos_x || __SIDEBAR_R_HIDE_HIT_RECT_T > mouse.get_pos_y || mouse.get_pos_y > __SIDEBAR_R_HIDE_HIT_RECT_B )
				{
					front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].end
					$$hide_sidebar
				}
			}
		}
		elseif( <SIDEBAR_MODE> == <SIDEBAR_MODE_L> )
		{
			// データボタンに当たってないとき
			if( front.object[<OBJ_SIDEBAR>].child[@イメージ_サイドバー_サムネイル].disp == 0 )
			{
				if( mouse.get_pos_x > __SIDEBAR_L_HIDE_HIT_RECT_R || __SIDEBAR_L_HIDE_HIT_RECT_T > mouse.get_pos_y || mouse.get_pos_y > __SIDEBAR_L_HIDE_HIT_RECT_B )
				{
					front.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].end
					$$hide_sidebar
				}
			}
		}
		
	// 非表示アニメーション中
	case(3)
		
		// 非表示アニメーションが終われば次のステートに進める
		if( front.object[<OBJ_SIDEBAR>].x_eve.check == 0 ) {
			$state = 0
		}
	}
}
