[return cond="typeof(.FaceWindow) != 'undefined'"]

; 2013/11/28	0.4	・[facewin_uninit]で、.FaceWindow_objをdelete前に
;			　invalidateするよう変更
;			・kag.addPlugin()を[facewin_init]の外で実行
;			　再読み込み時にfinalize()でエラーになるため
; 2013/09/08	0.32	・draw_face()でabsolute/visibleもassign()前後で保存
;			　するよう変更
; 2013/04/08	0.31	・[facewin_regpos]で指定したsrcleft/srctopが反映されて
;			　いなかったのを修正
; 2013/02/09	0.3	・onRestore()でdraw_face()に十分パラメータを渡して
;			　いなかったのを修正
; 2012/08/19	0.21	・finalize()でtypoef(w)=='undefined'をisvalid(w)に変更
; 2012/08/13	0.2	・予めコピー元座標を登録して名前で呼び出せるように拡張
; 2012/08/11	0.1	・初期リリース


[call storage="TJSFunctions.ks"]

[iscript]

class FaceWindow extends KAGPlugin {
	var w;			// =kag
	var layer;		// 参照する前景レイヤ番号(文字列)
	var left=0, top=0;	// フェイスウィンドウの位置
	var width=160, height=120;	// フェイスウィンドウのサイズ
	var alphastorage = "";	// omAlphaで合成する場合の画像ファイル名
	var alphalayer;		// omAlphaで合成する場合の画像(レイヤ)
	var transargs = %[	// [trans]のデフォルトパラメータ
		method : 'crossfade',
		time   : 100
	];
	var pagedat = %[	// ページごとの、前回表示した画像データ
		fore : %[
			storage  : "",
			srclayer : "",
			srcpage  : "",
			srcleft:0, srctop:0 // srcwidth=160, srcheight=120,
		],
		back : %[
			storage  : "",
			srclayer : "",
			srcpage  : "",
			srcleft:0, srctop:0 // srcwidth=160, srcheight=120,
		]
	];
	var ctclear = false;	// [ct]でクリアするかどうか
	var cmclear = false;	// [cm]でクリアするかどうか
	var ct_org, cm_org;	// [cm][ct]のオリジナル
	var poshash = %[];	// 名前とsrcleft/srctopの対応ハッシュ

	// 以下は一時変数なのでstore時保存の必要なし
	var currentNum, currentPage, currentWithBack, actualChSpeed;

	// コンストラクタ
	function FaceWindow(w, elm)
	{
		// 初期化。ここでやらないと onRestore() で使うので
		this.w           = w;
		ct_org           = w.tagHandlers.ct;
		cm_org           = w.tagHandlers.cm;
		w.tagHandlers.ct = ct_new;
		w.tagHandlers.cm = cm_new;
		// layerが指定されていなければ何もしない
		if (elm === void || elm.layer === void)
			return;

		// デフォルトではkag.fore.messages[9]よりも上
		elm.index = 1010000 if (elm.index === void);

		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		clear_face('fore');
		clear_face('back');
		w.tagHandlers.ct    = ct_org;
		w.tagHandlers.cm    = cm_org;
		if (alphalayer !== void)
			invalidate alphalayer;
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		var e = %[];
		// 引数をバックアップする。[facewin_setopt mp...]
		// するとmpの内容が変わるのを防ぐため
		(Dictionary.assignStruct incontextof e)(elm);

		if (e.layer !== void) {
			var fg = getLayerFromPage('fore');
			var bg = getLayerFromPage('back');
			// layerが指定されたら以前のを戻したりいろいろ初期化
			layer = string(e.layer);// 前景レイヤ番号(文字列)
			fg = getLayerFromPage('fore');
			bg = getLayerFromPage('back');
			fg.autoHide = bg.autoHide = true;
			clear_face('fore');
			clear_face('back');
		}

		// ページオプションを設定する
		if (e.page !== void) {
			var p = pagedat[e.page];
			// nameが指定されてたらそっちのsrcleft/topを指定
			p.srcleft = poshash[e.name].srcleft if (e.name!==void);
			p.srctop  = poshash[e.name].srctop  if (e.name!==void);
			
			p.storage   = e.storage   if (e.storage  !== void);
			p.srclayer  = e.srclayer  if (e.srclayer !== void);
			p.srcpage   = e.srcpage   if (e.srcpage  !== void);
			p.srcleft   = e.srcleft   if (e.srcleft  !== void);
			p.srctop    = e.srctop    if (e.srctop   !== void);
//未実装		p.srcwidth  = e.srcwidth  if (e.srcwidth !== void);
//			p.srcheight = e.srcheight if (e.srcheight!== void);
			// storageとsrclayerは背反、指定されたらもう一方を""に
			if (e.storage !== void && e.storage != "")
				p.srclayer = "";
			if (e.srclayer !== void && e.srclayer != "")
				p.storage = "";
		}

		// trans* のパラメータを設定する
		var keyary = keys(elm);
		for (var i = keyary.count-1; i >= 0; i--) {
			var key = keyary[i];
			if (key != 'trans' && key.substr(0,5) == 'trans') {
				var arg = key.substr(5);
				transargs[arg] = elm[key];
			}
		}

		ctclear = +e.ctclear if (e.ctclear !== void);
		cmclear = +e.cmclear if (e.cmclear !== void);

		// フェイスウインドウ位置・サイズを設定
		left   = +e.left   if (e.left   !== void);
		top    = +e.top    if (e.top    !== void);
		width  = +e.width  if (e.width  !== void);
		height = +e.height if (e.height !== void);
		
		if (e.alphastorage !== void) {
			if (alphalayer !== void)
				invalidate alphalayer;
			alphalayer = void;
			if (e.alphastorage != "") {
				// ファイル名が指定されていた
				alphastorage = e.alphastorage;
				alphalayer = new Layer(w, w.fore.base);
				alphalayer.visible = false;
				alphalayer.loadImages(alphastorage);
			}
		}

		// 大きさを変える時はfore/back/alphalayer全部クリア
		if (e.width !== void || e.height !== void) {
			clear_face('fore');
			clear_face('back');
			// アルファレイヤもクリアする
			if (e.alphastorage === void) {
				if (alphalayer !== void)
					invalidate alphalayer;
				alphalayer = void;
				alphastorage = "";
			}
		}

		// 必要ならposhash設定
		if (e.name !== void && e.poshash !== void) {
			poshash[e.name] = %[];
			(Dictionary.assign incontextof poshash[e.name])(e.poshash);
		}

		// 残りのパラメータは[layopt]に丸投げ。
		// left/top/width/height/index/autohideなど
		if (layer !== void) {
			e.layer = layer;
			w.tagHandlers.layopt(e);
		}
	}

	// trans用の引数を引っ張り出す。ただしelmに指定されていたらそっち優先
	function setTransArgs(elm)
	{
		if (elm === void)
			return void;
		var keyary = keys(transargs);
		for (var i = keyary.count-1; i >= 0; i--) {
			if (typeof(elm[keyary[i]]) == 'undefined')
				elm[keyary[i]] = transargs[keyary[i]];
		}
		return elm;
	}

	// ページから指定されているレイヤを得る
	function getLayerFromPage(page = 'fore', l=this.layer)
	{
		return (l === void) ? void : w[page].layers[l];
	}

	// [ct]でfaceWindowをどうするか
	function ct_new()
	{
		if (ctclear) {
			// MainWindowではcurrentWithBackだと表裏区別なくcompを
			// 指定してたので、currentPageがforeだと仮定できない
			if (!w.currentWithBack)
				clear_face(w.currentPage);
			else {
				clear_face('fore');
				clear_face('back');
			}
		}
		return ct_org(...);
	}

	// [cm]でfaceWindowをどうするか
	function cm_new()
	{
		if (cmclear) {
			if (!w.currentWithBack)
				clear_face(w.currentPage);
			else {
				clear_face('fore');
				clear_face('back');
			}
		}
		return cm_org(...);
	}

	// フェイウィンドウをクリアする(大きさや位置は変えない)
	function clear_face(page = 'fore')
	{
		if (layer === void)
			return;
		var p = pagedat[page];
		p.storage = p.srclayer = p.srcpage = "";
		var l = getLayerFromPage(page);
		var v = l.visible;
		l.freeImage();
		l.setImageSize(width, height);
		l.setSizeToImageSize();
		l.face = dfAuto, l.type = ltAlpha;
		l.fillRect(0,0,width,height, 0);
		l.visible = v;
	}

	// フェイスウィンドウに顔を表示する
	// page=を設定しちゃう(=elmの内容が変わる)ので注意
	function draw_face(elm)
	{
		if (layer === void)
			return;

		var e = %[];
		// 引数をバックアップする。[facewin_draw mp...]
		// するとmpの内容が変わるのを防ぐため
		(Dictionary.assignStruct incontextof e)(elm);

		e.page = 'back' if (e.page === void);
		setOptions(e);

		var dst = getLayerFromPage(e.page);
		var p = pagedat[e.page];
		if (e.storage !== void && e.storage != ""/*ありうる*/) {
			// storage が指定されていたらそれ読み込んで表示
			w.tagHandlers.image(%[
				storage : p.storage, // setOptions()で設定済み
				layer   : layer,
				page    : e.page
			]);
			dst.setImagePos(0,0);
		} else if (e.srclayer !== void && e.srclayer != "") {
			// srclayer が指定されていたらそれコピーして表示
			var src = w[p.srcpage].layers[p.srclayer];
			// 全体をassing()するのはアニメーション等のコピーのため
			// ただ、assign()しちゃうといろんなメンバがコピーされて
			// しまうので、いくつかは元に戻す
			var autoHide = dst.autoHide;
			var absolute = dst.absolute;
			var visible  = dst.visible;
			dst.assign(src);	// 位置なども全てコピーされる
			dst.setPos(left, top, width, height);
			dst.setImagePos(-p.srcleft, -p.srctop);
			dst.autoHide = autoHide;
			dst.absolute = absolute;
			dst.visible  = visible;
		} else {
			// storageもsrclayerも指定されていなければクリア
			clear_face(e.page);
		}
		if (alphalayer !== void) {
			// alphalayerに画像が存在してたら合成する
			dst.operateRect(p.srcleft, p.srctop,
					alphalayer, 0,0,width,height,
					omMultiplicative);
		}
	}

	// [backlay][forelay]などでレイヤをコピーした時
	function onCopyLayer(toback)
	{
		if (toback)
			(Dictionary.assignStruct incontextof pagedat.back)(pagedat.fore);
		else
			(Dictionary.assignStruct incontextof pagedat.fore)(pagedat.back);
	}

	// 表レイヤと裏レイヤを入れ替えた時
	function onExchangeForeBack()
	{
		var tmp = pagedat.fore;
		pagedat.fore = pagedat.back;
		pagedat.back = tmp;
	}

	// セーブ時
        function onStore(f, elm)
	{
		var dic = f.FaceWindow = %[];
		dic.layer        = layer;
		dic.left         = left;
		dic.top          = top;
		dic.width        = width;
		dic.height       = height;
		dic.alphastorage = alphastorage;
		dic.alphalayer   = alphalayer;
		dic.pagedat      = %[];
		(Dictionary.assignStruct incontextof dic.pagedat)(pagedat);
		dic.transargs    = %[];
		(Dictionary.assignStruct incontextof dic.transargs)(transargs);
		dic.ctclear      = ctclear;
		dic.cmclear      = cmclear;
		dic.poshash      = %[];
		(Dictionary.assignStruct incontextof dic.poshash)(poshash);
		return dic;
	}

	// ロード時
        function onRestore(f, clear, elm)
	{
		var dic = f.FaceWindow;
		finalize();		// ct_org/cm_orgを元に戻す
		if (dic === void)
			return;
		FaceWindow(w, dic);	// 初期化 + ct_org/cm_orgなどを設定
		(Dictionary.assignStruct incontextof pagedat)(dic.pagedat);
		(Dictionary.assignStruct incontextof transargs)(dic.transargs);
		(Dictionary.assignStruct incontextof poshash)(dic.poshash);
		// 表・裏共に画像を表示する
		var args = %[];
		(Dictionary.assignStruct incontextof args)(pagedat.fore);
		args.page = 'fore';
		draw_face(args);
		(Dictionary.assignStruct incontextof args)(pagedat.back);
		args.page = 'back';
		draw_face(args);

		return dic;
	}
};


kag.addPlugin(.FaceWindowPlugin_obj = new FaceWindow(kag));

[endscript]


; 顔ウィンドウを初期化する。指定された顔ウィンドウはクリアされる。
[macro name=facewin_init]
[facewin_uninit]
[facewin_setopt * layer=%layer|1]
[endmacro]


; 顔ウィンドウを開放する。指定されていた顔ウィンドウはクリアされる。
[macro name=facewin_uninit]
[facewin_clear page=both]
[facewin_setopt page=both visible=false]
[endmacro]


; オプションを指定する
[macro name=facewin_setopt]
[eval exp="mp.page = 'both'" cond="mp.page === void"]
[if exp="mp.page == 'both'"]
	[facewin_setopt * page=fore]
	[facewin_setopt * page=back]
[else]
	[eval exp=".FaceWindowPlugin_obj.setOptions(mp)"]
[endif]
[endmacro]


; 顔画像のsrcleft/srctopを名前つきで登録する
; [facewin_regpos name=XXXX srcleft=#### srctop=####]
[macro name=facewin_regpos]
[eval exp=".FaceWindowPlugin_obj.setOptions(%[name:mp.name, poshash:%[srcleft:+mp.srcleft, srctop:+mp.srctop]])"]
[endmacro]

; 顔画像のsrcleft/srctopの名前を削除する
; [facewin_unregpos name=XXXX]
[macro name=facewin_unregpos]
; setOptions()中でname=xxx,poshash=voidのときの処理はできない(facewin_dispから
; 呼ばれたりするからのでモノスゴイリーガルだが…まぁいいか…
[eval exp="delete .FaceWindowPlugin_obj.poshash[mp.name]"]
[endmacro]


; 顔画像を表示する。transが指定されていればtransする。
[macro name=facewin_disp]
[eval exp="mp.page      = 'back'" cond="mp.page      === void"]
[eval exp="mp.srcpage   = 'fore'" cond="mp.srcpage   === void"]
[eval exp="mp.trans     = true"   cond="mp.trans     === void"]
[eval exp="mp.wait      = true"   cond="mp.wait      === void"]
[eval exp="mp.backlay   = true"   cond="mp.backlay   === void"]
[eval exp="mp.canskip   = true"   cond="mp.canskip   === void"]
[eval exp="mp.stoptrans = true"   cond="mp.stoptrans === void"]
[if exp="mp.page == 'both'"]
	; ここ、foreが先ならbacklayのこと考えなくてよいので変更しないこと。
	[facewin_disp * page='fore' trans=false]
	[facewin_disp * page='back' trans=false]
[else]
	[stoptrans cond="mp.stoptrans"]
	[backlay cond="mp.backlay"]
	[eval exp=".FaceWindowPlugin_obj.draw_face(mp)"]
	[if exp="mp.page == 'back' && mp.trans"]
		[eval exp=".FaceWindowPlugin_obj.setTransArgs(mp)"]
		[trans *]
		[wt canskip=%canskip cond="mp.wait"]
	[endif]
[endif]
[endmacro]


; 顔ウィンドウに表示されている顔画像を消去する
; これよりも visible=0 の方が効率がよい
[macro name=facewin_clear]
[facewin_disp * storage=&void srclayer=&void]
[endmacro]

[return]
