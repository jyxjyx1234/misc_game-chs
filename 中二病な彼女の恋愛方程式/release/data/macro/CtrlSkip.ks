; 二重読み込みを防止
[return cond="typeof(global.CtrlSkip_obj) != 'undefined'"]

; Ctrlキーでメッセージをスキップするプラグイン

; 2013/06/25	0.3	セーブ・ロードで状態が復帰できないことがあったのを修正
; 2011/08/28	0.2	quickスキップできるように変更

[iscript]


class CtrlSkip extends KAGPlugin
{
	var w;
	var checkProceedingKey_org;	// オリジナルのcheckProceedingKeyを保存
	var skipKeyPressing_org;	// オリジナルのskipKeyPressingを保存
	var keyary;			// スキップキー配列
	var quickflg;			// quickSkipさせるかどうか
	var enabled;			// 有効化するか否か

	// コンストラクタ
	function CtrlSkip(window)
	{
		w = window;
		CtrlSkip_init();

		// オリジナルをバックアップして
		checkProceedingKey_org = w.checkProceedingKey;
		skipKeyPressing_org    = w.skipKeyPressing;
		// 新しいのをコンテキストw で作成
		w.checkProceedingKey   = checkProceedingKey incontextof w;
		w.skipKeyPressing      = skipKeyPressing    incontextof w;
	}

	// 初期化。コンストラクタとonRestore()から呼ばれるので分離。
	function CtrlSkip_init()
	{
		keyary   = [ VK_CONTROL ];
		quickflg = true;	// 最初は有効化しておく
		enabled  = false;	// 最初は無効化しておく
	}

	// デストラクタ
	function finalize()
	{
		w.checkProceedingKey = checkProceedingKey_org;
		w.skipKeyPressing    = skipKeyPressing_org;
	}

	// (KAG)Window の checkProceedingKey を乗っ取り、Ctrlをトラップ
	function checkProceedingKey(key, shift)	// incontextof kag
	{
		// キューを無視し、今のキーを見るためgetKeyState()する
		if (.CtrlSkip_obj.enabled && .CtrlSkip_obj.isSkipKey(key)) {
			// quickflgが指定されていればすぐにスキップ開始
			if (.CtrlSkip_obj.quickflg) {
				skipToStop2();
				return true;
			}
			if (.CtrlSkip_obj.isSkipKeyPushed(key)) {
				// 以下は MainW.tjs のコピーにした。
				// これだとスキップまで少し待つ
				if((shift & ssRepeat) && clickSkipEnabled) {
					// キーリピート中
					if(skipMode != 4 && skipKeyRepressed)
					skipToStop2();
				} else {
					// まだキーリピートしていなかった
					skipKeyRepressed = true;
					onPrimaryClickByKey();
				}
			}
			return true;
		}
		// オリジナルを呼ぶ
		return .CtrlSkip_obj.checkProceedingKey_org(key, shift);
	}

	// (KAG)Window の skipKeyPressing を乗っ取り、Ctrlをトラップ
	function skipKeyPressing() // incontextof kag
	{
		return (.CtrlSkip_obj.isSkipKeyPushed() ||
			.CtrlSkip_obj.skipKeyPressing_org());
	}

	// 押されたキーがスキップ対象かどうか
	function isSkipKey(key)
	{
		return (keyary.find(+key) >= 0);
	}

	// 当該キーがスキップ対象でかつ今押されているかどうか
	function isSkipKeyPushed(key)
	{
		if (key === void) {
			for (var i = keyary.count-1; i >= 0; i--)
				if (w.getKeyState(keyary[i]))
					return true;
		} else {
			for (var i = keyary.count-1; i >= 0; i--)
				if (key == keyary[i] && w.getKeyState(key))
					return true;
		}
		return false;
	}

	// オプション設定
	function setOptions(mp)
	{
		if (mp.addkey !== void && keyary.find(+mp.addkey) < 0)
			keyary.add(+mp.addkey);
		if (mp.delkey !== void)
			keyary.remove(+mp.delkey);
		if (mp.quickflg !== void)
			quickflg = +mp.quickflg;
		if (mp.enabled !== void)
			enabled = +mp.enabled;
	}

	// セーブ
	function onStore(f, elm)
	{
		var dic = f.CtrlSkip = %[ keyary:[] ];
		dic.keyary.assignStruct(keyary);
		dic.quickflg = +quickflg;
		dic.enabled  = +enabled;
		return dic;
	}

	// ロード
	function onRestore(f, clear, elm)
	{
		var dic = f.CtrlSkip;
		if (dic === void) {
			// 初期化しておく
			CtrlSkip_init();
			return;
		}
		keyary.assignStruct(dic.keyary);
		quickflg = +dic.quickflg;
		enabled  = +dic.enabled;
	}

}

// ここで宣言する。
kag.addPlugin(global.CtrlSkip_obj = new CtrlSkip(kag));

[endscript]


; [ctrlskip enabled= addkey= delkey= quickflg=]
[macro name=ctrlskip]
[if exp="typeof(global.CtrlSkip_obj) != 'undefined'"]
	[eval exp=".CtrlSkip_obj.setOptions(mp)"]
[endif]
[endmacro]

[ctrlskip enabled=true]

[return]
