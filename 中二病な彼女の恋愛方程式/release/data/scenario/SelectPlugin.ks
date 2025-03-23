@return cond="typeof(.SelectPlugin_obj) != 'undefined'"
;
;ボタン上で右クリックした時に吸い込まれてる？
;
; 2013/04/21	0.1	・valign_buttons()で!verticalの時にbarea{left→top}変更
;			・title/buttonをbgからの相対座標で指定できるように変更
;
;
@call storage="TJSFunctions.ks"
@call storage="KLayers.ks"
;
; KLayerに options をつけよう。「これに書かれたものはセーブされる」ように。
; KLayerPlugin、addにobjectをreturnするよう
;
@iscript

class SelectButton extends KAnimButtonLayer
{
	var classid = 'SelectButton';

	var selectname;		// 選択された時のsf.selectedhash[]への登録名
	var selectedcolor;	// 選択済み選択肢の背景色
	var selectedgraphic;	// 選択済み選択肢の画像
	var selectedfont;	// 選択済み選択肢のフォント
	var selected;		// 選択済み選択肢にするかどうかのフラグ
				// selectedをpropertyにするので_save付けて
	var flag;		// 選択された場合にこの変数名 = true とする

	// コンストラクタ
	function SelectButton(win, parent, i_name, elm)
	{
		super.KAnimButtonLayer(win, parent, i_name);
		var c = color;	// = normalcolor
		selectedcolor    = (c&0xff000000) +
			(((c&0xff0000)*3/4)&0xff0000) +
			(((c&0x00ff00)*3/4)&0x00ff00) +
			(((c&0x0000ff)*3/4)&0x0000ff);
		selectedfont     = new KFont();
		selectedfont.assign(kfont);	// kfont = normalfont
		var c = selectedfont.color;
		selectedfont.setOptions(%[color:
			(((c&0xff0000)*3/4)&0xff0000) +
			(((c&0x00ff00)*3/4)&0x00ff00) +
			(((c&0x0000ff)*3/4)&0x0000ff)
		]);

		setOptions(elm); // storage/targetを設定するため。
	}

	// デストラクタ
	function finalize()
	{
		invalidate selectedfont;
		super.finalize();
	}

	// オプション設定(2オペランド版)
	function copyLocalMembers(dst, src)
	{
		if (dst === void || src === void)
			return;

		copyMember(dst, src, "selectname",      false, true);
		copyMember(dst, src, "selectedcolor"    );
		copyMember(dst, src, "selectedgraphic", false, true);
		copyMember(dst, src, "selected",        false);
		copyMember(dst, src, "flag",            false);

		dst.selectedfont = %[] if (dst.selectedfont === void);
		.KFont.copyLocalMembers(dst.selectedfont, src.selectedfont);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		super.setOptions(elm);
		.SelectButton.copyLocalMembers(this, elm);

		// 必ず画像描画。selectedに直接値代入しても画像は変わらない...
		drawSelectedButton();
	}

	// マウスが放された時に、親のselectendstorage/selectendtargetに書く
	function onMouseUp(x, y, button=mbLeft, shift=0)
	{
		if (button != mbLeft)	// 左クリック以外は無視する
			return;
		// selectname が指定されていれば、選択回数をインクリメントする
		if (selectname !== void) {
			f.selectedhash[selectname]++;
			sf.selectedhash[selectname]++;
		}
		// flag が指定されていれば、flag = true を実行する
		if (flag !== void)
			(flag + " = true")!;
		
		// releasestorage を必ずSelectPlugin.ks/*SelectPlugin_common
		// に設定し、そっちにjumpした後に更にjumpされるように設定
		if (releasestorage === void)
			releasestorage = window.conductor.curStorage;
		.SelectPlugin_obj.selectendstorage = releasestorage;
		.SelectPlugin_obj.selectendtarget  = releasetarget;
		releasestorage   = "SelectPlugin.ks";
		releasetarget    = "*SelectPlugin_common";

		super.onMouseUp(...);
	}

	// 選択済みボタンを描画する
	function drawSelectedButton()
	{
		var selectedflg = false;
		if (selected === void && selectname !== void)
			selectedflg = sf.selectedhash[selectname];
		if (typeof(selected) == 'String')
			selectedflg = selected!;
		if (!selectedflg) {
			loadImages();
			return;
		}
		if (selectedgraphic !== void) {
			// 画像がある時
			loadSubImage(selectedgraphic, , 0, true);
		} else {
			// 文字だけの時
			fillRect(0, 0, width, height, selectedcolor);
			drawRuggedness(true, 0);
		}
		drawTextWithAlign(selectedfont, text, 0, 0);
	}

	// コピー
	function assign(src)
	{
		super.assign(src);
		.SelectButton.copyLocalMembers(this, src);
	}

	// セーブ
	function store()
	{
		var dic = super.store();
		.SelectButton.copyLocalMembers(dic, this);
		return dic;
	}
	
	// ロード
	function restore(dic)
	{
		setOptions(dic);
	}
}


class SelectPlugin extends KLayersPlugin
{
	var classid = "SelectLayer";

	// ここからセレクト画面開始に関わる属性
	var opense        = "";		// 選択開始時に鳴らす音
	var opensebuf     = 0;		// 選択開始時の音のバッファ
	var onopen;			// 選択開始時に実行するTJSスクリプト
	var opencallstorage;		// 選択開始時に呼ぶ共通KAGスクリプト
	var opencalltarget;		// 選択開始時に呼ぶ共通KAGスクリプト
	var opentransargs = "time:200, method:'crossfade'";

	// ここからセレクト画面終了(=選択し終えた後)に関わる属性
	var closese       = "";		// 選択時に鳴らす音
	var closesebuf    = 0;		// 選択時の音のバッファ
	var onclose;			// 選択肢後に実行するTJSスクリプト
	var closecallstorage;		// 選択肢後に呼ぶ共通KAGスクリプト
	var closecalltarget;		// 選択肢後に呼ぶ共通KAGスクリプト
	var closetransargs = "time:200, method:'crossfade'";

	// ここからセレクト画面開始・終了前後に関わる属性
	var skipkeep      = true;	// 選択肢後にスキップモード保つ
	var hidemsg       = false;
	var clearmsg      = 'after';	// 選択肢前後にメッセージをクリアするか

	var commonjumpstorage;		// [select_commonjump]でjumpする先
	var commonjumptarget;		// 同上

	var vertical;			// 縦書きボタンかどうか
	var barealeft     = 20;		// ボタン領域左上X座標
	var bareatop      = 20;		// ボタン領域左上Y座標
	var bareawidth;			// ボタン領域横幅
	var bareaheight;		// ボタン領域縦幅
	var bhalign       = 'expand';	// ボタンアライン(水平方向)
	var bvalign       = 'expand';	// ボタンアライン(垂直方向)
	var bspace        = 20;		// ボタンの間隔

	var page;			// ボタンを表示するページ

	var bgdefelm;			// 背景のデフォルト値(color,graphic等)
	var titledefelm;		// タイトルのデフォルト値(titleXXX)
	var btndefelm;			// ボタンのデフォルト設定値

	// select_startからselect_endまでオプションを保存するテンポラリ領域
	var options_save = %[];
	var btncount;
	var selectendstorage, selectendtarget; // 選択された後のジャンプ先
	// closecallstorageが指定されなかった時のデフォルトストレージ
	var closecallstorage_def;

	// 選択肢前後で保存する変数
	var skipmode_save;

	// 以下定数
	var NEEDTOALIGN = -65537;	// 自動アラインが必要な座標

	// コンストラクタ
	function SelectPlugin(w, elm=%[])
	{
		super.KLayersPlugin(w, 'selectscreen');

		// 初期値設定
		if (elm.vertical !== void)
			vertical = +elm.vertical;
		else
			vertical = w.current.vertical;
		bgdefelm = %[
			left     : 0,
			top      : 0,
			width    : w.scWidth,
			height   : w.scHeight,
			absolute : w.current.absolute + 1,
			color    : 0
		];
		bareawidth  = bgdefelm.width-barealeft*2; // ボタン領域横幅
		bareaheight = bgdefelm.height-bareatop*2; // ボタン領域縦幅
		titledefelm = %[
			vertical : vertical,
			absolute : w.current.absolute + 2
		];
		btndefelm = %[
			vertical : vertical,
			left     : NEEDTOALIGN,
			top      : NEEDTOALIGN,
			width    : (vertical) ? 32 : bareawidth,
			height   : (vertical) ? bareaheight : 32,
			absolute : w.current.absolute + 3
		];

		if (sf.selectedhash === void)
			sf.selectedhash = %[];	// 選択済みselectnameの辞書配列
						// 選択回数を格納する
		if (f.selectedhash === void)	// 選択済みselectnameの
			f.selectedhash = %[];	// current辞書配列

		setOptions(, 'both', elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// srcにprefix... で始まるキーがあれば dst に設定
	function setOptions_withPrefix(dst, src, prefix)
	{
		// srcにprefix... で始まるキーがあれば dst に設定
		var keyary = keys(src), plen = prefix.length;
		for (var i = keyary.count-1; i >= 0; i--)
			if (keyary[i].substr(0,plen) == prefix)
				dst[keyary[i].substr(plen)] = src[keyary[i]];
	}

	// 自身が持つメンバだけへのオプション設定
	function copyLocalMembers(dst, src)
	{
		// 一般オプション設定
		copyMember(dst, src, "opense",            false);
		copyMember(dst, src, "opensebuf"          );
		copyMember(dst, src, "onopen",            false, true);
		copyMember(dst, src, "opencallstorage",   false, true);
		copyMember(dst, src, "opencalltarget",    false, true);
		copyMember(dst, src, "opentransargs",     false);
		copyMember(dst, src, "closese",           false);
		copyMember(dst, src, "closesebuf"         );
		copyMember(dst, src, "onclose",           false, true);
		copyMember(dst, src, "closecallstorage",  false, true);
		copyMember(dst, src, "closecalltarget",   false, true);
		copyMember(dst, src, "closetransargs",    false);
		copyMember(dst, src, "skipkeep"           );
		copyMember(dst, src, "hidemsg"            );
		copyMember(dst, src, "clearmsg",          false);
		copyMember(dst, src, "commonjumpstorage", false, true);
		copyMember(dst, src, "commonjumptarget",  false, true);
		copyMember(dst, src, "vertical"           );
		copyMember(dst, src, "barealeft"          );
		copyMember(dst, src, "bareatop"           );
		copyMember(dst, src, "bareawidth"         );
		copyMember(dst, src, "bareaheight"        );
		copyMember(dst, src, "bhalign",           false);
		copyMember(dst, src, "bvalign",           false);
		copyMember(dst, src, "bspace"             );
		copyMember(dst, src, "page",              false);

		// 背景レイヤのオプション設定
		if (src.bgdefelm !== void) {
			dst.bgdefelm = %[] if (dst.bgdefelm === void);
			marge_dic(dst.bgdefelm, src.bgdefelm);
		} else {
			// bg... で始まるキーなら bgdefelmに設定
			setOptions_withPrefix(dst.bgdefelm, src, 'bg');
		}

		// タイトルレイヤのオプション設定
		if (src.titledefelm !== void) {
			dst.titledefelm = %[] if (dst.titledefelm === void);
			marge_dic(dst.titledefelm, src.titledefelm);
		} else {
			// title... で始まるキーなら titledefelmに設定
			// titlefontはホントはtitlekfontじゃなきゃいけなかった
			// のだが、してなかったのでここで吸収
			if (src instanceof "Dictionary")
				if (src.titlefont !== void) {
					src.titlekfont = src.titlefont;
					delete src.titlefont;
				// これだとsrc.titlekfontが残るが…まぁいいか…
				}
			setOptions_withPrefix(dst.titledefelm, src, 'title');
		}

		// ボタン共通のオプション設定
		if (src.btndefelm !== void) {
			dst.btndefelm = %[] if (dst.btndefelm === void);
			marge_dic(dst.btndefelm, src.btndefelm);
		} else {
			// btn...で始まるキーなら btndefelmに設定
			setOptions_withPrefix(dst.btndefelm, src, 'btn');
		}
	}

	// 現在の設定値を返す。直接参照すりゃいいじゃんという話もあるが
	function getOption(key)
	{
		return this[key];
	}

	// オプション設定
	function setOptions(name, page=this.page, elm)
	{
		if (elm === void)
			return;
		super.setOptions(...);
		copyLocalMembers(this, elm);
	}

	// オプション設定(共通オプション)
	function select_opt(elm)
	{
		setOptions(, 'both', elm);
	}

	// ボタンオプション設定(共通オプション)
	function select_button_opt(elm)
	{
		marge_dic(btndefelm, elm);
	}

	// 選択肢画面表示開始
	function select_start(elm)
	{
		// 以下のメンバはoptions_saveに保存前に設定する
		skipmode_save = kag.skipMode;
		tf.SelectingRun = true;
		commonjumpstorage = commonjumptarget = void;
		copyMember(this, elm, "commonjumpstorage", false, true);
		copyMember(this, elm, "commonjumptarget",  false, true);

		options_save = %[];
		copyLocalMembers(options_save, this);

		// ↓は*SelectPlugin_commonで呼ばれるので、ストレージを指定して
		// おく必要あり
		closecallstorage_def = window.conductor.curStorage;

		setOptions(, 'both', elm);

		add('select_bg', KLayer, page, bgdefelm);

		// titleが不要なら表示しない
		if (titledefelm.graphic !== void || titledefelm.text != "")
			titledefelm.visible = true;
		else
			titledefelm.visible = false;
		var telm = %[];
		(Dictionary.assign incontextof telm)(titledefelm);
		telm.left = +telm.left + +bgdefelm.left; // 文字列で入ってる為
		telm.top  = +telm.top  + +bgdefelm.top; 
		add('title', KLayer, page, telm);
		btncount = 0;

		// openseを鳴らす
		if (opense !== void && opense != "")
			kag.se[+opensebuf].play(%[storage:opense]);
		// onopen TJSスクリプトを実行する
		if (onopen !== void && onopen != "")
			Scripts.eval(onopen);	// oncloseがKAG上から実行されるからグローバルコンテキストで。
	}

	// ボタン追加
	function select_button(elm=%[])
	{
		var opt = %[];
		marge_dic(opt, btndefelm);
		marge_dic(opt, elm);
		add('btn'+btncount, SelectButton, page, opt);
		btncount++;
	}

	// ボタン横位置調整_expand
	function halign_buttons(btnary)
	{
		if (vertical) { // 縦書きの時
			var x = barealeft;
			var space = bspace;
			var twidth = 0;	// = 全ボタンの横幅トータル
			for (var i = 0; i < btnary.count; i++)
				twidth += btnary[i].width;
			if (bhalign == 'expand' && btnary.count > 1)
				space = (bareawidth-twidth)/(btnary.count-1);
			else if (bhalign == 'center' ||
				 (bhalign == 'expand' && btnary.count <= 1))
				x += (bareawidth-twidth-bspace*(btnary.count-1))/2;
			else if (bhalign == 'right')
				x += (bareawidth-twidth-bspace*(btnary.count-1));
			for (var i = btnary.count-1; i >= 0; i--) {
				if (btnary[i].left == NEEDTOALIGN)
					btnary[i].left = x + +bgdefelm.left;
				x += btnary[i].width + space;
			}
		} else { // 横書きの時
			for (var i = 0; i < btnary.count; i++) {
				var x = barealeft;
				if (bhalign == 'expand' || bhalign == 'center')
					x += (bareawidth - btnary[i].width)/2;
				else if (bhalign == 'right')
					x += bareawidth - btnary[i].width;
				if (btnary[i].left == NEEDTOALIGN)
					btnary[i].left = x + +bgdefelm.left;
			}
		}
	}

	// ボタン縦位置調整_expand
	function valign_buttons(btnary)
	{
		if (vertical) { // 縦書きの時
			for (var i = 0; i < btnary.count; i++) {
				var y = bareatop;
				if (bvalign == 'expand' || bvalign == 'center')
					y += (bareaheight -btnary[i].height)/2;
				else if (bvalign == 'bottom')
					y += bareaheight - btnary[i].height;
				if (btnary[i].top == NEEDTOALIGN)
					btnary[i].top = y + +bgdefelm.top;
			}
		} else { // 横書きの時
			var y = bareatop;
			var space = bspace;
			var theight = 0; // = 全ボタンの縦幅トータル
			for (var i = 0; i < btnary.count; i++)
				theight += btnary[i].height;
			if (bvalign == 'expand' && btnary.count > 1)
				space = (bareaheight-theight)/(btnary.count-1);
			else if (bvalign == 'center' ||
				 (bvalign == 'expand' && btnary.count <= 1))
				y += (bareaheight-theight-bspace*(btnary.count-1))/2;
			else if (bvalign == 'bottom')
				y += (bareaheight-theight-bspace*(btnary.count-1));
			for (var i = 0; i < btnary.count; i++) {
				if (btnary[i].top == NEEDTOALIGN)
					btnary[i].top = y + +bgdefelm.top;
				y += btnary[i].height + space;
			}
		}
	}

	// ボタン追加完了、処理開始
	function select_end()
	{
		// ボタンの位置を調整
		var btnary = [];
		for (var i = 0; i < btncount; i++)
			btnary[i] = search_one('btn'+i, page);
		halign_buttons(btnary);
		valign_buttons(btnary);
	}

	// 選択肢終了後処理でtjsでできるもの
	function select_close()
	{
		//選択肢実行フラグをOFF
		tf.SelectingRun = false;

		
		// メッセージを消していたら再度表示
		if (hidemsg)
			kag.setMessageLayerHiddenState(false);
		// 終了時の音を鳴らす
		if (closese !== void && closese != "")
			kag.se[+closesebuf].play(%[storage:closese]);
		// close時のTJSスクリプトを実行
		if (onclose !== void && onclose != "")
			Scripts.eval(onclose);

		// options_save を元に戻す
		copyLocalMembers(this, this.options_save);

		// skipmodeを元に戻す
		if (skipkeep && skipmode_save > 0) {
			if (skipmode_save == 1)
				kag.skipToClick();
			else if (skipmode_save == 2)
				kag.skipToPage();
			else if (skipmode_save == 3)
				kag.skipToStop();
			else if (skipmode_save == 4)
				kag.skipToStop2();
			else
				cancelSkip();
		}
	}

	// ちょっと汚いが、mp.storageとmp.targetにclosecallstorage/targetを返す
	function getCloseCallStorageTarget(mp)
	{
		mp.storage =closecallstorage;
		mp.target  = closecalltarget;
		if (mp.storage === void && mp.target !== void)
			mp.storage = closecallstorage_def;
	}

	// トランジションする
	function starttrans(transargs/*文字列*/)
	{
		kag.tagHandlers.stoptrans();
		var dic = ("%["+transargs+"]")!;
		dic.tagname = 'trans';
		kag.tagHandlers.trans(dic);
	}

	// コピー
	function assign(src)
	{
		super.assign(src);
		copyLocalMembers(this, src);
		(Dictionary.assignStruct incontextof options_save)(src.options_save);
		btncount             = src.btncount;
		selectendstorage     = src.selectendstorage;
		selectendtarget      = src.selectendtarget;
		closecallstorage_def = src.closecallstorage_def;
	}

	// セーブ
	function onStore(f, elm)
	{
		var dic = super.onStore(...);
		copyLocalMembers(dic, this);
		dic.options_save = %[];
		(Dictionary.assignStruct incontextof dic.options_save)(options_save);
		dic.btncount             = btncount;
		dic.selectendstorage     = selectendstorage;
		dic.selectendtarget      = selectendtarget;
		dic.closecallstorage_def = closecallstorage_def;
		return dic;
	}

	// ロード
	function onRestore(f, clear, elm)
	{
		var dic = super.onRestore(...);
		if (dic === void)
			return;
		copyLocalMembers(this, dic);
		(Dictionary.assignStruct incontextof options_save)(dic.options_save);
		btncount             = dic.btncount;
		selectendstorage     = dic.selectendstorage;
		selectendtarget      = dic.selectendtarget;
		closecallstorage_def = dic.closecallstorage_def;
		return dic;
	}
}


// ゲーム中唯一定義しておく
kag.addPlugin(.SelectPlugin_obj = new SelectPlugin(kag));


@endscript
;
;
;
; 選択肢開始マクロ
@macro name=select_start
@eval exp="mp.backlay = true" cond="mp.backlay === void"
@eval exp="mp.page = 'back'" cond="mp.page === void"
@backlay cond="mp.backlay && mp.page == 'back'"
; 選択画面表示開始
@eval exp=".SelectPlugin_obj.select_start(mp)"
;
; テキスト画面クリア
@cm cond=".SelectPlugin_obj.getOption('clearmsg') == 'before'"
;
; メッセージ画面を隠すかどうか
@if exp=".SelectPlugin_obj.getOption('hidemsg')"
	@eval exp="kag.setMessageLayerHiddenState(true)"
@endif
;
; oepncall{storage|target}を呼び出す
@eval exp="mp.storage = .SelectPlugin_obj.getOption('opencallstorage')"
@eval exp="mp.target  = .SelectPlugin_obj.getOption('opencalltarget')"
@call storage=%storage target=%target cond="mp.storage !== void || mp.target !== void"
@endmacro
;
;
;
; 選択肢設定終了マクロ
@macro name=select_end
@eval exp=".SelectPlugin_obj.select_end()"
@if exp=".SelectPlugin_obj.getOption('page') == 'back'"
	@eval exp="mp.transargs = .SelectPlugin_obj.getOption('opentransargs')"
	@eval exp=".SelectPlugin_obj.starttrans(mp.transargs)"
	@wt canskip=%canskip|true
@endif
@s cond="mp.stop === void || mp.stop"
@endmacro
;
;
;
; 選択肢オプション設定マクロ
@macro name=select_opt
@eval exp=".SelectPlugin_obj.select_opt(mp)"
@endmacro
;
;
;
; 選択肢ボタン追加マクロ
@macro name=select_button
@eval exp=".SelectPlugin_obj.select_button(mp)"
@endmacro
;
;
;
; 選択肢ボタンオプション設定マクロ
@macro name=select_button_opt
@eval exp=".SelectPlugin_obj.select_button_opt(mp)"
@endmacro
;
;
;
; 選択肢後に共通項目へジャンプする
@macro name=select_commonjump
@eval exp="mp.storage = .SelectPlugin_obj.getOption('commonjumpstorage')"
@eval exp="mp.target  = .SelectPlugin_obj.getOption('commonjumptarget')"
@if exp="mp.storage === void && mp.target === void"
	@eval exp="em('[select_commonjump]のジャンプ先が、[select_start]で指定されていません。\nそのまま実行を続けますがうまく動かない可能性が高うございます。')"
@endif
@jump storage=%storage target=%target
@endmacro
;
;
;
; 選択肢selectnameを一度でも選択したことがあるかどうか
@macro name=if_selected_once
@if exp="sf.selectedhash[mp.selectname]"
@endmacro
;
;
;
; 選択肢selectnameを一度も選択したことがないかどうか
@macro name=if_not_selected_once
@if exp="!sf.selectedhash[mp.selectname]"
@endmacro
;
;
;
; このセーブデータで選択肢selectnameを選択したか
@macro name=if_selected
@if exp="f.selectedhash[mp.selectname]"
@endmacro
;
;
;
; このセーブデータで選択肢selectnameを選択していないか
@macro name=if_not_selected
@if exp="!f.selectedhash[mp.selectname]"
@endmacro
;
;
;
; 選択肢終了時のマクロ(サブルーチンだとmp.が使えないので、不要だけどマクロ化
@macro name=select_close
@eval exp=".SelectPlugin_obj.select_close()"
;
; 必要ならトランジションする
@eval exp="tf.tick = System.getTickCount()"
@if exp=".SelectPlugin_obj.getOption('page') == 'back'"
	@backlay
	;裏ページのボタンを削除
	@eval exp=".SelectPlugin_obj.delOnPage('back')"
	; トランジションするなら当たり判定を削除
	@eval exp=".SelectPlugin_obj.setOptions(,'fore',%[hitThreshold:256])"
	@eval exp="mp.transargs =.SelectPlugin_obj.getOption('closetransargs')"
	@eval exp=".SelectPlugin_obj.starttrans(mp.transargs)"
	@wt canskip=%canskip|true
@endif
@eval exp="dm('6:tick = ' + (System.getTickCount()-tf.tick))"
;
;両ページのボタンを削除
@eval exp=".SelectPlugin_obj.delOnPage('both')"
@eval exp="dm('7:tick = ' + (System.getTickCount()-tf.tick))"
;
; テキスト画面クリア
@cm cond=".SelectPlugin_obj.getOption('clearmsg') == 'after'"
;
; closecall{storage|target}を呼び出す
@eval exp=".SelectPlugin_obj.getCloseCallStorageTarget(mp)"
;@eval exp="dm('1:target,storage = ' + mp.target + ',' + mp.storage)"
@if exp="mp.storage !== void || mp.target !== void"
	@call storage=%storage target=%target
@endif
;
; 先に変数を取り出してからoptions_saveを元に戻す
@eval exp="mp.storage = .SelectPlugin_obj.getOption('selectendstorage')"
@eval exp="mp.target  = .SelectPlugin_obj.getOption('selectendtarget')"
;@eval exp="dm('2:target,storage = ' + mp.target + ',' + mp.storage)"
;
;options_save を元に戻す
@eval exp=".SelectPlugin_obj.copyLocalMembers(.SelectPlugin_obj, .SelectPlugin_obj.options_save)"
;
; 選択された後のジャンプ先へジャンプ
@jump storage=%storage target=%target
;
@endmacro
;
;
;
@return



*SelectPlugin_common
@select_close
SelectPlugin_commonで、くるはずないのにきてしまった！
@s
