; 既に初期化されているかチェック
[return cond="typeof(kag.onClickOutOfPrimaryLayer) != 'undefined'"]

; windowEx.dllが(Override.tjsで)読み込まれているかチェック
[return cond="typeof(kag.setMessageHook) != 'Object'"]
[return cond="typeof(.Window.getNotificationNum) != 'Object'"]

[iscript]

/*
フルスクリーンの黒帯部分をクリックしたらプライマリレイヤクリックに変換
してテキスト送りができちゃうよプラグイン(長い)

2013/01/31	0.1	初期リリース

Override.tjs などで以下のようにして windowEx.dll を読むこと！
Plugins.link('windowEx.dll');
 ↓[iscript]中では行頭に*を書かないこと！
 */


/*
windowEx.dllの拡張イベントをOnにする。そうしないとkag.setMessageHook()が
実行できないから。ただし、他で既にOnにしていた場合、重複実行になるので、
ここをコメントアウトしてもよい。重複実行時にどうなるかは知らんけれど、
試したらなんとなくフツーに動きそう。
ちうかregisterExEvent()されたかどうかのフラグがwindowEx.dll中にあれば
いいのに。
↓ */
{	// 気休めに、一応 kagex のフラグをチェックしておく…
	if (typeof(kag.exEventEnabled) == 'undefined' || !kag.exEventEnabled)
		kag.registerExEvent();
	kag.exEventEnabled = true;
}



// 以前にonWindowsMessageHookが登録されていれば、それを保存しとく
if (typeof(kag.onWindowsMessageHook) != 'undefined') {
	kag.onWindowsMessageHook_onclickoutofprimarylayer_org = kag.onWindowsMessageHook;
}

// 左・右クリックのイベントを受け取り、onPrimary*Click()させる関数を定義
kag.onWindowsMessageHook = function(msg, wp, lp) {
	// dm('onWindowsMessageHook('+msg+')');
	switch (msg) {
	// なんで数値指定なんだ…と言われても困る。定義してにゃぁけぇじゃ。
	case 513: // LBUTTONDOWN
	case 515: // LBUTTONDBLCLK
		onPrimaryClick();
		break;
	case 516: // RBUTTONDOWN
	case 518: // RBUTTONDBLCLK
		onPrimaryRightClick();
		break;
	}
	// KAGEXはここでPluginのcallHook呼ぶけど、このプラグインでは呼ばない

	// 元から登録されていたものがあれば呼び出す
	if (typeof(this.onWindowsMessageHook_onclickoutofprimarylayer_org) != 'undefined') {
		onWindowsMessageHook_onclickoutofprimarylayer_org(msg, wp, lp);
	}
} incontextof kag;


// 左・右クリックのイベントをキャプチャして onWindowsMessageHookに送る
kag.setMessageHook(true, "LBUTTONDOWN");
kag.setMessageHook(true, "LBUTTONDBLCLK");
kag.setMessageHook(true, "RBUTTONDOWN");
kag.setMessageHook(true, "RBUTTONDBLCLK");


// 初期化しましたフラグ
kag.onClickOutOfPrimaryLayer = true;

[endscript]

[return]