; 多重登録を防止
[return cond="typeof(global.CharDatas) != 'undefined'"]

; 2011/06/07	0.2	CharDatas.getFlag() で値を返してなかったのを修正

; これはKAGPluginだけど、派生クラスのことを考慮して、実行しただけじゃ
; kag.addPlugin()では登録しない。
; これの派生クラスをKAGPluginとして登録するには、
; kag.addPlugin( global.派生インスタンス = new 派生クラス() );も必要
; なお、onStore/onRestoreでは派生クラスでもf.chardatas_obj以下にデータを
; 保存するという鉄の掟あり

; class CharData キャラクタ毎のデータを保存するクラス。箱しか用意してない。
; 何故CharDataクラスを箱だけしか用意しないかというと、外から拡張できるように
; するため。例えばMacro_Textからはフルネームやキャラ毎のテキスト色などを
; CharDataクラスに追加している。そういうのが、かっちり定義されたクラスでは
; なかなかできないため。
; 
;
; コンストラクタ：
; void  CharData( キャラ名(キー)、delCharやっても残るかどうかのフラグ = false )
;
; データを設定・上書きする。存在しないデータならエラーになるはず。
; void setData( データ名, 設定データ )
; データを取得する。存在しないデータならエラーになるはず。
; data getData( データ名 )
;
; データ項目を一つ追加する
; void addData( データ名, デフォルト値 )
; データ項目を一つ削除する
; void delData( key ) 
;
; 栞をセーブする時(辞書配列を返すだけ)
; dic onStore( void )
; 栞からロードする時(辞書配列に読み込むだけ)
; void onRestore( dic )


; class CharDatas extends KAGPlugin
; キャラクタ全てのデータを管理するクラス
;
; どうしてもダメな時用の、キャラクタデータをそのまま返す関数
; data getCharData( キャラ名 )
;
; キャラクタを追加。既にあれば追加しない。未登録なら作る
; void addChar( キャラ名, 永遠フラグ = false )
; キャラクタを削除。既になければ削除しない。永遠フラグが立ってるのも削除しない
; ただし、force_flagが立っていれば削除する
; void delChar( キャラ名, force_flag = false )
;
; 全キャラクタを削除。eternal charも消える。
; void	function delAllChar()
;
; データを設定(特定キャラだけ)
; void setData( キャラ名, データ名, 値 )
; データを取得(特定キャラだけ)
; data getData( キャラ名, データ名 )
;
; 全てのキャラクタデータへデータ項目を追加
; void addData( データ名, デフォルト値 )
; 全てのキャラクタデータからデータ項目を削除
; void function delData( データ名 )
; 
; セーブする時の動作
; void onStore( f, elm )
; ロードする時の動作
; void onRestore( f, clear, elm )



[iscript]

//;;;;;;;;;;;;;;;;;;;;;;;; キャラクタクラス;;;;;;;;;;;;;;;;;;;;;;;;;


// class CharData extends KAGPlugin {
// このクラスはKAGPluginの派生にする必要ないので、extendsを削除。
// 派生にしちゃうと、「前に戻る」や「栞のロード」でコンソールに「削除中の
// オブジェクト 0x########[instance of class CharData] 上でコードが
// 実行されています」云々の警告が表示される。それもそうだ！
class CharData {
	var  name    = "";	// キャラクタ名
	var  eternal = false;	// Delってやられても保存しとくフラグ
	var  point   = 0;	// キャラクタのポイント値
	var  flags   = %[];	// キャラクタのフラグ
	var  keys    = [];	// 現在登録済みのデータキー名
	var  data    = %[];	// 実際のデータ。アクセスはdata[key]

	// コンストラクタ
	function CharData( newname, neweternal = false )
	{
		name    = newname;
		eternal = neweternal;
		point   = 0;
		flags   = %[];
		keys    = [];
		data    = %[];
	}
	// デストラクタ(何もしない)
	function finalise()
	{
//		invalidate name; これあるとloadした時スクリプトエラーになる
		invalidate flags;
		invalidate keys;
		invalidate data;
	}

	// ポイントに加減算する。マイナスの値でもO.K.。
	function addPoint( num = 1 )
	{
		this.point += int(num);
	}
	// ポイントを設定する
	function setPoint( num = 0 )
	{
		this.point = int(num);
	}
	// ポイントを取得する
	function getPoint()
	{
		return this.point;
	}

	// フラグを設定する
	function setFlag( flag, tf = true )
	{
		flags[flag] = tf;
	}
	// フラグを得る
	function getFlag( flag )
	{
		if(flags[flag] === void)
			return( false );
		return( flags[flag] );
	}
	// フラグをクリアする(メモリとかコレで大丈夫なんやろか)
	function clearAllFlag()
	{
		invalidate flags;
		flags = %[];
	}

	// データを設定・上書きする
	// 配列とかハッシュとかの時にコピーしなくていいか？これだと参照に
	// なっちゃわない？
	function setData( key, elm )
	{
		// 要らんものを設定しようとしたらエラー終了した方がいい
		data[key] = elm;
	}
	// データを持ってくる
	// こっちは参照でいいような気がする。
	function getData( key )
	{
		// 要らんものを持ってこようとしたらエラー終了した方がいい
		return( data[key] );
	}

	// 永久フラグ立ってるかどうか確認
	function isEternal()
	{
		return( eternal );
	}

	// データ項目を一つ追加する
	function addData( key, defval )
	{
		// 既に存在するのを追加しよーとしたら上書きする。新規は追加
		if(keys.find( key ) < 0)
			keys.add( key );
		// ArrayとDirectoryの場合はコピーする。assignだと不十分
		if(defval instanceof "Array") {
			var a = [];
			a.assignStruct( defval );
			setData( key, a );
		}
		else if(defval instanceof "Dictionary") {
			var a = %[];
			(Dictionary.assignStruct incontextof a)( defval );
			setData( key, a );
		}
		else {
			setData( key, defval );
		}
	}
	// データ項目を一つ削除する
	function delData( key ) 
	{
		invalidate data[key];
		keys.remove( key );
	}

	// 栞をセーブする時(辞書配列を返すだけ)
	function onStore()
	{
// ここで辞書配列を作って返すと、タマにヘンなことが起こる…のか？
		var dic = %[];
		dic.name    = name;
		dic.eternal = eternal;
		dic.point   = point;
		dic.flags   = flags;
		dic.keys    = keys;
		dic.data    = data;
		return( dic );
	}
	// 栞からロードする時(辞書配列に読み込むだけ)
	function onRestore( dic )
	{
//		finalise(); //先にinvalidateしとく
		CharData();
		if(dic === void)
			return;
		name    = dic.name;
		eternal = dic.eternal;
		point   = dic.point;
		flags   = dic.flags;
		keys    = dic.keys;
		data    = dic.data;
	}
}


class CharDatas extends KAGPlugin {
	var names    = [];	// 現在登録済みのキャラ名配列(count=キャラ数)
	var chars    = %[];	// キャラ名称からそのデータを指す辞書配列

	var adddatas = [];	// 追加したメンバのキー配列
	var defaults = %[];	// そのデフォルト値

	// コンストラクタ
	function CharDatas()
	{
		super.KAGPlugin();
		names    = [];
		chars    = %[];
		adddatas = [];
		defaults = %[];
	}

	// デストラクタ
	function finalise()
	{
		invalidate names;
		invalidate chars;
		invalidate adddatas;
		invalidate defaults;
		super.finalise(...);
	}

	// そのキャラが存在するかどうか
	function isExist( name )
	{
		if(name === void)
			return false;
		return( names.find( name ) >= 0 && chars[name] !== void );
	}

	// そのキャラが永久保存版かどうか
	function isEternal( name )
	{
		if(!isExist( name ))
			return false;
		return( chars[name].isEternal() );
	}

	// どうしてもダメな時用の、キャラクタデータをそのまま返す関数
	function getCharData( name )
	{
		return( chars[name] ); // 下手すると無いデータが返るが…
	}

	// キャラクタを追加。既にあれば追加しない。未登録なら作る
	function addChar( name, eternal = false )
	{
		if(isExist( name ))		// 既にあれば返る
			return;			// エラー終了はしちゃだめ
		chars[name] = new CharData( name, eternal );
		names.add( name );
						// 既に存在するメンバを追加
		for(var i = 0; i < adddatas.count; i++) {
			chars[name].addData( adddatas[i], defaults[adddatas[i]] );
		}
	}

	// キャラクタを削除。既になければ削除しない。
	function delChar( name, force = false )
	{
		if(!isExist( name ))
			return;	// 登録されてない時はエラー終了した方がいいかも
		if(!force && isEternal( name ))
			return;
		names.remove( name );
		delete chars[name];	// invalidateだとvoidにならないので注意
	}

	// 全キャラクタを削除
	function delAllChar()
	{
		for(var i = names.count-1; i >= 0; i--)
			delChar( names[i], true );
	}

	// ポイントに加減算
	function addPoint( name, num = 1 )
	{
		chars[name].addPoint( num );
	}
	// ポイントを設定
	function setPoint( name, num = 0 )
	{
		chars[name].setPoint( num );
	}
	// ポイントを取得
	function getPoint( name )
	{
		return chars[name].getPoint();
	}

	// フラグ設定
	function setFlag( name, flag, tf = true )
	{
		chars[name].setFlag( flag, tf );
	}
	// フラグ確認
	function getFlag( name, flag )
	{
		return chars[name].getFlag( flag );
	}	

	// データを設定(特定キャラだけ)
	function setData( name, key, val )
	{
		chars[name].setData( key, val );
	}
	// データを取得(特定キャラだけ)
	function getData( name, key )
	{
		return( chars[name].getData( key ) );
	}

	// データを追加(全てのキャラクタデータへ)
	function addData( key, defval )
	{
		// 既に登録されてたらエラー終了した方がよいかも
		adddatas.add( key );
		defaults[key] = defval;
		for(var i = 0; i < names.count; i++)
			chars[names[i]].addData( key, defval );
	}
	// データを削除(全てのキャラクタデータから)
	function delData( key )
	{
		for(var i = 0; i < names.count; i++)
			chars[names[i]].delData( key );
		deldatas.remove( key );
		delete defaults[key];	// deleteだとvoidにならないので注意
	}

	// キャラ名(キー)の配列を返す
	function getCharNames()
	{
		return( names );
	}

	// セーブする時の動作
	function onStore( f, elm )
	{
		var dic = %[];
		dic.names    = names;
		dic.chars    = %[];
		dic.adddatas = adddatas;
		dic.defaults = defaults;
		for(var i = 0; i < names.count; i++)
			dic.chars[names[i]] = chars[names[i]].onStore();
		f.chardatas_obj = %[];
		(Dictionary.assignStruct incontextof f.chardatas_obj)( dic );
		// ↑のように、コピーしておかないと、onStore()でf.chardatas_obj
		// が参照になるため、後でキャラ表示等でf.chardatas_objが
		// 直接書き換えられてヘンなことになる。onStore()では注意。
	}

	// ロードする時の動作
	function onRestore( f, clear, elm )
	{
		CharDatas();		// この中でchars = %[]は実行済み
		if(f.chardatas_obj === void)	// データが無ければ真っ白で返る
			return;
		var dic = %[];
		(Dictionary.assignStruct incontextof dic)( f.chardatas_obj );
		// ↑onStore()と同じ理由でコピーが必要
		names    = dic.names;
		adddatas = dic.adddatas;
		defaults = dic.defaults;
		for(var i = 0; i < names.count; i++) {
			chars[names[i]] = new CharData( names[i] );
			chars[names[i]].onRestore( dic.chars[names[i]] );
		}
	}
}


// これはまだKAGPluginじゃないのでここでは登録しない
// kag.addPlugin( global.chardatas_obj = new CharDatas() );


// ポイントを得る。これだけここで宣言しておく。
function getpoint(name)
{
	return chardatas_obj.getPoint(name);
}


[endscript]

; もしもchardatasをPluginとして使うなら、use_chardatasマクロで最初に登録する。
; chardatasの派生クラスをPluginとするなら、このマクロを呼んではならない。
[macro name="init_chardatas"]
;登録されていれば削除する
[if exp="typeof(global.chardatas_obj) != 'undefined'"]
	; 既に登録済みなら削除
	[eval exp="kag.removePlugin( global.chardatas_obj )"]
	[eval exp="delete global.chardatas_obj"]
[endif]
[eval exp="kag.addPlugin( global.chardatas_obj = new CharDatas() )"]
[endmacro]

[return]
