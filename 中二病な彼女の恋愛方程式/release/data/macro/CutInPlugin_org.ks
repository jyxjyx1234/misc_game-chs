; Handlerじゃなくて1/60タイマにしたら、よく引っかかるようになったような
; 気がする。
; 多重登録を防止
[return cond="typeof(global.cutinplugin_obj) != 'undefined'"]

; 2013/04/01	0.36	Interpolationクラスが別のInterporation.ks中で定義されて
;			いたため、Interpolation_ctクラスに名称変更
; 2012/03/22	0.35	addCutin()中のtypo修正
;			hitThreshold = 256でマウスイベントを透過するよう変更
; 2012/02/02	0.3	[locate ...]タグを追加
;			key= を name= に変更
;			[cutin ... ]に absolute top left angle opacityを追加
;			[syncwait]を効率化
; 2011/06/02	0.22	タイマ周期を16から16.667に変更
; 2011/05/30	0.21	CutInLayerのfinalize()にinvalidate timerを追加
; 2010/05/06	0.2	[iscript]中の行頭の '*' を回避


[iscript]


// 数値補間クラス(一次元の数値配列(数値,処理時間,accel)
// class InterpolationはInterpolation.ks中で定義されているので、ここでは別の
// 名前で定義する
class Interpolation_ct
{
	var	stvals = [];	// どこから、の値配列
	var	edvals = [];	// どこへ、の値配列。evals.count = stvals count
	var	curvals = [];	// 現在の位置
	var	accel = 0;	// 加速度的に扱うか =0:等速、<0:減速、>0:加速
	var	processTime = 0;// 処理にかかる時間

	var	infinity = false;	// 無限フラグ
	var	startTime = 0;	// 開始時間

	// コンストラクタ
	function Interpolation_ct(i_stvals, i_edvals=void, i_time=0, i_accel=0, i_infinity=false)
	{
		setValues(...);
	}

	// 値を設定する。i_stvalsやi_edvalsは文字列配列でもよい
	function setValues(i_stvals=void, i_edvals=void, i_time=0, i_accel=0, i_infinity=false)
	{
		accel = i_accel;
		processTime = i_time !== void ? i_time : 0;

		// 初期位置設定。voidなら、現在の値に。
		stvals.assign(curvals);
		stvals.assign(i_stvals) if(i_stvals !== void);
		for(var i = stvals.count-1; i >= 0; i--)
			stvals[i] = curvals[i] if(stvals[i] === void);

		// 終了位置設定。voidなら、stvalsと同じに
		edvals.assign(stvals);
		edvals.assign(i_edvals) if(i_edvals !== void);
		for(var i = edvals.count-1; i >= 0; i--)
			edvals[i] = stvals[i] if(edvals[i] === void);

		//setCurrentValues(i_stvals);
		curvals = []; curvals.assign( stvals );
		infinity = i_infinity;
	}

	// current(現在の位置)を設定する
	function setCurrentValues(curTime)
	{
		if(processTime == 0 || startTime == curTime) {
			curvals.assign( stvals );
			return;
		}
		var idx = (curTime - startTime)/processTime;

		if(accel < 0) { // 上弦(最初が動きが早く、徐々に遅くなる)
			idx = 1.0 - idx;
			idx = Math.pow(idx, -accel);
			idx = 1.0 - idx;
		}
		else if(accel > 0) { // 下弦(最初は動きが遅く、徐々に早くなる)
			idx = Math.pow(idx, accel);
		}

		for(var i = stvals.count-1; i >= 0; i--)
			curvals[i] = idx*(edvals[i]-stvals[i]) + stvals[i];
	}

	// 現在の値を得る
	function getCurrentValues(idx)
	{
		idx = regulateTick(idx);
		setCurrentValues(idx);
		return(curvals);
	}

	// curTimeが処理可能な時間か(start/endの範囲に収まっているか)
	function isValidTime(curTime, contain_infinity = true)
	{
		return  0 < startTime &&
			((startTime <= curTime && 
			  curTime <= startTime+processTime) || 
			 (contain_infinity && infinity));
			 
	}

	// 処理が終わるまでにかかる時間を返す
	function toFinishTime(curTime)
	{
		// infinity loop の時に-になるのを防ぐため、3600秒を返す
		if(infinity)
			return 3600000;
		var ret = (startTime+processTime) - curTime;
		return ret > 0 ? ret : 0;	// -の値を返すのを防ぐ
	}

	// curTimeをstartTime <-> startTime+processTimeの範囲内に収める
	function regulateTick(curTime)
	{
		if(infinity && (curTime == Infinity || curTime == -Infinity))
			return(startTime+processTime + 3600000/*3600秒*/);
			// 無限ループでInfinityが指定された時は、仮に一時間に
		if(curTime <= startTime)
			return(startTime);
		if(curTime >= startTime+processTime && !infinity)
			return(startTime+processTime);
		return(curTime);
	}

	// 現在の(開始)時間を設定する
	function setStartTime(tick)
	{
		startTime = tick;
	}

	// コピーする
	function assignInterpolation(src)
	{
		stvals.assignStruct(src.stvals);
		edvals.assignStruct(src.edvals);
		curvals.assignStruct(src.curvals);
		accel		= src.accel;
		processTime	= src.processTime;
		startTime	= src.startTime;
		infinity	= src.infinity;
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = %[];
		dic.stvals = [];
		dic.edvals = [];
		dic.curvals = [];
		dic.stvals.assign(stvals);
		dic.edvals.assign(edvals);
		dic.curvals.assign(curvals);
		dic.accel	= accel;
		dic.processTime	= processTime;
		dic.indexTime	= System.getTickCount() - startTime;
		dic.infinity	= infinity;
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if(dic === void)
			return;
		stvals.assign(dic.stvals);
		edvals.assign(dic.edvals);
		curvals.assign(dic.curvals);
		accel		= dic.accel;
		processTime	= dic.processTime;
		startTime	= System.getTickCount() - dic.indexTime;
		infinity	= dic.infinity;
	}
}


// 二次元アフィン変換行列クラス
class Affine2D
{
	var aff = [];

	// コンストラクタ
	function Affine2D(ary = void)
	{
		aff = [];
		aff.assign((ary !== void) ? ary : [ 1,0,0, 0,1,0 ]);
	}

	// デストラクタ
	function finalize()
	{
	}

	// アフィン変換行列(aff[6])を返す
	function getary()
	{
		return aff;
	}

	// アフィン変換行列に回転を追加する
	function rotate(angle = 0)
	{
		aff[0] *=  Math.cos(angle*Math.PI/180);
		aff[1] *= -Math.sin(angle*Math.PI/180);
		aff[3] *=  Math.sin(angle*Math.PI/180);
		aff[4] *=  Math.cos(angle*Math.PI/180);
	}

	// アフィン変換行列に拡大縮小を追加する
	function scale(sx = 1, sy = 1)
	{
		aff[0] *= sx;
		aff[1] *= sy;
		aff[3] *= sx;
		aff[4] *= sy;
	}

	// アフィン変換行列を比較する
	function issame(aff2)
	{
		var i;
		for(i = aff.count-1; i >= 0; i--)
			if(aff[i] != aff2.aff[i])
				break;
		return(i < 0);
	}

	// ある点を現在の行列値に従ってアフィン変換する
	function transpos(x, y)
	{
		var retary = [];
		retary[0] = aff[0]*x + aff[1]*y + aff[2];
		retary[1] = aff[3]*x + aff[4]*y + aff[5];
		return retary;
	}

	// 配列中の最大値を得る
	function mostmax(ary)
	{
		var ret = ary[0];
		for(var i = ary.count-1; i >= 1; i--)
			ret = Math.max( ret, ary[i] );
		return ret;
	}

	// 配列中の最小値を得る
	function mostmin(ary)
	{
		var ret = ary[0];
		for(var i = ary.count-1; i >= 1; i--)
			ret = Math.min( ret, ary[i] );
		return ret;
	}

	// アフィン変換行列を元に、写像先の領域の大きさを返し、そこへの
	// 写像に必要な変更を行列にも加える
	function modify(w, h)
	{
		var retary = [];
		var pos1  = transpos(w, 0);
		var pos2  = transpos(0, h);
		var pos3  = transpos(w, h);
		retary[0] = mostmin([0,pos1[0],pos2[0],pos3[0]]);
		retary[1] = mostmin([0,pos1[1],pos2[1],pos3[1]]);
		retary[2] = mostmax([0,pos1[0],pos2[0],pos3[0]]) - retary[0];
		retary[3] = mostmax([0,pos1[1],pos2[1],pos3[1]]) - retary[1];
		// retary is a minimum box which includes rotated/scaled image
		// retary[0],[1] = LT_pos, retary[2] = w, retary[3] = h

		aff[2] -= retary[0];
		aff[5] -= retary[1];
		return retary;
	}

	// コピーする
	function assignAffine2D(src)
	{
		aff.assignStruct(src.aff);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = %[];
		dic.affine2d.assign(aff);
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if(dic === void)
			return;
		aff.assign(dic.affine2d);
	}
}



// 現在のstatusを保存するのと、onTagでtagを実行するために作成。
class CutInConductor extends BaseConductor
{
	// Conductor - シナリオ進行処理
	/*const*/ var mStop = 0; // 停止
	/*const*/ var mRun = 1; // 動作中
	/*const*/ var mWait = 2; // 待ち

	var owner;
	var status = mStop;

	// コンストラクタ
	function CutInConductor(owner)
	{
		super.BaseConductor(...);
		ignoreCR = global.ignoreCR;
		debugLevel = tkdlNone;		//tkdlVerbose;
		this.owner = owner;
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	function isStopping()
	{
		return status == mStop;
	}

	function run(storage = void, label = void, immediate = false)
	{
		// 実行の開始
		// immediate=true の場合は、
		// このメソッドを実行したらすぐに吉里吉里に制御を戻す
		// (すべての関数から戻る)こと
		stop();
		status = mRun;

		if(storage !== void && storage != '') {
			storage = Storages.chopStorageExt(storage) + ".cid";
			storage = Storages.getPlacedPath(storage);
			if(storage === void) {
				dm('CutIn用ストレージ'+storage+'がありません');
				return;
			} 
			loadScenario(storage);
			clearCallStack();
		}
		goToLabel(label);
		startProcess(immediate);
	}

	function pause()
	{
		// 実行の停止
		status = mStop;
		stop();
	}

	// タグを後回しにするConductorのムリヤリな拡張…
	function tagpending(elm)
	{
		pendings.insert(0, elm);
	}

	// タグの処理
	function onTag(elm)
	{
		// オーナのtagname = ハンドラ関数を実行
		var handler = owner[elm.tagname];
		if(handler !== void)
			return handler(elm);
		// ハンドラが存在しなければエラー
		return onUnknownTag(elm.tagname, elm);
	}

	function onStop()
	{
		// BaseConductor.onStop オーバーライド
		// 停止時に呼ばれるのでステータスを mStop にする
		status = mStop;
		if(owner.conductor == this)
			owner.s(%[tagname:"s"]); // ハンドラの s (停止) を呼ぶ
	}

	function onScript(script, scriptname, lineofs)
	{
		// scirpt を実行する
		try
		{
			Scripts.exec(script, scriptname, lineofs);
		}
		catch(e)
		{
			throw new Exception(scriptname + " の 行 " + lineofs + " から始まる"
				" iscript ブロックでエラーが発生しました。"
				"\n( 詳細はコンソールを参照してください )\n" + e.message);
		}
		return true;
	}

	function store()
	{
		// store オーバーライド
		return super.store(...);
	}

	function restore(dic)
	{
		// restore オーバーライド
		super.restore(...);
	}

	// コピー
	function assign(src)
	{
		super.assign(src);
	}

//	function onScenarioLoad()
//	{
//		return owner.onConductorScenarioLoad(...);
//	}

//	function onScenarioLoaded()
//	{
//		return owner.onConductorScenarioLoaded(...);
//	}

	function onLabel()
	{
		return owner.onConductorLabel(...);
	}

//	function onJump()
//	{
//		return owner.onConductorJump(...);
//	}

//	function onCall()
//	{
//		return owner.onConductorCall(...);
//	}

//	function onReturn()
//	{
//		return owner.onConductorReturn(...);
//	}

//	function onAfterReturn()
//	{
//		return owner.onConductorAfterReturn(...);
//	}

//	function onScript()
//	{
//		return owner.onConductorScript(...);
//	}

//	function onUnknownTag()
//	{
//		return owner.onConductorUnknownTag(...);
//	}
}




// カットインレイヤークラス
class CutInLayer // extends Layer
{
	var name;		// このカットインの名前

	var layer;
	var shlayer;		// 画像保存用シャドウレイヤ

	var storage;		// 画像ファイル
	var conductor;		// CutIn用コンダクタ
	var p_scale;		// 拡大縮小情報
	var p_rotate;		// 回転情報
	var p_locatex;		// 位置、移動情報X
	var p_locatey;		// 位置、移動情報Y
	var p_opacity;		// 透明度情報
	var preTime;		// 前回の処理時間

	var preaffine;		// 前回処理したaffine変換配列

	var timer;		// 1/60タイマ
	var savedata;		// セーブデータ

	// コンストラクタ
	function CutInLayer(win, parent, i_name = 'all', elm=%[])
	{
		name		= i_name;
		layer		= new Layer(win, parent);
		// メッセージより奥に表示
		layer.absolute	= elm.absolute === void ? 1000000-10 : elm.absolute;
		layer.hitThreshold = 256;	// マウスイベントは透過する
		shlayer		= new Layer(win, parent);
		shlayer.visible = false;	// 通常表示しないので
		storage		= void;
		conductor	= new CutInConductor(this);
		p_scale		= new Interpolation_ct([+elm.scale]);
		p_rotate	= new Interpolation_ct([+elm.angle]);
		p_locatex	= new Interpolation_ct([+elm.left]);
		p_locatey	= new Interpolation_ct([+elm.top]);
		p_opacity	= new Interpolation_ct([elm.opacity === void ? 255 : elm.opacity]);
		preTime		= 0;
		preaffine	= new Affine2D([ 0,0,0, 0,0,0 ]);
		timer 		= new Timer(timerCallback, '');
		timer.interval	= 16.667;	// (16.667msec = 1/60秒で一回)
		savedata	= void;	// 最初はvoidに。
	}

	// デストラクタ
	function finalize()
	{
		stopCutIn();
		invalidate layer;
		invalidate shlayer;
		invalidate conductor;
		invalidate p_locatex, p_locatey, p_rotate, p_scale, p_opacity;
		invalidate preaffine;
		invalidate timer;
	}

	// 現在動作する必要があるか。あればtimer動作、無ければtimer停止
	function needHandling(tick)
	{
		if(p_scale.isValidTime(tick)   || p_rotate.isValidTime(tick) ||
		   p_locatex.isValidTime(tick) || p_locatey.isValidTime(tick)||
		   p_opacity.isValidTime(tick)) {
			timer.enabled = true;
			return true;
		} else {
			timer.enabled = false;
			return false;
		}
	}

	// 回転などではみ出した分を補正しつつアフィン変換
	function processAffine(tick)
	{
		// 透明度計算、透明度だけ先に処理
		layer.opacity = p_opacity.getCurrentValues(tick)[0];
		// 透明なら(処理の必要がないので)何もしない
		if(layer.opacity == 0 || !layer.visible)
			return;

		// アフィン変換行列を計算
		var aff = new Affine2D([ 1,1,0, 1,1,0 ]);

		// 回転処理
		var angle = p_rotate.getCurrentValues(tick)[0];
		aff.rotate( angle );

		// 拡大縮小処理
		var scary = p_scale.getCurrentValues(tick);
		aff.scale( scary[0], scary[1] );

		var ary = aff.modify(shlayer.imageWidth, shlayer.imageHeight);
		// 0になると「width==0はダメ」と怒られるのではじく
		if(int(ary[2]) <= 0 || int(ary[3]) <= 0)
			return;
		layer.width  = layer.imageWidth  = ary[2];
		layer.height = layer.imageHeight = ary[3];

		// 位置補正
		var posx = p_locatex.getCurrentValues(tick)[0];
		var posy = p_locatey.getCurrentValues(tick)[0];
		layer.left = posx - ary[2]/2; //← aryのために、この関数内に
		layer.top  = posy - ary[3]/2; // ないとダメ

		// 画面外ならアフィン変換しない
		if(layer.left+layer.width <= 0 ||layer.top+layer.height <= 0 ||
		   layer.left >= layer.parent.width ||
		   layer.top  >= layer.parent.height)
			return;

		// アフィン変換行列の内容が前回と同じなら何もしない
		if(aff.issame(preaffine))
			return;
		preaffine = aff;

		// アフィン変換。何故吉里吉里の行列は転置してるのだ…
		var a = aff.getary();
		layer.affineCopy(shlayer,
				 0,0,
				 shlayer.imageWidth,shlayer.imageHeight,
				 true,
				 a[0],a[3],a[1],a[4],a[2],a[5],
				 stFastLinear, true);
	}


	// 画像の拡大縮小・回転・移動ハンドラ。
	function processCutIn(tick)
	{
		// 処理の必要がなくなれば止めるが、最後のコマは表示する
		if(!needHandling(tick))	// 次回からのタイマ停止はこの中で実施
			tick = Infinity;

		// 1/60(約16.7/1000)秒以内か、layerが無効なら何もしない
		if(!(layer isvalid) || !layer.visible)
			return;
		preTime = tick;

		// アフィン変換処理
		processAffine(tick);

		layer.update();
	}

	// タイマのコールバック
	function timerCallback()
	{
		processCutIn(System.getTickCount());
	}

	// 数値文字列("xx,xx,xx....")を配列に変換する。
	function strToNumArray(str)
	{
		if(str === void)
			return void;
		str = string(str);
		var ret = str.split(',');
		for(var i = ret.count-1; i >= 0; i--)
			if(ret[i] == "")
				ret[i] = void;
			else
				ret[i] = +ret[i];
		return ret;
	}

	function setScale(elm, tick)
	{
		var stvals = strToNumArray(elm.scale);
		var edvals = strToNumArray(elm.dstscale);
		var inf = elm.infinity == 'true' ? true : false;
		p_scale.setValues(stvals, edvals, +elm.time, +elm.accel, inf);
		p_scale.setStartTime(tick);
	}

	function setRotate(elm, tick)
	{
		var stvals = strToNumArray(elm.angle);
		var edvals = strToNumArray(elm.dstangle);
		var inf = elm.infinity == 'true' ? true : false;
		p_rotate.setValues(stvals, edvals, +elm.time, +elm.accel, inf);
		p_rotate.setStartTime(tick);
	}

	function setLocateX(elm, tick)
	{
		var stvals = strToNumArray(elm.pos);
		var edvals = strToNumArray(elm.dstpos);
		if(edvals === void) { // ↓dstpos が指定されてなかったら relpos
			edvals = strToNumArray(elm.relpos);
			if (edvals !== void)
				edvals[0]+=p_locatex.getCurrentValues(tick)[0];
		}
		var inf = elm.infinity == 'true' ? true : false;
		p_locatex.setValues(stvals, edvals, +elm.time, +elm.accel,inf);
		p_locatex.setStartTime(tick);
	}
	function setLocateY(elm, tick)
	{
		var stvals = strToNumArray(elm.pos);
		var edvals = strToNumArray(elm.dstpos);
		if(edvals === void) { // ↓dstpos が指定されてなかったら relpos
			edvals = strToNumArray(elm.relpos);
			if (edvals !== void)
				edvals[0]+=p_locatey.getCurrentValues(tick)[0];
		}
		var inf = elm.infinity == 'true' ? true : false;
		p_locatey.setValues(stvals, edvals, +elm.time, +elm.accel,inf);
		p_locatey.setStartTime(tick);
	}

	function setOpacity(elm, tick)
	{
		var stvals = strToNumArray(elm.opa);
		var edvals = strToNumArray(elm.dstopa);
		var inf = elm.infinity == 'true' ? true : false;
		p_opacity.setValues(stvals, edvals, +elm.time, +elm.accel,inf);
		p_opacity.setStartTime(tick);
	}

	// イメージ読み込み
	function loadImage(storage)
	{
		this.storage = storage;
		shlayer.loadImages(storage);
		shlayer.setSizeToImageSize();
	}

	// カットイン情報ファイル(拡張子.cid)を読み込み、開始
	function startCutIn(cutininfo, label = void)
	{
		if(cutininfo === void || cutininfo == "")
			cutininfo = storage;

		stopCutIn();
//		p_scale.setStartTime(0);	//これやると「再開」の時困る
//		p_rotate.setStartTime(0);	// 再開 = restore()ね。
//		p_locatex.setStartTime(0);
//		p_locatey.setStartTime(0);
//		p_opacity.setStartTime(0);
		layer.visible = true;
		// カットイン定義ファイルが存在した
		conductor.run(cutininfo, label, true);
	}

	// カットインをとめる(pause的に)
	function stopCutIn()
	{
		conductor.pause();
		timer.enabled = false;
	}

	function onConductorLabel(label, page)
	{
		if(page !== void) {
			var elm = %[tagname:"savepoint"];
			savepoint(elm);
		}
	}

// ------ ここからアニメーション定義ファイルのタグハンドラ --------------------

	function syncwait(elm)
	{
		var waitinfinity = false;
		var waitlocatex = true, waitlocatey = true;
		var waitrotate = true, waitscale = true, waitopacity=true;

		if (elm.waitinfinity)
			waitinfinity = true;
		// waitinfinityは、無限ループの時にそれを待つかどうかのフラグ
		if (elm.waitlocatex !== void && elm.waitlocatex == 'false')
			waitlocatex = false;
		if (elm.waitlocatey !== void && elm.waitlocatey == 'false')
			waitlocatey = false;
		if (elm.waitrotate !== void && elm.waitrotate == 'false')
			waitrotate = false;
		if (elm.waitscale !== void && elm.scale == 'false')
			waitscale = false;
		if (elm.waitopacity !== void && elm.waitopacity == 'false')
			waitopacity = false;

		var tick = System.getTickCount();
		if (waitlocatex && p_locatex.isValidTime(tick, waitinfinity)) {
			conductor.tagpending(elm); // 後回し
//dm('syncwait waitlocatex(' + p_locatex.toFinishTime(tick) + ')');
			return p_locatex.toFinishTime(tick) + 1; // この+1重要
			// conductorの処理が終わるまでSystem.getTickCount()は
			// 更新されないので、ここで0を返すと無限ループに
			// 陥ってしまう。だから+1は必要。時間が不正確になるけど
		}
		if (waitlocatey && p_locatey.isValidTime(tick, waitinfinity)) {
			conductor.tagpending(elm); // 後回し
//dm('syncwait waitlocatey(' + p_locatey.toFinishTime(tick) + ')');
			return p_locatey.toFinishTime(tick) + 1;
		}
		if (waitrotate && p_rotate.isValidTime(tick, waitinfinity)) {
			conductor.tagpending(elm); // 後回し
			return p_rotate.toFinishTime(tick) + 1;
		}
		if (waitscale && p_scale.isValidTime(tick, waitinfinity)) {
			conductor.tagpending(elm); // 後回し
			return p_scale.toFinishTime(tick) + 1;
		}
		if (waitopacity && p_opacity.isValidTime(tick, waitinfinity)) {
			conductor.tagpending(elm); // 後回し
			return p_opacity.toFinishTime(tick) + 1;
		}
		return 0;
	}

	function savepoint(elm)
	{
		elm.waitinfinity = "false";
		var syncwaittime = syncwait(elm);
		if(syncwaittime > 0)
			return syncwaittime;	// 全処理の終了待ち
		store();			// savedataにセーブして
		return 0;			// 処理続行
	}

	function s(elm)
	{
		var syncwaittime = syncwait(elm);
		if(syncwaittime > 0)
			return syncwaittime;	// 全処理の終了待ち
		stopCutIn();
		processAffine(Infinity);	// 最後の状態を表示
		return -1; // 停止
	}

	function wait(elm)
	{
		return elm.time;
	}

	function eval(elm)
	{
		try {
			Scripts.eval(elm.exp); // elm.exp を式として実行
		}
		catch(e) {
			throw new Exception(scriptname + " の 行 " + lineofs + " から始まる"
				" iscript ブロックでエラーが発生しました。"
				"\n( 詳細はコンソールを参照してください )\n" + e.message);
		}
		return 0;
	}

	// tag処理のサブルーチン。funcはelmとcurTimeを引数に持つこと。
	function tagProcessSubRoutine(elm, obj, func)
	{
		var curTime = System.getTickCount();
		if(obj.isValidTime(curTime)) {
			conductor.tagpending(elm); // 処理中なら後回し
			return obj.toFinishTime(curTime);
		}
		func(elm, curTime);

		// 最初の一回は必ず表示、この中で必要ならタイマ開始
		processCutIn(curTime);
		return 0;
	}

	function locate(elm)
	{
		var elmx = %[], elmy = %[];
		(Dictionary.assignStruct incontextof elmx)(elm);
		(Dictionary.assignStruct incontextof elmy)(elm);
		elmx.tagname = "locatex";
		elmy.tagname = "locatey";

		// パラメータをXとYに分ける
		var params = ["pos", "dstpos", "relpos", "accel", "time"];
		for (var i = params.count-1; i >= 0; i--) {
			if (elm[params[i]] !== void) {
				var ary = strToNumArray(elm[params[i]]);
				if (ary.count <= 1) {
					// 一つしかなかったら同じものとする
					elmx[params[i]] = elmy[params[i]] = ary[0];
				} else { // if (ary.count >= 2)
					// 二つ以上あったら最初の二つを採用する
					elmx[params[i]] = ary[0];
					elmy[params[i]] = ary[1];
				}
			}
		}
		var xtick = locatex(elmx), ytick = locatey(elmy);
		// 小さい方を返す
		return xtick < ytick ? xtick : ytick;
	}
	function locatex(elm)
	{
		return tagProcessSubRoutine(elm, p_locatex, setLocateX);
	}
	function locatey(elm)
	{
		return tagProcessSubRoutine(elm, p_locatey, setLocateY);
	}
	function rotate(elm)
	{
		return tagProcessSubRoutine(elm, p_rotate, setRotate);
	}
	function scale(elm)
	{
		return tagProcessSubRoutine(elm, p_scale, setScale);
	}
	function opacity(elm)
	{
		return tagProcessSubRoutine(elm, p_opacity, setOpacity);
	}

// ここからロードセーブ -------------------------------------------


	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = savedata = %[];
		// 辞書配列に現在の状態を保存する
		dic.name	= name;
//		dic.layer	=
//		dic.shlayer	=
		dic.storage	= storage;
		dic.cond_status	= conductor.status;
		dic.cond_storage= conductor.curStorage;
		dic.cond_label	= conductor.curLabel;

		dic.p_scale	= p_scale.store();	// 現在の状態を保存する
		dic.p_rotate	= p_rotate.store();
		dic.p_locatex	= p_locatex.store();
		dic.p_locatey	= p_locatey.store();
		dic.p_opacity	= p_opacity.store();
//		dic.preTime	= preTime;	保存しても仕方ない
//		dic.timer	= timer;	保存しても仕方ない
/*
		dic.layer_left		= layer.left;
		dic.layer_top		= layer.top;
		dic.layer_width		= layer.width;
		dic.layer_height	= layer.height;
		dic.layer_imageWidth	= layer.imageWidth;
		dic.layer_imageHeight	= layer.imageHeight;
 [iscript]中では頭に*を書かないこと！*/
		dic.layer_opacity	= layer.opacity;
		dic.layer_visible	= layer.visible;
//		dic.layer_imageLeft	= layer.imageLeft;
//		dic.layer_imageTop	= layer.imageTop;
		dic.layer_absolute	= layer.absolute;
		dic.layer_type		= layer.type;

		return dic;
	}

	// ロード時に上から呼ばれる(このとき、thisは作成直後になってること)
	function restore(dic)
	{
		if(dic === void)
			return;
		stopCutIn();

//作成直後で不要	CutInLayer(layer.window, layer.parent, dic.name);
		name		= dic.name;
		loadImage(dic.storage);

		p_scale.restore(dic.p_scale);		// 位置を復元
		p_rotate.restore(dic.p_rotate);
		p_locatex.restore(dic.p_locatex);
		p_locatey.restore(dic.p_locatey);
		p_opacity.restore(dic.p_opacity);

		layer.visible	= dic.layer_visible;
		layer.absolute	= dic.layer_absolute;
		layer.type	= dic.layer_type;
		// コンダクタ起動
		startCutIn(dic.cond_storage, dic.cond_label);

		// 最初の一回は必ず表示、この中で必要ならタイマ開始
		processCutIn(System.getTickCount());
	}

	// コピー
	function assignCutIn(src)
	{
		name = src.name;
		layer.visible = src.layer.visible;
		layer.assignImages(src.layer);
		shlayer.assignImages(src.shlayer);
		storage = src.storage;
		p_scale.assignInterpolation(src.p_scale);
		p_rotate.assignInterpolation(src.p_rotate);
		p_locatex.assignInterpolation(src.p_locatex);
		p_locatey.assignInterpolation(src.p_locatey);
		p_opacity.assignInterpolation(src.p_opacity);
		preTime = src.preTime;
		preaffine.assignAffine2D(src.preaffine);
		// コピーオブジェクトは一回だけ表示する(transのために裏画面も)
		processAffine(System.getTickCount());

		// timerにはassign()が無いみたい
//		timer 		= new Timer(timerCallback, ''); 無くて平気。
		timer.interval	= src.timer.interval;
		timer.enabled	= src.timer.enabled;
	
		// 最後にコンダクタコピーして処理開始
		conductor.assign(src.conductor);
	}
}



class CutInPlugin extends KAGPlugin
{
	var win;
	var foreCutIns = [];	// 表画面のcutin配列
	var backCutIns = [];	// 裏画面のcutin配列

	// コンストラクタ
	function CutInPlugin(window)
	{
		win = window;
		super.KAGPlugin(...);
		foreCutIns = [];
		backCutIns = [];
	}

	// デストラクタ
	function finalize()
	{
		invalidateCutInsOnPage('both');
		super.finalize(...);
	}

	// あるページのカットインを全て削除
	function invalidateCutInsOnPage(page='both')
	{
		if(page == 'both' || page == 'fore')
			for(var i = foreCutIns.count-1; i >= 0; i--) {
				invalidate(foreCutIns[i]);
				foreCutIns.erase(i);
			}
		if(page == 'both' || page == 'back')
			for(var i = backCutIns.count-1; i >= 0; i--) {
				invalidate(backCutIns[i]);
				backCutIns.erase(i);
			}
	}

	// 指定nameのカットインを削除
	function invalidateCutIns(name = 'all', page='both')
	{
		if(name == 'all') {
			invalidateCutInsOnPage(page);
			return;
		}
		if(page == 'both' || page == 'fore')
			for(var i = foreCutIns.count-1; i >= 0; i--)
				if(foreCutIns[i].name == name) {
					invalidate(foreCutIns[i]);
					foreCutIns.erase(i);
				}
		if(page == 'both' || page == 'back')
			for(var i = backCutIns.count-1; i >= 0; i--)
				if(backCutIns[i].name == name) {
					invalidate(backCutIns[i]);
					backCutIns.erase(i);
				}
	}

	// cutinを一つ追加
	function addCutIn(elm)
	// elm.storage
	// elm.cutininfo=''
	// elm.page='fore'
	// elm.name=''
	// elm.label=''
	// elm.top=, elm.left=, elm.absolute=
	{
		var obj;
		if(elm.name === void || elm.name == '')
			elm.name = 'all';	// nameは必須なのでallにしちゃう
		if(elm.page === void || elm.page == 'fore') {
			obj = new CutInLayer(win, win.fore.base, elm.name,elm);
			foreCutIns.add(obj);
		} else {
			obj = new CutInLayer(win, win.back.base, elm.name,elm);
			backCutIns.add(obj);
		}
		obj.loadImage(elm.storage);
		obj.startCutIn(elm.cutininfo, elm.label);
		obj.store();		// 最初の状態をセーブ可能にしておく
	}

	// nameとpageに対応するカットインを探す
	function searchCutIn(name = 'all', page = 'both')
	{
		var retary = [];
		if(name == 'all') {
			if(page == 'both' || page == 'fore')
				retary.assign(foreCutIns);
			if(page == 'both' || page == 'back')
				retary.assign(backCutIns);
			return retary;
		}

		if(page == 'both' || page == 'fore') {
			for(var i = foreCutIns.count-1; i >= 0; i--)
				if(foreCutIns[i].name == name)
					retary.add(foreCutIns[i]);
		}
		if(page == 'both' || page == 'back') {
			for(var i = backCutIns.count-1; i >= 0; i--)
				if(backCutIns[i].name == name)
					retary.add(backCutIns[i]);
		}
		return retary;
	}

	function onCopyLayer(toback)
	{
		// レイヤの表←→裏の情報のコピー
		// backlay タグやトランジションの終了時に呼ばれる
		if(toback) {
			// 表→裏
			invalidateCutInsOnPage('back');
			for(var i = foreCutIns.count-1; i >= 0 ; i--) {
				backCutIns[i] = new CutInLayer(win,
					win.back.base, foreCutIns[i].name);
				backCutIns[i].assignCutIn(foreCutIns[i]);
			}
		}
		else {
			// 裏→表
			invalidateCutInsOnPage('fore');
			for(var i = backCutIns.count-1; i >= 0 ; i--) {
				foreCutIns[i] = new CutInLayer(win,
					win.fore.base, backCutIns[i].name);
				foreCutIns[i].assignCutIn(backCutIns[i]);
			}
		}
	}


	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換

		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで 表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じない。
		var ary = [];
		ary.assign(foreCutIns);
		foreCutIns.assign(backCutIns);
		backCutIns.assign(ary);
	}

	// セーブ
	function onStore(f, elm)
	{
		// 栞を保存するとき
		var dic = f.cutinplugin = %[];
		dic.foreCutIns = [];
		dic.backCutIns = [];
		for(var i = foreCutIns.count-1; i >= 0; i--)
			dic.foreCutIns[i] = foreCutIns[i].savedata;
//			dic.foreCutIns[i] = foreCutIns[i].store();
		for(var i = backCutIns.count-1; i >= 0; i--)
			dic.backCutIns[i] = backCutIns[i].savedata;
//			dic.backCutIns[i] = backCutIns[i].store();

	}

	// ロード
	function onRestore(f, elm)
	{
		// 栞を読み出すとき
		invalidateCutInsOnPage('both');
		var dic = f.cutinplugin;
		if(dic === void)
			return;
		for(var i = dic.foreCutIns.count-1; i >= 0; i--) {
			foreCutIns[i] = new CutInLayer(kag, kag.fore.base);
			foreCutIns[i].restore(dic.foreCutIns[i]);
			foreCutIns[i].savedata = dic.foreCutIns[i];
		}
		for(var i = dic.backCutIns.count-1; i >= 0; i--) {
			backCutIns[i] = new CutInLayer(kag, kag.back.base);
			backCutIns[i].restore(dic.backCutIns[i]);
			backCutIns[i].savedata = dic.foreCutIns[i];
		}
	}
}


kag.addPlugin(global.cutinplugin_obj = new CutInPlugin(kag));

[endscript]

[macro name="cutin"]
;	// elm.storage
;	// elm.cutininfo=''
;	// elm.page='fore'
;	// elm.name=''
;	// elm.label=
;	// elm.top=, elm.left=, elm.absolute=
[eval exp="global.cutinplugin_obj.addCutIn(mp)"]
[endmacro]


[macro name="cutin_erase"]
;	// elm.name = 'all'
;	// elm.page = 'both'
[eval exp="mp.name = 'all'"  cond="mp.name === void"]
[eval exp="mp.page = 'both'" cond="mp.page === void"]
[eval exp="global.cutinplugin_obj.invalidateCutIns( mp.name, mp.page )"]
[endmacro]

[return]
