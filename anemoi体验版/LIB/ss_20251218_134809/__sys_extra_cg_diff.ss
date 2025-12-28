//===========================================================================
//!
//!    @file     __sys_extra_cg_diff.ss
//!    @brief    イベントＣＧ鑑賞／差分表示シーン(システム側)
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

	#property	$diff_no					// 現在のイベントＣＧ差分番号
	#property	$old_diff_no				// 前のイベントＣＧ差分番号
	
	#property	$diff_list : strlist		// イベントＣＧ差分リスト

#inc_end

//---------------------------------------------------------------------------
// イベントＣＧ鑑賞／差分表示シーン開始
//---------------------------------------------------------------------------
#z00

$diff_no = 0												// 差分番号を初期化する
$$set_cg_diff(l[0])											// イベントＣＧの差分リストを設定する
$$create_scene_object(excall.back, $diff_list[$diff_no])	// シーンオブジェクトを作成する
$$show_extra_cg_diff(excall.back)							// シーンオブジェクトを表示する

// 入力制御を開始する
input.clear

while( 1 )
{
	// ジョイパッドのキーリピート処理
	$$update_joypad_key_repeat
	
	// キャンセルキーが入力された場合はＣＧ表示を終了する
	if( input.cancel.on_down )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		break
	}
	
	// 決定キー、マウスホイール、Ｒ１が入力された場合は差分を進める
	if( input.decide.on_down || mouse.wheel > 0 || $$joypad_on_down(<JOYPAD_R1>) )
	{
		if( $$prev_diff ) {
			break
		}
	}
	
	// マウスホイール、Ｌ１が入力された場合は差分を戻す
	elseif( mouse.wheel < 0 || $$joypad_on_down(<JOYPAD_L1>) )
	{
		if( $$next_diff ) {
			break
		}
	}
	
	input.next		// 入力の更新
	disp			// 画面の更新
}

// イベントＣＧオブジェクトのワイプコピーフラグをオフにする
excall.front.object[@オブジェクト_エクストラ_表示中のＣＧ].wipe_copy = 0

// シーンオブジェクトを非表示にする
$$hide_extra_cg_diff(excall.front)

return


//---------------------------------------------------------------------------
// 現在表示中のＣＧファイル名を取得する
//---------------------------------------------------------------------------
command $$get_extra_cg_disp_filename : str
{
	return ($diff_list[$diff_no])
}

//---------------------------------------------------------------------------
// イベントＣＧの差分リストを設定する
//---------------------------------------------------------------------------
command $$set_cg_diff(property $cg_list_index)
{
	property $i
	property $j
	property $filename : str
	
	$diff_list.init
	
	// エクストラのＣＧモードの自動差分計算カテゴリ(小分類)
	// ※ＣＧファイル名の末尾が２桁
	if( __EXTRA_CG_DIFF_MODE == 0 )
	{
		for( $i = 0, $i <= __EXTRA_CG_S_DIFF_MAX, $i += 1 )
		{
			$filename = $$get_extra_cg($cg_list_index) + "_" + math.tostr_zero($i, 2)
			
			if( $$exists_image($filename) == 0 ) {
				continue
			}
			
			if( cgtable.get_look_by_name($filename) == 1 )
			{
				$diff_list.resize($diff_list.get_size + 1)
				$diff_list[$diff_list.get_size - 1] = $filename
			}
		}
	}
	
	// エクストラのＣＧモードの自動差分計算カテゴリ(大分類＋小分類)
	// ※ＣＧファイル名の末尾が４桁
	else
	{
		for( $i = 0, $i <= __EXTRA_CG_L_DIFF_MAX, $i += 1 )
		{
			for( $j = 0, $j <= __EXTRA_CG_S_DIFF_MAX, $j += 1 )
			{
				$filename = $$get_extra_cg($cg_list_index) + "_" + math.tostr_zero($i, 2) + math.tostr_zero($j, 2)
				
				if( $$exists_image($filename) == 0 ) {
					continue
				}
				
				if( cgtable.get_look_by_name($filename) == 1 )
				{
					$diff_list.resize($diff_list.get_size + 1)
					$diff_list[$diff_list.get_size - 1] = $filename
				}
			}
		}
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_scene_object(property $stage : stage, property $filename : str)
{
	$$set_cg_object($stage.object[@オブジェクト_エクストラ_表示中のＣＧ], $filename)
}

//---------------------------------------------------------------------------
// 前の差分へ戻る
//---------------------------------------------------------------------------
command $$prev_diff
{
	$old_diff_no = $diff_no
	
	$diff_no += 1
	if( $diff_no > $diff_list.get_size - 1 )
	{
		// 差分の終点で始点にループするが有効の場合はループさせる
		if( __EXTRA_CG_DIFF_END_LOOP )
		{
			$diff_no = 0
		}
		else
		{
			// 効果音を再生する
			se.play_by_se_no(<BUTTON_SE_CANCEL>)
			
			// 差分の終点で始点にループするが無効の場合は終了する
			return (1)
		}
	}
	
	// 差分の変更があった場合
	if( $old_diff_no != $diff_no )
	{
		// 効果音を再生する
		se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
		
		// シーンオブジェクトを再構築する
		$$rebuild_scene_object
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// 次の差分へ進む
//---------------------------------------------------------------------------
command $$next_diff
{
	$old_diff_no = $diff_no
	
	$diff_no -= 1
	if( $diff_no < 0 )
	{
		// 差分の終点で始点にループするが有効の場合はループさせる
		if( __EXTRA_CG_DIFF_END_LOOP )
		{
			$diff_no = $diff_list.get_size - 1
		}
		else
		{
			// 効果音を再生する
			se.play_by_se_no(<BUTTON_SE_CANCEL>)
			
			// 差分の終点で始点にループするが無効の場合は終了する
			return (1)
		}
	}
	
	// 差分の変更があった場合
	if( $old_diff_no != $diff_no )
	{
		// 効果音を再生する
		se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
		
		// シーンオブジェクトを再構築する
		$$rebuild_scene_object
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを再構築する
//---------------------------------------------------------------------------
command $$rebuild_scene_object
{
	// シーンオブジェクトを作成する
	$$create_scene_object(excall.back, $diff_list[$diff_no])
	
	// シーンオブジェクトを更新する
	$$change_extra_cg_diff(excall.back)
}
