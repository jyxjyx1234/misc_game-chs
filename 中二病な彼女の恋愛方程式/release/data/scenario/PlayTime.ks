; 二重読み込みを防止
[return cond="typeof(global.PlayTime_obj) != 'undefined'"]

; プレイ時間を計測するプログラム
; 全体プレイ時間は sf.playtime に、
; セーブデータのプレイ時間は f.playtime に1/1000秒単位で記録される。
; ただし、そのまま参照してもその時点の値にはならないので、下の
; PlayTime クラスを通して参照すること。

[iscript]
// プレイ時間を計測したりなんだりするクラス
class PlayTime extends KAGPlugin
{
	var window;		// KAGWindow
	var time_start;		// 再開時のスタート時間
	var pause_start;	// ポーズ開始時間(0=not_paused)
	var onCloseQuery_org;	// オリジナルのkag.onCloseQuery

	// コンストラクタ
	function PlayTime(w)
	{
		super.KAGPlugin();
		window = w;
		initTime(true);	// ここではf.playtimeを初期化する
		onCloseQuery_org = window.onCloseQuery;
		// onCloseQuery()をトラップし、終了時に時間を保存するように変更
		window.onCloseQuery = function ()
		{
			PlayTime_obj.onStore(f);
			PlayTime_obj.onCloseQuery_org(...);
		} incontextof(window);
	}

	// デストラクタ
	function finalize()
	{
		window.onCloseQuery = onCloseQuery_org;
		super.finalize(...);
	}

	// time_start を初期化する(ゲーム最初で一度だけ呼ぶこと)
	function initTime(f_force = false)
	{
		time_start  = System.getTickCount();
		pause_start = 0;
		if (sf.playtime === void)
			sf.playtime = 0;	// 全体の経過時間
		if (f_force || f.playtime === void)
			f.playtime = 0;		// このデータの経過時間
	}

	// 時間(ms)を「###:##:##」形式の文字列で得る
	function __timeString(ms)
	{
		var hour = int(ms/(1000*60*60));
		ms -= hour * (1000*60*60);
		var min = int(ms/(1000*60));
		ms -= min * (1000*60);
		var sec  = int(ms/1000);
		return "%3d:%02d:%02d".sprintf(hour,min,sec);
	}

	// 現在の、このセーブデータの経過時間を文字列(###:##:##)で得る
	function timeString()
	{
		return __timeString(curTime());
	}

	// 現在の、セーブデータ全体での経過時間を文字列(###:##:##)で得る
	function timeString_all()
	{
		return __timeString(curTime_all());
	}

	// 現在の、このセーブデータの経過時間を1/1000秒単位で得る
	function curTime()
	{
		sync();
		return f.playtime;
	}

	// 現在の、セーブデータ全体での経過時間を1/1000秒単位で得る
	function curTime_all()
	{
		sync();
		return sf.playtime;
	}

	// 時間進行を一時停止する
	function pause()
	{
		if (pause_start == 0)
			pause_start = System.getTickCount();
	}

	// 時間進行の一時停止を解除する
	function resume()
	{
		if (pause_start != 0) {
			time_start += System.getTickCount() - pause_start;
			pause_start = 0;
		}
	}

	// 現在の時刻を得るなどのために、f.playtime や sf.playtime を合わせる
	function sync()
	{
		var cur = System.getTickCount();
		var diff = cur - time_start;
		if (pause_start != 0) {
			diff = pause_start - time_start;
			pause_start = cur;	// 現在の時間で補正しておく
		}
		time_start = cur;	// 現在の時間で補正しておく
		f.playtime  += diff;
		sf.playtime += diff;
	}

	// セーブする時
	function onStore(f, elm)
	{
		// f.playtime は使ってるので重ならないように
		var dic = f.playtime_save = %[];
		sync();
		dic.pause_start = pause_start;
	}

	// ロードする時
	function onRestore(f, clear, elm)
	{
		// f.playtime は使ってるので重ならないように
		var dic = f.playtime_save;
		initTime();
		if (dic !== void && dic.pause_start != 0)
	 		pause_start = time_start;
	}
}


kag.addPlugin(global.PlayTime_obj = new PlayTime(kag));

[endscript]




; プレイ時間を初期化する。ゲーム最初に一度呼ぶこと。
[macro name=playtime_init]
[eval exp="global.PlayTime_obj.initTime(true)"]
[endmacro]

; プレイ時間を pause する。タイトルとかエンディングとかの時に呼ぶとよいかも。
[macro name=playtime_pause]
[eval exp="global.PlayTime_obj.pause()"]
[endmacro]

; プレイ時間を resume(unpause) する。pause とセットで使うこと
[macro name=playtime_resume]
[eval exp="global.PlayTime_obj.resume()"]
[endmacro]

; このセーブデータのプレイ時間文字列を表示
[macro name=playtime_current]
[emb exp="global.PlayTime_obj.timeString()"]
[endmacro]

; セーブデータ全体のプレイ時間文字列を表示
[macro name=playtime_current_all]
[emb exp="global.PlayTime_obj.timeString_all()"]
[endmacro]

[return]
