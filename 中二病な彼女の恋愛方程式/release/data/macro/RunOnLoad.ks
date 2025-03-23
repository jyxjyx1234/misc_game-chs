[return cond="typeof global.runonload_obj !== 'undefined'"]

; 2013/11/28	0.9	・onload.ksに*before_restoreと*after_restoreを追加
;			・before_elm/after_elmからkeyenabled/mouseenabledを削除
;			・既読込済かどうかの判定を間違っていたので変更
;			・終了時にkagより前にinvalidateされるようKAGPlugin化
;			・finalize()でkag.*が存在しないときは参照しないよう修正
; 2012/04/22	0.7	・kag.restoreFlags 実行前にkag.pflagsとkag.pcflagsを
;			　保存するように変更。transition中に次のセーブ可能ラベ
;			　ルを通過した時にロードデータがそっちになるのを防止
; 2012/04/20	0.6	・onConductorReturn_saveを廃止(kag.callExtraConductor
;			　の第三引数で指定できたため)
;			・いいのかって方法でonLoad中のキー・マウス操作を回避
;			・typo: enalbed → enabled を修正
;			・多重実行を禁止
; 			・onLoad中はKAGWindowのメニューを非アクティブに
; 2012/03/16	0.5	runBeforeLoad()で、*before が無かった時に実行しない
;			よう修正
;			[runonload_wait]を追加
; 2011/08/19	0.35	ROLLayerのサイズをscWidth/scHeightに初期化
; 2011/06/03	0.31	dst.hitThreshold=src.hitThreshold=0に変更。バカー
; 2011/06/02	0.3	hitThreshold=256でキー入力を吸い取るように変更
; 2011/05/06	0.2	[iscript]中の行頭の * を回避

[call storage="TJSFunctions.ks"]

[iscript]


/*
	MainWindow.ks の restoreFlags をフックする。以下を実行。
	1. onload.ksに *before があれば実行
	2. 画面裏最前面に新しい layer を表示し、それにトランジション
	3. onload.ksに *before_restore があれば実行
	4. kag.restoreFlag()
	6. onload.ksに *after_restore があれば実行
	7. 画面裏最前面のレイヤを透明にし、それにトランジション
	8. onload.ks(*after) があれば実行
 [iscript]中では頭に*を書かないこと！*/


// トランジション終了時、渡された関数を呼び出すLayerクラス
class ROLLayer extends Layer
{
	var func;

	function ROLLayer(w, p, func)
	{
		super.Layer(w, p);
		this.func = func;
		setImageSize(w.scWidth, w.scHeight);
		setSizeToImageSize();
	}

	function finalize()
	{
		super.finalize(...);
	}

	// トランジション終了のお知らせを親に伝える
	function onTransitionCompleted(dst, src)
	{
		func();
	}
}


// ロード時にトランジションするレイヤーを作ったり消したりするクラス。
// kag.restoreFlags をフックする。
class RunOnLoadLayers extends KAGPlugin
{
	// beginTransition() に渡すオプション
	var before_elm = %[method:'crossfade', time:500, color:0xffffffff,
			   enabled:true];
	var after_elm  = %[method:'crossfade', time:500, color:0x00000000,
			   enabled:true];

	var src;			// トランジション元レイヤ
	var dst;			// トランジション先レイヤ

	var restoreFlags_save;		// オリジナルのkag.restoreFlags関数
	var kag_pflags_save = %[];	// その時のpflags/pcflags/history
	var kag_pcflags_save = %[];
	var kag_historyOfStore_save = [];

	var onLoading = false;		// 走行中かどうか

	// 実行中にキー入力・マウス入力を受付けないようにするため、
	// オリジナルの値を保存する
	var onKeyDown_org, onKeyPress_org, onKeyUp_org;
	var onMouseDown_org, onMouseEnter_org, onMouseLeave_org,
	    onMouseMove_org, onMouseUp_org,    onMouseWheel_org;
	// メニューをdisable/enableする時の保存配列
	var menuEnabledSave = [];

	// コンストラクタ
	function RunOnLoadLayers(before_elm, after_elm)
	{
		setOptions(before_elm, after_elm);
		// restoreFlags をセーブしておく
		restoreFlags_save = kag.restoreFlags;
		// で、restoreFlagsが実行されたら runBeforeLoadに飛ぶよう設定
		kag.restoreFlags = runBeforeLoad;
	}

	// デストラクタ
	function finalize()
	{
		kag.restoreFlags = restoreFlags_save;
	}

	// キーとマウスのイベント関数をトラップしたり
	function backup_key_mouse_functions(key, mouse)
	{
		// 今のキー・マウスイベント関数を全部保存
		onKeyDown_org    = kag.onKeyDown;
		onKeyPress_org   = kag.onKeyPress;
		onKeyUp_org      = kag.onKeyUp;
		onMouseDown_org  = kag.onMouseDown;
		onMouseEnter_org = kag.onMouseEnter;
		onMouseLeave_org = kag.onMouseLeave;
		onMouseMove_org  = kag.onMouseMove;
		onMouseUp_org    = kag.onMouseUp;
		onMouseWheel_org = kag.onMouseWheel;

		// 不要ならそれらを「何もしないように」トラップする
		if (!key) {
			kag.onKeyDown    = function {};
			kag.onKeyPress   = function {};
			kag.onKeyUp      = function {};
		}
		if (!mouse) {
			kag.onMouseDown  = function {};
			kag.onMouseEnter = function {};
			kag.onMouseLeave = function {};
			kag.onMouseMove  = function {};
			kag.onMouseUp    = function {};
			kag.onMouseWheel = function {};
		}
	}

	// キーとマウスのイベント関数を戻したり
	function restore_key_mouse_functions()
	{
		// 保存していたキー・マウス入力関数を元に戻す
		kag.onKeyDown    = onKeyDown_org;
		kag.onKeyPress   = onKeyPress_org;
		kag.onKeyUp      = onKeyUp_org;
		kag.onMouseDown  = onMouseDown_org;
		kag.onMouseEnter = onMouseEnter_org;
		kag.onMouseLeave = onMouseLeave_org;
		kag.onMouseMove  = onMouseMove_org;
		kag.onMouseUp    = onMouseUp_org;
		kag.onMouseWheel = onMouseWheel_org;
	}

	// メニューをenabled=0にしたり
	function disableMenus()
	{
		for (var i = 0; i < kag.menu.children.count; i++) {
			menuEnabledSave[i] = kag.menu.children[i].enabled;
			kag.menu.children[i].enabled = false;
		}
	}

	// メニューを元に戻したり
	function restoreMenuEnabled()
	{
		for (var i = 0; i < kag.menu.children.count; i++)
			kag.menu.children[i].enabled = menuEnabledSave[i];
	}

	// オプション設定
	function setOptions(before_elm, after_elm)
	{
		if (before_elm !== void) {
			marge_dic(this.before_elm, before_elm);
			if (before_elm.enabled !== void)
				this.after_elm.enabled = before_elm.enabled;
		}
		if (after_elm !== void) {
			marge_dic(this.after_elm, after_elm);
			if (after_elm.enabled !== void)
				this.before_elm.enabled = after_elm.enabled;
		}
	}

	// storage に label があるか確認
	function isExistLabel(storage, label)
	{
		var ret = true;
		var c = new KAGParser();
		if (!Storages.isExistentStorage(storage))
			return false;
		c.loadScenario(storage);
//		c.interrupt();	// ホイホイ実行されないように念のため。
		try {
			c.goToLabel(label);
		}
		catch(e) {
			ret = false;
		}
		invalidate c;	// 実行せずに消すから大丈夫…だと思う
		return ret;
	}

	// ロード直前に onload.ks(*before) を実行する
	function runBeforeLoad()
	{
		if (onLoading)
			return;	// 多重実行を禁止
		onLoading = true;

		// データ無かった時のことを考えて初期化
		kag.pflags         = %[] if kag.pflags === void;
		kag.pcflags        = %[] if kag.pcflags === void;
		kag.historyOfStore = []  if kag.historyOfStore === void;
		(Dictionary.assignStruct incontextof kag_pflags_save)(kag.pflags);
		(Dictionary.assignStruct incontextof kag_pcflags_save)(kag.pcflags);
		kag_historyOfStore_save.assign(kag.historyOfStore);

		// メニューを無効化する
		disableMenus();
		// 今のキー・マウスイベント関数を保存し、キー・マウスを無効化
		backup_key_mouse_functions(false, false);

		if (isExistLabel("onload.ks", "*before")) {
			// onload.ks 内に *before があった場合
			// ここでExtraConductorを使うために強引にクリア。
			// どうせ直後に load するし、そもそもkag.のだから
			// 問題なし。きっと。
			kag.extraConductor.clear();
			kag.setConductorToMain();
			// *before が終わったらトランジション開始
			kag.callExtraConductor("onload.ks", "*before",
						begin1stTransition);
		} else {
			// onload.ksや*beforeがなければすぐトランジション開始
			begin1stTransition();
		}
	}

	// 一回目のトランジション開始(通常はホワイトフェード)
	function begin1stTransition()
	{
		// レイヤを確保
		src = new ROLLayer(kag, kag.fore.base, runBeforeRestore);
		dst = new ROLLayer(kag, kag.back.base, runAfterLoad);

		// デフォルトではサイズは画面サイズと同じ
		dst.setImageSize(kag.scWidth, kag.scHeight);
		// storage が指定されていれば読み込む
		if (before_elm.storage !== void && before_elm.storage != "") {
			dst.loadImages(before_elm.storage);
		} else {
			// dst を適当な色で塗りつぶす
			dst.fillRect(0,0, dst.width,dst.height, before_elm.color);
		}
		dst.setSizeToImageSize();
		// srcのサイズを dst に合わせる
		src.setImageSize(dst.imageWidth,dst.imageHeight);
		src.setSizeToImageSize();
		src.fillRect(0, 0, src.width, src.height, 0x00000000);

		// 優先順位最大
		dst.absolute = src.absolute = getMaxKAGAbsolute();
		// hitThreshold を最小にしてキーをトラップ
		dst.hitThreshold = src.hitThreshold = 0;
		// そして可視化
		dst.visible = src.visible = true;
		// キーボード入力を抑止するため、このレイヤにfocusする
		// …はずだったが、実際には kag.onKeyDown()が使われてるので
		// 以下はあまり意味なし。
		dst.focusable = src.focusable = true;
		dst.focus(); src.focus();	// 実はdst側はfocusされないが

		if ((before_elm.enabled !== void && !before_elm.enabled) ||
		    (after_elm.enabled  !== void && !after_elm.enabled))
			runBeforeRestore();	// 実行しない場合
		else
			src.beginTransition(before_elm.method,,dst,before_elm);
	}

	// データリストア直前のonload.ks:*before_restore実行
	function runBeforeRestore()
	{
		if (isExistLabel("onload.ks", "*before_restore")) {
			// onload.ks 内に *before_restore があった場合
			// ここでExtraConductorを使うために強引にクリア。
			kag.extraConductor.clear();
			kag.setConductorToMain();
			// *before_restore が終わったら2ndトランジション開始
			kag.callExtraConductor("onload.ks", "*before_restore",
						restoreData);
		} else {
			// onload.ksや*before_restoreがなければすぐrestoreData()実行
			restoreData();
		}
	}

	// データリストア
	function restoreData()
	{
		// 元のrestoreFlags()を呼ぶ
		// その前にpflags/pcflags/historyを元に戻すのを忘れずに
		(Dictionary.assignStruct incontextof kag.pflags)(kag_pflags_save);
		(Dictionary.assignStruct incontextof kag.pcflags)(kag_pcflags_save);
		kag.historyOfStore.assign(kag_historyOfStore_save);
		// データ領域節約のため初期化
		kag_pflags_save = %[];
		kag_pcflags_save = %[];
		kag_historyOfStore_save = [];
		(restoreFlags_save incontextof kag)();

		// ロード完了したら
		if (isExistLabel("onload.ks", "*after_restore")) {
			// onload.ks 内に *after_restore があった場合
			// ここでExtraConductorを使うために強引にクリア。
			kag.extraConductor.clear();
			kag.setConductorToMain();
			// *after_restore が終わったら2ndトランジション開始
			kag.callExtraConductor("onload.ks", "*after_restore",
						betin2ndTransition());
		} else {
			// onload.ksや*before_restoreがなければすぐトランジション開始
			begin2ndTransition();
		}
	}

	// 二回目のトランジション開始
	function begin2ndTransition()
	{
		// 二回目のトランジション開始
		if ((before_elm.enabled !== void && !before_elm.enabled) ||
		    (after_elm.enabled  !== void && !after_elm.enabled))
			runAfterLoad();	// 実行しない場合
		else
			dst.beginTransition(after_elm.method,,src,after_elm);
	}

	// トランジション終了後の最終処理
	function runAfterLoad()
	{
		invalidate src;
		invalidate dst;

		if (isExistLabel("onload.ks", "*after")) {
			// extraConductor は使われてないこと前提。多分大丈夫
			// "*after" が無ければなにもしない
			kag.extraConductor.clear();
			kag.setConductorToMain();
			kag.callExtraConductor("onload.ks", "*after");
		}

		// キー・マウスイベント関数を元に戻す
		restore_key_mouse_functions();

		// もう onLoad 中じゃないよ、という状態にして、
		onLoading = false;
		// メニューを元に戻す
		restoreMenuEnabled();
		// メインコンダクタに対してトリガ打っとく。メインコンダクタじゃ
		// ないとトリガ受け取れないけどいいや。
		kag.mainConductor.trigger('RunOnLoad_trigger');
	}
}


kag.addPlugin(global.runonload_obj = new RunOnLoadLayers());

[endscript]

;[runonload_opt for= method= time= color= ...]
[macro name=runonload_opt]
[if exp="mp.for === void || mp.for == 'before'"]
	[eval exp="global.runonload_obj.setOptions(mp,)"]
[endif]
[if exp="mp.for === void || mp.for == 'after'"]
	[eval exp="global.runonload_obj.setOptions(,mp)"]
[endif]
[endmacro]

; runOnLoad が終わるのを待つ
[macro name=runonload_wait]
[waittrig name="RunOnLoad_trigger" cond="global.runonload_obj.onLoading"]
[endmacro]


[return]
