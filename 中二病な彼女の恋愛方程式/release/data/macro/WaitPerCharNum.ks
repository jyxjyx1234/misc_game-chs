; 二重読み込みを防止
[return cond="typeof(.waitpercharnum_obj) != 'undefined'"]

; オートモード時、[l]と[p]でそれまでの表示文字数分ウェイトさせるプラグイン

; 2014/05/30	0.4	・[waitpercharnum_opt]を削除
;			・[waitpercharnu_setopt enabled=false]が無視されていた
;			　のを修正
; 2014/05/29	0.3	・[nowait]で色々書いた後、linebreak/pagebreakなしに
;			　新しいページに文字を描画したら、その最初のページだけ
;			　[l]と[p]が遅くなっていたのを修正
; 2012/09/13	0.21	・new_graph()が最後にnew_graph()を呼んでいて、stack
;			　overflow になっていたのを修正
; 2012/09/06	0.2	・待ち時間のパラメータ、以下の六つをを追加
;				lineWaitMinMul;	// 行待ちの最低時間(の乗数)
;				lineWaitMaxMul;	// 行待ちの最大時間(の乗数)
;				lineWaitMul;	// 行待ちの待時間(の乗数)
;				pageWaitMinMul;	// 頁待ちの最低時間(の乗数)
;				pageWaitMaxMul;	// 頁待ちの最大時間(の乗数)
;				pageWaitMul;	// 頁待ちの待時間(の乗数)
;			・setOptions()追加
; 2011/09/24	0.1	初期リリース

[iscript]

class WaitPerCharNum extends KAGPlugin {
	var w;
	var org_ch;		// オリジナルの[ch]タグを保存
	var org_hch;		// オリジナルの[hch]タグを保存
	var org_graph;		// オリジナルの[graph]タグを保存
	var org_showLineBreak;	// オリジナルのkag.showLineBreakを保存
	var org_showPageBreak;	// オリジナルのkag.showPageBreakを保存
	var org_showPageBreakAndClear;	// オリジナルのkag.showPageBreakAndClearを保存
	var org_clearMessageLayers;	// オリジナルのkag.clearMessageLayersを保存
	var chnum_for_l = 0;	// [l]で使う現在までの表示文字数
	var chnum_for_p = 0;	// [p]で使う現在までの表示文字数
	var enabled     = true;	// 有効にするかどうか。無効なら元通りの動作
	var p_enabled   = true;	// [p]の文字数ウェイトを有効にするかどうか
	var l_enabled   = true;	// [l]の文字数ウェイトを有効にするかどうか

	var lineWaitMinMul;	// 行待ちの最低時間
	var lineWaitMaxMul;	// 行待ちの最大時間(=0で制限なし)
	var lineWaitMul;	// 行待ち時の待ち時間/文字数
	var pageWaitMinMul;	// 頁待ちの最低時間
	var pageWaitMaxMul;	// 頁待ちの最大時間(=0で制限なし)
	var pageWaitMul;	// 頁待ち時の待ち時間/文字数

	// コンストラクタ
	function WaitPerCharNum(window, elm)
	{
		w = window;
		// オリジナルをバックアップして新しい方に付け替える
		org_ch                    = w.tagHandlers.ch;
		org_hch                   = w.tagHandlers.hch;
		org_graph                 = w.tagHandlers.graph;
		org_showLineBreak         = w.showLineBreak;
		org_showPageBreak         = w.showPageBreak;
		org_showPageBreakAndClear = w.showPageBreakAndClear;
		org_clearMessageLayers    = w.clearMessageLayers;

		w.tagHandlers.ch          = new_ch;
		w.tagHandlers.hch         = new_hch;
		w.tagHandlers.graph       = new_graph;
		w.showLineBreak           = new_showLineBreak;
		w.showPageBreak           = new_showPageBreak;
		w.showPageBreakAndClear   = new_showPageBreakAndClear;
		w.clearMessageLayers      = new_clearMessageLayers;

		// これは初期値
		lineWaitMinMul    = 0.5;
		lineWaitMaxMul    = 0;
		lineWaitMul       = 0.1;
		pageWaitMinMul    = 0.5;
		pageWaitMaxMul    = 0;
		pageWaitMul       = 0.01;

		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		// [ch]の処理をオリジナルに戻す
		w.tagHandlers.ch          = org_ch;
		w.tagHandlers.hch         = org_hch;
		w.tagHandlers.graph       = org_graph;
		w.showLineBreak           = org_showLineBreak;
		w.showPageBreak           = org_showPageBreak;
		w.showPageBreakAndClear   = org_showPageBreakAndClear;
		w.clearMessageLayers      = org_clearMessageLayers;
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		enabled   = elm.enabled   if (elm.enabled   !== void);
		p_enabled = elm.p_enabled if (elm.p_enabled !== void);
		l_enabled = elm.l_enabled if (elm.l_enabled !== void);

		// KAGTagから渡る時は小文字になってるはずなので一応caseを考える
		if (elm.lineWaitMinMul !== void)
			lineWaitMinMul = +elm.lineWaitMinMul;
		if (elm.linewaitminmul !== void)
			lineWaitMinMul = +elm.linewaitminmul;
		if (elm.lineWaitMaxMul !== void)
			lineWaitMaxMul = +elm.lineWaitMaxMul;
		if (elm.linewaitmaxmul !== void)
			lineWaitMaxMul = +elm.linewaitmaxmul;
		if (elm.lineWaitMul !== void)
			lineWaitMul = +elm.lineWaitMul;
		if (elm.linewaitmul !== void)
			lineWaitMul = +elm.linewaitmul;

		if (elm.pageWaitMinMul !== void)
			pageWaitMinMul = +elm.pageWaitMinMul;
		if (elm.pagewaitminmul !== void)
			pageWaitMinMul = +elm.pagewaitminmul;
		if (elm.pageWaitMaxMul !== void)
			pageWaitMaxMul = +elm.pageWaitMaxMul;
		if (elm.pagewaitmaxmul !== void)
			pageWaitMaxMul = +elm.pagewaitmaxmul;
		if (elm.pageWaitMul !== void)
			pageWaitMul = +elm.pageWaitMul;
		if (elm.pagewaitmul !== void)
			pageWaitMul = +elm.pagewaitmul;
	}

	// 値を得るための property
	property lineWaitMin {
		getter { return w.autoModeLineWait * +lineWaitMinMul; }
	}
	property lineWaitMax {
		getter { return w.autoModeLineWait * +lineWaitMaxMul; }
	}
	property pageWaitMin {
		getter { return w.autoModePageWait * +pageWaitMinMul; }
	}
	property pageWaitMax {
		getter { return w.autoModePageWait * +pageWaitMaxMul; }
	}

	// 行末の待ち時間を得る
	function getLineWait(charnum)
	{
		var ret = w.autoModeLineWait * charnum * +lineWaitMul;
		if (lineWaitMax != 0 && ret > lineWaitMax)
			ret = lineWaitMax;
		if (lineWaitMin != 0 && ret < lineWaitMin)
			ret = lineWaitMin;
		return ret;
	}

	// 頁末の待ち時間を得る
	function getPageWait(charnum)
	{
		var ret = w.autoModePageWait * charnum * +pageWaitMul;
		if (pageWaitMax != 0 && ret > pageWaitMax)
			ret = pageWaitMax;
		if (pageWaitMin != 0 && ret < pageWaitMin)
			ret = pageWaitMin;
		return ret;
	}

	// KAGのclearMessageLayers(=[ct]と[cm])を乗っ取る
	// [nowait]で色々書いた後、linebreak/pagebreakなしに新しいページに
	// 文字を描画した最初のページの[l]と[p]が遅くなるのを防ぐため。
	function new_clearMessageLayers(resetcurrent)
	{
		// 文字数をリセットする
		chnum_for_l = chnum_for_p = 0;
		// オリジナルを呼ぶ
		return org_clearMessageLayers(...);
	}

	// (KAG)Window の [ch] を乗っ取る
	function new_ch(elm)
	{
		if (!kag.updateBeforeCh || !kag.actualChSpeed) {
			var len = elm.text.length;
			chnum_for_l += len;
			chnum_for_p += len;
		}
		// オリジナルを呼ぶ
		return org_ch(...);
	}

	// (KAG)Window の [hch] を乗っ取る
	function new_hch(elm)
	{
		if (!kag.updateBeforeCh || !kag.actualChSpeed) {
			chnum_for_l++;	// 増加分は一文字のみ
			chnum_for_p++;
		}
		// オリジナルを呼ぶ
		return org_hch(...);
	}

	// (KAG)Window の [graph] を乗っ取る
	function new_graph(elm)
	{
		if (!kag.updateBeforeCh || !kag.actualChSpeed) {
			chnum_for_l++;	// 増加分は一文字のみ
			chnum_for_p++;
		}
		// オリジナルを呼ぶ
		return org_graph(...);
	}

	// KAGのshowLineBreakを乗っ取る
	function new_showLineBreak(elm)
	{
		if (!enabled || !l_enabled)		// enabledでなければ
			return org_showPageBreak(...);	// オリジナルで終了

		var backup = w.autoModeLineWait;
		w.autoModeLineWait = getLineWait(chnum_for_l);
		chnum_for_l = 0;
		var ret = org_showLineBreak(...);	// オリジナルを呼ぶ
		w.autoModeLineWait = backup;		// 待ち時間を元に戻す
		return ret;
	}

	// KAGのshowPageBreakを乗っ取る
	function new_showPageBreak()
	{
		if (!enabled || !p_enabled)		// enabledでなければ
			return org_showPageBreak(...);	// オリジナルで終了

		var backup = w.autoModePageWait;
		w.autoModePageWait = getPageWait(chnum_for_p);
		chnum_for_l = chnum_for_p = 0;		// 両方クリアする
		var ret = org_showPageBreak(...);	// オリジナルを呼ぶ
		w.autoModePageWait = backup;		// 待ち時間を元に戻す
		return ret;
	}

	// KAGのshowPageBreakAndClearを乗っ取る
	function new_showPageBreakAndClear()
	{
		if (!enabled || !p_enabled)		// enabledでなければ
			return org_showPageBreak(...);	// オリジナルで終了

		var backup = w.autoModePageWait;
		w.autoModePageWait = getPageWait(chnum_for_p);
		chnum_for_l = chnum_for_p = 0;		// 両方クリアする
		var ret = org_showPageBreakAndClear(...);// オリジナルを呼ぶ
		w.autoModePageWait = backup;		// 待ち時間を元に戻す
		return ret;
	}

	// セーブ時の処理
	function onStore(f, elm)
	{
		var dic = f.waitpercharnum = %[];
		dic.chnum_for_l = chnum_for_l;
		dic.chnum_for_p = chnum_for_p;
		dic.enabled     = enabled;
		dic.p_enabled   = p_enabled;
		dic.l_enabled   = l_enabled;

		dic.lineWaitMinMul = lineWaitMinMul;
		dic.lineWaitMaxMul = lineWaitMaxMul;
		dic.lineWaitMul    = lineWaitMul;
		dic.pageWaitMinMul = pageWaitMinMul;
		dic.pageWaitMaxMul = pageWaitMaxMul;
		dic.pageWaitMul    = pageWaitMul;

		return dic;
	}

	// ロード時の処理
	function onRestore(f, clear, elm)
	{
		var dic = f.waitpercharnum;
		if (dic === void)
			return;

		chnum_for_l = dic.chnum_for_l;
		chnum_for_p = dic.chnum_for_p;
		enabled     = dic.enabled;
		p_enabled   = dic.p_enabled;
		l_enabled   = dic.l_enabled;

		lineWaitMinMul = dic.lineWaitMinMul;
		lineWaitMaxMul = dic.lineWaitMaxMul;
		lineWaitMul    = dic.lineWaitMul;
		pageWaitMinMul = dic.pageWaitMinMul;
		pageWaitMaxMul = dic.pageWaitMaxMul;
		pageWaitMul    = dic.pageWaitMul;

		if (clear)
			chnum_for_l = chnum_for_p = 0;
	}
}

kag.addPlugin(.waitpercharnum_obj = new WaitPerCharNum(kag));

[endscript]


; オプション設定
[macro name=waitpercharnum_setopt]
[eval exp=".waitpercharnum_obj.setOptions(mp)"]
[endmacro]

; キャラクタ数リセット
[macro name=waitpercharnum_reset]
[eval exp=".waitpercharnum_obj.chnum_for_l=.waitpercharnum_obj.chnum_for_p=0"]
[endmacro]


[return]
