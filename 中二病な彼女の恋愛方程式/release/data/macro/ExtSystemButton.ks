[return cond="typeof(global.ExtSystemButton) != 'undefined'"]

; 画面にシステムボタンを追加するプラグイン by KAICHO
; systembutton.ks は TJS の知識が必要だったが、これは KAG から使える

; Ver 0.96	2014/06/08
;	・enable=false時にクリック無視するのはKLayers.ksで実装したので、
;	　0.9a 相当に戻した
; Ver 0.95	2014/05/29
;	・autoMode中にボタンクリックしてもautoModeを解除できないのを防ぐ
;	　ため、disable時はプライマリレイヤにクリックが伝播するよう新しい
;	　クラスを作成
; Ver 0.9a2013/11/28
;	・Krclick.ksにあわせるために、*rclick_load→*krclick_loadなどに変更
; Ver 0.9 2011/12/04
;	・ボタンを指定するIDをkey=からname=に変更。loadImages()にkey=が
;	　そのままわたって、黒色(key=0)が画像の透明キーとして利用されて
;	　しまっていたため。
; Ver 0.8 2011/07/30
;	・skip可否はkag.nextSkipEnabled をチェックするように変更
;	・history表示可否はkag.historyEnabledをチェックするように変更
; Ver 0.7 2011/06/20
;	・calltarget=を追加。extraConductorを使って[call]する。
; Ver 0.6 2011/02/21
;	・sysbtn 作成時、無指定なら enabled = kag.inStable にするよう変更
;	・[sysbutton_setopt]で実はsetOptionsを呼んでなかったのを修正
; Ver 0.5 2011/01/01
;	・KLayersとKLayersPluginOnMessageを参照するよう変更
; Ver 0.3 2010/11/27
;	・KLayersPlugin 変更に伴い、インターフェース部分を変更。
;	・focusable だけだとフォーカス時の画像を表示しないので、
;	　showfocusimage=true/false を設定できるように追加。
;	・KLayersPluginに統合したため、ExtSystemButtonsクラスを廃止。
;	・ExtSystemButton で初期化時に name を設定し忘れてたので追加。
; Ver 0.2 2010/11/23
; 	・focusable(def=true) を指定できるようにした。指定すると
;	　キーボードフォーカスが使用可能となる。
;	・name メンバは最初からLayerクラスに存在するから定義を削除
; Ver 0.1 2010/11/23
; 	初期リリース

[call storage="KLayers.ks"]

[iscript]


global.extsystembutton_obj = new KLayersPluginOnMessage('extsystembutton');
kag.addPlugin(global.extsystembutton_obj);

// 以下はシステムボタンが押された時の動作サンプル関数。使っても使わなくても
// よし。使う場合は、
// [sysbutton graphic="xxx" exp="SysBtn_onSkipButtonClick()"]
// のように使う。

// SKIPボタンが押された
function SysBtn_onSkipButtonClick()
{
	if (!kag.nextSkipEnabled)
		return;
	if (typeof kag.skipToNextStopMenuItem != "undefined" &&
	    kag.skipToNextStopMenuItem.enabled)
		kag.onSkipToNextStopMenuItemClick(kag);
	// 以下はMenuが削除されてても動くように
	else
		kag.skipToStop();
}

// 自動読進ボタンが押された
function SysBtn_onAutoReadButtonClick()
{
	if(typeof kag.autoModeMenuItem != "undefined" &&
	   kag.autoModeMenuItem.enabled)
		kag.onAutoModeMenuItemClick(kag);
}

// 履歴ボタンが押された
function SysBtn_onHistoryButtonClick()
{
	if (!kag.historyEnabled)
		return;
	if (typeof kag.showHistoryMenuItem != "undefined" &&
	    kag.showHistoryMenuItem.enabled)
		kag.onShowHistoryMenuItemClick(kag);
	// 以下はMenuが削除されてても動くように
	else
		kag.showHistory();
}

// テキスト消去ボタンが押された
function SysBtn_onTextHideButtonClick()
{
	kag.hideMessageLayerByUser();
}

// セーブ ボタンが押されたら ks ファイルを呼び出し
function SysBtn_onSaveButtonClick()
{
	if(kag.canStore())
		kag.callExtraConductor('Krclick.ks', '*krclick_save');
}

// ロード ボタンが押されたら ks ファイルを呼び出し
function SysBtn_onLoadButtonClick()
{
	if(kag.canRestore())
		kag.callExtraConductor('Krclick.ks', '*krclick_load');
}

// メニュー ボタンが押されたら ks ファイルを呼び出し
function SysBtn_onMenuButtonClick()
{
	kag.callExtraConductor('Krclick.ks', '*krclick_menu');
}

[endscript]


; システムボタンを追加する
[macro name="sysbutton"]
[eval exp="mp.classobj = 'KAnimButtonLayer'" cond="mp.classobj == void"]
; 文字列をオブジェクトに変換
[eval exp="mp.classobj = Scripts.eval(mp.classobj)"]
; kag.inStable にあわせて enabled を設定
[eval exp="mp.enabled = kag.inStable" cond="mp.enabled === void"]
[eval exp="global.extsystembutton_obj.add(mp.name, mp.classobj, mp.page, mp)"]
[endmacro]

; システムボタンを削除する
[macro name="sysbutton_erase"]
[eval exp="global.extsystembutton_obj.del(mp.name, mp.page)"]
[endmacro]

; システムボタンを設定する
[macro name="sysbutton_setopt"]
[eval exp="global.extsystembutton_obj.setOptions(mp.name, mp.page, mp)"]
[endmacro]

[return]
