; 既に定義済みならすぐ戻る
[return cond="typeof(global.saveAnywhere_object) != 'undefined'"]

; 以下、未定義の時のみ実行

; 「どこでもセーブプラグイン改」by KAICHO
; 既読判定をもう少しマシにしたどこでもセーブプラグイン。

; 2011/09/22	0.51	なぜか最後に不要な[endif]があったので削除。どうして
;			今までエラーにならなかったのだ？
; 2011/09/03	0.5	拡張call有効時の自動再生時、既読判定を間違っていたので
;			onAfterReturnにsetUserSpeed()を追加
;			あと表記の整理
; 2011/08/13	0.31	onAfterReturnでlabelstackが空の時にエラーになってたのを
;			修正
; 2011/07/03	0.3	curLabelが""の時に、[return]で":1"などを追加しない
;			ように変更。":1"、":2" などがセーブされるのを防ぐため
; 2011/05/06	0.2	[iscript]中の行頭の * を回避


[iscript]
/*
	どこでもセーブプラグイン
 [iscript]中では頭に*を書かないこと！*/
class SaveAnywherePlugin extends KAGPlugin
{
	var enabled;		// 有効・無効フラグ
	var labelstack;		// ラベルNoのスタック
	var extend_call;	// SaveAnywhere用の[call]タグ拡張フラグ
	var pagenamestack;	// PageNameのスタック

	var org_onLabel;	// ラベル通過時のオリジナル処理
	var org_onCall;		// [call]呼び出し時のオリジナル処理
	var org_onReturn;	// [return]時のオリジナル処理(extraConductor)
	var org_onAfterReturn;	// [return]の後のオリジナル処理

	// コンストラクタ
	function SaveAnywherePlugin(window, extend_call_flag = false)
	{
		super.KAGPlugin();
		this.window = window;
		enabled		  = true;
		labelstack        = [ int(1) ];
		extend_call       = extend_call_flag;
		pagenamestack	  = [];

		var main = window.mainConductor, extra = window.extraConductor;

		// main/extraコンダクタのハンドラをいくつか書き換える
		org_onLabel       = main.onLabel;
		org_onCall        = main.onCall;
		org_onReturn      = extra.onReturn;
		org_onAfterReturn = main.onAfterReturn;

		main.onLabel       = main_onLabel       incontextof main;
		main.onCall        = main_onCall        incontextof main;
		extra.onReturn     = extra_onReturn     incontextof extra;
		main.onAfterReturn = main_onAfterReturn incontextof main;
	}

	// デストラクタ
	function finalize()
	{
		invalidate labelstack;
		invalidate pagenamestack;

		var main = window.mainConductor, extra = window.extraConductor;

		main.onLabel       = org_onLabel;
		main.onCall        = org_onCall;
		extra.onReturn     = org_onReturn;
		main.onAfterReturn = org_onAfterReturn;
		super.finalize(...);
	}

	// onLabel(ラベル通過時)に、labelnoをリセットする処理を追加。
	function main_onLabel(label, page) // incontextof window.mainConductor
	{
		// "*label_anywhere"以外のラベルだとNoを1にする
		if (label != "*label_anywhere")
			saveAnywhere_object.labelstack[0] = int(1);
		// 以下オリジナルと同じ。つーかオリジナルはこれだけ。
		return saveAnywhere_object.org_onLabel(...);
	}

	// onCall([call]タグ使用時)に、labelnoを保存する処理を追加
	function main_onCall() // incontextof window.mainConductor
	{
		if (saveAnywhere_object.extend_call) {
			// 拡張callならここで通過記録をとる
			kag.incRecordLabel(true);
			// ページ名を保存しておく(voidの時を考慮必要？)
			saveAnywhere_object.pagenamestack.push(kag.currentPageName);
		}
		// 現在のlabel/labelstackを保存する([0]に1をpush)
		saveAnywhere_object.labelstack.insert(0, int(1));
		// 以下オリジナルと同じ
		return saveAnywhere_object.org_onCall(...);
	}

	// onReturn([returnl]時)に、labelnoを復帰する処理を追加
	// 普通要らんのだが、extraConductorからの最終returnの場合、
	// kag.currentLabelとkag.currentRecordNameが戻ってしまうので。
	function extra_onReturn() // incontextof window.extraConductor
	{
		// まずオリジナルを呼ぶ
		var ret= saveAnywhere_object.org_onReturn(...);
		// セーブラベル(つーか通過記録ラベル)設定
		saveAnywhere_object.overwriteCurrentLabel();
		return ret;
	}

	// onAfterReturn([returnl]時)に、labelnoを復帰する処理を追加
	function main_onAfterReturn() // incontextof window.mainConductor
	{
		// まずオリジナルを呼ぶ
		var ret= saveAnywhere_object.org_onAfterReturn(...);

		// labelstackを一つ前に戻し([0]を削除する)、設定する
		if (saveAnywhere_object.labelstack.count > 0)
			saveAnywhere_object.labelstack.erase(0);
		saveAnywhere_object.overwriteCurrentLabel();

		if (saveAnywhere_object.extend_call) {
			// 拡張callならここで新ラベルを設定
			saveAnywhere_object.setCurrentLabel();
			// 拡張コールならページ名を元に戻す
			var p=saveAnywhere_object.pagenamestack.pop();
			kag.currentPageName = p;
			kag.pcflags.currentPageName = p;
			// で、このときオリジナルでは setUserSpeed()で
			// 文字速度が設定されちゃってるので、こちらも元に戻す
			kag.setUserSpeed();
		}
		// スキップチェック(mainConductorなのでextraチェックは不要)
		if (!kag.getCurrentRead() && kag.skipMode != 4)
			kag.cancelSkip(); // 未読、スキップ停止
		return ret;
	}

	// kag.currentLabelとkag.currentRecordNameを上書きする
	function overwriteCurrentLabel()
	{
		var labelno = int(labelstack[0]);
		if (labelno > 1) { // 既に[label]を通過してたら
			kag.currentLabel += ':' + (+labelno-1);
			kag.setRecordLabel(kag.conductor.curStorage,
					   kag.currentLabel);
		}
	}

	// セーブする時の動作
	function onStore(f, elm)
	{
		var dic = f.saveanywhere = %[];
		dic.labelstack = [];
		(Array.assign incontextof dic.labelstack)(labelstack);
		dic.pagenamestack = [];
		dic.pagenamestack.assign(pagenamestack);
		dic.extend_call = extend_call;
	}
	// ロードする時の動作
	function onRestore(f, clear, elm)
	{
		var dic = f.saveanywhere;
		if (dic === void) {
			labelstack  = [ int(0) ];
			extend_call = false;
		} else {
			(Array.assign incontextof labelstack)(dic.labelstack);
			extend_call = dic.extend_call;
			pagenamestack.assign(dic.pagenamestack);
		}
	}

	// 現在のラベル(=call前のラベル)を元に、(既読判定のために)
	// curRecordNameを設定。設定するだけでセーブしない。
	// 実は、このラベル名は既読判定のためだけに必要。セーブ関係は
	// *label_anywhereにて(スタック込みで)処理されるから。
	function setCurrentLabel()
	{
		var cdt = kag.conductor;
		if (cdt.curLabel == "")
			kag.currentLabel = "";
		else
			kag.currentLabel = cdt.curLabel+':'+ labelstack[0]++;
		kag.setRecordLabel(cdt.curStorage, kag.currentLabel);
	}
}

// デフォルトで拡張call使うようにしちゃった。いいのかな。
kag.addPlugin(global.saveAnywhere_object = new SaveAnywherePlugin(kag, true));

[endscript]

;▼labelマクロ
[macro name="label"]
[if exp="saveAnywhere_object.enabled"]
	; extend_callフラグをつけると、call直前のラベルと直後のラベルを自動的に
	; 変更(":3"とか付けて)して既読判定配列に格納する。
	[eval exp="mp.extend_call_save = saveAnywhere_object.extend_call"]
	[eval exp="saveAnywhere_object.extend_call = true"]

	; *label_anywhereをセーブ可能ラベルとして設定
	[call storage="saveAnywhere.ks" target="*label_anywhere"]

	; extend_callフラグを元に戻す
	[eval exp="saveAnywhere_object.extend_call = mp.extend_call_save"]
[endif]
[endmacro]


;▼saveanywhereマクロ(enabled=true|false)
[macro name="saveanywhere"]
[eval exp="saveAnywhere_object.enabled = +mp.enabled"]
[endmacro]


[return]


;---------------------------------------
;▼どこでもセーブ用サブルーチン
*label_anywhere|
[return]
