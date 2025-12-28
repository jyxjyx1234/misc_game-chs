//===========================================================================
//!
//!    @file     _sidebar.ss
//!    @brief    サイドバー(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// 右配置／サイドバーオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_r_object(property $stage : stage, property $obj : object)
{
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_背景], _sidebar_bg_r, 1430, 22)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_モード_セーブ], _sidebar_save_mode_btn, 1640, 117, @ボタン_サイドバー_モード_セーブ, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_モード_ロード], _sidebar_load_mode_btn, 1752, 117, @ボタン_サイドバー_モード_ロード, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_領域], _sidebar_hit_rect, 1520, 0, @ボタン_サイドバー_領域, <OBJBTN_GROUP_NO_SIDEBAR>, -1)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_ページ番号], _sidebar_page_number, 1719, 688)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_ページ_戻る], _sidebar_page_prev_btn, 1618, 690, @ボタン_サイドバー_ページ_戻る, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_ページ_進む], _sidebar_page_next_btn, 1796, 690, @ボタン_サイドバー_ページ_進む, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 0], _sidebar_page_tab_btn01, 1520, 118, @ボタン_サイドバー_タブ + 0, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 1], _sidebar_page_tab_btn02, 1520, 168, @ボタン_サイドバー_タブ + 1, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 2], _sidebar_page_tab_btn03, 1520, 218, @ボタン_サイドバー_タブ + 2, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 3], _sidebar_page_tab_btn04, 1520, 268, @ボタン_サイドバー_タブ + 3, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 4], _sidebar_page_tab_btn05, 1520, 318, @ボタン_サイドバー_タブ + 4, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 5], _sidebar_page_tab_btn06, 1520, 368, @ボタン_サイドバー_タブ + 5, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 6], _sidebar_page_tab_btn07, 1520, 418, @ボタン_サイドバー_タブ + 6, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 7], _sidebar_page_tab_btn08, 1520, 468, @ボタン_サイドバー_タブ + 7, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 8], _sidebar_page_tab_btn09, 1520, 518, @ボタン_サイドバー_タブ + 8, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 9], _sidebar_page_tab_btn10, 1520, 568, @ボタン_サイドバー_タブ + 9, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 10], _sidebar_page_tab_btn11, 1520, 618, @ボタン_サイドバー_タブ + 10, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 11], _sidebar_page_tab_btn12, 1520, 668, @ボタン_サイドバー_タブ + 11, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_all_data_button($stage, _sidebar_data_btn, 1611, 172, 0, 50, 1)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_ＮＥＷ], _sidebar_data_new, 1607, 166)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_サムネイル], _sidebar_thumbnail, 1027, 38)
}

//---------------------------------------------------------------------------
// 右配置／サイドバーデータオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_r_data_object(property $obj : object)
{
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_セーブ番号], _sidebar_data_number, 1623, 184)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_データ_ロック], _sidebar_data_lock, 1592, 185)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_年], _sidebar_data_date_number, 1720, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_月], _sidebar_data_date_number, 1767, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_日], _sidebar_data_date_number, 1794, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_時間_時], _sidebar_data_time_number, 1825, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_時間_分], _sidebar_data_time_number, 1849, 187)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_データ_日時_背景], _sidebar_data_date_bg, 1759, 184)
}

//---------------------------------------------------------------------------
// 右配置／サイドバーセーブサムネイルを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_r_save_thumbnail(property $obj : object)
{
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_サムネイル_画像], "", 1079, 75)
	$$create_sidebar_string($obj.child[@イメージ_サイドバー_サムネイル_タイトル], 1067, 264, 326, 21, 18)
	$$create_sidebar_string($obj.child[@イメージ_サイドバー_サムネイル_メッセージ], 1066, 303, 327, 21, 18)
}

//---------------------------------------------------------------------------
// 左配置／サイドバーオブジェクト(左配置)を作成する
//---------------------------------------------------------------------------
command $$create_sidebar_l_object(property $stage : stage, property $obj : object)
{
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_背景], _sidebar_bg_l, 0, 22)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_モード_セーブ], _sidebar_save_mode_btn, 67, 117, @ボタン_サイドバー_モード_セーブ, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_モード_ロード], _sidebar_load_mode_btn, 179, 117, @ボタン_サイドバー_モード_ロード, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_領域], _sidebar_hit_rect, 0, 0, @ボタン_サイドバー_領域, <OBJBTN_GROUP_NO_SIDEBAR>, -1)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_ページ番号], _sidebar_page_number, 151, 688)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_ページ_戻る], _sidebar_page_prev_btn, 50, 690, @ボタン_サイドバー_ページ_戻る, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_ページ_進む], _sidebar_page_next_btn, 228, 690, @ボタン_サイドバー_ページ_進む, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 0], _sidebar_page_tab_btn01, 338, 118, @ボタン_サイドバー_タブ + 0, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 1], _sidebar_page_tab_btn02, 338, 168, @ボタン_サイドバー_タブ + 1, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 2], _sidebar_page_tab_btn03, 338, 218, @ボタン_サイドバー_タブ + 2, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 3], _sidebar_page_tab_btn04, 338, 268, @ボタン_サイドバー_タブ + 3, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 4], _sidebar_page_tab_btn05, 338, 318, @ボタン_サイドバー_タブ + 4, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 5], _sidebar_page_tab_btn06, 338, 368, @ボタン_サイドバー_タブ + 5, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 6], _sidebar_page_tab_btn07, 338, 418, @ボタン_サイドバー_タブ + 6, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 7], _sidebar_page_tab_btn08, 338, 468, @ボタン_サイドバー_タブ + 7, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 8], _sidebar_page_tab_btn09, 338, 518, @ボタン_サイドバー_タブ + 8, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 9], _sidebar_page_tab_btn10, 338, 568, @ボタン_サイドバー_タブ + 9, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 10], _sidebar_page_tab_btn11, 338, 618, @ボタン_サイドバー_タブ + 10, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_button($obj.child[@ボタン_サイドバー_タブ + 11], _sidebar_page_tab_btn12, 338, 668, @ボタン_サイドバー_タブ + 11, <OBJBTN_GROUP_NO_SIDEBAR>, 1)
	$$create_sidebar_all_data_button($stage, _sidebar_data_btn, 38, 172, 0, 50, 1)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_ＮＥＷ], _sidebar_data_new, 34, 166)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_サムネイル], _sidebar_thumbnail, 489, 38)
}

//---------------------------------------------------------------------------
// 左配置／サイドバーデータオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_l_data_object(property $obj : object)
{
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_セーブ番号], _sidebar_data_number, 50, 184)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_データ_ロック], _sidebar_data_lock, 19, 185)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_年], _sidebar_data_date_number, 147, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_月], _sidebar_data_date_number, 194, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_日付_日], _sidebar_data_date_number, 221, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_時間_時], _sidebar_data_time_number, 252, 187)
	$$create_sidebar_number_image($obj.child[@イメージ_サイドバー_データ_時間_分], _sidebar_data_time_number, 276, 187)
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_データ_日時_背景], _sidebar_data_date_bg, 186, 184)
}

//---------------------------------------------------------------------------
// 左配置／サイドバーセーブサムネイルを作成する
//---------------------------------------------------------------------------
command $$create_sidebar_l_save_thumbnail(property $obj : object)
{
	$$create_sidebar_image($obj.child[@イメージ_サイドバー_サムネイル_画像], "", 541, 75)
	$$create_sidebar_string($obj.child[@イメージ_サイドバー_サムネイル_タイトル], 529, 264, 326, 21, 18)
	$$create_sidebar_string($obj.child[@イメージ_サイドバー_サムネイル_メッセージ], 528, 303, 327, 21, 18)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを調整する
// - シーンオブジェクト更新時の処理を追加することができます
//---------------------------------------------------------------------------
command $$adjust_sidebar_object(property $obj : object)
{
	$$set_sidebar_save_title_moji_max(18)		// サムネイルのセーブタイトル文字最大数(半角)を設定する
	$$set_sidebar_save_message_moji_max(18)		// サムネイルのセーブメッセージ文字最大数(半角)を設定する
}
