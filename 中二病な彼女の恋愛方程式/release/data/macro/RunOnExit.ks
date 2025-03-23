; 二重読み込みを防止
[return cond="typeof(global.PlayAtExit_obj) != 'undefined'"]

; 終了時に KAG Script を実行する
; 2013/11/28 1.1	・kagより後にinvalidateさせるため、KAGPlugin化
;			・デストラクタを元に戻した
; 2010/06/29 1.03	デストラクタに、if (isvalid(window))条件を追加。
;			終了時、たまに kag の方が先に無効化されてエラーになる
;			のを防ぐため
; 2010/06/27 1.02	[close ask=false] -> kag.closebyScript(%[ask:false])に
;			変更
; 2010/06/26 1.01	画面サイズ変更した後の終了時にエラーになるのを修正
;			といっても onexit.ks を [close ask=false] で終了する
;			ようにしただけ。


[iscript]

class RunOnExit extends KAGPlugin {
	var window;
	var onCloseQuery_org;	// オリジナルの onCloseQuery を保存
	var closing;		// 終了処理中フラグ

	// コンストラクタ
	function RunOnExit(w)
	{
		window = w;
		closing = false;

		onCloseQuery_org = window.onCloseQuery;
		window.onCloseQuery = onCloseQuery incontextof window;
	}

	// kag.onCloseQuery() を乗っ取る関数
	function onCloseQuery()
	{
		if (.RunOnExit_obj.closing)
			return;		// 既に終了処理中なら何もしない
		// ↓ super....だとエラーになるので仕方なく…
		.Window.onCloseQuery(false); // まず閉じられないと通知
		saveSystemVariables();
		if (askOnClose && !askYesNo("終了しますか？"))
			return;
		.RunOnExit_obj.closing = true;
		.RunOnExit_obj.disableItems();
		// onexit.ks を実行し、この中で System.exit() で閉じる
		process('onexit.ks' ,,, true);
	}

	// 終了前スクリプト(onexit.ks)実行時に、kagの様々を無効にする処理
	function disableItems()
	{
		// 画面上の全リンクを無効化
		// window.current.invalidateLinkObjects() だとエラーになる…
		window.lockMessageLayerSelProcess();
		// メニューを全て disable にする
		// window.disableMenuItems() は menu が消えるので使わないこと
		if (typeof(window.menu) !== 'undefined') {
			var items = window.menu.children;
			for (var i=items.count-1; i >= 0; i--)
				items[i].enabled = false;
		}
		// 右クリックルーチンを強引に禁止
		window.rightClickHook = [];
		// オートモードを解除
		window.cancelAutoMode();
	}

	// デストラクタ
	function finalize()
	{
		window.onCloseQuery = onCloseQuery_org;
	}
}

kag.addPlugin(global.RunOnExit_obj = new RunOnExit(kag));

[endscript]

[return]
