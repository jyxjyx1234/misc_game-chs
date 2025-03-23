[return cond="typeof(global.sakura_object) != 'undefined'"]

[iscript]

/*
	桜をふらせるプラグイン 縮小コピーでメモリ節約CPU食い

2011/11/28 0.51	[sakura_pause]と[sakura_resume]を追加
2011/05/06 0.5	[iscript]中の行頭の * を回避
2010/01/05 0.4	Restore() で dic === void だった時に何もしないよう修正
2010/07/21 0.3	メンバsakurasを初期化。初期化してなかったら、transitionしたら
		たちまちエラーになっていた。
 [iscript]中では頭に*を書かないこと！*/


// 花びらのクラス
class SakuraGrain
{
	var fore;	// 表画面の花びらオブジェクト
	var back;	// 裏画面の花びらオブジェクト
	var xvelo;	// 横速度
	var yvelo;	// 縦速度
	var xaccel;	// 横加速
	var x, y;	// 横位置と縦位置
	var window;	// ウィンドウオブジェクトへの参照

	var opts;	// デフォルト値保存ハッシュ(xspeed,q,yrandq,yspeedなど)
	var status = 0;	// 0=未表示(spawned == false)
			// 1=初期化中(次回画面外に出たら表示)
			// 2=表示中(spawned == true)
			// 3=消去準備中(次回画面外に出たら消去)
			// 4=消去可能
	var n;		// この花びらの大きさ(0-7)

	var xr, yr, zr;		// X軸回転位置、Y軸回転位置、Z軸回転位置
	var xrv, yrv, zrv;	// 同回転速度
	var w;			// 横幅

	var parent;		// 親インスタンス

	// SakuraGrain コンストラクタ
	function SakuraGrain(window, n, opts, w, parent)
	{
		this.window = window;
		this.opts   = opts; // ← コピーではなくて参照であることに注意
		this.n      = n;
		this.status = 0;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		// 最初は画面外へ追い出す
		fore.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);
		back.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);

		// マウスメッセージは全域透過
		fore.hitType = back.hitType = htMask;
		fore.hitThreshold = back.hitThreshold = 256; 

		this.w = w;
		fore.setSize(w, w);	// サイズを指定しておく
		back.setSize(w, w);	// この時点ではまだ画像は無い

		this.parent = parent;	// 親インスタンス
	}

	// デストラクタ
	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	// 回転量から画像位置を得て、指定のサイズにコピー
	function copyImage()
	{
		var pn = parent.PATNUM;
		var W = parent.MAXW;
/*
		var x = (int(xr)%pn + int(zr)%pn*pn) % (pn*pn) * W;
		var y =  int(yr)%pn * W;
		fore.stretchCopy(0, 0, w, w,
				parent.imglayer, x, y, W, W);
 [iscript]中では頭に*を書かないこと！*/
/*	Z軸回転をプログラムで実装する場合はこちら(パターン数が激減できる)。
	でも、Z軸回転をプログラムで実装すると、陰影が不自然になる上、花びら
	数が50を超えるとCore2Duo(1.8GHz)で20%以上CPUパワーを食うので、没。
	ここを有効にする時はimglayerも別のものを読まなければいけないことに注意
 [iscript]中では頭に*を書かないこと！*/
		var x = int(xr*4)%pn * W;
		var y = int(yr*4)%pn * W;
		var sinz = Math.sin(zr/5);
		var cosz = Math.cos(zr/5);
		var a = w/W;
		fore.affineCopy(parent.imglayer, x, y, W, W,
				true,
				a*cosz, -a*sinz, a*sinz, a*cosz,
				-a*W/2*( cosz+sinz)+w/2,
				-a*W/2*(-sinz+cosz)+w/2, 
				stNearest, true);

		back.assignImages(fore);
	}

	// 出現
	function spawn(out_of_window=true, status=2)
	{
		var qn = Math.pow(opts.q, n);
		var win_w = window.primaryLayer.width;
		var win_h = window.primaryLayer.height;

		fore.absolute = back.absolute = opts.priority+n;
		this.status = status;
		xvelo   = opts.xspeed*qn;
		var yrand = (Math.random()-0.5)*2*opts.yrandq;	// 範囲±yrandq
		yvelo   = (opts.yspeed+yrand)*qn;
		yvelo   = 0.0001 if (yvelo == 0); // yvelo = 0は処理不能なので
		xaccel  = (Math.random()-0.5)*2 * opts.xaccelq*qn;

		xr = intrandom(0, parent.PATNUM-1);
		yr = intrandom(0, parent.PATNUM-1);
		zr = intrandom(0, parent.PATNUM-1);
		// randsiz = 0.5 - 1.0, 速度遅＝回転ゆっくりのために計算
		var randsiz = 0.5 + (opts.yrandq+yrand)/(opts.yrandq*2)*0.5;
		xrv = 0.05 + Math.random()*randsiz;
		zrv = 0.05 + Math.random()*randsiz;
		// あんまり回転が少なかったらそれっぽく見せるために0.3にする
		yrv = (xrv*xrv + zrv*zrv) < 0.1 ? 0.3 : Math.random()*randsiz;
		copyImage();

		// +1 とか -2 とかは、必ず画面内に表示するため
		x = intrandom(-fore.width+1,  win_w+fore.width-1);
		y = intrandom(-fore.height+1, win_h+fore.height-1);
		if(out_of_window) {
			// 画面外から表示する場合
			var t = 0;	// xvelo == 0 で t = 0とする
			if(xvelo != 0) {
				var a = Math.abs(yvelo/xvelo);	// 傾き絶対値
				var sq = win_h*win_w;	// 描画面面積
				if (a >= Math.abs(win_h/win_w)) {
					// t = 三角形の面積と、描画面積の比
					t = win_h*win_h/a/2 /sq;
				} else {
					// t = 台形の面積と、描画面積の比
					var qua = (win_h*2-win_w*a)*win_w/2;
					t = qua/sq;
				}
			}
			if (Math.random() < t) {
				// 縦方向をメインにする。スピードが速い時に
				// 左端・右端が途切れるのを防ぐためにrand必要
				var xrand = Math.random()*xvelo;
				if (0 <= xvelo)
					x = -fore.width+1 + xrand;
				else
					x = win_w-1       - xrand;
			} else {
				// 横方向をメインにするスピードが速い時に
				// 上端・下端が途切れるのを防ぐためにrand必要
				var yrand = Math.random()*yvelo;
				if (0 <= yvelo)
					y = -fore.height+1 + yrand;
				else
					y = win_h-1        - yrand;
			}
		}
		if (status == 2 || status == 3) { // 表示・消去準備中なら表示
			fore.setPos(x, y);
			back.setPos(x, y); // 裏画面の位置も同じに
		} else {
			fore.setPos(-fore.width, 0); // 初期化中ならダミーで
			back.setPos(-fore.width, 0); // 画面外表示
		}
		fore.visible = opts.forevisible;
		back.visible = opts.backvisible;
	}


	// 表示・非表示の状態を再設定する
	function resetVisibleState()
	{
		if (status) {
			fore.visible = opts.forevisible;
			back.visible = opts.backvisible;
		}
		else {
			fore.visible = false;
			back.visible = false;
		}
	}


	// 花びらを動かす
	function move()
	{
		if (status == 4)	// 消去可能状態なら何もしない
			return;
		var qn = Math.pow(opts.q, n);
		if (status == 0) {
			// 表示されていなければ表示
			// 出現頻度は1/opts.q、最背面は必ず出現(=1.0)
			spawn() if (Math.random() <= 1/qn);
			return;
		}
		x += xvelo;
		y += yvelo;

		xvelo += xaccel;
		xaccel += (Math.random() - 0.5) * 2 * opts.xaccelq * qn;
		if (xvelo >  (opts.xspeed + opts.xspeedmax)*qn)
			xvelo = (opts.xspeed + opts.xspeedmax)*qn;
		if (xvelo < (opts.xspeed - opts.xspeedmax)*qn)
			xvelo = (opts.xspeed - opts.xspeedmax)*qn;
		if (xaccel > opts.xaccelmax*qn)
			xaccel = opts.xaccelmax*qn;
		if (xaccel < -opts.xaccelmax*qn)
			xaccel = -opts.xaccelmax*qn;

		if (status != 1) { // 初期化中以外であれば実際に動かす
			fore.setPos(x, y);
			back.setPos(x, y); // 裏画面の位置も同じに
		}

		// 花びらが完全に画面外に出た場合、非表示にする。
		// 次のmove()の時、上で再表示されるかどうか判断される
		if (x <= -fore.width  || window.primaryLayer.width  <= x ||
		    y <= -fore.height || window.primaryLayer.height <= y) {
			if (status == 1 || status == 2) // 表示/初期化中なら
				status = 0;	// 未表示にする
			else if (status == 3)	// 消去前なら
				status = 4;	// 消去可能にする
		}

		xr += xrv; yr += yrv; zr += zrv;
		copyImage();
	}

	
	// 表と裏の管理情報を交換する
	function exchangeForeBack()
	{
		var tmp = fore;
		fore = back;
		back = tmp;
	}
}



// 桜を振らすプラグインクラス
class SakuraPlugin extends KAGPlugin
{
	var sakuras;	// 花びら配列。二次元配列で、sakuras[大きさ][数]になってる
	var timer;	// タイマ
	var window;	// ウィンドウへの参照
	var opts = %[];	// オプション保存変数

	var imglayer;		// 花びらの元画像レイヤ
	var PATNUM = 32;	// パターン数(AxAxA)
	var MAXW = 64;
	var imgwidth = [ 6, 10, 16, 25, 40, MAXW ]; // 花びらの横(=縦)dot
	var INTERVAL = 20;	// タイマー周期(=20回/秒)

	// コンストラクタ
	function SakuraPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
//		SakuraPluginInit();	ここでは省メモリのためにまだinitしない
		sakuras = [ [], [], [], [], [], [], [] ];
	}

	// 初期化
	function SakuraPluginInit()
	{
		stop();
		sakuras = [ [], [], [], [], [], [], [] ];
		opts = %[
			"priority"    => 2000000-1-5,	// 表示優先順位
							// -maxgrainが必要
			"mingrain"    => 0,	// 花びら最小サイズ
			"maxgrain"    => 5,	// 花びら最大サイズ
			"dencity"     => 30,	// 花びらの数(段階毎の)
			"xspeed"      => 0,	// x方向への平均スピード
			"xaccelq"     => 0.05,	// x方向への加速度係数
			"xaccelmax"   => 0.5,	// x方向の加速度最大値
			"xspeedmax"   => 0.7,	// x方向の速度最大値
			"yspeed"      => 2.2,	// y方向への平均スピード
			"yrandq"      => 0.4,	// y方向の加速度ランダム係数
			"q"           => 1.3,	// 花びらの大きさ一段階の係数
			"forevisible" => true,	// 表画面が表示状態かどうか
			"backvisible" => true	// 裏画面が表示状態かどうか
		];

		// 使用するパターンイメージを読む。16x16x16でメモリ65MB食う
		if (imglayer === void) { // 既に読んでいれば読まない
//			var fnam = "sakura"+PATNUM+"x"+PATNUM+"x"+PATNUM+"-"+MAXW+'x'+MAXW;
//		Z軸をaffineCopyで実行する時の読み込みファイル名
			var fnam = "sakura"+PATNUM+"x"+PATNUM+"-"+MAXW+'x'+MAXW;
			imglayer = new Layer(window, window.back.base);
			imglayer.loadImages(fnam);
		}
	}


	// 終了処理。メモリにやさしくパターンイメージを開放する
	function SakuraPluginUninit()
	{
		for (var i = sakuras.count-1; i >= 0; i--)
			for (var j = sakuras[i].count-1; j >= 0; j--)
				invalidate sakuras[i][j];
		sakuras = [ [], [], [], [], [], [], [] ];

		if (imglayer !== void) {
			invalidate imglayer;
			imglayer = void;
		}
	}


	// デストラクタ
	function finalize()
	{
		// このクラスの管理するすべてのオブジェクトを明示的に破棄
		for(var n = sakuras.count-1; n >= 0; n--) {
			for(var i = sakuras[n].count-1; i >= 0; i--)
				invalidate sakuras[n][i];
			invalidate sakuras[n];
		}
		invalidate sakuras;
		invalidate timer if timer !== void;
		super.finalize(...);
	}


	// dencity 個の花びらに変更する。
	// 数が少なくなる場合、既に存在する花びらは、画面外に出たら削除される
	// 多くなる場合は…まぁフツーに。
	function change_sakura_dencity(status = 1)
	{
		var num = opts.dencity;

		// 最初に不要な階層の花びらを削除
		for (var n = 0; n < sakuras.count && n < opts.mingrain; n++) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				sakuras[n][i].status = 3; // 削除待ち
		}
		for (var n = opts.maxgrain+1; n < sakuras.count; n++) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				sakuras[n][i].status = 3; // 削除待ち
		}

		// 必要な階層を処理
		for (var n = opts.mingrain; n <= opts.maxgrain; n++) {
			// n = 花びらの大きさ、newnum = 表示個数(面積に比例)
			var newnum = int(num/Math.pow(opts.q,n*2));
			newnum = 1 if (num != 0 && newnum < 1);
			if (sakuras[n] === void)
				sakuras[n] = [];	// 初めての場合、初期化
			// 少なくなる場合
			for (var i = sakuras[n].count-1; i >= newnum; i--)
				sakuras[n][i].status = 3;	// 削除待ち
			// 多くなる場合
			for (var i = sakuras[n].count; i < newnum; i++) {
				sakuras[n][i]= new SakuraGrain(window, n, opts, imgwidth[n], this);
				sakuras[n][i].spawn(false, status);
			}
			// 現在削除待ちのもので、復活するものがあればstatus変更
			for (var i = 0; i < newnum; i++) {
				if (sakuras[n][i].status == 3)
					sakuras[n][i].status = 2;
				if (sakuras[n][i].status == 4)
					sakuras[n][i].status = 0;
			}
		}
	}


	// opts.dencity 個(x花びら種類)の花びらを出現させる
	function start(type = 1, opts)
	{
		if (timer !== void)
			return;		// 既に桜吹雪中ならすぐ戻る

		setOptions(opts);
		change_sakura_dencity(type ? 2 : 1);
		// タイマーを作成
		timer = new Timer(onTimer, '');
		timer.interval = 1000/INTERVAL;	// 毎秒INTERVAL回動かす
		timer.enabled = true;
	}


	// 花びらを消す
	function stop()
	{
		if (timer === void)
			return;		// 桜吹雪中でなければすぐ戻る

		// 一気にやめる
		for (var n = sakuras.count-1; n >= 0; n--) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				invalidate sakuras[n][i];
			sakuras[n] = [];
		}
		sakuras.count = 0;
			invalidate timer;
		timer = void;
	}


	// オプションを設定する
	function setOptions(newopts)
	{
		if (newopts !== void) {
			var ary = [];
			var optkeys = [];
			ary.assign(newopts);
			// まず最初に設定する
			for (var i = 0; i < ary.count; i += 2) {
				var e = ary[i];
				opts[e] = +ary[i+1];
				optkeys.add(e);
			}
			// それから値をチェック。
			// こうしないと一つ設定する度に実行されてしまうから。
			if (optkeys.find("forevisible") >= 0 ||
			    optkeys.find("backvisible") >= 0) {
				resetVisibleState();
			}
			else if (optkeys.find("dencity")  >= 0 || 
				 optkeys.find("mingrain") >= 0 ||
				 optkeys.find("maxgrain") >= 0) {
				change_sakura_dencity();
			}
			// 変な値は無視
		}
	}


	// タイマーの周期ごとに呼ばれる
	function onTimer()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--) {
				sakuras[n][i].move(); // move メソッドを呼び出す
				if (sakuras[n][i].status == 4) {
					invalidate sakuras[n][i];
					sakuras[n].erase(i); // 削除待ちを削除
				}
			}
	}


	// すべての花びら 表示・非表示の状態を再設定する
	function resetVisibleState()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--)
				// resetVisibleState メソッドを呼び出す
				sakuras[n][i].resetVisibleState();
	}


	// 栞を保存するとき
	function onStore(f, elm)
	{
		var dic = f.sakuras = %[];
		dic.init = timer !== void;
		dic.opts = %[];
		(Dictionary.assign incontextof dic.opts)(opts);
		dic.pause = (timer !== void && !timer.enabled);
	}


	// 栞を読み出すとき
	function onRestore(f, clear, elm)
	{
		var dic = f.sakuras;
		SakuraPluginInit();
		if (dic === void)
			return;
		(Dictionary.assign incontextof opts)(dic.opts);
		setOptions(opts);
		if(dic === void || !+dic.init)
			stop();		// 花びらはでていない
		else if(dic !== void && +dic.init) {
			start();	// 花びらはでていた
			timer.enabled = false if (dic.pause);
		}
	}


	function onStableStateChanged(stable)
	{
	}


	function onMessageHiddenStateChanged(hidden)
	{
	}


	// レイヤの表←→裏情報のコピー
	// このプラグインではコピーすべき情報は表示・非表示の情報だけ
	function onCopyLayer(toback)
	{
		if (toback) {
			// 表→裏
			opts.backvisible = opts.forevisible;
		} else {
			// 裏→表
			opts.forevisible = opts.backvisible;
		}
		resetVisibleState();
	}


	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--)
				// exchangeForeBack メソッドを呼び出す
				sakuras[n][i].exchangeForeBack();
	}
}

kag.addPlugin(global.sakura_object = new SakuraPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

[endscript]


; マクロ登録
; 初期化マクロ
[macro name="sakura_init"]
[eval exp="sakura_object.SakuraPluginInit()"]
[endmacro]

[macro name="sakura_uninit"]
[eval exp="sakura_object.SakuraPluginUninit()"]
[endmacro]

; 開始マクロ
[macro name="sakura_start"]
[eval exp="sakura_object.start(mp.type, mp)"]
[endmacro]

; 停止マクロ
[macro name="sakura_stop"]
[eval exp="sakura_object.stop()"]
[endmacro]

; オプション設定マクロ
[macro name="sakura_opts"]
[eval exp="sakura_object.setOptions(mp)"]
[endmacro]

; 一時停止
[macro name="sakura_pause"]
[eval exp="sakura_object.timer.enabled = false" cond="sakura_object.timer!==void"]
[endmacro]

; 一時停止解除
[macro name="sakura_resume"]
[eval exp="sakura_object.timer.enabled = true" cond="sakura_object.timer!==void"]
[endmacro]


[return]
