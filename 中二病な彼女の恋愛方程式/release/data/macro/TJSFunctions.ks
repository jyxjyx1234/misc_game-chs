[return cond="typeof(global.TJSFunctions) != 'undefined'"]

; 2014/06/21	1.26	str2num()にmin/max引数を追加
; 2014/02/26	1.25	str2num()でエラーになっていたのを修正
; 2013/08/10	1.24	em()でemtype='stop'の時にExceptionで停止するよう修正
;			em()の引数にerrflg(def=1)を追加
; 2013/07/30	1.23	em()でemtype='stop'の時にもstopしなかったのを修正
; 2012/10/01	1.22	selectcopy_dic()にcopyifvoidとnumerizeを追加
;			numerize_dic()で、変換にRegExpを用いるように変更
;			showtickdiff() を追加
; 2012/09/25	1.21	selectcopy_dic()でdst/srcがvoidだったらすぐreturnする
;			よう変更
; 2012/08/13	1.20	getLayersFromElm()とgetLayerPageNamesFromElm()を追加
; 2012/08/06	1.19	自クラスと親クラスを入手する関数を追加
; 2012/05/27	1.18	辞書のキーを表示するときソートするように変更
; 2011/09/24	1.17	selectcopy_dic()で、typeof(src[key]) != 'undefined'を
;			src[key] !== voidに戻した。KLayersのSliderTabで不都合
;			あったため
; 2011/07/18	1.16	printObject()にrecursive オプションを追加。「再起表示
;			しない」のも選択できるようにした。
;			str2num()を追加
;			selectcopy_dic()で、src[key] !== voidを
;			typeof(src[key]) != 'undefined'に変更。「値はあるけど
;			void」の時を逃さぬようにするため
; 2011/05/30	1.15	printLayers()追加
; 2011/05/02	1.14	printObject()で辞書キーに/や:が含まれる場合にも対応
; 2011/02/14	1.13	getManLayerAbsolute(), getManKAGAbsolute() を追加
; 2011/01/17	1.12	marge_dic()で、if文をループ外に出して効率化
; 2011/01/15	1.11	findStorage()で、拡張子無しでマッチした場合を考慮
; 2010/12/19	1.10	deletevoid_dic()追加。辞書中の「キーはあるけど値は
;			void」の要素を delete する関数。
;			setOptions_sub() に、deletevoid_dicを使うかどうかの
;			フラグ voidwrite を追加
;			printObject()で閉じカッコのタブ位置の間違いを修正
;			objectString() を追加
;			em() を追加
;			add_ary() を追加
;			evalkag() を追加
;			marge_dic()とsetOptions_sub()にcopyフラグを追加
; 2010/11/26	1.03	find_val() を追加
; 2010/11/22	1.02	selectcopy_dic() を追加
; 2010/08/13	1.01	setOptions_sub()ではelmをnumerizeするよう変更
;			numerize_dic() の頭に dic===void の例外処理を追加

[iscript]


// 二つの配列を接続する
function add_ary(ary1=[], ary2=[])
{
	// 一応昇順に。
	for (var i = 0; i < ary2.count; i++)
		ary1.add(ary2[i]);
	return ary1;
}


// ハッシュからキーだけを取り出して配列を返す(perl の keys()と同等)
function keys(dic)
{
	var ary = [];
	var ret = [];
	ary.assign(dic);
	// 一応昇順に取り出す(速度的には不利かもしらんが)
	for (var i = 0; i < ary.count; i += 2)
		ret.add(ary[i]);
	return ret;
}


// ハッシュから指定値(val) を持つキーを返す。returnary なら複数をaryで返す
function find_val(dic=%[], val, returnary=false)
{
	var ary = [];
	var retary = [];

	ary.assign(dic);
	if (!returnary) {
		// 一応昇順に処理する(速度的には不利かもしらんが)
		for (var i = 0; i < ary.count; i += 2)
			if (ary[i+1] == val)
				return ary[i];
	} else {
		// 一応昇順に処理する(速度的には不利かもしらんが)
		for (var i = 0; i < ary.count; i += 2)
			if (ary[i+1] == val)
				retary.add(ary[i]);
	}
	return retary;
}


// 辞書から指定したキーを削除する
function remove_keys(dic=%[], removekeys=[])
{
	var keyary = keys(dic);
	for (var i = keyary.count-1; i >= 0; i--) {
		var key = keyary[i];
		if (removekeys.find(key) >= 0)
			delete dic[key];
	}
	return dic;
}


// dic と elm を統合し、dic を上書きして返す。 calc で or と and を変えられる
// copy = trueで、assignStructを使ってコピーする
function marge_dic(dic=%[], elm=%[], calc='or', exceptkeys, copy=false)
{
	var ary = [];

	// copyフラグに従い、asssign()/assignStruct() を変更する
	var tmp = [];
	tmp.assign(elm);
	if (copy)
		ary.assignStruct(tmp);
	else
		ary.assign(tmp);

	var key;
	if (calc == 'or') {
		if (exceptkeys === void)
			for (var i = ary.count-2; i >= 0; i -= 2)
				dic[ary[i]] = ary[i+1];
		else
			for (var i = ary.count-2; i >= 0; i -= 2) {
				key = ary[i];
				if (exceptkeys.find(key) < 0)
					dic[key] = ary[i+1];
			}
	} else { // if (calc == 'and') 
		if (exceptkeys === void)
			for (var i = ary.count-2; i >= 0; i -= 2) {
				key = ary[i];
				if (typeof(dic[key]) != 'undefined')
					dic[key] = ary[i+1];
			}
		else
			for (var i = ary.count-2; i >= 0; i -= 2) {
				key = ary[i];
				if (exceptkeys.find(key) < 0)
					if (typeof(dic[key]) != 'undefined')
						dic[key] = ary[i+1];
			}
	}
        return dic;
}


// 辞書配列中の値を数値に変換する。何も指定されていなければ、可能なかぎり
// string を int か real へ変換しようとする
function numerize_dic(dic, intkeys = [], realkeys = [], strkeys = [])
{
	if (dic === void)
		return;

	var ary = [];
	ary.assign(dic);
	if (intkeys.count == 0 && realkeys.count == 0 && strkeys.count == 0) {
		// キーが指定されていなければ可能な限りint/realに変換する
		var e = new RegExp('^(([0-9]+)|([0-9]+\\.[0-9]+)|(0x[0-9a-fA-F]+))$');
		for (var i = ary.count-2; i >= 0; i -= 2) {
			var val = ary[i+1];
			if (typeof(val) == 'String' && e.test(val))
				dic[ary[i]] = +val;
		}
	} else {
		// キーが指定されていればそれに従う
		for (var i = ary.count-2; i >= 0; i -= 2) {
			var key = ary[i];
			var val = ary[i+1];
			if (typeof(val) == 'String') {
				var str = trim(val);
				if (intkey.find(key) >= 0)
					dic[ary[i]] = int(val);
				else if (realkey.find(key) >= 0)
					dic[ary[i]] = real(val);
				else if (strkey.find(key) >= 0)
					dic[ary[i]] = stringl(val);
			}
		}
	}
	return dic;
}


// 辞書中の指定キーだけをコピーする(src.abc === voidの場合コピーできない)
// ※numerize=trueだとやたらと重いので、やっぱり一つ一つキーをnumerizeするか
// 　どうか判断した方がいい。13000要素でselectcopy_dic=3899ms vs 一つ一つ判断
//   = 43ms くらいの差がある
function selectcopy_dic(obj, src, keyary, copyifvoid=false, numerize=false)
{
	if (obj === void || src === void)
		return;
	if (keyary === void)
		keyary = keys(src);

	var key, val, e;
	if (numerize) // この定義が結構重いので条件わけ
		e = new RegExp('^(([0-9]+)|([0-9]+\\.[0-9]+)|(0x[0-9a-fA-F]+))$');
	for (var i = keyary.count-1; i >= 0; i--) {
		key = keyary[i];
		// if (typeof(src[key]) != 'undefined')
		// ↑だけだとvoidコピーできるが、elm = %[str:mp.str]な
		// どでmp.strが指定されてなかった時に値がvoidで設定さ
		// れてしまうので、↓にした
		if (typeof(src[key]) != 'undefined') {
			val = src[key];
			if (val !== void || copyifvoid)
				if (numerize && typeof(val) == 'String' &&
				    e.test(val))
					obj[key] = +val;
				else
					obj[key] = val;
		}
	}
	return obj;
}


// 辞書の、void 要素(キーはあるのに値がvoid)を削除する
function deletevoid_dic(dic)
{
	var ary = keys(dic);
	for (var i = ary.count-1; i >= 0; i--)
		if (dic[ary[i]] === void)
			delete dic[ary[i]];
	return dic;
}


// marge_dic をちょっと変えて、setOptions_sub()を実装
function setOptions_sub(obj, elm, exceptkeys=[], voidwrite=false, copy=true)
{
	numerize_dic(elm);
	if (!voidwrite)
		deletevoid_dic(elm);
	// デフォルトで copy = true であることに注意。こうしないと、
	// レイヤの辞書プロパティをコピーした時に元レイヤが消えるとプロパティも
	// 消えることがあるため。
	marge_dic(obj, elm, 'and', exceptkeys, copy);
}


// dic1 と dic2 を統合し、dic2 で上書きした新たな dic を返す。
function create_dic(dic1=%[], dic2=%[], calc='or', exceptkeys=[])
{
	var tmp = %[];
	(Dictionary.assign incontextof tmp)(dic1);
	return marge_dic(tmp, dic2, calc, exceptkeys);
}


// ファイルが存在するかどうか探し、存在すれば true を返す
// 拡張子指定があればその拡張子との組み合わせを探す。拡張子は'.'つきで指定する
function findStorage(fnam, exp)
{
	if (exp === void || Storages.isExistentStorage(fnam))
		return Storages.isExistentStorage(fnam);
	for (var i = exp.count-1; i >= 0; i--)
		if (Storages.isExistentStorage(fnam + exp[i]))
			return true;
	return false;
}


// ファイルが存在するかどうか探し、フルパス(統一ストレージ名)を返す。
// 拡張子指定があればその拡張子との組み合わせを探す。拡張子は'.'つきで指定する
function findPlacedPath(fnam, exp)
{
	if (exp === void)
		return Storages.getPlacedPath(fnam);
	var ret;
	for (var i = exp.count-1; i >= 0; i--)
		if ((ret = Storages.getPlacedPath(fnam + exp[i])) != "")
			return ret;
	return "";
}


// オブジェクト(global.xxxxで参照できるもの)を渡すとオブジェクト文字列を返す
function objectString(obj)
{
	var ary = [];
	ary.assign(global);
	for (var i = ary.count-2; i >= 0; i -= 2) {
		if (ary[i+1] == obj)
			return string(ary[i]);
	}
	return "";
}


// あるオブジェクト・配列・ハッシュの中身を全部表示する…のサブルーチン
// 引数はオブジェクトそのものではなくて、文字列であることに注意。
function printObject_sub(objstr, indent=0, printedObject=[], recursive=true)
{
	var obj  = Scripts.eval(objstr);
	var type = typeof(obj);
	var tabs = "";
	for (var i = indent; i > 0; i--)
		tabs += "    ";	// 4TABで。

	// void とか null の時
	if (obj === void) {
		dm(tabs + objstr + '(' + type + ') = (void)');
		return;
	}
	if (obj == null) {
		dm(tabs + objstr + '(' + type + ') = (null)');
		return;
	}
	if (type == 'Integer' || type == 'Real' || type == 'String' ||
	    type == 'Octet') {
		// 整数・実数・文字列の時
		dm(tabs + objstr + ' = (' + type + ') ' + obj);
		return;
	}
	if (obj instanceof "Function") { // 先にチェックする必要あり
		// 関数の場合
		dm(tabs + objstr + ' = (Function) ' + obj);
		return;
	}

	// 既に表示済みかどうかチェック、表示済みなら以降処理しない
	if (printedObject.find(obj) >= 0) {
		dm(tabs + objstr + ' = (' + type + ') (Recursive displayed)');
		return;
	}
	printedObject.add(obj);	// 表示済みにする

	if (obj instanceof "Array") {
		// 配列の時
		dm(tabs + objstr + ' = (Array) [');
		for (var i = 0; i < obj.count; i++)
			if (!recursive)
				dm(tabs+'    '+objstr+'['+i+'] = ' + obj[i]);
			else
				printObject_sub(objstr+'['+i+']', indent+1);
	} else if (obj instanceof "Dictionary") {
		// 辞書配列の時
		dm(tabs + objstr + ' = (Dictionary) %[');
		var keyary = keys(obj);
		keyary.sort();
		for (var i = 0; i < keyary.count; i++) {
			if (!recursive)
				dm(tabs+'    '+objstr+'['+keyary[i]+'] = ' + obj[keyary[i]]);
			else if (/^[0-9]/.test(keyary[i])) // 数値は特別扱い
				printObject_sub(objstr+'['+keyary[i]+']',indent+1);
			else
				printObject_sub(objstr+'["'+keyary[i]+'"]',indent+1);
		}
	} else if (type == "Object") {
		// オブジェクトの時
		dm(tabs + objstr + ' = (Object) %[');
		var keyary = keys(obj);
		keyary.sort();
		for (var i = 0; i < keyary.count; i++) {
			if (!recursive)
				dm(tabs+'    '+objstr+'['+keyary[i]+'] = ' + obj[keyary[i]]);
			if (/^[0-9]/.test(keyary[i])) // 数値の時は特別扱い
				printObject_sub(objstr+'['+keyary[i]+']',indent+1);
			else
				printObject_sub(objstr+'["'+keyary[i]+'"]',indent+1);
		}
	} else {
		dm(objstr + '###################################### error');
	}
	dm(tabs + ']');
}

//var printObject_printedObject;

// あるオブジェクト・配列・ハッシュの中身を全部表示する。
// あんまりデカいオブジェクトを表示しようとするとスタック不足になる。
function printObject(objstr, recursive=true)
{
	// objstrじゃなくてobjを指定できるようにしようとも思ったが、
	// objだとobjstrへの変換ができないのでパス。
	printObject_sub(objstr, 0, [], recursive);
}


// エラーメッセージを表示する。
// sf.emtype に応じ、メッセージを残すだけ・ポップアップする が選択できる。
// sf.emtype: void   = エラーをSystem.inform()で表示するが停止しない
//            'stop' = エラー時には停止
//            他     = dm()のみ
function em(str, errflg=1)
{
	if (!errflg) // 表示する必要がなければなにもしない
		return;
	Debug.message(str);	// ログにメッセージを残す
	if (sf.emtype === void) {
		var s = "\n(sf.emtypeを定義すると表示されなくなります)";
		System.inform(str + s);
	}
	if (sf.emtype !== void && sf.emtype == 'stop') {
		throw new Exception(str + '\n');
		// これだと吉里吉里コンソールからem()を実行してもポップアップが
		// 表示されないのだが…まぁ…いいか…。
	}
}


// kagスクリプト文字列を実行する
// マクロも使用可能だが、[wt][wait]などの待ち処理は使用できない
function kageval(kagscript)
{
	var tmp = kag.onConductorScenarioLoad;
	kag.onConductorScenarioLoad = function(name){ return name; };
	kag.process("\n"+kagscript, "");
	kag.onConductorScenarioLoad = tmp;
}


// あるレイヤの子レイヤの最高absoluteを検索
function getMaxLayerAbsolute(l)
{
	var abs = -1;
	if (!l.isPrimary && l.parent.absoluteOrderMode)
		abs = l.absolute;
	for (var i = l.children.count-1; i >= 0; i--) {
		var newabs = getMaxLayerAbsolute(l.children[i]);
		if (abs < newabs)
			abs = newabs;
	}
	return abs;
}


// KAGウィンドウの子レイヤの最高absoluteを検索
function getMaxKAGAbsolute()
{
	var foreabs = getMaxLayerAbsolute(kag.fore.base);
	var backabs = getMaxLayerAbsolute(kag.back.base);
	return (foreabs >= backabs) ? foreabs+1 : backabs+1;
}

// KAGウィンドウの階層関係を表示(sub)
function printLayers_sub(layer, indent=0, cnum=0)
{
	var lnum = 1;
	var tabs = "";
	for (var i = indent; i > 0; i--)
		tabs += "    ";	// 4TABで。
	if (typeof(layer.classid) == 'undefined' || layer.classid === void)
		dm(tabs + '['+cnum+']: name = ' + layer.name + ', children = ' + layer.children.count);
	else
		dm(tabs + '['+cnum+']: name = ' + layer.name + ', children = ' + layer.children.count + ', classid = ' + layer.classid);
	for (var i = 0; i < layer.children.count; i++)
		lnum += printLayers_sub(layer.children[i], indent+1, i);
	return lnum;
}

// KAGウィンドウの階層関係を表示
function printLayers(layer)
{
	var lnum;
	if (layer !== void) {
		dm('layers: ###############################################');
		lnum = lnum = printLayers_sub(layer);
		dm('layer number = ' + lnum);
	} else {
		dm('kag.fore.base layers: #################################');
		lnum = printLayers_sub(kag.fore.base);
		dm('fore layer number = ' + lnum);
		dm('kag.back.base layers: #################################');
		lnum = printLayers_sub(kag.back.base);
		dm('back layer number = ' + lnum);
	}
}


// 文字列を数値に変換。変換エラーとなったらデフォルト値を返すところが異なる
function str2num(str, def=0, min, max)
{
	if (str === void)
		return +def;
	var ret = +Scripts.eval(str);
	if (min !== void && ret < +min)
		return +min;
	if (max !== void && +max < ret)
		return +max;
	return ret;
}


// 自クラスの名前を得る
function getClassName(obj)
{
	return Scripts.getClassNames(obj)[0];
}

// 親クラスを得る(単純継承の場合のみ)
function getSuperClass(obj)
{
	var cls = Scripts.getClassNames(obj)[1];
	return cls === void ? void : global[cls];
}


// elm に応じてレイヤを返す。elm.layer === void や elm.page === void を許し、
// その場合は対象を全レイヤ、全ページとする
function getLayersFromElm(elm = %[])
{
	if (elm.page === void || elm.page == 'both') {
		var fl = getLayersFromElm(%[layer:elm.layer, page:'fore']);
		var bl = getLayersFromElm(%[layer:elm.layer, page:'back']);
		return add_ary(fl, bl);
	}
	if (elm.layer === void)
		return kag[elm.page].layers;
	// page!==void, layer!==voidの場合
	return [kag[elm.page].layers[string(elm.layer)]];
}

// elm に応じてレイヤとページ名のペアを要素とする配列を返す。elm.layer === void
// や elm.page === void を許し、その場合は対象を全レイヤ、全ページとする
function getLayerPageNamesFromElm(elm = %[])
{
	if (elm.page === void || elm.page == 'both') {
		var fl, bl;
		fl = getLayerPageNamesFromElm(%[layer:elm.layer, page:'fore']);
		bl = getLayerPageNamesFromElm(%[layer:elm.layer, page:'back']);
		return add_ary(fl, bl);
	}
	var ret = [];
	if (elm.layer === void) {
		for (var i = 0; i < kag[elm.page].layers.count; i++)
			ret.add(%[layer:string(i), page:elm.page]);
		return ret;
	}
	return [%[layer:elm.layer, page:elm.page]];
}


// 前回からの差分時間(1/1000秒単位)を表示する
tf.showtickdiff_ticksaver = System.getTickCount();
function showtickdiff(tag = "", prevtick)
{
	var diff, curtick = System.getTickCount();
	if (prevtick !== void) {
		diff = curtick - prevtick;
	} else {
		diff = curtick - tf.showtickdiff_ticksaver;
		tf.showtickdiff_ticksaver = curtick;
	}
	dm(string(tag) + ': tickdiff: ' + diff);
	return curtick;
}


// この関数群読み込み済みフラグ
global.TJSFunctions = true;

[endscript]


[return]
