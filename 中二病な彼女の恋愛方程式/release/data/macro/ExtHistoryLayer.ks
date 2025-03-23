; 二重読み込みを防止
[return cond="typeof(.ExtHistoryLayer) != 'undefined'"]

; ExtHistoryLayer.ks (2014/11/06) by KAICHO ver 1.99k
; 利用・改変・再配布はお好きにどうぞ。連絡も不要。商用に組み込もうが販売
; しようが好き勝手に。そんな需要があるのか知らんけど。
; ご意見ご要望バグ報告は s_naray[at]yahoo[dot]co[dot]jp まで。
; ただし、返事は期待しないこと。
;
; 作成にあたり、
;// ExHistoryLayer.ks ( 2004/07/04 ) releaced 1.01
;// メッセージ履歴拡張プラグイン by よかひげ / 改変配布自由自在
; をモノスゴ参考にさせて頂きました。御礼申し上げます。
;
; 使用方法
; ExtHistoryLayer.ks、TJSFunctions.ks、可能なら RenameKAGTag.ks と eruby.ks を
; 用意し、first.ks かどこかで [call storage=ExtHistoryLayer.ks] するだけ。

[call storage=TJSFunctions.ks]

[iscript]


// parent に onClick イベントを送るボタンレイヤ
class LButtonLayer extends ButtonLayer
{
	function LButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onExecute(x, y, button, shift)
	{
		if (enabled && button == mbLeft)
			parent.onButtonClick(this);
		super.onExecute(...);
	}
}


// 押しっぱなしにすると、100ms 周期で parent へイベントを 送信するボタン
class RepeatButtonLayer extends ButtonLayer
{
	var timer;
	var graphic;
	var buttonCaptionColor;

	// コンストラクタ
	function RepeatButtonLayer(window, parent, elm)
	{
		if (elm !== void && elm.captionColor !== void)
			buttonCaptionColor = elm.captionColor;
		super.ButtonLayer(window, parent);
		focusable = false;
		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		setOptions(%[visible:true]);
		setOptions(elm);			// ↑デフォルト値
	}

	// デストラクタ
	function finalize()
	{
		timer.enabled = false;
		invalidate timer;	// 先に invalidate
		super.finalize(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void && elm.graphic != "") {
			loadImages(elm.graphic);
			graphic = elm.graphic;
		}
		setOptions_sub(this, elm);
	}

	// 状態更新
	function updateState(enabled)
	{
		this.enabled = enabled;
		if (enabled)
			captionColor = buttonCaptionColor;
		else
			captionColor = color;
		if (graphic !== void && graphic != "")
			loadImages(graphic);
	}

	// マウスがクリックされた時
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (Butt_mouseDown) {	//ボタンが押されていれば
			parent.onButtonClick(this);
			timer.enabled = true;
		}
	}

	// 繰り返しの時
	function onMouseDownRepeat()
	{
		if (Butt_mouseDown)	// まだボタンが押されていれば繰り返し
			parent.onButtonClick(this);
		else			// 押されてなければ終了
			timer.enabled = false;
	}
}


// スライダーレイヤクラス
// スクロールバーの一部なので、親からwidthまたはheightが変更されることに注意
class Slider extends ButtonLayer
{
	var dragging;
	var clickx, clicky;
	// スクロールバーのグラフィック(上、中、下を組み合わせたもの、
	// 中は幅1dot、最短スクロールバーの幅は上＋下
	var graphic;
	var minheight = 16;	// スクロールバーの最小高さ

	// コンストラクタ
	function Slider(window, parent, elm)
	{
		this.dragging = false;
		focusable     = false;
		super.ButtonLayer(window, parent);
		setOptions(%[visible:true, enabled:true]);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
//		super.setOptions(elm);	// ここ1.23以降で追加した。意味ないけど
// いや、やっぱり要らんでしょ。elm 定義されてないし。1.24で削除
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);

		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// 指定された画像を読む。一度画像指定されると元に戻せないが…いいか
	function loadImages(graph, key)
	{
		// 誰か Layer ってローカル変数定義してるみたい。
		graphic = new .Layer(window, parent);
		graphic.visible = false;
		graphic.loadImages(graph, key);
		graphic.setImagePos(0, 0);
		graphic.setSizeToImageSize();
		if (parent.verticalView)
			minheight = graphic.width\3-1;	// 1dot = 中央サイズ
		else
			minheight = graphic.height-1;	// 1dot = 中央サイズ
		setSize(width, height);
		Butt_imageLoaded = true;
	}

	// スライダーサイズを指定する
	function setSize(w, h)
	{
		if (!Butt_imageLoaded) {
			super.setSize(w, h);
			return;
		}
		// 画像が読まれてた場合、graphic から画像を作る
		var g = graphic, gw = g.width, gh = g.height;
		if (parent.verticalView) {
			// 縦書きなら横方向に設定
			w = minheight if (w < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			// 左側をコピー
			var ww = (gw/3-1)\2;
			copyRect(w*0,0, g,gw/3*0,0,ww,h);
			copyRect(w*1,0, g,gw/3*1,0,ww,h);
			copyRect(w*2,0, g,gw/3*2,0,ww,h);
			// 右側をコピー
			copyRect(w*1-ww,0, g,gw/3*1-ww,0,ww,h);
			copyRect(w*2-ww,0, g,gw/3*2-ww,0,ww,h);
			copyRect(w*3-ww,0, g,gw/3*3-ww,0,ww,h);
			// 中心をコピー
			for (var x = w-ww-1; x >= ww; x--) {
				copyRect(x+w*0,0, g,gw/3*0+ww,0,1,h);
				copyRect(x+w*1,0, g,gw/3*1+ww,0,1,h);
				copyRect(x+w*2,0, g,gw/3*2+ww,0,1,h);
			}
		} else {
			// 横書きなら縦方向に設定
			h = minheight if (h < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			copyRect(0,0, g, 0,0,gw,(gh-1)\2);
			for (var y = h-(gh-1)\2-1; y >= (gh-1)\2; y--)
				copyRect(0,y, g,0,(gh-1)\2, gw,1);
			copyRect(0,h-(gh-1)\2, g,0,(gh-1)\2+1, gw,(gh-1)\2);
		}
	}

	// 状態変更を設定
	function updateState(enabled)
	{
		this.enabled = enabled;
	}

	// マウスが押された時
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (!enabled || button != mbLeft)
			dragging = false;
		else {
			dragging = true;
			clickx = x;
			clicky = y;
		}
	}

	// マウスが放された時
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		dragging = false;
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (!dragging)
			return;	// drag中でなければ終了
		parent.onSliderDragged(x, y, clickx, clicky);
	}

	// キーが押された時
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);	// 親を呼ぶ
	}
}


// スクロールバーの共通部分のみを実装したクラス
class CommonScrollbar extends Layer
{
	var target;			// 操作する対象(History)
	var prev, next;			// 前ボタン、次ボタン
	var slider;			// スライダー部分
	var timer;	// スクロールバーのスライダ外を押した時のリピートタイマ
	var dst;			// ↑の目的値
	var graphic;			// 背景グラフィック

	// コンストラクタ
	function CommonScrollbar(window, parent, tgt, elm)
	{
		this.target = tgt;

		super.Layer(window, parent);
		var belm = %[
			color:elm.color,
			captionColor:elm.captionColor
		];
		prev = new RepeatButtonLayer(window, this, belm);
		next = new RepeatButtonLayer(window, this, belm);
		slider = new Slider(window, this, belm);
		hitType      = htMask;
		hitThreshold = 0;

		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		timer.enabled = false;		// 最初は falseに

		focusable = true;
		visible = true;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		timer.enabled = false;
		invalidate timer;	// 先に invalidate
		invalidate prev;
		invalidate next;
		invalidate slider;
	}

	// オプション設定
	function setOptions(elm, prevelm, nextelm, sliderelm)
	{
		prev.setOptions(prevelm);
		next.setOptions(nextelm);
		slider.setOptions(sliderelm);

		if (elm === void)
			return;
		setOptions_sub(this, elm);
		if (elm.width !== void || elm.height !== void)
			initState();
		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// サイズを変更する
	function setSize(w, h)
	{
		width = w, height = h;
		// setSize()だと property width/height が呼ばれないので…
		// super.setSize(...);
		initState();
	}

	// スクロールバーのスライダ外を押した時の動作開始
	// 同等の動作をさせる為の仕組み。
	function scrollTo(value)
	{
		dst = value;
		timer.enabled = true;
	}

	// 初期状態を設定
	function initState()
	{
		face = dfBoth;
		if (graphic === void)
			fillRect(0, 0, width, height, parent.scrollbarBack);
		else
			loadImages(graphic);
// これだとprev/nextの縦横サイズが違うものを設定できないので、外す
//		prev.setSize(width, width);
//		next.setSize(width, width);

		// 以下はスクロールバー種によって異なるので、後で設定し直すこと
		// prev.setPos(x, x);
		// next.setPos(x, x);
		// slider.setPos(x, x);
		// slider.setSize(x, x);
	}

	// prev/next/sliderの状態を更新
	function updateState()
	{
		prev.updateState(!target.isHead());
		next.updateState(!target.isTail());
		slider.updateState(!(target.isHead() && target.isTail()));
		update();
	}

	// スライダ外が押された時のリピート関数(ここは宣言だけ)
	function onMouseDownRepeat()
	{
	}

	// ボタンがクリックされた時
	function onButtonClick(src)
	{
		if (src == prev)
			target.prevOne();
		else if (src == next)
			target.nextOne();
	}

	// マウスが放された時
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		timer.enabled = false;
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
	}

	// キーが押された時
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);
	}
}


// 縦方向スクロールバー
class VerticalScrollbar extends CommonScrollbar
{
	var verticalView = false;

	// コンストラクタ
	function VerticalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"▲"]);
		next.setOptions(%[caption:"▼"]);
		setOptions(elm);
		initState();
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 現在の状態を設定。スライダーの幅も今のサイズに設定
	function initState()
	{
		super.initState(...);		// この中でprev/nextは変更済み
		prev.setPos(0, 0);		// ボタン位置を設定
		next.setPos(0, height-next.height);

		// slider の大きさと位置を変更
		var tmp = height-next.height-prev.height;
		var h = (tmp/target.pageCount)\1;
		slider.setSize(width, (h>slider.minheight) ? h : slider.minheight);
		var t = prev.height+((tmp-slider.height)*target.position)\1;
		slider.setPos(0, t);
	}

	// 状態更新
	function updateState()
	{
		var size = height-slider.height-next.height-prev.height;
		slider.top = prev.height + (size*target.position)\1;
		super.updateState(...);
	}

	// スライダがドラッグされた時
	function onSliderDragged(x, y, clickx, clicky)
	{
		// 現在の表示すべき位置を求め、そことの差分を diff に格納
		var pos = (slider.top-prev.height+(y-clicky))/
				(height-prev.height-next.height-slider.height);
		pos = Math.min(Math.max(0, pos), 1);
		var diff = target.getDispStart(pos) - target.dispStart;
		if (Math.abs(diff) >= target.dispLines) {
			target.drawLinesInThePage(target.getDispStart(pos));
		} else {
			if (diff < 0)
				for (var i = -diff; i > 0; i--)
					target.prevOne();
			else if (diff > 0)
				for (var i = diff; i > 0; i--)
					target.nextOne();
			// 同じなら何もしない
		}
		updateState();
	}

	// スライダが押された時のリピート関数
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.top)
			target.prevPage();
		else if (dst > slider.top + slider.height)
			target.nextPage();
		else
			timer.enabled = false;
	}

	// マウスが押された時(この時は必ずスライダー外を押されている)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (y < slider.top)
			target.prevPage();
		else if (y > slider.top + slider.height)
			target.nextPage();
		scrollTo(y);
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = y;
	}

	// 横幅設定時は prev/next ボタンの大きさを変更
	property width
	{
		getter
		{
			return super.width;
		}
		
		setter(w)
		{
			super.width = w;
			// 縦横幅を設定する時は、必要ならprev/nextを正方形に
			if (!prev.Butt_imageLoaded)
				prev.width = prev.height = w;
			if (!next.Butt_imageLoaded)
				next.width = next.height = w;
		}
	}
}


// 横方向スクロールバー
class HorizontalScrollbar extends CommonScrollbar
{
	var verticalView = true;

	// コンストラクタ
	function HorizontalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"≫"]);
		next.setOptions(%[caption:"≪"]);
		setOptions(elm);
		initState();
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 現在の状態を設定。スライダーの幅も今のサイズに設定
	function initState()
	{
		super.initState(...);		// この中でprev/nextは変更済み
		prev.setPos(width-prev.width,0); // ボタン位置を設定
		next.setPos(0, 0);

		// slider の大きさと位置を変更
		var tmp = width-next.width-prev.width;
		var w = (tmp/target.pageCount)\1;
		slider.setSize((w>slider.minheight) ? w : slider.minheight, height);
		var t = next.width+((tmp-slider.width)*target.position)\1;
		slider.setPos(t, 0);
	}

	// 状態更新
	function updateState()
	{
		var size = width-slider.width-next.width-prev.width;
		slider.left = next.width + (size*(1-target.position))\1;
		super.updateState(...);
	}

	// スライダがドラッグされた時
	function onSliderDragged(x, y, clickx, clicky)
	{
		// 現在の表示すべき位置を求め、そことの差分を diff に格納
		var pos = (slider.left-next.width+(x-clickx))/
				(width-next.width-prev.width-slider.width);
		pos = Math.min(Math.max(0, pos), 1);
		var diff = target.getDispStart(1-pos) - target.dispStart;
		if (Math.abs(diff) >= target.dispLines) {
			target.drawLinesInThePage(target.getDispStart(1-pos));
		} else {
			if (diff < 0)
				for (var i = -diff; i > 0; i--)
					target.prevOne();
			else if (diff > 0)
				for (var i = diff; i > 0; i--)
					target.nextOne();
			// 同じなら何もしない
		}
		updateState();
	}

	// スライダが押された時のリピート関数
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.left)
			target.nextPage();
		else if (dst > slider.left + slider.width)
			target.prevPage();
		else
			timer.enabled = false;
	}

	// マウスが押された時(この時は必ずスライダー外を押されている)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (x < slider.left)
			target.nextPage();
		else if (x > slider.left + slider.width)
			target.prevPage();
		scrollTo(x);
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = x;
	}

	// 縦幅設定時は prev/next ボタンの大きさを変更
	property height
	{
		getter
		{
			return super.height;
		}
		
		setter(h)
		{
			super.height = h;
			// 縦横幅を設定する時は、必要ならprev/nextを正方形に
			if (!prev.Butt_imageLoaded)
				prev.width = prev.width = h;
			if (!next.Butt_imageLoaded)
				next.width = next.width = h;
		}
	}
}


// 履歴レイヤ中の１ラインデータのベースクラス
// CurrentLine構築クラス、静的ラインクラスと分けるために、あえてここで
// ベースクラスを定義する。linetop とかこのクラス中では使わないのにね。
class HistoryLineBase {
	var owner;		// historyLayer
	var elmary = [];	// ライン中のタグ配列。文字列は[htext]で蓄積
	// 各タグには hwidth というメンバが追加され、これがタグの描画幅を表す
	var linetop = 0;	// 表示開始位置

	// コンストラクタ
	function HistoryLineBase(owner)
	{
		this.owner = owner;
		clear();
	}

	// デストラクタ
	function finalize()
	{
		clear();
	}

	// クリア
	function clear()
	{
		elmary = [];
		linetop = 0;
	}

	// 空かどうか調べる
	function isEmpty()
	{
		return elmary.count === 0;
	}

/* searchTag()は使わなくなったので容量削減のため削除
	// タグを探す
	function searchTag(tagname, search_from_back=true)
	{
		if (!search_from_back) {	// 前から探す
			for (var i = 0; i < elmary.count; i++)
				if (elmary[i].tagname == tagname)
					return elmary[i];
		} else {			// 後ろから探す
			for (var i = elmary.count-1; i >= 0; i--)
				if (elmary[i].tagname == tagname)
					return elmary[i];
		}
		return void;
	}
行頭*はナシ */
	
	// 幅のあるタグを考慮して行サイズを調査するため、getTextWidth() を新設
	// これはfont.getTextWidth()を置き換える。
	// この関数は、必ず「行先頭から」のサイズが返すことに注意。
	function getTextWidth()
	{
		var width = linetop;
		for (var i = elmary.count-1; i >= 0; i--)
			width += +elmary[i].hwidth;	// タグ幅を合計
		return width;
	}

	// コピー時
	function assign(src)
	{
		owner = src.owner;
		elmary.assignStruct(src.elmary);
		linetop = src.linetop;
	}

	// セーブ時
	function store()
	{
		var dic = %[ elmary:[] ];
		dic.elmary.assignStruct(elmary);
		dic.linetop = linetop;
		return dic;
	}

	// ロード時
	function restore(dic)
	{
		clear();
		if (dic === void || dic.elmary === void)
			return;
		elmary.assign(dic.elmary);
		linetop = dic.linetop;
	}
};


// 行中のタグを保存するスタック
class TagStack {
	var tagstack;	// タグを保存する配列

	// コンストラクタ
	function TagStack()
	{
		tagstack = [];
	}

	// デストラクタ
	function finalize()
	{
		tagstack = [];
	}

	// 空にする
	function clear()
	{
		tagstack = [];
	}

	// タグをスタックに保存する
	function push(elm)
	{
		var dic = %[];
		(Dictionary.assignStruct incontextof dic)(elm);
		tagstack.push(dic);
	}

	// タグをスタックから取り出す(really == false で値だけ取り出す)
	function pop(tagname, really=true)
	{
		if (tagname !== void) {
			if (really)
				return erase(tagname, , false);
			else
				return search(tagname);
		} else {
			if (really)
				return tagstack.pop();
			else
				return tagstack[stack.count-1];
		}
	}

	// 特定タグの特定属性をスタックから探す。見つからなければdefを返す
	function search(tagname, key, forward=false, def)
	{
		if (forward) {
			for (var i = 0; i < tagstack.count; i++) {
				var t = tagstack[i];
				if (t.tagname == tagname &&
				    (key === void || t[key] !== void))
					return t[key];
			}
		} else {
			for (var i = tagstack.count-1; i >= 0; i--) {
				var t = tagstack[i];
				if (t.tagname == tagname &&
				    (key === void || t[key] !== void))
					return t[key];
			}
		}
		return def;
	}

	// 特定タグをスタックから削除する
	function erase(tagname, forward=false, all=true)
	{
		var ret;
		if (forward) {
			for (var i = 0; i < tagstack.count; i++)
				if (tagstack[i].tagname == tagname) {
					var ret = tagstack[i];
					tagstack.erase(i);
					if (!all)
						return ret;
				}
		} else {
			for (var i = tagstack.count-1; i >= 0; i--)
				if (tagstack[i].tagname == tagname) {
					var ret = tagstack[i];
					tagstack.erase(i);
					if (!all)
						return ret;
				}
		}
		return void;
	}

	// タグスタックをそのまま返す
	function getStack()
	{
		return tagstack;
	}


	// コピーする
	function assign(src)
	{
		tagstack.assignStruct(src.tagstack);
	}

	// セーブする
	function store()
	{
		var ret = [];
		ret.assignStruct(tagstack);
		return ret;
	}

	// ロードする
	function restore(dic)
	{
		tagstack.assignStruct(dic);
	}
};


// ヒストリの現在行を保存するクラス
// 文字やタグを追加して一行ごとのelmaryを作成し、最終的に出来上がったものを
// StaticHistoryLine クラスにassign()するためのクラス。
class CurrentHistoryLine extends HistoryLineBase{
	// 各タグには hwidth というメンバが追加され、これがタグの描画幅を表す
	var inrubytag = %[];	// hrubyタグでstr=が指定されてなかった時に使用
	var tagstack;		// タグスタック(行末で状態を元に戻すために使用)

	// コンストラクタ
	function CurrentHistoryLine(owner)
	{
		tagstack = new TagStack();
		super.HistoryLineBase(owner);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
		invalidate tagstack;
	}

	// 空にする
	function clear(clearstack=true)
	{
		super.clear();
		if (clearstack)
			tagstack.clear();
	}

	// ルビの割付を計算(elm.startpos と elm.space)し、elmaryに追加
	// 改行を考え、必要ならelmを分割して返す。
	function calcRubyPos(elm)
	{
		var of = owner.font;
		var cw = of.getTextWidth(elm.str);
		var fontinfo = owner.getFontInfo();
		owner.setRubyFont();
		var rw = of.getTextWidth(elm.text);
		owner.setFontInfo(fontinfo);

		// 最初に中央ぞろえの時の値を入れておく
		var space = 0, startpos = (cw-rw)/2;
		if (elm.align == 'l')			// 左ぞろえなら
			startpos = 0;			// 左端
		else if (elm.align == 'r')		// 右ぞろえなら
			startpos = cw-rw;		// 右端
		else if (elm.align == 'e' && cw > rw) {	// 均等割りなら
			space    = cw/elm.text.length;
			//startpos = cw/elm.text.length/2 - owner.rubyHeight/2;
			startpos = (cw-((elm.text.length-1)*space+owner.rubyHeight))/2;
			// ↑こっちのほうがいいはず…。
		}
		elm.startpos = startpos if (elm.startpos === void);
		elm.space    = space    if (elm.space    === void);
		elm.hwidth   = cw;
		// これで「改行しない場合」の値は設定完了

		if (!owner.autoReturn || elm.noreturn)
			return void; 	// 自動改行を行わない場合は終了

		var rcw = owner.relinePos - getTextWidth();
		if (rcw >= cw)
			return void;	// 一行に収まっていれば終了
		// rcw = 行末までの残り幅

		// ルビをふる文字列が一行に収まらなかった場合
		var l, scw;
		for (l = elm.str.length; l > 0; l--) {
			scw = of.getTextWidth(elm.str.substr(0, l));
			if (scw <= rcw)
				break;
		}
		scw = 0 if (l <= 0);
		// ここまでで l が一行に収まる文字長、scwが実際の文字幅

		var r = 0, srw = 0;
		if (space == 0) { // 左右中央揃えの時
			var fontinfo = owner.getFontInfo();
			owner.setRubyFont();
			// ルビは下文字を超えるところまで被せる
			for (r = 0; r <= elm.text.length; r++) {
				srw = of.getTextWidth(elm.text.substr(0,r));
				if (startpos+srw >= scw)
					break;
			}
			owner.setFontInfo(fontinfo);
		} else { // 均等割りの時
			if (scw - startpos > 0) {
				r = Math.ceil((scw-startpos)/space);
				if (r < 0)
					r = 0;
				srw = r*space;
			}
		}
		// ここまでで r が一行に収まるルビ長、srwが実際のルビ幅

		var ret = %[];
		(Dictionary.assign incontextof ret)(elm);

		ret.str      = elm.str.substr(l);
		ret.text     = elm.text.substr(r);
		ret.startpos = startpos + srw - scw;
		ret.hwidth   = elm.hwidth - scw;

		elm.str    = elm.str.substr(0,l);
		elm.text   = elm.text.substr(0,r);
		elm.hwidth = scw;

		// ret.str.length == 0 になることもありうることに注意
		return ret;
	}

	// 改行前処理。タグ処理のため、ちょっと処理追加。
	// タグは、必ず一行内で収まるように設定される。
	function preReline()
	{
		// スタック上の tag の revtag を逆順に elmary末尾に追加
		// 一行でタグの開閉を完結させるため。
		var ary = tagstack.getStack();
		for (var i = ary.count-1; i >= 0; i--) {
			var getrevtag = tagFuncs[ary[i].tagname].revtag;
			if (getrevtag !== void)
				elmary.add(getrevtag());
		}
	}

	// 改行後処理。前の行のスタックは保存し、それを行先頭に付加する
	function postReline()
	{
		// reline()→repage()だと複数回呼ばれる可能性あり、注意
		clear(false);
		// スタック上のtagを正順にelmary先頭に記載
		elmary.assignStruct(tagstack.getStack());
		linetop = owner.indentPos;
	}

	// 文字列追加(最後が文字列なら継続追加、そうでなければ新規追加)
	// 一行に追加しきれなかった文字列が返される。そうでなければ '' が返る
	function addChar(ch, each=false)
	{
		// 一文字づつ追加するときは特別扱い
		if (each && ch.length > 1) {
			for (var i = 0; i < ch.length; i++)
				if (addChar(ch[i]) != '')
					return ch.substr(i);
			return '';
		}

		// 一つ前のルビでstr=がなかった(ルビ中)なら特殊処理
		if (inrubytag.tagname !== void) { // ruby中なら
			var e = %[];
			inrubytag.str = ch;
			// ここで hruby タグに変更する
			(Dictionary.assign incontextof e)(inrubytag);
			return addTag(e) ? '' : ch; 
			// inrubytag は addTag()中でclearされる
		}

		// ヒストリ上、文字列は[htext]タグとして扱う
		if (elmary.count <= 0 ||
		    elmary[elmary.count-1].tagname != "htext") {
			// 前に文字列がなければ、新TAGで追加
			var ret = addTag(%[tagname:"htext", text:ch]);
			return ret ? '' : ch;
		}

		// 前から文字列が続いていればそれに追加
		var e = elmary[elmary.count-1];	// 以前のTAGに接続
		e.text += ch;		// ↓文字列長を更新
		e.hwidth = owner.font.getTextWidth(e.text);

		if (WithinALine(ch))
			return '';		// 一行に収まったら O.K.

		// 収まらなかったらchを削除
		var e = elmary[elmary.count-1];
		e.text = e.text.substr(0, e.text.length-ch.length);
		if (e.text.length == 0)
			elmary.pop();
		e.hwidth = owner.font.getTextWidth(e.text);
		return ch;
	}

	// タグ追加 このelmは既に複製されているので壊してよい
	// 一行に収まるなら true が、収まらないなら false が返る
	function addTag(elm)
	{
		elm.hwidth = 0 if (elm.hwidth === void);  // 初期値

		var backup_fontinfo = owner.getFontInfo();// フォント情報を保存

		var storefunc = tagFuncs[elm.tagname].storefunc;
		if (storefunc !== void)
			if (!storefunc(elm, getTextWidth()))
				return true;
		// フォントやelm.hwidthはstorefunc()中で設定される
		elmary.add(elm);

		if (WithinALine())
			return true;

		// 収まらなかったらelmを削除
		elmary.pop();
		owner.setFontInfo(backup_fontinfo);	// フォント情報を戻す
		return false;
	}

	// 現在の行が一行に収まるかどうか確認 // タグ追加時はch===void
	function WithinALine(ch)
	{
		var o = owner;
		if (!o.autoReturn || (ch !== void && ch.length < 1))
			return true; 	// 自動改行しない場合は終了

		// 自動改行を行う場合行幅チェック ↓font.getTextWidth()ではない
		var len = getTextWidth();
		if (len <= o.relinePos)
			return true;

		// タグを追加したときは、最後のタグがはみ出している
		if (ch === void)
			return false;
		// 必ず[htext]タグであることを前提としている…いいのかな。
		var txt = elmary[elmary.count-1].text;
		var lastch = (txt.length < 2) ? '' : txt[txt.length-2];

		// 文字列を追加したとき
		if (((lastch == '' || o.wwLeading.indexOf(lastch) == -1) &&
		     o.wwFollowing.indexOf(ch) == -1) ||
		    (lastch != '' && o.wwFollowingWeak.indexOf(lastch) != -1 &&
		     o.wwFollowingWeak.indexOf(ch) != -1) ||
		    (o.wwFollowing.indexOf(ch) == -1 && len > o.limitPos)){
			// 前回の描画が行頭禁則文字でなく、
			// かつ今回の描画が行末禁則文字でない場合、
			// または弱禁則文字が連続している場合、
			// はたまた
			// 今回の描画が強禁則文字ではなくて、
			// 確実に 右端(横書き)・下端(縦書き)を越える場合
			// (強禁則文字の場合は余白は考えない…ので、
			// はみ出すこともある)
			return false;
		}
		return true;
	}

	// コピー時
//	function assign(src)
//	{
//		super.assign(src);
//		tagstack.assign(src.tagstack);
//		(Dictionary.assign incontextof inrubytag)(src.inrubytag);
//	}

	// セーブ時
	function store()
	{
		var dic = super.store();
		dic.tagstack = tagstack.store();
		dic.inrubytag = %[];
		(Dictionary.assignStruct incontextof dic.inrubytag)(inrubytag);
		return dic;
	}

	// ロード時
	function restore(dic)
	{
		super.restore(dic);
		tagstack.restore(dic.tagstack);
		(Dictionary.assign incontextof inrubytag)(dic.inrubytag);
	}

	// タグハンドラ
	var tagFuncs = %[
		// タグと関数の辞書配列。「tagFuncs[タグ名].関数」で使用。
		// 関数は定義しなければ実行されない(エラーにはならない)。
		// ひとつのタグにつき、以下の二つの関数を定義可能。
		//
		// storefunc(elm, curwidth)
		//	シナリオ本文にタグが出現した時に実行される関数。
		//	historyLayer.storetag(elm)から呼ばれる
		//	引数: elm=タグの辞書配列
		//	      curwidth=このタグを描画する前の現在までの文字列幅
		//	返値: このタグをelmaryに追加しない(ruby時)場合false。
		// revtag(elm)
		//	そのタグの末尾タグ([hfont]に対し[endhfont]など)文字列を
		//	返す。描画時、行末で全タグをスタックから除くために使用
		//	引数: elm=そのタグが指定された時の辞書
		//	返値: 末尾タグ文字列

		htext: %[
			storefunc: function(e, curwidth) {
				e.hwidth = owner.font.getTextWidth(e.text);
				return true;
			} incontextof this
		],

		hfont: %[
			storefunc: function(e, curwidth) {
				owner.setFontInfo(e);
				tagstack.push(e);
				return true;
			} incontextof this, 

//なくてよい。ないと、行末の[resethfont]が省略できる
//			revtag: function(elm) {
//				// [endhfont]は諦めた。
//				return %[tagname:'resethfont'];
//			} incontextof this
		],

		resethfont: %[
			storefunc: function(e, curwidth) {
				// 全ての [hfont] を削除
				tagstack.erase('hfont');
				owner.setDefaultFont();
				return true;
			} incontextof this
		],

		hbutton: %[
			storefunc: function(e, curwidth) {
				var o = owner;
				if (e.hwidth != 0)
					return true;
				// 単純に幅を求める
				var hb = new HistoryButtonLayer(o.window, o);
				hb.setOptions(e);
				e.hwidth = o.verticalView ? hb.height:hb.width;
				invalidate hb;
				return true;
			} incontextof this
		],

		hruby: %[
			storefunc: function(e, curwidth) {
				// align 文字列を統一しておく
				e.align = 'l' if (e.align == 'left');
				e.align = 'r' if (e.align == 'right');
				e.align = 'c' if (e.align == 'center');
				e.align = 'e' if (e.align == 'expand');
				if (e.str === void) {
					// strが無い時は次の一文字を得るために
					// ルビ中にする
					inrubytag = e; // assignなしでいける？
					return false;
				}
				inrubytag = %[];		// クリアしとく
				var next = calcRubyPos(e);	// 改行チェック
				if (next !== void) {	// 間で改行が必要なら
					if (e.str.length >= 0) { // 0も必要
						var elm = %[];
						(Dictionary.assign incontextof elm)(e);
						addTag(elm); // 今のタグを追加
					}
					(Dictionary.assign incontextof e)(next);
					// この後next(改行後タグ)を更に追加する
				}
				return true;
			} incontextof this
		],

		hact: %[
			storefunc: function(e, curwidth) {
				tagstack.push(e);
				return true;
			} incontextof this, 

			revtag: function(elm) {
				return %[tagname:'endhact'];
			} incontextof this
		],

		endhact: %[
			storefunc: function(e, curwidth) {
				tagstack.pop('hact');
				return true;
			} incontextof this
		],

		// [hlocate pos= ipos] 同じ行の中でしか移動できない
		hlocate: %[
			storefunc: function(e, curwidth) {
				// e.posをe.iposに変換する。
				if (e.pos !== void)
					e.ipos = +e.pos - curwidth;
				e.hwidth = +e.ipos;
				return true;
			} incontextof this
		],

		himage: %[
			storefunc: function(e, curwidth) {
				var o = owner;
				if (e.hwidth != 0)
					return true;
				var hi = new HistoryImageLayer(o.window, o);
				hi.setOptions(e);
				e.hwidth = o.verticalView ? hi.height : hi.width;
				invalidate hi;
				return true;
			} incontextof this
		],

		hhch: %[
			storefunc: function(e, curwidth) {
				if (!owner.verticalView)
					throw new Exception("履歴が縦書きモードでないと[hhch]は使用できません");
				e.hwidth = owner.font.height;
				return true;
			}
			
		]
	];
};


// 履歴レイヤ中の静的な１ラインデータ
class StaticHistoryLine extends HistoryLineBase {
	var savestr = "";	// これは高速化のために追加。ないとラベルごとの
				// セーブが遅いのなんの。
	// 以下、描画時のテンポラリ
	var hbuttons=[], hacts=[], himages=[];	// ボタン、アクション、画像
	var hactsave;

	// コンストラクタ
	function StaticHistoryLine(owner)
	{
		// ↓この中でclear()が呼ばれhbuttons[]などは開放される
		super.HistoryLineBase(owner);
	}

	// デストラクタ
	function finalize()
	{
		// ↓この中でclear()が呼ばれhbuttons[]などは開放される
		super.finalize();
	}

	// 空にする
	function clear()
	{
		super.clear();
		delButtons();
		savestr = "";
		hactsave = %[];
	}

	// 現在のelmaryを描画する。必ず行単位で呼ばれ、複数行は処理しない
	function draw(top_x, top_y)
	{
		delButtons();	// ボタンゴミが残っていたらアレなので削除する
		// 最初デフォルト値。行ごとに属性は独立するので初期化してよい。
		owner.setDefaultFont();
		var x = top_x, y = top_y, fs, elm, func;

		// 条件分岐を減らすために、最初にverticalか判断
		if (owner.verticalView) {
			y = top_y += linetop;
			for (var i = 0; i < elmary.count; i++) {
				fs = owner.font.height; // 動的なのでここで
				elm = elmary[i];
				func = tagFuncs[elm.tagname].drawfunc;
				// 縦書きならセンタリング、横書きなら下付き
				var dx = x, dy = y;
				dx -= (owner.lineHeight-fs)/2;
				if (func !== void)
					func(elm, x, y, top_x, top_y, dx, dy);
				y += elm.hwidth;
			}
		} else {
			x = top_x += linetop;
			for (var i = 0; i < elmary.count; i++) {
				fs = owner.font.height; // 動的なのでここで
				elm = elmary[i];
				func = tagFuncs[elm.tagname].drawfunc;
				// 縦書きならセンタリング、横書きなら下付き
				var dx = x, dy = y;
				dy += owner.rubyHeight+owner.fontHeight - fs;
				if (func !== void)
					func(elm, x, y, top_x, top_y, dx, dy);
				x += elm.hwidth;
			}
		}
	}

	// ボタンがメッセージエリア内か？
	function isInMessageArea(b)
	{
// これ↓だとボタンが全部エリア内にあるかどうかを見ている
		return (b.top  >= owner.marginT &&
			b.top+b.height <= owner.height-owner.marginB &&
			b.left >= owner.marginL &&
			b.left+b.width <= owner.width-owner.marginR);
// これ↓だとボタンが少しでもエリア内にあるかどうかを見ている
// しかし、こっちだと「半分画面外に出たボタン」がいつまでも消去されない
//		return (b.top+b.height >= owner.marginT &&
//			b.top <= owner.height-owner.marginB &&
//			b.left+b.width >= owner.marginL &&
//			b.left <= owner.width-owner.marginR);
// 実現するには、一行スクロールするごとに全行のボタンをチェックするか、
// 親上でボタンを管理するしかない…。
	}

	// ボタンを相対移動する。全ボタンが外に出てたら削除する
	function moveButtons(ix, iy)
	{
		var btn_visible = false;
		for (var i = hbuttons.count-1; i >= 0; i--) {
			var b = hbuttons[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		for (var i = hacts.count-1; i >= 0; i--) {
			var b = hacts[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		for (var i = himages.count-1; i >= 0; i--) {
			var b = himages[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		if (!btn_visible) // 全部画面外なら全部削除
			delButtons();
	}

	// ボタンを開放する
	function delButtons()
	{
		for (var i = hbuttons.count-1; i >= 0; i--)
			invalidate hbuttons.pop();
		for (var i = hacts.count-1; i >= 0; i--)
			invalidate hacts.pop();
		for (var i = himages.count-1; i >= 0; i--)
			invalidate himages.pop();
	}

	// CurrentHisroryLineからのコピー時
	function assignFromCurrentHistoryLine(src)
	{
		clear();	// このときはボタンは考慮不要、削除すればよい
		super.assign(src);
		if (elmary.count <= 0)
			return;
		// 最初から文字列を作成しておく。頭はlinetop固定
		savestr = "linetop\tpos=" + linetop;
		for (var i = 0; i < elmary.count; i++)
			savestr += "\t\t" + elm2tagstr(elmary[i]);
	}

	// タグ文字列から辞書を作る。現在はパラメータ中にtabを使えない
	// strは前後の'['と']'が削除されていること。
	function tagstr2elm(str)
	{
		// tab だけで分割する。elm2tagstrでタグ分割しているので。
		var ary = str.split(/\t/,, true);
		var tag = %[ tagname:ary[0] ], s, name, val, idx;
		for (var i = ary.count-1; i >= 1; i--) { // =の後にTJS式は不可
			// "param"(=trueなし)は絶対ないから無視してよい
			s    = ary[i];
			idx  = s.indexOf('=');
			name = s.substr(0,idx);
			val  = s.substr(idx+1);
			// ここでvalを数値に変換するのは遅いのでやめた
			// 履歴2000行で読み込みに2秒→10秒くらいかかる
			// ただし、hwidth だけは数値に変換しておく
			tag[name] = (name == 'hwidth') ? +val : val;
		}
		return tag;
	}

	// 辞書からタグ文字列を作る。辞書中にtabを使用できない
	function elm2tagstr(elm)
	{
		var str = "";
		var ary = [];
		ary.assign(elm);
		for (var i = 0; i < ary.count; i+=2) {
			if (ary[i] == 'tagname')
				str = ary[i+1] + str;
			else		//↓tabをデリミタとして分割
				str += "\t" + ary[i] + "=" + ary[i+1];
		}
		return str;
	}

	// セーブ時
	function store()
	{
		// 遅かったので、文字列だけセーブする
		return savestr;
	}

	// ロード時
	function restore(str)
	{
		// ↓この中で clear() が呼ばれるのでボタンの削除も不要
		super.restore(void);	// 引数は void でよい
		if (str.length <= 0)
			return;
		savestr = str;
		var ary = str.split(/\t\t/,, true);
		// ↓strの最初は必ず linetop pos=## になっているはず
		linetop = +(tagstr2elm(ary[0]).pos);
		for (var i = 1; i < ary.count; i++)
			elmary.add(tagstr2elm(ary[i]));
	}

	// タグハンドラ
	// CurrentHistoryLineから使うようになっていることに注意
	var tagFuncs = %[
		// タグと関数の辞書配列。「tagFuncs[タグ名].関数」で使用。
		// 関数は定義しなければ実行されない(エラーにはならない)。
		// drawfunc(elm, x, y, top_x, top_y, dx, dy)
		//	タグを履歴レイヤ上に描画するときに実行される関数
		//	引数: elm   = タグの辞書配列
		//	      x,y   = 履歴レイヤへの描画位置(drawText()の引数)
		//	      dx,dy = 履歴レイヤへの描画位置
		//	      top_x,top_y=この行の先頭描画位置
		//	返値: なし

		htext: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.drawText(dx, dy, e.text);
			} incontextof this
		],

		hfont: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.setFont(e.face, e.size, e.bold, e.color);
			} incontextof this
		],

		resethfont: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.setDefaultFont();	// 色をデフォルトに戻す
			} incontextof this
		],

		hbutton: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				// 履歴レイヤ上にボタンを表示
				var o = owner;
				var hb = new HistoryButtonLayer(o.window, o);
				hbuttons.add(hb);
				hb.setOptions(e);	// 画像読み込みとか
				hb.setPos(x, y);
				var i = +e.idx;
				if (o.verticalView) // 縦書きならセンタリング
					hb.left=x-(o.lineHeight+hb.width)/2+i;
				else // 横書きなら下ぞろえ
					hb.top =y+o.rubyHeight+o.fontHeight+i-hb.height;
			} incontextof this
		],

		hruby: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
// ToDo: 改行に合わせて描画文字列が0文字の時どうなるか？
				var o = owner, rx, ry;
				o.drawText(dx, dy, e.str); // まず文字を書く

				var s = e.text;
				var fontinfo = o.getFontInfo();
				o.setRubyFont();
				if (o.verticalView) {
					// 縦書き時
					rx = dx + o.rubyHeight + o.rubyOffset;
					ry = dy + +e.startpos;
				} else {
					// 横書き時
					rx = dx + +e.startpos;
					ry = dy - o.rubyHeight - o.rubyOffset;
				}
				if (+e.space == 0)
					o.drawText(rx, ry, s);
				else {
					for (var i=0; i < s.length; i++) {
						o.drawText(rx, ry, s[i]);
						if (o.verticalView)
							ry += +e.space;
						else
							rx += +e.space;
					}
				}
				o.setFontInfo(fontinfo);
			} incontextof this
		],

		hact: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				e.st_x = x; // 座標だけ覚えとく
				e.st_y = y;
				hactsave = e;
			} incontextof this
		],

		endhact: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				var o = owner, size;
				var e = hactsave; //必ず設定されているはず

				if (o.verticalView)
					size = y - +e.st_y;
				else 
					size = x - +e.st_x;
				if (size <= 0)	// 丁度次の行からhactが始まる時
					return;	// 何もしない
				var ha = new HistoryActionButtonLayer(o.window,o,e);
				hacts.add(ha);
				ha.setOptions(%[exp:e.exp]);
				if (o.verticalView) {
					ha.setPos(+e.st_x-o.lineHeight,+e.st_y);
					ha.setSize(o.lineHeight, size);
				} else {
					ha.setPos(+e.st_x, +e.st_y);
					ha.setSize(size, o.rubyHeight+o.fontHeight);
				}
			} incontextof this
		],

		// [hlocate pos= ipos] 同じ行の中でしか移動できない
		hlocate: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// 履歴レイヤ上で次の表示位置へ移動
				return +e.ipos;
			} incontextof this
		],

		himage: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// 履歴レイヤ上に画像を表示
				var o = owner;
				var hi = new HistoryImageLayer(o.window, o);
				himages.add(hi);
				hi.setOptions(e);	// 画像読み込みとか
				var i = (e.idx === void) ? 0 : +e.idx;
				if (o.verticalView) {
					hi.setPos(x-(o.lineHeight+hi.width)/2+i,y);
					return hi.height; // センタリング
				} else {
					hi.setPos(x, y+o.rubyHeight+o.fontHeight-hi.height+i);
					return hi.width;  // 下揃え
				}
			} incontextof this
		],

		hhch: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// 縦中横の描画ルーチン
				var fontinfo = owner.getFontInfo();
				if (!owner.verticalView)
					throw new Exception("履歴が縦書きモードでないと[hhch]は使用できません");
				var f = owner.font;
				f.face = f.face.substr(1); // @を除去
				f.angle = 0;
				// ↓中央ぞろえ。右寄りになる気がしないでもない
				dx -= (f.height + f.getTextWidth(e.text))/2;
				owner.drawText(dx, dy, e.text);
				owner.setFontInfo(fontinfo);
			} incontextof this
		]
	];
};


// 履歴のメッセージレイヤクラス
class HistoryMessageLayer extends Layer
{
	var antialiased = true;		// アンチエイリアス文字描画を行うか
	var verticalView = true;	// 縦書きかどうか
	var everypage = false;		// ページ毎の履歴表示を行なうか
	var autoReturn = true;		// 自動的に改行するかどうか
	var maxLines = 1000;		// 最大保持行数

	var data = [];			// 行データ (リングバッファ)
	var dataStart = 0;		// データの開始位置
	var dataLines = 0;		// データ中に含まれる行数 < maxLines -1
	var dataPos = 0;		// データ書き込み位置

	// "ページ毎"の時は、dataを2次元に使っている。
	var maxPages = 100;		// 最大ページ数
	var dataPages = 0;		// データ中の有効なページ数
	var dataPage = 0;		// 現在書き込んでいるページ

	// margin[TBRL] は、スクロールバーを除いた部分のマージンを表す
	var marginL = 12;		// 履歴メッセージ領域左余白
	var marginR = 12;		// 履歴メッセージ領域右余白
	var marginT = 12;		// 履歴メッセージ領域上余白
	var marginB = 12;		// 履歴メッセージ領域下余白
	var fontName = "ＭＳ Ｐ明朝";	// 履歴メッセージdefaultフォント名
	var fontBold = false;		// 履歴メッセージdefault太字細字
	var fontHeight = 24;		// 履歴メッセージdefaultフォントサイズ
	var lineHeight = 34;		// 履歴メッセージ行幅
	// ↑横書きなら >= fontH+rubyH、縦書きなら >= fontH+rubyH*2 必要
	var relinePos = 0;		// 履歴メッセージ領域の改行位置
	var limitPos = 0;		// 履歴メッセージ領域の下端 or 右端
	var indentPos = 0;		// インデント位置
	var repageLine = 0;		// 改ページ行数

	var historyColor = 0xffffff;	// 履歴文字色(default)

	var dispStart = 0;		// 現在の表示行(dataStartからの距離)
	var dispLines = 0;		// 履歴メッセージ表示可能行数
	var canScroll = false;		// 履歴がscroll可能かどうか
					// 履歴行数が画面行数に満たなければ偽
	var currentLine;		// 現在の行の文字とタグの保存クラス

	var storeState = false;		// 状態を栞に保存するか

	//	禁則文字
	var wwFollowing = "%),:;]}。」゛゜。，、．：；゛゜ヽヾゝ"
                "ゞ々’”）〕］｝〉》」』】°′″℃￠％‰"; // 行頭禁則文字
	var wwFollowingWeak="!.?、・ァィゥェォャュョッー・？！ーぁぃぅぇぉっゃゅょゎァィ"
                "ゥェォッャュョヮヵヶ"; // 行頭(弱)禁則文字
	var wwLeading="\\$([{「‘“（〔［｛〈《「『【￥＄￡"; // 行末禁則文字

	wwFollowing += wwFollowingWeak;

// ************** ↑ここまでオリジナル。ここから↓色々追加 ****************

	var fontcolor;			// 現在のヒストリ文字色
//	var fontsize;			// 現在のフォントサイズ　(font.*が
//	var fontbold;			// 現在のフォント太字情報 あるから不要)
//	var fontface;			// 現在のフォント名

	var shadowLevel   = 0;		// デフォルト影レベル
	var shadowColor   = 0x000000;	// デフォルト影色
	var shadowWidth   = 0;		// デフォルト影幅
	var shadowOffsetX = 0;		// デフォルト影オフセットX
	var shadowOffsetY = 0;		// デフォルト影オフセットY

	var hbColor = 0x808080;	// 履歴ボタン色
	var hbCaptionColor = 0xffffff;	// 履歴ボタンキャプション色

	// ここからルビ用変数
	var rubyName = "ＭＳ Ｐ明朝";	// ルビフォント名
	var rubyBold = true;		// ルビ太字細字
	var rubyHeight = 10;		// ルビサイズ
//	var rubyColor = 0xffffff;	// ルビ色 = 本文色にあわせるので不要
	var rubyOffset = -2;		// -の値で本文に近づく

	// コンストラクタ
	function HistoryMessageLayer(win, par, elm = %[])
	{
		super.Layer(...);
		antialiased = win.chDefaultAntialiased;

		// Config.tjs の関数を呼んで、データを初期化
		(HistoryLayer_config incontextof this)();
		if (typeof global.HistoryLayer_config_override != "undefined")
			(HistoryLayer_config_override incontextof this)();

		name = "履歴メッセージレイヤ";

		visible      = true;
		focusable    = false;
		hitType      = htMask;
		hitThreshold = 1;	// 透明部分も含め全体でイベントを受ける

		currentLine = new CurrentHistoryLine(this);
		clear();
		setDefaultFont();

		registerTags();		// 履歴用のタグを登録

		// 設定されていなければ、デフォルトサイズと位置を設定
		var sch = parent.scrollbarHeight;
		if (elm.left === void)
			elm.left = 0;
		if (elm.top === void)
			elm.top = sch; // 横書き時も下げる
		if (elm.width === void) {
			elm.width = parent.width;
					// 1.23 縦書き時デフォルトでscrollbarと
					// closeボタンが重なっていた
			elm.width -= sch; // if (!verticalView);
		}
		if (elm.height === void)
			elm.height = parent.height - sch;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 変数をクリア
	function clear()
	{
		clearLinesRemaining();	// 行/ページデータを全部削除

		dataStart = 0;
		dataLines = 0;
		dataPos   = 0;
		dataPages = 0;
		dataPage  = 0;

		if (everypage)
			data[dataPage] = [];
		else {
			dataLines = 1; // 0 だと最終行が履歴に表示されない
			data      = [];
		}

		currentLine.clear();

		calcRelinePos();
	}

	// 指定された範囲のdata[line数]またはdata[page数]を残して削除
	function clearLinesRemaining(lp=0)
	{
		if (everypage) {
			// ページの場合は残すページの中身(行)は残すので注意
			// load()では行が異なる場合をチェックしなければならない
			var remain_pages = dataPages = lp;
			for (var p = data.count-1; p >= remain_pages; p--) {
				var lines = data.pop();
				if (lines === void)
					continue;
				for (var l = lines.count-1; l >= 0; l--) {
					var d = lines.pop();
					// 昔の吉里吉里のためにvoidチェックする
					invalidate d if (d !== void);
				}
			}
		} else {
			var remain_lines = dataLines = lp;
			for (var l = data.count-1; l >= remain_lines; l--) {
				var d = data.pop();
				// 昔の吉里吉里のためにvoidチェックする
				invalidate d if (d !== void);
			}
		}
		dataStart = 0;
		dataPos   = 0;
		dataPage  = 0;
	}


	// セーブ時に内容を保存
	function save() {
		if (!storeState)
			return void;
		var dic = %[ data:[], ];
		if (everypage) {
			for (var p = 0; p < data.count; p++) {
				dic.data[p] = [];
				for (var l = 0; l < data[p].count; l++)
					dic.data[p][l] = data[p][l].store();
			}
		} else {
			for (var l = 0; l < data.count; l++)
				dic.data[l] = data[l].store();
		}
		dic.dataStart = dataStart;
		dic.dataPos   = dataPos;
		dic.dataPages = dataPages;
		dic.dataPage  = dataPage;
		dic.dataLines = dataLines;
		dic.currentLine = currentLine.store();
		return dic;
	}

	// ロード時に内容を復元
	function load(dic) {
		if (!storeState) {
			clear();// これないとロード時に履歴がクリアされない
			return;	// 実際はMainWindowから呼ばれないから不要だけど
		}
		if (dic === void) {
			clear(); // これないとロード時に履歴がクリアされない
			return;
		}

		// 高速化のため、可能な限り以前のインスタンスを再利用する
		clearLinesRemaining(dic.data.count);

		if (everypage) {// ページ単位の場合
			for (var p = 0; p < dic.data.count; p++) {
				if (data[p] === void)
					data[p] = [];
				var page = data[p], dicpage = dic.data[p], l;
				for (l = 0; l < dicpage.count; l++) {
					if (page[l] === void)
						page[l] = new StaticHistoryLine(this);
					page[l].restore(dicpage[l]);
				}
				// 不要な行を削除。clearLineRemaining()中では
				// 削除していないため。
				for (l=page.count-1; l >= dicpage.count; l--) {
					var d = page.pop();
					// 昔の吉里吉里のためにvoidチェックする
					invalidate d if (d !== void);
				}
			}
		} else { // if (!everypage)// 行単位の場合
			for (var l = 0; l < dic.data.count; l++) {
				if (data[l] === void)
					data[l] = new StaticHistoryLine(this);
				data[l].restore(dic.data[l]);
			}
		}

		dataStart = dic.dataStart;
		dataPos   = dic.dataPos;
		dataPages = dic.dataPages;
		dataPage  = dic.dataPage;
		dataLines = dic.dataLines;
		currentLine.restore(dic.currentLine);
		calcRelinePos();
	}

	// 改行・改ページの位置決め
	function calcRelinePos()
	{
		if (verticalView) {
			var h = height - marginT;
			relinePos  = h - marginB;
			limitPos   = h;
			repageLine = (width-marginL-marginR)\lineHeight;
		} else {
			var w = width - marginL;
			relinePos  = w - marginR;
			limitPos   = w;
			repageLine = (height-marginT-marginB)\lineHeight;
		}
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// イメージサイズを画面サイズに合わせておく
		setImageSize(width, height);

		// dispLines/marginL は dispInit()で初期化されるので
		// ここでは設定しない
	}

	// 最終行を得たり設定したりするための getter/setter
	property lastLine
	{
		getter
		{
			var dp = (everypage) ? data[dataPage] : data;
			return dp[dataPos];
		}

		setter(line)
		{
			var dp = (everypage) ? data[dataPage] : data;
			if (dp[dataPos] === void)
				dp[dataPos] = new StaticHistoryLine(this);
			dp[dataPos].assignFromCurrentHistoryLine(line);
		}
	}

	// 最終行に現在行を追加する
	// ※dataPosなどはここでは変更せず、reline()などで変更する
	function addLastLine(curline)
	{
		curline.preReline();	// 事前準備
		lastLine = curline;
		curline.postReline();	// 事後準備
	}

	// n 番目の行を得る
	function getLine(n)
	{
		return data[(n+dataStart)%maxLines];
	}

	// n 番目のページを得る
	function getPage(n)
	{
		return data[(n+dataStart)%maxPages];
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function setNewAction(action)
	{
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function clearAction()
	{
	}

	// 履歴レイヤに文字を溜め込む。
	// 必要なら行頭にタグを付加。タグを処理するときは elm !== void で、
	// elm にはタグ辞書が入っている。
	// drawLine()と違って、(ほぼ)一文字ずつ入ってくる
	function addChar(ch)
	{
		if (currentLine.addChar(ch) != '') {	// 改行必要なら
			reline();			// 改行して
			addChar(ch);			// 文字を追加しなおし
		}
	}

	// 履歴レイヤにタグを溜め込む。
	function addTag(elm)
	{
		var e = %[];
		(Dictionary.assign incontextof e)(elm);	// assignStruct()不要
		if (!currentLine.addTag(e)) {		// 改行必要なら
			reline();			// 改行して
			addTag(e);			// タグを追加しなおし
		}
	}

	// 改ページ
	function repage()
	{
		if (!everypage)
			return;

		if (dataPos == 0 && currentLine.isEmpty())
			return; // 行に表示物がない場合、なにもしない

		// repage()が単体で呼ばれた時のためにここに配置
		addLastLine(currentLine);

		dataPage = (dataPage+1)%maxPages;
		dataPos	= 0;

		if (data[dataPage] === void)
			data[dataPage] = [];
		else
			for (var i = data[dataPage].count-1; i >= 0; i--)
				invalidate data[dataPage].pop();

		if (dataPage == dataStart)
			dataStart++;
		if (dataStart >= maxPages)
			dataStart = 0;
		if (dataPages < maxPages-1)
			dataPages++;

// ToDo: 改ページ間で[hfont]とか[hact]とかが続いた場合が考慮されていない
// 現在は、考慮されているはず、要チェック
	}

	// 改行。タグ処理のため、ちょっと処理追加。
	// タグは、必ず一行内で収まるように設定される。
	function reline()
	{
		if (everypage) {
			if (dataPos + 1 >= repageLine)
				repage(); // 改ページすべき行数になったとき
			else {
				addLastLine(currentLine);
				dataPos++;
			}
		} else {
			addLastLine(currentLine);

			dataPos = (dataPos+1)%maxLines;
			if (data[dataPos] !== void)
				data[dataPos].clear();

			if (dataPos == dataStart)
				dataStart++;
			if (dataStart >= maxLines)
				dataStart = 0;
			if (dataLines < maxLines)
				dataLines++;
		}
	}

	// 現在位置にインデントを設定
	function beginIndent()
	{
		indentPos = currentLine.getTextWidth();
	}

	// インデントを解除
	function endIndent()
	{
		indentPos = 0;
	}

	// 履歴画面をクリアする。nが指定されるとn行目を一行だけクリアする
	// 指定されないと全画面。[hbutton][himage]をクリアする処理を追加
	function clearBack(n)
	{
		var x=0, y=0, w=width, h=height;
		face = dfAlpha;

		if (n === void) {
			if (everypage) {
				for (var p = data.count-1; p >= 0; p--)
					for (var l=data[p].count-1; l>=0; l--)
						if (data[p][l] !== void)
							data[p][l].delButtons();
			} else {
				for (var l = data.count-1; l >= 0; l--)
					if (data[l] !== void)
						data[l].delButtons();
			}
		} else {
			if (verticalView) {
				x = width-marginR-(n+1)*lineHeight;
				y = 0;
				w = lineHeight;
				if (n == 0)
					// 最初行はちょっと広めにクリア
					w += marginR;
				if (n == dispLines-1)
					// 最終行はちょっと広めにクリア
					x -= marginL, w += marginL;
			} else {
				y = n*lineHeight+marginT;
				h = lineHeight;
				if (n == 0)
					// 最初行はちょっと広めにクリア
					y -= marginT, h += marginT;
				if (n == dispLines-1)
					// 最終行はちょっと広めにクリア
					h += marginB;
			}
			// 当該ラインだけのhbuttonsを消す処理は、scroll時に
			// 画面外に出たものを消すようにしているので不要
	        }
		fillRect(x, y, w, h, 0);	// 透明にする
	}

	// 履歴画面が表示された時、呼び出される。
	function dispInit()
	{
		lastLine = currentLine;
		// currentLine.clear(); したら表示中の行が消えてしまうから不要

		// dispLines/marginL/B を補正する
		if (verticalView) {
			dispLines = (width-marginR-marginL)\lineHeight;
			marginL   = width-marginR-lineHeight*dispLines;
		} else {
			dispLines = (height-marginT-marginB)\lineHeight;
			marginB   = height-marginT-lineHeight*dispLines;
		}

		// スクロール可能かどうかを canScroll に格納
		if (everypage)
			canScroll = (dataPages > 0);
		else
			canScroll = (dataLines > dispLines);
		lastPage();
	}

	// 履歴画面が非表示になった時、呼び出される
	function dispUninit()
	{
		clearBack();	// 念のため終了時は clearBack() しておく
	}

	// 表示行 n(=画面上の行番号) を履歴画面に描画する
	function drawLine(n)
	{
		var line;
		if (everypage)
			line = getPage(dispStart)[n];
		else
			line = getLine(n + dispStart);
		if (line === void || line.isEmpty())
			return;
		var x, y;
		if (verticalView) {
			x = width - marginR - n*lineHeight;
			y = marginT;
		} else {
			x = marginL;
			y = n*lineHeight + marginT;
		}
		line.draw(x, y);
	}

	// 現在の表示行から一画面分を履歴画面に描画する
	// 履歴が既にclearBack()済みであること(そうじゃないとbuttonが消せない)
	function drawLinesInThePage(dispstart=dispStart)
	{
		dispStart = dispstart;
		clearBack();
		for (var i =  0; i < dispLines; i++)
			drawLine(i);
		parent.updateButtonState();
	}

	// 現在のページを履歴画面に描画する(everypageの時のみ使用可能)
	function drawPage(dispstart=dispStart)
	{
		dispStart = dispstart;
		clearBack();
		var page = getPage(dispStart);
		var x, y = marginT;
		if (verticalView) {
			x = width - marginR;
			for (var i = 0; i < repageLine; i++) {
				if (page[i] !== void)
					page[i].draw(x, y);
				x -= lineHeight;
			}
		} else {
			x = marginL;
			for (var i = 0; i < repageLine; i++) {
				if (page[i] !== void)
					page[i].draw(x, y);
				y += lineHeight;
			}
		}
		parent.updateButtonState();
	}

	// 前ページに移動
	function prevPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart < 1)
				return;
			drawPage(dispStart-1);
		} else {
			if (dispStart >= dispLines)
				drawLinesInThePage(dispStart-dispLines);
			else
				drawLinesInThePage(0);
		}
	}

	// 次ページに移動
	function nextPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart >= dataPages-1)
				return;
			drawPage(dispStart+1);
		} else {
			if (dispStart < dataLines - dispLines)
				drawLinesInThePage(dispStart+dispLines);
			if (dispStart > dataLines - dispLines)
				drawLinesInThePage(dataLines-dispLines);
			// ここに == の判定は不要。あるとnextPage()がヘンになる
		}
	}

	// 次の行へスクロールアップ
	function nextLine()
	{
		if (isTail())	// (dispStart >= dataLines - dispLines)
			return; // スクロールできないなら帰る

		moveButtons(-1);	// ボタン位置を補正する

		// marginを含めて全画面コピーする
		var w = width, h = height, lh = lineHeight;
		if (verticalView) {
			copyRect(lh, 0, this, 0, 0, w-lh, h);
			fillRect(w-marginR, 0, marginR, h, 0); // marginR消去
		} else {
			copyRect(0, 0, this, 0, lh, w, h-lh);
			fillRect(0, 0, w, marginT, 0); // marginT消去
		}

		clearBack(dispLines - 1);
		dispStart++;
		drawLine(dispLines - 1);
		parent.updateButtonState();
	}

	// 前の行へスクロールダウン
	function prevLine()
	{
		if (isHead())		// if (dispStart == 0)
			return;

		moveButtons(1);	// ボタン位置を補正する

		// marginを含めて全画面コピーする
		var w = width, h = height, lh = lineHeight;
		if (verticalView) {
			copyRect(0, 0, this, lh, 0, w-lh, h);
			fillRect(0, 0, marginL, h, 0); // marginL消去
		} else {
			copyRect(0, lh, this, 0, 0, w, h-lh);
			fillRect(0, h-marginB, w, marginB, 0); // marginB消去
		}

		clearBack(0);
		dispStart--;
		drawLine(0);
		parent.updateButtonState();
	}


//////////////////////////////////////////////////////////////////////////
// ↑ ここまでがオリジナルHistoryLayer、↓ここからrubyとかhfontとかの機能追加


	//最初のページに移動
	function firstPage()
	{
		if (everypage)
			drawPage(0);
		else
			drawLinesInThePage(0);
	}

	// 最後のページに移動
	function lastPage()
	{
		if (everypage) {
			if (dataPages <= 0)
				drawPage(0);
			else
				drawPage(dataPages - 1);
		} else {
			if (dataLines <= dispLines) // 表示可能範囲内に収まる
				drawLinesInThePage(0);
			else			// 表示可能範囲内に収まらない
				drawLinesInThePage(dataLines - dispLines);
		}
	}

	// ひとつ前へ
	function prevOne()
	{
		everypage ? prevPage() : prevLine();
	}

	// ひとつ次へ
	function nextOne()
	{
		everypage ? nextPage() : nextLine();
	}


	// 現在のフォント情報を設定する
	function setFont(face, size, bold, color)
	{
		if (face !== void) {
			if (face[0] == '@')
				face = face.substr(1);	// 最初の@があれば取る
			if (verticalView) {
				font.angle = 2700;
				font.face = '@' + face;
			} else {
				font.angle = 0;
				font.face = face;
			}
		}
		font.height = +size	  if (size  !== void);
		if (font.height > rubyHeight+fontHeight)
			font.height = +rubyHeight+fontHeight;
		font.bold   = +bold       if (bold  !== void);
		fontcolor   = +color      if (color !== void);
	}

	// ルビフォントに設定する
	function setRubyFont()
	{
		setFont(rubyName, rubyHeight, rubyBold);
	}

	// フォント情報をデフォルトに戻す
	function setDefaultFont()
	{
		setFont(fontName, fontHeight, fontBold, historyColor);
	}

	// 現在のフォント情報を辞書で返す
	function getFontInfo()
	{
		return %[ face:font.face, size:font.height,
			  bold:font.bold, color:fontcolor ];
	}

	// フォント情報を辞書で設定する
	function setFontInfo(elm)
	{
		setFont(elm.face, elm.size, elm.bold, elm.color);
	}

	// drawTextを乗っ取って、タグ処理を追加する。必ず行単位で呼ばれ、行を
	// 超えては処理しない(できない)
	function drawText(x, y,
			text, color=fontcolor, opa=255, aa=antialiased,
			shadowlevel=shadowLevel, shadowcolor=shadowColor,
			shadowwidth=shadowWidth,
			shadowofsx=shadowOffsetX, shadowofsy=shadowOffsetY)
	{
		super.drawText(x, y, text, color, opa, aa,
				shadowlevel, shadowcolor, shadowwidth,
				shadowofsx, shadowofsy);
	}

	// タグを KAGマクロとして使用できるように、kag.tagHandlersに登録する
	function registerTags()
	{
		var tagfuncs = keys(currentLine.tagFuncs);
		for (var i = tagfuncs.count-1; i >= 0; i--) {
			// 登録するタグは「新規タグ」のみであることに注意
			window.tagHandlers[tagfuncs[i]] =
				function(elm)
				{
					if (!window.historyWriteEnabled)
						return 0;
					// タグ辞書を追加引数に store() を呼ぶ
					addTag(elm);
					return 0;	// これonTag()に必要
				} incontextof this;
		}
	}

	// ヒストリ上のボタンを画面上で line 分移動(不要なものは削除される)
	// 履歴画面のスクロール時の処理用
	function moveButtons(lineidx)
	{
		var w = lineHeight * lineidx;
		var lines, startline, endline;

		if (everypage) {
			lines     = getPage(dispStart);
			for (var l = 0; l < dispLines; l++) {
				var line = lines[l];
				if (line === void || line.isEmpty())
					continue;
				if (verticalView)
					line.moveButtons(-w, 0);
				else
					line.moveButtons(0, w);
			}
		} else {
			for (var l = 0; l < dispLines; l++) {
				var line = getLine(dispStart + l);
				if (line === void || line.isEmpty())
					continue;
				if (verticalView)
					line.moveButtons(-w, 0);
				else
					line.moveButtons(0, w);
			}
		}
		// line.moveButtons()内で、移動されたボタンはその行の全ての
		// ボタンが画面外だと削除される。「行が画面外でボタンが画面内」
		// の場合に再描画すると重複描画の可能性があるが、実際はnextLine
		// prevLine/prevPage/nextPageでclearBack()しているので、
		// (不要なボタンが非表示部に残ることはあるが)動作上は問題ない
	}

// HEAD :Scrollbar.Target interface実装部分
	// ヒストリは先頭か？
	function isHead()
	{
		return dispStart <= 0;
	}
	// ヒストリは末尾か？
	function isTail()
	{ 
		if (everypage)
			return dispStart >= dataPages-1;
		else
			return dispStart >= dataLines-dispLines;
	}
	// 現在の位置(pos, 0～1の実数)から、dispStart(履歴の表示開始位置)を得る
	function getDispStart(pos)
	{
		if (everypage)
			return int((dataPages-1)*pos);
		else
			return int((dataLines-dispLines)*pos);
	}
	property pageCount
	{
		getter()
		{
			var res = (everypage)?dataPages:dataLines/repageLine;
			return (res > 1) ? res : 1;
		}
	}
	property position
	{
		getter()
		{
			if (everypage) {
				if (pageCount > 1)
					return dispStart/(pageCount-1);
				else
					return 1;
			} else {
				if (dataLines > dispLines)
					return dispStart/(dataLines-dispLines);
				else return 0;
			}
		}
	}

	// マウスクリックされた時は全部親に処理を任せる
	function onMouseDown(x, y, button)
	{
		parent.onMouseDown(...);
	}


// TAIL :Scrollbar.Target interface実装部分
//

}


// 履歴(というかonwer)をフェードイン・アウトさせるクラス
// 透明度を変化させて表示・非表示にする
class ExtHistoryLayerFade {
	var w;
	var owner;			// ExtHistoryLayer
	var time;			// フェードイン・アウトにかかる時間

	// 以下は一時変数
	var kag_showHistory_org;	// kag.showHistoryのオリジナル
	var kag_hideHistory_org;	// kag.hideHistoryのオリジナル
	var starttime;			// フェード開始時間
	var status;			// フェード状態
		var STOP=0, FADING_IN=1, FADING_OUT=2;

	// コンストラクタ
	function ExtHistoryLayerFade(owner, time)
	{
		this.owner = owner;
		this.time  = time;
		w = owner.window;

		kag_showHistory_org = w.showHistory;
		kag_hideHistory_org = w.hideHistory;
		w.showHistory = startFadein;	// incontextof.. はしない
		w.hideHistory = startFadeout;	// 同上
	}

	// デストラクタ
	function finalize()
	{
		var w = owner.window;
		w.showHistory = kag_showHistory_org;
		w.hideHistory = kag_hideHistory_org;
		// 登録されてたら continuousHandlerを削除
		// そうしないとfade中にゲーム終了した時エラーとなる
		if (status == FADING_OUT)
			System.removeContinuousHandler(continueFadeout);
		if (status == FADING_IN)
			System.removeContinuousHandler(continueFadein);
	}

	// fade 中かどうか
	function isFading()
	{
		return status == FADING_IN || status == FADING_OUT;
	}

	// フェードイン開始
	function startFadein()
	{
		// 起動直後はvisible=1, opacity=255なので、visble確認必要
		if (isFading() || (owner.visible && owner.opacity >= 255))
			return;
		kag_showHistory_org();
		starttime = System.getTickCount();
		owner.opacity = 0;
		status = FADING_IN;
		System.addContinuousHandler(continueFadein);
	}

	// フェードインを終了する
	function stopFadein()
	{
		status = STOP;
		owner.opacity = 255;
		System.removeContinuousHandler(continueFadein);
		w.update();
	}

	// フェードインし続ける
	function continueFadein()
	{
		var curtime = Math.min(time, System.getTickCount()-starttime);
		if (!isFading() || curtime >= time) {
			stopFade();
			return;
		}
		owner.opacity = Math.round(255*curtime/time);
		w.update();
	}

	// フェードアウト開始
	function startFadeout()
	{
		// opacity==0ならなにもしないように追加しとかないと、一行ごとに
		// fadeoutしちゃう。
		// 本文一行表示ごとにonMouseDown→onPrimaryClick→notifyRun→
		// defaultRunHandler→hideHistory→startFadeoutが呼ばれるため
		if (isFading() || owner.opacity <= 0)
			return;
		starttime = System.getTickCount();
		owner.opacity = 255;
		status = FADING_OUT;
		System.addContinuousHandler(continueFadeout);
	}

	// フェードアウトを終了する
	function stopFadeout()
	{
		status = STOP;
		w.update();
		owner.opacity = 0;
		System.removeContinuousHandler(continueFadeout);
		kag_hideHistory_org();
	}

	// フェードアウトし続ける
	function continueFadeout()
	{
		var curtime = Math.min(time, System.getTickCount()-starttime);
		if (!isFading() || curtime >= time) {
			stopFadeout();
			return;
		}
		owner.opacity = 255 - Math.round(255*curtime/time);
		w.update();
	}

	// フェードを停止する
	function stopFade()
	{
		if (status == FADING_IN)
			stopFadein();
		else if (status == FADING_OUT)
			stopFadeout();
	}
};


// 拡張履歴レイヤクラス
class ExtHistoryLayer extends Layer
{
	// 自分自身は背景画像を表示する。
	var closeButton;		// 右上の履歴終了ボタン
	var scrollbar;			// スクロールバーオブジェクト
	var meslayer;			// メッセージ表示レイヤ

	var lastWheelTick; // 最後にホイールを操作した tick count

	// 以下、拡張履歴レイヤ用設定。
	// system/Config.tjs の末尾に、function ExtHistoryLayer_config() を
	// 定義して、その中で設定することをお勧めする。

	var bggraphic = "";		// 背景画像ファイル名
	var prevgraphic = "";		// prevボタンの画像ファイル名
	var nextgraphic = "";		// nextボタンの画像ファイル名
	var slgraphic = "";		// スライダーの画像ファイル名
	var closegraphic = "";		// closeボタンの画像ファイル名

	var buttonColor = 0x808080;	// ボタン色
	var buttonCaptionColor = 0xffffff;	// ボタンキャプション色
	var bgColor = 0xc8000000;	// 背景色
	var messageTop = Infinity;	// 履歴メッセージウィンドウの座標
	var messageLeft = Infinity;	// 同上(どれもInfinityはdefaultを表す)
	var messageWidth = Infinity;	// 履歴メッセージウィンドウの大きさ
	var messageHeight = Infinity;	// 同上
	var closeButtonTop = 0;		// クローズボタンの座標
	var closeButtonLeft = Infinity;	// 同上
	var scrollbarHeight = 16;	// スクロールバー幅(画像btnなら未使用)
	var scrollbarBack = 0x80404040;	// スクロールバー背景色
	var sbbggraphic = "";		// スクロールバー背景画像ファイル名

	var hidemessage = false;	// 履歴表示中にメッセージレイヤを隠すか

	var fadeobj;
	var fadetime = 200;		// 履歴をフェード表示する時の時間

	// コンストラクタ
	function ExtHistoryLayer(win, par, elm)
	{
		super.Layer(...);

		name = "拡張履歴レイヤ";

		closeButtonLeft = window.scWidth-scrollbarHeight;
		// 設定値が Config.tjs 中にあれば設定
		if (typeof(.ExtHistoryLayer_config) != 'undefined')
			(.ExtHistoryLayer_config incontextof this)();

		setPos(0, 0);
		setSize(parent.width, parent.height);
		setImageSize(width, height);
		hitType = htMask;
		visible = false;	// 最初は不可視
		face = dfAlpha;	
		fillRect(0,0, width, height, bgColor);	// def = 半透明の黒
		focusable = true;

		cursor = window.cursorDefault;

		// メッセージレイヤ作成
		var meselm = %[];
		if (messageLeft != Infinity)
			meselm.left = messageLeft;
		if (messageTop != Infinity)
			meselm.top = messageTop;
		if (messageWidth != Infinity)
			meselm.width = messageWidth;
		if (messageHeight != Infinity)
			meselm.height = messageHeight;
		meslayer = new HistoryMessageLayer(win, this, meselm);

		// ボタンとか作成。ここで作成すると、historyを使わない時に
		// 無駄だが、ヒストリ表示時にボタン作ると、それまでに流し込んだ
		// 文字列の limitPos などが初期状態で改行が変になっちゃうので。
		// makeButtons()関数は、MainWindow.tjs から呼ばれるので削除不能
		makeButtons();

		// 履歴をfade表示するためのクラスを登録
		fadeobj = new ExtHistoryLayerFade(this, fadetime);

		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		invalidate fadeobj;
		invalidate closeButton;
		invalidate scrollbar;
		invalidate meslayer;
		super.finalize(...);
	}

	// セーブ時に内容を保存
	function save() {
		return meslayer.save(...);
	}

	// ロード時に内容を復元
	function load(dic) {
		meslayer.load(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm, ["clear"]);

		// グラフィックを設定した場合は、ボタンを作り直す
		if (elm.closegraphic !== void || elm.prevgraphic !== void ||
		    elm.nextgraphic !== void || bggraphic !== void)
			makeButtons();
	}

	// ボタン作成(HistoryLayer.makeButtons()を上書き)
	function makeButtons()
	{
		if (closeButton !== void)
			invalidate closeButton;	// 存在するなら再設定
		closeButton = new LButtonLayer(window, this);
		closeButton.width 	 = scrollbarHeight;
		closeButton.height 	 = scrollbarHeight;
		closeButton.hint         = "メッセージ履歴を閉じる";
		closeButton.captionColor = buttonCaptionColor;
		closeButton.color        = buttonColor;
		closeButton.caption      = "×";
		closeButton.visible      = true;
		// 画像があれば読み込み
		if (closegraphic != "")
			closeButton.loadImages(closegraphic);
		if (closeButtonTop == Infinity)
			closeButton.top  = 0;
		else
			closeButton.top  = closeButtonTop;
		if (closeButtonLeft == Infinity)
			closeButton.left = window.scWidth - closeButton.width;
		else
			closeButton.left = closeButtonLeft;

		// スクロールバーは、定義されていれば再定義はしない
		var scelm = %[
			color:buttonColor,
			captionColor:buttonCaptionColor
		];
		if (meslayer.verticalView) {
			if (scrollbar === void) {
				scrollbar = new HorizontalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
			// 縦書きの時は、スクロールバーはメッセージレイヤ上端に
			scrollbar.setSize(meslayer.width, scrollbarHeight);
			scrollbar.setPos(meslayer.left,
					 meslayer.top-scrollbar.height);
		} else {
			if (scrollbar === void) {
				scrollbar = new VerticalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
			// 横書きの時は、スクロールバーは右端に
			scrollbar.setSize(scrollbarHeight, meslayer.height);
			scrollbar.setPos(meslayer.left+meslayer.width,
					 meslayer.top);
		}

		// 画像があれば読み込み
		if (prevgraphic != "")
			scrollbar.setOptions(,%[graphic:prevgraphic]);
		if (nextgraphic != "")
			scrollbar.setOptions(,,%[graphic:nextgraphic]);
		if (slgraphic != "")
			scrollbar.setOptions(,,,%[graphic:slgraphic]);
		if (sbbggraphic != "")
			scrollbar.setOptions(%[graphic: sbbggraphic]);
		if (bggraphic != "")
			loadImages(bggraphic);

		scrollbar.initState();
		meslayer.calcRelinePos();
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function setNewAction(action)
	{
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function clearAction()
	{
	}

	// 履歴レイヤをクリアする
	function clear()
	{
		meslayer.clear(...);
	}

	// 履歴レイヤに文字を溜め込む。
	function store(ch)
	{
		meslayer.addChar(...);
	}

	// 履歴レイヤにタグを溜め込む。
	function storeTag(elm)
	{
		meslayer.addTag(...);
	}

	// 改ページ
	function repage()
	{
		meslayer.repage(...);
	}

	// 改行
	function reline()
	{
		meslayer.reline(...);
	}

	// 現在位置にインデントを設定
	function beginIndent()
	{
		meslayer.beginIndent(...);
	}

	// インデントを解除
	function endIndent()
	{
		meslayer.endIndent(...);
	}

	// 履歴画面が表示された時、呼び出される。
	function dispInit()
	{
		// メッセージレイヤを表示しないなら消去
		if (hidemessage && !window.messageLayerHiding)
			window.hideMessageLayerByUser();

		// 全部再描画と初期設定
		makeButtons();
		meslayer.dispInit();

		opacity = 0;	// fadeのため最初は opacity = 0
		visible = true;
		enabled = true;	// これが無いと setMode() でエラーになる
		setMode();
		focus();
		lastWheelTick = 0;
	}

	// 履歴画面が非表示になった時、呼び出される
	function dispUninit()
	{
		meslayer.dispUninit();
		visible = false;
		enabled = false;
		removeMode();	// 上にあるとsystembuttonにフォーカスされるので

		// メッセージレイヤを消去していたら表示
		if (hidemessage && window.messageLayerHiding)
			window.showMessageLayerByUser();
	}

	// 全ボタン状態を更新
	function updateButtonState()
	{
		scrollbar.updateState();
	}

	// 履歴を隠す
	function hide()
	{
		window.hideHistory();
	}

	// ボタンがクリックされた時
	function onButtonClick(sender)
	{
		if (sender == closeButton)
			hide();
	}

	// マウスクリックされた時
	function onMouseDown(x, y, button)
	{
		if (fadeobj.isFading()) { // フェード中ならフェード終了する
			fadeobj.stopFade();
			return;
		}
		if (button == mbRight)
			hide();
		super.onMouseDown(...);
	}

	// キーが押し下げられた時
	function onKeyDown(key, shift)
	{
		if (fadeobj.isFading()) { // フェード中ならフェード終了する
			fadeobj.stopFade();
			return;
		}
		window.hideMouseCursor();
		if (meslayer.canScroll) {
			if (meslayer.verticalView) {
				if (key == VK_DOWN || key == VK_NEXT)
					meslayer.nextPage();
				else if (key == VK_UP || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_LEFT)
					meslayer.nextOne();
				else if (key == VK_RIGHT)
					meslayer.prevOne();
			} else {
				if (key == VK_DOWN)
					meslayer.nextOne();
				else if (key == VK_UP)
					meslayer.prevOne();
				else if (key == VK_LEFT || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_RIGHT || key == VK_NEXT)
					meslayer.nextPage();
			}
		}
		if (key == VK_ESCAPE || key == VK_RETURN || key == VK_SPACE)
			hide();
		else if (key == VK_HOME)
			meslayer.firstPage();
		else if (key == VK_END)
			meslayer.lastPage();
	}

	// マウスホイルをまわした時
	function windowMouseWheel(shift, delta, x, y)
	{
		if (fadeobj.isFading()) { // フェード中ならフェード終了する
			fadeobj.stopFade();
			lastWheelTick = 0;
			return;
		}

		// ウィンドウのホイール操作メッセージがここに流される
		var currenttick = System.getTickCount();
		delta = delta \ 120;
		if (delta > 0) // 奥
			while (delta--)
				meslayer.prevOne();
		else if (delta < 0) { // 手前
			if (currenttick - lastWheelTick > 150 &&
			    meslayer.isTail())
				/* くるくる回しているうちにいきなり履歴が
				  閉じたりしないような仕掛け */
				// 既に最終部分を表示している
				hide();
			else {
				delta = -delta;
				while (delta--)
					meslayer.nextOne();
			}
		}
		lastWheelTick = currenttick;
	}

	// historyLayer.everypage は MainWindow.ks から利用されるのでラッパー
	property everypage
	{
		getter
		{
			return meslayer.everypage;
		}
		
		setter(val)
		{
			meslayer.everypage = val;
		}
	}

	// historyLayer.storeState は MainWindow.ks から利用されるのでラッパー
	property storeState
	{
		getter
		{
			return meslayer.storeState;
		}
		
		setter(val)
		{
			meslayer.storeState = val;
		}
	}
};


// 履歴上に表示するボタンレイヤ
class HistoryButtonLayer extends ButtonLayer
{
	var exp = "";		// クリック時に実行されるTJS式

	// コンストラクタ
	function HistoryButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		//デフォルト値設定
		// ボタンサイズは履歴フォントサイズをデフォルトとする
		setSize(parent.fontHeight, parent.fontHeight);
		setOptions(%[caption:"▲",
			     captionColor:parent.hbCaptionColor,
			     color:parent.hbColor,
			     visible:true, enabled:true]);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void)
			loadImages(elm.graphic);
		setOptions_sub(this, elm);
	}

	// マウスがクリックされ、放された時
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
};


// [hact]ボタン。実は透明なボタンで、下の文字を隠すだけ。これで、
// [hact]中の文字の大きさ・色変更・ルビに対応できる。
class HistoryActionButtonLayer extends ButtonLayer
{
	// 未実装 var next; // 複数行に分割された時の、次のボタン(なければvoid)
	var exp = "";	// クリックされた時に実行されるTJS式

	// コンストラクタ
	function HistoryActionButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(...);
		visible = true;
		face    = dfAlpha;
		Butt_imageLoaded = true;	// イメージボタンとする。
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// サイズ変更。[hact]のための、透明・線引きボタンを作成
	// 結局 width/height の setter 書いても setSize()されるとすりぬけるので
	function setSize(w, h)
	{
		super.setSize(w, h);
		setImageSize(w*(Butt_showFocusImage ? 4 : 3), h);
		fillRect(0, 0, w, h, 0x00000000);
		var c = parent.historyColor;
		// 縦書きが中央揃えなので、薄色でfillすることに変更。いいのかな
		fillRect(0,  0, w,h, 0x30000000|c);
		fillRect(w,  0, w,h, 0x90000000|c);	// 押された時
		fillRect(w*2,0, w,h, 0x60000000|c);	// フォーカス1
		if (Butt_showFocusImage) {
			fillRect(w*3,0, w,h, 0x60000000|c); //フォーカス2
			fillRect(w*3+1,1, w-2,h-2,0x00000000);
		}
		Butt_imageLoaded = true;	// 強制的にイメージボタンにする
		// ↑本当は setter を再定義すればいいんだけど…
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		setOptions_sub(this, elm);

		// width/heightが指定されたら、透明・線引きボタン作成
		if (elm.width !== void || elm.height !== void)
			setSize(width, height);
	}

	// マウスがクリックされ、放された時
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
};


// 履歴上に表示するボタンレイヤ
class HistoryImageLayer extends Layer
{
	var graphic;	// 表示する画像

	// コンストラクタ
	function HistoryImageLayer(window, parent, elm)
	{
		super.Layer(window, parent);
		focusable = false;
		//デフォルト値設定
		visible = true;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);
		if (elm.graphic !== void) {
			loadImages(elm.graphic);
			setSizeToImageSize();
		}
	}
};


// KAG のヒストリレイヤ置き換え
if (kag.historyLayer instanceof "HistoryLayer") {
	// デフォルトだったら
	kag.remove(kag.historyLayer);
	invalidate kag.historyLayer if (kag.historyLayer !== void);
	kag.historyLayer = new ExtHistoryLayer(kag, kag.fore.base);
	kag.add(kag.historyLayer);
}


// tagnameを置き換えたヒストリタグを履歴に書きこむ
function storeTag(tagname, tagmp=%[])
{
	if ((f.transhistorytag !== void && !f.transhistorytag) ||
	    tagmp.nohistory || !kag.historyWriteEnabled)
		return;		// 実行しないならしない。

	var elm = %[];
	(Dictionary.assign incontextof elm)(tagmp);
	elm.tagname = tagname;
	kag.historyLayer.storeTag(elm);
}



// これを false にするとメッセージ画面の[font]とかをヒストリに反映しなくなる。
// デフォルトは enabled.
// グローバル変数にしちゃうのはちょっと汚いが、これだけのためにKAGPlugin
// 使うのもカッコ悪いのでグローバル変数に。
// void でも true と扱うようにしているので、[clearver]して void になっても
// 大丈夫。でも、その後で[history historytag=true]とかしといた方が安心。
f.transhistorytag = true;


// [history]タグを置き換え、historytag= と clear= 他を追加。
// bggraphic/prevgraphic/nextgraphic/closegraphic/slgraphic/sbbggraphic は
// 自動的に設定される
kag.tagHandlers.history_org_for_exthistorylayer = kag.tagHandlers.history;
kag.tagHandlers.history = function (elm) {
	tagHandlers.history_org_for_exthistorylayer(elm);
	f.transhistorytag = +elm.historytag if (elm.historytag !== void);
	// 履歴をクリアする引数 "clear=true" を追加
	historyLayer.clear() if (elm.clear);
	return 0;
} incontextof kag;


// [font]タグがきたら、[hfont]も同時に送るようにする
// [font]タグを置き換えてから、新規に[font]タグを定義
kag.tagHandlers.font_org_for_exthistorylayer = kag.tagHandlers.font;
kag.tagHandlers.font = function (elm) {
	tagHandlers.font_org_for_exthistorylayer(elm);
	storeTag('hfont', elm);
	return 0;
} incontextof kag;

// [ruby]タグを置き換える
kag.tagHandlers.ruby_org_for_exthistorylayer = kag.tagHandlers.ruby;
kag.tagHandlers.ruby = function (elm) {
	tagHandlers.ruby_org_for_exthistorylayer(elm);
	storeTag('hruby', elm);
	return 0;
} incontextof kag;


// [resetfont]タグを置き換える
kag.tagHandlers.resetfont_org_for_exthistorylayer = kag.tagHandlers.resetfont;
kag.tagHandlers.resetfont = function (elm) {
	tagHandlers.resetfont_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;


// [ct][cm][er]タグを置き換える。いずれも文字属性をリセット(resetfontと同じ)
kag.tagHandlers.cm_org_for_exthistorylayer = kag.tagHandlers.cm;
kag.tagHandlers.cm = function (elm) {
	tagHandlers.cm_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

kag.tagHandlers.ct_org_for_exthistorylayer = kag.tagHandlers.ct;
kag.tagHandlers.ct = function (elm) {
	tagHandlers.ct_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

kag.tagHandlers.er_org_for_exthistorylayer = kag.tagHandlers.er;
kag.tagHandlers.er = function (elm) {
	tagHandlers.er_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

/*
// [hact]タグを置き換える(というか消去)
kag.tagHandlers.hact = function (elm) {
	storeTag('hact', elm);
	return 0;
} incontextof kag;


// [endhact]タグを置き換える(というか消去)
kag.tagHandlers.endhact = function (elm) {
	storeTag('endhact', elm);
	return 0;
} incontextof kag;
先頭に注意 */

kag.tagHandlers.hch_org_for_exthistorylayer = kag.tagHandlers.hch;
kag.tagHandlers.hch = function (elm) {
	// 履歴に書くと[hhch]と二重に書かれてしまうので、履歴書き込みを禁止する
	var he_save = historyWriteEnabled;
	historyWriteEnabled = false;
	tagHandlers.hch_org_for_exthistorylayer(elm);
	historyWriteEnabled = he_save;
	storeTag('hhch', elm);
	return 0;
} incontextof kag;

// [graph]タグがきたら、[himage]も同時に送るようにする
// ただし、char=は無視してしまう。
kag.tagHandlers.graph_org_for_exthistorylayer = kag.tagHandlers.graph;
kag.tagHandlers.graph = function (elm) {
	tagHandlers.graph_org_for_exthistorylayer(elm);
	if (elm.alt === void)
		storeTag('himage', %[graphic:elm.storage, key:elm.key]);
	return 0;
} incontextof kag;


[endscript]


; eruby があれば読み込んで拡張
[if exp="Storages.isExistentStorage('eruby.ks')"]
	; [renamemacro]のために必要だった…
	[call storage=RenameKAGTag.ks]

	[call storage=eruby.ks]
	[renamemacro from=eruby to=eruby_exthistorylayer_org]
	[macro name="eruby"]
	; ヒストリ有効だと eruby 中にも文字が履歴に出力されるので一時停止
	[eval exp="mp.historyWriteEnabled_save = kag.historyWriteEnabled"]
	[history output=false]
	[eruby_exthistorylayer_org *]
	[history output=true cond="mp.historyWriteEnabled_save"]
	; で、デフォルト align を追加してhrubyを出力
	[eval exp="mp.align = 'e'" cond="mp.align === void"]
	[eval exp="storeTag('hruby', mp)"]
	[endmacro]
[endif]



[return]
