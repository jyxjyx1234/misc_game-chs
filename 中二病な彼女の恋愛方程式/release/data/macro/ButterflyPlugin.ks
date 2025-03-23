[return cond="typeof global.Butterfly != 'undefined'"]

[call storage=KAGLayersPlugin.ks]

[iscript]

// 蝶一匹クラス
// これがLayerクラスを継承してないのは、コンストラクタ中で image=new Layer()が
// できなくなるため。「呼び出そうとした機能は未実装です」って何だよ！
class Butterfly {
	var window;		// ウインドウ (=殆どkag)
	var parent;		// 親(例：kag.fore.base)
	var timer;		// アニメーション用タイマ
	var layer;		// 蝶描画用レイヤ
	var image;		// イメージ保存用レイヤ

	var name;		// 蝶のキー(名前)
	var storage = "蝶羽";	// ファイル名
	var wing_cur;		// 現在の羽ばたき角度
	var wing_from  = 10.0;	// 羽ばたき角度 from。全閉で0、全開で180
	var wing_to    = 160.0;	// 羽ばたき角度 to
	var wing_speed = 30;	// 羽ばたきスピード(°)
	var rotx       = 0.0;	// X軸回転(Y軸方向の楕円軌道のツブれ具合)
	var roty       = 0.0;	// Y軸回転(羽ばたきの開始位置)
	var rotz       = 0.0;	// Z軸回転(画面上の傾き具合)

	// ちなみに、蝶の座標は「中心部(胴体中央)を基準とする」ことに注意。
	// 0,0 に表示すると、画面左上に、右下1/4が見える蝶が表示される。
	// z は、z=0 で 1:1 に見え、z=100 で 1:1/2 に見える
	var x  = 0.0, y  = 0.0, z  = 0.0; // 座標(実数で持つためにここで定義)
	var vx = 0.0, vy = 0.0, vz = 0.0;	// 速度
	var rvx= 0.0, rvy= 0.0, rvz= 0.0;	// 速度ランダム幅
	var ax = 0.0, ay = 0.0, az = 0.0;	// 加速度
	var rax= 0.0, ray= 0.0, raz= 0.0;	// 加速度ランダム幅

	var patay = 250;			// パタパタで上下に動く範囲

	// コンストラクタ
	function Butterfly(win, parent, name='all', elm)
	{
		window = win;
		this.parent = parent;
		this.name = name;

		// 描画レイヤを設定
		layer = new Layer(window, parent);
		layer.absolute = 1000000-1000;	// メッセージレイヤの下

		// 蝶の羽画像を読み込む
		image = new Layer(window, parent);
		image.loadImages(storage);
		image.setSizeToImageSize();

		// オプション指定。早い段階で。
		setOptions(elm);

		// 初期値は範囲内でランダム
		wing_cur = wing_from + Math.random()*(wing_to-wing_from);

		// タイマ定義
		timer = new Timer(timerCallback, '');
		timer.interval = 66.6666;  // 66.6666msec = 1/15秒
		timer.enabled = true;
	}

	// デストラクタ
	function finalize()
	{
		invalidate timer;
		invalidate image;
		invalidate layer;
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		storage	   = elm.storage          if (elm.storage    !== void);

		wing_cur   = real(elm.wing_cur)   if (elm.wing_cur   !== void);
		wing_from  = real(elm.wing_from)  if (elm.wing_from  !== void);
		wing_to    = real(elm.wing_to)    if (elm.wing_to    !== void);
		wing_speed = real(elm.wing_speed) if (elm.wing_speed !== void);

		rotx       = real(elm.rotx)       if (elm.rotx       !== void);
		roty       = real(elm.roty)       if (elm.roty       !== void);
		rotz       = real(elm.rotz)       if (elm.rotz       !== void);

		patay      = real(elm.patay)      if (elm.patay      !== void);

		x = real(elm.x) if (elm.x !== void);
		y = real(elm.y) if (elm.y !== void);
		z = real(elm.z) if (elm.z !== void);
		// px/pyが指定されていたら、「画面上の座標」なので実座標に変換
		x = (real(elm.px)*(100+z))/100 if (elm.px !== void);
		y = (real(elm.py)*(100+z))/100 if (elm.py !== void);

		vx = real(elm.vx) if (elm.vx !== void);
		vy = real(elm.vy) if (elm.vy !== void);
		vz = real(elm.vz) if (elm.vz !== void);

		rvx = real(elm.rvx) if (elm.rvx !== void);
		rvy = real(elm.rvy) if (elm.rvy !== void);
		rvz = real(elm.rvz) if (elm.rvz !== void);

		ax = real(elm.ax) if (elm.ax !== void);
		ay = real(elm.ay) if (elm.ay !== void);
		az = real(elm.az) if (elm.az !== void);

		rax = real(elm.rax) if (elm.rax !== void);
		ray = real(elm.ray) if (elm.ray !== void);
		raz = real(elm.raz) if (elm.raz !== void);

		layer.absolute = +elm.absolute if (elm.absolute !== void);
	}

	// 座標設定
	function setPos()
	{
		var cy = y + Math.cos(wing_cur*Math.PI/180)*patay;
		var px = 100*x/(100+z), py = 100*cy/(100+z);
		layer.setPos(px-layer.width/2, py-layer.height/2);
	}

	// 羽描画(affineCopy()だと片羽を描く時に矩形が塗り潰されるため、Pile)
	function drawAWing(p)
	{
		layer.affinePile(image, 0,0,
				 image.imageWidth,image.imageHeight,
				 false,
				 p[0],p[1],p[2],p[3],p[4],p[5],
				 255, stNearest);
	}

	// タイマハンドラ
	function timerCallback()
	{
		var w = image.imageWidth, h = image.imageHeight;
		// 現在の羽ばたき角度(右)
		var rwing_now = real(-wing_cur +roty+90)*Math.PI/180;
		// 現在の羽ばたき角度(左)
		var lwing_now = real( wing_cur +roty+90)*Math.PI/180; 

		// レイヤー左上(原点)からの座標
		var rx =  Math.cos(rwing_now) * w;
		var ry = -Math.sin(rwing_now) * h * Math.sin(rotx*Math.PI/180);
		var lx =  Math.cos(lwing_now) * w;
		var ly = -Math.sin(lwing_now) * h * Math.sin(rotx*Math.PI/180);
		var rry = h + ry;
		var lly = h + ly;

		// z回転が無い場合のaffinePile[A-F], 中心座標のための[6,7]
		var rp = [ rx,ry, 0,0, rx,rry, 0,h/2 ];
		var lp = [ lx,ly, 0,0, lx,lly, 0,h/2 ];

		// z回転を追加
		{
			var zsin = Math.sin(rotz * Math.PI/180);
			var zcos = Math.cos(rotz * Math.PI/180);
			var rp2 = [];
			var lp2 = [];
			for (var i = 0; i < 8; i+=2) {
				rp2[i]    = rp[i]*zcos-rp[i+1]*zsin;
				rp2[i+1]  = rp[i]*zsin+rp[i+1]*zcos;
				lp2[i]    = lp[i]*zcos-lp[i+1]*zsin;
				lp2[i+1]  = lp[i]*zsin+lp[i+1]*zcos;
			}
			rp = rp2;
			lp = lp2;
		}

		var zoom = 100/(100+z);
		// 拡大縮小
		for (var i = 0; i < 8; i++) {
			rp[i] *= zoom;
			lp[i] *= zoom;
		}

		// レイヤの大きさは拡大率によってのみ変化
		var wz = w * zoom, hz = h * zoom;
		// これで十分な大きさ。…のはず。
		var neww = Math.sqrt(Math.pow(wz*2,2) + Math.pow(hz+wz*2,2));
		 // 大きさを設定
		layer.setImageSize((neww<1)?1:neww, (neww<1)?1:neww);
		layer.setSizeToImageSize();

		// 表示先レイヤの位置補正
		var addx = neww/2 - rp[6];
		var addy = neww/2 - rp[7];
		for (var i = 0; i < 8; i+=2) {
			rp[i]   += addx;
			rp[i+1] += addy;
			lp[i]   += addx;
			lp[i+1] += addy;
		}

		// レイヤをクリアして表示
		layer.fillRect(0,0, layer.width,layer.height, 0);
		layer.visible = 1;

		// 羽描画
		if (rwing_now <= 1/2*Math.PI && lwing_now <= 1/2*Math.PI) {
			// 両方 90°(=1/2*PI)より小さい時は、小さい方が上
			if(rwing_now <= lwing_now) {
				drawAWing(rp);
				drawAWing(lp);
			} else {
				drawAWing(lp);
				drawAWing(rp);
			}
		} else if(rwing_now > 1/2*Math.PI && lwing_now > 1/2*Math.PI) {
			// 両方 90°(=1/2*PI)より大きい時は、大きい方が上]
			if(rwing_now <= lwing_now) {
				drawAWing(lp);
				drawAWing(rp);
			} else {
				drawAWing(rp);
				drawAWing(lp);
			}
		} else if (rwing_now <= lwing_now) {
			drawAWing(lp);
			drawAWing(rp);
		} else {
			drawAWing(rp);
			drawAWing(lp);
		}

		// 次の羽ばたき位置を指定
		wing_cur += wing_speed;
		if (wing_cur >= wing_to) {
			wing_speed *= -1;
			wing_cur = wing_to - (wing_cur - wing_to);
		}
		if (wing_cur <= wing_from) {
			wing_speed *= -1;
			wing_cur = wing_from + (wing_from - wing_cur);
		}

		// 座標を設定
		setPos();

		// 次の速度と今回の座標を設定
		x += vx;
		y += vy;
		z += vz;
		vx += ax + (Math.random()*2-1)*rvx;
		vy += ay + (Math.random()*2-1)*rvy;
		vz += az + (Math.random()*2-1)*rvz;
		ax += (Math.random()*2-1)*rax;
		ay += (Math.random()*2-1)*ray;
		az += (Math.random()*2-1)*raz;
	}

	// 画面内に居るかどうか
	function is_inScreen()
	{
		return (window.scWidth         < layer.left ||
			window.scHeight        < layer.top  ||
			layer.left+layer.width < 0          ||
			layer.top+layer.height < 0);
	}

	// コピーする
	function assign(src)
	{
		window          = src.window;
		parent          = src.parent;
		layer.assignImages(src.layer);
//		timer.assign(src.timer); timerにはassing()がないから…いいや
		image.assignImages(src.image);

		name		= src.name;
		storage		= src.storage;
		wing_cur	= src.wing_cur;
		wing_from	= src.wing_from;
		wing_to		= src.wing_to;
		wing_speed	= src.wing_speed;
		rotx		= src.rotx;
		roty		= src.roty;
		rotz		= src.rotz;

		x   = src.x,   y   = src.y,   z   = src.z;
		vx  = src.vx,  vy  = src.vy,  vz  = src.vz;
		rvx = src.rvx, rvy = src.rvy, rvz = src.rvz;
		ax  = src.ax,  ay  = src.ay,  az  = src.az;
		rax = src.rax, ray = src.ray, raz = src.raz;

		patay           = src.patay;
		layer.absolute  = src.layer.absolute;
	}

	// セーブ時に上から呼ばれる
	function store()
	{
		var dic = %[];
		dic.name	= name;
//		本当はthis/image/timerも保存すべきだが、とりあえずいいや
		dic.storage	= storage;
		dic.wing_cur	= wing_cur;
		dic.wing_from	= wing_from;
		dic.wing_to	= wing_to;
		dic.wing_speed	= wing_speed;
		dic.rotx	= rotx;
		dic.roty	= roty;
		dic.rotz	= rotz;

		dic.x   = x,   dic.y   = y,   dic.z   = z;
		dic.vx  = vx,  dic.vy  = vy,  dic.vz  = vz;
		dic.rvx = rvx, dic.rvy = rvy, dic.rvz = rvz;
		dic.ax  = ax,  dic.ay  = ay,  dic.az  = az;
		dic.rax = rax, dic.ray = ray, dic.raz = raz;

		dic.patay       = patay;
		dic.absolute    = layer.absolute;

		return dic;
	}

	// ロード時に上から呼ばれる
	function restore(dic)
	{
		if (dic === void)
			return;
		name		= dic.name;
//		本当はthis/image/timerもロードすべきだが、とりあえずいいや
		storage		= dic.storage;
		wing_cur	= dic.wing_cur;
		wing_from	= dic.wing_from;
		wing_to		= dic.wing_to;
		wing_speed	= dic.wing_speed;
		rotx		= dic.rotx;
		roty		= dic.roty;
		rotz		= dic.rotz;

		x   = dic.x,   y   = dic.y,   z   = dic.z;
		vx  = dic.vx,  vy  = dic.vy,  vz  = dic.vz;
		rvx = dic.rvx, rvy = dic.rvy, rvz = dic.rvz;
		ax  = dic.ax,  ay  = dic.ay,  az  = dic.az;
		rax = dic.rax, ray = dic.ray, raz = dic.raz;

		patay           = dic.patay;
		layer.absolute  = dic.absolute;
	}
}

kag.addPlugin(
	global.butterflyplugin_obj = new KAGLayersPlugin(kag, Butterfly)
);

[endscript]



[macro name="butterfly"]
[eval exp="mp.page = 'back'" cond="mp.page === void && mp.trans"]
[stoptrans]
[backlay cond="mp.trans"]
[eval exp="global.butterflyplugin_obj.add(mp.name, mp.page, mp)"]
[trans method=crossfade time=%time|300 cond="mp.trans"]
[wt canskip=true cond="mp.trans && mp.wait"]
[endmacro]

[macro name="butterfly_opt"]
[eval exp="global.butterflyplugin_obj.setOptions(mp.name, mp.page, mp)"]
[endmacro]

[macro name="butterfly_erase"]
[eval exp="mp.page = 'back'" cond="mp.page === void && mp.trans"]
[stoptrans]
[backlay cond="mp.trans"]
[eval exp="global.butterflyplugin_obj.del(mp.name, mp.page)"]
[trans method=crossfade time=%time|300 cond="mp.trans"]
[wt canskip=true cond="mp.trans && mp.wait"]
[endmacro]

[return]
