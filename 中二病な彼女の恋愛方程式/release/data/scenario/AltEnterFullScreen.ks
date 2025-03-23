; 二重読み込みを防止
[return cond="typeof(global.AltEnterFullScreen_obj) != 'undefined'"]

; Alt+Enter で FullScreen ←→ Window 切り替えを実現するプラグイン

; 2013/11/28	0.3	・kagより先にinvalidateさせるため、KAGPlugin化
;			・finalize()中でw.menu.remove()がエラーになるので削除
; 2012/08/05	0.21	finalize()中でary.del()→ary.remove()に修正
;			isvalid(w)でvalidcheckを追加
; 2011/03/08	0.20	Alt+Enterでビープ音が鳴らないようにダミーメニューを追加
;			Alt+EnterでEnterキーが押されてfocusedLayer != null の
;			時に誤動作するのを防止。


[iscript]

class AltEnterFullScreen extends KAGPlugin {
	var w;
	var onKeyDown_org;	// オリジナルの processkeys を保存

	// コンストラクタ
	function AltEnterFullScreen(window)
	{
		w = window;

		// Alt+Enterでビープが鳴るのを防ぐためにメニューに追加
		w.AltEnterFullScreenItem = new KAGMenuItem(
			window, "TFS", 0,
			".AltEnterFullScreen_obj.toggleFullScreen()", 0
		);
		w.menu.add(w.AltEnterFullScreenItem);
		w.AltEnterFullScreenItem.shortcut = "Alt+Enter";
		w.AltEnterFullScreenItem.visible  = false;
	}

	// デストラクタ
	function finalize()
	{
//	これ実行すると、「指定されたメニュー項目はこのメニュー項目の子では
//	ありません」というエラーになる。menuが先にinvalidateされるのかな。
//		if (isvalid(w.menu))
//			w.menu.remove(w.AltEnterFullScreenItem);
		if (isvalid(w.AltEnterFullScreenItem))
		 	invalidate w.AltEnterFullScreenItem;
	}

	// window の画面をfull/windowにトグルする
	function toggleFullScreen()
	{
		// Alt+Enterで誤動作しないように focusedLayer を null に
		w.focusedLayer = null;
		if (w.fullScreened)
			// 現在フルスクリーンモードだったら
			w.onWindowedMenuItemClick(this);
		else
			// 現在ウインドウモードだったら
			w.onFullScreenMenuItemClick(this);
	}
}

kag.addPlugin(global.AltEnterFullScreen_obj = new AltEnterFullScreen(kag));

[endscript]

[return]
