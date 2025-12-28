//===========================================================================
//!
//!    @file     99_言語定義.ss
//!    @brief    
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================
#z00

//---------------------------------------------------------------------------
// 確認ダイアログテキストの取得
//
// -  確認ダイアログで表示されるテキストです
// -  画像が設定されている場合はこのテキストは使われません
// 
//---------------------------------------------------------------------------
command $$get_dialog_text(property $dialog_type) : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)
		switch( $dialog_type ) {
		case(@確認ダイアログ_モード_セーブ)					$text = "セーブしますか？"
		case(@確認ダイアログ_モード_クイックセーブ)			$text = "クイックセーブしますか？"
		case(@確認ダイアログ_モード_上書きセーブ)			$text = "上書きセーブしますか？"
		case(@確認ダイアログ_モード_ロード)					$text = "ロードしますか？"
		case(@確認ダイアログ_モード_クイックロード)			$text = "クイックロードしますか？"
		case(@確認ダイアログ_モード_前の選択肢に戻る)		$text = "前の選択肢に戻りますか？"
		case(@確認ダイアログ_モード_バックログジャンプ)		$text = "履歴から再開しますか？"
		case(@確認ダイアログ_モード_セーブデータ削除)		$text = "データを削除しますか？"
		case(@確認ダイアログ_モード_セーブデータ入れ替え)	$text = "データを入れ替えますか？"
		case(@確認ダイアログ_モード_タイトルに戻る)			$text = "タイトルメニューに戻りますか？"
		case(@確認ダイアログ_モード_エクストラに戻る)		$text = "チャプター選択メニューに戻りますか？"
		case(@確認ダイアログ_モード_ゲームを終了する)		$text = "ゲームを終了しますか？"
		case(@確認ダイアログ_モード_初期設定に戻す)			$text = "初期設定に戻しますか？"
		case(@確認ダイアログ_モード_オートセーブ上書き)		$text = "オートセーブ用データです。"
		default												@dm("99_システム文字.ss → $$get_dialog_text\n定義されていないダイアログタイプが選択されました。\nタイプ番号 : " + math.tostr($dialog_type) + "\n空文字を設定します。")
															$text = ""
		}
	
	case($lang_en)
		switch( $dialog_type ) {
		case(@確認ダイアログ_モード_セーブ)					$text = "Do you want to save?"
		case(@確認ダイアログ_モード_クイックセーブ)			$text = "Do you want to quick save?"
		case(@確認ダイアログ_モード_上書きセーブ)			$text = "Are you sure you want to overwrite this save?"
		case(@確認ダイアログ_モード_ロード)					$text = "Do you want to load?"
		case(@確認ダイアログ_モード_クイックロード)			$text = "Do you want to quick load?"
		case(@確認ダイアログ_モード_前の選択肢に戻る)		$text = "Are you sure you want to jump to the previous choice?"
		case(@確認ダイアログ_モード_バックログジャンプ)		$text = "Do you want to return to this point?"
		case(@確認ダイアログ_モード_セーブデータ削除)		$text = "Are you sure you want to delete this save data?"
		case(@確認ダイアログ_モード_セーブデータ入れ替え)	$text = "Do you want to swap save slots?"
		case(@確認ダイアログ_モード_タイトルに戻る)			$text = "Are you sure you want to return to the title screen?"
		case(@確認ダイアログ_モード_エクストラに戻る)		$text = "Are you sure you want to return to the chapter screen?"
		case(@確認ダイアログ_モード_ゲームを終了する)		$text = "Are you sure you want to exit the game?"
		case(@確認ダイアログ_モード_初期設定に戻す)			$text = "Do you want to restore the default settings?"
		case(@確認ダイアログ_モード_オートセーブ上書き)		$text = "※未翻訳"
		default												@dm("99_システム文字.ss → $$get_dialog_text\n定義されていないダイアログタイプが選択されました。\nタイプ番号 : " + math.tostr($dialog_type) + "\n空文字を設定します。")
															$text = ""
		}
		
	default
		@dm("99_システム文字.ss → $$get_dialog_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// セーブコメントのデフォルト文字列を取得する
//---------------------------------------------------------------------------
command $$get_default_save_comment_text(property $comment_type) : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)
		switch( $comment_type ) {
		case(@セーブロード_コメントタイプ_通常)			$text = "ここにコメントを入力できます"
		case(@セーブロード_コメントタイプ_ロック)		$text = "ロック中は入力できません"
		}
		
	case($lang_en)
		switch( $comment_type ) {
		case(@セーブロード_コメントタイプ_通常)			$text = "※未翻訳"
		case(@セーブロード_コメントタイプ_ロック)		$text = "※未翻訳"
		}
	default
		@dm("99_システム文字.ss → $$get_default_save_comment_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// コンフィグ／テキストで表示するサンプルテキストを取得する
//---------------------------------------------------------------------------
command $$get_config_sample_text : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)
		
		$text = "これはテキストの速度表示サンプルです。"
		
	case($lang_en)
		
		$text = "※未翻訳"
		
	default
		@dm("99_システム文字.ss → $$get_config_sample_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// 文字数がテキスト描画範囲をオーバーした際に表示する文字列を取得する
//---------------------------------------------------------------------------
command $$get_message_over_text : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)		$text = "…"
	case($lang_en)		$text = "…"
	default
		@dm("99_システム文字.ss → $$get_dialog_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// 立ち絵鑑賞保存時に使用するファイル名を取得する
//---------------------------------------------------------------------------
command $$get_extra_character_save_filename : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)		$text = "anemoiキャラクター鑑賞"
	case($lang_en)		$text = "※未翻訳"
	default
		@dm("99_システム文字.ss → $$get_extra_character_save_filename\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// レコードを獲得したときのテキストを取得する
//---------------------------------------------------------------------------
command $$get_record_title : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)		$text = "レコードを獲得しました！"
	case($lang_en)		$text = "※未翻訳"
	default
		@dm("99_システム文字.ss → $$get_record_get_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// レコード名を取得する
//---------------------------------------------------------------------------
command $$get_record_name(property $record_no) : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)
		/*
		switch( $record_no ) {
		case(@レコード_テスト００１)		$text = "レコードテスト００１"
		case(@レコード_テスト００２)		$text = "レコードテスト００２"
		case(@レコード_テスト００３)		$text = "レコードテスト００３"
		case(@レコード_テスト００４)		$text = "レコードテスト００４"
		case(@レコード_テスト００５)		$text = "レコードテスト００５"
		case(@レコード_テスト００６)		$text = "レコードテスト００６"
		case(@レコード_テスト００７)		$text = "レコードテスト００７"
		case(@レコード_テスト００８)		$text = "レコードテスト００８"
		case(@レコード_テスト００９)		$text = "レコードテスト００９"
		case(@レコード_テスト０１０)		$text = "レコードテスト０１０"
		case(@レコード_テスト０１１)		$text = "レコードテスト０１１"
		case(@レコード_テスト０１２)		$text = "レコードテスト０１２"
		case(@レコード_テスト０１３)		$text = "レコードテスト０１３"
		case(@レコード_テスト０１４)		$text = "レコードテスト０１４"
		case(@レコード_テスト０１５)		$text = "レコードテスト０１５"
		case(@レコード_テスト０１６)		$text = "レコードテスト０１６"
		case(@レコード_テスト０１７)		$text = "レコードテスト０１７"
		case(@レコード_テスト０１８)		$text = "レコードテスト０１８"
		case(@レコード_テスト０１９)		$text = "レコードテスト０１９"
		case(@レコード_テスト０２０)		$text = "レコードテスト０２０"
		case(@レコード_テスト０２１)		$text = "レコードテスト０２１"
		case(@レコード_テスト０２２)		$text = "レコードテスト０２２"
		case(@レコード_テスト０２３)		$text = "レコードテスト０２３"
		case(@レコード_テスト０２４)		$text = "レコードテスト０２４"
		case(@レコード_テスト０２５)		$text = "レコードテスト０２５"
		
		// レコード未獲得時のテキスト
		default								$text = "？？？？？？？"
		}
		*/
		
	case($lang_en)		$text = "※未翻訳"
	default
		@dm("99_システム文字.ss → $$get_extra_character_save_filename\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text = ""
	}
	
	return ($text)
}

//---------------------------------------------------------------------------
// 称号獲得時のテキストを取得する
//---------------------------------------------------------------------------
command $$get_title_get_text(property $title_name : str) : str
{
	property $text : str
	
	switch( @check_lang ) {
	
	case($lang_jp)		$text = "『" + $title_name + "』を手に入れた！"
	case($lang_en)		$text = $title_name /* ※未翻訳 */
	default
		@dm("99_システム文字.ss → $$get_dialog_text\n定義されていない言語が選択されました。\n言語番号 : " + math.tostr(@check_lang) + "\n空文字を設定します。")
		$text =""
	}
	
	return ($text)
}