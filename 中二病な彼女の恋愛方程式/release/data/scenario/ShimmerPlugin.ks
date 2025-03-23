[return cond="typeof(global.shimmer_obj) != 'undefined'"]

[iscript]

/*
	陽炎とか波紋とかを実現するプラグイン

2013/08/12	0.8	・普通の[backlay][trans]で画像が崩れていたのを修正
			・stop()する時、デフォルトでは元画像に戻すように変更
			　※元はshimmer後の画像を残すようにしていた
			・既にshimmer中ならstart()で何もしないようにした
2012/08/19	0.72	・initialize()中でmaplayer*とmsklayerが未使用だった時
			　にはinvalidateせぬよう修正
			・assign()の時にmaplayer1/maplayer2/msklayerをメモリ
		　	　リークしていたのを修正
2012/02/18	0.71	typo修正
2011/11/19	0.7	初期リリース

Override.tjs など、初期状態で以下のようにして layerExShimmer.dll を読むこと！
Plugins.link('layerExShimmer.dll');
 ↓[iscript]中では行頭に*を書かないこと！
 */


class ShimmerLayerAddon {
	var win;			// ウィンドウへの参照
	var dstpagestr;  // = 'fore';	// 対象レイヤのページ(文字列)
	var dstlayerstr; // = 'base';	// 対象レイヤ(文字列)
	var dstlayer;			// 対象レイヤ(レイヤオブジェクト)
	var srclayer;			// 元画像(指定したレイヤのコピー)
	var maplayer;	// マップ画像(白黒)(maplayer1/maplayer2/msklayerを割り込みごとに合成したもの
	var maplayer1;			// マップ画像1レイヤ
	var mapfile;			// マップ画像1(白黒)
	var maplayer2;			// マップ画像2レイヤ
	var map2file;			// マスク画像レイヤ
	var msklayer;			// マスク画像レイヤ
	var maskfile;			// マスク画像レイヤ
	var map1vx;	// = 0;		// map1 のX方向移動速度
	var map1vy;	// = 0;		// map1 のX方向移動速度
	var map2vx;	// = 0;		// map2 のX方向移動速度
	var map2vy;	// = 0;		// map2 のX方向移動速度
	var scalex;	// = 1;		// X方向屈折率
	var scaley;	// = 1;		// Y方向屈折率
	var clipx;	// = 0;		// クリッピングボックス座標
	var clipy;	// = 0;
	var clipw;	// = 0;
	var cliph;	// = 0;
	var sttime;			// タイマ開始時間
	var timer;			// タイマ

	// コンストラクタ
	function ShimmerLayerAddon(window, elm)
	{
		win = window;
		srclayer = new Layer(win, win.fore.base);
		srclayer.visible = 0;
		maplayer = new Layer(win, win.fore.base);
		maplayer.visible = 0;
		timer = new Timer(onTimer, '');
		initialize();
		setOptions(elm);
	}

	// メンバ変数の初期化
	function initialize()
	{
		stop();
		invalidate maplayer1 if(maplayer1 !== void);
		invalidate maplayer2 if(maplayer2 !== void);
		invalidate msklayer  if(msklayer  !== void);
		maplayer1 = maplayer2 = msklayer = void;
		var elm = %[
			page     : 'fore',
			layer    : 'base',
			map1vx   : 0,
			map1vy   : 0,
			map2vx   : 0,
			map2vy   : 0,
			scalex   : 1,
			scaley   : 1,
			interval : 50,	// タイマ間隔 50 = 1/20秒に一回動かす
			clipx	 : 0,
			clipy	 : 0,
			clipw	 : 0,
			cliph	 : 0
		];
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		stop(false);	// stop()だとonRestore()時に画像が更新される為
		invalidate timer;
		invalidate srclayer;
		invalidate maplayer;
	}

	// オプションを設定する
	function setOptions(elm)
	{
		if (elm === void)
			return;
		// dstpagestr, dstlayerstr は文字列で指定される
		dstpagestr  = elm.page  if (elm.page  !== void);
		dstlayerstr = elm.layer if (elm.layer !== void);
		if (elm.page !== void || elm.layer !== void) {
			var e = %[page:dstpagestr, layer:dstlayerstr];
			dstlayer = win.getLayerFromElm(e);
			srclayer.assignImages(dstlayer);
		}
		if (elm.mapfile !== void) {
			mapfile = elm.mapfile;
			if (maplayer1 === void) {
				maplayer1 = new Layer(win, win.fore.base);
				maplayer1.visible = 0;
			}
			maplayer1.loadImages(elm.mapfile);
		}
		if (elm.map2file !== void) {
			map2file = elm.map2file;
			if (maplayer2 === void) {
				maplayer2 = new Layer(win, win.fore.base);
				maplayer2.visible = 0;
			}
			maplayer2.loadImages(elm.map2file);
		}
		if (elm.maskfile !== void) {
			maskfile = elm.maskfile;
			if (msklayer === void) {
				msklayer = new Layer(win, win.fore.base);
				msklayer.visible = 0;
			}
			msklayer.loadImages(elm.maskfile);
		}
		map1vx = +elm.mapvx  if (elm.mapvx  !== void);
		map1vy = +elm.mapvy  if (elm.mapvy  !== void);
		// mapvx, map1vxどっちでもO.K.なように両方書いておく
		map1vx = +elm.map1vx if (elm.map1vx !== void);
		map1vy = +elm.map1vy if (elm.map1vy !== void);
		map2vx = +elm.map2vx if (elm.map2vx !== void);
		map2vy = +elm.map2vy if (elm.map2vy !== void);
		scalex = +elm.scalex if (elm.scalex !== void);
		scaley = +elm.scaley if (elm.scaley !== void);
		clipx  = +elm.clipx  if (elm.clipx  !== void);
		clipy  = +elm.clipy  if (elm.clipy  !== void);
		clipw  = +elm.clipw  if (elm.clipw  !== void);
		cliph  = +elm.cliph  if (elm.cliph  !== void);

		if (elm.interval !== void)
			timer.interval = +elm.interval;
	}

	// 開始
	function start(elm, new_sttime=System.getTickCount())
	{
		if (timer.enabled)	// 既に動作中なら何もしない
			return;
		setOptions(elm);
//		srclayer.assignImages(dstlayer); ここではコピーしない！
		sttime = new_sttime;
		timer.enabled = true;
	}

	// 停止
	function stop(reset=true)
	{
		timer.enabled = false;
		if (reset && dstlayer) // コンストラクタ中ではdstlayerが未設定
			dstlayer.assignImages(srclayer);
	}

	// タイマーの周期ごとに呼ばれる
	function onTimer()
	{
		var tdiff = System.getTickCount() - sttime;
		// maplayerサイズをdstlayerにあわせておく
		var cw = (clipw == 0) ? dstlayer.imageWidth  : clipw;
		var ch = (cliph == 0) ? dstlayer.imageHeight : cliph;

		maplayer.setImageSize(cw, ch);
		maplayer.shimmerBuildMap(maplayer1, map1vx*tdiff,map1vy*tdiff,
					 maplayer2, map2vx*tdiff,map2vy*tdiff);
		dstlayer.shimmer(srclayer, maplayer, msklayer, scalex, scaley,
				 clipx, clipy, cw, ch);
		dstlayer.update();
	}

	// コピーする
	function assign(src)
	{
		stop();
		initialize();
		// shimmer中の場合、initialize()の時点でdstlayerがsrclayerの
		// (shimmeredな)イメージになっていることに注意
		// backlay/forelayの処理は onCopyLayer()中で実行する
		dstpagestr     = src.dstpagestr;
		dstlayerstr    = src.dstlayerstr;
		dstlayer       = src.dstlayer;
		srclayer.assignImages(src.srclayer);
		if (src.maplayer1 === void) {
			invalidate maplayer1 if (maplayer1 !== void);
			maplayer1 = void;
		} else {
			if (maplayer1 === void) {
				maplayer1 = new Layer(win, win.fore.base);
				maplayer1.visible = 0;
			}
			maplayer1.assignImages(src.maplayer1);
		}
		mapfile = src.mapfile;
		if (src.maplayer2 === void) {
			invalidate maplayer2 if (maplayer2 !== void);
			maplayer2 = void;
		} else {
			if (maplayer2 === void) {
				maplayer2 = new Layer(win, win.fore.base);
				maplayer2.visible = 0;
			}
			maplayer2.assignImages(src.maplayer2);
		}
		map2file = src.map2file;
		if (src.msklayer === void) {
			invalidate msklayer if (msklayer !== void);
			msklayer = void;
		} else {
			if (msklayer === void) {
				msklayer = new Layer(win, win.fore.base);
				msklayer.visible = 0;
			}
			msklayer.assignImages(src.msklayer);
		}
		maskfile       = src.maskfile;
		map1vx         = src.map1vx;
		map1vy         = src.map1vy;
		map2vx         = src.map2vx;
		map2vy         = src.map2vy;
		scalex         = src.scalex;
		scaley         = src.scaley;
		// sttime         = src.sttime;
		clipx          = src.clipx;
		clipy          = src.clipy;
		clipw          = src.clipw;
		cliph          = src.cliph;
		timer.interval = src.timer.interval;

		// ↓を最後に実行して、timer enabled/disabledを設定
		start(, src.sttime);
	}

	// セーブ時
	function store()
	{
		var dic = %[];
		dic.page	   = dstpagestr;
		dic.layer	   = dstlayerstr;
		dic.mapfile	   = mapfile;
		dic.map2file	   = map2file;
		dic.maskfile	   = maskfile;
		dic.map1vx 	   = map1vx;
		dic.map1vy 	   = map1vy;
		dic.map2vx 	   = map2vx;
		dic.map2vy	   = map2vy;
		dic.scalex	   = scalex;
		dic.scaley	   = scaley;
		dic.clipx          = clipx;
		dic.clipy          = clipy;
		dic.clipw          = clipw;
		dic.cliph          = cliph;
		dic.sttimediff 	   = System.getTickCount()-dic.sttime;
		dic.timer_enabled  = timer.enabled;
		dic.timer_interval = timer.interval;
		return dic;
	}

	// ロード時
	function restore(dic)
	{
		if (dic === void)
			return;
		stop(false);
		var elm = %[
			page     : dic.page,
			layer    : dic.layer,
			mapfile  : dic.mapfile,
			map2file : dic.map2file,
			maskfile : dic.maskfile,
			map1vx   : dic.map1vx,
			map1vy   : dic.map1vy,
			map2vx   : dic.map2vx,
			map2vy   : dic.map2vy,
			scalex   : dic.scalex,
			scaley   : dic.scaley,
			clipx    : dic.clipx,
			clipy    : dic.clipy,
			clipw    : dic.clipw,
			cliph    : dic.cliph
		];
		setOptions(elm);
		timer.interval = dic.timer_interval;
		if (dic.timer_enabled)
			start(, System.getTickCount() - +dic.sttimediff);
		return dic;
	}

	// 表裏変更時
	function exchangeForeBack()
	{
		// これだけでいい。dstlayerを変更する必要なし
		dstpagestr = (dstpagestr == 'fore') ? 'back' : 'fore';
	}
}



// 陽炎プラグインクラス
class ShimmerPlugin extends KAGPlugin
{
	var win;
	var fore_shmary = [];	// 表画面陽炎配列
	var back_shmary = [];	// 裏画面陽炎配列

	// コンストラクタ
	function ShimmerPlugin(window, elm)
	{
		super.KAGPlugin(...);
		win = window;
		initialize();
		setOptions(, elm);
	}

	// 初期化
	function initialize(elm)
	{
		stop(elm);	// reset= を反映するため
		for (var i = fore_shmary.count-1; i >= 0; i--)
			invalidate fore_shmary[i];
		for (var i = back_shmary.count-1; i >= 0; i--)
			invalidate back_shmary[i];
		fore_shmary = [];
		back_shmary = [];
	}

	// デストラクタ
	function finalize()
	{
		initialize();
		stop();
		super.finalize(...);
	}

	// 名前に合致する ShmmerLayerAddon を配列にして返す
	function getShmAddons(page='fore', layer)
	{
		var retary = [];
		if (page === void || page == 'fore' || page == 'both')
			for (var i = fore_shmary.count-1; i >= 0; i--)
				retary.add(fore_shmary[i]);
		if (page === void || page == 'back' || page == 'both')
			for (var i = back_shmary.count-1; i >= 0; i--)
				retary.add(back_shmary[i]);
		if (layer !== void)
			for (var i = retary.count-1; i >= 0; i--)
				if (retary[i].dstlayerstr != layer)
					retary.erase(i);
		return retary;
	}

	// オプションを設定する
	function setOptions(elm)
	{
		if (elm === void)
			return;
		var ary = getShmAddons(elm.page, elm.layer);
		for (var i = ary.count-1; i >= 0; i--)
			ary[i].setOptions(elm);
	}

	// 開始
	function start(elm = %[])
	{
		stop(elm);
		// 別々のものを追加することに注意
		if (elm.page === void || elm.page == 'fore' || elm.page == 'both')
			fore_shmary.add(new ShimmerLayerAddon(win, elm));
		if (elm.page === void || elm.page == 'back' || elm.page == 'both')
			back_shmary.add(new ShimmerLayerAddon(win, elm));
		var ary = getShmAddons(elm.page, elm.layer);
		for (var i = ary.count-1; i >= 0; i--)
			ary[i].start(elm);
	}

	// 停止
	function stop(elm = %[])
	{
		var ary = getShmAddons(elm.page, elm.layer);
		for (var i = ary.count-1; i >= 0; i--) {
			var obj = ary[i];
			fore_shmary.remove(obj);
			back_shmary.remove(obj);
			invalidate obj;		// 明示的なstop()は不要
		}
	}

	// 栞を保存するとき
	function onStore(f, elm)
	{
		var dic = f.shimmer = %[];
		dic.fore_shmary = [];
		for (var i = 0; i < fore_shmary.count; i++)
			dic.fore_shmary[i] = fore_shmary[i].store();
		dic.back_shmary = [];
		for (var i = 0; i < back_shmary.count; i++)
			dic.back_shmary[i] = back_shmary[i].store();
	}

	// 栞を読み出すとき
	function onRestore(f, clear, elm)
	{
		initialize();
		var dic = f.shimmer;
		if (dic === void)
			return;
		for (var i = 0; i < dic.fore_shmary.count; i++) {
			fore_shmary[i] = new ShimmerLayerAddon(win);
			fore_shmary[i].restore(dic.fore_shmary[i]);
		}
		for (var i = 0; i < dic.back_shmary.count; i++) {
			back_shmary[i] = new ShimmerLayerAddon(win);
			back_shmary[i].restore(dic.back_shmary[i]);
		}
	}

	// レイヤの表←→裏情報のコピー
	// このプラグインではコピーすべき情報は表示・非表示の情報だけ
	function onCopyLayer(toback)
	{
		//本当は裏に行ったら自動的に止めたいが…表に出てくる時に
		// beginTransitionでOnにする方法がないので今は諦め。
		if (toback) {
			// 表→裏
			stop(%[page:'back']); // ここでback_shmary=[]になった
			for (var i = 0; i < fore_shmary.count; i++) {
				back_shmary[i] = new ShimmerLayerAddon(win);
				var dst = back_shmary[i], src = fore_shmary[i];
				dst.assign(src);
				dst.setOptions(%[page:'back'], false);
				// 最後に元イメージをコピー元のにする。こうしな
				// いと、shimmer後のイメージをsrcとしてしまう
				dst.srclayer.assignImages(src.srclayer);
			}
		} else {
			// 裏→表
			stop(%[page:'fore']); // ここでfore_shmary=[]になった
			for (var i = 0; i < back_shmary.count; i++) {
				fore_shmary[i] = new ShimmerLayerAddon(win);
				var dst = fore_shmary[i], src = back_shmary[i];
				dst.assign(src);
				dst.setOptions(%[page:'fore'], false);
				// 最後に元イメージをコピー元のにする。こうしな
				// いと、shimmer後のイメージをsrcとしてしまう
				dst.srclayer.assignImages(src.srclayer);
			}
		}
	}

	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		var tmp = [];
		tmp.assign(fore_shmary);
		fore_shmary.assign(back_shmary);
		back_shmary.assign(tmp);
//		for (var i = fore_shmary.count-1; i >= 0; i--)
//			fore_shmary[i].exchangeForeBack();
//		for (var i = fore_shmary.count-1; i >= 0; i--)
//			back_shmary[i].exchangeForeBack();
	}
}

kag.addPlugin(global.shimmer_obj = new ShimmerPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

[endscript]


; マクロ登録
; 初期化マクロ
[macro name="shimmer_init"]
[eval exp="shimmer_obj.initialize(mp)"]
[endmacro]

[macro name="shimmer_add"]
[eval exp="shimmer_obj.add(mp)"]
[endmacro]

[macro name="shimmer_del"]
[eval exp="shimmer_obj.del(mp)"]
[endmacro]

; 開始マクロ
[macro name="shimmer_start"]
[eval exp="shimmer_obj.start(mp)"]
[endmacro]

; 停止マクロ
[macro name="shimmer_stop"]
[eval exp="shimmer_obj.stop(mp)"]
[endmacro]

; オプション設定マクロ
[macro name="shimmer_opts"]
[eval exp="shimmer_obj.setOptions(mp)"]
[endmacro]


; これはプラグインには関係ないが、単発のKAGタグとして用意
;[shimmer layer= page= mapfile= maskfile= scalex=, scaley=]
[macro name=shimmer]
[call storage=ShimmerPlugin.ks target=*shimmer_sub]
[endmacro]

[return]


*shimmer_sub
; KAG Macro "shimmer"のサブルーチン
[iscirpt]
mp.layer  = 'base' if (mp.layer  === void);
mp.page   = 'fore' if (mp.page   === void);
mp.scalex = 1      if (mp.scalex === void);
mp.scaley = 1      if (mp.scaley === void);

mp.dstlayer = kag.getLayerFromElm(mp);

mp.srclayer = new Layer(kag, kag.fore.base);
mp.srclayer.visible = 0;
mp.srclayer.assignImages(mp.dstlayer);

mp.maplayer = new Layer(kag, kag.fore.base);
mp.maplayer.visible = 0;
mp.maplayer = loadImages(mp.mapfile);

if (mp.maskfile !== void) {
	mp.msklayer = new Layer(kag, kag.fore.base);
	mp.msklayer.visible = 0;
	mp.msklayer = loadImages(mp.maskfile);
}

mp.dstlayer.shimmer(mp.srclayer,mp.maplayer,mp.msklayer,mp.scalex,mp.scaley);
invalidate mp.srclayer;
invalidate mp.maplayer;
invalidate mp.msklayer;

[endscript]
[return]


[return]
