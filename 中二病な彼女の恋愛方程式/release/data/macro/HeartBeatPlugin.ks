@if exp="typeof global.heartbeatplugin_object == 'undefined'"
@iscript

//*-----------------------------------------------------------------------------------------*
//
//FileName		;	HeartBeatPlugin.ks
//
//Version		:	1.01
//
//Description	:	心臓の鼓動を再現するプラグイン
//					
//					Copyright (C)2006 西ノ森 蒼水
//					改変・再配布自由です。
//
//					ご使用にあたってはreadme.txtおよび、HeartBeatPlugin取扱説明書.html
//					をよくお読みください。
//
//			タグ名 heartbeat
//			鼓動エフェクトを実行します。
//
//			属性		必須？	説明　
//			storage		○	鼓動させる画像を指定
//			backstorage	×	トランジション後に表示させる画像を指定
//			laynum		×	いっしょに鼓動させる前衛レイヤー数
//								例えば、"1"と指定すると、layer0の画像がいっしょに鼓動します。
//			time		×	エフェクトする時間
//			color		×	指定した画像を塗りつぶす色を指定(例 0x000000)
//			sound		×	心臓の音を鳴らすかどうかを指定
//								(例 sound="on" or "off" sound="on"で再生、sound="off"で再生しない
//			soundfile	×	再生するサウンドファイルを指定
//			opacity		×	stlayの透明度を設定
//			repeat		×	指定した回数だけ連続鼓動
//			loop		×	hbendタグ実行までひたすら鼓動を繰り返す。 栞保存にも対応
//			delay		×	鼓動と鼓動の間の時間を設定 repaet属性、またはloop属性の
//							設定がある場合のみ反映。
//			xblur		×	ブラーの縦方向の範囲を指定します。
//			yblur		×	ブラーの横方向の範囲を指定します。
//			ud_abs		×	アップダウンレイヤーの絶対値
//			ova_abs		×	オーバーレイレイヤーの絶対値
//
//			タグ名 whb
//			エフェクト終了まで待機します。
//
//			属性  なし
//
//
//			タグ名 hbend
//			鼓動エフェクトを強制終了します。
//
//			属性 なし
//
//			＊注意
//			一応トランジションに対応していますが、値によってはうまくトランジションされない
//			場合があります。
//*---------------------------------------------------------------------------------------*

class HeartBeatPlugin extends KAGPlugin
{
	var stlay;				// コピーされるレイヤー
	var ndlay;				// コピーするレイヤー
	var balay;				// 上下するレイヤー
	
	var stlay_back;			// 裏レイヤー
	var ndlay_back;			// 裏レイヤー
	var balay_back;			// 裏レイヤー
	
	var window;				// ウィンドウオブジェクトへの参照

	var HBleft = 0;			// 最初の左端位置
	var HBtop = 0;			// 最初の上端位置
	var HBwidth = 0;		// 最初の幅
	var HBheight = 0;		// 最初の高さ
	var HBopa = 0;			// 最初の不透明度
	
	var Fleft = 0;			// 最終左端位置
	var Ftop = 0;			// 最終上端位置
	var Fwidth = 0;			//最終幅
	var Fheigh = 0;			//最終高さ
	var Fopa = 0;			// 最終不透明度
	
	var storage;			// 画像ファイル
	var storage_back;		// 裏側の画像ファイル
	var sound;				// 音を再生するか
	var soundfile;			// 再生するファイル名
	var color;				// 塗りつぶす色
	
	var xvalue = 240;		// x方向の増加量 →廃止 設定したいかたは自己責任で（´Д｀；）
	var yvalue = 180;		// y方向の増加量 →廃止 設定したいかたは自己責任で（；´Д｀）
	
	var ndlays = [];		// いっしょに拡大させるコピー元レイヤー
	var stlays = [];		// いっしょに拡大されるコピー先レイヤー
	var laynum;				// いっしょに拡大される前景レイヤー数
	
    var time = 0;			// 時間

	var laypos;				// レイヤーをどれくらい動かすか

	var StartTick;			// スタートした時間。
    var tmpTick;			// balay用のTick
    var nextStop;			// 次、止まります。
    
    var base;				// kag.fore.baseのこと。
    var base_back;			// kag.back.baseのこと。
    
    var xblur;				// 横方向のブラー範囲
    var yblur;				// 縦方向のブラー範囲
    
    var balay_abs = 10000-1;	// アップダウンレイヤーの絶対値
    var stlay_abs = 11000-1;	// オーバーレイレイヤーの絶対値
    
    var repeat;					// 繰り返す回数
    var hbloop;					// ループするか。
    var num = 0;				// 繰り返した回数
    var delaytime = 0;			// リピートまでの待ち時間
    var delaytimer;				// 待ちを行うタイマー
    
    var doing = false;			// 鼓動しているか。




	//*----------------------------------------------------------------*
	//Name		:	HeartBeatPlugin
	//
	//Purpose	:	コンストラクタ
	//				オブジェクトが生成されたときに呼ばれる
	//
	//in		:	window	 (ウィンドウオブジェクト)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function HeartBeatPlugin(window) // コンストラクタ
	{
		super.KAGPlugin();
		this.window = window;
		
	}




	//*----------------------------------------------------------------*
	//Name		:	finalize
	//
	//Purpose	:	デストラクタ
	//				オブジェクトが消滅したときに呼ばれる
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function finalize() // デストラクタ
	{
		End();
		super.finalize(...);
	}




	//*----------------------------------------------------------------*
	//Name		:	show
	//
	//Purpose	:	変数にユーザー設定値を代入する
	//				heartbeatタグから呼ばれる
	//				栞からロードされた場合は呼ばれない。
	//
	//in		:	elm	(属性として設定された値)
	//
	//out		:	それぞれの変数
	//*----------------------------------------------------------------*
	function show(elm)
	{
		
		storage = elm.storage; // ロードする画像
		storage_back = elm.backstorage; // ロードする裏ページ画像
		
		if(elm.time != void) // エフェクト時間設定
		{
			time = elm.time;
		}
		else
		{
			time = 500;
		}
		
		if(elm.color != void) // レイヤーにつける色
		{
			color = elm.color;
		}
		else
		{
			color = void;
		}
		
		if(elm.sound != void) // 音を鳴らしますか？
		{
			sound = elm.sound;
		}
		else
		{
			sound = void;
		}
		
		if(elm.soundfile != void && elm.sound == "on") // サウンドファイル名
		{
			soundfile = elm.soundfile;
		}
		else
		{
			soundfile = void;
		}
		
		if(elm.opacity != void) // レイヤー透明度
		{
			HBopa = (int)elm.opacity;
		}
		else
		{
			HBopa = 255;
		}
		
		if(elm.repeat != void) // 何回繰り返しますか？
		{
			repeat = elm.repeat;
		}
		else
		{
			repeat = 1;
		}
		
		if(elm.delay != void) // 鼓動と鼓動の間の待ち時間
		{
			delaytime = elm.delay;
		}
		else
		{
			delaytime = void;
		}
		
		if(elm.loop != void) // 無限に繰り返します。
		{
			hbloop = elm.loop;
		}
		else
		{
			hbloop = void;
		}
		
		if(elm.xblur != void && elm.yblur != void) // ブラー範囲を設定
		{
			xblur = elm.xblur;
			yblur = elm.yblur;
		}
		else
		{
			xblur = 6;
			yblur = 6;
		}
		
		if(elm.laynum != void) // 同時に鼓動させるレイヤー枚数
		{
			laynum = (int)elm.laynum;
		}
		else
		{
			laynum = void;
		}
		
		if(elm.ova_abs != void) // オーバーレイレイヤーの絶対値
		{
			stlay_abs = elm.ova_abs;
		}
		
		if(elm.ud_abs != void) // アップダウンレイヤーの絶対値
		{
			balay_abs = elm.ud_abs;
		}
		
		//増加量
		xvalue = 240;
		yvalue = 180;
		
		// エフェクト実行
		StartHB(storage, storage_back, time, color, sound, soundfile, HBopa, repeat, delaytime, hbloop, xblur, yblur, xvalue, yvalue, laynum, balay_abs, stlay_abs);

	}




	//*----------------------------------------------------------------*
	//Name		:	StartHB
	//
	//Purpose	:	鼓動エフェクトを開始する
	//				コンティニューハンドラ実行
	//
	//in		:	各属性の変数
	//
	//out		:	なし
	//*---------------------------------------------------------------*
	function StartHB(storage, storage_back, time, color, sound, soundfile, HBopa, repeat, delaytime, hbloop, xblur, yblur, xvalue, yvalue, laynum, balay_abs, stlay_abs)
	{
		base = window.fore.base;
		base_back = window.back.base;
		
		HBwidth = base.imageWidth;
		HBheight = base.imageHeight;
		Fleft -= xvalue / 2;
		Ftop -= yvalue / 2;
		Fwidth = base.imageWidth + xvalue;	//最終幅
		Fheigh = base.imageHeight + yvalue; //最終高さ
		
		// レイヤー作成
		CreateLay(storage, storage_back, color, xblur, yblur, laynum, balay_abs, stlay_abs); // レイヤー作成
		
		
		// レイヤー表示を有効にする
		balay.visible = true;
		stlay.visible = true;
		balay_back.visible = true;
		stlay_back.visible = true;
		
		// タイマー作成
		delaytimer = new Timer(ReStart,'');
		delaytimer.interval = delaytime;
		delaytimer.enabled = false;
		
		laypos = 0;
		
		// サウンドの設定がある場合、SEを再生する。
		if(sound == 'on')
		{
			kag.se[0].play(%[storage: soundfile, loop: false]);
		}
		
		// コンティニューハンドラを登録
		StartTick = System.getTickCount();
		System.addContinuousHandler(handler);
	}




	//*----------------------------------------------------------------*
	//Name		:	CreateLay
	//
	//Purpose	:	表レイヤーを作成する
	//				CreateBack関数実行
	//
	//in		:	storage			(表ページの画像ファイル)
	//			:	storage_back	(裏ページの画像ファイル)
	//			:	color			(レイヤーの色)
	//			:	xblur			(横方向のぼかし度)
	//			:	yblur			(縦方向のぼかし度)
	//			:	laynum			(エフェクトをかける前景レイヤー数)
	//			:	balay_abs		(アップダウンレイヤーの絶対値)
	//			:	stlay_abs 		(オーバーレイレイヤーの絶対値)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function CreateLay(storage, storage_back, color, xblur, yblur, laynum, balay_abs, stlay_abs)
	{
		if(balay == void) // 上下するレイヤーを作成
		{
			balay = new global.Layer(window, base);
			with(balay)
			{
				.setSize(base.imageWidth, base.imageHeight);// レイヤーサイズをkag.fore.baseにあわせる
				.loadImages(storage);
				.setSizeToImageSize();
				.absolute = balay_abs; // レイヤーの絶対値 メッセージレイヤーよりもレイヤー０よりも上
				.focusable = false; // フォーカスできないように。
				.hitType = htMask;
				.hitThreshold = 256; // マウスメッセージは全域透過
			}
		}

		if(stlay == void) // 拡大コピー先レイヤーを作成
		{
			stlay = new global.Layer(window, base);
			with(stlay)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.absolute = stlay_abs;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256;// マウスメッセージは全域透過
			}
		}


		if(ndlay == void) // 重ね合わせる側のレイヤー(コピー元)
		{
			ndlay = new global.Layer(window, base);
			with(ndlay)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.loadImages(storage);
				.absolute = 12000-1;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // マウスメッセージは全域透過
			}
		}
		
		if(laynum != void) // コピーするレイヤーを作成
		{
			for(var i = 0; i < laynum; i++)
			{
				var Lays = kag.fore.layers[i];
				if(Lays != void)
				{
					//オーバーレイレイヤーに拡大コピー
					ndlay.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
					balay.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
				}
			}
		}
		
		if(color != void)
		{
			ndlay.colorRect(0, 0, base.imageWidth, base.imageHeight, color, 100); // 色が指定されていた場合は塗りつぶす
		}
			
		ndlay.doBoxBlur(xblur, yblur); // ブラーをかける
		
		CreateBack();

	}




	//*----------------------------------------------------------------*
	//Name		:	CreateBack
	//
	//Purpose	:	裏レイヤーを作成する
	//
	//in		:	なし
	//
	//out		: 	なし
	//*----------------------------------------------------------------*
	function CreateBack() // 裏レイヤーを作成
	{
		if(balay_back == void) // 上下するレイヤーの裏レイヤーを作成
		{
			balay_back = new global.Layer(window, base_back);
			with(balay_back)
			{
				.setSize(base_back.imageWidth, base_back.imageHeight); // レイヤーサイズをkag.back.baseにあわせる
				.absolute = balay_abs; // レイヤーの絶対値
				.focusable = false; // フォーカスできないように。
				.hitType = htMask;
				.hitThreshold = 256; // マウスメッセージは全域透過
			}
			
			if(storage_back != void)
			{
				balay_back.loadImages(storage_back);
			}
			else // 指定がないときは、表レイヤーと同じ画像をロード
			{
				balay_back.loadImages(storage);
			}
		}
		
		if(ndlay_back === void) // 重ね合わせる側のレイヤー(コピー元)
		{
			ndlay_back = new global.Layer(window, base_back);
			with(ndlay_back)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.setSizeToImageSize();
				.absolute = 12000-1;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // マウスメッセージは全域透過
			}
			
			if(storage_back != void)
			{
				ndlay_back.loadImages(storage_back);
			}
			else // 指定がないときは、表レイヤーと同じ画像をロード
			{
				ndlay_back.loadImages(storage);
			}
		}

		if(stlay_back == void) // 拡大コピー先レイヤーの裏レイヤーを作成
		{
			stlay_back = new global.Layer(window, base_back);
			with(stlay_back)
			{
				.setSize(base_back.imageWidth, base_back.imageHeight);
				.absolute = stlay_abs;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // マウスメッセージは全域透過
			}
		}
		
		if(laynum != void) // コピーするレイヤーを作成
		{
			for(var i = 0; i < laynum; i++)
			{
				var Lays = kag.back.layers[i];
				if(Lays != void)
				{
					ndlay_back.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
					balay_back.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);				
				}
			}
		}
		
		if(color != void)
		{
			ndlay_back.colorRect(0, 0, base.imageWidth, base.imageHeight, color, 100); // 色が指定されていた場合は塗りつぶす
		}
			
		ndlay_back.doBoxBlur(xblur, yblur); // ブラーをかける

	}




	//*----------------------------------------------------------------*
	//Name		:	handler
	//
	//Purpose	:	コンティニューハンドラから呼ばれる
	//
	//in		:	tick
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function handler(tick) // continuousハンドラで呼ばれる。
	{
		if(nextStop)
		{
			endHB();
			return;
		}
		
		doing = true; // 鼓動中です。
				
		// 時間を得る
		tick = System.getTickCount();
		var tm = tick - StartTick;
		var tpm = tm; // move関数で使用
		tm /= time;
		
		if(tm >= 1)
		{
			nextStop = true;
			tm = 1;
		}
		
		// それぞれの位置を計算
		var Mleft = (int)((Fleft - HBleft) * tm + HBleft); 
		var Mtop = (int)((Ftop - HBtop) * tm + HBtop);
		var Mwidth = (int)((Fwidth - HBwidth) * tm + HBwidth);
		var Mheight = (int)((Fheigh - HBheight) * tm + HBheight);
		var Mopa = (int)((Fopa - HBopa) * tm + HBopa);
		
		move(Mleft, Mtop, Mwidth, Mheight, Mopa, tm, tpm); // レイヤー拡大移動
	}




	//*----------------------------------------------------------------*
	//Name		:	move
	//
	//Purpose	:	レイヤー移動と拡大縮小表示
	//				handler関数で計算された値で実行する
	//
	//in		:	Mleft	(エフェクト中のレイヤーの左端位置)
	//				Mtop	(エフェクト中のレイヤーの上端位置)
	//				Mwidoth	(エフェクト中のレイヤーの幅)
	//				Mheight	(エフェクト中のレイヤーの高さ)
	//				Mope	(エフェクト中の透明度)
	//				tm 		(時間計算の基となる値)
	//				tpm		(現在時間)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function move(Mleft, Mtop, Mwidth, Mheight, Mopa, tm, tpm)
	{
		var HTime = time / 2;
		var laypos;
		var lp = -15;
		var sp = 0;
		
	    if(tpm > HTime) // 上下するレイヤーの現在位置を計算 timeの半分を過ぎたら下がる
		{
		    laypos = (int)((sp - lp) *tm + lp);
		}
		else // 上っていく
		{
		    laypos = (int)((lp - sp) * tm + sp);
		}
		
		balay.setPos(0, laypos);
		balay_back.setPos(0, laypos);// 裏側も移動
		
		stlay.fillRect(0, 0, base.imageWidth, base.imageHeight, 0x00000000); // いったんクリアー
		stlay_back.fillRect(0, 0, base.imageWidth, base.imageHeight, 0x00000000); // 裏側もいったんクリアー
		
		//拡大コピー 旧式のstretchPileを使っているのは以前のヴァージョンとの互換のため
		stlay.stretchPile(Mleft, Mtop, Mwidth, Mheight, ndlay, 0, 0, base.imageWidth, base.imageHeight, Mopa, stNearest);
		
		//裏側も拡大コピー
		stlay_back.stretchPile(Mleft, Mtop, Mwidth, Mheight, ndlay_back, 0, 0, base.imageWidth, base.imageHeight, Mopa, stNearest);
	}




	//*----------------------------------------------------------------*
	//Name		:	endHB
	//
	//Purpose	:	エフェクトが終了した直後に呼ばれる
	//				ループが有効場合は、ループ処理をする
	//				delaytimer実行
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function endHB()
	{
		System.removeContinuousHandler(handler);
		
		num ++; // numにインクリメント
			
		if(hbloop == "true" || num < repeat) // loopする
		{
			laypos = 0;
			
			delaytimer.enabled = true;
		}
		else // 停止
		{
			doing = false; // 鼓動停止
			Inv();

			//変数をクリア
			clear();
			num = 0; // 回数をクリア
			kag.conductor.trigger("HB_finished"); // トリガーを引く
		}

	}




	//*----------------------------------------------------------------*
	//Name		:	End
	//
	//Purpose	:	hbendタグから呼ばれる
	//				エフェクトを強制終了する
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function End()
	{
		if(doing)
		{
			System.removeContinuousHandler(handler);
		}
		
		Inv();
		clear();
		num = 0;
		hbloop = false;
		kag.conductor.trigger("HB_finished"); // トリガーを引く
		
	}




	//*----------------------------------------------------------------*
	//Name		:	Inv
	//
	//Purpose	:	使用していたレイヤー、タイマーオブジェクトを
	//				すべて破棄する
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function Inv()
	{
		//使用していたレイヤをクリア
		invalidate balay if balay != void;
		invalidate stlay if stlay != void;
		invalidate ndlay if ndlay != void;
		
		// 裏レイヤーを無効化
		invalidate balay_back if balay_back != void;
		invalidate stlay_back if stlay_back != void;
		invalidate ndlay_back if ndlay_back != void;

		// レイヤーをvoidに設定
		balay = void if balay != void;
		stlay = void if stlay != void;
		ndlay = void if ndlay != void;
		
		// 裏レイヤーをvoidに設定
		balay_back = void if balay_back != void;
		stlay_back = void if stlay_back != void;
		ndlay_back = void if ndlay_back != void;
		
		// タイマーを破棄
		invalidate delaytimer if delaytimer != void;
		delaytimer = void if delaytimer != void;
	}




	//*----------------------------------------------------------------*
	//Name		:	ReStart
	//
	//Purpose	:	ループが有効の場合、delaytimerから呼ばれる
	//				コンティニューハンドラを再登録
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function ReStart()
	{
		// タイマーを停止
		delaytimer.enabled = false;
		
		clear();
		
		Fleft -= xvalue / 2;
		Ftop -= yvalue / 2;
		
		// サウンドの設定がある場合、SEを再生する
		if(sound == 'on')
		{
			kag.se[0].play(%[storage: soundfile, loop: false]);
		}
		
		// コンティニューハンドラを再登録
		System.addContinuousHandler(handler);
	}




	//*----------------------------------------------------------------*
	//Name		:	clear
	//
	//Purpose	:	変数の値を初期化する
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function clear() // 変数をクリアーする
	{
		nextStop = false;
		Fleft = 0;
		Ftop = 0;
		//laynum = 0; // コピーする前衛レイヤー数をクリア
        StartTick = System.getTickCount();
	}




	//*----------------------------------------------------------------*
	//Name		:	onStore
	//
	//Purpose	:	栞の保存されるときに呼ばれる
	//
	//in		:	f		(保存先の栞データを表す辞書配列)
	//						Dictionaryクラスのオブジェクト
	//
	//				elm		(現行バージョンでは使用されていない 常にvoid)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function onStore(f, elm)
	{
		// 	栞に保存するとき hbloopがtrueなら保存する。
		var dic = f.hb = %[];
		if(hbloop == "true")
		{
			with(dic)
			{
				.storage = storage;
				.time = time;
				.color = color;
				.sound = sound;
				.soundfile = soundfile;
				.opacity = HBopa;
				.repeat = repeat;
				.delaytime = delaytime;
				.hbloop = hbloop;
				.xblur = xblur;
				.yblur = yblur;
				.xvalue = xvalue;
				.yvalue = yvalue;
				.storage_back = storage_back;
				.laynum = laynum;
				.balay_abs = balay_abs;
				.stlay_abs = stlay_abs;
			}
		}
		
	}




	//*----------------------------------------------------------------*
	//Name		:	onRestore
	//
	//Purpose	:	栞を読み出すときに呼ばれる
	//
	//in		:	f		(保存先の栞データを表す辞書配列)
	//						Dictionaryクラスのオブジェクト
	//
	//				clear	(メッセージレイヤーをクリアーするか)
	//						tempload時のみfalse
	//
	//				elm		(tempload時のオプション)
	//						tempload時以外は常にvoid,temploadのときは
	//						Dictionaryクラスのオブジェクト
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		var dic = f.hb;
		if(dic === void || dic.hbloop === void)
		{
			// エフェクト未実行
			End();
		}
		else if(dic != void && dic.hbloop == "true")
		{
			/* 変数をそれぞれ読み出す */
			storage = dic.storage;
			time = dic.time;
			sound = dic.sound;
			soundfile = dic.soundfile;
			HBopa = dic.opacity;
			repeat = dic.repeat;
			delaytime = dic.delaytime;
			hbloop = dic.hbloop;
			xvalue = dic.xvalue;
			yvalue = dic.yvalue;
			xblur = dic.xblur;
			yblur = dic.yblur;
			storage_back = dic.storage_back;
			laynum = dic.laynum;
			balay_abs = dic.balay_abs;
			stlay_abs = dic.stlay_abs;
			
			// loopがtrue
			StartHB(dic.storage, dic.storage_back, dic.time, dic.color, dic.sound, dic.soundfile, dic.opacity, dic.repeat, dic.delaytime, dic.hbloop, dic.xblur, dic.yblur, dic.xvalue, dic.yvalue, dic.laynum, dic.balay_abs, dic.stlay_abs);
			
		}
	}




	//*----------------------------------------------------------------*
	//Name		:	onStableStateChanged
	//
	//Purpose	:	「安定」あるいは「走行中」の状態が変わったときに
	//				呼ばれる。
	//
	//in		:	state	(安定のときはtrue、走行中のときはfalse)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function onStableStateChanged(stable)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onMessageHiddenStateChanged
	//
	//Purpose	:	メッセージレイヤーが隠れるときと、その状態から抜ける
	//				ときに呼ばれる。
	//
	//in		:	hidden	(メッセージレイヤーが隠されるときに”真”、
	//				 再び現れるときに”偽”となる。)
	//
	//out		:	なし
	//-----------------------------------------------------------------*
	function onMessageHiddenStateChanged(hidden)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onCopyLayer
	//
	//Purpose	:	「backlay」タグあるいは「forelay」タグが実行された
	//				とき、あるいはトランジション終了時に、裏画面の情報を
	//				表画面にコピーする必要があるときに呼ばれる。
	//
	//in		:	toback	(「表→裏」のときに”真”、
	//						「裏→表」のときに”偽”になる。)
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function onCopyLayer(toback)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onExchangeForeBack
	//
	//Purpose	: 	トランジションの終了によって、裏画面と表画面の情報を
	//				入れ替える必要があるときに呼ばれる。
	//				このメソッドが呼ばれた時点でレイヤーのツリー構造は
	//				変わっている。
	//
	//in		:	なし
	//
	//out		:	なし
	//-----------------------------------------------------------------*
	function onExchangeForeBack()
	{
		var stlay_temp = stlay;
		var balay_temp = balay;
		var ndlay_temp = ndlay;
		
		stlay = stlay_back;
		balay = balay_back;
		ndlay = ndlay_back;
		
		stlay_back = stlay_temp;
		balay_back = balay_temp;
		ndlay_back = ndlay_temp;
	}




	//*----------------------------------------------------------------*
	//Name		:	onSaveSystemVariables
	//
	//Purpose	:	システム変数に情報を確実に保存するためのタイミングを
	//				提供する。
	//				この関数内で「kag.scflags」に何かメンバをつくり、そこに情報を
	//				記録しておくことができる。
	//				「kag.scflags」は辞書配列オブジェクトである。
	//
	//in		:	なし
	//
	//out		:	なし
	//*----------------------------------------------------------------*
	function onSaveSystemVariables()
	{
	}


}


// プラグインオブジェクトを作成し、登録する
kag.addPlugin(global.heartbeatplugin_object = new HeartBeatPlugin(kag));


//----- TJSスクリプトここまで -----------------------------------------*
@endscript
@endif

;---------------------------------------------------------------------------*
;マクロ登録
;---------------------------------------------------------------------------*
@macro name=heartbeat
@eval cond="kag.skipMode<=1" exp="heartbeatplugin_object.show(mp)"
@endmacro

@macro name=whb
@if exp="kag.skipMode<=1"
@waittrig name="HB_finished"
@endif
@endmacro

@macro name=hbend
@eval exp="heartbeatplugin_object.End()"
@endmacro

@return
