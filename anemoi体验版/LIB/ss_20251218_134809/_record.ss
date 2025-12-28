//===========================================================================
//!
//!    @file     _record.ss
//!    @brief    レコードシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_record_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], sample__record_bg, 0, 0)
	$$create_ui_number_image($stage.object[@イメージ_レコード_達成率], sample__record_number, 1695, 23)
	$$create_record_all_thumb_object($stage, sample__record_thumb_bg, 130, 181, 856, 70, 2)
	$$create_record_scrollview($stage.object[@ボタン_レコード_スクロールビュー], sample__record_scroll, 1, 985, @ボタン_レコード_スクロールビュー, 933, 1871, -839, @ボタン_レコード_スクロールビュー, @ボタン_レコード_スクロールビュー + 1, <OBJBTN_GROUP_NO_EXCALL>, 1, 0, 0)
}

//---------------------------------------------------------------------------
// サムネイルオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_record_thumb_object(property $obj : object)
{
	$$create_ui_number_image($obj.child[@イメージ_レコード枠_番号_取得済], sample__record_thumb_number01, 220, 193)
	$$create_ui_number_image($obj.child[@イメージ_レコード枠_番号_未取得], sample__record_thumb_number02, 220, 193)
	$$create_ui_string($obj.child[@イメージ_レコード枠_テキスト], 327, 195, 594, 24, 19)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_record_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_record_scene_object(property $stage : stage)
{
	// サンプル(サマポケ)
	property $i
	
	// 達成率の数字パラメータを設定する
	$stage.object[@イメージ_レコード_達成率].set_number_param(3, 1, 0, 0, 0, 2)
	
	// レコード番号の数字パラメータを設定する
	for( $i = 0, $i < @レコード最大数, $i += 1 )
	{
		$stage.object[@イメージ_レコード枠].child[$i].child[@イメージ_レコード枠_番号_取得済].set_number_param(3, 1, 0, 0, 0, 2)
		$stage.object[@イメージ_レコード枠].child[$i].child[@イメージ_レコード枠_番号_未取得].set_number_param(3, 1, 0, 0, 0, 2)
	}
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_record_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_record_joypad_navigation(property $stage : stage)
{
	property $i
	
	$stage.object[@ボタン_レコード_スクロールビュー].joypad_up    = @動作_レコード_スクロールアップ
	$stage.object[@ボタン_レコード_スクロールビュー].joypad_down  = @動作_レコード_スクロールダウン
	$stage.object[@ボタン_レコード_スクロールビュー].joypad_left  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_レコード_スクロールビュー].joypad_right = @ボタン_フッター_タイトルに戻る
	
	for( $i = @ボタン_フッター_セーブ, $i <= @ボタン_フッター_戻る, $i += 1 )
	{
		$stage.object[$i].joypad_up   = @動作_レコード_スクロールフォーカス
		$stage.object[$i].joypad_down = @動作_レコード_スクロールフォーカス
	}
}
