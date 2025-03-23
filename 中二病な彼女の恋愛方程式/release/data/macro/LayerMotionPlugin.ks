; 既に定義済みならすぐ戻る
[return cond="typeof(global.layermotions_obj) != 'undefined'"]

; 2012/08/05 1.36	lmdary/lmary を finalize()でinvalidateするように変更
; 2012/04/24 1.35	new で作ったインスタンスのうち、明示的にinvalidateして
;			いなかったものをinvalidateするように修正
; 2011/08/24 1.3	[motion_start]で存在しないname=を指定すると別の
;			モーションが動作していたのを修正
; 2011/08/12 1.25	[motion_jump]および[motion_start_onetime]を追加
;			[motion_start]および[motion_quake]で、def:wait=falseに
; 2011/06/04 1.21	[motion_quake]でpage=%pageが指定されてなかった…
; 2011/06/03 1.20	[motion_wait]で無限ループに陥る可能性があったのを修正
; 2011/05/06 1.10	[iscript]中の行頭の * を回避
; 2011/03/24 1.02	サンプルモーション「てくてく」調整、「てくてく右」
;			および「てくてく左」追加。
; 2010/06/29 1.01	LayerMotions.finalize() に invalidate timer を追加。
;			finalize()中にtimer割り込みが入る(?)とエラーになるのを
;			修正

; 前提クラスInterpolation.ksの読み込み
[call storage="Interpolation.ks"]

[iscript]

// レイヤモーションデータクラス。補間クラスをX,Y持つだけ。
// 実際のレイヤモーションと分離しているのは、上書きして使うため。
class LayerMotionDataElement
{
	var name;		// モーションid
	var intp_x, intp_y;	// InterpolationX(補間データX), InterpolationY

	// コンストラクタ
	function LayerMotionDataElement(name="", initx=0, inity=0, locatex=void, locatey=void, loopx=1, loopy=1)
	{
		var tick = System.getTickCount();
		this.name = name;
		intp_x = new Interpolation(initx, tick, locatex, loopx);
		intp_y = new Interpolation(inity, tick, locatey, loopy);
	}

	// デストラクタ
	function finalize()
	{
		invalidate intp_x;
		invalidate intp_y;
	}

	// X初期値を指定する
	function setInitValX(initx)
	{
		intp_x.setInitVal(initx);
	}
	// Y初期値を指定する
	function setInitValY(inity)
	{
		intp_y.setInitVal(inity);
	}

	// Xループを設定する
	function setLoopX(loopx)
	{
		intp_x.setLoop(loopx);
	}
	// Yループを設定する
	function setLoopY(loopy)
	{
		intp_y.setLoop(loopy);
	}

	// 開始時間を設定する
	function setInitTick(tick=System.getTickCount())
	{
		intp_x.setInitTick(tick);
		intp_y.setInitTick(tick);
	}

	// 現在のX座標を得る
	function getCurrentValueX(tick=System.getTickCount())
	{
		return intp_x.getCurrentValue(tick);
	}

	// 現在のY座標を得る
	function getCurrentValueY(tick=System.getTickCount())
	{
		return intp_y.getCurrentValue(tick);
	}

	// 最終のX座標を得る
	function getLastValueX()
	{
		return intp_x.getLastValue();
	}

	// 最終のY座標を得る
	function getLastValueY()
	{
		return intp_y.getLastValue();
	}

	// 最終tickを得る
	function getLastTick()
	{
		var retx = intp_x.getLastTick();
		var rety = intp_y.getLastTick();
		return(retx > rety ? retx : rety);
	}

	// レイヤが動作必要か調べる
	function isValidTick(tick)
	{
		return intp_x.isValidTick(tick) || intp_y.isValidTick(tick);
	}

	// コピーする
	function assign(src)
	{
		name = src.name;
		intp_x.assign(src.intp_x);
		intp_y.assign(src.intp_y);
	}

	// セーブ時に上から呼ばれる
	function store(tick = System.getTickCount())
	{
		var dic = %[];
		dic.name	= name;
		dic.intp_x	= intp_x.store(tick);
		dic.intp_y	= intp_y.store(tick);
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		name = dic.name;
		intp_x.restore(dic.intp_x, tick);
		intp_y.restore(dic.intp_y, tick);
	}
}


class LayerMotionData extends LayerMotionDataElement
{
	var finished;		// 終了フラグ
//	var finish_at_loopend;	// ループ終了時まで待って終了するか

	// コンストラクタ
	function LayerMotionData(name="", ix=0, iy=0, locx=void, locy=void, lpx=1, lpy=1)
	{
		super.LayerMotionDataElement(...);
		finished = false;
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// コピーする
	function assign(src)
	{
		super.assign(src);
		finished = src.finished;
	}

	// セーブ時に上から呼ばれる
	function store(tick = System.getTickCount())
	{
		var dic = super.store(tick);
		dic.finished = finished;
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		super.restore(dic, tick);
		finished = dic.finished;
	}
}


// レイヤモーション
class LayerMotion // extends LayerMotionData
{
	var layer;		// モーションを適用するレイヤ(0～ただし文字列)
	var page;		// モーションを適用するページ(fore/back)
	var finished;		// 全モーションの終了フラグ
	var motions;		// モーション配列。複数モーションの複合が可能
	var initx, inity;	// 初期座標

	function LayerMotion(layer="0", page="fore", ix=void, iy=void)
	{
		this.layer  = layer;
		this.page   = page;
		this.finished = false;
		this.motions = [];

		initx = (ix !== void) ? ix : kag[page].layers[layer].left;
		inity = (iy !== void) ? iy : kag[page].layers[layer].top;
	}

	function setInitPos(x = void, y = void)
	{
		if(x !== void)
			initx = x;
		if(y !== void)
			inity = y;
	}

	// 該当レイヤモーションか？layer=voidやpage=voidの場合は何でもマッチ
	function isTheLayerMotion(layer, page)
	{
		return (layer === void || this.layer == layer) &&
		       (page === void || this.page == page || page == 'both');
	}

	// モーションを探す(name===voidで全てにマッチ)
	function findMotion(name, finishedonly = false)
	{
		for (var i = motions.count-1; i >= 0; i--)
			if (name === void || motions[i].name == name)
				if(!finishedonly ||
				   (finishedonly && motions[i].finished))
					return i;
		return -1;
	}

	// モーションを探す(name===voidで全てにマッチ)
	function getMotionAry(name, finishedonly = false)
	{
		var ary = [];
		for (var i = motions.count-1; i >= 0; i--)
			if (name === void || motions[i].name == name)
				if(!finishedonly ||
				   (finishedonly && motions[i].finished))
					ary.add(motions[i]);
		return (ary.count > 0) ? ary : void;
	}

	// このレイヤモーションはValidか？
	function isValidTick(tick = System.getTickCount())
	{
		for (var i = motions.count-1; i >= 0; i--)
			if (!motions[i].finished &&
			     motions[i].isValidTick(tick))
				return true;
		return false;
	}

	// モーション追加
	function addLayerMotion(lmd, ix=void, iy=void, lpx=void, lpy=void, tick=System.getTickCount())
	{
		var newmtn = new LayerMotionData();
		(LayerMotionDataElement.assign incontextof newmtn)(lmd);
		if (ix !== void)
			newmtn.setInitValX(ix);
		if (iy !== void)
			newmtn.setInitValY(iy);
		if (lpx !== void)
			newmtn.setLoopX(lpx);
		if (lpy !== void)
			newmtn.setLoopY(lpy);
		newmtn.setInitTick(tick);
		motions.add(newmtn);
		finished = false;
	}

	// モーション削除
	function delLayerMotion(name, finishedonly=false, lastpos=true)
	{
		var erased = false;
		var i;
		while ((i = findMotion(name, finishedonly)) >= 0) {
			if(lastpos) {
				// 最終位置に移動
				initx += motions[i].getLastValueX();
				inity += motions[i].getLastValueY();
			}
			invalidate motions[i];
			motions.erase(i);
			erased = true;
		}
		// 最後に座標合わせて終わる
		if(lastpos)
			currentMove();
		return erased;
	}

	// 終わったモーションを一つ削除(親インスタンスから呼ばれる)
	function delFinishedLayerMotion(lastpos = true)
	{
		if (delLayerMotion(, true, lastpos))
			// あるモーションの終了をKAGへ発砲
			kag.conductor.trigger('endALayerMotion'); 
	}

	// mnameに対応するモーションにfinishedフラグ設定(mname===voidで全て)
	function setFinishFlag(mname)
	{
		var finishflg = true;
		for (var i = motions.count-1; i >= 0; i--)
			if (mname === void || motions[i].name == mname)
				motions[i].finished = true;
			else
				finishflg = false;
		finished |= finishflg;
	}

	// レイヤを動かす(親の1/60 timerCallbackルーチンから呼び出される)
	function currentMove(tick = System.getTickCount())
	{
		var x = initx, y = inity;

		if(tick == Infinity)	// 無限ループだったら0にしちゃう
			tick = 0;
		for (var i = motions.count-1; i >= 0; i--) {
			var mot = motions[i];
			x += mot.getCurrentValueX(tick);
			y += mot.getCurrentValueY(tick);
			if (!mot.finished && !mot.isValidTick(tick)) {
				// 終ったモーションに終了マークをつける
				mot.finished = true;
				// 削除は親インスタンスから。ここではしない
			}
		}
		kag[page].layers[layer].setPos(x, y);
	}

	// 最終tickを得る
	function getLastTick()
	{
		var lasttick = 0;
		for (var i = motions.count-1; i >= 0; i--) {
			var tmptick = motions[i].getLastTick();
			if(lasttick < tmptick)
				lasttick = tmptick;
		}
		return lasttick;
	}

	// コピーする
	function assign(src)
	{
		layer		= src.layer;
		page		= src.page;
		finished	= src.finished;
		for (var i = motions.count-1; i >= 0; i--)
			invalidate motions[i];
		motions		= [];
		for (var i = src.motions.count-1; i >= 0; i--) {
			motions[i] = new LayerMotionData();
			motions[i].assign(src.motions[i]);
		}
		initx		= src.initx;
		inity		= src.inity;
	}

	// セーブ時に上から呼ばれる
	function store(tick = System.getTickCount())
	{
		var dic = %[];
		dic.layer	= layer;
		dic.page	= page;
		dic.finished	= finished;
		dic.motions	= [];
		for (var i = motions.count-1; i >= 0; i--)
			dic.motions[i] = motions[i].store(tick);
		dic.initx	= initx;
		dic.inity	= inity;
		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		layer		= dic.layer;
		page		= dic.page;
		finished	= dic.finished;
		for (var i = motions.count-1; i >= 0; i--)
			invalidate motions[i];
		motions	= [];
		for (var i = dic.motions.count-1; i >= 0; i--) {
			motions[i] = new LayerMotionData();
			motions[i].restore(dic.motions[i], tick);
		}
		initx		= dic.initx;
		inity		= dic.inity;
	}
}


class LayerMotions extends KAGPlugin
{
	var lmdary = [];	// レイヤモーションデータ(静的)配列
	var lmary  = [];	// レイヤモーション(実際使用するモーション)配列
	var timer;		// 1/60タイマ
	var trig;		// モーション削除とかのトリガ

	// コンストラクタ
	function LayerMotions()
	{
		super.KAGPlugin(...);
		lmdary 		= [];
		lmary 		= [];
		timer 		= new Timer(timerCallback, '');
		timer.interval	= 16;	// (16msec = 1/60秒で一回)
		trig = new AsyncTrigger(checkLM, '');
	}

	// デストラクタ
	function finalize()
	{
		invalidate timer;
		invalidate trig;	// 先に殺しておくべし
		for (var i = lmary.count-1; i >= 0; i--)
			invalidate lmary.pop();
		for (var i = lmdary.count-1; i >= 0; i--)
			invalidate lmdary.pop();
		super.finalize();
	}
		
	// タイマコールバック
	function timerCallback()
	{
		for (var i = lmary.count-1; i >= 0; i--)
			lmary[i].currentMove();

		trig.trigger();	// checkLMを1/60ごとに呼ぶ。重いかなぁ。
	}

	// 名前からLayerMotionDataを探し、インデックスを返す
	function findLayerMotionData(name)
	{
		for (var i = lmdary.count-1; i >= 0; i--)
			if (lmdary[i].name == name)
				return i;
		return -1;
	}

	// レイヤからレイヤモーションを探し、インデックスを返す
	// 引数がvoidなら、存在したら最初に見つけたものを返す。
	// startidx が指定されたら、それ以上のものを探す
	function findLayerMotions(layer, page, startidx=0)
	{
		for (var i = startidx; i < lmary.count; i++)
			if (lmary[i].isTheLayerMotion(layer, page))
				return i;
		return -1;
	}

	// 特定のレイヤモーションを探して、マッチしたリストを返す
	function getLayerMotionAry(layer, page, name)
	{
		var ary, ret = [];
		for (var i = 0; i < lmary.count; i++)
			if (lmary[i].isTheLayerMotion(layer, page))
				if ((ary=lmary[i].getMotionAry(name)) !== void)
					for (var j = 0; j < ary.count; j++)
						ret.add(ary[j]);
		return (ret.count > 0) ? ret : void;
	}

	// 特定のレイヤモーションを探して返す。引数がvoidなら、存在したら
	// 最初に見つけたものを返す
	function findLayerMotion(layer, page, name, finishedonly=false)
	{
		var idx, jdx;

		if ((idx = findLayerMotions(layer, page)) >= 0 &&
		    (jdx = lmary[idx].findMotion(name, finishedonly)) >= 0)
			return lmary[idx].motions[jdx];
		return void;
	}

/*	// 指定レイヤモーションを削除する
ちょっと実装に問題があるため、使わないこと。
findLayerMotions()でidx+1を拾うけど、delLayerMotion()でlmary[idx]が
消された時に取りこぼすことがある。ので、それが解決するまでは。
	function delLayerMotion(layer, page, name, lastpos = true)
	{
		var idx = -1;
		while (1) {
			if ((idx = findLayerMotions(layer, page, idx+1)) < 0)
				break;
			if (!lmary[idx].delLayerMotion(name, false, lastpos))
				break;
		}
	}
 [iscript]中では頭に*を書かないこと！*/

	// LayerMotionDataを追加
	//[motion_define] から呼ばれる
	function addLMD(name, lx=void, iy=void, locatex="", locatey="", lpx=1, lpy=1)
	{
		delLMD(name);		// 重複するのは消す
		lmdary.add(new LayerMotionData(...));
	}

	// LayerMotionDataを削除
	// [motion_undefine name=]
	function delLMD(name)
	{
		var idx = findLayerMotionData(name);
		if (idx >= 0) {
			invalidate lmdary[idx];
			lmdary.erase(idx);
		}
	}

	// レイヤモーション追加。元データをコピーしてix,iy,lpを書換え
	// [motion_start name= layer=0 page=fore left= top= lpx=1,lpy=1]
	function addLM(layer="0", page="fore", x=void, y=void, name, ix=void, iy=void, lpx=void, lpy=void, tick = System.getTickCount())
	{
		if (page == 'both') {
			addLM(layer, 'fore', x,y, name, ix,iy, lpx,lpy, tick);
			addLM(layer, 'back', x,y, name, ix,iy, lpx,lpy, tick);
			return;
		}

		var idx = findLayerMotions(layer, page);
		if (idx < 0) {
			lmary.add(new LayerMotion(layer, page, x, y));
			idx = lmary.count-1;
		}
		var lmdidx = findLayerMotionData(name);
		if (lmdidx < 0)
			return;	// 存在しなければエラー終了
		lmary[idx].addLayerMotion(lmdary[lmdidx],ix,iy,lpx,lpy,tick);
		timer.enabled = true;
	}

	// 1/60タイマごとに呼ばれるが、タイマ内でなく、タイマからの発砲でコール
	// 終了済みレイヤモーションの削除と、必要なトリガーの発砲
	function checkLM(lastpos = true)
	{
		for (var i = lmary.count-1; i >= 0; i--) {
			// この中↓でトリガは引かれる
			lmary[i].delFinishedLayerMotion(lastpos);
			if (lmary[i].motions.count <= 0 || lmary[i].finished) {
				invalidate lmary[i];
				lmary.erase(i);
			}
		}
	}

	// レイヤモーション停止。layer=void, page=void, name=voidなら全部止める
	// [motion_stop layer= page= name= lastpos=]
	function stopLM(layer, page, name=void, lastpos=true)
	{
		var ary = getLayerMotionAry(layer, page, name);
		if (ary !== void)
			for (var i = ary.count-1; i >= 0; i--)
				ary[i].finished = true;
		checkLM(lastpos);
	}

	// 現在のモーション中心のX座標を得る
	function getFixedCurrentPosX(layer="0", page="fore")
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return kag[page].layers[layer].left;
		return lmary[idx].initx;
	}
	// 現在のモーション中心のY座標を得る
	function getFixedCurrentPosY(layer="0", page="fore")
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return kag[page].layers[layer].top;
		return lmary[idx].inity;
	}

	// 現在のモーション中心のX座標を得る
	function setFixedCurrentPos(layer="0", page="fore", x=void, y=void)
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return;
		lmary[idx].setInitPos(x,y);
	}

	// レイヤの表←→裏の情報のコピー
	// backlay タグやトランジションの終了時に呼ばれる
	function onCopyLayer(toback)
	{
		// toback ? 表→裏 : 裏→表
		var page = toback ? 'back' : 'fore';
		for (var i = lmary.count-1; i >= 0; i--)
			if(lmary[i].page == page) {
				invalidate lmary[i];
				lmary.erase(i);
			}
		for (var i = lmary.count-1; i >= 0; i--) {
			var lm = new LayerMotion();
			lm.assign(lmary[i]);
			lm.page = page;
			lmary.add(lm);
		}
	}

	// 裏と表の管理情報を交換
	// backlay タグやトランジションの終了時に呼ばれる
	function onExchangeForeBack()
	{
		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じない。
		for (var i = lmary.count-1; i >= 0; i--)
			lmary[i].page = (lmary[i].page=='fore')?'back':'fore';
	}

	// セーブ
	function onStore(f, elm)
	{
// セーブ時にはレイヤ座標をセーブできる位置にしておく必要があるかも。
		var dic = f.layermotionplugin = %[];
		dic.lmdary = [];
		dic.lmary = [];
		for (var i = lmdary.count-1; i >= 0; i--)
			dic.lmdary[i] = lmdary[i].store();
		var tick = System.getTickCount();
		for (var i = lmary.count-1; i >= 0; i--)
			dic.lmary[i] = lmary[i].store(tick);
		dic.timer_enabled = timer.enabled;
	}

	// ロード
	function onRestore(f, elm)
	{
		var dic = f.layermotionplugin;
		if(dic === void)
			return;
		// lmdaryの要素を全部削除
		for (var i = lmdary.count-1; i >= 0; i--)
			invalidate lmdary[i];
		lmdary = [];

		// lmaryの要素を全部削除
		for (var i = lmary.count-1; i >= 0; i--)
			invalidate lmary[i];
		lmary = [];

		for (var i = dic.lmdary.count-1; i >= 0; i--) {
			lmdary[i] = new LayerMotionData();
			lmdary[i].restore(dic.lmdary[i]);
		}
		var tick = System.getTickCount();
		for (var i = dic.lmary.count-1; i >= 0; i--) {
			lmary[i] = new LayerMotion();
			lmary[i].restore(dic.lmary[i], tick);
		}
		timer.enabled = dic.timer_enabled;
	}

	// 相対座標を絶対座標に変換する関数。こんなコ汚い実装許されるのか。
	function getRelPathFromAbsPathX(layer="0", page="fore", init=getFixedCurrentPosX(layer, page), relpath)
	{
		if(relpath === void)
			return void;
		var ret = "";
		var path = relpath.split(/[,()]/);
		for (var i = 0; i < path.count; i+=5) {
			if(i > 0)
				ret += ',';
			ret += "(" + (real(path[i+1])-init) + "," +
					path[i+2] + "," + path[i+3] + ")";
		}
		return ret;
	}

	// 相対座標を絶対座標に変換する関数。こんなコ汚い実装許されるのか。
	function getRelPathFromAbsPathY(layer="0", page="fore", init=getFixedCurrentPosY(layer, page), relpath)
	{
		if(relpath === void)
			return void;
		var ret = "";
		var path = relpath.split(/[,()]/);
		for (var i = 0; i < path.count; i+=5) {
			if(i > 0)
				ret += ',';
			ret += "(" + (real(path[i+1])-init) + "," +
					path[i+2] + "," + path[i+3] + ")";
		}
		return ret;
	}
}


// プラグインオブジェクトを作成し、登録する
kag.addPlugin(global.layermotions_obj = new LayerMotions());

[endscript]


; [motion_define name= left= top= locatex= locatey= loop= loopx= loopy=]
[macro name="motion_define"]
[eval exp="mp.left  = real(mp.left)"  cond="mp.left  !== void"]
[eval exp="mp.top   = real(mp.top )"  cond="mp.top   !== void"]
[eval exp="mp.loopx = mp.loopy = real(mp.loop)" cond="mp.loop !== void"]
[eval exp="mp.loopx = real(mp.loopx)" cond="mp.loopx !== void"]
[eval exp="mp.loopy = real(mp.loopy)" cond="mp.loopy !== void"]
[eval exp="layermotions_obj.addLMD(mp.name, mp.left, mp.top, mp.locatex, mp.locatey, mp.loopx, mp.loopy)"]
[endmacro]


; [motion_undefine name=]
[macro name="motion_undefine"]
[eval exp="layermotions_obj.delLMD(mp.name)"]
[endmacro]


; [motion_start layer= page= left= top= name= ix= iy= loopx= loopy= canskip= wait=]
[macro name="motion_start"]
[eval exp="mp.left  = real(mp.left)"  cond="mp.left  !== void"]
[eval exp="mp.top   = real(mp.top )"  cond="mp.top   !== void"]
[eval exp="mp.ix    = real(mp.left)"  cond="mp.ix    !== void"]
[eval exp="mp.iy    = real(mp.top )"  cond="mp.iy    !== void"]
[eval exp="mp.loopx = mp.loopy = real(mp.loop)" cond="mp.loop !== void"]
[eval exp="mp.loopx = real(mp.loopx)" cond="mp.loopx !== void"]
[eval exp="mp.loopy = real(mp.loopy)" cond="mp.loopy !== void"]
[eval exp="mp.wait  = false"          cond="mp.wait  === void"]
[eval exp="layermotions_obj.addLM(mp.layer, mp.page, mp.left, mp.top, mp.name,  mp.ix, mp.iy, mp.loopx, mp.loopy)"]
[motion_wait layer=%layer page=%page name=%name canskip=%canskip cond=mp.wait]
[endmacro]


; [motion_stop layer= page= name= lastpos=]
; layer === void, page === voidで全部終了させる
[macro name="motion_stop"]
[eval exp="layermotions_obj.stopLM(mp.layer, mp.page, mp.name, mp.lastpos)"]
[endmacro]


; [motion_wait layer= page= name=]
; layer, page, name はvoidでもよい
[macro name="motion_wait"]
[eval exp="mp.canskip=true" cond="mp.canskip === void"]
[call storage=LayerMotionPlugin.ks target=*motion_wait_sub]
[motion_stop *]
[endmacro]


; [motion_move layer= page= left= top= pathx= pathy= wait=]
; locatexやlocateyは指定時は絶対座標になっているので、相対座標に変換する。
; これは吉里吉里の[move]をreplaceするために特別に作った。
[macro name="motion_krkrmove"]
[eval exp="mp.layer = '0'"    cond="mp.layer === void"]
[eval exp="mp.page  = 'fore'" cond="mp.page  === void"]
[eval exp="mp.locatex = layermotions_obj.getRelPathFromAbsPathX(mp.layer, mp.page, mp.left, mp.pathx)"]
[eval exp="mp.locatey = layermotions_obj.getRelPathFromAbsPathY(mp.layer, mp.page, mp.top,  mp.pathy)"]
; 名前は固定
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
; 前の動きを止める
[motion_stop layer=%layer page=%page name=%mname]
[motion_define name=%mname locatex=%locatex locatey=%locatey]
[motion_start layer=%layer page=%page name=%mname wait=%wait]
; 同期動作でなくても、登録データは削除される
[motion_undefine name=%mname]
[endmacro]


; [motion_krkrmove_wait layer= page=]
; [motion_krkrmove]用待ち
; ただし、layerは指定しないとダメ
[macro name="motion_krkrmove_wait"]
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
[motion_wait layer=%layer page=%page name=%mname]
[motion_undefine name=%mname]
[endmacro]


; [motion_krkrmove_stop layer= page=]
; [motion_krkrmove]を止める
[macro name="motion_krkrmove_stop"]
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
[motion_stop layer=%layer page=%page name=%mname]
[endmacro]


[iscript]

function make_quake_array(time, max, speed, signcnt=1)
{
	var ret = "";

	time = int(time);
	max = int(max);
	speed = int(speed);
	signcnt = int(signcnt); // 符号を何回に一回反転するか

	// time秒中に何回呼び出すかによってループ回数が変わる
	var cnt = 0, sign = 1;
	for (var tick = 0; tick < time; tick += speed, cnt++) {
		var rand = int(Math.random()*sign*max);
		// 連続的に動かすとなんか間抜けだったので、わざと離散的に動かす
		ret += '(' + rand + ',' + '1,0),';
		ret += '(' + rand + ',' + (speed-1) + ',0),';
		// 連続的に動かすだけならこんなん↓一行でO.K.。
		// ret += '(' + rand + ',' + speed + ',0),';
		if(cnt%signcnt == 0)
			sign *= -1; // 符号反転する
	}
	ret += '(0,1,0)';	// 最後に元の位置に戻す
	return ret;
}

[endscript]


; ワンタイムモーション(一回動かしたら捨てるモーション)を動作させる
; [motion_start_onetime layer= page= wait= locatex= locatey= loop= loopx= loopy=]
[macro name="motion_start_onetime"]
[eval exp="mp.name = 'onetime_' + System.createUUID()" cond="mp.name === void"]
[motion_define *]
[motion_start *]
;登録してすぐ削除する
[motion_undefine name=%name]
[endmacro]


; レイヤー別quakeのためのマクロ
; [motion_quake name= layer=0 page=fore time=300 hmax=10 vmax=10 speed=50 wait=false loop=1]
[macro name="motion_quake"]
[eval exp="mp.layer = '0'"     cond="mp.layer === void"]
[eval exp="mp.page   = 'fore'" cond="mp.page  === void"]
[eval exp="mp.time   = 300"    cond="mp.time  === void"]
[eval exp="mp.hmax   = 10"     cond="mp.hmax  === void"]
[eval exp="mp.vmax   = 10"     cond="mp.vmax  === void"]
[eval exp="mp.speed  = 50"     cond="mp.speed === void"]
[eval exp="mp.loop   = 1"      cond="mp.loop  === void"]
[eval exp="mp.locatex = make_quake_array(mp.time, mp.hmax, mp.speed)"]
[eval exp="mp.locatey = make_quake_array(mp.time, mp.vmax, mp.speed, 2)"]
[motion_start_onetime *]
[endmacro]


; ジャンプモーション(heightを負の値にするとおじぎやため息にも使える)
; [motion_jump name= layer=0 page=fore height=30 accel=2 time=300 staccel= edaccel= sttime= edtime= wait= movex= accelx= loop=1]
[macro name="motion_jump"]
[eval exp="mp.layer   = 0"          cond="mp.layer   === void"]
[eval exp="mp.page    = 'fore'"     cond="mp.page    === void"]
[eval exp="mp.height  = 30"         cond="mp.height  === void"]
[eval exp="mp.accel   = 2"          cond="mp.accel   === void"]
[eval exp="mp.time    = 300"        cond="mp.time    === void"]
[eval exp="mp.staccel = -mp.accel"  cond="mp.staccel === void"]
[eval exp="mp.edaccel = +mp.accel"  cond="mp.edaccel === void"]
[eval exp="mp.sttime  = +mp.time/2" cond="mp.sttime  === void"]
[eval exp="mp.edtime  = +mp.time/2" cond="mp.edtime  === void"]
[eval exp="mp.movex   = 0"          cond="mp.movex   === void"]
[eval exp="mp.accelx  = 0"          cond="mp.accelx  === void"]
[eval exp="mp.loop    = 1"          cond="mp.loop    === void"]
[eval exp="mp.locatey = '('+ -mp.height + ',' + mp.sttime + ',' + mp.staccel + '),(0,' + mp.edtime + ',' + mp.edaccel + ')'"]
[eval exp="mp.locatex = '('+mp.movex+','+mp.time+','+mp.accelx+')'"]
[motion_start_onetime *]
[endmacro]


; サンプルモーション
[motion_define name="てくてく" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" loop=0]
[motion_define name="てくてく右" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" locatex="(5,370,2),(10,320,-2),(5,200,1),(0,150,-1)" loop=0]
[motion_define name="てくてく左" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" locatex="(-5,370,2),(-10,320,-2),(-5,200,1),(0,150,-1)" loop=0]
[motion_define name="どたどた" locatey="(-30,200,-2),(0,200,2)" loop=0]
[motion_define name="おじぎ"   locatey="(20,200,-2),(0,200,2)"]
[motion_define name="ジャンプ" locatey="(-25,150,-2),(0,150,2)"]
[motion_define name="ふわふわ" locatex="(-20,2000,-2),(0,2000,2),(20,2000,-2),(0,2000,2)" locatey="(-5,1200,-2),(0,1200,2),(5,1200,-2),(0,1200,2)" loop=0]
[motion_define name="ため息"   locatey="(-4,300,-2),(12,900,-2),(0,300,-2)"]


[return]

; 以下、サンプル。実行はされない。
[layopt layer=0 page=fore left=100 top=100 visible=true]
[layopt layer=0 page=back visible=true]
[layopt layer=message page=fore visible=true]
[layopt layer=message page=back visible=true]
[image layer=0 page=fore storage="適当な画像"]

てくてくします。[l][r]
[motion_start layer=0 page=fore name="てくてく" wait=false]
[l][r]
飛びのきます。[l][r]
[motion_start layer=0 page=fore name="飛びのく"]
[l][r]
移動します。[l][r]
[motion_krkrmove pathx="(100,2000,-2)" pathy="(100,2000,-2)" wait=false]
[motion_krkrmove_wait]
ふわふわします。[l][r]
[motion_start layer=0 page=fore name="ふわふわ" wait=false]
[l][r]

ふわふわ中に消します。まず backlay[l][r]
[backlay]
次はmotion_stopいくぜ？[l][r]
[motion_stop layer=0 page=back]
[motion_stop layer=0 page=fore]
layopt[l][r]
[layopt layer=0 page=back visible=0]
transいくぜ？[l][r]
[trans method=crossfade time=2000]
[wt]
おしまい。
[s]

[return]


;未実装:
; 透明度変更

; Known BUG
; 消去トランジション中にセーブしたデータをロードすると、LayerMotion
; してくれない。これはそういうものなのか。[wt]の後にセーブすれば大丈夫だった。

*motion_wait_sub
*motion_wait_sub_loop
; スキップ中はすぐに戻る
[return cond="kag.skipMode > 1"]
; 該当モーションが実行中でなければすぐ返る。実行中だったら下へいき、
; なんでもいいから一つのレイヤモーションが終了するのを待つ。
; クリティカルセッションなので、間で最後のモーションが終るとタイヘンだが
; 防ぐ方法が分からない…
[return cond="!layermotions_obj.findLayerMotion(mp.layer,mp.page,mp.name)"]
[eval exp="mp.endALayerMotionSkip = false"]
[waittrig name=endALayerMotion canskip=%canskip onskip="mp.endALayerMotionSkip = true" cond="layermotions_obj.findLayerMotion(mp.layer, mp.page, mp.name)"]
; kag.clickCount は[waittrig]中でskipされても更新されないらしいので
[if exp="mp.endALayerMotionSkip"]
	; クリックが押された場合、全てを停止させ、削除する
	[motion_stop layer=%layer page=%page name=%name lastpos=true]
[endif]
; 以降繰り返し
[jump target=*motion_wait_sub_loop]
