; 二重読み込みを防止
[return cond="typeof global.KAGLayersPlugin != 'undefined'"]


[call storage="TJSFunctions.ks"]

[iscript]
/*
   Layerオブジェクト(何でもよい)を前景・背景に配置して、KAG の [trans]タグを
   扱うラッパープラグイン
   ラッパー元には、以下の関数が必要
	   コンストラクタ(win, parent, name, elm) ... コンストラクタ
	   finalize() ........................... デストラクタ
	   setOptions(elm) ....................... オプション設定
				※オプション設定しないなら不要
	   assign(src) .......................... コピーする
	   dic = store() ........................ セーブ時にハッシュを返す
				※セーブしないなら不要
	   restore(dic) ......................... ロード時にハッシュを設定する
				※ロードしないなら不要
2011/05/06 1.13	・[iscript]中の行頭の * を回避
2010/12/26 1.12	・onRestore()中でdic===voidを考慮
2010/11/26 1.11	・KAGLayersPluginクラスのコンストラクタのAPIを変更。
		　関連して TJSFunctions.ks が必要となった。
		・MessageLayersPlugin クラスを追加した
		・onStore()/onRestore()で dic を返すようにした。
		・MessageLayersPluginを追加。主にSystemButtonを実現するための
		　KAGLayersPlugin拡張。
2010/08/01 1.10	・デフォルトでpage=bothをpage=foreに変更。ムダな
		・オブジェクトができるのを防ぐため。
 [iscript]中では頭に*を書かないこと！*/


// 元プラグインのスケルトン
// 必ずしもここから派生する必要はないが、派生した方がいろいろ楽かも
class KAGLayer_skel // extends KAGLayer(またはその派生レイヤ)
{
	//	var name; name は Layer クラスに有るので定義不要。
	function KAGLayer_skel(w, p, name, elm)
	{
		this.name = name;
		setOptions(elm);
	}

	function finalize()
	{
	}

	function setOptions(elm)
	{
	}

	function assign(src)
	{
		name = src.name;
	}

	function store()
	{
		var dic = %[];
		dic.name = name;
		return dic;
	}

	function restore(dic)
	{
		name = dic.name;
	}
}


// ラッパープラグイン
class KAGLayersPlugin extends KAGPlugin
{
	var window;
	var foreparent;		// 表画面の親
	var backparent;		// 裏画面の親
	var classname;		// 子Layerクラスのクラス名(文字列)
	var classobj;		// 子Layerクラスのクラスオブジェクト名
	var foreary;		// 表画面の子クラス配列
	var backary;		// 裏画面の子クラス配列

	// コンストラクタ
	function KAGLayersPlugin(w, classobj, fp=w.fore.base, bp=w.back.base)
	{
		super.KAGPlugin(...);
		window = w;
		foreparent = fp;
		backparent = bp;
		// クラスオブジェクトから文字列に変換する荒業
		classname = find_val(global, classobj);
		this.classobj  = classobj;
		foreary = [];
		backary = [];
	}

	// デストラクタ
	function finalize()
	{
		delOnPage('both');
		super.finalize(...);
	}

	// あるページの子Layerを全て削除
	function delOnPage(page='fore')
	{
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--) {
				invalidate(foreary[i]);
				foreary.erase(i);
			}
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--) {
				invalidate(backary[i]);
				backary.erase(i);
			}
	}

	// 指定nameの子Layerを削除
	function del(name, page='fore')
	{
		if(name === void) {
			delOnPage(page);
			return;
		}
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--)
				if(foreary[i].name == name) {
					invalidate(foreary[i]);
					foreary.erase(i);
				}
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--)
				if(backary[i].name == name) {
					invalidate(backary[i]);
					backary.erase(i);
				}
	}

	// 子Layerを一つ追加
	function add(name='noname', page='fore', elm)
	{
		var obj;
		if (page == 'fore' || page == 'both') {
			obj = new classobj(window, foreparent, name, elm);
			foreary.add(obj);
		}
		if (page == 'back' || page == 'both') {
			obj = new classobj(window, backparent, name, elm);
			backary.add(obj);
		}
	}

	// nameとpageに対応する子レイヤを探す
	function search(name, page='fore')
	{
		var retary = [];
		if(page == 'both' || page == 'fore') {
			for(var i = foreary.count-1; i >= 0; i--)
				if(name === void || foreary[i].name == name)
					retary.add(foreary[i]);
		}
		if(page == 'both' || page == 'back') {
			for(var i = backary.count-1; i >= 0; i--)
				if(name === void || backary[i].name == name)
					retary.add(backary[i]);
		}
		return retary;
	}

	// nameとpageに対応する子レイヤを探す(一個だけ版)
	function search_one(name, page='fore')
	{
		var retary = search(name, page);
		if (retary.count == 0)
			return void;
		if (retary.count == 1)
			return retary[0];
		System.inform("search_one()で対象レイヤが複数発見されました。"+
			      "とりあえず void を返します。"+
			      "search_one("+name+", "+page+")");
		return void;
	}

	// オプション指定
	function setOptions(name, page='fore', elm)
	{
		var ary = search(name, page);
		for (var i = ary.count-1; i >= 0; i--)
			ary[i].setOptions(elm);
	}

	// レイヤの表←→裏の情報のコピー
	// backlay タグやトランジションの終了時に呼ばれる
	function onCopyLayer(toback)
	{
		if(toback) {
			// 表→裏
			delOnPage('back');
			for(var i = foreary.count-1; i >= 0 ; i--) {
				backary[i] = new classobj(window,
					backparent, foreary[i].name);
				backary[i].assign(foreary[i]);
			}
		}
		else {
			// 裏→表
			delOnPage('fore');
			for(var i = backary.count-1; i >= 0 ; i--) {
				foreary[i] = new classobj(window,
					foreparent, backary[i].name);
				foreary[i].assign(backary[i]);
			}
		}
	}

	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで 表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じない。
		var ary = [];
		ary.assign(foreary);
		foreary.assign(backary);
		backary.assign(ary);

		var tmp = foreparent;
		foreparent = backparent;
		backparent = tmp;
	}

	// セーブ
	function onStore(f, elm)
	{
		// 栞を保存するとき
		var dic = f["kaglayersplugin_" + classname] = %[];
		dic.foreary = [];
		dic.backary = [];
		for(var i = foreary.count-1; i >= 0; i--)
			dic.foreary[i] = foreary[i].store();
		for(var i = backary.count-1; i >= 0; i--)
			dic.backary[i] = backary[i].store();
		return dic;	// 子クラスのために返す
	}

	// ロード
	function onRestore(f, elm)
	{
		// 栞を読み出すとき
		delOnPage('both');
		var dic = f["kaglayersplugin_" + classname];
		if(dic === void)
			return;
		for(var i = dic.foreary.count-1; i >= 0; i--) {
			foreary[i] = new classobj(window, foreparent);
			foreary[i].restore(dic.foreary[i]);
		}
		for(var i = dic.backary.count-1; i >= 0; i--) {
			backary[i] = new classobj(window, backparent);
			backary[i].restore(dic.backary[i]);
		}
		return dic;	// 子クラスのために返す
	}
}


// KAGLayersPluginクラスをちょっとだけ拡張した、メッセージレイヤにボタンを
// 配置するためのクラス。
// メッセージウィンドウにくっついてvisible/unvisibleが設定される
// ようにするため。
class MessageLayersPlugin extends KAGLayersPlugin
{
	var withmessage;	// メッセージ画面と一緒に隠すかどうか
	var foreary_visible;	// 隠した時の fore の layer の表示状態
	var backary_visible;	// 隠した時の back の layer の表示状態
	var anytimeenabled;	// 常にenableか。通常はstable状態でのみenable

	// コンストラクタ
	function MessageLayersPlugin(classobj, fp, bp, withmessage=true, anytimeenabled=false)
	{
		super.KAGLayersPlugin(kag, classobj, fp, bp);
		this.withmessage = withmessage;
		this.anytimeenabled = anytimeenabled;
		foreary_visible = [];
		backary_visible = [];
	}

	// 「安定」( s l p の各タグで停止中 ) か、
	// 「走行中」 ( それ以外 ) かの状態が変わったときに呼ばれる
	function onStableStateChanged(stable)
	{
		if (anytimeenabled)
			return;
		super.onStableStateChanged(...);
		// 走行中はレイヤを無効にする
		setOptions(, 'both', %[ enabled: stable ]);
	}

	// メッセージレイヤがユーザの操作によって表示・非表示される時
	// 呼ばれる。メッセージレイヤと表示/非表示を同期させるため設定
	function onMessageHiddenStateChanged(hidden)
	{
		if (!withmessage)
			return;
		super.onMessageHiddenStateChanged(...);
		if (hidden) {
			// 隠すとき：現在の状態を記憶する
			foreary_visible = [];
			backary_visible = [];
			for (var i = foreary.count-1; i >= 0; i--)
				foreary_visible[i] = foreary[i].visible;
			for (var i = backary.count-1; i >= 0; i--)
				backary_visible[i] = backary[i].visible;
			setOptions(, 'both', %[ visible: false ]);
		} 
		else {
			// 表示するとき：元の状態に戻す
			for (var i = foreary.count-1; i >= 0; i--)
				foreary[i].visible = foreary_visible[i];
			for (var i = backary.count-1; i >= 0; i--)
				backary[i].visible = backary_visible[i];
			foreary_visible = [];
			backary_visible = [];
		}
	}

	// 今のままでは、hidden 中に要素が add/del された場合を考慮していない。
	// 本当は、fore/backary_visible[] に追加・から削除する処理が必要。

	// レイヤの表←→裏の情報コピー
	function onCopyLayer(toback)
	{
		super.onCopyLayer(toback);
		if (toback)
			backary_visible.assign(foreary_visible); // 表→裏
		else
			foreary_visible.assign(backary_visible); // 裏→表
	}

	// 裏と表の管理情報を交換
	function onExchangeForeBack()
	{
		super.onExchangeForeBack();
		var tmp = [];
		tmp.assign(foreary_visible);
		foreary_visible.assign(backary_visible);
		backary_visible.assign(tmp);
	}

	// セーブ(メッセージ消去中にセーブできなければ不要)
	function onStore(f, elm)
	{
		var dic = super.onStore(f, elm);
		dic.withmessage = withmessage;
		dic.foreary_visible = [];
		dic.foreary_visible.assign(foreary_visible);
		dic.backary_visible = [];
		dic.backary_visible.assign(backary_visible);
		dic.anytimeenabled = anytimeenabled;
		return dic;	// 子クラスのために返す
	}

	// ロード(メッセージ消去中にセーブできなければ不要)
	function onRestore(f, elm)
	{
		var dic = super.onRestore(f, elm);
		if (dic === void)
			return dic;
		withmessage = dic.withmessage;
		foreary_visible = [];
		if (dic.foreary_visible !== void)
			foreary_visible.assign(dic.foreary_visible);
		backary_visible = [];
		if (dic.backary_visible !== void)
			backary_visible.assign(dic.backary_visible);
//		onMessageHiddenStateChanged(0);
//		↑これは不要。super.onRestore() 中で設定してしまうため。
		anytimeenabled = dic.anytimeenabled;
		return dic;	// 子クラスのために返す
	}
}


[endscript]

[return]
