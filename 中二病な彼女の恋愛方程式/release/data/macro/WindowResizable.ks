; 二重読み込みを防止
@return cond="typeof(global.windowresizable_obj) != 'undefined'"

; Window リサイズプラグイン
; ゲームウィンドウ枠をマウスでドラッグしてウィンドウサイズを任意サイズに
; 変えられるようになる。
;
;
; メモ:	・ゲーム画面がスクリーンより大きかった場合に、一度フルスクリーン状態に
;	　なるのは、KAGWindow()クラスのコンストラクタで実行されているので、
;	　プラグイン形式だと防げない。対応するなら、MainWindow.tjsのKAGWindowの
;	　コンストラクタ書き換えて、フルスクリーンにするかどうかの部分を
;	　スキップさせるしかない…と思う。
;	・maximize時と復帰時に画面が真っ白になることがある ... VMwareだけか？
;	・コントローラから(X)で終了したときにエラーになるのは、onResize()中の
;	　setZoom(innerWidth, scWidth);を消すと回避できるが、え、どうして？
;	　理由わからないので未修正。普通に終了する時はエラーにならない。
;
; 2014/05/15	0.9	・吉里吉里Zに対応(?) ※ただし専用のwindowEx.dllが必要
;			・win.*Menuを操作する時にtypeof()でチェックするよう変更
;			・Plugins.getList()がパス付きを返すのに対応
;			・new MenuItem()で引数をthis→winに変更
; 2013/11/28	0.8	・kagより先にinvalidateさせるためにKAGPlugin化
;			・finalize()にinvalidate item/lineを追記
; 2013/11/20	0.72	・不要なdm()を削除
; 2012/08/05	0.71	・finalize()でwin.*がnon-validだった時に処理をスキップ
; 2012/08/03	0.7	・縮小・拡大でウインドウ上段のメニュー段数が変わる時
;			　にも正常にリサイズできるように修正
;			・セカンダリモニタ上でのウィンドウ最大化時、プライマリ
;			　側に移動していたのを修正
;			・起動時にウィンドウメニューかウィンドウ中央が画面外
;			　だったら (32,32) に移動する
;			・不要なdelete win.onNormalSizeMenuItemClick_org を削除
;			・onNormalSizeMenuItemClickをreplacefuncsに追加
;			・finalize()でKAGWindowの関数を戻せていなかったのを修正
; 2012/07/09	0.6	・windowEx.dllをベースに、全体的に再作成

@iscript

{
	var ary = Plugins.getList();
	var i;
	for (i = ary.count-1; i >= 0; i--) {
		// Plugin.getList()がパス付きを返す場合に対応して少し工夫
		var libpathary = ary[i].toLowerCase().split('/', , true);
		if (libpathary[libpathary.length-1] == "windowex.dll")
			break;
	}
	if (i < 0 || typeof(Window.maximize) == 'undefined' ||
		      typeof(Window.resetWindowIcon) == 'undefined')
		System.inform('WindowResizable.ks を実行するために必要な windowEx.dll プラグインが、Override.tjs などで読み込まれていません');
	// でも実行を停止したりしない。アツい。
}

class WindowResizable extends KAGPlugin {
	var win;
	var line, item;	// ラインと「標準サイズに戻す」メニューアイテム
	// 本プラグインが置き換えるwin.*関数リスト
	var replacefuncs = [
		"onResizing", "onMoveSizeBegin", "onMoveSizeEnd",
		"onResize", "onWindowedMenuItemClick",
		"onFullScreenMenuItemClick",
		"setInnerSize", "setPos", "onMaximize",
		"onNormalSizeMenuItemClick"
	];
	var savefuncs = [];

	// コンストラクタ
	function WindowResizable(window)
	{
		win = window;

		// このプラグインに関わる変数をwin(=kag)に登録
		win.windowResizableInfo = %[
			minwidth  : 128,
			orgfuncs  : %[],
			mrtemp    : void
		];
		var info = win.windowResizableInfo;
		// オリジナル関数を保存(存在していなければvoidで保存
		for (var i = replacefuncs.count-1; i >= 0; i--) {
			var func = replacefuncs[i];
			if (typeof(win[func]) != 'undefined')
				info.orgfuncs[func] = win[func];
			else
				info.orgfuncs[func] = void;
			win[func] = this[func] incontextof win;
		}
		// メニューは.command分だけ特別扱い
		win.fullScreenMenuItem.command = win.onFullScreenMenuItemClick;
		win.windowedMenuItem.command   = win.onWindowedMenuItemClick;

		win.registerExEvent();	// 登録した関数を有効にする

		var iw = win.innerWidth, ih = win.innerHeight;
		if (!win.fullScreened)
			win.borderStyle = bsSizeable;
		// borderStyle = bsSizeable すると少し(数dot)ウィンドウが
		// 小さくなるので、あとで等倍に戻す必要あり

		// 「標準サイズに戻す」メニューを追加
		// 吉里吉里Z にはメニューが無いので、無い場合はスキップ
		if (typeof(win.displayMenu) != 'undefined') {
			win.displayMenu.add(line = new MenuItem(win, "-"));
			item = new KAGMenuItem( win, "標準サイズに戻す(&N)", 0,
					win.onNormalSizeMenuItemClick, false);
			win.displayMenu.add(item);
		}

		// 以前の設定値が保存されていなければ設定
		if (sf.WindowResizable === void)
			sf.WindowResizable = %[];
		var sfwr = sf.WindowResizable;
		if (sfwr.top === void)
			sfwr.top = win.top;
		if (sfwr.left === void)
			sfwr.left = win.left;
		if (sfwr.innerWidth === void)
			sfwr.innerWidth = win.scWidth;
		if (sfwr.fullScreen === void)
			sfwr.fullScreen = win.fullScreen;
		if (sfwr.maximized === void)
			sfwr.maximized = win.maximized;
		var sfwr_w = sfwr.innerWidth + win.width-win.innerWidth;
		var sfwr_h = Math.round(sfwr.innerWidth*win.scHeight/win.scWidth) + win.height-win.innerHeight;
		if (!isOnMonitor(sfwr.left, sfwr.top, sfwr_w, sfwr_h)) {
			// 画面外に配置されそうなら、(32,32)に配置する
			sfwr.left = sfwr.top = 32;
		}

		// 今の画面モードが異なるなら、以前のものに再設定する
		if (sfwr.fullScreen != win.fullScreen) {
			if (sfwr.fullScreen)
				win.onFullScreenMenuItemClick(win);
			else
				win.onWindowedMenuItemClick(win);
		}

		if (!win.fullScreened) {
			// フルスクリーンでなければ元の位置に戻す
			win.setPos(sfwr.left, sfwr.top);
		}
		// maximizedを再設定(fullScreen設定の後にしないといけない)
		if (!win.fullScreened) {
			win.setInnerSize(sfwr.innerWidth,0,true);
			if (sfwr.maximized)
				win.maximize();
		}
	}

	// デストラクタ
	function finalize()
	{
		if (!isvalid(win))
			return;
		if (typeof(win.displayMenu) != 'undefined' &&
		    isvalid(win.displayMenu)) {
			if (item !== void) {
				win.displayMenu.remove(item);
				invalidate item;
			}
			if (line !== void) {
				win.displayMenu.remove(line);
				invalidate line;
			}
		}

		// オリジナル関数に戻す
		var ary = [];
		ary.assign(win.windowResizableInfo.orgfuncs);
		for (var i = ary.count-2; i >= 0; i-=2) {
			if (ary[i+1] === void)
				delete win[ary[i]];
			else
				win[ary[i]] = ary[i+1];
		}

		// メニューは.command分だけ特別扱い
		// validチェックしないと「オブジェクトは既に無効化されて
		// います」になることがあった...理由不明だけどむりやり回避
		if (typeof(win.fullScreenMenuItem) != 'undefined' &&
		    isvalid(win.fullScreenMenuItem))
			win.fullScreenMenuItem.command = win.onFullScreenMenuItemClick;
		if (typeof(win.windowedMenuItem) != 'undefined' &&
		    isvalid(win.windowedMenuItem))
			win.windowedMenuItem.command   = win.onWindowedMenuItemClick;
	}

	// 指定座標が画面上にあるかどうか
	function isOnMonitor(x, y, w, h)
	{
		// 完全に画面外なら false
// 一番最初だけの調査なので、実ウィンドウは調べない
//		if (System.getMonitorInfo(false, win) === void)
//			return false;
		// ウインドウ上枠か、ウィンドウ中央が画面外ならfalse
		var g = System.getMonitorInfo;
//dm('AAA(x,y,w,h) = ' + x + ',' + y + ',' + w + ',' + h);
		// g(f,x,y) だけだと、バグでうまく動かないので1,1を追加
		return (g(false, x+w/2, y+h/2, 1,1) !== void &&
			g(false, x, y, w, 16) !== void);
	}

	// リサイズ中に呼ばれる
	function onResizing(rect)
	{
//dm('onResizing');
		// オリジナルがあれば呼ぶ
		if (windowResizableInfo.orgfuncs.onResizing !== void)
			windowResizableInfo.orgfuncs.onResizing(...);

		if (maximized)
			return false;	// 最大化されている時は何もしない
		var cur = System.getCursorPos();
		if (cur === void)
			return false;	// カーソルが取得できなければ終了
		// curposは、マウスカーソルがウィンドウ中心からどの方向にあるか
		// を表す。0:左、1:上、2:右、3:下
		var curpos = 4;
		var curx = (cur.x-left)-width/2, cury = (cur.y-top)-height/2;
		if (curx < 0)	// 中心より左なら
			if (cury < 0)	// 中心より上なら
				curpos = (cury/curx > height/width) ? 1 : 0;
			else		// 中心より下なら
				curpos = (cury/-curx > height/width) ? 3 : 0;
		else		// 中心より右なら
			if (cury < 0)	// 中心より上なら
				curpos = (-cury/curx > height/width) ? 1 : 2;
			else		// 中心より下なら
				curpos = (cury/curx > height/width) ? 3 : 2;

		onMoveSizeBegin();	// mrtempを設定
		var mrt = windowResizableInfo.mrtemp;
		var iw = innerWidth, dw = width-iw, dh = height-innerHeight;
		var miniw = windowResizableInfo.minwidth;
		var minih = Math.round(miniw*scHeight/scWidth);

		// 掴んだ位置によって挙動を変更する。うまく纏められなかった…
		if (rect.type == 1) {	// 左端を掴んでいた
			rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			rect.x = mrt.x+mrt.w-rect.w;	// 右端を固定
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 2) {	// 右端を掴んでいた
			rect.x = mrt.x;	// 左端を固定
			rect.w = Math.max(rect.w, miniw+dw);
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 3) {	// 上端を掴んでいた
			rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
			rect.y = mrt.y+mrt.h-rect.h;	// 下端を固定
			rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
			rect.x = mrt.x+mrt.w/2-rect.w/2;
		} else
		if (rect.type == 6) {	// 下端を掴んでいた
			rect.y = mrt.y;	// 上端を固定
			rect.h = Math.max(rect.h, minih+dh);
			rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
			rect.x = mrt.x+mrt.w/2-rect.w/2;
		} else
		if (rect.type == 4) {	// 左上端を掴んでいる = 右下を固定
			if (curpos == 0 || curpos == 3) { // 左側を掴んでいる
				rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			} else { // (curpos == 1)// 上側を掴んでいる
				rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.x = mrt.x+mrt.w-rect.w;
			rect.y = mrt.y+mrt.h-rect.h;
		} else
		if (rect.type == 5) {	// 右上端を掴んでいる = 左下を固定
			rect.x = mrt.x;
			if (curpos == 2 || curpos == 3) { // 右側を掴んでいる
				rect.w = Math.max(rect.w, miniw+dw);
			} else { // (curpos == 1)// 上側を掴んでいる
				rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.y = mrt.y+mrt.h-rect.h;
		} else
		if (rect.type == 8) {	// 右下端を掴んでいる = 左上を固定
			rect.x = mrt.x;
			rect.y = mrt.y;
			if (curpos == 2 || curpos == 1) { // 右側を掴んでいる
				rect.w = Math.max(rect.w, miniw+dw);
			} else { // (curpos == 3)// 下側を掴んでいる
				rect.h = Math.max(cur.y-mrt.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 7) { // 左下端を掴んでいる = 右上を固定
			rect.y = mrt.y;
			if (curpos == 0 || curpos == 1) { // 左側を掴んでいる
				rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			} else { // (curpos == 3)// 下側を掴んでいる
				rect.h = Math.max(cur.y-mrt.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.x = mrt.x+mrt.w-rect.w;
		}

		return true;
	}

	// 移動とリサイズの開始時に呼ばれる
	function onMoveSizeBegin() {
//dm('onMoveSizeBegin');
		// オリジナルがあれば呼ぶ
		if (windowResizableInfo.orgfuncs.onMoveSizeBegin !== void)
			windowResizableInfo.orgfuncs.onMoveSizeBegin(...);

		if (windowResizableInfo.mrtemp !== void)
			return;
		// 現在のウインドウ情報を保存する
		windowResizableInfo.mrtemp = %[
			x  : left,
			y  : top,
			w  : width,
			h  : height,
			iw : innerWidth,
			ih : innerHeight,
		];
	}

	// 移動とリサイズの終了時に呼ばれる
	function onMoveSizeEnd() {
//dm('onMoveSizeEnd');
		// fullScreen時はonMoveSizeBegin/onMoveSizeEnd()が呼ばれない
		// オリジナルがあれば呼ぶ
		if (windowResizableInfo.orgfuncs.onMoveSizeEnd !== void)
			windowResizableInfo.orgfuncs.onMoveSizeEnd(...);

		windowResizableInfo.mrtemp = void;

		// 今の座標を保存しておく
		sf.WindowResizable.left = left;
		sf.WindowResizable.top  = top;
	}

	// 最大化された時に呼ばれる
	function onMaximize()
	{
//dm('onMaximize()');
		// 最大化された時は、画面に入りきる最適サイズにする

		// maximizedフラグ付きで setInnerSize()するとまた
		// onMaximize()が呼ばれるので重複を弾く
		// +4 ははみ出すドット数。Windowsがそうやるからさー
		var moninfo = System.getMonitorInfo(true, this);
		if (moninfo.work.x != left+4 || moninfo.work.y != top+4)
			return;

		// オリジナルがあれば呼ぶ
		if (windowResizableInfo.orgfuncs.onMaximize !== void)
			windowResizableInfo.orgfuncs.onMaximize(...);
		var newiw = innerWidth, newih = innerHeight;
		// はみ出すWindowsの仕様を考慮する。計算で求め、数値は書かない
		newiw -= (moninfo.work.x - left)*2;
		newih -= (moninfo.work.y - top )*2;

		if (newiw/newih > scWidth/scHeight) {
			// 画面に対し横に空白ができるとき(16:9画面に4:3をはめる時など)
			newiw = Math.round(newih*scWidth/scHeight);
		} else if (newiw/newih < scWidth/scHeight) {
			// 画面に対し縦に空白ができるとき
			newih = Math.round(newiw*scHeight/scWidth);
		}
		// センタリングなどはSetInnerSize()中で実施
		setInnerSize(newiw, newih, true);
	}

	// リサイズした時に呼ばれる
	function onResize()
	{
//dm('onResize');
		// オリジナルがあれば呼ぶ
		if (windowResizableInfo.orgfuncs.onResize !== void)
			windowResizableInfo.orgfuncs.onResize(...);

		// ↓上段メニューの段数が変化した時にも正しくリサイズするため
		setInnerSize(innerWidth, 0);
		setZoom(innerWidth, scWidth);	// ドラッグ中にやると重い…
		if (!fullScreened && !maximized)// フルスクリーンでなければ保存
			sf.WindowResizable.innerWidth = innerWidth;
		if (!fullScreened)
			sf.WindowResizable.maximized = maximized;
	}

	// ゲーム画面をリサイズする
	function setInnerSize(newiw, newih, move=false)
	{
//dm('setInnerSize(newiw='+newiw+', newih='+newih+', move='+move+')');
		if (fullScreened)
			return;
		// 片方指定されてなかったら計算で求める
		if (newiw == 0)
			newiw = Math.round(newih*scWidth/scHeight);
		if (newih == 0)
			newih = Math.round(newiw*scHeight/scWidth);
		if (newiw == innerWidth && newih == innerHeight)
			return;

		// 画面より大きいサイズなら補正する
		var moninfo = System.getMonitorInfo(true, this);
		var newx = left, newy = top;
		// dhはメニューが二段以上だと一段より大きくなるので注意
		var dw = width-innerWidth, dh = height-innerHeight;
		// 縦横どちらかのサイズが大きかった場合
		// これだとメニュー二段以上＋ゲーム画面≒スクリーンの時に間違う
		// 場合があるが…そういうことはまずないからまぁいいか…
		if (moninfo.work.w <= newiw+dw) {
			// 横の方が長い
			newiw = moninfo.work.w - dw;
			newih = Math.round(newiw*scHeight/scWidth);
			newx = moninfo.work.x;
			newy = moninfo.work.y + (moninfo.work.h-newih-dh)/2;
		}
		if (moninfo.work.h <= newih+dh) {
			// 縦の方が長い
			newih = moninfo.work.h - dh;
			newiw = Math.round(newih*scWidth/scHeight);
			newx = moninfo.work.x + (moninfo.work.w-newiw-dw)/2;
			newy = moninfo.work.y;
		}

		// 最小サイズより小さいなら補正する
		if (newiw < windowResizableInfo.minwidth) {
			newiw = windowResizableInfo.minwidth;
			newih = Math.round(newiw*scHeight/scWidth);
		}

		// 表示画面より大きいなら、表示可能位置まで移動する
		if (move && (newx != left || newy != top))
			setPos(newx, newy);

		// オリジナルを呼ぶ
		windowResizableInfo.orgfuncs.setInnerSize(newiw, newih);
	}

	// 座標を設定する ... setPos()を置き換える
	function setPos(x, y)
	{
//dm('setPos('+x+', '+y+')');
		var orgx = left, orgy = top;	// 今の位置を取得

		// オリジナルを呼ぶ
		windowResizableInfo.orgfuncs.setPos(x, y);
		// 画面外になってなければおわり
		if (System.getMonitorInfo(false, this) !== void)
			return;

		// 元の位置に戻してみる
		windowResizableInfo.orgfuncs.setPos(orgx, orgy);
		// 画面外になってなければおわり
		if (System.getMonitorInfo(false, this) !== void)
			return;

		// 最終手段で(0,0)に移動
		windowResizableInfo.orgfuncs.setPos(0, 0);
	}

	// フルスクリーンからウインドウモードに変更した時
	function onWindowedMenuItemClick(sender) // incontextof win
	{
//dm('onWindowMenuItemClick()');
		if (!fullScreened) {
			// もしもウィンドウモードが二度選択されたら、サイズを
			// 1倍に戻す
			setInnerSize(scWidth, 0, true);
			return;
		}
		var iw = sf.WindowResizable.innerWidth;

		// オリジナルを呼ぶ
		windowResizableInfo.orgfuncs.onWindowedMenuItemClick(...);

		if (!fullScreened) {
			resetWindowIcon(); // Vistaでアイコンが戻らない対策
			borderStyle = bsSizeable; // これ入れると遅いので注意
			setInnerSize(iw, 0, true);
			setPos(sf.WindowResizable.left,sf.WindowResizable.top);
		}
		sf.WindowResizable.fullScreen = fullScreen;
	}

	// ウィンドウモードからフルスクリーンに変更した時
	function onFullScreenMenuItemClick(sender) // incontextof win
	{
//dm('onFullScreenMenuItemClick()');
		if (fullScreened)
			return;
		var iw = sf.WindowResizable.innerWidth;
		
		// 以下がないと、ゲーム画面が実画面より小さいときに
		// fullscreen->window->fullscreenで表示範囲がおかしくなる。
		// なぜかはまったく分からない…。
		windowResizableInfo.orgfuncs.setInnerSize(scWidth, scHeight);

		// オリジナルを呼ぶ
		windowResizableInfo.orgfuncs.onFullScreenMenuItemClick(...);
		
		if (!fullScreened) {
			borderStyle = bsSizeable; // これ入れると遅いので注意
			setInnerSize(iw, 0);		// 失敗なら再設定
		}
		sf.WindowResizable.innerWidth = iw;	// 保存しとく
		sf.WindowResizable.fullScreen = fullScreen;
	}


	// 標準サイズに戻す
	function onNormalSizeMenuItemClick(sender) // incontextof win
	{

//dm('onNormalSizeMenuItemClick()');
		if (fullScreened)
			onWindowedMenuItemClick(...);
		if (maximized)
			showRestore();

		setInnerSize(scWidth, 0, true);
		sf.WindowResizable.fullScreen = fullScreen;
	}
}

kag.addPlugin(global.windowresizable_obj = new WindowResizable(kag));

@endscript
@return
