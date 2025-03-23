@return cond="typeof(global.GraphicFramePlugin) != 'undefined'"
;
; メッセージレイヤと背景レイヤを合わせて使うプラグイン by KAICHO
;
; 2014/07/24	0.1	初期リリース
;
;
@call storage=TJSFunctions.ks
@call storage=RenameKAGTag.ks
;
@iscript

// sf.graphicframe_opacity(数値) が定義されていれば、これを
// 全デフォルト値として使用する。


class GraphicFramePlugin extends KAGPlugin
{
	var win;
	// メッセージレイヤ名→紐付けされた背景レイヤの辞書配列
	// comblayer[page][messagelayer] = graphiclayer
	var comblayer = %[fore:%[], back:%[]];

	// コンストラクタ
	function GraphicFramePlugin(window)
	{
		win = window;	// = kag;
	}

	// デストラクタ
	function finalize()
	{
	}

	// 紐付けるレイヤを追加する
	function addFrameLayer(elm)
	{
		elm.layer = getMessageLayerFromElm(elm);
		elm.page  = getPageFromElm(elm);
		comblayer[elm.page][elm.layer] = elm.graphiclayer;
		if (typeof(sf.graphicframe_opacity) != 'undefined' &&
		    elm.graphicopacity === void)
			elm.graphicopacity = sf.graphicframe_opacity;
		if (elm.graphicopacity !== void)
			setOpacityToFrameLayer(elm);
	}

	// 紐付けたレイヤを削除する
	function delFrameLayer(elm)
	{
		elm.layer = getMessageLayerFromElm(elm);
		elm.page  = getPageFromElm(elm);
		delete comblayer[page][layer];
	}

	// 紐付けた背景レイヤ(0, 1, 2,...)を得る
	function getFrameLayerFromElm(elm)
	{
		if (elm.graphiclayer !== void)
			return elm.graphiclayer;
		elm.layer = getMessageLayerFromElm(elm);
		elm.page  = getPageFromElm(elm);
		return comblayer[elm.page][elm.layer];
	}

	// 背景レイヤの現在の実際の不透明度を得る
	function getFrameLayerOpacity(elm)
	{
		elm.graphiclayer = getFrameLayerFromElm(elm);
		elm.page = getPageFromElm(elm);
		return win[elm.page].layers[elm.graphiclayer].opacity;
	}

	// グローバル変数sf.graphicframe_opacityにopacityを設定。
	// 同時に、関連する全てのレイヤの不透明度も変更する。
	function setOpacityToGlobalVariable(opacity)
	{
		sf.graphicframe_opacity = +opacity;
		// 関係する全レイヤ(同ページのみ)のopacityを変更
		var pageary = [ 'fore', 'back' ];
		for (var idx = pageary.length-1; idx >= 0; idx--) {
			var page = pageary[idx];
			var keyary = keys(comblayer[page]);
			for (var i = keyary.length-1; i >= 0; i--) {
				var l = comblayer[page][keyary[i]];
				win[page].layers[l].opacity = +opacity;
			}
		}
	}

	// 背景レイヤの不透明度を設定する
	function setOpacityToFrameLayer(elm)
	{
		if (elm.graphicopacity === void)
			return;
		// sf.graphicframe_opacity が定義されてたら細工
		if (typeof(sf.graphicframe_opacity) != 'undefined') {
			setOpacityToGlobalVariable(elm.graphicopacity);
			return;
		}

		// sf.graphicframe_opacity が定義されていなければ
		// 指定のレイヤにだけopacityを設定
		elm.graphiclayer = getFrameLayerFromElm(elm);
		elm.page = getPageFromElm(elm);
		win[elm.page].layers[elm.graphiclayer].opacity = +elm.graphicopacity;
	}

	// 背景レイヤの不透明度を得る
	function getOpacityFromFrameLayer(elm)
	{
		// if (sf.graphicframe_opacity !== void) // 実際の値を返すこと
		// 	return sf.graphicframe_opacity;  // にした
		elm.graphiclayer = getFrameLayerFromElm(elm);
		elm.page  = getPageFromElm(elm);
		return win[elm.page].layers[elm.graphiclayer].opacity;
	}

	// elmからメッセージレイヤ名("message#")を得る
	function getMessageLayerFromElm(elm)
	{
		if (elm.layer !== void)
			return elm.layer;
		return 'message' + win.getMessageLayerNumberFromElm(elm);
	}

	// elmからページを得る
	function getPageFromElm(elm)
	{
		if (elm.page !== void)
			return elm.page;
		return win.currentPage ? 'back' : 'fore';
	}

	// 栞を保存する際に呼ばれる
	function onStore(f, elm)
	{
		// f = 保存先の栞データ ( Dictionary クラスのオブジェクト )
		// elm = tempsave 時のオプション ( 現在は常に void )
		var dic = f.graphicframeplugin = %[];
		dic.comblayer = %[];
		(Dictionary.assignStruct incontextof dic.comblayer)(comblayer);
	}

	// 栞を読み出すときに呼ばれる
	function onRestore(f, clear, elm)
	{
		// f = 読み込む栞データ ( Dictionary クラスのオブジェクト )
		// clear = メッセージレイヤをクリアするか(temploadの時false)
		// elm = tempload 時のオプション (temploadでない場合は常にvoid,
		//               temploadの時はDictionaryクラスのオブジェクト )
		var dic = f.graphicframeplugin;
		if (dic === void || dic.comblayer === void)
			comblayer = %[fore:%[], back:%[]];
		else
			(Dictionary.assignStruct incontextof comblayer)(dic.comblayer);
		if (typeof(sf.graphicframe_opacity) != 'undefined')
			setOpacityToGlobalVariable(sf.graphicframe_opacity);
        }

	// backlay タグ / forelay タグが実行される時
	function onCopyLayer(toback)
	{
		var fores = comblayer.fore, backs = comblayer.back;
		if (toback)
			(Dictionary.assignStruct incontextof backs)(fores);
		else
			(Dictionary.assignStruct incontextof fores)(backs);
		// 実際の不透明度やサイズコピーは別に吉里吉里が実行するから
		// ここでは何もしない
	}

	// 表と裏のレイヤ交換時に呼ばれる
        function onExchangeForeBack()
        {
		var tmp = comblayer.fore;
		comblayer.fore = comblayer.back;
		comblayer.back = tmp;
	}
}


.graphicframeplugin_obj = new GraphicFramePlugin(kag);
kag.addPlugin(.graphicframeplugin_obj);

@endscript
;
; @positionタグを改名する
@renametag from=position to=position_graphicframeplugin_org
;
;
; メッセージレイヤに背景レイヤを紐付ける
@macro name=graphicframe_add
@eval exp=".graphicframeplugin_obj.addFrameLayer(mp)"
; addFrameLayer()中でmp.layerは指定されてるはず
@eval exp="mp.mlayerobj = kag.getMessageLayerObjectFromElm(mp)"
@eval exp="mp.graphicindex = mp.mlayerobj.absolute-1" cond="mp.graphicindex === void"
@eval exp="mp.graphicautohide = true" cond="mp.graphicautohide === void"
@eval exp="mp.left   = mp.mlayerobj.left"
@eval exp="mp.top    = mp.mlayerobj.top"
@eval exp="mp.width  = mp.mlayerobj.width"
@eval exp="mp.height = mp.mlayerobj.height"
; autohideはリファレンスに「前景レイヤ以外には指定しないでください」とあるが
; 大丈夫なんじゃないのん？
@layopt * layer=%graphiclayer index=%graphicindex autohide=%graphicautohide
@endmacro
;
;
; メッセージレイヤと背景レイヤの紐付けを解除する
@macro name=graphicframe_del
@eval exp=".graphicframeplugin_obj.delFrameLayer(mp)"
@endmacro
;
;
;ポジションタグ拡張
@macro name=position
@eval exp="mp.layer =.graphicframeplugin_obj.getMessageLayerFromElm(mp)"
@eval exp="mp.page  =.graphicframeplugin_obj.getPageFromElm(mp)"
@position_graphicframeplugin_org *
; ここから背景レイヤ設定
@eval exp="mp.graphiclayer =.graphicframeplugin_obj.getFrameLayerFromElm(mp)"
@if exp="mp.layer !== void && mp.graphiclayer !== void"
	; FrameLayerが設定されているときだけ以下を実行
	@layopt * layer=%graphiclayer opacity=%graphicopacity
	; 画像は後で読み込む。画像に合わせた画面サイズの変更を許容するため。
	@if exp="mp.graphicframe !== void"
		@image * layer=%graphiclayer storage=%graphicframe key=%graphickey
	@endif
	; 上の@layoptとでlayerにgraphicopacityが二回設定されるがいいや
	@eval exp=".graphicframeplugin_obj.setOpacityToFrameLayer(mp)"
@endif
@endmacro
;
;
;
@return
