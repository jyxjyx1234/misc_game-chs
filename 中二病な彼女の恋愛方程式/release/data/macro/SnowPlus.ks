[return cond="typeof(global.snow_object) != 'undefined'"]

[iscript]

/*
	雪をふらせるプラグイン SnowPlus.ks
2011/11/28	0.5	[snow_pause]と[snow_resume]を追加
2011/05/30	0.42	finalized中へtimer.enabled=falseとinvalidate timer追加
2011/02/23	0.4	[iscript]中の行頭の * を回避
			アニメーションに対応
			timerinterval を指定できるように変更
			basename を指定できるように変更
2010/12/20	0.3	onRestore() で dic === void を考慮
 */


// 雪粒のクラス
class SnowGrain
{
	var fore;	// 表画面の雪粒オブジェクト
	var back;	// 裏画面の雪粒オブジェクト
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
	var n;		// この雪粒の大きさ(0-7)

	// アニメーション対応の追加部分(雪粒ひとつひとつに持って大丈夫か？)
        var conductor;		// アニメーションのコンダクタ
        var animidx;		// アニメーションのインデックス
        var maxpatternnum;	// 現在のアニメーションセル最大数

	// SnowGrain コンストラクタ
	function SnowGrain(window, n, opts)
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

		var fnam = opts.basename + n;
		fore.loadImages(fnam); // 画像を読み込む
		back.assignImages(fore);
		fore.setSizeToImageSize(); // レイヤサイズを画像サイズと同じに
		back.setSizeToImageSize();

		if (Storages.isExistentStorage(fnam + ".asd") ||
		    Storages.isExistentStorage(opts.basename + ".asd")) {
			// アニメーション定義ファイルが存在した
			conductor     = new AnimationConductor(this);
			animidx       = 0;
			maxpatternnum = 1;		// == 1 ならアニメなし
			fore.width = fore.height;	// １パターンは高さと
			back.width = back.height;	// 幅が等しいと仮定する
			maxpatternnum = fore.imageWidth/fore.width;
			conductor.startLabel  = "";
			conductor.stopping    = false;
			conductor.running     = true;
			conductor.clearCallStack();
//			conductor.interrupted = Anim_interrupted;
			if (Storages.isExistentStorage(fnam + ".asd"))
				conductor.loadScenario(fnam + ".asd");
			else if (Storages.isExistentStorage(opts.basename + ".asd"))
				conductor.loadScenario(opts.basename + ".asd");
			conductor.goToLabel("");
			conductor.startProcess(true);
		}
	}

	// デストラクタ
	function finalize()
	{
		invalidate conductor if (conductor !== void);
		invalidate fore;
		invalidate back;
	}

	// 出現
	function spawn(out_of_window=true, status=2)
	{
		var qn = Math.pow(opts.q, n);
		var win_w = window.primaryLayer.width;
		var win_h = window.primaryLayer.height;

		fore.absolute = back.absolute = opts.priority;
		this.status = status;
		xvelo   = opts.xspeed*qn;
		yvelo   = (opts.yspeed+Math.random()*opts.yrandq)*qn;
		yvelo   = 0.0001 if (yvelo == 0); // yvelo = 0は処理不能なので
		xaccel  = (Math.random()-0.5)*2 * opts.xaccelq*qn;

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


	// 雪粒を動かす
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

		// 雪粒が完全に画面外に出た場合、非表示にする。
		// 次のmove()の時、上で再表示されるかどうか判断される
		if (x <= -fore.width  || window.primaryLayer.width  <= x ||
		    y <= -fore.height || window.primaryLayer.height <= y) {
			if (status == 1 || status == 2) // 表示/初期化中なら
				status = 0;	// 未表示にする
			else if (status == 3)	// 消去前なら
				status = 4;	// 消去可能にする
		}
	}

	
	// 表と裏の管理情報を交換する
	function exchangeForeBack()
	{
		var tmp = fore;
		fore = back;
		back = tmp;
	}


// ------------ ここからタグハンドラ -----------------------------

	// 現在のパターンNo.を指定する
	function pattern(elm)
	{
		if (elm.num !== void)
			maxpatternnum = +elm.num;
		if (elm.index !== void) {
			var str = elm.index.replace(/index/, animidx);
			animidx = Scripts.eval(str);
		}
		// 有効なパターンNo.の範囲に収める
		animidx %= maxpatternnum;
		if (animidx < 0)
			animidx += maxpatternnum;
		fore.imageLeft = -animidx * fore.width;
		back.imageLeft = -animidx * back.width;
		return 0;
	}

	// 停止
	function s(elm)
	{
		elm.context.running = false;
		return -1; // 停止
	}

	// 待ち
	function wait(elm)
	{
		return elm.time;
	}

	// タグハンドラ loadcell() は何もしない
	function loadcell()
	{
		// .asd ファイルに存在した時にエラーにしないためのダミー
		return 0;
	}

	// 文字列をevalして数値に変換
	function evalstr(str, def=0)
	{
		if (str === void || str == '')
			return +def;
		return +Scripts.eval(str);
	}

	// 追加タグハンドラ pos(x, y)
	function pos(elm)
	{
		left    =  evalstr(elm.x,      left);
		top     =  evalstr(elm.y,       top);
		left    += evalstr(elm.ix,        0);
		top     += evalstr(elm.iy,        0);
		opacity =  evalstr(elm.opa, opacity);
		opacity += evalstr(elm.iopa,      0);
		return 0;
	}

	// 追加タグハンドラ size(w, h)
	function size(elm)
	{
		width  = imageWidth  = evalstr(elm.w) if (elm.w !== void);
		height = imageHeight = evalstr(elm.h) if (elm.h !== void);
		return 0;
	}

	// タグハンドラ追加、noloop：loopの反対。
	function noloop(elm)
	{
		// ループを使わないことを宣言する
		// セグメントによってはループしたりしなかったりするため。
		elm.context.looping = false;
		return 0;
	}

	// タグハンドラ追加、@clear、表示領域の透明色でのクリア
	function clear()
	{
		// Layer.faseとか考えてないけどええやろか。
		fillRect(0, 0, width, height, 0);
		lastcopyelm = %[];
		return 0;
	}
}



// 雪を振らすプラグインクラス
class SnowPlugin extends KAGPlugin
{
	var snows;	// 雪粒配列。二次元配列で、snows[大きさ][数]になってる
	var timer;	// タイマ
	var window;	// ウィンドウへの参照
	var opts;	// オプション保存変数

	// コンストラクタ
	function SnowPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
		SnowPluginInit();
	}


	function SnowPluginInit()
	{
		stop();
		snows = [ [], [], [], [], [], [], [], [] ];
		opts = %[
			"priority"    => 20000000-1,	// 表示優先順位
			"mingrain"    => 0,	// 雪粒最小サイズ
			"maxgrain"    => 7,	// 雪粒最大サイズ
			"dencity"     => 30,	// 雪の数(段階毎の)
			"xspeed"      => 0,	// x方向への平均スピード
			"xaccelq"     => 0.05,	// x方向への加速度係数
			"xaccelmax"   => 0.5,	// x方向の加速度最大値
			"xspeedmax"   => 0.7,	// x方向の速度最大値
			"yspeed"      => 6.0,	// y方向への平均スピード
			"yrandq"      => 0.2,	// y方向の加速度ランダム係数
			"q"           => 1.5,	// 雪粒の大きさ一段階の係数
			"forevisible" => true,	// 表画面が表示状態かどうか
			"backvisible" => true,	// 裏画面が表示状態かどうか
			"basename"    => "snow_", // 雪画像のベース名
			"timerinterval" => 50	// 50/1000 = 1/20秒に一回動かす
		];
	}


	// デストラクタ
	function finalize()
	{
		if (timer !== void) {
			timer.enabled = false;
			invalidate timer;
		}
		// このクラスの管理するすべてのオブジェクトを明示的に破棄
		for(var n = snows.count-1; n >= 0; n--) {
			for(var i = snows[n].count-1; i >= 0; i--)
				invalidate snows[n].pop();
			invalidate snows.pop();
		}
		super.finalize(...);
	}


	// dencity 個の雪粒に変更する。
	// 数が少なくなる場合、既に存在する雪粒は、画面外に出たら削除される
	// 多くなる場合は…まぁフツーに。
	function change_snow_dencity(status = 1)
	{
		var num = opts.dencity;

		// 最初に不要な階層の雪粒を削除
		for (var n = 0; n < snows.count && n < opts.mingrain; n++) {
			for (var i = snows[n].count-1; i >= 0; i--)
				snows[n][i].status = 3; // 削除待ち
		}
		for (var n = opts.maxgrain+1; n < snows.count; n++) {
			for (var i = snows[n].count-1; i >= 0; i--)
				snows[n][i].status = 3; // 削除待ち
		}

		// 必要な階層を処理
		for (var n = opts.mingrain; n <= opts.maxgrain; n++) {
			// n = 雪粒の大きさ、newnum = 表示個数(面積に比例)
			var newnum = int(num/Math.pow(opts.q,n*2));
			newnum = 1 if (num != 0 && newnum < 1);
			if (snows[n] === void)
				snows[n] = [];	// 初めての場合、初期化
			// 少なくなる場合
			for (var i = snows[n].count-1; i >= newnum; i--)
				snows[n][i].status = 3;	// 削除待ち
			// 多くなる場合
			for (var i = snows[n].count; i < newnum; i++) {
				snows[n][i]= new SnowGrain(window, n, opts);
				snows[n][i].spawn(false, status);
			}
			// 現在削除待ちのもので、復活するものがあればstatus変更
			for (var i = 0; i < newnum; i++) {
				if (snows[n][i].status == 3)
					snows[n][i].status = 2;
				if (snows[n][i].status == 4)
					snows[n][i].status = 0;
			}
		}
	}


	// opts.dencity 個(x雪粒種類)の雪粒を出現させる
	function start(type = 1, newopts)
	{
		if (timer !== void)
			return;		// 既に降雪中ならすぐ戻る

		setOptions(newopts);
		change_snow_dencity(type ? 2 : 1);
		// タイマーを作成
		timer = new Timer(onTimer, '');
		timer.interval = opts.timerinterval;
		timer.enabled = true;
	}

	// 雪粒を消す
	function stop()
	{
		if (timer === void)
			return;		// 降雪中でなければすぐ戻る

		// 一気にやめる
		for (var n = snows.count-1; n >= 0; n--) {
			for (var i = snows[n].count-1; i >= 0; i--)
				invalidate snows[n][i];
			snows[n] = [];
		}
		snows.count = 0;
		invalidate timer;
		timer = void;
	}


	// オプションを設定する
	function setOptions(newopts)
	{
		if (newopts === void)
			return;
		var ary = [];
		var optkeys = [];
		ary.assign(newopts);
		// まず最初に設定する
		for (var i = 0; i < ary.count; i += 2) {
			var e = ary[i];
			if (e != "basename")
				opts[e] = +ary[i+1];
			else
				opts[e] = ary[i+1];	// basenameは非数値
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
			change_snow_dencity();
		}
		// 変な値は無視
	}


	// タイマーの周期ごとに呼ばれる
	function onTimer()
	{
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--) {
				snows[n][i].move(); // move メソッドを呼び出す
				if (snows[n][i].status == 4) {
					invalidate snows[n][i];
					snows[n].erase(i); // 削除待ちを削除
				}
			}
	}


	// すべての雪粒の 表示・非表示の状態を再設定する
	function resetVisibleState()
	{
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--)
				// resetVisibleState メソッドを呼び出す
				snows[n][i].resetVisibleState();
	}


	// 栞を保存するとき
	function onStore(f, elm)
	{
		var dic = f.snows = %[];
		dic.init = timer !== void;
		dic.opts = %[];
		(Dictionary.assign incontextof dic.opts)(opts);
		dic.pause = (timer !== void && !timer.enabled);
	}


	// 栞を読み出すとき
	function onRestore(f, clear, elm)
	{
		var dic = f.snows;
		SnowPluginInit();
		if (dic === void)
			return;
		(Dictionary.assign incontextof opts)(dic.opts);
		setOptions(opts);
		if(dic === void || !+dic.init)
			stop();		// 雪はでていない
		else if(dic !== void && +dic.init) {
			start();	// 雪はでていた
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
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--)
				// exchangeForeBack メソッドを呼び出す
				snows[n][i].exchangeForeBack();
	}
}

kag.addPlugin(global.snow_object = new SnowPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

[endscript]


; マクロ登録
; 初期化マクロ
[macro name="snow_init"]
[eval exp="snow_object.SnowPluginInit()"]
[endmacro]

; 開始マクロ
[macro name="snow_start"]
[eval exp="snow_object.start(mp.type, mp)"]
[endmacro]

; 停止マクロ
[macro name="snow_stop"]
[eval exp="snow_object.stop()"]
[endmacro]

; オプション設定マクロ
[macro name="snow_opts"]
[eval exp="snow_object.setOptions(mp)"]
[endmacro]

; 一時停止
[macro name="snow_pause"]
[eval exp="snow_object.timer.enabled = false" cond="snow_object.timer!==void"]
[endmacro]

; 一時停止解除
[macro name="snow_resume"]
[eval exp="snow_object.timer.enabled = true" cond="snow_object.timer!==void"]
[endmacro]

[return]
