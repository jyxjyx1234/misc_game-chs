; 二重読み込みを防止
[return cond="typeof(global.Mamakita_obj) != 'undefined'"]

; Escキーで画像"Mamakita.(jpg|png)"を表示するプラグイン…というか、要するに
; ママキタボタン。

; 2013/11/28	0.3	・ママキタ時メニューを表示しないように修正
; 2011/02/14	0.2	デフォルトでママキタ中は「最初に戻る」不可に。
;			TJSFuncions.ksをinclude
;			getMaxKAGAbsolute()を使うように変更
; 			直接kag.*と指定していた箇所をw.に変更
;			最小化した時のタイトルもMSExcelに変更できるように修正
;			セーブロードに対応
;			onCloseQueryをKAGデフォルトのものに戻すように変更
;			　　※closeウィンドウが萌え絵だった場合を回避するため
; 2011/01/31	0.1	ベータリリース


[call storage=TJSFunctions.ks]

[iscript]

class Mamakita extends KAGPlugin
{
	var w;			// ウィンドウ(普通kagしかないけど)
					// ↓ママキタ中に↓
	var gotostartstop = true;	// 「最初に戻る」を停止するかどうか
	var storestop     = false;	// store/restore を停止するかどうか
	var sestop        = true;	// SEを停止するかどうか
	var bgmstop       = true;	// BGMを停止するかどうか

	var fore, back;			// 画像表示用レイヤ(表裏)

	var onKeyDown_org;		// オリジナルのonKeyDownを保存
	var running   = false;		// 現在ママキタ中かどうか
	var bgmvolume = [];		// BGMのボリュームを覚える配列
	var sevolume  = [];		// SEのボリュームを覚える配列
	var bgmpaused = [];		// BGMの停止状態を覚える配列
	var sepaused  = [];		// SEの停止状態を覚える配列
	var caption;			// window captionを覚える
	var maincond_interrupted;	// コンダクタのinterruptedを覚える
	var extracond_interrupted;	// コンダクタのinterruptedを覚える
	var storeEnabled;		// KAG のセーブ可能状態を覚える
	var restoreEnabled;		// KAG のロード可能状態を覚える
	var startAnchorEnabled;		// KAG の「最初に戻る」可能状態を覚える
	var onCloseQuery;		// KAG の onCloseQuery を覚える
	var current_onCloseQuery;	// KAG の現在の onCloseQuery を覚える
	var menu_visible;		// 現在のmenuの表示状態を覚える

	// コンストラクタ
	function Mamakita(window)
	{
		super.KAGPlugin();
		w = window;
		onKeyDown_org = w.onKeyDown;

		w.onKeyDown = onKeyDown;

		// ママキタ画像読み込み
		fore = new Layer(w, w.fore.base);
		back = new Layer(w, w.back.base);
		fore.loadImages('Mamakita');	// Mamakita.jpg/png 読み込み
		back.loadImages('Mamakita');
		fore.setSizeToImageSize();
		back.setSizeToImageSize();
		fore.visible = back.visible = false;	// 最初は非表示
		onCloseQuery = w.onCloseQuery;	// 最初のCloseQueryを覚える
	}

	// デストラクタ
	function finalize()
	{
		invalidate fore;
		invalidate back;
		w.onKeyDown = onKeyDown_org;
		super.finalize();
	}

	// onCloseQuery() を元に戻す。RunOnExit()のように書換えてる悪者を考慮
	function onCloseQueryOrg(tobeOrg)
	{
		if (tobeOrg) {
			current_onCloseQuery = w.onCloseQuery;
			w.onCloseQuery = onCloseQuery;
		} else {
			w.onCloseQuery = current_onCloseQuery;
		}
	}

	// 「最初に戻る」可否を設定する
	function gotoStartOnOff(on)
	{
		if (!gotostartstop)
			return;
		if (!on) {
			startAnchorEnabled = w.startAnchorEnabled;
			w.startAnchorEnabled = false;
		} else {
			w.startAnchorEnabled = startAnchorEnabled;
		}
		w.setMenuAccessibleAll();
	}

	// store/restore可否を設定する
	function storeOnOff(on)
	{
		if (!storestop)
			return;

		if (!on) {
			storeEnabled     = w.storeEnabled;
			restoreEnabled   = w.restoreEnabled;
			// ↓w.setStoreEnabled(false)と同じことをする
			w.storeEnabled   = false;
			w.restoreEnabled = false;
			w.setMenuAccessibleAll();
		} else {
			w.storeEnabled   = storeEnabled;
			w.restoreEnabled = restoreEnabled;
			w.setMenuAccessibleAll();
		}
	}

	// レイヤを On/Offする
	function layerOnOff(on)
	{
		if (on) {
			fore.absolute = back.absolute = getMaxKAGAbsolute()+1;
			fore.visible = 1;		// 画像表示
			back.visible = 1;
			fore.setMode();
			// back.setMode();
			caption = w.caption;
			w.setTitle("Macrosoft Excel - Book1");
		} else {
			fore.visible = 0;		// 画像非表示
			back.visible = 0;
			fore.removeMode();
			// back.removeMode();
			w.setTitle(caption);
		}
	}

	// コンダクタ停止・再開
	function conductorStartStop(start)
	{
		if (!start) {
			// コンダクタ停止
			maincond_interrupted = w.mainConductor.interrupted;
			w.mainConductor.interrupted = true;
			extracond_interrupted = w.extraConductor.interrupted;
			w.extraConductor.interrupted = true;
		} else {
			// コンダクタ再開
			w.mainConductor.interrupted = maincond_interrupted;
			w.extraConductor.interrupted = extracond_interrupted;
		}
	}

	// BGM停止・再開
	function bgmStartStop(start)
	{
		if (!bgmstop)
			return;
		if (!start) {
			// BGM停止
			bgmvolume = [];
			bgmpaused = [];
			// BGMを無音+pause
			if (w.bgm.buf1 !== void) {
				bgmvolume[0] = w.bgm.buf1.volume2;
				w.bgm.buf1.volume2 = 0;
				if (w.bgm.buf1.status == 'play') {
					bgmpaused[0] = w.bgm.buf1.paused;
					w.bgm.buf1.paused = true;
				}
			}
			if (w.bgm.buf2 !== void) {
				bgmvolume[1] = w.bgm.buf2.volume2;
				w.bgm.buf2.volume2 = 0;
				if (w.bgm.buf2.status == 'play') {
					bgmpaused[1] = w.bgm.buf2.paused;
					w.bgm.buf2.paused = true;
				}
			}
		} else {
			// BGMを再開
			if (bgmvolume[0]) // void もはじくのでO.K.
				w.bgm.buf1.volume2 = bgmvolume[0];
			if (bgmpaused[0] !== void)
				w.bgm.buf1.paused = bgmpaused[0];
			if (bgmvolume[1]) // void もはじくのでO.K.
				w.bgm.buf2.volume2 = bgmvolume[1];
			if (bgmpaused[1] !== void)
				w.bgm.buf2.paused = bgmpaused[1];
		}
	}

	// SE停止・再開
	function seStartStop(start)
	{
		if (!sestop)
			return;
		if (!start) {
			// SEを無音+pause
			sevolume = [];
			sepaused = [];
			for (var i = w.se.count-1; i >= 0; i--) {
				sevolume[i] = w.se[i].volume2;
				w.se[i].volume2 = 0;
				if (w.se[i].status == 'play') {
					sepaused[i] = w.se[i].paused;
					w.se[i].paused = true;
				}
			}
		} else {
			// SEを再開
			for (var i = sevolume.count-1; i >= 0; i--) {
				w.se[i].volume2 = sevolume[i];
				if (sepaused[i] !== void)
					w.se[i].paused = sepaused[i];
			}
		}
	}

	// (KAG)W の onKeyDown を乗っ取り、ESCをトラップ
	function onKeyDown(key, shift)
	{
		if (!running && (key==VK_ESCAPE || w.getKeyState(VK_ESCAPE))) {
			// ママキタ開始
			running = true;
			w.lockSnapshot();
			onCloseQueryOrg(true);
			gotoStartOnOff(false);
			storeOnOff(false);
			layerOnOff(true);
			conductorStartStop(false);
			bgmStartStop(false);
			seStartStop(false);
			menu_visible = w.menu.visible;
			w.menu.visible = false if (!w.fullScreened);
			return;
		}

		if (running && (key==VK_ESCAPE || w.getKeyState(VK_ESCAPE)) &&
		    !(shift & ssRepeat)) { // キーリピートしてたら無視 
			// ママキタ終了
			running = false;
			w.unlockSnapshot();
			onCloseQueryOrg(false);
			gotoStartOnOff(true);
			storeOnOff(true);
			layerOnOff(false);
			conductorStartStop(true);
			bgmStartStop(true);
			seStartStop(true);
			w.menu.visible = menu_visible;
			return;
		}

		if (!running) {
			// ママキタ中でなければオリジナルを呼んで終了
			onKeyDown_org(key, shift);
			return;
		}

		// running 中は、解除以外はキー入力を奪うため、
		// 合致しなかったら何もしない。
	}

	// トランジションの後に前景と背景を入れ替える
	function onExchangeForeBack()
	{
		var tmp = fore;
		fore = back;
		back = tmp;
	}

	// セーブする時(そもそもママキタ中はセーブできないのでそれは考えない)
	function onStore(f, elm)
	{
		var dic = f.mamakita = %[];
		dic.gotostartstop = gotostartstop;
		dic.storestop     = storestop;
		dic.sestop        = sestop;
		dic.bgmstop       = bgmstop;
	}

	// ロードする時(そもそもママキタ中はロードできないのでそれは考えない)
	function onRestore(f, elm)
	{
		var dic = f.mamakita;
		if (dic === void)
			return;
		gotostartstop = dic.gotostartstop;
		storestop     = dic.storestop;
		sestop        = dic.sestop;
		bgmstop       = dic.bgmstop;
	}
}



kag.addPlugin(global.Mamakita_obj = new Mamakita(kag));

[endscript]


[return]
