
// *************************************************************
// スタートシーン
// =============================================================
//		ゲーム起動直後に呼ばれます。
//		ブランドロゴの表示やダミーファイルのチェックなどを行って下さい。
// =============================================================
#z00

system.debug_write_log(test)
/*
l[0] = selbtn_cancel(
	"ＣＧフラグを現状維持する（キャンセル含む）",
	"全ＣＧを見たフラグを立てる",
	"総てのＣＧフラグを解除する")
switch(l[0]){
	case(0)
	case(1)	cgtable.set_all_flag(1)
	case(2)	cgtable.set_all_flag(0)
	case(-1)
}
*/

	// ディスク認証を行います。
	// ディスクが必要なパッケージ版で使って下さい。
	// ディスクが必要ないＤＬ版やＷｅｂ体験版では必要ありません。
	system.check_dummy_file_once("dummy", 127, "snowdrop")

	// ★回想中にシステムコマンドメニューからタイトルに戻った際、シーン鑑賞トップに戻るための仕掛け　その３
	// グローバルの回想中フラグを初期化します。
	// これがないと、回想中に「ゲームを終了」を選んだ場合、回想メニューから始まってしまいます。
	@回想中 = 0

//	@体験版 = 1 // 体験版フラグ
// タイトルを設定します。
//set_title(スタートシーン)

//システムコマンドメニュー禁止
syscom.set_syscom_menu_disable

	// 一部のショートカットキーを無効にする
	script.set_key_disable(83)	// セーブ画面
	script.set_key_disable(82)	// 前の選択肢に戻る
	script.set_key_disable(81)	// クイックセーブ

	script.set_key_disable(76)	// ロード画面
	script.set_key_disable(49)	// クイックロード

// メッセージウィンドウを閉じる
//close

// ブランドロゴ、注意文、タイトルロゴ
$bg(1, _logo_iris)
timewait_key(1500)

$bg(1, _caution)
timewait_key(7000)

//$bg(1, _taiken_att)
//timewait_key(5000)


syscom.set_syscom_menu_enable

	script.set_key_enable(76)	// ロード画面
	script.set_key_enable(49)	// クイックロード

	// メニューに戻る
	returnmenu
