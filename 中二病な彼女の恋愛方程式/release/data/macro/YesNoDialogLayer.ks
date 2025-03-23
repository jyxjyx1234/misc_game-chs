@return cond="typeof(global.ImageDialogLayerPlugin_obj) != 'undefined'"
@iscript

// YesNoDialogLayer.ks - はい/いいえを選択するダイアログボックスをLayerで表示
//
// ・不定形・かつ半透明部分を含む確認ダイアログボックスを表示する
// ・ダイアログ本体、はい/いいえボタンにはαチャンネルつき画像を用いる
// ・メッセージは最大横幅（message.width）に収まるよう自動改行される。
// ・最大縦幅（message.height）を超える長いメッセージの場合、途中で切れる
// ・ダイアログは必ず画面中央に表示される
// ・縦書き対応(のはず)
// ・オーバーレイでのムービー再生時などには手動で元に戻す必要あり。
//
// 2014/10/27	0.4	・ImageDialogLayerPluginクラスのデストラクタで、fore/
//			　backlayerのinvalidateを、それぞれが有効な時のみに限定
//			　初回のinvalidateが失敗する可能性があったため。
// 2013/12/29	0.3	・KAGマクロ[yesnodialog][okdialog]追加
//			・OKDialogLayer()にokparamを渡してなかった箇所を修正
//			・YesNoDialogLayer()のelm.yes→elm.yesubuttonに修正
//			・YesNoDialogLayer()のelm.no→elm.nobuttonに修正
//			・OKDialogLayer.setOptions()で除外条件を追加
// 2013/11/24	0.23	・指定した文字列に'\n'があれば、表示も改行するよう修正
// 2013/10/22	0.22	・saveBoolMarkWithAsk()→saveBookMarkWithAsk()に修正
//			　loadBookMarkWithAsk()側も同じく…
// 2012/08/20	0.21	・「最初に戻る」でkag.onKeyDown()等を消去してたのを修正
//			・goToStartWithAsk()でメッセージ指定がなかったのを修正
// 2012/08/19	0.2	・enabled=falseでフェードイン・アウト中click付加に
//			・ダイアログ表示中はonMouse/onKeyなどを無効化
//			・ダイアログ表示中にダイアログをsetMode()した
// 2012/08/08	0.1	Layerを使ってフルリライト



// onwer(ここではImageDialogLayer)をフェードイン・アウトさせるクラス
// 透明度を変化させて表示・非表示にする
class ImageDialogLayerFade {
	var w;
	var owner;			// ImageDialogLayer
	var time;			// フェードイン・アウトにかかる時間

	// 以下は一時変数
	var owner_endFunc_org;		// owner.endFuncのオリジナル
	var starttime;			// フェード開始時間
		var STOP=0, FADING_IN=1, FADING_OUT=2;
	var status = STOP;		// フェード状態
	var endfunc_param = %[];

	// コンストラクタ
	function ImageDialogLayerFade(owner, time=200)
	{
		this.owner = owner;
		this.time  = time;
		w = owner.window;

		owner_endFunc_org = owner.endFunc;
		owner.endFunc = endFunc;

		startFadein();
	}

	// デストラクタ
	function finalize()
	{
		owner.endFunc = owner_endFunc_org;
	}

	// ownerのendFunc()の代わりにfadeoutを開始する
	function endFunc(pushed, onfunc, param)
	{
		if (pushed && onfunc !== void) {
			// 実行するものがある時はすぐ実行
			owner_endFunc_org(pushed, onfunc, param);
			return;
		}
		// キャンセルなど、実行するものがないときはfadeout
		endfunc_param.pushed = pushed;
		endfunc_param.onfunc = onfunc;
		endfunc_param.param  = param;
		startFadeout();
	}

	// fade 中かどうか
	function isFading()
	{
		return status == FADING_IN || status == FADING_OUT;
	}

	// フェードイン開始
	function startFadein()
	{
		if (isFading())
			return;
		starttime = System.getTickCount();
		owner.opacity = 0;
		owner.enabled = false;
		status = FADING_IN;
		System.addContinuousHandler(continueFadein);
	}

	// フェードインを終了する
	function stopFadein()
	{
		status = STOP;
		owner.opacity = 255;
		owner.enabled = true;
		if (owner.parent == w.fore.base) {	// foreの時だけ
			w.focusedLayer = owner;	// フォーカス
			owner.setMode();		// モーダル状態に
		}
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
		if (isFading())
			return;
		starttime = System.getTickCount();
		owner.opacity = 255;
		owner.enabled = false;
		status = FADING_OUT;
		System.addContinuousHandler(continueFadeout);
	}

	// フェードアウトを終了する
	function stopFadeout()
	{
		status = STOP;
		w.update();
		owner.opacity = 0;
		owner.enabled = false;
		System.removeContinuousHandler(continueFadeout);
		var e = endfunc_param;
		owner_endFunc_org(e.pushed, e.onfunc, e.param);
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


// 不定形・半透明ダイアログボックスを実現するクラス。
class ImageDialogLayer extends Layer
{
	var imageleft, imagetop;	// 画像を貼り付ける座標(def=画面中央)
	var fontdat = %[];		// antialiased/color/opacityを設定
	var shadow  = %[];		// メッセージの影
	var message = %[];		// メッセージの表示
	var fadetime = 200;		// フェード時間
	var fadeobj;			// フェードインスタンス
	var menudisable = false;	// 実行時メニューを押せなくするか
	// 以下テンポラリ
	var menuenabledary = [];

	// コンストラクタ
	function ImageDialogLayer(w, p, elm = %[])
	{
		super.Layer(w, p);
		// 親ウィンドウと同じサイズに
		setImageSize(w.scWidth, w.scHeight);
		setPos(0, 0, w.scWidth, w.scHeight);
		absolute = 100000000000;	// 表示優先順位を最大に
		face = dfAlpha;			// …になってるはずだけど一応
		hitThreshold = 0;		// 全ての入力を吸い込む

		// オプション設定。イメージを読み込んで表示もこの中で。
		setOptions(elm);

		// 理由は全くわからないが、こうしないとボタンが押せない…
		if (w.historyLayer.visible) { // historyLayerがmodalだからかな
			w.historyLayer.enabled = false;
			w.historyLayer.enabled = true;
		}

		// メニューを全てdisableにする(menudisableに依存)
		menuEnabledDisabled(false);

		opacity = 0;			// 最初は透明に
		enabled = false;		// 最初はボタン押せないように
		visible = true;			// そして表示
// ↓既にモーダルまたは非表示レイヤはモーダルにできませんって言われる…
//		setMode(); // モーダル状態に(visible前はできないのでここで)

		fadeobj = new ImageDialogLayerFade(this, fadetime);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
		// メニューをenableに戻す
		invalidate fadeobj;
		menuEnabledDisabled(true);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		absolute    = +elm.absolute    if (elm.absolute    !== void);
		menudisable = +elm.menudisable if (elm.menudisable !== void);
		fadetime    = +elm.fadetime    if (elm.fadetime    !== void);
		if (elm.font !== void) {
			var f = elm.font;
			font.face       = f.face     if (f.face    !== void);
			font.angle      = +f.angle   if (f.angle   !== void);
			font.bold       = +f.bold    if (f.bold    !== void);
			font.height     = +f.height  if (f.height  !== void);
			fontdat.color   = +f.color   if (f.color   !== void);
			fontdat.opacity = +f.opacity if (f.opacity !== void);
			if (f.antialiased === void)
				fontdat.antialiased = +f.antialiased;
		}
		if (elm.shadow !== void) {
			var s = elm.shadow;
			shadow.level   = +s.level   if (s.level   !== void);
			shadow.color   = +s.color   if (s.color   !== void);
			shadow.width   = +s.width   if (s.width   !== void);
			shadow.offsetx = +s.offsetx if (s.offsetx !== void);
			shadow.offsety = +s.offsety if (s.offsety !== void);
		}
		if (elm.message !== void) {
			var m = elm.message;
			message.alignx = m.alignx if (m.alignx  !== void);
			message.aligny = m.aligny if (m.aligny  !== void);
			message.left   = +m.left  if (m.left    !== void);
			message.top    = +m.top   if (m.top     !== void);
			if (m.width   !== void && m.width != 0)
				message.width  = +m.width;
			if (m.height  !== void && m.height != 0)
				message.height = +m.height;
			if (m.vertical !== void) {
				message.vertical = +m.vertical;
				if (!m.vertical) {
					// 横書き時
					font.angle = 0;
					if (font.face[0] == '@')
						font.face =font.face.substr(1);
				} else {
					// 縦書き時
					font.angle = 2700;
					if (font.face[0] != '@')
						font.face = "@" + font.face;
				}
			}
		}
		if (elm.image !== void) {
			fillRect(0, 0, width, height, 0);	// 透明に
			var image = new .Layer(window, parent);	// 画像読み込み
			image.loadImages(elm.image);
			image.setSizeToImageSize();
			imageleft = (width -image.width )/2;
			imagetop  = (height-image.height)/2;
			imageleft = +elm.left if (elm.left !== void);
			imagetop  = +elm.top  if (elm.top  !== void);
			copyRect(imageleft,imagetop,
				 image, 0,0,image.width,image.height);
			// メッセージ領域のいいかんげんな自動調整を実施
			if (message.width == 0 ||
			    message.left+message.width > image.width)
				message.width = image.width - message.left*2;
			if (message.height == 0 ||
			    message.top+message.height > image.height)
				message.height = image.height-message.top*2;
			invalidate image;
		}
	}

	// メニューをenable/disableする。これが遅いのが気になる…
	// 開始時にwindow.menu.visible = false、終了時にtrueにすると
	// 早くなるが、それだと今度は画面がちらつく。
	function menuEnabledDisabled(enabled = true)
	{
		if (!menudisable)
			return;
		var i, menuchildren = window.menu.children;
		if (enabled) {
			for (i = menuchildren.count-1; i >= 0; i--)
				menuchildren[i].enabled = menuenabledary[i];
		} else {
			menuenabledary.count = 0;
			for (i = menuchildren.count-1; i >= 0; i--) {
				menuenabledary[i] = menuchildren[i].enabled;
				menuchildren[i].enabled = false;
			}
		}
	}

	// 画面に収まるようにメッセージを改行で分割する(禁止処理なし)
	function getLines(str)
	{
		var lines = [];
		var remainder = str.length;	// 残りの文字数
		var start = 0;			// 行頭のインデックス
		var num = 1;			// message.widthに納まる文字数
		var w = (message.vertical) ? message.height : message.width;
		while (remainder > 0) {
			// 幅message.width/heightピクセルに納まる文字数を調べる
			for (var i = 1; i <= remainder; i++) {
				if (str[start+i-1] == '\n'){// 改行ならすぐ終わる
					num = i;
					break;
				}
				if (font.getTextWidth(str.substr(start,i)) > w)
					break;
				num = i;
			}
			// 文字列(str[start]～str[start+num])を配列に登録
			lines.add(str.substr(start, num));
			// 行頭のインデックス、残りの文字数を更新
			start += num;
			remainder -= num;
		}
		return lines;
	}

	// 表示する文字列の表示開始左上X座標を求める(横書き用)
	function getPosX_H(str)
	{
		var ret = message.left;
		if (message.alignx == 'c')
			ret += (message.width - font.getTextWidth(str))\2;
		else if (message.alignx == 'r')
			ret += message.width-font.getTextWidth(str);
		// else // if (message.alignx == 'l')左寄の場合は何もしない
		return ret;
	}

	// 表示する文字列の表示開始左上Y座標を求める(横書き用)
	function getPosY_H(lines)
	{
		var ret = message.top;

		var th = 0;		// ラインドット数を求める
		for (var i = 0; i < lines.count; i++)
			th += font.getTextHeight(lines[i]);

		if (message.aligny == 'c')
			ret += (message.height - th)\2;
		else if (message.aligny == 'b')
			ret += message.height - th;
		// else // if (message.aligny == 't')上寄の場合は何もしない
		return ret;
	}

	// 表示する文字列の表示開始左上X座標を求める(縦書き用)
	function getPosX_V(lines)
	{
		var ret = message.left+message.width;

		var tv = 0;		// ラインドット数を求める
		for (var i = 0; i < lines.count; i++)
			tv += font.getTextHeight(lines[i]);

		if (message.alignx == 'c')
			ret -= (message.width - tv)\2;
		else if (message.alignx == 'l')
			ret -= message.width - tv;
		// else // if (message.alignx == 'r')右寄の場合は何もしない
		return ret;
	}

	// 表示する文字列の表示開始左上Y座標を求める(縦書き用)
	function getPosY_V(str)
	{
		var ret = message.top;
		if (message.aligny == 'c')
			ret += (message.height - font.getTextWidth(str))\2;
		else if (message.aligny == 'b')
			ret += message.height - font.getTextWidth(str);
		// else // if (message.aligny == 't')上寄の場合は何もしない
		return ret;
	}

	// メッセージ表示(横書き用)
	function dispMessage_H(str)
	{
		var lines = getLines(str);	// 領域内に収まるよう分割する
		var y = getPosY_H(lines);
		var s = shadow;
		// 分割したメッセージを一行ずつ描画する
		for (var i = 0; i < lines.count; i++) {
			if (y+font.height > message.top+message.height) {
				Debug.notice("dispMessage_H(): 表示するメッセージが長すぎます("+str+")");
				break;
			}
			drawText(imageleft+getPosX_H(lines[i]), imagetop+y,
				lines[i], fontdat.color,
				fontdat.opacity, fontdat.antialiased,
				s.level, s.color, s.width,
				s.offsetx, s.offsety);
			y += font.height;
		}
	}

	// メッセージ表示(縦書き用)
	function dispMessage_V(str)
	{
		var lines = getLines(str);	// 領域内に収まるよう分割する
		var x = getPosX_V(lines);
		var s = shadow;
		// 分割したメッセージを一行ずつ描画する
		for (var i = 0; i < lines.count; i++) {
			if (x < message.left) {
				Debug.notice("dispMessage_V(): 表示するメッセージが長すぎます("+str+")");
				break;
			}
			drawText(imageleft+x, imagetop+getPosY_V(lines[i]),
				lines[i], fontdat.color,
				fontdat.opacity, fontdat.antialiased,
				s.level, s.color, s.width,
				s.offsetx, s.offsety);
			x -= font.height;
		}
	}

	// メッセージ表示
	function dispMessage(str)
	{
		if (!message.vertical)
			dispMessage_H(str);	// 横書きの場合
		else
			dispMessage_V(str);	// 縦書きの場合
	}

	// マウスが押して離された
	function onMouseUp(x, y, button, shift)
	{
		if (button == mbRight)	// 右クリックならキャンセルとする
			endFunc(false);
	}

	// 終了前処理。自分を削除するので AsyncTriggerを使う
	function endFunc(pushed, onfunc, param)
	{
		var t = global.ImageDialogLayerPlugin_obj;
		t.pushed = pushed;
		t.onfunc = onfunc;
		t.param  = param;
		// 終了処理はglobal.ImageDialogLayerPlugin_objの中で
		t.trigger = new AsyncTrigger(t, 'ImageDialogLayerEndfunc');
		t.trigger.cached = true;
		t.trigger.trigger();
	}
};


// はい・いいえ・O.K.を表示するボタン。onExecute()を実行するのが異なる
class YesNoOkButtonLayer extends ButtonLayer {
	var onfunc;	// 押された時に実行される関数
	var param;	// onfunc(param)のように呼び出す
	// コンストラクタ
	function YesNoOkButtonLayer(window, parent, onfunc, param, elm)
	{
		super.ButtonLayer(window, parent);
		this.onfunc = onfunc;
		this.param  = param;
		visible     = 1;
		setOptions(elm);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		left = +elm.left      if (elm.left  !== void);
		top  = +elm.top       if (elm.top   !== void);
		loadImages(elm.image) if (elm.image !== void);
	}

	// ボタンがマウスで押された時に関数を実行。
	function onExecute(x, y, button, shift)
	{
		// 左クリックでYes、それ以外はNo.
		parent.endFunc(button == mbLeft, onfunc, param);
	}

// 今はパッドを考慮していないので注意
};


// はい・いいえ ダイアログを表示するクラス。elm.yes/no は指定必須なので注意
class YesNoDialogLayer extends ImageDialogLayer {
	var yesbutton, nobutton;	// 「はい」「いいえ」ボタン

	// コンストラクタ
	function YesNoDialogLayer(w, p, message, yesfunc,yesparam, nofunc,noparam, elm)
	{
		super.ImageDialogLayer(w, p, elm);

		yesbutton= new YesNoOkButtonLayer(w,this,yesfunc,yesparam,elm.yesbutton);
		nobutton = new YesNoOkButtonLayer(w,this,nofunc, noparam, elm.nobutton );
		setOptions_local(elm);

		yesbutton.visible = true;
		nobutton.visible = true;

		dispMessage(message);
	}

	// デストラクタ
	function finalize()
	{
		invalidate yesbutton;
		invalidate nobutton;
		super.finalize(...);
	}

	// オプション設定(このクラスのみ)
	function setOptions_local(elm)
	{
		if (elm === void)
			return;
		// コンストラクタ一行目から呼ばれたときはthis.yesbuttonはvoid
		// なので除外する
		if (elm.yesbutton !== void && yesbutton !== void) {
			var eyb = elm.yesbutton;
			if (eyb.left !== void)
				yesbutton.left = +eyb.left+imageleft;
			if (eyb.top !== void)
				yesbutton.top  = +eyb.top +imagetop;
			yesbutton.image = eyb.image if (eyb.image !== void);
			yesbutton.loadImages(eyb.image) if (eyb.image!==void);
			yesbutton.setPos(yesbutton.left, yesbutton.top);
		}
		// コンストラクタ一行目から呼ばれたときはthis.nobuttonはvoid
		// なので除外する
		if (elm.nobutton !== void && nobutton !== void) {
			var enb = elm.nobutton;
			if (enb.left !== void)
				nobutton.left  = +enb.left+imageleft;
			if (enb.top !== void)
				nobutton.top   = +enb.top +imagetop;
			nobutton.image = enb.image if (enb.image !== void);
			nobutton.loadImages(enb.image) if (enb.image!==void);
			nobutton.setPos(nobutton.left, nobutton.top);
		}
	}

	// オプション設定
	function setOptions(elm)
	{
		super.setOptions(elm);
		setOptions_local(elm);
	}
};


// 確認ダイアログを表示するクラス。aboutなどで使える。かも。
class OKDialogLayer extends ImageDialogLayer {
	var okbutton;			// OKボタン

	// コンストラクタ
	function OKDialogLayer(window, parent, message, okfunc, okparam, elm)
	{
		super.ImageDialogLayer(window, parent, elm);

		okbutton = new YesNoOkButtonLayer(window,this,okfunc,okparam,elm.okbutton);
		setOptions_local(elm);

		okbutton.visible = true;

		dispMessage(message);
	}

	// デストラクタ
	function finalize()
	{
		invalidate okbutton;
		super.finalize(...);
	}

	// オプション設定(このクラスのみ)
	function setOptions_local(elm)
	{
		super.setOptions(elm);
		if (elm === void)
			return;
		// コンストラクタの一行目から呼ばれた場合、this.okbuttonはvoid
		// なので除外する
		if (elm.okbutton !== void && okbutton !== void) {
			var eyb = elm.okbutton;
			if (eyb.left !== void)
				okbutton.left = +eyb.left+imageleft;
			if (eyb.top !== void)
				okbutton.top  = +eyb.top +imagetop;
			okbutton.image = eyb.image if (eyb.image !== void);
			okbutton.loadImages(eyb.image) if (eyb.image!==void);
			okbutton.setPos(okbutton.left, okbutton.top);
		}
	}

	// オプション設定
	function setOptions(elm)
	{
		super.setOptions(elm);
		setOptions_local(elm);
	}
};


// YesNoDialogLayer/OKDialogLayerのKAGプラグイン
class ImageDialogLayerPlugin extends KAGPlugin {
	var win;
	var forelayer, backlayer;
	var lastyesno = false;		// 最後に実行した yesno の結果
	var yesfunc, yesparam;		// yesが押された時に実行する関数
	var nofunc,  noparam;		// noが押された時に実行する関数
	var replacefuncary1 = [ // プラグイン開始時までに登録する関数郡
		"onCloseQuery",        "onCloseQuery_2nd", 
		"goBackHistory",       "goBackHistory_2nd",
		"saveBookMarkWithAsk", "saveBookMarkWithAsk_2nd",
		"loadBookMarkWithAsk", "loadBookMarkWithAsk_2nd",
		"goToStartWithAsk",    "goToStartWithAsk_2nd"
	];

	var replacefuncary2 = [ // ダイアログ表示～終了まで登録する関数郡
		"onActivate",          "onClick", 
		/*"onCloseQuery",*/    "onDeactivate",
		"onDoubleClick",       "onFileDrop",
		"onKeyDown",           "onKeyPress",
		"onKeyUp",             "onMouseDown",
		"onMouseEnter",        "onMouseLeave",
		"onMouseMove",         "onMouseUp",
		"onMouseWheel",        "onPopupHide"
		/// "onResize" は WindowResizableで使うので除く
	];

	var orgfuncary1 = %[], orgfuncary2 = %[];
	var options = %[
		enabled  : true,		// 有効にするかどうか
		image    : "YesNoDialog", 	// YesNoダイアログの画像
		absolute : 100000000,		// 表示優先順位を最大に
		font : %[
		//	face        : m.defaultFace,
		//	angle       : m.vertical ? 2700 : 0,
		//	bold        : m.defaultBold,
		//	height      : m.defaultFontSize,
		//	antialiased : m.defaultAntialiased,
		//	color       : m.defaultChColor,
		//	opacity     : 255
		],
		message : %[			// メッセージの表示
			alignx  : 'c',		// X方向アライン
			aligny  : 'c',		// Y方向アライン
			left    : 20,		// メッセージ枠の左上隅Ｘ座標
			top     : 20,		// 同、左上隅Ｙ座標
			width   : 0,		// メッセージ枠の最大横幅
			height  : 0,		// 同、最大縦幅
		//	vertical: m.vertical	// 縦書きフラグ(def=横書き)
		],
		shadow : %[],
		yesbutton : %[			// 「はい」ボタン
			button : void,		// ボタンインスタンス
			image  : "YesNoDialog_YesButton",	// 画像
			left   : 210,		// 表示位置
			top    : 105
		],
		nobutton : %[			// 「いいえ」ボタン
			button : void,		// ボタンインスタンス
			image  : "YesNoDialog_NoButton",// 画像
			left   : 270,		// 表示位置
			top    : 105
		],
		okbutton : %[			// 「はい」ボタン
			button : void,		// ボタンインスタンス
			image  : "OKDialog_OKButton",	// 画像
			left   : 240,		// 表示位置
			top    : 105
		]
	];
	// 以下、実行時のテンポラリ変数
	var onfunc, trigger, pushed, param;
// conductor停止方法はやりかたの確認中。
//	var maincond_interrupted, extracond_interrupted;

	// コンストラクタ
	function ImageDialogLayerPlugin(window, elm)
	{
		win = window;

		var o = options;
		var m = win.fore.messages[0];
		o.font = %[
			face        : m.defaultFace,
			angle       : m.vertical ? 2700 : 0,
			bold        : m.defaultBold,
			height      : m.defaultFontSize,
			antialiased : m.defaultAntialiased,
			color       : m.defaultChColor,
			opacity     : 255
		];
		o.message.vertical = +m.vertical;

		// デフォルトのフォント情報設定
		if (m.defaultShadow) {
			o.shadow.level   = 255;			// 影の不透明度
			o.shadow.color   = m.defaultShadowColor;// 影の色
			o.shadow.width   = 0;			// 影の幅
			o.shadow.offsetx = 2;			// 影オフセット
			o.shadow.offsety = 2;			// 影オフセット
		} else if (m.defaultEdge) {
			o.shadow.level   = 512;
			o.shadow.color   = m.defaultEdgeColor;
			o.shadow.width   = 1;
			o.shadow.offsetx = 0;
			o.shadow.offsety = 0;
		} else {
			o.shadow.level   = 0;
			o.shadow.color   = 0;
			o.shadow.width   = 0;
			o.shadow.offsetx = 0;
			o.shadow.offsety = 0;
		}

		replacefuncs(replacefuncary1, orgfuncary1);

		// オプション設定。イメージを読み込んで表示もこの中で。
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		// 「YesNo中にinvalidateされた時」のために、backlay/forelayを
		// チェックしつつinvalidate。
		if (backlayer !== void && isvalid(backlayer))
			invalidate backlayer;
		if (forelayer !== void && isvalid(forelayer))
			invalidate forelayer;
		replacefuncs_back(replacefuncary1, orgfuncary1);
	}

	// 関数置き換え関数。存在しない関数は dummy()を呼ぶ
	function replacefuncs(replacefuncary, orgfuncary)
	{
		// オリジナル関数を保存(存在していなければvoidで保存
		for (var i = replacefuncary.count-1; i >= 0; i--) {
			var func = replacefuncary[i];
			if (typeof(win[func]) != 'undefined')
				orgfuncary[func] = win[func];
			else
				orgfuncary[func] = void;
			if (typeof(this[func]) != 'undefined')
				win[func] = this[func] incontextof win;
			else
				win[func] = this.dummy incontextof win;
		}
	}

	// 関数置き換え戻し関数
	function replacefuncs_back(replacefuncary, orgfuncary)
	{
		for (var i = replacefuncary.count-1; i >= 0; i--) {
			var func = replacefuncary[i];
			if (orgfuncary[func] !== void)
				win[func] = orgfuncary[func];
			else
				delete win[func];
		}
	}

	// オプション設定
	function setOptions(elm)
	{
		var o = options;
		if (elm === void)
			return;
		o.enabled  = +elm.enabled  if (elm.enabled  !== void);
		o.image    = elm.image     if (elm.image    !== void);
		o.absolute = +elm.absolute if (elm.absolute !== void);
		if (elm.font !== void) {
			var f = elm.font;
			o.font.face    = f.face     if (f.face    !== void);
			o.font.angle   = +f.angle   if (f.angle   !== void);
			o.font.bold    = +f.bold    if (f.bold    !== void);
			o.font.height  = +f.height  if (f.height  !== void);
			o.font.color   = +f.color   if (f.color   !== void);
			o.font.opacity = +f.opacity if (f.opacity !== void);
			if (f.antialiased === void)
				o.font.antialiased = +f.antialiased;
		}
		if (elm.shadow !== void) {
			var s = elm.shadow;
			o.shadow.level   = +s.level   if (s.level   !== void);
			o.shadow.color   = +s.color   if (s.color   !== void);
			o.shadow.width   = +s.width   if (s.width   !== void);
			o.shadow.offsetx = +s.offsetx if (s.offsetx !== void);
			o.shadow.offsety = +s.offsety if (s.offsety !== void);
		}
		if (elm.message !== void) {
			var m = elm.message;
			o.message.alignx = +m.alignx if (m.alignx  !== void);
			o.message.aligny = +m.aligny if (m.aligny  !== void);
			o.message.left   = +m.left   if (m.left    !== void);
			o.message.top    = +m.top    if (m.top     !== void);
			o.message.width  = +m.width  if (m.width   !== void);
			o.message.height = +m.height if (m.height  !== void);
			if (m.vertical!== void) {
				message.vertical = +m.vertical;
				if (!m.vertical) {
					// 横書き時
					o.font.angle = 0;
					if (o.font.face[0] == '@')
						o.font.face = o.font.face.substr(1);
				} else {
					// 縦書き時
					o.font.angle = 2700;
					if (o.font.face[0] != '@')
						o.font.face = "@"+o.font.face;
				}
			}
		}
	}


	// Yes/Noダイアログを表示する(すぐfalseで帰る)
	function askYesNoLayer(message, yf,yp, nf,np, elm)
	{
		lastyesno = false;	// 最後に実行した yesno の結果をクリア
		yesfunc = yf, yesparam = yp;
		nofunc  = nf, noparam  = np;
		replacefuncs(replacefuncary2, orgfuncary2);
		setOptions(elm);
		if (forelayer !== void && isvalid(forelayer))
			return false;	// 多重実行を抑止
		forelayer = new	YesNoDialogLayer(win, win.fore.base, message,
						myYesNoFunc, true,
						myYesNoFunc, false, options);
		backlayer = new	YesNoDialogLayer(win, win.back.base, message,
						myYesNoFunc, true,
						myYesNoFunc, false, options);
		return false;
	}
	// Yes または No が押された時の関数(lastyesnoを設定するだけ)
	function myYesNoFunc(yesno)
	{
		lastyesno = yesno;
		if (yesno)
			yesfunc(yesparam) if (yesfunc !== void);
		else
			nofunc(noparam)   if (nofunc  !== void);
	}


	// OKダイアログを表示する(すぐfalseで帰る)
	function dispOKLayer(message, okfunc, okparam, elm)
	{
		replacefuncs(replacefuncary2, orgfuncary2);
		setOptions(elm);
		if (forelayer !== void && isvalid(forelayer))
			return false;	// 多重実行を抑止
		forelayer = new	OKDialogLayer(win, win.fore.base, message,
						okfunc, okparam, options);
		backlayer = new	OKDialogLayer(win, win.back.base, message,
						okfunc, okparam, options);
		// コンダクタ停止
// やりかたの確認中。
//		maincond_interrupted = win.mainConductor.interrupted;
//		win.mainConductor.interrupted = true;
//		extracond_interrupted = win.extraConductor.interrupted;
//		win.extraConductor.interrupted = true;

		return false;
	}

	// ImageDialogLayer(の派生クラス)を削除する。
	// ↑中で自身を削除できないのでここで削除
	function ImageDialogLayerEndfunc()
	{
		replacefuncs_back(replacefuncary2, orgfuncary2);
		invalidate trigger;
		invalidate backlayer;
		invalidate forelayer;

		// コンダクタ再開
// やりかたの確認中。
//		win.mainConductor.interrupted = maincond_interrupted;
//		win.extraConductor.interrupted = extracond_interrupted;

		// 最後に関数実行
		if (pushed && onfunc !== void)
			onfunc(param);
	}

// KAGPlugin定義
//	// [backlay]または[forelay]の時に、レイヤをコピーする
//	function onCopyLayer(toback);
// 	実装の必要なし。forelayer, backlayerを参照しないし、その内容は
//	全て同一であることが保障されているから。

	// トランジションが完了したとき、表と裏を入れ替える
	function onExchangeForeBack()
	{
		var tmp = forelayer;
		forelayer = backlayer;
		backlayer = tmp;
	}


// ここ以下はwin(=kag)の関数置き換え用
	// win(=kag)の終了時の処理
	function onCloseQuery()	// incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		if (!obj.options.enabled || !askOnClose) {
			// オーバーレイムービーなどの場合、オリジナルを実行
			obj.orgfuncary1.onCloseQuery();
			return;
		}
		// 質問ダイアログを表示してすぐ終わる
		obj.askYesNoLayer("終了しますか？", onCloseQuery_2nd);
		.Window.onCloseQuery(false);
	}

	// 終了時の処理... 実際の終了時
	function onCloseQuery_2nd() // incontextof win
	{
		askOnClose = false;
		close();	// この延長でwin.onCloseQueryが再び呼ばれる
	}

	// 「一つ前に戻る」を実行する
	function goBackHistory(ask = true) // incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		if (!obj.options.enabled || !ask) {
			// オーバーレイムービーなどの場合、オリジナルを実行
			obj.orgfuncary1.goBackHistory(ask);
			return;
		}
		var prompt = "「"+ historyOfStore[0].core.currentPageName + "」まで戻りますか?";
		obj.askYesNoLayer(prompt, goBackHistory_2nd);
	}

	//「 一つ前に戻る」...実際に戻るとき
	function goBackHistory_2nd() // incontextof win
	{
		goBackHistory(false);
	}

	// 「栞をはさむ」を実行する
	function saveBookMarkWithAsk(num) // incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		if (!obj.options.enabled || 
		    readOnlyMode || bookMarkProtectedStates[num]) {
			// オーバーレイムービーなどの場合、オリジナルを実行
			return obj.orgfuncary1.saveBookMarkWithAsk(num);
		}

		// 栞番号 num に栞を設定する
		// そのとき、設定するかどうかをたずねる
		var prompt = "栞 ";
		if(num < numBookMarks)
			prompt += (num + 1);
		if(bookMarkDates[num] != "") // 空文字の場合は栞は存在しない
			prompt += "「" + bookMarkNames[num] + "」";
		prompt += "に「"+ pcflags.currentPageName + "」をはさみますか?";
		obj.askYesNoLayer(prompt, saveBookMarkWithAsk_2nd, num);
		return false;
	}

	// 「栞をはさむ」... 実際にはさむとき
	function saveBookMarkWithAsk_2nd(num) // incontextof win
	{
		saveBookMark(num);	// エラーを考えていない…いいのかな
	}

	// 「栞をたどる」を実行する
	function loadBookMarkWithAsk(num) // incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		if (!obj.options.enabled || 
		    num < numBookMarks && bookMarkDates[num] == "") {
			// オーバーレイムービーなどの場合、オリジナルを実行
			return obj.orgfuncary1.loadBookMarkWithAsk(num);
		}
		var prompt = "栞 ";
		if(num < numBookMarks)
			prompt += (num + 1);
		prompt += "「"+ bookMarkNames[num] + "」をたどりますか?";
		obj.askYesNoLayer(prompt, loadBookMarkWithAsk_2nd, num);
		return false;
	}

	// 「栞をたどる」... 実際にたどるとき
	function loadBookMarkWithAsk_2nd(num) // incontextof win
	{
		loadBookMark(num);	// エラーを考えていない…いいのかな
	}

	// 「最初に戻る」を実行する
	function goToStartWithAsk() // incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		if (!obj.options.enabled) {
			// オーバーレイムービーなどの場合、オリジナルを実行
			return obj.orgfuncary1.goToStartWithAsk();
		}
		var prompt = "最初に戻ります。よろしいですか ?";
		obj.askYesNoLayer(prompt, goToStartWithAsk_2nd);
	}

	// 「最初に戻る」... 実際に戻るとき
	function goToStartWithAsk_2nd() // incontextof win
	{
		goToStart();
	}

// 以下、ダイアログ表示中にだけ登録する関数

	// 何もしない関数。ダイアログ表示中にトラップする関数の実体
	function dummy()
	{
	}

	// キーボードが押されたとき
	function onKeyDown(key, shift) // incontextof win
	{
		var obj = global.ImageDialogLayerPlugin_obj;
		// Escキーだったらキャンセル
		if (key == VK_ESCAPE || getKeyState(VK_ESCAPE))
			obj.forelayer.endFunc(false);
	}
};

global.ImageDialogLayerPlugin_obj = new ImageDialogLayerPlugin(kag);
kag.addPlugin(global.ImageDialogLayerPlugin_obj);

@endscript


; YesNoダイアログを表示して入力を待つ
; 結果は .ImageDialogLayerPlugin_obj.lastyesno に格納される(yes=true,no=false)
@macro name=askyesno
@eval exp=".ImageDialogLayerPlugin_obj.askYesNoLayer(mp.message, kag.trigger, 'yesnooktrig', kag.trigger, 'yesnooktrig')"
@waittrig name=yesnooktrig canskip=no
@endmacro


; OKダイアログを表示して入力を待つ
@macro name=askok
@eval exp=".ImageDialogLayerPlugin_obj.dispOKLayer(mp.message, kag.trigger, 'yesnooktrig')"
@waittrig name=yesnooktrig canskip=no
@endmacro


@return

