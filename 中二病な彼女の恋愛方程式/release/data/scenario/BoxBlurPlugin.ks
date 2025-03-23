[return cond="typeof(global.boxblur_obj) != 'undefined'"]

[iscript]

/*
	doBoxBlurを時間変化でかけるプラグイン

2011/11/23	0.1	初期リリース

 ↓[iscript]中では行頭に*を書かないこと！
 */


class BoxBlurLayerAddon {
	var STOP=0, BLURING=1, PAUSE=2;	// 現在のステータス

	var win;			// ウィンドウへの参照
	var status;	// = STOP
	var dstpagestr;	// = 'fore';	// 対象レイヤのページ(文字列)
	var dstlayerstr;// = 'base';	// 対象レイヤ(文字列)
	var dstlayer;			// 対象レイヤ(レイヤオブジェクト)
	var srclayer;			// 元画像(指定したレイヤのコピー)
	var startx;	// = 0;		// ブラー開始時のブラーX成分
	var endx;	// = 63;	// ブラー終了時のブラーX成分
	var starty;	// = 0;		// ブラー開始時のブラーY成分
	var endy;	// = 63;	// ブラー終了時のブラーY成分
	var loop;	// = 0;		// ループ回数
	var time;	// = 2000;	// ブラー時間
	var reset;	// = false;	// リセットするかどうか
	var sttime;			// タイマ開始時間
	var pausesttime = 0;		// ポーズ開始時間
	var srcfile;	// = ""		// 元になるファイル

	// コンストラクタ
	function BoxBlurLayerAddon(window, elm)
	{
		win = window;
		srclayer = new Layer(win, win.fore.base);
		srclayer.visible = 0;
		initialize();
		setOptions(elm);
	}

	// メンバ変数の初期化
	function initialize()
	{
		status = STOP;
		var elm = %[
			page     : 'fore',
			layer    : 'base',
			startx   : 0,
			endx     : 63,
			starty   : 0,
			endy     : 63,
			loop	 : 0,
			time	 : 2000,
			reset	 : false,
			srcfile  : ""
		];
		sttime = pausesttime = 0;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		// stop(); 	// ここでstop()するとrestore()でおかしくなる
		invalidate srclayer;
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
			// srclayer.assignImages(dstlayer); なくてもいいから
		}
		startx  = +elm.startx  if (elm.startx  !== void);
		endx    = +elm.endx    if (elm.endx    !== void);
		starty  = +elm.starty  if (elm.starty  !== void);
		endy    = +elm.endy    if (elm.endy    !== void);
		loop    = +elm.loop    if (elm.loop    !== void);
		time    = +elm.time    if (elm.time    !== void);
		reset   = +elm.reset   if (elm.reset   !== void);
		srcfile = elm.srcfile  if (elm.srcfile !== void);
	}

	// 開始
	function start(elm)
	{
		setOptions(elm);
		if (srcfile == "")
			srclayer.assignImages(dstlayer);
		else
			srclayer.loadImages(srcfile);
		sttime = System.getTickCount();
		status = BLURING;
	}

	// 停止
	function stop(reset_arg)
	{
		status = STOP;
		if (dstlayer === void)
			return;	// 初期化の初期化時は画像ないので。
		dstlayer.assignImages(srclayer);
		if (!reset_arg && !(reset_arg === void && reset)) {
			// 最後の絵にする
			if (loop == 0)
				dstlayer.doBoxBlur(endx, endy);
			else
				dstlayer.doBoxBlur(startx, starty);
		}
		dstlayer.update();
	}

	// 一時停止
	function pause(elm, curtime=System.getTickCount())
	{
		if (status != BLURING)
			return;
		status = PAUSE;
		setOptions(elm);
		pausesttime = curtime;
	}

	// 一時停止解除
	function resume(elm, curtime=System.getTickCount())
	{
		if (status != PAUSE)
			return;
		setOptions(elm);
		sttime += curtime-pausesttime;
		status = BLURING;
	}


	// 動作中か確認
	function isBluring(tdiff = System.getTickCount() - sttime)
	{
		return  (loop < 0) ||
			(loop == 0 && tdiff < time) ||
			(loop > 0 && tdiff/(time*2) < loop);
	}

	// 現在のタイマー値からmin/maxの値を得る
	function getcurval(min, max, time, tdiff, loop)
	{
		var curval;
		if (tdiff < 0)
			tdiff = 0;
		if (!loop) {
			// ループじゃなかったとき
			if (tdiff > time)
				tdiff = time;
			curval = min + (max-min)*tdiff/time;
		} else {
			// ループのとき
			if (loop > 0 && tdiff/(time*2) >= loop)
				curval = min;
			else {
				tdiff %= time*2;
				if (time < tdiff)
					curval = min+(max-min)*(time*2-tdiff)/time;
				else
					curval = min+(max-min)*tdiff/time;
			}
		}
		return int(curval+0.49);
	}

	// タイマーの周期ごとに呼ばれる
	function onTimer(curtime=System.getTickCount(), interval)
	{
		if (status != BLURING)
			return true;
		var tdiff = curtime - sttime;
		var prevtdiff = tdiff - interval;

		var curx  = getcurval(startx, endx, time, tdiff,     loop);
		var cury  = getcurval(starty, endy, time, tdiff,     loop);
		var prevx = getcurval(startx, endx, time, prevtdiff, loop);
		var prevy = getcurval(starty, endy, time, prevtdiff, loop);
//		if (curx == prevx && cury == prevy)
//			return true; あるとrestore()時にfalseが返らなくなる
		dstlayer.assignImages(srclayer);
		dstlayer.doBoxBlur(curx, cury);
		dstlayer.update();

		// ループ終了かどうかチェック
		if (!isBluring(tdiff)) {
			stop();		// ループ終了
			return false;
		}
		return true;
	}

	// コピーする
	function assign(src)
	{
		status      = src.status;
		dstpagestr  = src.dstpagestr;
		dstlayerstr = src.dstlayerstr;
		dstlayer    = src.dstlayer;
		srclayer.assignImages(src.srclayer);
		startx      = src.startx;
		endx        = src.endx;
		starty      = src.starty;
		endy        = src.endy;
		loop        = src.loop;
		time        = src.time;
		reset       = src.reset;
		srcfile     = src.srcfile;
		sttime      = src.sttime;
		pausesttime = src.pausesttime;
	}

	// セーブ時
	function store(curtime=System.getTickCount())
	{
		var dic = %[];
		dic.status          = status;
		dic.page	    = dstpagestr;
		dic.layer	    = dstlayerstr;
		dic.startx          = startx;
		dic.endx            = endx;
		dic.starty          = starty;
		dic.endy            = endy;
		dic.loop            = loop;
		dic.time            = time;
		dic.reset           = reset;
		dic.srcfile         = srcfile;
		dic.sttimediff 	    = curtime-sttime;
		dic.pausesttimediff = curtime-pausesttime;
		return dic;
	}

	// ロード時
	function restore(dic, curtime=System.getTickCount())
	{
		if (dic === void)
			return;
		stop();
		var elm = %[
			page    : dic.page,
			layer   : dic.layer,
			startx  : dic.startx,
			endx    : dic.endx,
			starty  : dic.starty,
			endy    : dic.endy,
			loop    : dic.loop,
			time    : dic.time,
			reset   : dic.reset,
			srcfile : dic.srcfile
		];
		setOptions(elm);
		status      = dic.status;
		sttime      = curtime-dic.sttimediff;
		pausesttime = curtime-dic.pausesttimediff;
		// 最終画面には BoxBlurRestore.tjs がしてくれるので考えない
		return dic;
	}

	// 表裏変更時
	function exchangeForeBack()
	{
		// これだけでいい。dstlayerを変更する必要なし
		dstpagestr = (dstpagestr == 'fore') ? 'back' : 'fore';
	}
}



// ボックスブラープラグインクラス
class BoxBlurPlugin extends KAGPlugin
{
	var win;
	var fore_blurary = [];	// 表画面ブラー配列
	var back_blurary = [];	// 裏画面ブラー配列
	var timer;		// タイマ

	// コンストラクタ
	function BoxBlurPlugin(window, elm)
	{
		super.KAGPlugin(...);
		win = window;
		timer = new Timer(onTimer, '');
		initialize();
		setOptions(, elm);
	}

	// 初期化
	function initialize(elm)
	{
		timer.enabled = false;
		stop(,true);	// 元に戻して終わる ... これ必要かなぁ。
		for (var i = fore_blurary.count-1; i >= 0; i--)
			invalidate fore_blurary[i];
		for (var i = back_blurary.count-1; i >= 0; i--)
			invalidate back_blurary[i];
		fore_blurary = [];
		back_blurary = [];
		timer.interval = 50;	// タイマ間隔 50 = 1/20秒に一回動かす
		timer.enabled = true;
	}

	// デストラクタ
	function finalize()
	{
		initialize();
		stop();
		super.finalize(...);
	}

	// 名前に合致する BlurLayerAddon を配列にして返す
	function getBlurAddons(page, layer)
	{
		var retary = [];
		if (page === void || page == 'fore' || page == 'both')
			for (var i = fore_blurary.count-1; i >= 0; i--)
				retary.add(fore_blurary[i]);
		if (page === void || page == 'back' || page == 'both')
			for (var i = back_blurary.count-1; i >= 0; i--)
				retary.add(back_blurary[i]);
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
		var ary = getBlurAddons(elm.page, elm.layer);
		for (var i = ary.count-1; i >= 0; i--)
			ary[i].setOptions(elm);
		if (elm.interval !== void)
			timer.interval = +elm.interval;
	}

	// 開始
	function start(elm = %[])
	{
		elm.page  = 'fore' if (elm.page  === void);
		elm.layer = 'base' if (elm.layer === void);
		stop(elm);
		var layer = new BoxBlurLayerAddon(win, elm);
		// 別々のものを追加することに注意
		if (elm.page == 'fore')
			fore_blurary.add(layer);
		if (elm.page == 'back')
			back_blurary.add(layer);
		layer.start();
	}

	// 停止
	function stop(elm = %[], reset)
	{
		var ary = getBlurAddons(elm.page, elm.layer);
		for (var i = ary.count-1; i >= 0; i--) {
			var obj = ary[i];
			fore_blurary.remove(obj);
			back_blurary.remove(obj);
			obj.stop(reset);
			invalidate obj;
		}
	}

	// タイマーの周期ごとに呼ばれる
	function onTimer()
	{
		var curtime = System.getTickCount();
		var endflg = false;
		for (var i = fore_blurary.count-1; i >= 0; i--)
			if (!fore_blurary[i].onTimer(curtime,timer.interval)) {
				invalidate fore_blurary[i];
				fore_blurary.erase(i);	// 終了したのを削除
				endflg = true;
			}
		for (var i = back_blurary.count-1; i >= 0; i--)
			if (!back_blurary[i].onTimer(curtime,timer.interval)) {
				invalidate back_blurary[i];
				back_blurary.erase(i);	// 終了したのを削除
				endflg = true;
			}
		if (endflg) // 終わってたらあるブラーの終了をKAGへ発砲
			kag.conductor.trigger('endABoxBlur');
	}

	// 指定したものが動作中か確認
	function isBluring(elm = %[])
	{
		var ary = getBlurAddons(elm.page, elm.layer);
		return (ary.count > 0);
	}

	// 栞を保存するとき
	function onStore(f, elm)
	{
		var dic = f.boxblur = %[];
		var curtime = System.getTickCount();

		dic.fore_blurary = [];
		for (var i = 0; i < fore_blurary.count; i++)
			dic.fore_blurary[i] = fore_blurary[i].store(curtime);
		dic.back_blurary = [];
		for (var i = 0; i < back_blurary.count; i++)
			dic.back_blurary[i] = back_blurary[i].store(curtime);
		dic.timer_enabled  = timer.enabled;
		dic.timer_interval = timer.interval;
	}

	// 栞を読み出すとき
	function onRestore(f, clear, elm)
	{
		var dic = f.boxblur;
		var curtime = System.getTickCount();

		initialize();
		timer.enabled = false;
		if (dic === void)
			return;
		for (var i = 0; i < dic.fore_blurary.count; i++) {
			fore_blurary[i] = new BoxBlurLayerAddon(win);
			fore_blurary[i].restore(dic.fore_blurary[i], curtime);
		}
		for (var i = 0; i < dic.back_blurary.count; i++) {
			back_blurary[i] = new BoxBlurLayerAddon(win);
			back_blurary[i].restore(dic.back_blurary[i], curtime);
		}
		timer.interval = dic.timer_interval;
		timer.enabled  = dic.timer_enabled;
	}

	// レイヤの表←→裏情報のコピー
	// このプラグインではコピーすべき情報は表示・非表示の情報だけ
	function onCopyLayer(toback)
	{
		//本当は裏に行ったら自動的に止めたいが…表に出てくる時に
		// beginTransitionでOnにする方法がないので今は諦め。
		if (toback) {
			// 表→裏
			stop(%[page:'back']);
			back_blurary = [];
			for (var i = 0; i < fore_blurary.count; i++) {
				back_blurary[i] = new BoxBlurLayerAddon(win);
				back_blurary[i].assign(fore_blurary[i]);
				back_blurary[i].setOptions(%[page:'back']);
			}
		} else {
			// 裏→表
			stop(%[page:'fore']);
			fore_blurary = [];
			for (var i = 0; i < back_blurary.count; i++) {
				fore_blurary[i] = new BoxBlurLayerAddon(win);
				fore_blurary[i].assign(back_blurary[i]);
				fore_blurary[i].setOptions(%[page:'fore']);
			}
		}
	}

	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		var tmp = [];
		tmp.assign(fore_blurary);
		fore_blurary.assign(back_blurary);
		back_blurary.assign(tmp);
//		for (var i = fore_blurary.count-1; i >= 0; i--)
//			fore_blurary[i].exchangeForeBack();
//		for (var i = fore_blurary.count-1; i >= 0; i--)
//			back_blurary[i].exchangeForeBack();
	}
}

kag.addPlugin(global.boxblur_obj = new BoxBlurPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

[endscript]


; マクロ登録
; 初期化マクロ
[macro name="boxblur_init"]
[eval exp="boxblur_obj.initialize(mp)"]
[endmacro]

; 開始マクロ
[macro name="boxblur_start"]
[eval exp="boxblur_obj.start(mp)"]
[boxblur_wait * cond="mp.wait"]
[endmacro]

; 停止マクロ
[macro name="boxblur_stop"]
[eval exp="boxblur_obj.stop(mp)"]
[endmacro]

; 終了待ちマクロ
[macro name="boxblur_wait"]
[call storage=BoxBlurPlugin.ks target=*boxblur_wait_sub]
; stopしない。stopするとload時に画像を戻せなくなるため。
; [boxblur_stop *]
[endmacro]

; オプション設定マクロ
[macro name="boxblur_opts"]
[eval exp="boxblur_obj.setOptions(mp)"]
[endmacro]


; これはプラグインには関係ないが、単発のKAGタグとして用意
;[boxblur layer= page= xblur= yblur]
[macro name=boxblur]
[call storage=BoxBlurPlugin.ks target=*boxblur_sub]
[endmacro]

[return]


*boxblur_sub
; KAG Macro "boxblur"のサブルーチン
[iscript]
mp.layer  = 'base' if (mp.layer === void);
mp.page   = 'fore' if (mp.page  === void);
mp.xblur  = 3      if (mp.xblur === void);
mp.yblur  = 3      if (mp.yblur === void);
mp.dstlayer = kag.getLayerFromElm(mp);
mp.dstlayer.doBoxBlur(+mp.xblur, +mp.yblur);
[endscript]
[return]

*boxblur_wait_sub
[eval exp="mp.canskip = true" cond="mp.canskip === void"]
*boxblur_wait_sub_loop
; スキップ中はすぐに戻る
[return cond="kag.skipMode > 1"]
; 該当ブラーが実行中でなければすぐ返る。実行中だったら下へいき、
; なんでもいいから一つブラーが終了するのを待つ。
[return cond="!boxblur_obj.isBluring(mp)"]
[eval exp="mp.endABoxBlurSkip = false"]
[waittrig name=endABoxBlur canskip=%canskip onskip="mp.endABoxBlurSkip=true" cond="boxblur_obj.isBluring(mp)"]
; kag.clickCount は[waittrig]中でskipされても更新されないらしいので
[if exp="mp.endABoxBlurSkip"]
	; クリックが押された場合、全てを停止させ、削除する
	[boxblur_stop layer=%layer page=%page]
	[return]
[endif]
; 以降繰り返し
[jump target=*boxblur_wait_sub]

[return]
