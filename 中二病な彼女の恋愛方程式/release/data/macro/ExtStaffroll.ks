; 二重読み込みを防止
[return cond="typeof(global.ExtStaffroll_loaded) != 'undefined'"]

; スタッフロールプラグイン
; 2013/11/29	0.7	・スタッフロール中はセーブ・ロード不可に変更
;			・new ExtStaffroll()が二箇所あったので一箇所削除
; 2012/02/23	0.6	setOptions()でmargin[rltb]が文字列加算されてたのを修正
; 2011/05/30	0.51	finalize()にtimer.enabled=falseとinvalidate timerを追加
; 2011/05/29	0.5	画像が大きくなると改行処理がやたらと遅くなった(場合に
;			よっては40秒くらいCPU回りっぱなし)ので、改行幅を
;			2000ドットとかにしてみた。最後にautoCrop()で補正する
;			加えて、[staffroll_set]でpage=を指定できるようにした
; 2011/05/11	0.2	[staffroll_set]にclearオプション追加
; 2011/05/04	0.1	初期リリース。縦書きは未対応

[iscript]

// ExtStaffrollクラス
class ExtStaffroll extends KAGPlugin {
	var win;
	var layer;
	var forelayer, backlayer;
	var forereline_org, backreline_org;
	var timer;
	var sttick, edtick;

	var startdisp = 0;	// 開始位置(0=画面外から、10=10ドット画面に入った状態で
	var enddisp = 0;	// 停止位置(0=画面外まで、10=10ドット残して)

	// コンストラクタ
	function ExtStaffroll(w, elm = %[])
	{
		win        = w;
		elm.layer  = "message0" if (elm.layer  === void);
		timer           = new Timer(timerCallback, '');
		timer.interval  = 33.33333; // (33.33333msec = 1/30秒で一回)
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		timer.enabled = false;
		if (layer !== void && layer.substr(0,7) == 'message') {
			// 以前の設定を元に戻す
			forelayer.reline = forereline_org;
			backlayer.reline = backreline_org;
		}
		invalidate timer;
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.layer !== void) {
			if (layer !== void && layer.substr(0,7) == 'message') {
				// 以前の設定を元に戻す
				forelayer.reline = forereline_org;
				backlayer.reline = backreline_org;
			}
			layer     = elm.layer;
			elm.page  = 'fore';
			forelayer = win.getMessageLayerObjectFromElm(elm);
			elm.page  = 'back';
			backlayer = win.getMessageLayerObjectFromElm(elm);
		}
		forereline_org = forelayer.reline;
		backreline_org = backlayer.reline;
		forelayer.reline = forereline incontextof forelayer;
		backlayer.reline = backreline incontextof backlayer;

		if (elm.marginl !== void)
			forelayer.marginL = backlayer.marginL = +elm.marginl;
		if (elm.marginr !== void)
			forelayer.marginR = backlayer.marginR = +elm.marginr;
		if (elm.margint !== void)
			forelayer.marginT = backlayer.marginT = +elm.margint;
		if (elm.marginb !== void)
			forelayer.marginB = backlayer.marginB = +elm.marginb;
		if (elm.vertical !== void)
			forelayer.vertical = backlayer.vertical =+elm.vertical;

		if (elm.width  !== void)
			forelayer.imageWidth =backlayer.imageWidth =+elm.width;
		if (elm.height !== void)
			forelayer.imageHeight=backlayer.imageHeight=+elm.height;
		forelayer.setSizeToImageSize();
		backlayer.setSizeToImageSize();

		if (elm.interval !== void)
			timer.interval = +elm.interval;
	}

	// 表画面のreline()ラッパー
	function forereline()
	{
		// 先に改行したら溢れるかどうか判断して、溢れそうならサイズを
		// 大きくし、reline()が終わったらギリギリまで戻す。
		var dummylacksiz = 0;
		var lacksiz = 0;

                if (vertical) {
			// 未実装
                } else {
			lacksiz = y + lineLayer.height + marginB - imageHeight;
			dummylacksiz = lineLayerBase + lineLayerOriginY + getLineLayerTopOffset() + lineSize + marginB - imageHeight + 1; // +1大事
			if (dummylacksiz > 0) {
				imageHeight += dummylacksiz;
				// １lineずつ増加させてると遅かったので追加
				if (2000 > dummylacksiz)
					imageHeight += 2000; // 2000dot増加
				setSizeToImageSize();
			}
                }

		// 改行、必ず false を返すはず(ここがfore/backで異なるだけ)
		var ret = global.extstaffroll_obj.forereline_org();

		if (dummylacksiz <= 0)
			return ret;
// ギリギリまでサイズを戻すのはやめた
//		if (vertical) {
//			// 未実装
//		} else {
//			imageHeight -= dummylacksiz-lacksiz;
//			setSizeToImageSize();
//		}
		return ret;
	}

	// 裏画面のreline()ラッパー ※foreとbackで異なるのは一行だけ…
	function backreline()
	{
		// 先に改行したら溢れるかどうか判断して、溢れそうならサイズを
		// 大きくし、reline()が終わったらギリギリまで戻す。
		var dummylacksiz = 0;
		var lacksiz = 0;
                if (vertical) {
			// 未実装
                } else {
			lacksiz = y + lineLayer.height + marginB - imageHeight;
			dummylacksiz = lineLayerBase + lineLayerOriginY + getLineLayerTopOffset() + lineSize + marginB - imageHeight + 1;
			if (dummylacksiz > 0) {
				imageHeight += dummylacksiz;
				// １lineずつ増加させてると遅かったので追加
				if (2000 > dummylacksiz)
					imageHeight += 2000; // 2000dot増加
				setSizeToImageSize();
			}
                }

		// 改行、必ず false を返すはず(ここがfore/backで異なるだけ)
		var ret = global.extstaffroll_obj.backreline_org();

		if (dummylacksiz <= 0)
			return ret;
// ギリギリまでサイズを戻すのはやめた
//		if (vertical) {
//			// 未実装
//		} else {
//			imageHeight -= dummylacksiz-lacksiz;
//			setSizeToImageSize();
//		}
		return ret;
	}

	// 表画面・裏画面をオートで必要な大きさに切り抜く
	function autoCrop(page = 'both')
	{
		if (page == 'fore') {
			var fl = forelayer;
			if (forelayer.vertical) {
				// 未実装
			} else {
				fl.imageHeight = fl.y + fl.marginB;
			}
			fl.setSizeToImageSize();
		} else if (page == 'back') {
			var bl = backlayer;
			if (backlayer.vertical) {
				// 未実装
			} else {
				bl.imageHeight = bl.y + bl.marginB;
			}
			bl.setSizeToImageSize();
		} else { // page == 'bogh'
			autoCrop('fore');
			autoCrop('back');
		}
	}

	// 画面をクリアする
	function clear(page = 'both')
	{
		if (page == 'fore')
			forelayer.clear();
		else if (page == 'back')
			backlayer.clear();
		else {
			forelayer.clear();
			backlayer.clear();
		}
	}

	// スタッフロール開始
	function start(time, startdisp=0, enddisp=0)
	{
		sttick = System.getTickCount();
		edtick = sttick + +time;
		this.startdisp = +startdisp;
		this.enddisp = +enddisp;
		timer.enabled = true;
	}
	
	// スタッフロール停止
	function stop(lastpos=true)
	{
		if (!timer.enabled)
			return;
		if (lastpos) {
			edtick = System.getTickCount();	// 最終位置に移動
			timerCallback();
		}
		timer.enabled = false;
	}
	
	// タイマハンドラ、位置移動
	function timerCallback()
	{
		var curper = (System.getTickCount()-sttick)/(edtick-sttick);
		if (curper >= 1) {
			// 既に終了していた
			timer.enabled = false;
			if (forelayer.vertical) {
				forelayer.left = win.scWidth-enddisp;
				backlayer.left = forelayer.left; // 裏画面同一
			} else {
				forelayer.top = -forelayer.height+enddisp;
				backlayer.top = forelayer.top; // 裏画面同一
			}
			// トリガを引いて [staffroll_wait] を起こす
			win.conductor.trigger("extstaffroll_endtrig");
		} else {
			// 実行中
			if (forelayer.vertical) {
				// 未実装
			} else {
				// curper=0 で top=scHeight-startdisp,
				// curper=1 で top=-forelayer.height+enddisp
				forelayer.top = (-forelayer.height+enddisp-win.scHeight+startdisp)*curper + win.scHeight-startdisp;
				backlayer.top = forelayer.top;
			}
		}
	}

	// [backlay/forelay]が呼ばれた時に呼ばれる
// メッセージレイヤの場合はおかしくなるので、レイヤ交換はしない
//	function onCopyLayer(toback)
//	{
//		if (toback) {
//			backlayer = forelayer;
//		} else {
//			forelayer = backlayer;
//		}
//	}

	// 表・裏画面交換時に呼ばれる
	function onExchangeForeBack()
	{
		// reline も更新する必要があることに注意
		forelayer.reline = forereline_org;
		backlayer.reline = backreline_org;

		var tmp = backlayer;
		backlayer = forelayer;
		forelayer = tmp;

		forereline_org = forelayer.reline;
		backreline_org = backlayer.reline;
		forelayer.reline = forereline incontextof forelayer;
		backlayer.reline = backreline incontextof backlayer;
	}
}


// プラグイン設定

[endscript]


; スタッフロールを初期化する
; [staffroll_init layer=message# left= top= width= height= vertical=]
[macro name=staffroll_init]
; セーブロードを無効化する
[eval exp="tf.extstaffroll_storeEnabled = kag.storeEnabled"]
[eval exp="tf.extstaffroll_restoreEnabled = kag.restoreEnabled"]
[eval exp="kag.storeEnabled = kag.restoreEnabled = false"]
[eval exp="kag.setMenuAccessibleAll()"]
; 既に登録されていたら削除
[staffroll_end]
; KAGPluginとして再登録
[eval exp="kag.addPlugin(global.extstaffroll_obj = new ExtStaffroll(kag, mp))"]
; 初期状態では画面外へ移動し、クリア
[eval exp="mp.page = 'fore'"]
[eval exp="mp.vertical = kag.getMessageLayerObjectFromElm(mp).vertical" cond="mp.vertical === void"]
[eval exp="mp.width  = kag.scWidth"  cond="mp.width  === void"]
[eval exp="mp.height = kag.scHeight" cond="mp.height === void"]
[if exp="!mp.vertical"]
	; 横書きの場合
	[eval exp="mp.top    = kag.scHeight" cond="mp.top   === void"]
	[eval exp="mp.left   = 0"            cond="mp.left  === void"]
	; 横幅は自動調整されるので最小値に
	[eval exp="mp.height = 1"            cond="mp.height === void"]
[else]
	; 縦書きの場合
	[eval exp="mp.top    = 0"            cond="mp.top    === void"]
	[eval exp="mp.left   = -mp.width"    cond="mp.left   === void"]
	; 縦幅は自動調整されるので最小値に
	[eval exp="mp.width  = 1"            cond="mp.width === void"]
[endif]
[position layer=%layer|message0 page=fore visible=true left=%left|0 top=%top|0 width=%width height=%height marginl=%marginl|0 margint=%margint|0 marginr=%marginr|0 marginb=%marginb|0 color=0 opacity=0 frame=""]
[position layer=%layer|message0 page=back visible=true left=%left|0 top=%top|0 width=%width height=%height marginl=%marginl|0 margint=%margint|0 marginr=%marginr|0 marginb=%marginb|0 color=0 opacity=0 frame=""]
; クリアする。スタイルなども元に戻る
;[eval exp="global.extstaffroll_obj.setOptions(mp)"]
[endmacro]


; スタッフロールを完全に終了する
[macro name=staffroll_end]
[if exp="typeof(global.extstaffroll_obj) != 'undefined'"]
	[staffroll_stop]
	[eval exp="kag.removePlugin(global.extstaffroll_obj)"]
	[eval exp="invalidate global.extstaffroll_obj"]
	[eval exp="delete global.extstaffroll_obj"]
	; セーブロードを元に戻す
	[eval exp="kag.storeEnabled = tf.extstaffroll_storeEnabled"]
	[eval exp="kag.restoreEnabled = tf.extstaffroll_restoreEnabled"]
	[eval exp="kag.setMenuAccessibleAll()"]
	[eval exp="delete tf.extstaffroll_storeEnabled"]
	[eval exp="delete tf.extstaffroll_restoreEnabled"]
[endif]
[endmacro]


; スタッフロールのオプションを設定する
[macro name=staffroll_setopts]
;ヒストリに出力しないように細工
[eval exp="global.extstaffroll_obj.setOptions(mp)"]
[endmacro]


; スタッフロールに表示文字列・画像を設定する
; [staffroll_set storage= target= clear=]
[macro name=staffroll_set]
; ヒストリを禁止しておく
[eval exp="mp.page = 'fore'" cond="mp.page === void"]
[eval exp="mp.writeenabled_save = kag.historyWriteEnabled"]
[eval exp="mp.enabled_save = kag.historyEnabled"]
[history output=false enabled=false]
; 画面クリア。[cm]や[ct]を使わないのは、それらだとメッセージレイヤ「全て」が
; クリアされてしまうから。message1はクリアしなくていいのにーとかあるやん？
[if exp="mp.clear === void || mp.clear"]
	[eval exp="global.extstaffroll_obj.clear(mp.page)"]
[endif]
; current を設定したメッセージレイヤにして、
[eval exp="mp.page_save = kag.currentPage ? 'back' : 'fore'"]
[eval exp="mp.layer_save = 'message'+kag.currentNum"]
[eval exp="mp.withback_save = kag.currentWithBack"]
[eval exp="mp.withback = true" cond="mp.page == 'both'"]
[current layer=&global.extstaffroll_obj.layer page=%fore withback=%withback]
; autoreturnはoffにする
[style autoreturn=false]
;[nowait]	nowait/endwait は、callするとresetされちゃうみたいなので削除
; ここで文字列を全部表示
[call storage=%storage target=%target]
;[endnowait]
[eval exp="global.extstaffroll_obj.autoCrop(mp.page)"]
[history output=%writeenabled_save enabled=%enabled_save]
[current layer=%layer_save page=%page_save withback=%withback_save]
[endmacro]


; スタッフロールを開始する
; [staffroll_start time= startdisp= enddisp=]
[macro name=staffroll_start]
[eval exp="global.extstaffroll_obj.start(+mp.time, +mp.startdisp, +mp.enddisp)"]
[endmacro]


; スタッフロールの終了を待つ
; [staffroll_wait lastpos=true(def)/false canskip=true/false(def)]
[macro name=staffroll_wait]
[waittrig name="extstaffroll_endtrig" canskip=%canskip onskip="global.extstaffroll_obj.stop(mp.lastpos)" cond="global.extstaffroll_obj.timer.enabled"]
[endmacro]


; スタッフロールを強制停止する
; [staffroll_stop lastpos=true(def)|false]
[macro name=staffroll_stop]
[eval exp="global.extstaffroll_obj.stop(mp.lastpos)"]
[endmacro]


; 読み込み済みフラグ
[eval exp="global.ExtStaffroll_loaded = 1"]

[return]
