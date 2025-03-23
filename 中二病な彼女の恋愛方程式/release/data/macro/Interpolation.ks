; 多重登録を防止
[return cond="typeof(global.Interpolation) != 'undefined'"]

[iscript]

// 補間用エレメント(相対値のみ・初期値は0から開始)
class RelInterpolationElement
{
	var vals;		// ハッシュ配列((relval,reltick,accel), ...)

	// コンストラクタ
	function InterpolationElement()
	{
		// 先頭は計算用のダミーというかターミネータ
		vals = [ %[relval:0, reltick:0, accel:0] ];
	}

	// デストラクタ
	function finalize()
	{
//		invalidate vals;
	}

	function addPath(relval, tick, accel)
	{
		var pre = vals[vals.count-1];

		// relvalだけは、ここに渡される時には相対値になっている
		tick  = (tick  != "") ? tick  : pre.reltick
						- vals[vals.count-2].reltick;
		accel = (accel != "") ? accel : pre.accel;

		vals.add( %[
			relval:real(relval),
			reltick:(pre.reltick + real(tick)),
			accel:real(accel)
		] );
	}

	function clearPath()
	{
		vals.count = 1;	// 最初の一つを残して削除
	}

	// reltickが処理可能な時間か(start/endの範囲に収まっているか)
	function isValidRelTick(reltick)
	{
		var lastreltick = vals[vals.count-1].reltick;
		return(0 <= reltick && reltick <= lastreltick);
	}

	function getLastRelVal()
	{
		return(vals[vals.count-1].relval);
	}

	function getLastRelTick()
	{
		return(vals[vals.count-1].reltick);
	}

	function getCurrentIdx(reltick)
	{
		if(reltick < 0)
			return(0);			// 小さいほうに範囲外
		var idx;
		for(idx = 1; idx < vals.count; idx++)	// 昇順必須(1に注意)
			if(reltick <= vals[idx].reltick)
				return(idx);
		return(vals.count-1);			// 大きいほうに範囲外
	}

	function getCurrentRelVal(reltick)
	{
		var idx      = getCurrentIdx(reltick);
		if(idx == 0)	// 固定値の場合はidxが0になる
			return 0;
		var cur	     = vals[idx];
		var difftick = cur.reltick - vals[idx-1].reltick;
		var diffval  = cur.relval  - vals[idx-1].relval;
		var per      = (reltick - vals[idx-1].reltick)/difftick;
		// per = パーセント, 0～1.0
		if(cur.accel > 1)		// 下弦(最初遅く徐々に早く)
			per = Math.pow(per, cur.accel);
		else if(cur.accel < -1) {	// 上弦(最初早く徐々に遅く)
			per = 1.0 - per;
			per = Math.pow(per, -cur.accel);
			per = 1.0 - per;
		}
		return(per*diffval + vals[idx-1].relval);
	}

	// コピーする
	function assign(src)
	{
		vals.assignStruct(src.vals);
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = %[];
		dic.vals = [];
		dic.vals.assignStruct(vals);
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if(dic === void)
			return;
		vals.assignStruct(dic.vals);
	}

}



// 補間用エレメント(相対値のみ・初期値は0から開始・ループあり)
class RelLoopInterpolationElement extends RelInterpolationElement
{
	var loop = 1;		// loop count(0で無限ループ)

	function RelLoopInterpolationElement(path=void, loop=1)
	{
		super.InterpolationElement();
		this.setRelValues(path, loop);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// 値を設定する。pathの例は、(数値,所要時間(ms),加速度)一組。
	function setRelValues(path=void, loop=1)
	{
		this.loop = loop;
		if(path === void)
			return;
		clearPath();
		var preval = "0";
		var a = path.split( "()," );	// 注意！5の倍数でないと落ちる
		for(var i = 0; i < a.count; i += 5) {	// 昇順でないとダメ
			var val = (a[i+1] != "") ? a[i+1] : preval;
			preval = val;
			if(val[0] == 'r')	// val!=""は保証されてる
				val = real(val.substr(1))+super.getLastRelVal();
			else
				val = real(val);
			addPath(val, a[i+2], a[i+3]);
		}
	}

	// loopの外からの書き換え用に。
	function setLoop(loop = 1)
	{
		this.loop = loop;
	}

	// 最後のRelTickを得る
	function getLastRelTick()
	{
		if(loop == 0)
			return +Infinity;
		return(loop*super.getLastRelTick());
	}

	// 最後のRelValを得る
	function getLastRelVal()
	{
		return(loop*super.getLastRelVal());
	}

	// reltickに対するループカウント(0～)を返す。範囲外なら-1。
	function getRelLoopCount(reltick)
	{
		if (!isValidRelTick(reltick))
			return -1;
		if (reltick == 0)
			return 0;
		return int((reltick-1)/super.getLastRelTick()); // -1にチュウイ
	}

	// current(現在の位置)を得る
	function getCurrentRelVal(reltick)
	{
		if(reltick < 0)				// 範囲より小さい
			return(0);
		if(getLastRelTick() < reltick)		// 範囲外(かつデカい)
			return(getLastRelVal());

		var lp = getRelLoopCount(reltick);
		var val = super.getCurrentRelVal(reltick
						 - lp*super.getLastRelTick());
		val += lp*super.getLastRelVal();
		return( val );
	}

	// reltickが処理可能な時間か(start/endの範囲に収まっているか)
	function isValidRelTick(reltick)
	{
		var lastreltick = getLastRelTick();
		return(0 <= reltick && reltick <= lastreltick);
	}

	// 処理が終わるまでにかかる時間を返す(もう過ぎてる場合は-の値を)
	function toFinishRelTick(reltick)
	{
		var ret = getLastRelTick() - reltick;
		return(ret);
	}

	// コピーする
	function assign(src)
	{
		super.assign(src);
		loop = src.loop;
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = super.store();
		dic.loop = loop;
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if(dic === void)
			return;
		super.restore(dic);
		loop		= dic.loop;
	}
}



// 補間用エレメント(絶対値あり)
class Interpolation extends RelLoopInterpolationElement
{
	var initval;		// 初期値。一度設定されたら変更されない。
	var inittick;		// 開始時間。pauseしない限り変更されない

	function Interpolation(val=0, tick=System.getTickCount(), path=void, loop=1)
	{
		super.RelLoopInterpolationElement(path, loop);
		initval = val;
		inittick = tick;
	}

	// デストラクタ
	function finalize()
	{
		super.finalize();
	}

	// 値を設定する。pathの例は、(数値,所要時間(ms),加速度)一組。
	function setValues(val=0, tick=System.getTickCount(), path=void, loop=1)
 	{
 		super.setRelValues(path, loop);
		initval = val;
		inittick = tick;
	}

	// 現在の(開始)時間を設定するthis.initx = initx;
	function setInitVal(val)
	{
		initval = val;
	}
	// 現在の(開始)時間を設定するthis.initx = initx;
	function setInitTick(tick=System.getTimeCount())
	{
		inittick = tick;
	}

	// current(現在の位置)を得る
	function getCurrentValue(tick=System.getTickCount())
	{
		return(initval + super.getCurrentRelVal(tick-inittick));
	}

	// last(最終の位置)を得る
	function getLastValue()
	{
		return(initval + super.getLastRelVal());
	}

	// last(最終の時間)を得る
	function getLastTick()
	{
		return(initval + super.getLastRelTick());
	}

	// tickが処理可能な時間か(start/endの範囲に収まっているか)
	function isValidTick(tick=System.getTickCount())
	{
		return isValidRelTick(tick - inittick);
	}

	// 処理が終わるまでにかかる時間を返す
	function toFinishTick(tick=System.getTimeCount())
	{
		return(toFinishRelTick(tick - inittick));
	}

	// コピーする
	function assign(src)
	{
		initval		= src.initval;
		inittick	= src.inittick;
		super.assign(src);
	}

	// セーブ時に上から呼ばれる
	function store(curtick = System.getTickCount())
	{
		var dic = super.store();
		dic.initval	= initval;
		dic.idxtick	= curtick - inittick;
		return(dic);
	}

	// ロード時に上から呼ばれる
	function restore(dic, curtick = System.getTickCount())
	{
		if(dic === void)
			return;
		super.restore(dic);
		initval		= dic.initval;
		inittick	= curtick - dic.idxtick;
	}
}


[endscript]

[return]
