[return cond="typeof(.NameWindow) != 'undefined'"]

; 2013/11/28	0.4	・[namewin_uninit]で.NameWindow_objをdelete前に
;			　invalidateするよう変更
;			・kag.addPlugin()を[namewin_init]とは独立するよう変更
;			　再読み込み時にfinalize()でエラーになるため
; 2012/10/10	0.32	・初期状態で [namewin_init]を実行するように変更。
;			　こうしないとNameWindowPlugin_objが定義されず、その
;			　状態でセーブしてたデータを読み込むとエラーとなるため
;			・今日って目の愛護デーだね！
; 2012/10/09	0.31	・[draw_text]でpage=bothを指定した時に、無駄に[backlay]
;			　してしまい、back側がクリアされていたのを修正
; 2012/08/19	0.3	・栞読み込みの時に履歴に複数回表示されるのを修正
;			・page=bothの時に履歴に二度表示されるのを修正
;			・draw_text()を効率化
;			・ct_noclear()で'back'→'fore'を修正
; 2012/08/11	0.21	・[namewin_text]でtext===voidの時何も表示しないように
;			　変更
; 2012/08/10	0.2	・[namewin_setopt]で[namewin_position]と[namewin_style]
;			　のオプションも指定できるように変更
;			・[namewin_init]で[namewin_setopt]のオプションも指定
;			　できるように変更
;			・[namewin_text]で[namewin_setopt]のオプションも指定
;			　できるように変更
; 2012/05/27	0.1	・初期リリース


[call storage="TJSFunctions.ks"]

[iscript]

class NameWindow extends KAGPlugin {
	var w;			// =kag
	var layer;		// 参照するメッセージレイヤ名
	var fgtext;		// 表画面に表示中の文字列
	var bgtext;		// 裏画面に表示中の文字列
	var font;		// [font]で指定するフォントデータ
	var style;		// [style]で指定するデータ
	var ctclear;		// [ct]でクリアするかどうか
	var cmclear;		// [cm]でクリアするかどうか
	var cm_org, ct_org;	// [ct][cm]のオリジナルルーチン
	var history;		// ヒストリ保存するかどうか

	// 以下は一時変数なのでstore時保存の必要なし
	var currentNum, currentPage, currentWithBack, actualChSpeed;

	// コンストラクタ
	function NameWindow(w, elm)
	{
		// 初期化。ここでやらないと onRestore() で使うので
		this.w   = w;
		layer    = "message0";	// 参照するメッセージレイヤ名
		fgtext   = "";		// 表画面に表示中の文字列
		bgtext   = "";		// 裏画面に表示中の文字列
		font     = %[];		// [font]で指定するフォントデータ
		style    = %[];		// [style]で指定するデータ
		ctclear  = false;	// [ct]でクリアするかどうか
		cmclear  = false;	// [cm]でクリアするかどうか
		history  = true;	// ヒストリ保存するかどうか

		ct_org = w.tagHandlers.ct;
		cm_org = w.tagHandlers.cm;
		w.tagHandlers.ct = ct_noclear;
		w.tagHandlers.cm = cm_noclear;

		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		w.tagHandlers.ct = ct_org;
		w.tagHandlers.cm = cm_org;
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		// フォントオプションを設定する
		if (elm.font !== void) {
			if (elm.font.reset)
				font = %[];
			else
				marge_dic(font, elm.font);
		}
		// styleオプションを設定する
		if (elm.style !== void) {
			if (elm.style.reset)
				style = %[];
			else
				marge_dic(style, elm.style);
		}

		layer   = elm.layer    if (elm.layer   !== void);
		ctclear = +elm.ctclear if (elm.ctclear !== void);
		cmclear = +elm.cmclear if (elm.cmclear !== void);
		history = +elm.history if (elm.history !== void);
	}

	// フォントとスタイルを設定する
	function setfontstyle(page)
	{
		save_and_set_current(page);
		w.tagHandlers.er();	// クリアする
		w.tagHandlers.font(font);
		w.tagHandlers.style(style);
		load_current();
	}

	// ページから指定されているレイヤを得る
	function getMessageLayerFromPage(page = 'fore')
	{
		return w.getLayerFromElm(%[layer:layer, page:page]);
	}

	// [ct]で自分をクリアしない
	function ct_noclear()
	{
		if (ctclear)
			return ct_org(...);
		var foremes = getMessageLayerFromPage('fore');
		var backmes = getMessageLayerFromPage('back');
		var foreclear_org = foremes.clear;
		var backclear_org = backmes.clear;
		foremes.clear = function () {};
		backmes.clear = function () {};
		var ret = ct_org(...);
		foremes.clear = foreclear_org;
		backmes.clear = backclear_org;
		return ret;
	}

	// [cm]で自分をクリアしない
	function cm_noclear()
	{
		if (cmclear)
			return cm_org(...);
		var foremes = getMessageLayerFromPage('fore');
		var backmes = getMessageLayerFromPage('back');
		var foreclear_org = foremes.clear;
		var backclear_org = backmes.clear;
		foremes.clear = function () {};
		backmes.clear = function () {};
		var ret = cm_org(...);
		foremes.clear = foreclear_org;
		backmes.clear = backclear_org;
		return ret;
	}

	// テキストの今のcurrentを保存し、NameWindowに設定しなおす
	function save_and_set_current(page = 'fore')
	{
		currentNum      = w.currentNum;
		currentPage     = w.currentPage;
		currentWithBack = w.currentWithBack;
		actualChSpeed   = w.actualChSpeed;

		w.currentNum    = +layer.substr(7);
		w.currentPage   = page == 'fore' ? 0 : 1;
		w.current       = getMessageLayerFromPage(page);
		w.actualChSpeed = 0; //こうしないとtagHandler.ch()に失敗する
	}

	// テキストのcurrentを元に戻す
	function load_current()
	{
		w.currentNum      = currentNum;
		w.currentPage     = currentPage;
		w.currentWithBack = currentWithBack;
		w.current = (w.currentPage) ? w.back.messages[w.currentNum] : w.fore.messages[w.currentNum];
		w.actualChSpeed   = actualChSpeed;
	}

	// 文字列を書く text='' でクリア
	function draw_text(text='', page='fore')
	{
		fgtext = text if (page == 'fore');
		bgtext = text if (page == 'back');

		setfontstyle(page);	// この中で[er]を実行する

		if (text == '')
			return;

		save_and_set_current(page);
		var h_save = w.historyWriteEnabled;
		if (!history)	// ヒストリに書き込まないなら強制スキップ
			w.historyWriteEnabled = false;
		w.tagHandlers.ch(%[text:text]);
		w.historyWriteEnabled = h_save;
		load_current();
	}

	// [backlay][forelay]などでレイヤをコピーした時
	function onCopyLayer(toback)
	{
		if (toback)
			bgtext = fgtext;
		else
			fgtext = bgtext;
	}

	// 表レイヤと裏レイヤを入れ替えた時
	function onExchangeForeBack()
	{
		var tmp = fgtext;
		fgtext = bgtext;
		bgtext = tmp;
	}

	// セーブ時
        function onStore(f, elm)
	{
		var dic = f.NameWindow = %[];
		dic.layer   = layer;
		dic.fgtext  = fgtext;
		dic.bgtext  = bgtext;
		dic.font    = %[];
		dic.style   = %[];
		(Dictionary.assignStruct incontextof dic.font)(font);
		(Dictionary.assignStruct incontextof dic.style)(style);
		dic.ctclear = ctclear;
		dic.cmclear = cmclear;
		dic.history = history;
		return dic;
	}

	// ロード時
        function onRestore(f, clear, elm)
	{
		var dic = f.NameWindow;
		finalize();		// ct_org/cm_orgを元に戻す
		if (dic === void)
			return;
		NameWindow(w, dic);	// 初期化 + ct_org/cm_orgなどを設定

		// 文字列を元に戻すが、履歴には既に書き込まれているだろうから
		// ここでは履歴に書き込まないように細工する
		setOptions(%[history:false]);
		draw_text(dic.fgtext, 'fore') if (dic.fgtext !== void);
		draw_text(dic.bgtext, 'back') if (dic.bgtext !== void);
		// 履歴状態を元に戻す
		setOptions(%[history:dic.history]);

		return dic;
	}
};


kag.addPlugin(.NameWindowPlugin_obj = new NameWindow(kag));

[endscript]


; ネームウィンドウを初期化する。指定されたネームウィンドウはクリアされる。
[macro name=namewin_init]
[namewin_uninit]
[namewin_setopt * history=%history|true ctclear=%ctclear|false cmclear=%cmclear|false page=both]
[endmacro]


; ネームウィンドウを開放する。指定されていたネームウィンドウはクリアされる。
[macro name=namewin_uninit]
[if exp="typeof(.NameWindowPlugin_obj) != 'undefined'"]
	; 以前のが登録されていたら、リセットして非表示に
	[namewin_font reset]
	[namewin_style reset]
	[eval exp=".NameWindowPlugin_obj.setfontstyle('fore')"]
	[eval exp=".NameWindowPlugin_obj.setfontstyle('back')"]
	[namewin_clear page=both]
	[namewin_position page=both visible=false]
	[eval exp="mp.layer = .NameWindowPlugin_obj.layer"]
[endif]
[endmacro]


; オプションを指定する
[macro name=namewin_setopt]
[eval exp=".NameWindowPlugin_obj.setOptions(mp)"]
[namewin_position *]
[namewin_style *]
[endmacro]


; ネームウィンドウを設定する
[macro name=namewin_position]
[eval exp="mp.page = 'both'" cond="mp.page === void"]
[if exp="mp.page == 'both'"]
	[namewin_position * page=fore]
	[namewin_position * page=back]
[else]
	[position * layer=&.NameWindowPlugin_obj.layer]
[endif]
[endmacro]


; ネームウィンドウで使用するフォントを指定する
[macro name=namewin_font]
[eval exp=".NameWindowPlugin_obj.setOptions(%[font:mp])"]
[endmacro]


; ネームウィンドウのスタイルを設定する
[macro name=namewin_style]
[eval exp=".NameWindowPlugin_obj.setOptions(%[style:mp])"]
[endmacro]


; 文字列を表示する。transが指定されていればtransする。
[macro name=namewin_text]
[eval exp="mp.page    = 'back'"      cond="mp.page    === void"]
[eval exp="mp.trans   = true"        cond="mp.trans   === void"]
[eval exp="mp.wait    = true"        cond="mp.wait    === void"]
[eval exp="mp.time    = 100"         cond="mp.time    === void"]
[eval exp="mp.method  = 'crossfade'" cond="mp.method  === void"]
[eval exp="mp.backlay = true"        cond="mp.backlay === void"]
[eval exp="mp.canskip = true"        cond="mp.canskip === void"]
[if exp="mp.page == 'both'"]
	; page=bothの場合は、二回履歴に表示されないようにhistory=falseにする
	[eval exp="mp.history = .NameWindowPlugin_obj.history" cond="mp.history === void"]
	; ここ、foreが先ならbacklayのこと考えなくていいので変更しないこと。
	[namewin_text * page='fore' trans=false history=%history]
	[namewin_text * page='back' trans=false history=false]
[else]
	[namewin_font *]
	[backlay cond="mp.backlay"]
	[namewin_setopt * color=&void]
	[eval exp=".NameWindowPlugin_obj.draw_text(mp.text, mp.page)"]
	[if exp="mp.page == 'back' && mp.trans"]
		[stoptrans]
		[trans *]
		[wt canskip=%canskip cond="mp.wait"]
	[endif]
[endif]
[endmacro]


; ネームウィンドウに表示されている文字を消去する(フレームは消去しない)
[macro name=namewin_clear]
[namewin_text * text='']
[endmacro]


; デフォルトで message0 に対して設定しておく。こうしないと
; NameWindowPlugin_objが定義されないため、[namewin_init]前にデータロードすると
; 未定義オブジェクトへのアクセスエラーとなる。
; ctclear=trueしておけば悪影響ないし、この後ユーザが[namewin_init]するので
; 大丈夫…だと思う…。
[namewin_init layer=message0 ctclear=true cmclear=true]

[return]
