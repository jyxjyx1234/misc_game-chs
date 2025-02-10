;YT2012103001	start
[eval exp="tf.debugsys = 'release'"]
;YT2012103001	end

[iscript]

var	RELEASE		= true;

Plugins.link("sigcheck.dll");

/*	別窓を作るのに定義	*/
/*	表示はしてないけど0，0の窓を複数作ってる	*/
var	WIDTH	= 0;
var	HEIGHT	= 0;

/*	チェックするファイル	*/
var	fn		=
[
];

/****************************/
/*	認証ウィンドウクラス	*/
/****************************/
class CheckXp3Sign extends Window
{

	/*	公開鍵	*/
	var	publickey	= 
		"-----BEGIN PUBLIC KEY-----
MIGJAoGBALXroxPlazLU9Wqhxe1jM/11Hzr2aaksYdcfElqCrafsXEz7wGs/pJiz
34Ke4DoEaDXpWnJhYvahYjL3dS/lT0kfl4WE0knhIaH8CQfbIfgKxQfrcGVOHEg5
pbGsGG57vBrL4D3KOe9MToDKkK5dugTlyepXKUTg/LQ35qseoP5pAgMBAAE=
-----END PUBLIC KEY-----
";

	var	base;
	var	layer;
	var	file;

	function CheckXp3Sign( fname )
	{
		super.Window();

		base = new Layer(this, null);
		base.setSize( WIDTH, HEIGHT );
		add(base);
		setInnerSize( WIDTH, HEIGHT );

		layer	= new Layer( this, base );
		layer.setSize( WIDTH, HEIGHT );
		layer.setPos( 0, 0 );
		add( layer );
		layer.visible		= true;
		layer.font.height	= 12;
		layer.fillRect( 0, 0, layer.width, layer.height, 0xff000000 );

		if ( publickey.length <= 0 )
		{
			System.inform( 'release.ksにてpublickeyを入力してください' );
			System.exit();
		}

		file	= fname;
		check( System.exePath + fname );
	}

	var msgs = [];
	
	function message( msg, same=false )
	{
		Debug.message( msg );
		msgs.add( msg );
		if ( msgs.count > 24)
			msgs.erase(0);

		layer.fillRect( 0, 0, layer.width, layer.height, 0xff000000 );

		var	y	= 0;
		for ( var i=0; i < msgs.count; i++ )
		{
			layer.drawText( 0, y, msgs[i], 0xffffff );
			y	+= layer.font.height;
		}
	}
	
	function check( file )
	{
		//System.inform( "check : " + file );
		message( "署名確認開始 : " + checkSignature( file, publickey, null ) + ":" + file);
	}

	// 実行部
	function action( ev )
	{

	}

	function onCheckSignatureProgress( handler, info, percent )
	{
		message("署名確認経過 : " + handler + ":" + percent);
	}

	function onCheckSignatureDone( handler, info, result, error )
	{
		message("署名確認結果 : " + handler + ":" + result + ":" + error );

		if( result < 1 )
		{
			System.inform( '認証エラー' + "\n\n" + "File : " + file + "\n" + "Result : " + result + "\n" + "Msg : " + error );
			System.exit();
		}
	}
}

/****************************/
/*	リリース用コンフィグ	*/
/****************************/
function SetReleaseConfig()
{
	/*	debug用コンソールOFF	*/
	System.setArgument( '-debugwin', 'no' );
	System.setArgument( '-debug', 'no' );
	System.setArgument( '-khabout', '' );
	System.setArgument( '-hkupdaterect', '' );
	System.setArgument( '-hkdumplayer', '' );

	return;
}


/********************/
/*	定義ここまで	*/
/********************/

SetReleaseConfig();

/*	一応正常に定義されてるかチェック	*/
if( System.getArgument( '-debug' ) != 'no' )
{
	System.inform( 'デバッグモードが動作しています' );
	System.exit();
}

if( System.getArgument( '-debugwin' ) != 'no' )
{
	System.inform( 'デバッグ支援ウィンドウエラー' );
	System.exit();
}

/*	更新矩形の表示チェック	*/
if( System.getArgument( '-hkupdaterect' ) != '' )
{
	System.inform( '更新矩形の表示のホットキーエラー' );
	System.terminate();		/*	exitで終了させるとメモリ管理エラーを吐くぞ	*/
}

/*	著作権情報の表示チェック	*/
if( System.getArgument( '-hkabout' ) != '' )
{
	System.inform( '著作権情報の表示のホットキーエラー' );
	System.terminate();		/*	exitで終了させるとメモリ管理エラーを吐くぞ	*/
}


/*	認証チェック	*/
var	win	= new Array();


for ( var i = 0; i < fn.count; i++ )
{
	if( Storages.isExistentStorage( System.exePath + fn[i] ) )
	{
		win[i]			= new CheckXp3Sign( fn[i] );
		win[i].visible	= false;
	}
}

[endscript]

[return]


