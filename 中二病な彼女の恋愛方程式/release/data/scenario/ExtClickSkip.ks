; 二重読み込みを防止
[return cond="typeof(global.extclickskip_obj) != 'undefined'"]

; ExtClickSkipプラグイン
;
; 2012/02/21	0.2	掲示板での指摘を受け、stop()でforelayer/backlayerの
;			void チェックを追加
; 2012/02/15	0.11	掲示板での指摘を受け、onRestore()でvoid チェックする
;			ように変更(気休め)。しかし二重読み込みには未対応
; 2011/08/23	0.1	初期リリース

; 前提プラグイン読み込み
[call storage="TJSFunctions.ks"]

[iscript]

// parentと同じサイズで透明、マウスイベントを吸い込み、ownerに伝えるレイヤ
class ExtClickSkipLayer extends Layer {
	var owner;
	// コンストラクタ
	function ExtClickSkipLayer(w, p, owner)
	{
		this.owner = owner;
		super.Layer(w, p);

		setImageSize(w.scWidth, w.scHeight);
		setSizeToImageSize();
		fillRect(0, 0, width, height, 0x0); // 透明に
		hitThreshold = 0;	// 全てのイベントを受け付ける
		if (owner.absolute !== void)
			absolute = owner.absolute;
		else
			absolute = getMaxKAGAbsolute(); //指定なければ最前面
		visible = 1;
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// マウスボタンが押されたらオーナを呼ぶ
	function onMouseDown(x, y, button, shift)
	{
		owner.onMouseDown(...);
	}

	// キーが押されたらオーナを呼ぶ
	function onKeyDown(key, shift)
	{
		owner.onKeyDown(...);
	}
}


// ExtClickSkipのデータやレイヤを管理するKAGプラグイン
class ExtClickSkip extends KAGPlugin {
	var w;			// ウインドウ(=kag)
	var forelayer, backlayer;// 最前面レイヤ
	var absolute;		// レイヤの表示優先順位
	var storage;		// クリックされた後にjumpする先
	var target;		// 同上
	var rclickenabled = 0;	// 左クリックを有効にするか

	// コンストラクタ
	function ExtClickSkip(window, elm)
	{
		w = window;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		stop();
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		absolute =  +elm.absolute if (elm.absolute !== void);
		storage  = elm.storage    if (elm.storage  !== void);
		target   = elm.target     if (elm.target   !== void);
		rclickenabled = +elm.rclickenabled if (elm.rclickenabled !== void);
	}

	// 開始
	function start(elm)
	{
		setOptions(elm);

		// storage/target が両方指定されてなければ開始しない
		if ((storage === void || storage == "") &&
		    (target  === void || target  == "")) {
			stop();
			return;
		}
		if (forelayer === void)
			forelayer = new ExtClickSkipLayer(w,w.fore.base,this);
		if (backlayer === void)
			backlayer = new ExtClickSkipLayer(w,w.back.base,this);

		var abs = (absolute !== void) ? absolute : getMaxKAGAbsolute();
		forelayer.absolute = backlayer.absolute = abs;
	}

	// 停止
	function stop()
	{
		// invalidateですぐに消えないことがあるので、invisibleにする
		if (forelayer !== void) {
			forelayer.visible = 0;
			invalidate forelayer;
		}
		if (backlayer !== void) {
			backlayer.visible = 0;
			invalidate backlayer;
		}
		forelayer = backlayer = void;	// layerありませんフラグ(=void)を設定
	}

	// マウスボタンが押された時(layerから呼ばれる)
	function onMouseDown(x, y, button, shift)
	{
		if (button == mbRight) {
			if (rclickenabled)
				w.onPrimaryRightClick();
			// rclickenabled=true でなければ単純に無視
			return;
		}
		stop();				// layerを無効化した後
		w.process(storage, target);	// シナリオジャンプ
	}

	// キーが押されたら親を呼ぶ
	function onKeyDown(key, shift)
	{
		if (key != VK_CONTROL && key != VK_ENTER && key != VK_SPACE)
			return;
		stop();				// layerを無効化した後
		w.process(storage, target);	// シナリオジャンプ
	}

//	// レイヤーがコピーされた時(両方とも全く同じなので不要)
//	function onCopyLayer(toback)
//	{
//		if (toback)
//			backlayer = forelayer;
//		else
//			forelayer = backlayer;
//	}

	// レイヤを表裏で交換した時(両方とも全く同じなので不要)
//	function onExchangeForeBack()
//	{
//		var tmp;
//		tmp = forelayer;
//		forelayer = backlayer;
//		backlayer = tmp;
//	}
	
	// セーブ時
	function onStore(f, elm)
	{
		var dic = f.extclickskip = %[];
		dic.absolute  = absolute;
		dic.storage   = storage;
		dic.target    = target;
		dic.rclickenabled = rclickenabled;
		dic.displayed = (forelayer !== void);
	}

	// ロード時
	function onRestore(f, clear, elm)
	{
		var dic = f.extclickskip;
		if (dic === void)
			return;
		absolute = dic.absolute;
		storage  = dic.storage;
		target   = dic.target;
		rclickenabled = dic.rclickenabled;
		if (dic.displayed)
			start();
		else
			stop();
	}
}

// プラグイン追加
kag.addPlugin(global.extclickskip_obj = new ExtClickSkip(kag));

[endscript]

;[extclickskip enabled= storage= target= absolute= rclickenabled]
[macro name=extclickskip]
[if exp="mp.enabled !== void"]
	[if exp="mp.enabled"]
		[eval exp=".extclickskip_obj.start(mp)"]
	[else]
		[eval exp=".extclickskip_obj.stop()"]
	[endif]
[else]
	[eval exp="em('extclickskipにはenabledオプションが必要です')"]
[endif]
[endmacro]

[return]
