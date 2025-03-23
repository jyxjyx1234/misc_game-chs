[return cond="typeof(global.KLayersLoaded) != 'undefined'"]

; ToDo:
;	・最初に実行するスクリプト・、最後に実行するスクリプトを追加する
;	・トランジション中は mousedown/keydown できないようにする
;	・restore(dic)の時、dicにvoidメンバがあったらスキップされないか？
;	・setOptions_クラス名()はsetLocalMembers()に変更した方がいいか？しかし
;	　そうすると再起呼び出しになって遅くならないか？
;	・ボタン上で右クリックしたら右クリックルーチンが上がるかどうか
; KCheckBoxLayerまで copyLocalMembers()/copyAllMembers()を実装
;	・アニメーションボタン：push後状態をロックする、animが終わるまで待つ
;	・アニメーションのセーブ・ロードでアニメが復活できるか？
; クリックは、onMouseDown()じゃなくてonMouseUpで引っ掛けたほうがいいのか？
; 領域外でマウス放したときに無効にすることができるから。
;
; 2014/11/08	0.99q	・KLayerクラスにautoHide/visibleBeforeUserInvisibleを
;			　追加
;			・これに伴い、KLayersPluginOnMessageに
;			　setHiddenStateByUserPerPage()を追加
;			・invisibleByUser==trueの時にhiddenを変更しないよう修正
; 2014/10/30	0.99p	・findLayers()：findLayer_sub() → findLayers_sub()に
;			　修正。実行時エラーになることがあった
;			・Win8のquake対応でkag.{fore|back}.baseにparentで
;			　プライマリレイヤを追加した構成のときに findLayer()が
;			　'表前景レイヤ0'を探し損ねていたのを修正
; 2014/10/21	0.99o	・KLayersAnimationConductorを別クラスとして外出し
;			・KButtonLayerを、内部的に横4列のボタンに変更
;			・KButtonLayerの初期サイズを32x32に
;			・Buttonでdisablegraphicがない時に適当に描くよう修正
;			・未使用なのに定義されていたKFont.shadowメンバを削除
; 2014/06/09	0.99n	・KScrollLayer追加
;			・getSubOptions()を追加。オプション設定で二種類
;			　(elm.name.paramまたはelm['name.param'])が指定可能に｡
;			・KSliderLayerの中心線位置が1dotズレていたのを修正
;			・重複していたためKSliderLayerのonPaint()関数を削除
;			・KSliderLayerにdrawcenterlineオプションを追加
;			・KSliderLayerのonchangeが実装されていなかったので追加
;			・KSliderLayerにisstep(ステップ移動するか)フラグを追加
;			・KClickableLayerのrepeatinterval1が反映されない場合が
;			　あったのを修正
;			・KButtonLayerを、enable=falseの時にマウスイベントを
;			　透過させるよう変更
; 2014/05/12	0.99m	・↓を再修正
; 2014/05/11	0.99l	・messageLayerにshadowOffset[XY]が無い古いKAGに対応
; 2014/01/25	0.99k	・KSliderLayerをverticalメンバで縦横判定するように変更
;			・KLayerのonKeyDownを変更し、矢印キーにも対応
;			　※その代わり、フォーカスチェーンとは無関係になった
;			　フォーカスチェーンに参加しないようにしてもいいかも
; 2014/01/19	0.99j	・KSliderLayerのtabgraphicが表示されないのを修正
; 2014/01/14	0.99i	・ほかの関数でもjumpScenario()をeval()の前へ移動
;			・全体的にtypo修正(Senario→Scenario)
;			・eval()でloadScenario()するとその中でthisがinvalidate
;			　されるため、onMouseUp()/onMouseDown()の最後に
;			　isvalid(this)検査を追加
; 2014/01/13	0.99h	・loadScenario()後にeval()を実行しないよう、onMouseUp()
;			　/onMouseDown()のloadSenaio()を、関数末尾で実行する
;			　よう変更
; 2013/12/07	0.99g	・Layer_copyLocalMembers()のtypo再修正…
; 2013/12/05	0.99f	・Layer_copyLocalMembers()で、setImagePos()の指定が
;			　悪く、「レイヤ領域に画像のない領域が発生しました」
;			　エラーとなっていたのを修正
; 2013/11/25	0.99e	・ボタンフォントを、kfontを指定するとコレに合わせるよう
;			　修正。同じように、ボタン色のcolor指定を優先
;			・KFontのcopyLocalMembers()でsrc→sに修正
;			・setOptions()したら無条件にredraw()するよう変更
;			・KRadioButtonLayer()でnameを指定してなかったので修正
;			・KRadioButtonLayerのcopyLocalMembers()でd.が指定されて
;			　いないものがあったのを修正
; 2013/11/18	0.99d	・SliderLayerのonSliderDragged()の引数が間違ってたので
;			　修正
;			・SliderLayerにhval/vvalのmin/maxとintflgを追加
;			・SliderLayerのupdateSliderTabPos()で、hval/vvalに同じ
;			　値が設定されたときは、更新をスキップするよう修正
;			・KRadioButtonLayerのsetOptions_button()の引数を修正
; 2013/09/08	0.99c	・Layer_copyLocalMembers() で imageLeft+imageWidth < 0
;			　などの場合にエラー終了していたのを修正
; 2013/08/10	0.99β	・copyLocalMembers()を単純なものに差し替え。
;			　copyMembers()を使うと三倍以上時間がかかるため。
;			・KClickableLayer.playSound()でbufを指定してもbuf=0と
;			　処理されていたのを修正
; 2013/04/21	0.99α	・ButtonLayerにentercolor/clickcolorを追加
;			・ButtonLayerのface = dfAlphaを削除。defだから不要の筈
;			・フォントをKFont()クラスとして新規作成
;			・アニメーションを実行するstartAnim()を、関数の最後
;			　ではなく、可能な限り上位で実行するように変更
;			・K*_setOptions()をcopyLocalMembers()に名称変更
;			・↑での値設定をcopyAllMember()関数で実行するよう変更
;			・ToggleのonCheck/onUncheckをonMouseRelease()で動作
;			　するように変更。フルスクリーン切り替え時に onMouseUp
;			　イベントが起こらない場合がある問題への対策
;			・RadioButtonは、assignするとボタン順が変わる？focusの
;			　順番も変わってるっぽい
;
; 2012/04/23	0.98c	・フォーカスされているレイヤを削除する時(delOnPage()と
;			　del()する時)にwindow.focusedLayer=nullを追加
;			・onFocus()でマウスカーソルを動かすのを、キーが
;			　押された時のみに限定(MessageLayerでそうやってるし)
; 2012/02/21	0.98b	フォーカスされているレイヤをvisible/enabled=falseに
;			設定してフォーカスが動くのを避けるために、KLayer
;			クラスにonSearchNextFocusable()を追加
; 2011/08/13	0.98a	Layerクラスのorderメンバを変更しないように修正
; 2011/06/25	0.98	setOptions()でsetOptions_sub()を使わぬよう変更
;			setOptions()で(keys(elm).count <= 0))を判定せぬように
;			evalstr()をTJSFunctionsのstr2num()に変更
; 2011/06/11	0.97	KLayerクラスにcaptionface を追加
; 2011/05/30	0.95	classid が無いものがあったので追加
;			KLayersPluginのonStore/Restoreのforの順番を変更
;			onRestore()時、elm.backlay == true でfore->back戻し要
;			onRestore()の第二引数がclearだったのを忘れてて修正
;			setOptions()でloadImages()の前にsetOptions_sub() すると
;			imageLeftなどが設定される場合に「範囲外の画像表示」
;			エラーとなるのを修正
;			KSliderLayerのfinalize()にtimer.enabled=falseを追加
;			discardImage() に hasImage=0, hasImage=1 を追加
;			KRadioButtonLayerのsetOptions()で、ボタン数==0を弾いた
; 2011/04/06	0.91	hitThresholdをKLayerで256に、KClickableLayerで16にした
;			hitThresholdを保存するようにした
; 2011/03/26	0.90	KAnimButtonLayerのタグをKAnimLayerと統合
;			各所startanim()の引数間違いを修正
;			setOptions() で elm.clickstorage!==voidかつ
;			elm.clicktarget===voidの時のclicktarget初期化違いを修正
;			KAnimButtonLayerにonBlur()追加
;			KAnimLayerなどの[disp]引数を x,y → sx,sy に変更

[call storage="TJSFunctions.ks"]

[iscript]

/*
   KLayers継承ツリー

Layer
    → KLayer .................................. 基本レイヤ
        → KAnimLayer .......................... アニメーションレイヤ
        → KClickableLayer ..................... クリック可能レイヤ
            → KButtonLayer .................... ボタンレイヤ
                → KAnimButtonLayer ............ アニメーションボタンレイヤ
                    → KToggleButtonLayer ...... トグルボタンレイヤ
                        → KCheckBoxTopLayer ... チェックボックスのトップ部分
                        → KRadioButtonItem .... ラジオボタンの１アイテム
                    → KCheckBoxLayer .......... チェックボックスレイヤ
                    → KSliderTabLayer ......... スライダーのタブ部分
        → KSliderLayer ........................ スライダーレイヤ(ベースのみ)
        → KRadioButtonLayer ................... ラジオボタンレイヤ(ベースのみ)
	→ KScrollLayer ........................ スクロールレイヤ

 */

// デフォルトの表示優先順位
sf.KLAYERS_DEFABSOLUTE = 2000000-2;

/*
KLayersのスケルトンは以下の通り。
class KAGLayers_skelton // extends KAGLayer(またはその派生レイヤ)
{
	var classid;	// クラス名の文字列
	// var name; name は Layer クラスに有るので定義不要。

	// コンストラクタ。name/elmは省略可能
	function KAGLayers_skelton(w, p, name, elm);
	// コンストラクタ中で呼ぶsetOptions()は、virtualでないローカルを呼ぶ。
	// .KAGLayers_skelton.setOptions() のように。そうしないと、子レイヤの
	// コンストラクタでsuperで呼ばれた場合に、子レイヤのsetOptions()が
	// 呼ばれ、「(子レイヤにのみ存在するメンバを設定しようとして)そんな
	// メンバありません」というエラーになる

	// デストラクタ
	function finalize();

	// このクラスだけのローカルメンバをコピーする。src === voidを考慮
	// localchildren=trueで、このクラスが定義する子レイヤがある場合はそれもコピー
	// ローカルメンバをコピーする
	function copyLocalMembers(dst, src, localchildren=true);
		localchildren=falseで、このクラスが定義する子レイヤ分は
		コピーしない。srcがclassの可能性があるため、getSubOptions()は
		この関数では使用すべきではない

	// このクラス以下の全てのローカルメンバをコピーする。src === voidを考慮
	function setAllMembers(dst, src);

	// オプション設定。elm===voidを考慮
	function setOptions(elm);
		可能ならcopyLocalMember(d,s, false)を使う。
		ローカルの子レイヤについては子レイヤごとにsetOptions()を使う。
		子レイヤ向け辞書は、getSubOptions()で入手する

	// オブジェクトのコピー
	function assign(src);
		以下の二つで構成されるべき。
		super.assign(src);
		.KAGLayers_skelton.copyLocalMembers(this, src, false);
		加えて、必要ならローカルメンバのassign(src.)

	// オブジェクトセーブ時に、自身の辞書配列dicを作って返す
	function store()
		一般的には以下でよい。
		var dic = super.store();
		.KAGLayers_skelton.copyLocalMembers(dic, this);
		return dic;

	// オブジェクトロード時に、辞書配列dicを元に自身を設定する(dicを返す)
	function restore(dic);
		一般的には以下でよい。
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;

}
行頭から書いちゃうとラベルと認識されてしまう。注意 */

// レイヤーを派生すると遅くなるので、KAGLayerではなく、Layerクラスをそのまま
// 使う。なんかの拍子に戻してもいいけど…。



// 必要ならコピーする... メンバの変更や辞書コピーにはこれを使う
function copyMember(d, s, key, numeric=true, copyifvoid=false)
{
	if (typeof(s[key]) != 'undefined' &&
	    (s[key] !== void || copyifvoid))
		d[key] = (numeric && !copyifvoid) ? +s[key] : s[key];
}


// このプラグインを読み込んだ時の kag.fore.messages[0] の値を得る
// で、これを KFont のデフォルト値に使う。
var KFont_default = %[];
{
	var l = kag.fore.messages[0];
	KFont_default = %[
		vertical	: l.vertical,	// 縦書き・横書き
		face		: l.userFace,
		color		: l.defaultChColor,
		height		: l.defaultFontSize,
		bold		: l.defaultBold,
		italic		: 0,		// イタリックは初期値がなかった
// strikeout/underline は今は意味がないらしいから削除
//		strikeout	: false,	// 取り消し線
//		underline	: false,	// アンダーライン
		opacity		: 255,		// 透明度は初期値がなかった
		antialiased	: l.antialiased,
		// ここから後は l.defaultEdge/defaultShadowにより変わる
		shadowlevel	: 0,
		shadowcolor	: 0x000000,
		shadowwidth	: 0,
		shadowoffsetx	: 0,
		shadowoffsety	: 0
	];

	// 影指定だったときのデフォルト値
	if (l.defaultShadow) {
		KFont_default.shadowlevel	= 255;
		KFont_default.shadowcolor	= l.defaultShadowColor;
		KFont_default.shadowwidth	= 0;
		// messageLayerにshadowOffset[XY]が無い古いKAGを考慮
		KFont_default.shadowoffsetx	= 
			(typeof(l.shadowOffsetX) != 'undefined') ? l.shadowOffsetX : 2;
		KFont_default.shadowoffsety	= 
			(typeof(l.shadowOffsetY) != 'undefined') ? l.shadowOffsetY : 2;
	}
	// 縁取り指定だったときのデフォルト値
	if (l.defaultEdge) {
		KFont_default.shadowlevel	= l.edgeEmphasis;
		KFont_default.shadowcolor	= l.defaultEdgeColor;
		KFont_default.shadowwidth	= l.edgeExtent;
		KFont_default.shadowoffsetx	= 0;
		KFont_default.shadowoffsety	= 0;
	}
}


// フォント情報を保存するクラス
class KFont
{
	var vertical;		// 縦書き・横書き
	var face;		// フォント名
	var color;		// フォント色
	var height;		// フォントサイズ
	var bold;		// 太字か否か(true/false)
	var italic;		// 斜体か否か(true/false)
// strikeout/underline は今は意味がないらしいから削除
//		strikeout	: false,	// 取り消し線
//		underline	: false,	// アンダーライン
	var opacity;		// 文字の透明度
	var antialiased;	// 文字のぼかし具合
//未使用	var shadow;		// 影付き文字か否か(true/false)
	var shadowlevel;	// 影の透明度
	var shadowcolor;	// 影付き文字の影の色
	var shadowwidth;	// 影付き文字の影のぼかし具合
	var shadowoffsetx;	// 影付き文字の影の横オフセット
	var shadowoffsety;	// 影付き文字の影の横オフセット

	// コンストラクタ
	function KFont(elm)
	{
		setOptions(KFont_default);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
	}

	// オプション設定(2オペランド版)
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		if (typeof(s) == "String") // 引数が文字列なら辞書にして設定
			s = ("%["+s+"]")!; 
		d.vertical      = +s.vertical      if (s.vertical    !== void);
		d.face          = s.face           if (s.face        !== void);
		d.color         = +s.color         if (s.color       !== void);
		d.height        = +s.height        if (s.height      !== void);
		d.bold          = +s.bold          if (s.bold        !== void);
		d.italic        = +s.italic        if (s.italic      !== void);
// strikeout/underline は今は意味がないらしいから削除
//		d.strikeout     = s.strikeout      if (s.strikeout   !== void);
//		d.underline     = s.underline      if (s.underline   !== void);
		d.opacity       = +s.opacity       if (s.opacity     !== void);
		d.antialiased   = +s.antialiased   if (s.antialiased !== void);
		d.shadowlevel   = +s.shadowlevel   if (s.shadowlevel !== void);
		d.shadowcolor   = +s.shadowcolor   if (s.shadowcolor !== void);
		d.shadowwidth   = +s.shadowwidth   if (s.shadowwidth !== void);
		d.shadowoffsetx = +s.shadowoffsetx if (s.shadowoffsetx!==void);
		d.shadowoffsety = +s.shadowoffsety if (s.shadowoffsety!==void);
	}

	// このクラス以下の全てのメンバーをコピーする
	function copyAllMembers(dst, src)
	{
		.KFont.copyLocalMembers(dst, src);
	}

	// オプション設定
	function setOptions(elm)
	{
		.KFont.copyLocalMembers(this, elm);
	}

	// フォントを設定する
	function setFont(layer) {
		selectcopy_dic(layer.font, this,
			    ['bold','face','height','italic']);
		layer.font.angle = 0;
		if (vertical) {
			// 縦書きの時
			layer.font.angle = 2700;
			layer.font.face = '@' + face;
		}
	}

	// テキスト描画
	function drawText(layer, x, y, text)
	{
		if (text === void || text == '')
			return;
		.KFont.setFont(layer);
		layer.drawText(x, y, text, color, opacity, antialiased,
				shadowlevel, shadowcolor, shadowwidth,
				shadowoffsetx, shadowoffsety);
	}

	// テキスト幅
	function getTextWidth(layer, text)
	{
		.KFont.setFont(layer);
		return layer.font.getTextWidth(text);
	}

	// テキスト高
	function getTextHeight(layer, text)
	{
		.KFont.setFont(layer);
		return l.font.getTextHeight(text);
	}

	// コピー
	function assign(src)
	{
		.KFont.copyLocalMembers(this, src);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = %[];
		.KFont.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void) {
			.KFont.setOptions(KFont_default); //せめてデフォルトに
			return;
		}
		.KFont.setOptions(dic);
		return dic;
	}
};


// 画像・テキストを表示するだけのレイヤー
class KLayer extends Layer
{
	var classid = "KLayer";		// 定数
//	var name;			// 名前(Layerクラス中で定義済ゆえ不要)
	var kfont;			// フォント(ボタン用にkfontとした)
					// fontはLayerにあるので使えないし
	var vertical   = false;		// 縦書きかどうか
	var text       = "";		// 表示する文字
	var texthalign = 'center';	// 文字表示位置(left/center/right)
	var textvalign = 'center';	// 文字表示位置(top/center/bottom)
	var textleft   = 0;		// 文字表示領域の上座標X
	var texttop    = 0;		// 文字表示領域の上座標Y
	var textwidth  = 0;		// 文字表示領域の横サイズ(0で横一杯)
	var textheight = 0;		// 文字表示領域の縦サイズ(0で縦一杯)
	var linespace  = 2;		// 行間隔
	var color;
	var graphic;			// 画像ファイル名(voidで画像なし)
	var graphickey;			// 画像の抜き色

	// メッセージレイヤと一緒に隠れるかどうかのフラグ郡
	var autoHide   = false;		// メッセージレイヤと一緒に隠れるか
	var invisibleByUser = false;	// ユーザによってinvisibleにされたか
	var visibleBeforeUserInvisible;	// invisibleにされる前の値保存用

	// prevFocusable/nextFocusableはreadonlyなので新たにメンバを作る
	var _prevfocus = null, _nextfocus = null;

// 追加するか後で考える
//	var oncreate;
//	var createstorage;
//	var createtarget;
//	var ondestroy;
//	var destroystorage;
//	var destroytarget;

	// コンストラクタ
	function KLayer(window, parent, i_name = "", elm)
	{
		super.Layer(window, parent);
		name         = i_name;
//		setSize(32,32);		// デフォルトサイズなので設定不要
		focusable    = false;	// デフォルトでは unfocusable
		hitThreshold = 256;	// デフォルトでは当たり判定なし
		absolute     = sf.KLAYERS_DEFABSOLUTE;
		visible      = true;
		kfont        = new KFont();
		color        = 0xff404040;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		invalidate kfont;
		super.finalize();
	}

	// 引数の elm.subname.* および elm[subname.*] を、両方 elm.subname.*に
	// 入れて返す。辞書の書き方が特殊になる(%['abc.d'=>3]でないとダメ)が
	// その方が見て分かりやすいので。
	function getSubOptions(elm, subname)
	{
		// 少し無駄だが、何も無かったときに void じゃなくて %[] を返す
		// この関数を呼んだ関数が、返り値をそのまま使うことがあるため。
		var e = %[];
		if (elm === void)
			return e;
		var keyary = keys(elm);
		if (keyary.count <= 0)
			return e;
		if (elm[subname] !== void) {
			// この行があるので、elmは辞書前提。elmがクラスだった
			// 場合はこれをassignすべきだが…
			(Dictionary.assignStruct incontextof e)(elm[subname]);
		}
		for (var i = keyary.count-1; i >= 0; i--) {
			var key = keyary[i];
			// keyがsubname.*だったら、*を取り出し
			if (key.substr(0, subname.length+1) == subname+'.')
				e[key.substr(subname.length+1)] = elm[key];
		}
		return e;
	}

	// Layerクラスのローカルのメンバをコピー
	function Layer_copyLocalMembers(d, s, localchildren=true)
	{
		if (Scripts.getClassNames(d).find('Layer') >= 0) {
			// Layerのときは setPos()/setImagePos() を使う
			if (Scripts.getClassNames(s).find('Layer') >= 0) {
				d.setPos(+s.left, +s.top, +s.width, +s.height);
				// imagepos=(0,0)にしてサイズ変更するのがミソ
				// こうしないと「画像ない領域を描画」になる
				d.setImagePos(0, 0);
				d.setImageSize(+s.imageWidth, +s.imageHeight);
				d.setImagePos(+s.imageLeft,  +s.imageTop);
			} else {
				var l, t, w, h;
				l = (s.left  !==void) ? +s.left   : +d.left;
				t = (s.top   !==void) ? +s.top    : +d.top;
				w = (s.width !==void) ? +s.width  : +d.width;
				h = (s.height!==void) ? +s.height : +d.height;
				d.setPos(l, t, w, h);
				l = (s.imageLeft  !==void) ? +s.imageLeft   : +d.imageLeft;
				t = (s.imageTop   !==void) ? +s.imageTop    : +d.imageTop;
				w = (s.imageWidth !==void) ? +s.imageWidth  : +d.imageWidth;
				h = (s.imageHeight!==void) ? +s.imageHeight : +d.imageHeight;
				// imagepos=(0,0)にしてサイズ変更するのがミソ
				// こうしないと「画像ない領域を描画」になる
				d.setImagePos(0, 0);
				d.setImageSize(w, h);
				d.setImagePos(l, t);
			}
		} else {
			// Layerでないときはテキトーにコピー
			d.left       = +s.left        if (s.left      !==void);
			d.top        = +s.top         if (s.top       !==void);
			d.width      = +s.width       if (s.width     !==void);
			d.height     = +s.height      if (s.height    !==void);
			d.imageLeft  = +s.imageLeft   if (s.imageLeft !==void);
			d.imageTop   = +s.imageTop    if (s.imageTop  !==void);
			d.imageWidth = +s.imageWidth  if (s.imageWidth!==void);
			d.imageHeight= +s.imageHeight if (s.imageHeight!==void);
		}

		// コメントアウトされているメンバはreadonlyのもの
		d.absolute     = +s.absolute     if (s.absolute     !== void);
		d.absoluteOrderMode = s.absoluteOrderMode if (s.absoluteOrderMode !== void);
		d.attentionLeft = +s.attentionLeft if(s.attentionLeft!== void);
		d.attentionTop = +s.attentionTop if (s.attentionTop !== void);
		d.cached       = +s.cached       if (s.cached       !== void);
//		"callOnPaint",		//onPaint()を呼ぶか
//		"children",		//子レイヤ配列
		d.clipHeight   = +s.clipHeight   if (s.clipHeight   !== void);
		d.clipLeft     = +s.clipLeft     if (s.clipLeft     !== void);
		d.clipTop      = +s.clipTop      if (s.clipTop      !== void);
		d.clipWidth    = +s.clipWidth    if (s.clipWidth    !== void);
		d.cursor       = s.cursor        if (s.cursor       !== void);
//		"cursorX",		// マウスカーソル位置X
//		"cursorY",		// マウスカーソル位置Y
		d.enabled      = +s.enabled      if (s.enabled      !== void);
		d.face         = +s.face         if (s.face         !== void);
		d.focusable    = +s.focusable    if (s.focusable    !== void);
//		"focused",		//フォーカスされているかどうか
//		"font",			//フォント
//		"hasImage",		//レイヤが画像持ちかどうか

//##コピー済み	d.height       = +s.height       if (s.height       !== void);
		d.hint         = s.hint          if (s.hint         !== void);
		d.hitThreshold = +s.hitThreshold if (s.hitThreshold !== void);
		d.hitType      = +s.hitType      if (s.hitType      !== void);
		d.holdAlpha    = +s.holdAlpha    if (s.holdAlpha    !== void);

//##コピー済み	d.imageHeight  = +s.imageHeight  if (s.imageHeight  !== void);
//##コピー済み	d.imageLeft    = +s.imageLeft    if (s.imageLeft    !== void);
		d.imageModified= +s.imageModified if(s.imageModified!== void);
//##コピー済み	d.imageTop     = +s.imageTop     if (s.imageTop     !== void);
//##コピー済み	d.imageWidth   = +s.imageWidth   if (s.imageWidth   !== void);
		d.imeMode      = +s.imeMode      if (s.imeMode      !== void);
//		"isPrimary",		//プライマリレイヤかどうか
		d.joinFocusChain=s.joinFocusChain if(s.joinFocusChain!==void);
//##コピー済み	d.left         = +s.left         if (s.left         !== void);
//		"mainImageBuffer",	//メイン画像バッファ
//		"mainImageBufferForWrite",//メイン画像バッファ(書き込み用)
//		"mainImageBufferPitch",	//メイン画像バッファピッチ
		d.name         = s.name          if (s.name         !== void);
		d.neutralColor = +s.neutralColor if (s.neutralColor !== void);
//		"nextFocusable",	//後方のフォーカスを受け取れるレイヤ
//		"nodeEnabled",		//レイヤノードが操作可能かどうか
//		"nodeVisible",		//ノードが可視かどうか
		d.opacity      = +s.opacity      if (s.opacity      !== void);
//指定するとabsoluteが変わるのでここでは指定しない "order"	//相対位置
//		"parent",		//親レイヤ
//		"prevFocusable",	//前方のフォーカスを受け取れるレイヤ
//		"provinceImageBuffer",	//領域画像バッファ
//		"provinceImageBufferForWrite",//領域画像バッファ(書き込み用)
//		"provinceImageBufferPitch",//領域画像バッファピッチ
		d.showParentHint=+s.showParentHint if(s.showParentHint!==void);
//##コピー済み	d.top          = +s.top          if (s.top          !== void);
		d.type         = +s.type         if (s.type         !== void);

		d.useAttention = +s.useAttention if (s.useAttention !== void);
		d.visible      = +s.visible      if (s.visible      !== void);
//##コピー済み	d.width        = +s.width        if (s.width        !== void);
//		"window"		//ウィンドウオブジェクト

//		if (!parent.absoluteOrderMode) こうすると兄弟レイヤのabsolute
//			dst.order = src.order; を変えてた時に困るので削除

	}

	// このクラスのメンバ設定
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.classid    = s.classid     if (s.classid    !== void);
		d.vertical   = +s.vertical   if (s.vertical   !== void);
		d.text       = s.text        if (s.text       !== void);
		d.texthalign = s.texthalign  if (s.texthalign !== void);
		d.textvalign = s.textvalign  if (s.textvalign !== void);
		d.textleft   = +s.textleft   if (s.textleft   !== void);
		d.texttop    = +s.texttop    if (s.texttop    !== void);
		d.textwidth  = +s.textwidth  if (s.textwidth  !== void);
		d.textheight = +s.textheight if (s.textheight !== void);
		d.linespace  = +s.linespace  if (s.linespace  !== void);
		d.color      = +s.color      if (s.color      !== void);
		d.graphic    = s.graphic     if (s.graphic    !== void);
		d.graphickey = +s.graphickey if (s.graphickey !== void);
		d.autoHide   = +s.autoHide   if (s.autoHide   !== void);
		d.invisibleByUser = +s.invisibleByUser if (s.invisibleByUser !== void);
		d.visibleBeforeUserInvisible = +s.visibleBeforeUserInvisible if (s.visibleBeforeUserInvisible);

// nextfocus/prevfocus は、assign()、store()いずれでもコピーしない。
// コピーすると、裏画面・表画面での参照レイヤがおかしくなるため。

		d.kfont = %[] if (d.kfont === void);
		.KFont.copyLocalMembers(d.kfont, s.kfont);
	}

	// このクラス以下の全てのメンバーをコピーする
	function copyAllMembers(dst, src)
	{
		Layer_copyLocalMembers(dst, src);
		.KLayer.copyLocalMembers(dst, src);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		// 先に画像を読む。imageLeft等設定され画像範囲外の表示を防ぐ為
		loadImages(elm.graphic, elm.graphickey); // voidでもOK
		Layer_copyLocalMembers(this, elm);
		.KLayer.copyLocalMembers(this, elm);
		if (elm.graphic !== void && elm.graphic == "")
			graphic = void;	// loadImages()で設定したgraphicが
					// setOptions()で上書きされるため再設定
		redraw();
	}

	// メッセージレイヤと共に隠れる場合の、「隠れ状態」関数関数
	function setHiddenStateByUser(hidden)
	{
		if (autoHide) {
			if (hidden) {
				if (invisibleByUser)
					return;
				visibleBeforeUserInvisible = visible;
				invisibleByUser = true;
				visible = false;
			} else {
				invisibleByUser = false;
				visible = visibleBeforeUserInvisible;
			}
		}
	}

	// イメージを読む ※引数無しで同じイメージを読み込む
	function loadImages(graphic=this.graphic, key=this.graphickey)
	{
		this.graphickey = (key===void) ? void : +key;
		this.graphic    = graphic;
		if (graphic === void || graphic == "") {
			.KLayer.discardImage();
			return;
		}
		// 画像があれば
		super.loadImages(graphic, this.graphickey);
		// サイズをイメージサイズに合わせる
		setSizeToImageSize();
		// 文字があるときは文字を描画
		drawTextWithAlign(kfont, text);
	}

	// 画像を無効化する
	function discardImage()
	{
		graphic = void;
		hasImage = 0;	hasImage = 1;	// これで画像を一度無効化する
		fillRect(0, 0, width, height, color);
		// 文字があるときは文字を描画
		drawTextWithAlign();
	}

	// マウスが押された場合
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		// イベントを透過するため、親へ伝えるだけ
		parent.onMouseDown(left+x, top+y, button, shift);
	}



	// マウスが放された場合
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		// 親へイベントを伝えるだけ
		parent.onMouseUp(left+x, top+y, button, shift);
	}

	// マウスが入った時
	function onMouseEnter()
	{
		if (focusable && enabled && visible) {
			focus() if (!focused);
			return;
		}
		super.onMouseEnter(...);
	}

	// キーが押された時
	function onKeyDown(key, shift, process)
	{
		
		if (!process) {
			// 処理しなくてよければデフォルト動作
			super.onKeyDown(...);
			return;
		}
//		dm("実験２="+key);
		// TABか矢印キーが押されたら次のfocusableなレイヤを探す
		var l = shift ? prevfocus : nextfocus;
		if (key==VK_TAB && !shift || key==VK_DOWN || key==VK_RIGHT || key==sf.Config_Key_SelUP) {
			// TAB(no shift)、↓、→ の場合
			var l = nextfocus;
			for (; l != null && l != this; l = l.nextfocus) {
				if (l.focusable && l.enabled && l.visible) {
					l.focus(true);
					return;
				}
			}
		} else if (key==VK_TAB && shift || key==VK_UP || key==VK_LEFT || key==sf.Config_Key_SelDown){
			// TAB(shift)、↑、← の場合
			var l = prevfocus;
			for (; l != null && l != this; l = l.prevfocus) {
				if (l.focusable && l.enabled && l.visible) {
					dm("TAB(shift)、↑、← の場合");
					l.focus(false);
					return;
				}
			}
		}
		super.onKeyDown(...);	// デフォルト動作
	}

	// アラインを考えつつテキスト描画(横書き)
	function drawTextWithAlign_subH(tfont, lines, offx, offy)
	{
		var twidth  = (textwidth ==0) ? width -textleft*2 : textwidth;
		var theight = (textheight==0) ? height-texttop*2  : textheight;
		var lh = tfont.height*lines.count + linespace*(lines.count-1);
		var ly = texttop+(theight-lh)/2;
		if (textvalign == 'top')
			ly = texttop;
		else if (textvalign == 'bottom')
			ly = texttop+theight-lh;
		for (var i = 0; i < lines.count; i++) {
			var lw = tfont.getTextWidth(this, lines[i]);
			var lx = (width-lw)/2;
			if (texthalign == 'left')
				lx = textleft;
			else if (texthalign == 'right')
				lx = textleft+twidth-lw;
			tfont.drawText(this, lx+offx, ly+offy, lines[i]);
			ly += tfont.height+linespace;
		}
	}

	// アラインを考えつつテキスト描画(縦書き)
	function drawTextWithAlign_subV(tfont, lines, offx, offy)
	{
		var twidth  = (textwidth ==0) ? width -textleft*2 : textwidth;
		var theight = (textheight==0) ? height-texttop*2  : textheight;
		var lw = tfont.height*lines.count + linespace*(lines.count-1);
		var lx = textleft+(twidth-lw)/2 + tfont.height;
		if (texthalign == 'left')
			lx = textleft + tfont.height;
		else if (texthalign == 'right')
			lx = textleft+theight-lw + tfont.height;
		for (var i = 0; i < lines.count; i++) {
			var lh = tfont.getTextWidth(this, lines[i]);
			var ly = (height-lh)/2;
			if (textvalign == 'top')
				ly = texttop;
			else if (textvalign == 'bottom')
				ly = texttop+theight-lh;
			tfont.drawText(this, lx+offx, ly+offy, lines[i]);
			lx += tfont.height+linespace;
		}
	}

	// アラインを考えつつテキスト描画
	function drawTextWithAlign(tfont=kfont, text=this.text, offx=0, offy=0)
	{
		if (text === void || text == "")
			return;
		// setOptions_subで数値に変換される場合があるので文字列に変換
		text = string(text);
		var lines = text.split(/\[r\]/); // 改行マークで配列に変換
		if (lines.count <= 0)
			return;
		kfont.vertical = vertical;
		if (vertical)
			drawTextWithAlign_subV(tfont, lines, offx, offy);
		else
			drawTextWithAlign_subH(tfont, lines, offx, offy);
	}

	// スクリプト文字列を実行する
	function eval(str)
	{
		if (str === void || str == "")
			return;
		if (str[0] == '&')
			str = str.substr(1);
		if (str[str.length-1] != '!') {
			return Scripts.eval(str);		
		} else {
			// 末尾が ! だったら、自身をコンテキストとして実行
			str = str.substr(0, str.length-1);
			return Scripts.eval(str, , , this);
//			return str!;
		}
	}

	// 互換性のために残しておく…
	function draw()
	{
		redraw();
	}

	// 同じく互換性のために残す…
	function updateState()
	{
		draw();
	}

	// 表示されているものをもう一度描く(サイズ変更後等に呼ばれる)
	function redraw()
	{
		if (graphic === void) {
			// 画像がなければ
			fillRect(0, 0, width, height, color);
		} /* else { 画像は変わるわけないので、このelseは不要
		　// でもコレがないと、画像上の文字がどんどん濃くなっていくかな
			// 画像があれば
			super.loadImages(graphic, graphickey);
			// サイズをイメージサイズに合わせる
			setSizeToImageSize();
       		}
		  */
		// 文字があるときは文字を描画
		drawTextWithAlign();
	}

	// レイヤ枠にでこぼこを描画
	function drawRuggedness(rugged=true, offx=0, dekocolor=0xffffff, dekoopa=128, bokocolor=0x000000, bokoopa=128)
	{
		var w = width, h = height;
		var c1 = rugged ? dekocolor : bokocolor;
		var o1 = rugged ? dekoopa   : bokoopa;
		var c2 = rugged ? bokocolor : dekocolor;
		var o2 = rugged ? bokoopa   : dekoopa;
		colorRect(  0+offx,   0,   w,   1, c1, o1);
		colorRect(  0+offx,   1,   1, h-2, c1, o1);
		colorRect(w-1+offx,   1,   1, h-1, c2, o2);
		colorRect(  1+offx, h-1, w-2,   1, c2, o2);
	}

	// コピー
	function assign(src)
	{
		.KLayer.copyAllMembers(this, src);
		// ↓KAGLayerにはassign()はない、最後に実行する必要あり
		super.assignImages(src, true);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
//		var dic = super.store(); スーパークラスが Layerだから不要
		var dic = %[];
		.KLayer.copyAllMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
//		super.restore(dic);	スーパークラスが Layerだから不要
		.KLayer.setOptions(dic);
		return dic;
	}

	// フォーカスの直前に呼ばれる
	function onBeforeFocus(layer, blurred, dir)
	{
//dm('onBeforeFocus on KLayer: ' + this);
		if (focusable && enabled && visible) {
			super.onBeforeFocus(layer, blurred, dir);
			return;
		}
		if (blurred == layer)
			return;	// これでフォーカスの無限ループを防ぐ。
				// ただし、一つ以上focusableがあれば。
		// 次のフォーカス可能レイヤを探す
		(dir ? nextfocus : prevfocus).focus(dir);
	}
/*
 これがあると、assign()した時にもグラフィックがdiscardされてしまうので削除
	property color {
		setter(x) {
			color_save = x;
			discardImage();	// 画像を無効化してcolorで塗りつぶす
		}
		getter {
			return color_save;
		}
	}
行頭に*を配置しない  */
/*
redraw()を呼ぶと子クラスに悪影響が出るので、呼ばないようにする
	// widthのproperty。設定されるとredrawする
	property width {
		setter(x) {
			if (x != super.width) {
				super.width = x;
				redraw();
			}
		}
		getter {
			return super.width;
		}
	}

	// heightのproperty。設定されるとredrawする
	property height {
		setter(x) {
			if (x != super.height) {
				super.height = x;
				redraw();
			}
		}
		getter {
			return super.height;
		}
	}

行頭に*を配置しない  */

	// フォーカスレイヤを双方向に設定
	property prevfocus {
		setter(x) {
			_prevfocus = x;
			x._nextfocus = this if (x != null);
		}
		getter {
			return _prevfocus;
		}
	}
	property nextfocus {
		setter(x) {
			_nextfocus = x;
			x._prevfocus = this if (x != null);
		}
		getter {
			return _nextfocus;
		}
	}

	// setSizeのproperty。設定されるとredrawする
	function setSize(w=width, h=height)
	{
		if (w != width || h != height) {
			super.setSize(w, h);
			redraw();
		}
	}

	// setPosのproperty。大きさが設定されるとredrawする
	function setPos(x, y, w, h)
	{
		super.setPos(x, y, w, h);
		if (w !== void && w != width || h !== void && h != height)
			redraw();
	}
}


// アニメーションファイル(.bsd/adf)のコンダクタ
class KLayersAnimationConductor extends BaseConductor
{
	var owner;	// コンダクタの持ち主 (=KLayerの派生)
	var savedata;	// セーブデータ。コンダクタはラベル地点にしかrestore()
			// できない(CurLineとかCurPosを復旧しない)ので、
			// ラベル通過時にデータを覚えておき、ownerがこの
			// コンダクタをstore()した時にそれを返すようにする

	// コンストラクタ
	function KLayersAnimationConductor(owner)
	{
		super.BaseConductor();
		ignoreCR = true;	// CRは無視
		this.owner = owner;
		savedata = %[];
	}

	// デストラクタ
	function finalize()
	{
		owner = void;	// ownerを参照しないようにする
		super.finalize();
	}

	// ローカルメンバコピー
	function copyLocalMembers(dst, src, localchildren)
	{
		if (dst === void || src === void)
			return;
		dst.owner = src.owner;
		(Dictionary.assignStruct incontextof dst.savedata)(src.savedata);
	}

	// 全メンバコピー
	function copyAllMembers(dst, src, localchildren)
	{
		if (dst === void || src === void)
			return;
		copyLocalMembers(dst, src);
		// BaseConductorにcopyLocalMembersがないのでタイヘン
		if (dst instanceof "KLayersAnimationConductor") {
			if (src instanceof "KLayersAnimationConductor")
				dst.assign(src);  // class <- class
			else
				dst.restore(src); // class <- dic
		} else { // dst=Dictionary
			if (src instanceof "KLayersAnimationConductor")
				dst = src.store(); // dic <- class
			else
				(Dictonary.assign incontextof dst)(src); // dic <- dic
		}
	}

	// 実行停止
	function onStop()
	{
		s(%[]);	// [s]タグを実行
	}

	// タグが実行されるとき
	function onTag(obj)
	{
		var func = this[obj.tagname];
		if (func === void) {
			em(Storages.extractFileName(curStorage)+": 未知のタグ: "+obj.tagname);
			return 0;
		}
		return func(obj);
	}

	// iscriptが実行されるとき
	function onScript(script, scriptname, lineofs)
	{
		try {
			Scripts.exec(script, scriptname, lineofs);
		}
		catch(e)
		{
			throw new Exception(scripotname + " の 行 " +
				lineofs + "から始まる"
				" iscript ブロックでエラーが発生しました。"
				"\n( 詳細はコンソールを参照してください )\n" +
				e.message);
		}
		return true;
	}

	// ラベルが実行されるとき
	function onLabel(label, page)
	{
	//	super.onLabel(...); BaseConductorにはonLabel()がないので無効化
		internal_store() if (page !== void);
	}

	// アニメーションを停止する
	function stopAnim()
	{
		stop();
	}

	// アニメーション情報ファイルを読み込む
	function loadAnimInfo(graphic, ext, label="")
	{
		startAnim(Storages.chopStorageExt(graphic)+ext, label);
	}

	// アニメーションを開始する
	function startAnim(storage=curStorage, label)
	{
		stopAnim();
		if (storage !== void && storage != "" &&
		    Storages.isExistentStorage(storage)) {
			// アニメーション定義ファイルが存在した
			clearCallStack();
//			interrupted = Anim_interrupted;
			loadScenario(storage);
			goToLabel(label);
			internal_store(); // 開始状態を保存する
			startProcess(true);
		}
	}

	// コピー
	function assign(src)
	{
		super.assign(src);
		copyLocalMembers(this, src);
	}

// セーブロードは、親レイヤのstore()/restore()に付随して実行される。
// それまでに(ラベル通過時に)データをセーブしておく
	function internal_store()
	{
		// restore()前に設定されている(はずの)ため、ownerはセーブしない
		savedata = super.store();
		savedata.owner = %[
			left     : owner.left,
			top      : owner.top,
			imageLeft: owner.imageLeft,
			imageTop : owner.imageTop
		];
	}

	// セーブ(internal_store()でセーブしたものを返すだけ
	function store()
	{
		return savedata;
	}

	// ロード
	function restore(dic)
	{
		// restore()前に設定されている(はずの)ため、ownerはセーブしない
		stopAnim();
		if (dic === void)
			return;
		super.restore(dic);
		(Dictionary.assignStruct incontextof savedata)(dic);
		owner.setPos(dic.owner.left, dic.owner.top);
		owner.setImagePos(dic.owner.imageLeft, dic.owner.imageTop);
		startProcess();
		return dic;
	}

// ここからアニメーション定義ファイル中のタグ
// elmは必ず !== void となっているので、void チェックは不要

	// いわゆる [s]
	function s(elm)
	{
		// 停止
		stopAnim();
		return -1; // 停止
	}

	// タグハンドラ loadcell() は何もしない
	function loadcell()
	{
		// .bsd/.adfファイルに存在した時にエラーにしないためのダミー
		return 0;
	}

	// 追加タグハンドラ pos(x, y)
	function pos(elm)
	{
		owner.setPos(str2num(elm.x, owner.left),
		             str2num(elm.y, owner.top),
		             str2num(elm.w, owner.width ),
		             str2num(elm.h, owner.height));
		owner.left    += str2num(elm.dx,   0);
		owner.top     += str2num(elm.dy,   0);
		
			      
		owner.opacity =  str2num(elm.opa,  owner.opacity);
		owner.opacity += str2num(elm.iopa, 0);
		return 0;
	}

	// 追加タグハンドラ size(w, h)
	function size(elm)
	{
		owner.setSize(str2num(elm.w, owner.width ),
			      str2num(elm.h, owner.height));
		return 0;
	}

	// index 値の範囲を 0～max に正規化する
	function evalidx(cur, max)
	{
		var ret = cur%max;
		return (ret >= 0) ? ret : ret+max;
	}

	// dispタグ上書きハンドラ
	function disp(elm)
	{
		// AnimButtonの時は、横は変更できないようにsx/sixは指定しては
		// ならない
			// // sx/syはdef=0(-imageLeftじゃない) に注意
			// …って書いてあったんだけど、なんでだっけ…
		var sx = str2num(elm.sx, -owner.imageLeft);
		var sy = str2num(elm.sy, -owner.imageTop );
		if (elm.six !== void) {
			var w = owner.width;
			var cursix = -owner.imageLeft\w;
			var idx = str2num(elm.six.replace(/six/, cursix));
			sx = evalidx(idx, owner.imageWidth\w) * w;
		}
		if (elm.siy !== void) {
			var h = owner.height;
			var cursiy = -owner.imageTop\h;
			var idx = str2num(elm.siy.replace(/siy/, cursiy));
			sy = evalidx(idx, owner.imageHeight\h) * h;
		}
		if (elm.index !== void) { // siyと同じ
			var h = owner.height;
			var curidx = -onwer.imageTop\h;
			var idx = str2num(elm.index.replace(/index/, curidx));
			sy = evalidx(idx, onwer.imageHeight\h) * h;
		}
		owner.setImagePos(-(sx), -(sy));
		return 0;
	}

	// タグハンドラ追加、loop
	function loop(elm)
	{
		// エラーにならないようにするためだけに単純定義
		return 0;
	}

	// タグハンドラ追加、noloop：loopの反対。
	function noloop(elm)
	{
		// エラーにならないようにするためだけに単純定義
		return 0;
	}

	// タグハンドラ追加 wait
	function wait(elm)
	{
		return elm.time; // 指定時間だけ停止
	}

	// タグハンドラ追加 eval
	function eval(elm)
	{
		eval(elm.exp); // elm.exp を式として実行
		return 0;
	}

	// タグハンドラ追加 trigger
	// KAGのconductorにトリガを送る。mainConductorに固定した方がいいか？
	function trigger(elm)
	{
		owner.window.conductor.trigger(elm.name);
		return 0;
	}
}


// アニメーションつきレイヤ
class KAnimLayer extends KLayer
{
	var classid = "KAnimLayer";	// 定数
//	var name;			// 名前(Layerクラス中で定義済ゆえ不要)
	var conductor;			// アニメーションのコンダクタ
//	var graphic;	// アニメーションパターン画像…は親クラスに既にあるので

	// コンストラクタ
	function KAnimLayer(win, par, i_name="", elm)
	{
		conductor = new KLayersAnimationConductor(this);
		super.KLayer(win, par, i_name);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		invalidate conductor;
		super.finalize();
	}

	// 本クラスだけのメンバをコピー
	function copyLocalMembers(dst, src, localchildren=true)
	{
		if (dst === void || src === void)
			return;
		conductor.copyAllMembers(dst.conductor, src.conductor);
	}

	// conductorはloadImages()中で設定されるのでsetOptions()は不要

	// イメージを読み込む。heightは後で指定すること
	function loadImages(graphic, key)
	{
		super.loadImages(...);
		// アニメーション情報があれば読む
		conductor.loadAnimInfo(graphic, ".adf");
	}

	// コピー
	function assign(src)
	{
		super.assign(src);
		conductor.assign(src.conductor);
	}

	// セーブ
	function store()
	{
		var dic = super.store();
		dic.conductor = conductor.store();
		return dic;
	}

	// ロード
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		conductor.restore(dic.conductor);
		return dic;
	}
}

// KClickableLayer.ncactionに入る定数
var NCACTION_SENDPARENT = 0;	// マウスイベントを親に送る
var NCACTION_NOACTION = 1;	// マウスイベントを捨てる


// ボタンにも使えるが画像変化しないレイヤ
class KClickableLayer extends KLayer
{
	var classid 		= "KClickableLayer";// 定数

	var countpage 		= true;		// [button]タグのcountpage参照

	var repeatable          = false;	// リピート可能かどうか
	var repeatbutton;			// リピート中ボタン(テンポラリ)
	var repeattimer;			// リピート動作のタイマー
	var repeatinterval1     = 500;		// リピート間隔1(初回)
	var repeatinterval2     = 100;		// リピート間隔2

	// オプション群
	// 左ボタンを押された時に使用する変数
	var onclick;		// 押された時に実行する動作
	var clickse;		// 押された時に鳴らす音
	var clicksebuf = 0;	// 押された時に鳴らす音のバッファ
	var clickstorage;	// 押された時にジャンプするシナリオファイル
	var clicktarget;	// 押された時にジャンプするシナリオラベル

	// 右ボタンを押された時に使用する変数
	var onrclick;		// 押された時に実行する動作
	var rclickse;		// 押された時に鳴らす音
	var rclicksebuf = 0;	// 押された時に鳴らす音のバッファ
	var rclickstorage;	// 押された時にジャンプするシナリオファイル
	var rclicktarget;	// 押された時にジャンプするシナリオラベル

	// 中ボタンを押された時に使用する変数
	var onmclick;		// 押された時に実行する動作
	var mclickse;		// 押された時に鳴らす音
	var mclicksebuf = 0;	// 押された時に鳴らす音のバッファ
	var mclickstorage;	// 押された時にジャンプするシナリオファイル
	var mclicktarget;	// 押された時にジャンプするシナリオラベル

	// 左ボタンが離された時に使用する変数
	var onrelease;		// 離された時に実行する動作
	var releasese;		// 離された時に鳴らす音
	var releasesebuf = 0;	// 離された時に鳴らす音のバッファ
	var releasestorage;	// 離された時にジャンプするシナリオファイル
	var releasetarget;	// 離された時にジャンプするシナリオラベル

	// 右ボタンが離された時に使用する変数
	var onrrelease;		// 離された時に実行する動作
	var rreleasese;		// 離された時に鳴らす音
	var rreleasesebuf = 0;	// 離された時に鳴らす音のバッファ
	var rreleasestorage;	// 離された時にジャンプするシナリオファイル
	var rreleasetarget;	// 離された時にジャンプするシナリオラベル

	// 中ボタンが離された時に使用する変数
	var onmrelease;		// 離された時に実行する動作
	var mreleasese;		// 離された時に鳴らす音
	var mreleasesebuf = 0;	// 離された時に鳴らす音のバッファ
	var mreleasestorage;	// 離された時にジャンプするシナリオファイル
	var mreleasetarget;	// 離された時にジャンプするシナリオラベル

	var onenter;		// ポインタが入った時に実行する動作
	var enterse;		// ポインタが入った時に鳴らす音
	var entersebuf = 0;	// ポインタが入った時に鳴らす音のバッファ
	var enterstorage; // ポインタが入った時にジャンプするシナリオファイル
	var entertarget;  // ポインタが入った時にジャンプするシナリオラベル

	var onleave;		// ポインタが出た時に実行する動作
	var leavese;		// ポインタが出た時に鳴らす音
	var leavesebuf = 0;	// ポインタが出た時に鳴らす音のバッファ;
	var leavestorage; // ポインタが出た時にジャンプするシナリオファイル
	var leavetarget;  // ポインタが出た時にジャンプするシナリオラベル

	// ボタン押せるかどうか、押せないボタンが押された時の動作を定義。
	// defaultでは、「左クリックだけ可能、それ以外は親に通知」
	var clickablemb = VK_LBUTTON;		// 押せるボタン
			// ↑論理和にできるのは偶然なんだけどな…
	var ncaction    = NCACTION_SENDPARENT;		// 動作を定義

	// コンストラクタ
	function KClickableLayer(win, parent, i_name, elm)
	{
		super.KLayer(win, parent, i_name);
		if(typeof win.cursorPointed !== "undefined")
			cursor = win.cursorPointed;
		hitThreshold = 0;
		focusable = true;	// フォーカスを得られる

		repeattimer = new Timer(this, "onMouseDownRepeat");
		repeattimer.interval = repeatinterval1;

		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		repeattimer.enabled = false;
		invalidate repeattimer;
		super.finalize(...);
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.countpage  = +s.countpage  if (s.countpage !== void);
		d.repeatable = +s.repeatable if (s.repeatable !== void);
//	"repeattimer.interval"
//	"repeattimer.enabled"
		d.repeatinterval1 = +s.repeatinterval1 if (s.repeatinterval1 !== void);
		d.repeatinterval2 = +s.repeatinterval2 if (s.repeatinterval2 !== void);

		d.onclick      = s.onclick       if (s.onclick      !== void);
		d.clickse      = s.clickse       if (s.clickse      !== void);
		d.clicksebuf   = +s.clicksebuf   if (s.clicksebuf   !== void);
		d.clickstorage = s.clickstorage  if (s.clickstorage !== void);
		d.clicktarget  = s.clicktarget   if (s.clicktarget  !== void);

		d.onrclick     = s.onrclick      if (s.onrclick     !== void);
		d.rclickse     = s.rclickse      if (s.rclickse     !== void);
		d.rclicksebuf  = +s.rclicksebuf  if (s.rclicksebuf  !== void);
		d.rclickstorage= s.rclickstorage if (s.rclickstorage!== void);
		d.rclicktarget = s.rclicktarget  if (s.rclicktarget !== void);

		d.onmclick     = s.onmclick      if (s.onmclick     !== void);
		d.mclickse     = s.mclickse      if (s.mclickse     !== void);
		d.mclicksebuf  = +s.mclicksebuf  if (s.mclicksebuf  !== void);
		d.mclickstorage= s.mclickstorage if (s.mclickstorage!== void);
		d.mclicktarget = s.mclicktarget  if (s.mclicktarget !== void);

		d.onrelease    = s.onrelease     if (s.onrelease    !== void);
		d.releasese    = s.releasese     if (s.releasese    !== void);
		d.releasesebuf = +s.releasesebuf if (s.releasesebuf !== void);
		d.releasestorage=s.releasestorage if(s.releasestorage!==void);
		d.releasetarget= s.releasetarget if (s.releasetarget!== void);

		d.onrrelease   = s.onrrelease    if (s.onrrelease   !== void);
		d.rreleasese   = s.rreleasese    if (s.rreleasese    !== void);
		d.rreleasesebuf= +s.rreleasesebuf if(s.rreleasesebuf !== void);
		d.rreleasestorage=s.rreleasestorage if(s.rreleasestorage!==void);
		d.rreleasetarget=s.rreleasetarget if(s.rreleasetarget!== void);

		d.onmrelease   = s.onmrelease    if (s.onmrelease   !== void);
		d.mreleasese   = s.mreleasese    if (s.mreleasese    !== void);
		d.mreleasesebuf= +s.mreleasesebuf if(s.mreleasesebuf !== void);
		d.mreleasestorage=s.mreleasestorage if(s.mreleasestorage!==void);
		d.mreleasetarget=s.mreleasetarget if(s.mreleasetarget!== void);

		d.onenter      = s.onenter       if (s.onenter      !== void);
		d.enterse      = s.enterse       if (s.enterse      !== void);
		d.entersebuf   = +s.entersebuf   if (s.entersebuf   !== void);
		d.enterstorage = s.enterstorage  if (s.enterstorage !== void);
		d.entertarget  = s.entertarget   if (s.entertarget  !== void);

		d.onleave      = s.onleave       if (s.onleave      !== void);
		d.leavese      = s.leavese       if (s.leavese      !== void);
		d.leavesebuf   = +s.leavesebuf   if (s.leavesebuf   !== void);
		d.leavestorage = s.leavestorage  if (s.leavestorage !== void);
		d.leavetarget  = s.leavetarget   if (s.leavetarget  !== void);

		d.clickablemb  = s.clickablemb   if (s.clickablemb  !== void);
		d.ncaction     = +s.ncaction     if (s.ncaction     !== void);

		if (typeof(s.repeattimer) != 'undefined') {
			if (typeof(d.repeattimer) == 'undefined')
				d.repeattimer = %[];
			d.repeattimer.interval = s.repeattimer.interval;
			d.repeattimer.enabled  = s.repeattimer.enabled;
		}
	}

	// これ以下の全てのメンバをコピーする
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, src);
		.KClickableLayer.copyLocalMembers(dst, src);
	}

	// オプションを設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.exp !== void)	// onreleaseはexpと全く同じ
			elm.onrelease = elm.exp;
		if (elm.storage !== void)
			elm.releasestorage = elm.storage;
		if (elm.target !== void)
			elm.releasetarget = elm.target;

		// 親レイヤにオプション指定
		super.setOptions(elm);
		.KClickableLayer.copyLocalMembers(this, elm);

		// *storage/*targetのみが指定されたら、*target/*storageをvoidに
		if (elm.clickstorage   !== void && elm.clicktarget   === void)
			clicktarget    = void;
		if (elm.clickstorage   === void && elm.clicktarget   !== void)
			clickstorage   = void;
		if (elm.releasestorage !== void && elm.releasetarget === void)
			releasetarget  = void;
		if (elm.releasestorage === void && elm.releasetarget !== void)
			releasestorage = void;
		if (elm.enterstorage   !== void && elm.entertarget   === void)
			entertarget    = void;
		if (elm.enterstorage   === void && elm.entertarget   !== void)
			enterstorage   = void;
		if (elm.leavestorage   !== void && elm.leavetarget   === void)
			leavetarget    = void;
		if (elm.leavestorage   === void && elm.leavetarget   !== void)
			leavestorage   = void;
	}

	// 現在のマウスボタンがclickと判断可能かどうか
	function isClickableMb(button)
	{
		// button === voidで、その時実際に押されているボタンをチェック
		if (button === void) {
			var ks = System.getKeyState;
			return ((ks(VK_LBUTTON) && (clickablemb&VK_LBUTTON)) ||
				(ks(VK_RBUTTON) && (clickablemb&VK_RBUTTON)) ||
				(ks(VK_MBUTTON) && (clickablemb&VK_MBUTTON)));
		}
		return ((button == mbLeft   && (clickablemb&VK_LBUTTON)) ||
			(button == mbRight  && (clickablemb&VK_RBUTTON)) ||
			(button == mbMiddle && (clickablemb&VK_MBUTTON)));
	}

	// (ボタンクリック時などの)サウンドを鳴らす。
	function playSound(sndfile, buf = 0)
	{
		if (sndfile === void || sndfile == "")
			return;
		kag.se[buf].play(%[storage:sndfile]);
	}

	// KAGのシナリオジャンプ
	function jumpScenario(storage, target, countpage)
	{
		if (storage !== void || target !== void)
			window.process(storage, target, countpage); 
	}

	// マウスが押された場合
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		dm("右クリック");
		// super/親のonMouseDown()を呼ぶと最終的にonPrimaryClickに
		// なるので呼ばない
		if (!isClickableMb(button)){ // 押していいボタンじゃなければ無視
			if( sf.QSaveLoadSelectIndex != void && sf.QSaveLoadSelectIndex >= 0 ){
				dm("Qセーブロードのスロット右クリック");
				//対象となるセーブデータをロード開始
				SysBtn_LoadFunction(sf.QSaveLoadSelectIndex);
				return;
			}
			//各モード画面を戻す為に利用する
			if( kag.RunConfigModeFlg == 1 ){
				SysBtn_CloseConfig();
				return;
			}
			if( kag.RunSaveLoadModeFlg == 1 ){
				SysBtn_CloseSaveLoadViewMode();
				return;
			}
			return;
		}

		// ボタンごとに別々に指定の動作をさせる
		if (button == mbLeft) {
			if (!(clickablemb & VK_LBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseDown(x+left,y+top,button,shift);
				return;
			}
			playSound(clickse, clicksebuf);
			jumpScenario(clickstorage, clicktarget, countpage);
			eval(onclick);	// void チェックはこの中で
		} else if (button == mbRight) {

			if (!(clickablemb & VK_RBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseDown(x+left,y+top,button,shift);
				return;
			}
			playSound(rclickse, rclicksebuf);
			jumpScenario(rclickstorage, rclicktarget, countpage);
			eval(onrclick);	// void チェックはこの中で
		} else /* if (button == mbMiddle) */ {
			if (!(clickablemb & VK_MBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseDown(x+left,y+top,button,shift);
				return;
			}
			playSound(mclickse, mclicksebuf);
			jumpScenario(mclickstorage, mclicktarget, countpage);
			eval(onmclick);	// void チェックはこの中で
		}
		// 「タイトルに戻る」など、上のeval()でthisがinvalidateされた
		// 時に備えて、チェックする。
		if (!isvalid(this))
			return;
		// ここにきたときはボタン押されていること確定
		if (repeatable) {
			repeattimer.interval = repeatinterval1;
			repeattimer.enabled  = true;
			repeatbutton = button;
		}
	}

	// マウス押されっぱなしの時のリピート関数
	function onMouseDownRepeat()
	{
		onMouseDown(cursorX, cursorY, repeatbutton, 0);
		repeattimer.interval = repeatinterval2;
	}

	// マウスが放された場合
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		repeattimer.enabled  = false;
		repeattimer.interval = repeatinterval1;

//		super.onMouseUp(...); // parent.onMouseUp()を実行しないように

		// ボタンごとに別々に指定の動作をさせる
		if (button == mbLeft) {
			if (!(clickablemb & VK_LBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseUp(x+left,y+top,button,shift);
				return;
			}
			playSound(releasese, releasesebuf);
			jumpScenario(releasestorage, releasetarget, countpage);
			eval(onrelease);	// void チェックはこの中で
		} else if (button == mbRight) {
			if (!(clickablemb & VK_RBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseUp(x+left,y+top,button,shift);
				return;
			}
			playSound(rreleasese, rreleasesebuf);
			jumpScenario(rreleasestorage, rreleasetarget,countpage);
			eval(onrrelease);	// void チェックはこの中で
		} else /* if (button == mbMiddle) */ {
			if (!(clickablemb & VK_MBUTTON)) {
				if (ncaction == NCACTION_SENDPARENT)
					parent.onMouseUp(x+left,y+top,button,shift);
				return;
			}
			playSound(mreleasese, mreleasesebuf);
			jumpScenario(mreleasestorage, mreleasetarget,countpage);
			eval(onmrelease);	// void チェックはこの中で
		}
		// 「タイトルに戻る」など、上のeval()でthisがinvalidateされた
		// 時に備えて、チェックする。今は不要なのでコメントアウト
		// if (!isvalid(this))
		//	return;
		// 必要ならこの後に処理を。
	}

//	// なんでこっちでなくonMouseDown()使ってるんだっけ…。今は何もしない
//	// onClick()はmouseUp時に動くから、だったかなぁ。
//	function onClick()
//	{
//		super.onClick(...);
//	}

	// マウスが入った時
	function onMouseEnter()
	{
		super.onMouseEnter(...);
		playSound(enterse, entersebuf);
		jumpScenario(enterstorage, entertarget, countpage);
		eval(onenter);	// void チェックはこの中で
	}

	// マウスが出た時
	function onMouseLeave()
	{
		super.onMouseLeave(...);
		window.focusedLayer = null;

		playSound(leavese, leavesebuf);
		jumpScenario(leavestorage, leavetarget, countpage);
		eval(onleave);	// void チェックはこの中で
	}

	// フォーカスされた時
	function onFocus(focused, direction)
	{
//		dm("フォーカスされた");
		super.onFocus(...); // parent.onMouseUp()を実行しないように
		// マウス押された時も改めてフォーカスされるので、それは省く
		if (0 <= cursorX && cursorX < width &&
		    0 <= cursorY && cursorY < height)
			return;
		// キーが押された時のみフォーカスするので、そうでなければ省く
		var gks = window.getKeyState;
		if (!gks(VK_LEFT) && !gks(VK_UP) && !gks(VK_RIGHT) && !gks(VK_DOWN) && !gks(VK_TAB) && !gks(sf.Config_Key_SelUP) && !gks(sf.Config_Key_SelDown))
			return;

		// マウスを自身の中心に移動する。これでonMouseEnterの画像になる
		setCursorPos(width\2, height\2);
	}

	// キーが押された時(animbuttonでまだうまく動いてない)
	function onKeyDown(key, shift, process)
	{
		if (process && (key == VK_RETURN || key == VK_SPACE)) {
			// スペースキーまたはエンターキーが押されたら
			// 中央でmouseが押されたことにする
			onMouseDown(width\2, height\2, mbLeft, shift);
			super.onKeyDown(key, shift, false);
		} else {
			super.onKeyDown(...);
		}
	}

	// キーが放された時(animbuttonでまだうまく動いてない)
	function onKeyUp(key, shift, process)
	{
		if (process && (key == VK_RETURN || key == VK_SPACE)) {
			// スペースキーまたはエンターキーが押されたら
			// 中央でmouseが離されたことにする
			onMouseUp(width\2, height\2, mbLeft, shift);
			super.onKeyUp(key, shift, false);
		} else {
			super.onKeyUp(...);
		}
	}

	// レイヤーのコピー
	function assign(src)
	{
		super.assign(src);
		.KClickableLayer.copyLocalMembers(this, src);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KClickableLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		.KClickableLayer.setOptions(dic);
		return dic;
	}
}


// ボタン群の共通レイヤ
// 0.99から、文字の時と画像の時とで区別しないようになり、Butt_imageLoaded削除
// ボタン画像は「横に四つ(normal/clicked/entered/disabled)」並ぶ。
class KButtonLayer extends KClickableLayer
{
	var classid 		= "KButtonLayer";// 定数

	var Butt_mouseOn    = false;		// レイヤ内にマウスがあるか
	var Butt_mouseDown  = false;		// マウスボタンが押されているか
//	var color           = 0xff404040;	// 既に存在するから不要
	var entercolor      = 0xff909090;	// マウスが入った時の色
	var clickcolor      = 0xffd0d0d0;	// マウスがクリックされた時の色
	var disablecolor    = 0xff404040;	// 押せない時の色
	var Butt_keyPressed = false;	// キーが押されているかどうかの状態

//	var kfont;		定義済み	// 通常時のフォント
	var enterfont;				// マウスオン時のフォント
	var clickfont;				// クリック時のフォント
	var disablefont;			// 無効時のフォント

	var normalgraphic;			// マウスが乗っていない時の画像
	var clickgraphic;			// マウスが押された時の画像
	var entergraphic;			// マウスが乗った時の画像
	var disablegraphic;			// 無効時の画像

	// 無効時にhitThreshold=256に設定するため、そのバックアップ用
	var hitThreshold_backup = 0;

	// コンストラクタ
	function KButtonLayer(win, parent, i_name, elm=%[])
	{
		super.KClickableLayer(win, parent, i_name);

//		kfont       = new KFont();	// 定義済み
		enterfont   = new KFont();	// 先にオプション設定しとく
		clickfont   = new KFont();
		disablefont = new KFont();

		// デフォルトボタンサイズ
		width = 32           if (elm.width      === void);

		setDefaultFont(elm);
		setOptions(elm);
	}

	// フォント設定用(コンストラクタからのみ呼ばれる)
	function setDefaultFont(elm)
	{
		kfont.setOptions(elm.kfont) if (elm !== void);
		// ほかのフォントはデフォルトでkfontと同じにする
		enterfont  .assign(kfont);
		clickfont  .assign(kfont);
		disablefont.assign(kfont);

		// デフォルトではフォントは全て同じ、disableだけちょっと暗い
		var c = +kfont.color;
		c = (c&0xfe0000)/2 + (c&0x00fe00)/2 + (c&0x0000fe)/2;
		disablefont.setOptions(%[color:c]);
	}

	// デストラクタ
	function finalize()
	{
		invalidate enterfont;
		invalidate clickfont;
		invalidate disablefont;
		super.finalize(...);
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;

		d.Butt_mouseOn  = +s.Butt_mouseOn if (s.Butt_mouseOn !== void);
		d.Butt_mouseDown=+s.Butt_mouseDown if(s.Butt_mouseDown!==void);

		// ここから色設定
		if (s.color !== void)
			d.color = d.entercolor = d.clickcolor = d.disablecolor = +s.color;
//不要		d.color         = +s.normalcolor  if (s.normalcolor  !== void);
		d.entercolor    = +s.entercolor   if (s.entercolor   !== void);
		d.clickcolor    = +s.clickcolor   if (s.clickcolor   !== void);
		d.disablecolor  = +s.disablecolor if (s.disablecolor !== void);
		d.normalgraphic = s.normalgraphic if (s.normalgraphic!== void);
		d.clickgraphic  = s.clickgraphic  if (s.clickgraphic !== void);
		d.entergraphic  = s.entergraphic  if (s.entergraphic !== void);
		d.disablegraphic= s.disablegraphic if(s.disablegraphic!==void);
//colorと同じなので不要	d.normalcolor = s.normalcolor if(s.normalcolor!==void);

		// s.hitThresholdが指定された時、enabledならそのまま指定、
		// そうでなければd.hitThreshold_backupにのみ指定
		if (s.hitThreshold !== void) {
			d.hitThreshold_backup = +s.hitThreshold;
			if (s.enabled === void && +d.enabled ||
			    s.enabled !== void && +s.enabled)
				d.hitThreshold = +s.hitThreshold;
			else
				d.hitThreshold = 256; // !enabledなら判定なし
		}

		// ここからフォント設定
//不要		d.kfont       = %[] if (d.kfont       === void);
		d.enterfont   = %[] if (d.enterfont   === void);
		d.clickfont   = %[] if (d.clickfont   === void);
		d.disablefont = %[] if (d.disablefont === void);
		if (s.kfont !== void) {
			.KFont.copyLocalMembers(d.enterfont,   s.kfont);
			.KFont.copyLocalMembers(d.clickfont,   s.kfont);
			.KFont.copyLocalMembers(d.disablefont, s.kfont);
		}
//不要		.KFont.copyLocalMembers(d.kfont,       s.kfont);
		.KFont.copyLocalMembers(d.enterfont,   s.enterfont);
		.KFont.copyLocalMembers(d.clickfont,   s.clickfont);
		.KFont.copyLocalMembers(d.disablefont, s.disablefont);
	}

	// このレイヤ以下の全てのメンバをコピー
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, src);
		.KButtonLayer.copyLocalMembers(dst, src);
	}

	// オプションを設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		super.setOptions(elm);
		.KButtonLayer.copyLocalMembers(this, elm);
		redraw();
	}

	// ボタン画像を読み込む... 部分画像を読み込み、配置する
	// widthfixedはボタン横幅が決まったかどうか(画像が存在=ボタン横幅決定)
	function loadSubImage(g, key=graphickey, widx, widthfixed, wsiz=1)
	{
		if (g === void)
			return widthfixed;
		var l = new .Layer(window, parent);
		l.loadImages(g, key);
		if (!widthfixed) {
			setImagePos(0, 0);
			setSize(l.imageWidth\wsiz, l.imageHeight);
			setImageSize((l.imageWidth\wsiz) * 4, l.imageHeight);
		}
		copyRect(widx*width,0, l, 0,0,l.imageWidth,l.imageHeight);
		invalidate l;
		return true;
	}

	// 画像が無いボタン描画(一つだけ)
	function drawSubButton(xidx, rugged, color)
	{
		fillRect(width*xidx, 0, width, height, color);
					// disabledの時はrugged===void
		drawRuggedness(rugged, width*xidx) if (rugged !== void);
	}

	// これで画像があろうがなかろうがボタンが描画される
	function drawButtons()
	{
		var wflg = false;

		// graphicだけは横幅が違うので特別扱い(x3)
		wflg = loadSubImage(graphic,        , 0, wflg, 3);
		wflg = loadSubImage(normalgraphic,  , 0, wflg);
		wflg = loadSubImage(clickgraphic,   , 1, wflg);
		wflg = loadSubImage(entergraphic,   , 2, wflg);
		wflg = loadSubImage(disablegraphic, , 3, wflg) if (!enabled);

		// ここまでで、ボタン画像があれば描かれており、
		// 無ければ何も描かれていない。widthにボタン幅は指定済み
		// 画像がない場合は、最初からwidthは指定済みだったものとする
		imageWidth = width * 4 if (!wflg);

		if (graphic === void) {
			if (normalgraphic === void)
				drawSubButton(0, true,  normalcolor);
			if (clickgraphic === void)
				drawSubButton(1, false, clickcolor);
			if (entergraphic === void)
				drawSubButton(2, true,  entercolor);
		}
		if (disablegraphic === void) {
			// disablegraphic が無ければ、なんか適当なのを描く
			if (graphic === void && normalgraphic === void)
				drawSubButton(3, ,      disablecolor);
			else
				copyRect(width*3,0,this,0,0,width,height);
		}

		// 最後にテキスト書いて終わり
		drawTextWithAlign(normalfont,  text, width*0, 0);
		drawTextWithAlign(clickfont,   text, width*1, 0);
		drawTextWithAlign(enterfont,   text, width*2, 0);
		drawTextWithAlign(disablefont, text, width*3, 0);
	}

	// ボタンを描く
	function redraw()
	{
		drawButtons();
		update();
	}


	// 画像を読み込む
	function loadImages(g=graphic, key=graphickey, ng=normalgraphic, cg=clickgraphic, eg=entergraphic, dg=disablegraphic)
	{
		// 最初に画像なし状態にしておく
		discardImage();
		graphic        = (g   == "") ? void : g   if (g   !== void);
		normalgraphic  = (ng  == "") ? void : ng  if (ng  !== void);
		clickgraphic   = (cg  == "") ? void : cg  if (cg  !== void);
		entergraphic   = (eg  == "") ? void : eg  if (eg  !== void);
		disablegraphic = (dg  == "") ? void : dg  if (dg  !== void);
		graphickey     = (key == "") ? void : key if (key !== void);

		drawButtons();
	}

	// マウスが押された場合
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		if (isClickableMb(button)) {
			Butt_mouseDown = true;
			update();
		}
		super.onMouseDown(x, y, button, shift);
	}

	// マウスが放された場合
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		if (isClickableMb(button)) {
			Butt_mouseDown = false;
			update();
		}
		super.onMouseUp(x, y, button, shift);
	}

	// なんでこっちでなくonMouseDown()使ってるんだっけ…。今は何もしない
	// onClick()はmouseUp時に動くから、だったかなぁ。
//	function onClick()
//	{
//		super.onClick(...);
//	}

	// 現在の状態にあわせて描画する
	// 実際には onPaint()からのみ呼ばれる。
	function drawState()
	{
		if (!enabled)
			imageLeft = -3 * width;	// 無効状態
		else if (Butt_mouseDown)
			imageLeft = -1 * width;	// マウス押された状態
		else if (Butt_mouseOn)
			imageLeft = -2 * width;	// マウスが乗った状態
		else 
			imageLeft = 0 * width;	// マウス乗っていない状態
	}

	// 描画の直前に呼ばれる
	function onPaint()
	{
		super.onPaint(...);
		drawState();
	}

	// マウスが入った時
	function onMouseEnter()
	{
		Butt_mouseOn = true;
		update();
		super.onMouseEnter(...);
	}

	// マウスが出た時
	function onMouseLeave()
	{
		Butt_mouseOn = false;
		Butt_mouseDown = false;
		update();
		super.onMouseLeave(...);
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

	// キーが押された時(animbuttonでまだうまく動いてない)
	function onKeyDown(key, shift, process)
	{
		if (process && (key == VK_RETURN || key == VK_SPACE))
			Butt_keyPressed = true;
		super.onKeyDown(...);
	}

	// キーが放された時(animbuttonでまだうまく動いてない)
	function onKeyUp(key, shift, process)
	{
		if (process && (key == VK_RETURN || key == VK_SPACE))
			Butt_keyPressed = false;
		super.onKeyUp(...);
	}

/*親クラスのメンバ変数と同名でpropertyは作れないらしい…。くそう。
	property text
  width/heightを変更するとグラフィックが無効になるのは結構辛いので使用しない
	property width
	property height
行頭に*を配置しない  */

	// disable時は当たり判定をなくす
	property enabled
	{
		setter(x) {
			if (super.enabled == x)	// 同じなら何もしない
				return;
			hitThreshold_backup = hitThreshold if (super.enabled);
			hitThreshold = x ? 0 : 256;
			super.enabled = x;
			update();	// 設定値が違ったら描き直す
		}
		getter {
			return super.enabled;
		}
	}

	// normalcolorというメンバを作るためだけに、プロパティ作成
	property normalcolor
	{
		setter(x) {
			color = x;
		}
		getter {
			return color;
		}
	}

	// normalfontというメンバを作るためだけに、プロパティ作成
	property normalfont
	{
		setter(x) {
			kfont.assign(x);
		}
		getter {
			return kfont;
		}
	}

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		.KButtonLayer.copyLocalMembers(this, src);
		Butt_mouseOn = false;
		// ↑トランジション前後で、KRadioButtonItemのButt_mouseOnが
		// マウスはレイヤ外に出てるのにtrueのままになることがあったので
		// ここでButt_mouseOnを強制的にfalseにする。他にカッコいい直し
		// 方、ないかしらん
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KButtonLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		.KButtonLayer.setOptions(dic);
		return dic;
	}
}


// アニメーションつきリンクボタンレイヤ(AnimationButtonLayerの焼き直し)
class KAnimButtonLayer extends KButtonLayer
{
	var classid    = "KAnimButtonLayer";	// 定数
	// アニメーションボタンの追加部分
	var conductor;		// アニメーションのコンダクタ
	var maxpatternnum = 1;	// 現在のアニメーションセル最大数

	// コンストラクタ
	function KAnimButtonLayer(win, parent, i_name, elm)
	{
		conductor = new KLayersAnimationConductor(this);
		super.KButtonLayer(win, parent, i_name);
		setDefaultFont(elm);	// KButtonLayerのを呼ぶ
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		stopAnim();
		super.finalize(...);
		// 最後に invalidate した方が、stopAnim()でエラー出ない
		invalidate conductor;
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(dst, src, localchildren=true)
	{
		if (dst === void || src === void)
			return;
		if (localchildren)
			.KLayersAnimationConductor.copyLocalMembers(
						dst.conductor, src.conductor);
		if (src.maxpatternnum !== void)
			dst.maxpatternnum = src.maxpatternnum;
	}

	// このレイヤ以下の全てのメンバをコピー
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, src);
		.KAnimButtonLayer.copyLocalMembers(dst, src);
	}

	// オプションを設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		super.setOptions(elm);
		.KAnimButtonLayer.copyLocalMembers(this, elm);
		// loadImages() の後に height だけ設定する
		height = +elm.height if (elm.height !== void);
		redraw();
	}

	// イメージを読み込む。この後に適当な height に調整すること
	function loadImages(g, key, kg, ng, cg, eg, dg, newheight)
	{
		stopAnim();
// ToDo: これがあると slidertabが無効化されてしまう…原因不明、後で追求すること
//		.KAnimButtonLayer.discardImage();
		super.loadImages(g, key, kg, ng, cg, eg, dg);
		if (newheight !== void)
			height = newheight;
		maxpatternnum = imageHeight \ height;
		// アニメーション情報があれば読む
		conductor.loadAnimInfo(graphic);
	}

	// イメージを破棄する
	function discardImage()
	{
		stopAnim();
		super.discardImage();
		maxpatternnum = 1;
	}

	// アニメーションを開始する
	function startAnim(storage, label)
	{
		conductor.startAnim(...);
	}

	// アニメーションを停止する
	function stopAnim()
	{
		conductor.stopAnim();
	}

	// クリック時の動作
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		if (isClickableMb(button))
			startAnim(, '*onclick'); // "*onclick"からアニメ開始
		super.onMouseDown(x, y, button, shift);
	}

	// マウスが放された場合
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		if (isClickableMb(button))
			startAnim(, '*onenter'); // "*onenter"からアニメ開始
		super.onMouseUp(x, y, button, shift);
	}

	// マウスが入った時
	function onMouseEnter()
	{
//dm('onMouseEnter on KAnimButton: ' + this);
		startAnim(, '*onenter');	// "*onenter"からアニメ開始
		super.onMouseEnter(...);
		

		
		
//		super.loadImages("system_config_ModeA_MovieSkipA.png");
//		global.kag.fore.layers[14].loadImages("system_config_ModeA_MovieSkipA.png");
	}

	// マウスが出た時
	function onMouseLeave()
	{
//dm('onMouseLeave on KAnimButton: ' + this);
		startAnim(, '*normal');	// "*normal"からアニメ開始
		super.onMouseLeave(...);
		kag.fore.layers[14].freeImage();
		sf.ConfigHelpFlg = 0;
	}

	// フォーカス(unclicked focus)された時
	function onFocus(focused, direction)
	{
//dm('onFocus on KAnimButton: ' + this);
		startAnim(, '*onenter');
		super.onFocus(...);
	}

	// フォーカス(unclicked focus)を失った時
	function onBlur()
	{
//dm('onBlur on KAnimButton: ' + this);
		startAnim(, '*normal');
		super.onBlur(...);
		kag.fore.layers[14].freeImage();
		sf.ConfigHelpFlg = 0;
	}

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		.KAnimButtonLayer.copyLocalMembers(this, src);
	}


	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KAnimButtonLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		stopAnim();
		if (dic === void)
			return;
		super.restore(dic);
		.KAnimButtonLayer.setOptions(dic, false);
		conductor.restore(dic.conductor);
		return dic;
	}
}


// トグルボタンレイヤー
// released/checked/checkedonmouseの三状態を表す
class KToggleButtonLayer extends KAnimButtonLayer
{
	var classid = "KToggleButtonLayer";

	// oncheck/onuncheckは、onMouseUp()の時に実行される。onMouseDown()で
	// 実行すると、Window/FullScreen 切り替えをさせると onMouseUp()イベント
	// が発生せず、切り替え後にボタンステータスがおかしくなるため。
	// 吉里吉里のバグだと思う…。

	var checked = false;	// チェックされているかどうか
	var oncheck;		// check された時に呼ばれる TJS 関数
	var checkse;		// check された時に鳴らす音
	var checksebuf = 0;	// 押された時に鳴らす音のバッファ
	var checkstorage;	// check された時に呼ばれる KAG ストレージ
	var checktarget;	// check された時に呼ばれる KAG target
	var onuncheck;		// uncheck された時に呼ばれる TJS 関数
	var uncheckse;		// check された時に鳴らす音
	var unchecksebuf = 0;	// 押された時に鳴らす音のバッファ
	var uncheckstorage;	// uncheck の時に呼ばれる KAG ストレージ
	var unchecktarget;	// uncheck の時に呼ばれる KAG target
	var stateval;		// check状態を保存する変数を文字列で指定する

	// コンストラクタ
	function KToggleButtonLayer(window, parent, name, elm)
	{
		super.KAnimButtonLayer(window, parent, name);
		setDefaultFont(elm);	// KButtonLayerのを呼ぶ
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.checked      = +s.checked     if (s.checked      !== void);
		d.oncheck      = s.oncheck      if (s.oncheck      !== void);
		d.checkse      = s.checkse      if (s.checkse      !== void);
		d.checksebuf   = +s.checksebuf  if (s.checksebuf   !== void);
		d.checkstorage = s.checkstorage if (s.checkstorage !== void);
		d.checktarget  = s.checktarget  if (s.checktarget  !== void);

		d.onuncheck    = s.onuncheck    if (s.onuncheck    !== void);
		d.uncheckse    = s.uncheckse    if (s.uncheckse    !== void);
		d.unchecksebuf = +s.unchecksebuf if(s.unchecksebuf !== void);
		d.uncheckstorage=s.uncheckstorage if(s.uncheckstorage!==void);
		d.unchecktarget = s.unchecktarget if(s.unchecktarget!==void);
		d.stateval     = s.stateval      if (s.stateval    !== void);
	}

	// このレイヤの全てのメンバをコピー
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, drc);
		.KToggleButtonLayer.copyLocalMembers(dst, drc);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		var e = %[];
		(Dictionary.assign incontextof e)(elm);
		// exp,storage,targetはoncheckに対するものなので設定
		if (e.exp !== void)
			e.oncheck = e.exp, delete e.exp;
		if (e.storage !== void)
			e.checkstorage = e.storage, delete e.storage;
		if (e.target !== void)
			e.checktarget = e.target, delete e.target;
		var c = e.checked;	// checkedは特別扱いする
		delete e.checked;
		if (e.stateval !== void)
			c = eval(e.stateval); // voidチェックしてるけどcのため
		super.setOptions(e);
		.KToggleButtonLayer.copyLocalMembers(this, e);

		// こうしないとgraphicと一緒に指定した時に領域外エラーになる
		if (c !== void && +c != checked)
			simpleStateChange(+c);
	}

	// 画像読み込み
	function loadImages(graphic, key)
	{
		if (graphic === void)
			return;
		super.loadImages(...);
	}

	// 状態を変更する(ボタン状態確認、音再生、スクリプト実行なし)
	function simpleStateChange(state)
	{
		state = +state;
		checked = state; // 強制チェック時にも呼ぶのでフラグon必要
		if (stateval !== void)
			eval(stateval + ' = ' + state);
		if (state)
			startAnim(, "*oncheck");
		else
			startAnim(, Butt_mouseOn ? "*onuncheck" : "*onenter");
		update();
	}

	// チェックされた時に呼ばれる(makeCheck()も兼ねる)
	function onCheck()
	{
		if (checked)	// 押されてた時は何もしない
			return;
		simpleStateChange(true);

		playSound(checkse, checksebuf);
		jumpScenario(checkstorage, checktarget, countpage);
		eval(oncheck);	// void チェックはこの中で
	}

	// チェックが解除された時に呼ばれる(makeCheck()も兼ねる)
	function onUncheck()
	{
		if (!checked)	// 押されてなかった時は何もしない
			return;
		simpleStateChange(false);

		playSound(uncheckse, unchecksebuf);
		jumpScenario(uncheckstorage, unchecktarget, countpage);
		eval(onuncheck);	// void チェックはこの中で
	}

	// マウスが押された時
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseDown(x, y, button, shift);
		// 表示状態だけ変更して checked のスクリプトは実行しない
	}

	// マウスが放された時
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseUp(x, y, button, shift);
		if (!isClickableMb(button)) // 左クリック以外は無視
			return;
		if (!checked)
			onCheck();	// チェックされた
		else
			onUncheck();// チェック解除された
	}

	// マウスが入った時
	function onMouseEnter()
	{
		if (checked)
			startAnim(, "*onenter"); // チェック時のみ*onenter開始
		.KButtonLayer.onMouseEnter(...);
	}

	// マウスが出た時
	function onMouseLeave()
	{
		if (checked)
			startAnim(, "*oncheck");// チェック時のみ*oncheck開始
		.KButtonLayer.onMouseLeave(...);
	}

	// 現在の状態にあわせて描画を行う(onPaint()から呼ばれる)
	function drawState()
	{
		// check されてれば 1, checkでなければ 0
		if(!enabled)
			imageLeft = -3 * width;	// 無効状態
		else if (checked || Butt_mouseDown)
			imageLeft = -1 * width;	// マウス押された状態
		else if (Butt_mouseOn)
			imageLeft = -2 * width;	// マウスが乗った状態
		else 
			imageLeft = 0 * width;	// マウス乗っていない状態
	}


	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		.KToggleButtonLayer.copyLocalMembers(this, src);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KToggleButtonLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		.KToggleButtonLayer.setOptions(dic);
//		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;
	}
}


// チェックボックスの頭に貼るtogglebutton、親にイベントを送るようちょっと改造
class KCheckBoxTopLayer extends KToggleButtonLayer
{
	var classid = "KCheckBoxTopLayer";

	// コンストラクタ
	function KCheckBoxTopLayer(window, parent, name, elm)
	{
		super.KToggleButtonLayer(window, parent, name);
		focusable = false;	// これはフォーカスされない(親がされる)
		setDefaultFont(elm);	// KButtonLayerのを呼ぶ
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// イメージ読み込み
	function loadImages()
	{
		super.loadImages(...);
		// 親のサイズを自分に合わせる
		parent.setSize(width, height);
	}

	// チェックされた時に呼ばれる(makeCheck()も兼ねる)
	function onCheck()
	{
		super.onCheck(...);
//		parent.onCheck(...);	// 親にはこの関数作ってない
	}

	// チェックが解除された時に呼ばれる(makeCheck()も兼ねる)
	function onUncheck()
	{
		super.onUncheck(...);
//		parent.onUncheck(...);	// 親にはこの関数作ってない
	}

	// マウスが押された時
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseDown(x, y, button, shift);
		parent.onMouseDown(left+x, top+y, button, shift);// 親も呼ぶ
	}

	// マウスが放された時
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseUp(x, y, button, shift);
		parent.onMouseUp(left+x, top+y, button, shift);// 親も呼ぶ
	}

	// マウスが入った時
	function onMouseEnter()
	{
		super.onMouseEnter(...);
		parent.onMouseEnter(...);	// 親も呼ぶ
	}

	// マウスが出た時
	function onMouseLeave()
	{
		super.onMouseLeave(...);
		parent.onMouseLeave(...);	// 親も呼ぶ
	}
}		


// チェックボックスレイヤー(実態はToggleButton + 背景)
class KCheckBoxLayer extends KAnimButtonLayer
{
	var classid    = "KCheckBoxLayer";	// 定数
	var toggle;		// トグルボタンレイヤ

	// コンストラクタ
	function KCheckBoxLayer(window, parent, name, elm)
	{
		super.KAnimButtonLayer(window, parent, name);
		toggle = new KCheckBoxTopLayer(window, this);
		setDefaultFont(elm);	// KButtonLayerのを呼ぶ
		setOptions(elm); // トグルと自身を設定するために別で呼ぶ
	}

	// デストラクタ
	function finalize()
	{
		invalidate toggle;
		super.finalize();
	}

	// このレイヤのローカルメンバをコピーする
	function copyLocalMembers(dst, src, localchildren=true)
	{
		if (dst === void || src === void)
			return;
		if (localchildren)
			.KCheckBoxTopLayer.copyLocalMembers(dst.toggle, src.toggle);
	}

	// このレイヤ以下の全てのメンバをコピーする
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, src);
		.KCheckBoxLayer.copyLocalMembers(dst, src);
	}

	// オプション設定　ここではまだ toggle が定義されていないことがある
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.toggle !== void) {
			// toggle が設定されていれば値を設定する(restore時)
			super.setOptions(elm);
			toggle.setOptions(elm.toggle) if (toggle !== void);
		} else {
			// 通常の setOptions() 時
			var e = %[
				left:elm.left, top:elm.top,
				width:elm.basewidth, height:elm.baseheight,
				graphic:elm.basegraphic, color:elm.basecolor
			];
			if (elm.basewidth === void && elm.width !== void)
				e.width = elm.width;
			if (elm.baseheight === void && elm.height !== void)
				e.height = elm.height;
			super.setOptions(e);
			(Dictionary.assign incontextof e)(elm);
			delete e.left;	// X/Y座標は0,0固定なので削除
			delete e.top;
			toggle.setOptions(e) if (toggle !== void);
		}
	}

	// ボタンを強制的に押す
	function makeCheck()
	{
		toggle.onCheck();
	}

	// ボタンを強制的に離す
	function makeUncheck()
	{
		toggle.onUncheck();
	}

	// マウスが押された時
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseDown(x, y, button, shift);
		if (!isClickableMb(button)) // 左クリック以外は無視
			return;

		// onCheck()でクリックされるので、マウスが出てたらoffに
		if ((cursorX < 0 || width <= cursorX) ||
		    (cursorY < 0 || height <= cursorY))
			onMouseLeave();
	}

	// update するときに、base/toggleも updateする。
	function update()
	{
		if (toggle) // コンストラクタ中で呼ばれると存在しないので 要if
			toggle.update();
		super.update();
	}

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		toggle.assign(src.toggle);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		dic.toggle = toggle.store();
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic); // この中で setOptions(dic) を実行する
		toggle.restore(dic.toggle);
		return dic;
	}

	property checked {
		getter {
			return toggle.checked;
		}
		setter(x) {
			if (x)
				toggle.onCheck();
			else
				toggle.onUncheck();
		}
	}
}


// スライダーレイヤで使うタブボタンレイヤー
// スライダーの一部なので、親からpos/sizeが変更されることに注意
class KSliderTabLayer extends KAnimButtonLayer
{
	var classid = "KSliderTabLayer";

	var dragging = false;	// ドラッグ中フラグ
	var dragbtn;		// ドラッグ中ボタン
	var clickx=0, clicky=0;	// クリックされた時の座標保存用

	// コンストラクタ
	function KSliderTabLayer(window, parent, i_name, elm)
	{
		super.KAnimButtonLayer(window, parent, i_name);
		setDefaultFont(elm);	// KButtonLayerのを呼ぶ
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// マウスが押された時
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseDown(x, y, button, shift);
		if (!isClickableMb(button)) // 左クリック以外は無視
			return;

		if (!enabled || button != mbLeft)
			dragging = false;
		else {
			dragging = true;
			dragbtn  = button;
			clickx = x;
			clicky = y;
		}
	}

	// マウスが放された時
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseUp(x, y, button, shift);
		dragging = false;
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (!dragging)
			return;	// drag中でなければ終了
		// スライダがドラッグされた時は親のonSliderDragged()を呼ぶ
		// ここの座標はこのレイヤの座標をそのまま渡すので、+topとか
		// +leftとかする必要はない
		parent.onSliderDragged(x-clickx, y-clicky, dragbtn, shift);
	}

	// マウスホイールが回された時... 親に通知するだけ
	function onMouseWheel(shift, delta, x, y)
	{
		super.onMouseWheel(...);
		parent.onMouseWheel(shift, delta, left+x, top+y);
	}

	// キーが押された時
	function onKeyDown(key, shift, process)
	{
		parent.onKeyDown(...);	// 親を呼ぶ
	}

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		dragging = src.dragging;
		dragbtn  = src.dragbtn;
		clickx = src.clickx;
		clicky = src.clicky;
	}

	// セーブ時に上から呼ばれる(スーパークラスと同じなので不要)
//	function store()

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		dragging = false;
		// dragbtn  = 0; 初期化しない
		clickx = clicky = 0;
		return dic;
	}
}


// スライダー(縦横両対応、verticalメンバで判定)、KClickableLayerの派生にしたい
// もし縦横両方を同時に動かすスライダーを作るなら、verticalをチェックするのを
// 廃止し、hstep or vstepが0のときを横スライダー・縦スライダーとして特別扱い
// するよう再構築すること。
class KSliderLayer extends KLayer
{
	var classid = "KSliderLayer";	// 定数
	var vval = 0.0;		// 縦の現在値(0～1.0)
	var hval = 0.0;		// 横の現在値(0～1.0)

	var isstep = true;	// ステップ移動するか(false=無段階移動)

	var vintflg = false;	// 垂直方向は整数値のみとるかどうか
	var vmin = 0, vmax = 1.0; // 垂直方向の最小値・最大値
	var vstep = 0.05;	// 縦の刻み幅

	var hintflg = false;	// 水平方向は整数値のみとるかどうか
	var hmin = 0, hmax = 1.0; // 水平方向の最小値・最大値
	var hstep = 0.05;	// 横の刻み幅

	var tab;		// スライダーのタブ部分レイヤ
	var timer;		// スライダータブ外を押した時のリピートタイマ
	var hdst, vdst;		// タブ外クリック時の自動移動時の目標場所

	var onchange;		// 変更された時に実行するTJSスクリプト
	var onchangefunc;	// 変更された時に実行するTJSスクリプト(関数)
	var onchangestorage;	// 変更された時に実行するKAGストレージ
	var onchangetarget;	// 変更された時に実行するKAGラベル

	var drawcenterline = true;	// graphicが無い時に中央線を描くか

	// コンストラクタ
	function KSliderLayer(window, parent, i_name, elm)
	{
		super.KLayer(window, parent, i_name); // まだelmは設定しない
		tab = new KSliderTabLayer(window, this, i_name+'.tab');

		hitThreshold = 0;	// 透明部分
		focusable = true;	// マウスホイールイベントを得るため

		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		timer.enabled = false;		// 最初は falseに

		// 縦横判断は vertical メンバを利用するので必須
		var e = %[];
		(Dictionary.assign incontextof e)(elm) if (elm !== void);
		e.vertical = +e.vertical;	// 定義されてなかったらfalse

		setOptions(e);// updateState() はこの中で実行されるので不要
	}

	// デストラクタ
	function finalize()
	{
		timer.enabled = false;
		invalidate tab;
		invalidate timer;
		super.finalize(...);

	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.vval         = +s.vval         if (s.vval         !== void);
		d.hval         = +s.hval         if (s.hval         !== void);

		d.isstep       = +s.isstep       if (s.isstep       !== void);

		d.hintflg      = +s.hintflg      if (s.hintflg      !== void);
		d.hmin         = +s.hmin	 if (s.hmin         !== void);
		d.hmax         = +s.hmax	 if (s.hmax         !== void);
		d.hstep        = +s.hstep        if (s.hstep        !== void);
		if (d.hintflg) {
			d.hval  = int(d.hval)  if (d.hval  !== void);
			d.hmin  = int(d.hmin)  if (d.hmin  !== void);
			d.hmax  = int(d.hmax)  if (d.hmax  !== void);
			d.hstep = int(d.hstep) if (d.hstep !== void);
		}

		d.vintflg      = +s.vintflg      if (s.vintflg      !== void);
		d.vmin         = +s.vmin	 if (s.vmin         !== void);
		d.vmax         = +s.vmax	 if (s.vmax         !== void);
		d.vstep        = +s.vstep        if (s.vstep        !== void);
		if (d.vintflg) {
			d.vval  = int(d.vval)  if (d.vval  !== void);
			d.vmin  = int(d.vmin)  if (d.vmin  !== void);
			d.vmax  = int(d.vmax)  if (d.vmax  !== void);
			d.vstep = int(d.vstep) if (d.vstep !== void);
		}

//		d.tab          = +s.tab          if (s.tab          !== void);
//		d.timer        = +s.timer        if (s.timer        !== void);
		d.hdst         = +s.hdst         if (s.hdst         !== void);
		d.vdst         = +s.vdst         if (s.vdst         !== void);

		d.onchange     = s.onchange      if (s.onchange     !== void);
		d.onchangefunc = s.onchangefunc  if (s.onchangefunc !== void);
		d.onchangestorage=+s.onchangestorage if(s.onchangestorage!==void);
		d.onchangetarget=+s.onchangetarget if(s.onchangetarget!==void);

		d.drawcenterline=+s.drawcenterline if(s.drawcenterline!==void);

		// 本当はtimer.assing()した方がよいが、src/dstとも辞書だと不可
		if (typeof(s.timer) != 'undefined') {
			// Timerにはassignが無い
			d.timer = %[] if (typeof(d.timer) == 'undefined');
			d.timer.interval = s.timer.interval;
			d.timer.enabled  = s.timer.enabled;
		}
		if (localchildren)
			.KSliderTabLayer.copyAllMembers(d.tab, s.tab);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		var e = %[];
		(Dictionary.assign incontextof e)(elm);
		e.tab = getSubOptions(elm, 'tab');

		if (e.basegraphic !== void)
			e.graphic = e.basegraphic;
		if (e.basecolor !== void)
			e.color = e.basecolor;
		// tabgraphicは互換性のために残す。今は正しくはe['tab.graphic']
		if (e.tabgraphic !== void) {
			e.tab = %[] if (e.tab === void);
			e.tab.graphic = e.tabgraphic;
		}
		// 以前と同じ値を設定する場合は無視させる。updateSliderTabPos()
		// でonchange/onchangefuncの無限ループを防ぐため
// 「以前と同じ値の時はスキップする仕組み」は、効率化のためにも必要。
// 後に全クラスにインプリすること。setOptions_sub()のような関数にしてもよい。
//		if (e.hval !== void && realeq(+e.hval, hval))
//			delete e.hval;
//		if (e.vval !== void && realeq(+e.vval, vval))
//			delete e.vval;
// …なんでコレコメントアウトしたんだっけ…なんか不具合あったかしらん。
		super.setOptions(e);
		.KSliderLayer.copyLocalMembers(this, e);

		// if (tab.graphic === void || tab.graphic == '')
		// この↑条件で下↓を囲ってたが、やめた
		if (vertical) {
			tab.left = 0;
			tab.setOptions(%[width : width]);
		} else {
			tab.top = 0;
			tab.setOptions(%[height : height]);
		}
		redraw();
	}

	// 表示されているものをもう一度描く
	function redraw()
	{
		super.redraw();	// KLayerのredraw()を呼ぶ
		tab.redraw();	// tabも書き直す
		if (graphic === void) {
			// 画像がなければ
			drawRuggedness(false); 	// へこませる
			if (drawcenterline) {
				// ここでverticalメンバを使っていないのは、
				// 縦横混在スライダーを実現した名残り。
				// verticalを使ってもよい
				var white=0x80ffffff, black=0x80000000;
				if (tab !== void && width == tab.width) {
					// 縦スライダーだった
					var w = width/2, k = tab.height;
				
					fillRect(w-1, k/2, 1, height-k, black);
					fillRect(w,   k/2, 1, height-k, white);
				} else if (tab!==void && height==tab.height) {
					// 横スライダーだった
					var h = height/2, k = tab.width;
					fillRect(k/2, h-1, width-k, 1, black);
					fillRect(k/2, h,   width-k, 1, white);
				}
			}
		}
		updateSliderTabPos();
	}

	// 状態更新、現在の値でスライダー位置を更新する。
	function updateSliderTabPos()
	{
		// step が指定されていたら値を正規化する
		if (isstep) {
			hval = int((hval+hstep/2)/hstep)*hstep;
			vval = int((vval+vstep/2)/vstep)*vstep;
		}
		hval = Math.max(hmin, Math.min(hval, hmax));
		vval = Math.max(vmin, Math.min(vval, vmax));
		if (hintflg)
			hval = int(hval);
		if (vintflg)
			vval = int(vval);

		// 現在の値にあわせてtabの位置を移動する
		var x = int((width-tab.width)*((hval-hmin)/(hmax-hmin)));
		var y = int((height-tab.height)*(1-((vval-vmin)/(vmax-vmin))));
		// 以前と同じ位置なら、何もしない
		if (x == tab.left && y == tab.top)
			return;
		tab.setPos(x, y);
		if (onchange !== void && onchange != "")
			eval(onchange);
		if (onchangefunc !== void && onchangefunc != "") {
			// onchangefunc(hval, vval, dragging, true) を実行
			var f = onchangefunc;
			var args ="(("+hval+"),("+vval+"),("+tab.dragging+"))";
			if (f[f.length-1] == '!')
				eval(f.substr(0, f.length-1)+args+'!');
			else
				eval(f+args);
			
		}
		if (onchangestorage !== void || onchangetarget !== void) {
			// tf.xxxを設定しonchangestorageのonchangetargetを呼ぶ
			tf.hval = hval, tf.vval = vval;
			tf.dragging = tab.dragging;
			window.process(onchangestorage, onchangetarget,
				       countpage);
		}
	}

	// スライダータブがドラッグされた時(スライダータブクラスから呼ばれる)
	function onSliderDragged(diffx, diffy, dragbtn, shift)
	{
		// 現在の表示すべき位置に移動
		// ステップはupdateSliderTabPos()で考えるのでここでは考えない

		// このif、ないとNaN/Infinityになってハマるため必要。
		if (width > tab.width)
			hval = ((tab.left+diffx)/(width -tab.width))*(hmax-hmin)+hmin;
		if (height > tab.height)
			vval = (1-(tab.top+diffy)/(height-tab.height))*(vmax-vmin)+vmin;
		updateSliderTabPos();
	}

	// 指定カウント数だけ移動
	function moveStep(hcount=0, vcount=0)
	{
		// 移動幅(Xstep)が 0 の時は、0.05(=1/20) 刻みで…とか
		// やってたが、初期値を0.05にしたので、もう考えないことにする。
		hval += hstep * hcount;
		vval += vstep * vcount;
		updateSliderTabPos();
	}

	// スライダが押された時のリピート関数
	function onMouseDownRepeat()
	{
		// 横方向がtab領域に入っていなければtabを移動
		if (hdst < tab.left)
			moveStep(-1, 0);
		else if (hdst > tab.left + tab.width)
			moveStep(1, 0);
		// 縦方向がtab領域に入っていなければtabを移動
		if (vdst < tab.top)
			moveStep(0, 1);
		else if (vdst > tab.top + tab.height)
			moveStep(0, -1);
		// 領域に入ったら timer を停止
		if (tab.left <= hdst && hdst <= tab.left + tab.width &&
		    tab.top  <= vdst && vdst <= tab.top  + tab.height)
			timer.enabled = false;
	}

	// スクロールバーのスライダ外を押した時のリピート動作開始
	function scrollTo(x, y)
	{
		hdst = x, vdst = y;
		timer.enabled = true;
	}

	// マウスが押された時(この時は必ずスライダータブ外を押されている)
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseDown(x, y, button, shift);
		if (button != mbLeft) // 左ボタンじゃなければ無視
			return;

		scrollTo(x, y);
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			hdst = x, vdst = y;
	}

	// マウスが放された時
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		super.onMouseUp(x, y, button, shift);
		timer.enabled = false;
	}

	// キーが押された時(キーでスライダー操作は未実装)
	function onKeyDown(key, shift, process)
	{
		if (process) {
			if (key == VK_LEFT) {
				moveStep(-1, 0);
				return;
			} else if (key == VK_RIGHT) {
				moveStep(1, 0);
				return;
			} else if (key == VK_UP) {
				moveStep(0, 1);
				return;
			} else if (key == VK_DOWN) {
				moveStep(0, -1);
				return;
			}
		}
		parent.onKeyDown(...);
	}

	// マウスホイールが回された時
	function onMouseWheel(shift, delta, x, y)
	{
		// 縦方向に動作させる
		moveStep(0, int(delta/120));
		// ホイールチルト(左右)を得る手段があれば対応したいが
		// 今は見当たらなかった
	}


/* 2014/06/04 多分コレ要らないので消しておく。redraw()と重複してるし。
	// 表示されるとき
	function onPaint()
	{
		if (graphic === void) {
			fillRect(0,0,width,height, color);
			if (tab !== void && width == tab.width) {
				// 縦スライダーだった
				var w = width/2;
				var k = tab.height;
				fillRect(w-1, k/2, 1, height-k, 0x80000000);
				fillRect(w,   k/2, 1, height-k, 0x80ffffff);

			} else if (tab !== void && height == tab.height) {
				// 横スライダーだった
				var h = height/2;
				var k = tab.width/2;
				fillRect(k/2, h-1, width-k, 1, 0x80000000);
				fillRect(k/2, h,   width-k, 1, 0x80ffffff);
			}
		}
		super.onPaint(...);
	}
 ここまで不要 */

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		.KSliderLayer.copyLocalMembers(this, src);
		tab.assign(src.tab);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KSliderLayer.copyLocalMembers(dic, this);
		dic.tab = tab.store();	// dic.tab.*にセーブ、dic.tab*は使わぬ
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		timer.enabled = false;		// タイマを止める
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		tab.restore(dic.tab);
		timer.enabled = false;		// タイマを止める
		return dic;
	}
}


// RadioButtonの一アイテム。二度押ししてもトグルしないところが異なる。
class KRadioButtonItem extends KToggleButtonLayer
{
	var classid  = 'KRadioButtonItem';

	// コンストラクタ
	function KRadioButtonItem(window, parent, name, elm)
	{
		super.KToggleButtonLayer(...);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// マウスが押された時
	function onMouseDown(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		if (checked || !isClickableMb(button))
			return;
		super.onMouseDown(x, y, button, shift);
	}

	// マウスが離された時
	function onMouseUp(x=cursorX, y=cursorY, button=mbLeft, shift=0)
	{
		.KAnimButtonLayer.onMouseUp(x, y, button, shift);	// superの上を呼ぶ
		if (button != mbLeft) // 左クリック以外は無視
			return;
		if (!checked)
			parent.onCheck(this);	// 親を呼ぶ
		// KToggleButtonLayer と違い、onUncheck()は実行しない
	}
}


// KRadioButtonItem を複数配置するラジオボタン
// onCheck()/onUncheck()は、このクラスのではなくてこの子のを呼ぶこと。
class KRadioButtonLayer extends KLayer
{
	var classid     = 'KRadioButtonLayer';
	// ボタンの縦横配置は 'vertical' で規定する
	var space       = 10;		// ボタンの間の距離
	var buttonleft  = 0;		// 第一ボタンの左上X座標
	var buttontop   = 0;		// 第一ボタンの左上Y座標
	var pushed      = -1;		// 押されているボタン(初期状態では-1)
	var buttons     = [];		// RadioButtonItem(ボタン)配列
	var buttonopts  = %[];		// ボタンのオプション
	var oncheck;			// 押された時の動作
	var oncheckfunc;		// 押された時の動作(関数)
	var onuncheck;			// 離された時の動作
	var onuncheckfunc;		// 離された時の動作(関数)

	// コンストラクタ
	function KRadioButtonLayer(window, parent, i_name, elm=%[])
	{
		super.KLayer(window, parent, i_name);
//		focusable = true;	// このレイヤはフォーカスさせないが、
//					// ボタンはフォーカスするのでtrue
		if (elm.pushed === void)
			elm.pushed = 0;	// 最初の一回は必ずpushed=0を指定
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		for (var i = buttons.count-1; i >= 0; i--)
			invalidate buttons.pop();
		super.finalize();
	}

	// ボタンにオプション設定
	function setOptions_button(elm=%[]/*共通オプション*/, ielm=[]/*個別*/)
	{
		// ボタンオプションが指定されていたら設定
		for (var i = buttons.count-1; i >= 0; i--) {
			buttons[i].setOptions(elm);
			if (i < ielm.count)
				buttons[i].setOptions(ielm[i]);
		}
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.space        = +s.space        if (s.space         !== void);
		d.buttonleft   = +s.buttonleft   if (s.buttonleft    !== void);
		d.buttontop    = +s.buttontop    if (s.buttontop     !== void);
		d.pushed       = +s.pushed       if (s.pushed        !== void);
			// "buttons"     = [];	// RadioButtonItem(ボタン)配列
		d.oncheck      = s.oncheck       if (s.oncheck       !== void);
		d.oncheckfunc  = s.oncheckfunc   if (s.oncheckfunc   !== void);
		d.onuncheck    = s.onuncheck     if (s.onuncheck     !== void);
		d.onuncheckfunc=+s.onuncheckfunc if (s.onuncheckfunc !== void);

		d.buttonopts = %[];	// ボタンの共通オプション
		if (s.buttonopts !== void)
			(Dictionary.assignStruct incontextof d.buttonopts)(s.buttonopts);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		var e = %[];
		(Dictionary.assign incontextof e)(elm);
		// 最初に e.pushed を保存
		var new_pushed = e.pushed;
		delete e.pushed;
		super.setOptions(e);
		.KRadioButtonLayer.copyLocalMembers(this, e);
		if (e.buttons !== void)
			changeButtonNum(+e.buttons.count);
		if (buttons.count == 0)
			return;
		setOptions_button(buttonopts, e.buttons);
		if (e.vertical !== void || e.space !== void)
			alignButtons(); // 配置変更
		// e.pushed が指定されていたら、ボタンを押す
		if (new_pushed !== void)
			makeCheck(new_pushed);
	}

	// ボタン配置を更新する
	function alignButtons()
	{
		if (buttons.count <= 0)
			return;
		var pos = 0, max = 0;
		if (vertical) {
			// 縦配置する
			for (var i = 0 ; i < buttons.count; i++) {
				buttons[i].setPos(buttonleft, buttontop+pos);
				pos += buttons[i].height + space;
				if (max < buttons[i].width)
					max = buttons[i].width;
			}
			setSize(max, pos-space);
		} else {
			// 横配置する
			for (var i = 0; i < buttons.count; i++) {
				buttons[i].setPos(buttonleft+pos, buttontop);
				pos += buttons[i].width + space;
				if (max < buttons[i].height)
					max = buttons[i].height;
			}
			setSize(pos-space, max);
		}
	}

	// ボタン数を変更する
	function changeButtonNum(num)
	{
		var b_count = buttons.count;
		if (num == b_count)
			return;
		if (num < b_count) {
			// 現状より指定が少なかったらいくつか削除
			// 配列末尾から削除する
			for (var i = b_count-1; i >= num; i--) {
				invalidate buttons.pop();
			}
		} else {
			// 現状より指定が多かったら追加作成
			for (var i = b_count; i < num; i++) {
				var btn = new KRadioButtonItem(window, this);
				btn.setOptions(buttonopts);
				buttons.add(btn);
			}
		}
		setFocusOrder();
		alignButtons();
	}

	// フォーカスの順番を設定
	function setFocusOrder()
	{
		var i;
		if (buttons.count > 0)
			buttons[0].prevfocus = _prevfocus;
		for (i = 0; i < buttons.count-1; i++)
			buttons[i].nextfocus = buttons[i+1];
		if (i > 0)
			buttons[i].nextfocus = _nextfocus;
	}

	// ボタンのいずれかが押された時の動作(子レイヤから呼ばれる)
	function onCheck(btnobj)
	{
		var index = buttons.find(btnobj);
		if (pushed == index)
			return;			// 二度押しなら何もしない
		if (pushed >= 0)
			makeUncheck(pushed);	// 以前のボタンを解除
		makeCheck(index);

		// oncheck を実行
		eval(oncheck);
		// oncheckfunc で指定された関数を indexを引数置換して呼ぶ
		if (oncheckfunc !== void)
			eval(oncheckfunc+'('+index+')');
	}

	// ボタンのいずれかが放された時の動作(子レイヤから呼ばれる)
	function onUncheck(btnobj)
	{
		var index = buttons.find(btnobj);
		// onuncheck を実行
		eval(onuncheck);
		// onuncheckfuncで指定された関数を btnidxを引数置換して呼ぶ
		if (onuncheckfunc !== void)
			eval(onuncheckfunc+'('+index+')');
	}

	// あるボタンを押す(ここでは他のボタンのトグル動作はしないことに注意)
	// ぐるっと回って onCheck() でトグルされるので。
	function makeCheck(index)
	{
		pushed = index;
		buttons[index].onCheck();
	}

	// あるボタンを離す(他のボタンのトグル動作はしないことに注意)
	function makeUncheck(index)
	{
		buttons[index].onUncheck();
	}

	// ボタンのコピー
	function assign(src)
	{
		super.assign(src);
		.KRadioButtonLayer.copyLocalMembers(this, src);
		(Dictionary.assignStruct incontextof buttonopts)(src.buttonopts);
		changeButtonNum(src.buttons.count);
		for (var i = 0; i < src.buttons.count; i++)
			buttons[i].assign(src.buttons[i]);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KRadioButtonLayer.copyLocalMembers(dic, this);
		dic.buttons = [];
// これは restore 時に setOptions で設定されるのを考えるとない方がよい？
		for (var i = 0; i < buttons.count; i++)
			dic.buttons[i] = buttons[i].store();
		dic.buttonnum = buttons.count;	// restore()で使う
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
// これだと押されてたボタンがキャンセルされないかもしれないけれど
		pushed = -1;		// 先に pushed を別ボタンにしておく
		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;
	}

	// フォーカスレイヤを子ボタンに設定
	// ボタンが1個以上あること前提
	property prevfocus {
		setter(x) {
			_prevfocus = x;
			buttons[0].prevfocus = x if (buttons.count > 0);
		}
		getter {
			return _prevfocus;
		}
	}
	property nextfocus {
		setter(x) {
			_nextfocus = x;
			var idx = buttons.count-1;
			buttons[idx].nextfocus = x if (idx >= 0); 
		}
		getter {
			return _nextfocus;
		}
	}
}



// スクロールバーレイヤ ... ボタン2つとスライダーを持つレイヤ
// 後にKScrollLayerと組み合わせ、onchangeを指定して使う
class KScrollBarLayer extends KLayer
{
	var classid = "KScrollBarLayer";		// 定数

	var prev, next;		// 次へ/前へボタン
	var slider;		// スクロールバー

	var MINWIDTH = 16;	// タダの定数

	// コンストラクタ
	function KScrollBarLayer(window, parent, i_name = "", elm=%[])
	{
		super.KLayer(window, parent, i_name);
		prev   = new KAnimButtonLayer(window, this, i_name+'.prev'  );
		next   = new KAnimButtonLayer(window, this, i_name+'.next'  );
		slider = new KSliderLayer    (window, this, i_name+'.slider');
		// vertical だけは先に設定しておく
		vertical = +elm.vertical if (elm.vertical !== void);

		var e = %[];
		(Dictionary.assignStruct incontextof e)(elm);

		// ボタンのデフォルト文字を指定する
		e.prev   = getSubOptions(e, 'prev');
		e.next   = getSubOptions(e, 'next');
		e.slider = getSubOptions(e, 'slider');
		e.slider.onchange = "parent.onChangeScrollBar(hval, vval)!";

		// 移動幅を無段階とする
		e.slider.isstep = false if (e.slider.isstep === void);

		// 矢印グラフィックを指定
		if (e.prev.graphic === void && e.prev.text === void)
			e.prev.text = vertical ? '▲' : '<<';
		if (e.next.graphic === void && e.next.text === void)
			e.next.text = vertical ? '▼' : '>>';
		if (e.slider.drawcenterline === void)
			e.slider.drawcenterline = false;

		// デフォルトでは横書き、この値はsetOptions()中で補正される
		if (e.width  === void)
			e.width  = vertical ? MINWIDTH : MINWIDTH*3;
		if (e.height === void)
			e.height = vertical ? MINWIDTH*3 : MINWIDTH;

		// スクロールバーのnext/prevボタンが押された時の動作を定義
		e.prev.repeatable = true;
		e.next.repeatable = true;
		e.prev.repeatinterval1 = 100;
		e.next.repeatinterval1 = 100;
		if (vertical) {
			e.prev.onclick = "parent.slider.moveStep(0,  1)!";
			e.next.onclick = "parent.slider.moveStep(0, -1)!";
		} else {
			e.prev.onclick = "parent.slider.moveStep(-1, 0)!";
			e.next.onclick = "parent.slider.moveStep( 1, 0)!";
		}
		setOptions(e);
	}

	// デストラクタ
	function finalize()
	{
		invalidate prev;
		invalidate next;
		invalidate slider;
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		if (!localchildren)
			return;
		if (s.prev !== void)
			.KAnimButtonLayer.copyAllMembers(d.prev,   s.prev  );
		if (s.next !== void)
			.KAnimButtonLayer.copyAllMembers(d.next,   s.next  );
		if (s.slider !== void)
			.KSliderLayer    .copyAllMembers(d.slider, s.slider);
	}

	// 全メンバをコピー
	function copyAllMembers(d, s)
	{
		super.CopyAllMembers(dst, src);
		.KScrollBarLayer.copyLocalMembers(dst, src);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		var e = %[];
		(Dictionary.assignStruct incontextof e)(elm);

		// vertical だけは先に設定しておく
		if (e.vertical !== void) { 
			vertical = +e.vertical;
			// propertyにできないので、ここでslider.veritcalも設定
			slider.setOptions(%[vertical:vertical]);
		}
		
		// このレイヤの縦横幅を vertical にあわせて設定
		// 縦スクロールバーの時は48dotが最少
		if (e.width !== void)
			if (vertical && e.width < MINWIDTH)
				e.width = MINWIDTH;
			else if (!vertical && e.width < MINWIDTH*3)
				e.width = MINWIDTH*3;
		if (e.height !== void)
			if (vertical && e.height < MINWIDTH*3)
				e.height = MINWIDTH*3;
			else if (!vertical && e.height < MINWIDTH)
				e.height = MINWIDTH;
	
		// このレイヤの設定を反映させる
		super.setOptions(e);

		// e.width/e.height が指定された時、ボタンやスライダーなどの
		// などの大きさと位置を適当に変更する。
		// 今は隙間なく三つ並べるように固定されている
		if (vertical && e.width !== void) {
			prev  .setOptions(%[width:width, height:width]);
			next  .setOptions(%[width:width, height:width]);
			slider.setOptions(%[width:width, height:width]);
		} else if (!vertical && e.height !== void) {
			prev  .setOptions(%[width:height, height:height]);
			next  .setOptions(%[width:height, height:height]);
			slider.setOptions(%[width:height, height:height]);
		}
		if (vertical && e.height !== void) {
			var newh = +e.height - prev.height - next.height;
			slider.setOptions(%[height:newh]);
		} else  if (!vertical && e.width !== void) {
			var neww = +e.width - prev.width - next.width;
			slider.setOptions(%[width:neww]);
		}
		if (vertical) {
			slider.setOptions(%[left:0 , top:prev.height]);
			next.setOptions(%[left:0 , top:slider.top + slider.height]);
		}
		if (!vertical) {
			slider.setOptions(%[left:prev.width, top:0]);
			next.setOptions(%[left:slider.left+slider.width, top:0]);
		}

		// それが終わったら普通にオプション設定。これで、自動設定が
		// 上書きされていた場合も対処可能。
		prev  .setOptions(getSubOptions(e, 'prev'  ));
		next  .setOptions(getSubOptions(e, 'next'  ));
		slider.setOptions(getSubOptions(e, 'slider'));
	}

	// スライダーが変化したときに呼ばれる
	function onChangeScrollBar(hval, vval)
	{
		// 親のonChangeScrollBarをname付きで呼ぶ
		parent.onChangeScrollBar(name, hval, vval);
	}

	// マウスホイールが回された時
	// (focusable=falseなので)scrollareaから呼ばれるだけ、x,y座標は不問
	function onMouseWheel(shift, delta, x, y)
	{
		slider.onMouseWheel(...);
	}

	// スライダー位置を指定するときに呼ばれる
	function setSliderPos(hval=slider.hval, vval=slider.vval)
	{
		slider.setOptions(%[hval:hval, vval:vval]);
	}

	// スクロールバーのコピー
	function assign(src)
	{
		super.assign(src);
		.KScrollBarLayer.copyLocalMembers(this, src);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KScrollBarLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;
	}

/*
プロパティにしたかったが、親クラスに存在する「プロパティじゃない値」は
プロパティにできない模様。ンモー！
	// verticalはslider.verticalと同時に設定するのでプロパティにする
	property vertical {
		setter(x) {
			slider.setOptions(%[vertical:x]);
			super.vertical = x;
		}
		getter {
			return super.vertical;
		}
	}
行頭に*は配置しない  */
};



// スクロールエリアレイヤ。KScrollLayer中に配置される。
// このレイヤは単純にスクロール領域を定義するだけで、実際にスクロールするのは
// scrolllayer。単一レイヤのimageTopとかの変更で対応しないのは、子レイヤが
// その移動に追随しないため。
class KScrollAreaLayer extends KLayer
{
	var classid = "KScrollAreaLayer";		// 定数
	var scrolllayer;

	// コンストラクタ
	function KScrollAreaLayer(window, parent, i_name, elm)
	{
		super.KLayer(window, parent, i_name);
		scrolllayer = new .KLayer(window, this, i_name+'.scrolllayer');
		color        = 0;	// 背景色は透明
		scrolllayer.color = 0;	// スクロールレイヤも背景は透明
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		invalidate scrolllayer;
	}

	// このレイヤだけ(親クラスのメンバを含まない)のローカルメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		if (localchildren && s.scrolllayer !== void)
			.KLayer.copyLocalMembers(d.scrolllayer, s.scrolllayer);
	}

	// このレイヤ以下の全てのメンバをコピ
	function copyAllMembers(dst, src)
	{
		super.copyAllMembers(dst, src);
		.KScrollAreaLayer.copyLocalMembers(dst, src);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		super.setOptions(elm);
		scrolllayer.setOptions(getSubOptions(elm, 'scrolllayer'));
		parent.setSliderTab();
	}

/* 不要じゃないかな…
	// サイズを変更する(同時にスクロールレイヤを0,0に戻す)
	function setSize(w, h)
	{
		scrolllayer.Pos(0, 0);
		super.setSize(...);
	}

	// 位置を変更する(サイズ変更するなら同時にスクロールレイヤを0,0に戻す)
	funciton setPos(x, y, w, h)
	{
		if (w !== void || h !== void)
			scrolllayer.Pos(0, 0);
		super.setPos(...);
	}
 */

	// 横スライダーのサイズを求める(最低8dot)
	function getHSliderSize(sliderwidth)
	{
		var w = width/scrolllayer.width;
		var ret = sliderwidth*(w>=1 ? 1.0 : w);
		return ret < 8 ? 8 : ret;
	}

	// 縦スライダーのサイズを求める(最低8dot)
	function getVSliderSize(sliderheight)
	{
		var h = height/scrolllayer.height;
		var ret = sliderheight*(h>=1 ? 1.0 : h);
		return ret < 8 ? 8 : ret;
	}

	// スクロールレイヤの位置をhvalで指定(0 <= hval <= 1.0)
	function setScrollAreaHval(hval)
	{
		var pos = (scrolllayer.width-width)*hval;
		scrolllayer.setPos(pos<0 ? 0 : -pos, scrolllayer.top);
	}

	// スクロールレイヤの位置をvvalで指定(0 <= vval <= 1.0)、ただしvvalは逆
	function setScrollAreaVval(hval)
	{
		var pos = (scrolllayer.height-height)*(1.0-hval);
		scrolllayer.setPos(scrolllayer.left, pos<0 ? 0 : -pos);
	}

	// スクロールエリアの位置をhvalで得る(0 <= hval <= 1.0)
	function getScrollAreaHval()
	{
		var ret = -scrolllayer.left/(scrolllayer.width-width);
		return ret<0 ? 0 : ret;
	}

	// スクロールエリアの位置をvvalで得る(0 <= vval <= 1.0)、ただしvvalは逆
	function getScrollAreaVval()
	{
		var ret = 1.0-scrolllayer.top/(scrolllayer.height-height);
		return ret<0 ? 0 : ret;
	}

	// スクロールエリアのコピー
	function assign(src)
	{
		super.assign(src);
		.KScrollAreaLayer.copyLocalMembers(this, src, false);
		if (src.scrolllayer !== void)
			scrolllayer.assign(src.scrolllayer);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KScrollAreaLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;
	}
}



// 仮想画面とスクロールバーを持つレイヤ、KScrollLayer
// ベース、スクロールエリア、スクロールバー(+矢印ボタンx2)x2の三つから構成される
class KScrollLayer extends KLayer
{
	var classid     = 'KScrollLayer';
	
	var vbarpos  = 'r';// 縦スクロールバー: 'n'=なし、'r'=右、'l'=左
	var hbarpos  = 'b';// 縦スクロールバー: 'n'=なし、't'=上、'b'=下

	var scrollarea;	// スクロール領域レイヤ
	var vscrollbar; // 垂直方向スクロールバー
	var hscrollbar;	// 水平方向スクロールバー

	// コンストラクタ
	function KScrollLayer(window, parent, i_name, elm=%[])
	{
		// スクロールエリアとスクロールバーを配置するため、初期状態で
		// 大きさを64x64にしておく
		super.KLayer(window, parent, i_name, %[width:64, height:64]);
		focusable    = true;	// マウスホイールイベントを得るため
		hitThreshold = 0;	// マウスイベントを得るため
		scrollarea = new .KScrollAreaLayer(window, this, i_name+'.scrollarea');
		vscrollbar = new KScrollBarLayer(window, this, i_name+'.vscrollbar', %[vertical:true]);
		hscrollbar = new KScrollBarLayer(window, this, i_name+'.hscrollbar', %[vertical:false]);
		// 最初は64x64
		var e = %[];
		(Dictionary.assignStruct incontextof e)(elm);
		e.width  = 64 if (e.width  === void);
		e.height = 64 if (e.height === void);
		setOptions(e);
	}

	// デストラクタ
	function finalize()
	{
		invalidate scrollarea;
		invalidate vscrollbar;
		invalidate hscrollbar;
		super.finalize();
	}

	// このレイヤローカルのメンバをコピー
	function copyLocalMembers(d, s, localchildren=true)
	{
		if (d === void || s === void)
			return;
		d.vbarpos = s.vbarpos if (s.vbarpos!== void);
		d.hbarpos = s.hbarpos if (s.hbarpos!== void);
		if (localchildren) {
			.KLayer.copyLocalMembers(d.scrollarea, s.scrollarea);
			.KScrollBarLayer.copyLocalMembers(d.vscrollbar, s.vscrollbar);
			.KScrollBarLayer.copyLocalMembers(d.hscrollbar, s.hscrollbar);
		}
	}

	// このレイヤの全てのメンバをコピー
	function copyAllMembers(d, s)
	{
		super.copyLocalMembers(d, s);
		.KLayer.copyLocalMembers(d, s);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		// まずこのレイヤ(ローカルのみ)のサイズ変更・位置変更などを実施
		super.setOptions(elm);
		copyLocalMembers(this, elm, false);

		// この条件は、KScrollLayerのコンストラクタ→KLayerのコンスト
		// ラクタ→KScrollLayerのsetOptions()が呼ばれた時を回避
		// するために必要
		if (scrollarea === void ||
		    vscrollbar === void || hscrollbar === void)
			return;

		// ここから子レイヤの設定

		var e = %[];
		(Dictionary.assign incontextof e)(elm);
		e.scrollarea = getSubOptions(elm, 'scrollarea');
		e.vscrollbar = getSubOptions(elm, 'vscrollbar');
		e.hscrollbar = getSubOptions(elm, 'hscrollbar');
		// ここまでで、子レイヤの変数は全て e.子レイヤ.* に格納される

		if (elm.width !== void || elm.height !== void ||
		    elm.vbarpos !== void || elm.hbarpos !== void) {
			// 大きさまたはscrollbarposが変更されたら、子レイヤの
			// 位置を変更する
			var h = height;
			var w = width;
			var hsh = hscrollbar.height;
			var vsw = vscrollbar.width;
			switch (hbarpos) {
			case 't' :
				e.scrollarea.top = e.vscrollbar.top = hsh;
				e.scrollarea.height = e.vscrollbar.height = h-hsh;
				e.hscrollbar.top = 0;
				e.hscrollbar.visible = true;
				break;
			case 'b' :
				e.scrollarea.top = e.vscrollbar.top = 0;
				e.scrollarea.height = e.vscrollbar.height = h-hsh;
				e.hscrollbar.top = h-hsh;
				e.hscrollbar.visible = true;
				break;
			default : // 'n' を含む
				e.scrollarea.top = e.vscrollbar.top = 0;
				e.scrollarea.height = e.vscrollbar.height = h;
				e.hscrollbar.visible = false;
				break;
			}
			switch (vbarpos) {
			case void: // 何もしない
				break; 
			case 'l' :
				e.scrollarea.left = e.hscrollbar.left = vsw;
				e.scrollarea.width = e.hscrollbar.width = w-vsw;
				e.vscrollbar.left = 0;
				e.vscrollbar.visible = true;
				break;
			case 'r' :
				e.scrollarea.left = e.hscrollbar.left = 0;
				e.scrollarea.width = e.hscrollbar.width = w-vsw;
				e.vscrollbar.left = w-vsw;
				e.vscrollbar.visible = true;
				break;
			default : // 'n' を含む
				e.scrollarea.left = e.hscrollbar.left = 0;
				e.scrollarea.width = e.hscrollbar.width = w;
				e.vscrollbar.visible = false;
				break;
			}
		}

		// 子レイヤのプロパティ変更
		scrollarea.setOptions(e.scrollarea);
		vscrollbar.setOptions(e.vscrollbar);
		hscrollbar.setOptions(e.hscrollbar);
		// 子レイヤの大きさが確定しないとスライダータブは設定できない…
		setSliderTab();
	}

	// scrollareaにあわせて、スライダータブの位置と大きさを設定する
	function setSliderTab()
	{
		var e = %[ "slider.vval" => scrollarea.getScrollAreaVval() ];
		e["slider.tab.height"] = scrollarea.getVSliderSize(vscrollbar.slider.height);
		vscrollbar.setOptions(e);

		var e = %[ "slider.hval" => scrollarea.getScrollAreaHval() ];
		e["slider.tab.width"] = scrollarea.getHSliderSize(hscrollbar.slider.width);
		hscrollbar.setOptions(e);
	}

	// マウスホイールが回された時
	function onMouseWheel(shift, delta, x, y)
	{
		vscrollbar.onMouseWheel(shift, delta, left+x-vscrollbar.left,
						      top +y-vscrollbar.top);
	}

	// 縦横スクロールバーが移動された時呼ばれる
	function onChangeScrollBar(name, hval, vval)
	{
		if (name == hscrollbar.name) {
			// 横スクロールバーが動かされた
			scrollarea.setScrollAreaHval(hval);
		} else if (name == vscrollbar.name) {
			// 縦スクロールバーが動かされた
			scrollarea.setScrollAreaVval(vval);
		}
		// それ以外は無視
	}

	// スクロールレイヤのコピー
	function assign(src)
	{
		super.assign(src);
		.KScrollLayer.copyLocalMembers(this, src);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		.KScrollLayer.copyLocalMembers(dic, this);
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		super.restore(dic);	// この中で setOptions(dic) を実行する
		return dic;
	}

};




// このレイヤ以下の指定の名前を持つレイヤーを探す(一つだけ)
function findLayer_sub(name, baselayer=kag.fore.base, recursive, startidx=0)
{
	if (baselayer.name == name)
		return baselayer;
	var ret;
	if (!recursive) {
		for (var i = baselayer.children.count-1; i >= startidx; i--)
			if ((ret = baselayer.children[i]).name == name)
				return ret;
		return void;
	}
	// 裏画面コピーなので↓0が不要なときあり
	for (var i = baselayer.children.count-1; i >= startidx; i--) {
		ret = findLayer_sub(name, baselayer.children[i], recursive);
		if (ret !== void)
			return ret;
	}
	return void;
}
// このレイヤ以下の指定の名前を持つレイヤーを探す(一つだけ)
function findLayer(name, baselayer=kag.fore.base, recursive=true)
{
	var startidx = 0;
	// baselayer がプライマリレイヤで、この下に裏画面がリンクされて
	// いる場合、それを除いて効率化するためstartidxを1にする。
	// Win8のquake対応のためにプライマリレイヤがkag.{fore|back}.baseの
	// parentに追加されている場合は、startidx=0でよい
	if (baselayer == kag.fore.base && baselayer.parent == null)
		startidx = 1;
	return findLayer_sub(name, baselayer, recursive, startidx);
}


// このレイヤ以下の指定の名前を持つレイヤーを探す(複数)
function findLayers_sub(name, baselayer=kag.fore.base, startidx=0)
{
	var ret = [];
	if (name === void || baselayer.name == name)
		ret.add(baselayer);
	for (var i = baselayer.children.count-1; i >= startidx; i--)
		add_ary(ret, findLayers_sub(name, baselayer.children[i]));
	return ret;
}
// このレイヤ以下の指定の名前を持つレイヤーを探す(配列で返す)
function findLayers(name, baselayer=kag.fore.base)
{
	var startidx = 0;
	// baselayer がプライマリレイヤで、この下に裏画面がリンクされて
	// いる場合、それを除いて効率化するためstartidxを1にする。
	// Win8のquake対応のためにプライマリレイヤがkag.{fore|back}.baseの
	// parentに追加されている場合は、startidx=0でよい
	if (baselayer == kag.fore.base && baselayer.parent == null)
		startidx = 1;
	return findLayers_sub(name, baselayer, startidx);
}


// 辞書配列に従って一つレイヤーを作成する
function createLayer(dic, parent=kag.fore.base)
{
	var elm = %[];
	(Dictionary.assign incontextof elm)(dic);
	var classid = elm.classid;
	delete elm.classid;
	if (elm.parent !== void)
		parent = findLayer(elm.parent, parent);
	if (parent === void)
		em('Error: createLayer(): elm.parent = ' + elm.parent);
	delete elm.parent;
	return (new (global[classid])(kag, parent, elm.name, elm));
}


// 辞書配列の配列に従って、複数のレイヤを一気に作成する
function createLayers(ary, parent=kag.fore.base)
{
	var ret = [];
	// 昇順に作成する
	for (var i = 0; i < ary.count; i++) {
		var p = ary[i].parent;
		if (p === void || findLayer(p, parent) !== void)
			ret.add(createLayer(ary[i], parent));
		else {
			System.inform('createLayers(): 親レイヤ未定');
			dm('createLayers(): 親レイヤ未定');
			dm('name = ' + ary[i].name + ', parent = ' + ary[i].parent);
		}
	}
	return ret;
}


// 渡された配列のレイヤを円環フォーカスにする(focusableかどうかは見ない)
function configureFocus(ary)
{
	if (ary.count <= 0)
		return;
	// フォーカスの順番を設定
	var i;
	for (i = 0; i < ary.count-1; i++)
		ary[i].nextfocus = ary[i+1];
	ary[i].nextfocus = ary[0];

	// 特殊なフォーカスが必要なlayer(例:KRadioButtonLayer)向け
	for (i = 0; i < ary.count; i++)
		if (typeof(ary[i].setFocusOrder) != 'undefined')
			ary[i].setFocusOrder();
}


// 複数種類のKLayersを画面上に配置することができるラッパープラグイン
// SystemButtonやrclick画面などで使用する。
class KLayersPlugin extends KAGPlugin
{
	var window;		// 親ウインドウ
	var name;		// 名前。セーブの時に使うので必須
	var foreparent;		// 表画面の親
	var backparent;		// 裏画面の親
	var foreary = [];	// 表画面の子クラス配列
	var backary = [];	// 裏画面の子クラス配列

	// コンストラクタ
	function KLayersPlugin(w, i_name, fp=w.fore.base, bp=w.back.base)
	{
		super.KAGPlugin(w, i_name, fp, bp);
		window     = w;
		name       = i_name;
		foreparent = fp;
		backparent = bp;
	}

	// デストラクタ
	function finalize()
	{
		delOnPage('both');
		super.finalize(...);
	}

	// あるページの子Layerを全て削除
	function delOnPage(page='fore')
	{
		//フォーカスが動かないように変更
		window.focusedLayer = null;
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--)
				invalidate(foreary.pop());
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--)
				invalidate(backary.pop());
	}

	// 指定nameの子Layerを削除
	function del(name, page='fore')
	{
		//フォーカスが動かないように変更
		window.focusedLayer = null;
		if(name === void) {
			delOnPage(page);
			return;
		}
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--) {
				if(foreary[i].name == name) {
					invalidate(foreary[i]);
					foreary.erase(i);
				}
				configureFocus(foreary);
			}
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--) {
				if(backary[i].name == name) {
					invalidate(backary[i]);
					backary.erase(i);
				}
				configureFocus(backary);
			}
	}

	// 子Layerを一つ追加
	function add(name='noname', classobj, page='fore', elm)
	{
		var obj;
		if (page == 'fore' || page == 'both') {
			obj = new classobj(window, foreparent, name, elm);
			foreary.add(obj);
			configureFocus(foreary);
		}
		if (page == 'back' || page == 'both') {
			obj = new classobj(window, backparent, name, elm);
			backary.add(obj);
			configureFocus(backary);
		}
	}

	// nameとpageに対応する子レイヤを探す
	function search(name, page='fore')
	{
		var retary = [];
		if(page == 'both' || page == 'fore') {
			for(var i = foreary.count-1; i >= 0; i--)
				if(name === void || foreary[i].name == name)
					retary.add(foreary[i]);
		}
		if(page == 'both' || page == 'back') {
			for(var i = backary.count-1; i >= 0; i--)
				if(name === void || backary[i].name == name)
					retary.add(backary[i]);
		}
		return retary;
	}

	// nameとpageに対応する子レイヤを探す(一個だけ版)
	function search_one(name, page='fore')
	{
		var retary = search(name, page);
		if (retary.count == 0)
			return void;
		if (retary.count == 1)
			return retary[0];
		em("search_one()で対象レイヤが複数発見されました。"+
			"とりあえず void を返します。"+
			"search_one("+name+", "+page+")");
		return void;
	}

	// オプション指定
	function setOptions(name, page='fore', elm)
	{
		var focused = -1;
		// ↑マウスを移動させないために、フォーカスレイヤを最後に
		// 変更するための細工
		// ary中にフォーカスされたレイヤが存在しない場合もあるので、
		// window.focusedLayerは使用できない
		//
		// …これ、0.98bでKLayerにonSearchNextFocusable()追加したから、
		// 必要なくなったんじゃないだろうか…。
		var ary = search(name, page);
		for (var i = ary.count-1; i >= 0; i--) {
			if (ary[i].focused)
				focused = i;
			else
				ary[i].setOptions(elm);
		}
		if (focused >= 0)
			ary[focused].setOptions(elm);
	}

	// レイヤの表←→裏の情報のコピー
	// backlay タグやトランジションの終了時に呼ばれる
	function onCopyLayer(toback)
	{
		if (toback) {
			// 表→裏
			delOnPage('back');
			for(var i = foreary.count-1; i >= 0 ; i--) {
				var classobj = global[foreary[i].classid];
				backary[i] = new classobj(window,
					backparent, foreary[i].name);
				backary[i].assign(foreary[i]);
			}
		} else {
			// 裏→表
			delOnPage('fore');
			for(var i = backary.count-1; i >= 0 ; i--) {
				var classobj = global[backary[i].classid];
				foreary[i] = new classobj(window,
					foreparent, backary[i].name);
				foreary[i].assign(backary[i]);
			}
			configureFocus(foreary);
		}
	}

	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで 表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じない。
		var tmp = foreary;
		foreary = backary;
		backary = tmp;

		var tmp = foreparent;
		foreparent = backparent;
		backparent = tmp;
		configureFocus(foreary);
	}

	// セーブ
	function onStore(f, elm)
	{
		// 栞を保存するとき
		var dic = f["klayersplugin_" + name] = %[];
		dic.foreary = [];
		dic.backary = [];
		for(var i = 0; i < foreary.count; i++)
			dic.foreary.add(foreary[i].store());
		for(var i = 0; i < backary.count; i++)
			dic.backary.add(backary[i].store());
		return dic;	// 子クラスのために返す
	}

	// ロード
	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		delOnPage('both');
		var dic = f["klayersplugin_" + name];
		if(dic === void)
			return;
		// 読み込んだものを戻す
		if (elm !== void && elm.backlay) {
			// [tempload backlay=true]なら
			for(var i = 0; i < dic.foreary.count; i++) {
				var classobj = global[dic.foreary[i].classid];
				backary[i] = new classobj(window, backparent);
				backary[i].restore(dic.foreary[i]);
			}
		} else {
			// 通常時の読み込み
			for(var i = 0; i < dic.foreary.count; i++) {
				var classobj = global[dic.foreary[i].classid];
				foreary[i] = new classobj(window, foreparent);
				foreary[i].restore(dic.foreary[i]);
			}
			for(var i = 0; i < dic.backary.count; i++) {
				var classobj = global[dic.backary[i].classid];
				backary[i] = new classobj(window, backparent);
				backary[i].restore(dic.backary[i]);
			}
		}
		return dic;	// 子クラスのために返す
	}
}



// KLayersPluginクラスをちょっとだけ拡張した、メッセージレイヤにボタンを
// 配置するためのクラス。
// メッセージウィンドウにくっついてvisible/unvisibleが設定される
// ようにするため。
class KLayersPluginOnMessage extends KLayersPlugin
{
	var autoHide       = true;	// メッセージ画面と一緒に隠すかどうか
	var anytimeenabled = false;	// 常にenableか。通常はstable状態でのみenable

	// コンストラクタ
	function KLayersPluginOnMessage(name, fp, bp, autoHide=true, anytimeenabled=false)
	{
		super.KLayersPlugin(kag, name, fp, bp);
		this.autoHide = autoHide;
		this.anytimeenabled = anytimeenabled;
	}

	// Add の時に absolute を message レイヤの上にするよう細工
	// あとautoHideも設定
	function add(name='noname', classobj, page='fore', elm = %[])
	{
		
		// メッセージレイヤ100枚目と同じ
		elm.absolute = 1100000  if (elm.absolute === void);
		 // メッセージと一緒に隠すか
		elm.autoHide = autoHide if (elm.autoHide === void);
		super.add(name, classobj, page, elm);
	}

	// 「安定」( s l p の各タグで停止中 ) か、
	// 「走行中」 ( それ以外 ) かの状態が変わったときに呼ばれる
	function onStableStateChanged(stable)
	{
		if (anytimeenabled)
			return;
		super.onStableStateChanged(...);
		// 走行中はレイヤを無効にする
		setOptions(, 'both', %[ enabled: stable ]);
	}

	// メッセージレイヤを隠す・表示する、のための関数。レイヤの
	// autoHideフラグが On なら、現在の状態を覚えつつ隠したり、
	// 以前の表示状態に戻したりする
	function setHiddenStateByUserPerPage(hidden, page='fore')
	{
		if (page == 'both') {
			setHiddenStateByUserPerPage(hidden, 'fore');
			setHiddenStateByUserPerPage(hidden, 'back');
			return;
		}
		var layerary = (page == 'back') ? backary : foreary;
		for (var i = layerary.count-1; i >= 0; i--)
			layerary[i].setHiddenStateByUser(hidden);
	}

	// メッセージレイヤがユーザの操作によって表示・非表示される時
	// 呼ばれる。メッセージレイヤと表示/非表示を同期させるため設定
	function onMessageHiddenStateChanged(hidden)
	{
		super.onMessageHiddenStateChanged(...);
		if (!autoHide)
			return;
		setHiddenStateByUserPerPage(hidden, 'both');
	}

	// セーブ(メッセージ消去中にセーブできなければ不要)
	function onStore(f, elm)
	{
		var dic = super.onStore(f, elm);
		dic.autoHide = autoHide;
		dic.anytimeenabled = anytimeenabled;
		return dic;	// 子クラスのために返す
	}

	// ロード(メッセージ消去中にセーブできなければ不要)
	function onRestore(f, clear, elm)
	{
		var dic = super.onRestore(f, clear, elm);
		if (dic === void)
			return dic;
		autoHide = dic.autoHide;
//		onMessageHiddenStateChanged(0);
//		↑これは不要。super.onRestore() 中で設定してしまうため。
		anytimeenabled = dic.anytimeenabled;
		return dic;	// 子クラスのために返す
	}
}


// このファイルを読み込んだフラグ
global.KLayersLoaded = true;

[endscript]

[return]

