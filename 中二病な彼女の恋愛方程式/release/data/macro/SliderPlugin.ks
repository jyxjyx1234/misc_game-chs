[return cond="typeof(global.SliderLayer) != 'undefined'"]

; KAGからスライダーを表示させるプラグイン
; 2012/12/15	1.13	typo修正 setSizeTOImageSize　→　setSizeToImageSize
; 2010/11/27	1.12	KAGLayersPlugin の Verupに対応
; 2010/08/08	1.11	縦スライダのタブをドラッグできなかったバグを修正
;			tabheight/tabwidthのデフォルトを15に変更
;			縦スライダ時、UP/DOWNキーで値が上下するように変更
; 2010/08/01	1.10	step と varary を機能追加。
;			tabwidth/tabheight/bgopacityを全部小文字に統一(大文字
;			含むとKAGから指定できないため


[call storage=TJSFunctions.ks]
[call storage=KAGLayersPlugin.ks]

[iscript]

// スライダーレイヤー
class SliderLayer extends KAGLayer
{
	var name = "noname";

	var baseLayer;		// ベース画像
	var tabLayer;		// タブ画像

	var vertical = false;	// 縦スライダにするかどうか

	var min       = 0;	// 最小値
	var max       = 100;	// 最大値
	var step      = 0;	// ステップ。有段階の時指定(0で無段階)
	var valary    = void;	// 離散値を設定する時の配列(上三つを自動設定)

	var val;		// つまみ位置変数の参照文字列(global変数必須)
	var onchange;		// 位置移動時に実行するスクリプト文字列
	var tabwidth  = 15;	// つまみサイズ
	var tabheight = 15;	// つまみサイズ（縦用)
	var dragging  = false;	// ドラッグ中かどうか
	var dragOriginX;	// ドラッグ開始 X 位置
	var dragOriginY;	// ドラッグ開始 Y 位置
	var mouseOn   = false;	// マウスが領域内にあるかどうか
	var color     = clWindow; // 背景色
	var bgopacity = 192;	// 不透明度
	var baseimage = void;	// ベース画像ファイル名(voidで存在せず)
	var tabimage  = void;	// タブ画像ファイル名(voidで存在せず)

	// コンストラクタ
	function SliderLayer(win, par, name = "noname", elm)
	{
		this.name = name;
		super.KAGLayer(win, par);

		focusable = true; // フォーカスを得られる
		hitType = htMask;
		hitThreshold = 0;

		setOptions(elm);
	}

	// デストラクタ	
	function finalize()
	{
		invalidate baseLayer if (baseLayer !== void);
		invalidate tabLayer  if (tabLayer  !== void);
		super.finalize(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		// 可能なものは全部数値化しちゃう
		numerize_dic(elm);

		// 指定可能なオプションは全部ここで指定
		super.setOptions(elm);

		// 二重に設定しちゃうかもしれないけれど
		setOptions_sub(this, elm);
if (0) { // setOptions_sub()でやっちゃうので以下不要
		// KAGLayer プロパティの設定
		width       = +elm.width	if (elm.width       !== void);
		height      = +elm.height	if (elm.height      !== void);
		visible     = +elm.visible	if (elm.visible     !== void);

		// Slider プロパティの設定
		vertical    = +elm.vertical	if (elm.vertical    !== void);
		min         = +elm.min		if (elm.min         !== void);
		max         = +elm.max		if (elm.max         !== void);
		step        = +elm.step		if (elm.step        !== void);
		val         = elm.val		if (elm.val         !== void);
//		positionはここでは設定しなくてよい
		onchange    = elm.onchange      if (elm.onchange    !== void);
		tabwidth    = +elm.tabwidth	if (elm.tabwidth    !== void);
		tabheight   = +elm.tabheight	if (elm.tabHeigh    !== void);
//これらは	dragging    = +elm.dragging	if (elm.dragging    !== void);
//中途状態なのでdragOriginX = +elm.dragOriginX	if (elm.dragOriginX !== void);
//削除		dragOriginY = +elm.dragOriginY	if (elm.dragOriginY !== void);
//		mouseOn     = +elm.mouseOn	if (elm.mouseOn     !== void);
		color       = elm.color         if (elm.color       !== void);
		bgopacity   = elm.bgopacity     if (elm.bgopacity   !== void);
}
		if (elm.baseimage !== void)
			loadBase(baseimage);
		if (elm.tabimage !== void)
			loadTab(tabimage);
		if (valary !== void) {
			if (valary.count <= 1 && valary[0] == "")
				valary = void;	// valaryが空だった。
			else {
				min = 0;
				max = valary.count-1;
				step = 1;
			}
		}

		// setter で実行してると、この update() は無駄だが…いいや
		update();
	}

	// src の情報をこのオブジェクトにコピー
	function assign(src)
	{
		// その他の変数をコピー
		assignImages(src); // KAGLayerのassignImageは位置・サイズも対象

		name = src.name;

		// baseLayerをコピー
		baseLayer = void;
		if (src.baseLayer !== void) {
			if (baseLayer === void)
				baseLayer = new global.Layer(window, parent);
			baseLayer.assignImages(src.baseLayer);
		}

		// tabLayerをコピー
		tabLayer = void;
		if (src.tabLayer !== void) {
			if (tabLayer === void)
				tabLayer = new global.Layer(window, parent);
			tabLayer.assignImages(src.tabLayer);
		}

		vertical    = src.vertical;

		min         = src.min;
		max         = src.max;
		step        = src.step;
		valary      = src.valary;

		val         = src.val;
		onchange    = src.onchange;
		tabwidth    = src.tabwidth;
		tabheight   = src.tabheight;
		dragging    = src.dragging;
		dragOriginX = src.dragOriginX;
		dragOriginY = src.dragOriginY;
		mouseOn     = src.mouseOn;
		color       = src.color;
		bgopacity   = src.bgopacity;
		baseimage   = src.baseimage;
		tabimage    = src.tabimage;
	}

	// onPaint イベントで呼ばれる
	// レイヤの内容を描画する
	function onPaint()
	{
		super.onPaint(...);

		// よく使う値をローカル変数に用意する
		var imw = imageWidth, imh = imageHeight;

		if (baseLayer !== void) {
			copyRect(0, 0, baseLayer, 0, 0, imw, imh);
		} else {
			// 下敷きを塗る
			fillRect(0, 0, imw, imh, 0);
				colorRect(0, 0, imw, imh, color, bgopacity);
		}
		
		if (focused)	{
			// フォーカスがあるのでハイライトする
			colorRect(0, 0, width-1, 1, clHighlight, 128);
			colorRect(0, 1, 1, height-2, clHighlight, 128);
			colorRect(0, height-1, width, 1, clHighlight, 128);
			colorRect(width-1, 0, 1, height-1, clHighlight, 128);
		}
		
		if (vertical) {
			// 縦方向スライダーの時
			var tabh = tabheight;
			var htabh = tabh >> 1;
			
			// 中央のへこみ線
			//if (baseLayer === void) {
			//var himh = imh >> 1;
			//var right = imw - tabh;
			//fillRect(htabh, himh - 1, right, 1, 0x80000000);
			//fillRect(htabh, himh	, right, 1, 0x80ffffff);
			//}
			
			// タブ(画面の上側を大きな値にするために捻る)
			var pos_y = imageHeight -
			  (((position-min)*(imh-tabh-2)/(max-min))+htabh+1);
			var x_htabh = pos_y - htabh;
			
			if (tabLayer !== void) {
				
				var tabw = tabwidth;
				var tabx = (imw - tabw) / 2;

				if (dragging) {
					// on
					operateRect(tabx, x_htabh, tabLayer, tabw, 0, tabw, tabh);
				} else if (mouseOn) {
					// over
					operateRect(tabx, x_htabh, tabLayer, tabw*2, 0, tabw, tabh);
				} else {
					// normal
					operateRect(tabx, x_htabh, tabLayer, 0, 0, tabw, tabh);
				}
				
			} else {
				fillRect(0, x_htabh, imw, tabh, 0xffffff + (nodeEnabled ? 0 : 0xc0000000));
				if (mouseOn) {
					colorRect(0, x_htabh, imw, tabh, clHighlight, 64);
				}
				colorRect(0, x_htabh + 1, 1, tabh-2, 0xffffff, 128);
				colorRect(imw - 1, x_htabh + 1, 1, tabh-2, 0x000000, 128);
				colorRect(0, x_htabh, width, 1, 0xffffff, 128);
				colorRect(0, pos_y + htabh - 1, width, 1, 0x000000, 128);
			}

			
		} else {
			// 横方向スライダーの時
			var tabw = tabwidth;
			var htabw = tabw >> 1;
			
			// 中央のへこみ線
			//if (baseLayer === void) {
			//var himh = imh >> 1;
			//var right = imw - tabw;
			//fillRect(htabw, himh - 1, right, 1, 0x80000000);
			//fillRect(htabw, himh	, right, 1, 0x80ffffff);
			//}
			
			// タブ
			var pos_x = ((position-min)*(imw-tabw-2)/(max-min))
								+ htabw + 1;
			var x_htabw = pos_x - htabw;
			
			if (tabLayer !== void) {
				
				var tabh = tabheight;
				var taby = (imh - tabh) / 2;
				
				if (dragging) {
					// on
					operateRect(x_htabw, taby, tabLayer, tabw, 0, tabw, tabh);
				} else if (mouseOn) {
					// over
					operateRect(x_htabw, taby, tabLayer, tabw*2, 0, tabw, tabh);
				} else {
					// normal
					operateRect(x_htabw, taby, tabLayer, 0, 0, tabw, tabh);
				}
				
			} else {
				fillRect(x_htabw, 0, tabw, imh, 0xffffff + (nodeEnabled ? 0 : 0xc0000000));
				if (mouseOn) {
					colorRect(x_htabw, 0, tabw, imh, clHighlight, 64);
				}
				colorRect(x_htabw + 1, 0, tabw-2, 1, 0xffffff, 128);
				colorRect(x_htabw + 1, imh - 1, tabw-2, 1, 0x000000, 128);
				colorRect(x_htabw, 0, 1, height, 0xffffff, 128);
				colorRect(pos_x + htabw - 1, 0, 1, height, 0x000000, 128);
			}
		}
	}

	// スライダーを最大値に設定する
	function toMax() {
		position = max;
	}

	// スライダーを最小値に設定する
	function toMin() {
		position = min;
	}

	// スライダーを一段階左(上)に動かす(=大きくする)
	function toLeft(x) {
		if (x === void) {
			if (step != 0)
				x = step;
			else if (vertical)
				x = (max-min)/(tabheight-2);
			else
				x = (max-min)/(tabwidth -2);
		}
		position += x;
	}

	// スライダーを一段階右(下)に動かす(=小さくする)
	function toRight(x) {
		if (x === void) {
			if (step != 0)
				x = step;
			else if (vertical)
				x = (max-min)/(tabheight-2);
			else
				x = (max-min)/(tabwidth -2);
		}
		position -= x;
	}
	
	// キーが押された
	function onKeyDown(key, shift, process)
	{
		if (!process && key != VK_LEFT && key != VK_RIGHT) {
			// process が false の場合は処理は行わない
			super.onKeyDown(...);
			return;
		}
		if(!vertical && key == VK_LEFT || vertical && key == VK_UP) {
			(shift & ssAlt) ? toLeft(1) : toLeft();	 // 左へ
			// 処理したのでprocessにfalseを渡す
			super.onKeyDown(key, shift, false);
		} else 
		if(!vertical && key == VK_RIGHT || vertical && key == VK_DOWN){
			(shift & ssAlt) ? toRight(1) : toRight(); // 右へ
			// 処理したのでprocessにfalseを渡す
			super.onKeyDown(key, shift, false);
		}
	}

	// マウスボタンが押された
	function onMouseDown(x, y, button)
	{
		focus();
		super.onMouseDown(...);

		if (button == mbLeft) {
			if (vertical) {
				var tabh = tabheight;
				var htabh = tabh >> 1;
				var pos_y = imageHeight - (
					(position-min) * (imageHeight-tabh-2)/(max-min) + htabh+1);
				if(pos_y - htabh > y) {
					// タブより上
					toLeft();
				} else if(pos_y + htabh < y) {
					// タブより下
					toRight();
				} else {
					// タブ上だったら、ドラッグを開始
					dragging = true;
					dragOriginY = y - pos_y;
				}
			} else {
				var tabw = tabwidth;
				var htabw = tabw >> 1;
				var pos_x = (
					(position-min) * (imageWidth-tabw-2)/(max-min)) + htabw+1;
				if(pos_x - htabw > x) {
					// タブより右
					toRight();
				} else if(pos_x + htabw < x) {
					// タブより左
					toLeft();
				} else {
					// タブ上だったら、ドラッグを開始
					dragging = true;
					dragOriginX = x - pos_x;
				}
			}
		}
	}

	// マウスボタンが離された
	function onMouseUp(x, y, button)
	{
		super.onMouseUp(...);
		if (dragging)
			dragging = false;
//		// 離散の場合は位置補正
//		if (
	}

	// マウスが移動した
	function onMouseMove(x, y)
	{
		super.onMouseMove(...);

		if(dragging)
		{
			// タブをドラッグ
			var len = max-min;
			if (vertical) {
				position = (
					(y-dragOriginY-(tabheight/2))*(-len) /
					(imageHeight - tabheight - 2) + max);
			} else {
				position = (
					(x-dragOriginX-(tabwidth/2))*(len) /
					(imageWidth - tabwidth - 2) + min);
			}
		}
	}

	// マウスがレイヤ領域内に入った
	function onMouseEnter()
	{
		update();
		mouseOn = true;
		super.onMouseEnter(...);
	}

	// マウスがレイヤ領域から出た
	function onMouseLeave()
	{
		update();
		mouseOn = false;
		dragging = false;
		super.onMouseLeave(...);
	}

	// フォーカスを得た
	function onFocus()
	{
		super.onFocus(...);
		update();
	}

	// フォーカスを失った
	function onBlur()
	{
		super.onBlur(...);
		update();
	}

	// レイヤのノードが不可になった
	function onNodeDisabled()
	{
		super.onNodeDisabled(...);
		update();
	}

	// レイヤのノードが有効になった
	function onNodeEnabled()
	{
		super.onNodeEnabled(...);
		update();
	}

	// 幅を設定する時の setter やら
	property width
	{
		setter(x)
		{
			super.width = x;
			imageWidth = x;
			update();
		}
		getter
		{
			return super.width;
		}
	}
	
	// 高さを設定する時の setter やら
	property height
	{
		setter(x)
		{
			super.height = x;
			imageHeight = x;
			update();
		}
		getter
		{
			return super.height;
		}
	}

	// 位置を設定する時の setter やら。インデックスを渡し、返す。
	// valary が設定されている時は整数インデックスを渡し、返す。
	property position
	{
		setter(x)
		{
			x = +x;	// 数値にしないとエラいことに。
			dm("set to slider position: " + x);
			// stepがあればstepにあわせて四捨五入
			// stepが実数の場合があるので、%は使えない)
			if (step != 0 && int(x/step)*step != x) {
				x -= min;	// 正の整数にする
				if ((x - int(x/step)*step)/step < 0.5)
					x = int(x/step)*step;
				else
					x = int(x/step+1)*step;
				x += min;	// 元に戻す
			}
			if (x < min) x = min;
			if (x > max) x = max;
			dm("adjusted position: " + x);

			var tmp = (valary===void) ? x : valary[x];
			Scripts.eval("("+val+") = " + tmp);
			update();
			if (onchange !== void)
				Scripts.eval(
					onchange+"(("+val+"), ("+dragging+"))"
					// onchange(val, dragging) を実行する
				);
			// onChange(Scripts.eval(val), dragging);
		}
		getter
		{
			if (valary === void)
				return Scripts.eval(val);
			else {
				var tmp = Scripts.eval(val);
				for (var i = valary.count-1; i >= 0; i--)
					if (valary[i] == tmp)
						return i;
				// ここに来るとエラー
				return -1;
			}
		}
	}

//	function onChange(value, dragging)
//	{	これは onchange() でやっちゃうので削除
//	}

	/**
	 * ベース画像を読み込む
	 * @param storage 画像。このサイズのボタンになる
	 */
	function loadBase(storage, key)
	{
		if (baseLayer === void) {
			baseLayer = new global.Layer(window, parent);
		}
		baseLayer.loadImages(storage, key);
		baseLayer.setSizeToImageSize();
		width  = baseLayer.width;
		height = baseLayer.height;
	}

	/**
	 * タブ画像を読み込む
	 * @param storage 画像  通常/押し下げ/オーバーが連結された画像
	 */
	function loadTab(storage, key) {
		if (tabLayer === void) {
			tabLayer = new global.Layer(window, parent);
		}
		tabLayer.loadImages(storage, key);
		tabLayer.setSizeToImageSize();
		tabwidth  = tabLayer.imageWidth / 3;
		tabheight = tabLayer.imageHeight;
	}
	
	/**
	 * 分離ボタン画像の読み込み
	 * @param normal 通常時画像
	 * @param over オーバー時画像
	 * @param on 押し下げ時画像
	 */
	function loadTabs(normal, over, on) {
		if (tabLayer === void) {
			tabLayer = new global.Layer(window, parent);
		}
		var temp = window.temporaryLayer;
		temp.loadImages(normal);
		var w = temp.imageWidth;
		var h = temp.imageHeight;
		tabLayer.imageWidth  = w * 3;
		tabLayer.imageHeight = h;
		tabLayer.copyRect(0, 0, temp, 0, 0, w, h);
		if (over !== void) {
			temp.loadImages(over);
		}
		tabLayer.copyRect(w*2, 0, temp, 0, 0, w, h);
		if (on !== void) {
			temp.loadImages(on);
		}
		tabLayer.copyRect(w, 0, temp, 0, 0, w, h);
		tabwidth = w;
		tabheight = h;
	}
}


// スライダーを初期化する
function slider_init(layer="base")
{
	var forelayer, backlayer;

	// ベースレイヤだった場合	
	if (layer == 'base') {
		forelayer = kag.fore.base;
		backlayer = kag.back.base;
	}
	// メッセージレイヤだった場合
	else if (layer.length >= 8 && layer.substring(0,7) == 'message') {
		forelayer = kag.fore.messages[+layer.substring(7)];
		backlayer = kag.back.messages[+layer.substring(7)];
	}
	// 通常レイヤだった場合
	else if (layer.length >= 6 && layer.substring(0,5) == 'layer') {
		forelayer = kag.fore.layers[+layer.substring(5)];
		backlayer = kag.back.layers[+layer.substring(5)];
	}
	else {
		System.inform("slider_init に 適切な layer が" +
			      "指定されませんでした。layer = " + layer);
		forelayer = kag.fore.base;
		backlayer = kag.back.base;
		// とりあえず base を指定してしのぐ
	}

	if (typeof(global.sliderplugin_obj) != 'undefined')
		kag.removePlugin(global.sliderplugin_obj);
	kag.addPlugin(
		global.sliderplugin_obj = new KAGLayersPlugin(kag, SliderLayer,
							forelayer, backlayer)
	);
}

// テンポラリの値。通常使われないけど、val を設定しなかった時に使用される
tf.sliderplugin_tmpval = 0;

// 初期状態で slider_initしておく
slider_init();

[endscript]


; スライダー初期化
[macro name="slider_init"]
[eval exp="slider_init(mp.layer)"]
[endmacro]


; スライダーを表示
[macro name="slider"]
[eval exp="mp.val = 'tf.sliderplugin_tmpval'" cond="mp.val === void"]
[eval exp="mp.visible = true" cond="mp.visible == void"]
[eval exp="mp.valary = mp.valary.split(/ +/)" cond="mp.valary !== void"]
[eval exp="global.sliderplugin_obj.add(mp.name, mp.page, mp)"]
[endmacro]


; スライダーオプションを設定
[macro name="slider_opt"]
[eval exp="global.sliderplugin_obj.setOptions(mp.name, mp.page, mp)"]
[endmacro]


; スライダーを削除
[macro name="slider_erase"]
[eval exp="mp.valary = mp.valary.split(/ +/)" cond="mp.valary !== void"]
[eval exp="global.sliderplugin_obj.del(mp.name, mp.page)"]
[endmacro]

[return]
