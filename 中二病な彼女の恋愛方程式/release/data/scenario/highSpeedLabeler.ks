; 二重読み込みを禁止
[return cond="typeof(global.highspeedlabeler_obj) != 'undefined'"]

; ラベル保存高速化プラグイン by KAICHO
; 
; 既読ラベルの読込/書込速度を向上させるプラグイン。以下の問題を解決するために
; 作成された。
; http://www.geocities.co.jp/keep_creating/DojinDOC/kirikiriSmallTips.html#slowboot
; 
; 2012/08/05	0.51	finalize()でrecordLabels配列をクリアするよう変更
; 2011/08/24	0.5	adler32→UUIDに変更
; 2011/07/28	0.21	既読ラベル保存ファイル名をrecord_%04 → record_%08に
; 2011/07/07	0.2	通過回数を保存せず、void or 1 のみにした。ちょっとでも
;			動作させた後に onSaveSystemVariables() でセーブされる
;			のを防ぐため。
; 2011/07/03	0.11	二重読み込み禁止部、typo修正
; 2011/07/02	0.1	hierarchicalLabelerを没にして、以下のようにした
;			・既読ラベルをシナリオファイルごとに分割して管理
;			・既読ラベル保存ファイルは必要時に読み、破棄しない
;			・既読ラベルを上書きしたかどうかを保存し、書込み不要な
;			　場合は保存ファイルを書き込まないようにする
;			・既読ラベル保存ファイル名のadler32暗号化
; 
; このプラグインは、既読ラベルの保存方法をデフォルトKAGの
;     sf[trail_ストレージ名_ラベル名] = 既読回数
; から
;     savedata/record_シナリオファイル名(or UUID).ksd : labels[ラベル名] = true(or void)
; に変更する。このため、このプラグインを使用する・あるいは使用をやめる場合、
; 既に既読ラベルがセーブされた環境ではセーブデータの引継ぎはできず、必ず
; セーブデータをクリアしなければならないことに注意。
;
; このプラグインは first.ks の先頭で呼び出すことが望ましい。初期化前に
; 一度でもラベルが使用されると、旧既読ラベル保存形式で保存され、この
; プラグインが提供する新既読ラベル保存方式とがセーブデータ中に混在してしまう
; ため。そのくらい無視すればいいやと思ってるならそれはそれでいいけれど。


[iscript]


// 一シナリオファイルに対する既読ラベル操作クラス
// コンストラクタではファイルがあれば読み込む。変更があれば次回セーブ時に
// セーブするが、変更がなければ次回セーブ時は単純にスキップする
class recordLabels
{
	var w;
	var recordfile;		// セーブするファイル名(フルパス)
	var labels     = %[];	// 既読ラベル辞書配列
	var needtosave = false;	// 変更されたかフラグ(変更なければセーブしない)

	// コンストラクタ
	function recordLabels(window, storage, uuid)
	{
		w = window;
		// セーブファイル名は "savedata/record_シナリオファイル名.ksd"
		storage = Storages.extractStorageName(Storages.chopStorageExt(storage));
		storage = uuid if (uuid !== void);
		recordfile = w.saveDataLocation+"/record_"+storage+".ksd";
		restore();	// 既存データを読み込み、labels初期化
	}

	// デストラクタ
	function finalize()
	{
		// まぁ…そうそう使うもんじゃないし真面目に処理してもいいか…。
		invalidate labels;
	}

	// 既読ラベルをひとつ記録
	function incRecordLabel(label)
	{
//		labels[label] = (+labels[label]) + 1; // voidの場合もO.K.
//		needtosave = true;	// この既読ラベルはセーブ必要とマーク
// Ver 0.2 以前は上二行だったが、思いのほかセーブが重いので、既読はカウントを
// 保存しないように変更した。これでも不都合はないはず。
		if (labels[label] === void) {
			labels[label] = 1;
			needtosave = true;
		}
	}

	// 既読かどうか
	function isRead(label)
	{
		return +labels[label];	// void ならば +void = 0 が返る
	}

	// 既読ラベルファイルにデータを書き込む
	function store()
	{
		if (needtosave)
			(Dictionary.saveStruct incontextof labels)(recordfile, w.saveDataMode);
		needtosave = false;	// 書き込み直後はセーブ不要とマーク
	}

	// 既読ラベルファイルからデータを読み込む
	function restore()
	{
		if (!Storages.isExistentStorage(recordfile))
			labels = %[];
		else
			labels = Scripts.evalStorage(recordfile);
		needtosave = false;	// 読み込み直後はセーブ不要とマーク
	}
}


// シナリオファイル群に対する既読ラベル管理クラス
class highSpeedLabeler extends KAGPlugin
{
	var w;
	var org_setRecordLabel;
	var org_incRecordLabel;
	var org_getCurrentRead;

	// コンストラクタ
	function highSpeedLabeler(window)
	{
		w = window;
		super.KAGPlugin(...);

		// オリジナルを一応保存しておく
		org_setRecordLabel = w.setRecordLabel;
		org_incRecordLabel = w.incRecordLabel;
		org_getCurrentRead = w.getCurrentRead;

		// このクラスで定義した関数でkagのそれを上書き
		w.setRecordLabel   = setRecordLabel   incontextof w;
		w.incRecordLabel   = incRecordLabel   incontextof w;
		w.getCurrentRead   = getCurrentRead   incontextof w;
		w.initRecordLabels = initRecordLabels incontextof w;

		// kagに新しいメンバを追加
		// delete w.currentRecordName;使わないけど残さないとエラーに
		w.currentRecordStorage = "";	// 現在のシナリオファイル名
		w.currentRecordLabel   = "";	// 現在のラベル名
		w.recordfiles = %[];		// 既読ラベルファイル配列

		// ここがUUIDを使うかどうかの判断。以下一行をコメントアウト
		// してセーブデータを削除することで、UUIDを使わなくなる。
		w.sflags.highSpeedLabeler_uuidhash = %[] if (w.sflags.highSpeedLabeler_uuidhash === void);
	}

	// デストラクタ…まぁ使わないだろうけど一応
	function finalize()
	{
		var ary = [];
		ary.assign(w.recordfiles);
		for (var i = ary.count-2; i >= 0; i -= 2)
			invalidate ary[i+1];

		w.setRecordLabel = org_setRecordLabel;
		w.incRecordLabel = org_incRecordLabel;
		w.getCurrentRead = org_getCurrentRead;

		delete w.initRecordLabels;
		delete w.currentRecordStorage;
		delete w.currentRecordLabel;

		// kagから追加したメンバを削除
		delete w.currentRecordStorage;
		delete w.currentRecordLabel;
		delete w.recordfiles;

		super.finalize();
	}

	// 現在のストレージ・ラベルで既読ラベル設定(kagのsetRecordLabel上書き)
	function setRecordLabel(storage, label) // incontextof kag;
	{
		if (!autoRecordPageShowing)
			return;
		if (label != '') {
			if(label[0] == '*') label = label.substring(1);
			if(label[1] == '-') return; // ローカルラベル
		}
		storage = Storages.chopStorageExt(Storages.extractStorageName(storage));
		if (storage != "" && recordfiles[storage] === void)
			// 既読ラベル構造体が未読or初期化されてなかった
			recordfiles[storage] = initRecordLabels(storage);

		// 文字列に統合せず、storage/labelを別に管理
		currentRecordStorage = storage;
		currentRecordLabel   = label;
		// ここではまだラベルは記録しない。記録するのはincRecordLabel()
	}

	// 既読ラベルを記録する(kagのincRecordLabelを上書き)
	function incRecordLabel(count) // incontextof kag;
	{
		// 必要なければ return
		if (!autoRecordPageShowing || 
		    currentRecordStorage == "" || currentRecordLabel == "")
			return;

		if (count) {
			// ここまでで必ずrecordfiles[currentRecordStorage]は存在する
			recordfiles[currentRecordStorage].incRecordLabel(currentRecordLabel);
		}
		currentRecordStorage = "";
		currentRecordLabel   = "";
		// ここではオリジナルは呼べない
	}

	// 現在のラベルを既読判定
	function getCurrentRead() // incontextof kag;
	{
		if (sf.allskip == 1)return true;
		
		// 必要なければ false
		if (!autoRecordPageShowing ||
		    currentRecordStorage == "" || currentRecordLabel == "" ||
		    recordfiles[currentRecordStorage] === void)
		{
			dm("必要なければFALSE");
			
			return false;
		}
		dm("既読判定="+recordfiles[currentRecordStorage].isRead(currentRecordLabel));
		return recordfiles[currentRecordStorage].isRead(currentRecordLabel);
		// ここではオリジナルは呼べない
	}

	// システム変数をセーブするとき
	function onSaveSystemVariables()
	{
		var ary = [];
		ary.assign(w.recordfiles);
		for (var i = ary.count-1; i >= 0; i -= 2)
			ary[i].store();
	}

	// 新しい既読ファイルインスタンスを作成
	// 既に存在しているものと重複している場合はエラーポップアップを出す
	function initRecordLabels(storage) // incontextof
	{
		var uuidhash = sflags.highSpeedLabeler_uuidhash;
		if (uuidhash === void)
			return new recordLabels(this, storage);
		var uuid = uuidhash[storage];	// 既存なら既存UUID指定
		if (uuid === void) {
			var ary = [];
			ary.assign(uuidhash);
			do { // UUID が重複しなくなるまで無限ループ
				uuid = System.createUUID();
			} while (ary.find(uuid) >= 0);
			uuidhash[storage] = uuid; // 新規なら新規UUIDを設定
		}
		return new recordLabels(this, storage, uuid);
	}
}


// インスタンス作成
global.highspeedlabeler_obj = new highSpeedLabeler(kag);
kag.addPlugin(global.highspeedlabeler_obj);

[endscript]

[return]
