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
// ジャンプボタンが押された
function SysBtn_onJumpButtonClick()
{
	dm("kag.autoMode="+kag.autoMode);
	dm("kag.skipMode="+kag.skipMode);
	dm("kag.transCount="+kag.transCount);
	dm("tf.ScemeJumping="+tf.ScemeJumping);
	
	if( kag.autoMode )return;
	if( kag.skipMode )return;
	if( kag.transCount != 0)return;

//	kag.stopAllTransitions(); // すべてのトランジションは停止
//シーンジャンプ処理を開始
	kag.callExtraConductor('PeasAdvSystem_SceneJump.ks','*start');
}

// SKIPボタンが押された
function SysBtn_onSkipButtonClick()
{

	dm("SysBtn_onSkipButtonClick()");
	
	if (!kag.nextSkipEnabled){
		dm("!kag.nextSkipEnabled");
		return;
	}

	if (typeof kag.skipToNextStopMenuItem != "undefined" && kag.skipToNextStopMenuItem.enabled){
		dm("kag.onSkipToNextStopMenuItemClick");
		kag.onSkipToNextStopMenuItemClick(kag);
	}
	else{// 以下はMenuが削除されてても動くように
		dm("kag.skipToStop()");
		kag.skipToStop();
	}
	return;
}

// 自動読進ボタンが押された
function SysBtn_onAutoReadButtonClick()
{
	//メニューボタンを変化させる処理は　MainWindow.tjsのenterAutoMode()等で記述
	//これは、オート開始がここ以外からでも実行されえるからである。
	//ボタンアイコンを変化させる[sysbutton graphic="system_UnderWindow_BT3" page=back top=631 left=914 exp="SysBtn_onAutoReadButtonClick()"]
	dm("■実行■■■■■■■■■■■■■■■■■■");

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

//スライダーの生成
//val パラメータは、初期値であり変化時の格納変数名となるので文字列で変数名を渡すのが望ましい
function SysBtn_CreateSlider(name,page,left,top,val,baseimage,tabimage,onchange,max)
{
	var elm = %["name"=>name, "page"=>page, "left"=>left, "top"=>top, "val"=>val, "baseimage"=>baseimage, "tabimage"=>tabimage, "onchange"=>onchange,"max"=>max,"visible"=>true];
	global.sliderplugin_obj.add(elm.name, elm.page, elm);	
}

//画像のロード生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateImage(storage,left,top,layer,page,visible,index)
{
	var elm = %["storage"=>storage, "left"=>left, "top"=>top, "layer"=>layer, "page"=>page, "visible"=>visible, "index"=>index];
	kag.getLayerFromElm(elm).loadImages(elm);	
}
//画像のロード生成対象レイヤーの中身を壊さない■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_AddImage(storage,left,top,layer,page,visible,index)
{
	var elm = %["storage"=>storage, "left"=>left, "top"=>top, "layer"=>layer, "page"=>page, "visible"=>visible, "index"=>index];
	kag.getLayerFromElm(elm).loadImages(elm);	
}

//ボタンの生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateButton(graphic,name,top,left,exp,onenter,onleave)
{
	var elm;
	if( onenter !== void ){
		dm("onleave="+onleave);
		elm = %["graphic"=>graphic, "name"=>name,"top"=>top,"left"=>left,"exp"=>exp,"onenter"=>onenter,"onleave"=>onleave];
	}
	else
		elm = %["graphic"=>graphic, "name"=>name,"top"=>top,"left"=>left,"exp"=>exp];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);
}
//ボタンの生成elm指定■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateButtonElm(elm)
{
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);
}
//ボタンの生成（処理は触れた時に発動）■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateButtonOnenter(graphic,name,top,left,exp)
{
	var elm = %["graphic"=>graphic, "name"=>name,"top"=>top,"left"=>left,"onenter"=>exp];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);
}
//ボタンの削除■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_DeleteButton(name,page)
{
	if( name == "" )
		global.extsystembutton_obj.del();
	else{
		global.extsystembutton_obj.del(name,page);
	}
}
//文字の描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateStr(text,layer,page,x,y,size,color,edge,shadow)
{
	var elm = %["layer"=>layer, "page"=>page,"x"=>x,"y"=>y,"text"=>text,"size"=>size,"color"=>color,"edge"=>edge,"shadow"=>shadow];
	kag.getLayerFromElm(elm).drawReconstructibleText(elm);

}
//スライダーの削除■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_DeleteSlider(name,page)
{
	var elm = %["name"=>name, "page"=>page];
	global.sliderplugin_obj.del(elm.name, elm.page);
}
//表示されているコンフィグ画面の指定ページアイテムを削除■■■■■■■■■■■■■■■■■■■■■
//0=基本 1=キー 2=フォントカラー
function SysBtn_ReleaseConfigObject(Mode)
{
	dm("tf.ConfigTypeMode="+tf.ConfigTypeMode);
	switch(tf.ConfigTypeMode){
		case 0://基本設定
			dm("基本設定オブジェクトを消去");
			SysBtn_DeleteButton("system_config_modeA_State1A","fore");
			SysBtn_DeleteButton("system_config_modeA_State1B","fore");
			SysBtn_DeleteButton("system_config_modeA_State2A","fore");
			SysBtn_DeleteButton("system_config_modeA_State2B","fore");
			SysBtn_DeleteButton("system_config_modeA_State3A","fore");
			SysBtn_DeleteButton("system_config_modeA_State3B","fore");
			SysBtn_DeleteButton("system_config_modeA_State8A","fore");
			SysBtn_DeleteButton("system_config_modeA_State8B","fore");
			SysBtn_DeleteButton("system_config_modeA_State9A","fore");
			SysBtn_DeleteButton("system_config_modeA_State9B","fore");
			SysBtn_DeleteButton("system_config_modeA_State10A","fore");
			SysBtn_DeleteButton("system_config_modeA_State10B","fore");
			SysBtn_DeleteButton("system_config_modeA_State11A","fore");
			SysBtn_DeleteButton("system_config_modeA_State11B","fore");
			SysBtn_DeleteButton("system_config_modeA_State13A","fore");
			SysBtn_DeleteButton("system_config_modeA_State13B","fore");
			SysBtn_DeleteButton("system_config_modeA_State14A","fore");
			SysBtn_DeleteButton("system_config_modeA_State14B","fore");
			SysBtn_DeleteButton("system_config_modeA_State15A","fore");
			SysBtn_DeleteButton("system_config_modeA_State15B","fore");
			SysBtn_DeleteButton("system_config_modeA_State16A","fore");
			SysBtn_DeleteButton("system_config_modeA_State16B","fore");
			SysBtn_DeleteButton("system_config_modeA_State17A","fore");
			SysBtn_DeleteButton("system_config_modeA_State17B","fore");
			SysBtn_DeleteButton("system_config_modeA_State18A","fore");
			SysBtn_DeleteButton("system_config_modeA_State18B","fore");
			SysBtn_DeleteButton("system_config_modeA_State19A","fore");
			SysBtn_DeleteButton("system_config_modeA_State19B","fore");
			SysBtn_DeleteButton("system_config_modeA_State20A","fore");
			SysBtn_DeleteButton("system_config_modeA_State20B","fore");

		break;
		case 1:

			SysBtn_DeleteButton("system_config_modeA_State4A","fore");
			SysBtn_DeleteButton("system_config_modeA_State4B","fore");
			SysBtn_DeleteButton("system_config_modeA_State5A","fore");
			SysBtn_DeleteButton("system_config_modeA_State5B","fore");
			SysBtn_DeleteButton("system_config_modeA_State6A","fore");
			SysBtn_DeleteButton("system_config_modeA_State6B","fore");
			SysBtn_DeleteButton("system_config_modeA_State7A","fore");
			SysBtn_DeleteButton("system_config_modeA_State7B","fore");
			SysBtn_DeleteButton("system_config_modeA_State7C","fore");
			SysBtn_DeleteButton("system_config_modeA_State7D","fore");
			SysBtn_DeleteButton("system_config_modeA_State12A","fore");
			SysBtn_DeleteButton("system_config_modeA_State12B","fore");
			SysBtn_DeleteButton("system_config_modeA_State21A","fore");
			SysBtn_DeleteButton("system_config_modeA_State21B","fore");
			SysBtn_DeleteSlider("config1","fore");
			SysBtn_DeleteSlider("config2","fore");
			SysBtn_DeleteSlider("config3","fore");
			SysBtn_DeleteSlider("config4","fore");
			SysBtn_DeleteSlider("config5","fore");
			SysBtn_DeleteSlider("config6","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey1","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey2","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey3","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey4","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey5","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey6","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey7","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey8","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey9","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey10","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey11","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey12","fore");
			SysBtn_DeleteButton("system_config_modeC_EditKey13","fore");
			
		break;
		case 2:
		
			for(var loop=0;loop<sf.config_Character_FontcolorCount+1;loop++){

				SysBtn_DeleteButton("system_config_modeC_VoiceState_A"+loop,"fore");
				SysBtn_DeleteButton("system_config_modeC_VoiceState_B"+loop,"fore");

				SysBtn_DeleteSlider("colchaR" + loop,"fore");
				SysBtn_DeleteSlider("colchaG" + loop,"fore");
				SysBtn_DeleteSlider("colchaB" + loop,"fore");
			}
			SysBtn_DeleteButton("system_config_modeC_VoiceState1_C","fore");
			SysBtn_DeleteButton("system_config_modeC_VoiceState1_D","fore");
			SysBtn_DeleteButton("system_config_modeC_VoiceState1_E","fore");

			SysBtn_DeleteButton("system_config_modeC_VoiceState1_F","fore");
			SysBtn_DeleteButton("system_config_modeC_VoiceState1_G","fore");

			SysBtn_DeleteButton("system_config_modeC_VoiceState1_H","fore");
			SysBtn_DeleteButton("system_config_modeC_VoiceState1_I","fore");
		break;
	}
}



//タイトルへ戻る
function SysBtn_ReturnGameTitle()
{
	if( tf.EditKeyInputing == 1 )return;

	kag.goToStartWithAsk();
}

//■設定のオールリセット■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function goToStartWithAsk_YES()
{
	sf.ConfigState2=1;
	modeA_MovieSkip(0);

	sf.ConfigState3=0;
	modeA_EffectCut(0);
	
	sf.ConfigState7=1;
	sf.ConfigState8=1;
	modeA_SystemMenu(0);
	
	sf.ConfigState9=1;
	modeA_SystemHelp(0);
	
	sf.ConfigState10=0;
	modeA_SystemVoiceSkip(0);
	
	sf.ConfigState11=1;

	sf.ConfigState14=1;
	system_config_modeA_Save(0);
	
	sf.ConfigState15=1;
	system_config_modeA_Load(0);
	
	sf.ConfigState16=1;
	system_config_modeA_QSave(0);
	
	sf.ConfigState17=1;
	system_config_modeA_QLoad(0);
	
	sf.ConfigState18=1;
	system_config_modeA_Jump(0);
	
	sf.ConfigState19=1;
	system_config_modeA_Init(0);
	
	sf.ConfigState20=1;
	system_config_modeA_Exit(0);

	//ボリューム
	sf.Config_Volume1=100;
	sf.Config_Volume2=50;
	sf.Config_Volume3=70;
	sf.Config_Volume4=100;

	var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume2];
	kag.bgm.setOptions(elm);

	var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume3];
	kag.se[0].setOptions(elm);

	var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume4];
	kag.se[1].setOptions(elm);

	//スライダーを更新
	var elm = %["name"=>"config1", "page"=>"fore", "val"=>"sf.Config_Volume1"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["name"=>"config2", "page"=>"fore", "val"=>"sf.Config_Volume2"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["name"=>"config3", "page"=>"fore", "val"=>"sf.Config_Volume3"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["name"=>"config4", "page"=>"fore", "val"=>"sf.Config_Volume4"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);

	sf.Config_MsgOpacity = 80;
	var elm = %["name"=>"config5", "page"=>"fore", "val"=>"sf.Config_MsgOpacity"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);

	sf.Config_MsgSpeed = 20;
	var elm = %["name"=>"config6", "page"=>"fore", "val"=>"sf.Config_MsgSpeed"];
	global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);

	for(var loop=0;loop<sf.config_Character_FontcolorCount;loop++){
		sf.config_Character_Fontcolor[loop][1] = sf.config_Character_FontcolorInit[loop][1];
		sf.config_Character_Fontcolor[loop][2] = sf.config_Character_FontcolorInit[loop][2];
		sf.config_Character_Fontcolor[loop][3] = sf.config_Character_FontcolorInit[loop][3];
		sf.config_Character_Fontcolor[loop][4] = sf.config_Character_FontcolorInit[loop][4];
	}
	//タイマーを起動
	tf.timer.enabled=true;
}

function SysBtn_ConfigReset()
{
	if( tf.EditKeyInputing == 1 )return;

	//YESNOダイアログ
	if( sf.ConfigState19 == 1 ){
//		var result = askYesNo("設定を初期化しますか？");
//		if(!result) return;
		
		var obj = global.ImageDialogLayerPlugin_obj;
		var prompt = "要初始化设置吗？";
		obj.askYesNoLayer(prompt, goToStartWithAsk_YES);		



	}
	else{
		goToStartWithAsk_YES();
	}


}

//■メッセージウインドウの利用画像をメッセージウインドウ透過率によって修正■■■■■■■■■■■■■■■■■■■■
function SysBtn_MessageWindowChange(page,visible)
{
	dm("SysBtn_MessageWindowChange");

//	var elm = %["layer"=>"message0", "page"=>page,"opacity"=>"sf.Config_MsgOpacity","visible"=>visible];
//	kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	f.MsgWindowOpacity = 1;
	return;
	
	if( sf.Config_MsgOpacity >= 0 && sf.Config_MsgOpacity < 10 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame0.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 10 && sf.Config_MsgOpacity < 20 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame10.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 20 && sf.Config_MsgOpacity < 30 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame20.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 30 && sf.Config_MsgOpacity < 40 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame30.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 40 && sf.Config_MsgOpacity < 50 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame40.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 50 && sf.Config_MsgOpacity < 60 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame50.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 60 && sf.Config_MsgOpacity < 70 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame60.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 70 && sf.Config_MsgOpacity < 80 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame70.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 80 && sf.Config_MsgOpacity < 90 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame80.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	if( sf.Config_MsgOpacity >= 90 && sf.Config_MsgOpacity <= 100 ){
		var elm = %["layer"=>"message0", "page"=>page,"frame"=>"window01_frame90.png","visible"=>visible];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
	}
	
	f.MsgWindowOpacity = 1;
}

//スライダー監視タイマー。これは、タブによって処理わけされているので
//機能をページ移動させた場合は、必要処理を移動させたり追加する必要がある
function dataaction(ev)
{
	tf.timer.enabled=false;

    if(ev.target == tf.timer)
    {
			
        if(ev.type == "onTimer")
        {
            // タイマーイベントが発生するたびに、タイトルバーの現在時刻表示を更新します
            switch(tf.ConfigTypeMode)
            {
				case 1:
					var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume2];
					kag.bgm.setOptions(elm);

					var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume3];
					kag.se[0].setOptions(elm);

					var elm = %["gvolume"=>sf.Config_Volume1,"volume"=>sf.Config_Volume4];
					kag.se[1].setOptions(elm);
					
					kag.userChSpeed = (int)sf.Config_MsgSpeed;
					kag.chSpeed = (int)sf.Config_MsgSpeed;
					
					//メッセージウインドウ透過率を反映～文字を保存して戻す処理も必要
					//初期値と異なる場合は、変化したことになる
					if( f.MsgWindowOpacityFast != sf.Config_MsgOpacity )
						SysBtn_MessageWindowChange("fore","false");
					
				break;
				case 2:
					//キャラクター文字色スライダーリセット
					for(var loop=0;loop<sf.config_Character_FontcolorCount;loop++)
					{
						//ボタンリセット
						switch(loop){
							case 0:tf.ypos=122;break;
							case 1:tf.ypos=166;break;
							case 2:tf.ypos=210;break;
							case 3:tf.ypos=254;break;
							case 4:tf.ypos=298;break;
							case 5:tf.ypos=342;break;
							case 6:tf.ypos=386;break;
							case 7:tf.ypos=430;break;
							case 8:tf.ypos=474;break;
							case 9:tf.ypos=518;break;
							case 10:tf.ypos=562;break;
						}
						tf.NameA='system_config_modeC_VoiceState_A'+loop;
						tf.NameB='system_config_modeC_VoiceState_B'+loop;						
						
						var elm = %["graphic"=>"system_config_modeC_OnBt2","name"=>tf.NameA, "page"=>"fore"];
						global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);						
						var elm = %["graphic"=>"system_config_modeC_OffBt","name"=>tf.NameB, "page"=>"fore"];
						global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);						
					
						//スライダーポジションをリセット
						var name1 = "colchaR"+(loop+1);
						var name2 = "colchaG"+(loop+1);
						var name3 = "colchaB"+(loop+1);
						switch(loop){
							case 0:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[0][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[0][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[0][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 1:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[1][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[1][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[1][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 2:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[2][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[2][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[2][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 3:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[3][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[3][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[3][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 4:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[4][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[4][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[4][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 5:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[5][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[5][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[5][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 6:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[6][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[6][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[6][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 7:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[7][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[7][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[7][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 8:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[8][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[8][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[8][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 9:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[9][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[9][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[9][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
							case 10:
								var elm = %["name"=>name1, "val"=>"sf.config_Character_Fontcolor[10][1]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name2, "val"=>"sf.config_Character_Fontcolor[10][2]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
								var elm = %["name"=>name3, "val"=>"sf.config_Character_Fontcolor[10][3]", "elm"=>"fore"];
								global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
							break;
						}
						
						
						
					}
					RefleshNameColor();
				break;
			}
        }

    }

}

//ボタンのヘルプを消去■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function HideHelp()
{
	var elm = %["layer"=>"14","page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);
}
//ボタンのヘルプを表示■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function ViewHelp(ViewNo)
{
	if( sf.ConfigState9==0 )return; 

	var xpos = 0;
	var ypos = 0;
	var filename = "";
	
	switch(ViewNo){
		case 0:
			xpos = tf.System_BtImg_ConfigScreen1_HelpXpos;ypos = tf.System_BtImg_ConfigScreen1_HelpYpos;filename = tf.System_BtImg_ConfigScreen1_HelpImgFile;
		break;
		case 1:
			xpos = tf.System_BtImg_ConfigScreen2_HelpXpos;ypos = tf.System_BtImg_ConfigScreen2_HelpYpos;filename = tf.System_BtImg_ConfigScreen2_HelpImgFile;
		break;
		case 2:
			xpos = tf.System_BtImg_ConfigMovieSkip1_HelpXpos;ypos = tf.System_BtImg_ConfigMovieSkip1_HelpYpos;filename = tf.System_BtImg_ConfigMovieSkip1_HelpImgFile;
		break;
		case 3:
			xpos = tf.System_BtImg_ConfigMovieSkip2_HelpXpos;ypos = tf.System_BtImg_ConfigMovieSkip2_HelpYpos;filename = tf.System_BtImg_ConfigMovieSkip2_HelpImgFile;
		break;
		case 4:
			xpos = tf.System_BtImg_ConfigEffectCut1_HelpXpos;ypos = tf.System_BtImg_ConfigEffectCut1_HelpYpos;filename = tf.System_BtImg_ConfigEffectCut1_HelpImgFile;
		break;
		case 5:
			xpos = tf.System_BtImg_ConfigEffectCut2_HelpXpos;ypos = tf.System_BtImg_ConfigEffectCut2_HelpYpos;filename = tf.System_BtImg_ConfigEffectCut2_HelpImgFile;
		break;
		case 6:
			xpos = tf.System_BtImg_ConfigMasterVol1_HelpXpos;ypos = tf.System_BtImg_ConfigMasterVol1_HelpYpos;filename = tf.System_BtImg_ConfigMasterVol1_HelpImgFile;
		break;
		case 7:
			xpos = tf.System_BtImg_ConfigMasterVol2_HelpXpos;ypos = tf.System_BtImg_ConfigMasterVol2_HelpYpos;filename = tf.System_BtImg_ConfigMasterVol2_HelpImgFile;
		break;		
		case 8:
			xpos = tf.System_BtImg_ConfigBgmVol1_HelpXpos;ypos = tf.System_BtImg_ConfigBgmVol1_HelpYpos;filename = tf.System_BtImg_ConfigBgmVol1_HelpImgFile;
		break;
		case 9:
			xpos = tf.System_BtImg_ConfigBgmVol2_HelpXpos;ypos = tf.System_BtImg_ConfigBgmVol2_HelpYpos;filename = tf.System_BtImg_ConfigBgmVol2_HelpImgFile;
		break;		
		case 10:
			xpos = tf.System_BtImg_ConfigSeVol1_HelpXpos;ypos = tf.System_BtImg_ConfigSeVol1_HelpYpos;filename = tf.System_BtImg_ConfigSeVol1_HelpImgFile;
		break;
		case 11:
			xpos = tf.System_BtImg_ConfigSeVol2_HelpXpos;ypos = tf.System_BtImg_ConfigSeVol2_HelpYpos;filename = tf.System_BtImg_ConfigSeVol2_HelpImgFile;
		break;		
		case 12:
			xpos = tf.System_BtImg_ConfigCvVol1_HelpXpos;ypos = tf.System_BtImg_ConfigCvVol1_HelpYpos;filename = tf.System_BtImg_ConfigCvVol1_HelpImgFile;
		break;
		case 13:
			xpos = tf.System_BtImg_ConfigCvVol2_HelpXpos;ypos = tf.System_BtImg_ConfigCvVol2_HelpYpos;filename = tf.System_BtImg_ConfigCvVol2_HelpImgFile;
		break;
		case 14:
			xpos = tf.System_BtImg_ConfigMsgOpacity1_HelpXpos;ypos = tf.System_BtImg_ConfigMsgOpacity1_HelpYpos;filename = tf.System_BtImg_ConfigMsgOpacity1_HelpImgFile;
		break;
		case 15:
			xpos = tf.System_BtImg_ConfigMsgOpacity2_HelpXpos;ypos = tf.System_BtImg_ConfigMsgOpacity2_HelpYpos;filename = tf.System_BtImg_ConfigMsgOpacity2_HelpImgFile;
		break;
		case 16:
			xpos = tf.System_BtImg_ConfigHelp1_HelpXpos;ypos = tf.System_BtImg_ConfigHelp1_HelpYpos;filename = tf.System_BtImg_ConfigHelp1_HelpImgFile;
		break;
		case 17:
			xpos = tf.System_BtImg_ConfigHelp2_HelpXpos;ypos = tf.System_BtImg_ConfigHelp2_HelpYpos;filename = tf.System_BtImg_ConfigHelp2_HelpImgFile;
		break;
		case 18:
			xpos = tf.System_BtImg_ConfigCvSkip1_HelpXpos;ypos = tf.System_BtImg_ConfigCvSkip1_HelpYpos;filename = tf.System_BtImg_ConfigCvSkip1_HelpImgFile;
		break;
		case 19:
			xpos = tf.System_BtImg_ConfigCvSkip2_HelpXpos;ypos = tf.System_BtImg_ConfigCvSkip2_HelpYpos;filename = tf.System_BtImg_ConfigCvSkip2_HelpImgFile;
		break;
		case 20:
			xpos = tf.System_BtImg_ConfigRightMenu1_HelpXpos;ypos = tf.System_BtImg_ConfigRightMenu1_HelpYpos;filename = tf.System_BtImg_ConfigRightMenu1_HelpImgFile;
		break;
		case 21:
			xpos = tf.System_BtImg_ConfigRightMenu2_HelpXpos;ypos = tf.System_BtImg_ConfigRightMenu2_HelpYpos;filename = tf.System_BtImg_ConfigRightMenu2_HelpImgFile;
		break;
		case 22:
			xpos = tf.System_BtImg_ConfigMsgSkip1_HelpXpos;ypos = tf.System_BtImg_ConfigMsgSkip1_HelpYpos;filename = tf.System_BtImg_ConfigMsgSkip1_HelpImgFile;
		break;
		case 23:
			xpos = tf.System_BtImg_ConfigMsgSkip2_HelpXpos;ypos = tf.System_BtImg_ConfigMsgSkip2_HelpYpos;filename = tf.System_BtImg_ConfigMsgSkip2_HelpImgFile;
		break;
		case 24:
			xpos = tf.System_BtImg_ConfigMsgWait1_HelpXpos;ypos = tf.System_BtImg_ConfigMsgWait1_HelpYpos;filename = tf.System_BtImg_ConfigMsgWait1_HelpImgFile;
		break;
		case 25:
			xpos = tf.System_BtImg_ConfigMsgWait2_HelpXpos;ypos = tf.System_BtImg_ConfigMsgWait2_HelpYpos;filename = tf.System_BtImg_ConfigMsgWait2_HelpImgFile;
		break;
		case 26:
			xpos = tf.System_BtImg_ConfigAllOnOff1_HelpXpos;ypos = tf.System_BtImg_ConfigAllOnOff1_HelpYpos;filename = tf.System_BtImg_ConfigAllOnOff1_HelpImgFile;
		break;
		case 27:
			xpos = tf.System_BtImg_ConfigAllOnOff2_HelpXpos;ypos = tf.System_BtImg_ConfigAllOnOff2_HelpYpos;filename = tf.System_BtImg_ConfigAllOnOff2_HelpImgFile;
		break;
		case 28:
			xpos = tf.System_BtImg_ConfigSaveChk1_HelpXpos;ypos = tf.System_BtImg_ConfigSaveChk1_HelpYpos;filename = tf.System_BtImg_ConfigSaveChk1_HelpImgFile;
		break;
		case 29:
			xpos = tf.System_BtImg_ConfigSaveChk2_HelpXpos;ypos = tf.System_BtImg_ConfigSaveChk2_HelpYpos;filename = tf.System_BtImg_ConfigSaveChk2_HelpImgFile;
		break;
		case 30:
			xpos = tf.System_BtImg_ConfigLoadChk1_HelpXpos;ypos = tf.System_BtImg_ConfigLoadChk1_HelpYpos;filename = tf.System_BtImg_ConfigLoadChk1_HelpImgFile;
		break;
		case 31:
			xpos = tf.System_BtImg_ConfigLoadChk2_HelpXpos;ypos = tf.System_BtImg_ConfigLoadChk2_HelpYpos;filename = tf.System_BtImg_ConfigLoadChk2_HelpImgFile;
		break;
		case 32:
			xpos = tf.System_BtImg_ConfigQSaveChk1_HelpXpos;ypos = tf.System_BtImg_ConfigQSaveChk1_HelpYpos;filename = tf.System_BtImg_ConfigQSaveChk1_HelpImgFile;
		break;
		case 33:
			xpos = tf.System_BtImg_ConfigQSaveChk2_HelpXpos;ypos = tf.System_BtImg_ConfigQSaveChk2_HelpYpos;filename = tf.System_BtImg_ConfigQSaveChk2_HelpImgFile;
		break;
		case 34:
			xpos = tf.System_BtImg_ConfigQLoadChk1_HelpXpos;ypos = tf.System_BtImg_ConfigQLoadChk1_HelpYpos;filename = tf.System_BtImg_ConfigQLoadChk1_HelpImgFile;
		break;
		case 35:
			xpos = tf.System_BtImg_ConfigQLoadChk2_HelpXpos;ypos = tf.System_BtImg_ConfigQLoadChk2_HelpYpos;filename = tf.System_BtImg_ConfigQLoadChk2_HelpImgFile;
		break;
		case 36:
			xpos = tf.System_BtImg_ConfigJumpChk1_HelpXpos;ypos = tf.System_BtImg_ConfigJumpChk1_HelpYpos;filename = tf.System_BtImg_ConfigJumpChk1_HelpImgFile;
		break;
		case 37:
			xpos = tf.System_BtImg_ConfigJumpChk2_HelpXpos;ypos = tf.System_BtImg_ConfigJumpChk2_HelpYpos;filename = tf.System_BtImg_ConfigJumpChk2_HelpImgFile;
		break;
		case 38:
			xpos = tf.System_BtImg_ConfigInitChk1_HelpXpos;ypos = tf.System_BtImg_ConfigInitChk1_HelpYpos;filename = tf.System_BtImg_ConfigInitChk1_HelpImgFile;
		break;
		case 39:
			xpos = tf.System_BtImg_ConfigInitChk2_HelpXpos;ypos = tf.System_BtImg_ConfigInitChk2_HelpYpos;filename = tf.System_BtImg_ConfigInitChk2_HelpImgFile;
		break;
		case 40:
			xpos = tf.System_BtImg_ConfigExitChk1_HelpXpos;ypos = tf.System_BtImg_ConfigExitChk1_HelpYpos;filename = tf.System_BtImg_ConfigExitChk1_HelpImgFile;
		break;
		case 41:
			xpos = tf.System_BtImg_ConfigExitChk2_HelpXpos;ypos = tf.System_BtImg_ConfigExitChk2_HelpYpos;filename = tf.System_BtImg_ConfigExitChk2_HelpImgFile;
		break;
		case 42://コンフィグボタンクリック時のヘルプ画像
			xpos = tf.System_Se_MessageWindow_Help1_Xpos;ypos = tf.System_Se_MessageWindow_Help1_Ypos;filename = tf.System_Se_MessageWindow_Help1_ImgFile;
		break;
		case 43:
			xpos = tf.System_Se_MessageWindow_Help2_Xpos;ypos = tf.System_Se_MessageWindow_Help2_Ypos;filename = tf.System_Se_MessageWindow_Help2_ImgFile;
		break;
		case 44:
			xpos = tf.System_Se_MessageWindow_Help3_Xpos;ypos = tf.System_Se_MessageWindow_Help3_Ypos;filename = tf.System_Se_MessageWindow_Help3_ImgFile;
		break;
		case 45:
			xpos = tf.System_Se_MessageWindow_Help4_Xpos;ypos = tf.System_Se_MessageWindow_Help4_Ypos;filename = tf.System_Se_MessageWindow_Help4_ImgFile;
		break;
		case 46:
			xpos = tf.System_Se_MessageWindow_Help5_Xpos;ypos = tf.System_Se_MessageWindow_Help5_Ypos;filename = tf.System_Se_MessageWindow_Help5_ImgFile;
		break;
		case 47:
			xpos = tf.System_Se_MessageWindow_Help6_Xpos;ypos = tf.System_Se_MessageWindow_Help6_Ypos;filename = tf.System_Se_MessageWindow_Help6_ImgFile;
		break;
		case 48:
			xpos = tf.System_Se_MessageWindow_Help7_Xpos;ypos = tf.System_Se_MessageWindow_Help7_Ypos;filename = tf.System_Se_MessageWindow_Help7_ImgFile;
		break;
		case 49:
			xpos = tf.System_Se_MessageWindow_Help8_Xpos;ypos = tf.System_Se_MessageWindow_Help8_Ypos;filename = tf.System_Se_MessageWindow_Help8_ImgFile;
		break;
		case 50:
			xpos = tf.System_Se_MessageWindow_Help9_Xpos;ypos = tf.System_Se_MessageWindow_Help9_Ypos;filename = tf.System_Se_MessageWindow_Help9_ImgFile;
		break;
		case 51:
			xpos = tf.System_Se_MessageWindow_Help10_Xpos;ypos = tf.System_Se_MessageWindow_Help10_Ypos;filename = tf.System_Se_MessageWindow_Help10_ImgFile;
		break;
	}
	if( filename != '')
		SysBtn_CreateImage(filename,xpos,ypos,"14","fore","true");
}
//指定のモードのオブジェクトを生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CreateConfigItem(RunMode)
{
	if( tf.EditKeyInputing == 1 )return;

	//システム画面の起動フラグをたてる
	kag.RunConfigModeFlg = true;


	//スライダー管理タイマーを生成
	if( tf.timer === void ){
		tf.timer = new Timer(this, "dataaction");  // タイマーオブジェクトを作ります
		kag.add(tf.timer);               // タイマーオブジェクトをウィンドウに管理してもらいます
		tf.timer.interval = 100;    // イベントの発生間隔を 1000 ミリ秒（＝１秒）に設定します
		tf.timer.enabled = false;     // タイマーを無効にします（有効になるのは、スライダーが実行された時のみとなる）
	}

//	kag.systemLayer.parent = kag.fore.base; // メッセージ履歴レイヤの親も再設定
//	kag.systemLayer.absolute = 2000000;
//	kag.systemLayer.dispInit();

	//既にある基本背景オブジェクトを削除
	SysBtn_DeleteButton("system_config_modeA","fore");
	SysBtn_DeleteButton("system_config_modeB","fore");
	SysBtn_DeleteButton("system_config_modeC","fore");
	
	//表示中のオブジェクトを生成
	SysBtn_ReleaseConfigObject(tf.ConfigTypeMode);
	tf.ConfigTypeMode = RunMode;//解放後にモードフラグ変更

	

	//基本背景を描画
	switch(RunMode)
	{
		case 0://基本設定画面
		SysBtn_CreateImage(tf.System_BgImg_ConfigBase_ModeABgImgFile,"0","0","11","fore","true");
		SysBtn_CreateImage(tf.System_BtImg_ConfigModeATab_BtFile2,tf.System_BtImg_ConfigModeATab_Xpos2,tf.System_BtImg_ConfigModeATab_Ypos2,"12","fore","true");
		SysBtn_CreateImage(tf.System_BtImg_ConfigModeATab_LayImgFile,"0","0","13","fore","true");

		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeBTab_BtFile, "name"=>tf.System_BtImg_ConfigModeBTab_BtName,"top"=>tf.System_BtImg_ConfigModeBTab_Ypos,"left"=>tf.System_BtImg_ConfigModeBTab_Xpos,"exp"=>tf.System_BtImg_ConfigModeBTab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeB_Sel,"clickse"=>tf.System_Se_Config_BtModeB_Sel_Click]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeCTab_BtFile, "name"=>tf.System_BtImg_ConfigModeCTab_BtName,"top"=>tf.System_BtImg_ConfigModeCTab_Ypos,"left"=>tf.System_BtImg_ConfigModeCTab_Xpos,"exp"=>tf.System_BtImg_ConfigModeCTab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeC_Sel,"clickse"=>tf.System_Se_Config_BtModeC_Sel_Click]);	

		//-モードコンテンツオブジェクトを生成
		//;画面モード　ConfigState1
		if( kag.fullScreened==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigScreen1A_BtFile, "name"=>tf.System_BtImg_ConfigScreen1_BtName,"top"=>tf.System_BtImg_ConfigScreen1_Ypos,"left"=>tf.System_BtImg_ConfigScreen1_Xpos,"exp"=>tf.System_BtImg_ConfigScreen1_ExpFunc,"enterse"=>tf.System_Se_Config_BtScreenMode1_Sel,"clickse"=>tf.System_Se_Config_BtScreenMode1_Click,"onenter"=>tf.System_BtImg_ConfigScreen1_InFunc,"onleave"=>tf.System_BtImg_ConfigScreen1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigScreen2A_BtFile, "name"=>tf.System_BtImg_ConfigScreen2_BtName,"top"=>tf.System_BtImg_ConfigScreen2_Ypos,"left"=>tf.System_BtImg_ConfigScreen2_Xpos,"exp"=>tf.System_BtImg_ConfigScreen2_ExpFunc,"enterse"=>tf.System_Se_Config_BtScreenMode2_Sel,"clickse"=>tf.System_Se_Config_BtScreenMode2_Click,"onenter"=>tf.System_BtImg_ConfigScreen2_InFunc,"onleave"=>tf.System_BtImg_ConfigScreen2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigScreen1B_BtFile, "name"=>tf.System_BtImg_ConfigScreen1_BtName,"top"=>tf.System_BtImg_ConfigScreen1_Ypos,"left"=>tf.System_BtImg_ConfigScreen1_Xpos,"exp"=>tf.System_BtImg_ConfigScreen1_ExpFunc,"enterse"=>tf.System_Se_Config_BtScreenMode1_Sel,"clickse"=>tf.System_Se_Config_BtScreenMode1_Click,"onenter"=>tf.System_BtImg_ConfigScreen1_InFunc,"onleave"=>tf.System_BtImg_ConfigScreen1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigScreen2B_BtFile, "name"=>tf.System_BtImg_ConfigScreen2_BtName,"top"=>tf.System_BtImg_ConfigScreen2_Ypos,"left"=>tf.System_BtImg_ConfigScreen2_Xpos,"exp"=>tf.System_BtImg_ConfigScreen2_ExpFunc,"enterse"=>tf.System_Se_Config_BtScreenMode2_Sel,"clickse"=>tf.System_Se_Config_BtScreenMode2_Click,"onenter"=>tf.System_BtImg_ConfigScreen2_InFunc,"onleave"=>tf.System_BtImg_ConfigScreen2_OutFunc]);	
		}
		//;ムービースキップ　
		if( sf.ConfigState2==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMovieSkip1A_BtFile, "name"=>tf.System_BtImg_ConfigMovieSkip1_BtName,"top"=>tf.System_BtImg_ConfigMovieSkip1_Ypos,"left"=>tf.System_BtImg_ConfigMovieSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigMovieSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtMovieSkip1_Sel,"onenter"=>tf.System_BtImg_ConfigMovieSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigMovieSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMovieSkip2A_BtFile, "name"=>tf.System_BtImg_ConfigMovieSkip2_BtName,"top"=>tf.System_BtImg_ConfigMovieSkip2_Ypos,"left"=>tf.System_BtImg_ConfigMovieSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigMovieSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtMovieSkip2_Sel,"onenter"=>tf.System_BtImg_ConfigMovieSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigMovieSkip2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMovieSkip1B_BtFile, "name"=>tf.System_BtImg_ConfigMovieSkip1_BtName,"top"=>tf.System_BtImg_ConfigMovieSkip1_Ypos,"left"=>tf.System_BtImg_ConfigMovieSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigMovieSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtMovieSkip1_Sel,"onenter"=>tf.System_BtImg_ConfigMovieSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigMovieSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMovieSkip2B_BtFile, "name"=>tf.System_BtImg_ConfigMovieSkip2_BtName,"top"=>tf.System_BtImg_ConfigMovieSkip2_Ypos,"left"=>tf.System_BtImg_ConfigMovieSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigMovieSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtMovieSkip2_Sel,"onenter"=>tf.System_BtImg_ConfigMovieSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigMovieSkip2_OutFunc]);	
		}
		//;エフェクトカット
		if( sf.ConfigState3==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigEffectCut1A_BtFile, "name"=>tf.System_BtImg_ConfigEffectCut1_BtName,"top"=>tf.System_BtImg_ConfigEffectCut1_Ypos,"left"=>tf.System_BtImg_ConfigEffectCut1_Xpos,"exp"=>tf.System_BtImg_ConfigEffectCut1_ExpFunc,"enterse"=>tf.System_Se_Config_BtEffectCut1_Sel,"clickse"=>tf.System_Se_Config_BtEffectCut1_Click,"onenter"=>tf.System_BtImg_ConfigEffectCut1_InFunc,"onleave"=>tf.System_BtImg_ConfigEffectCut1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigEffectCut2B_BtFile, "name"=>tf.System_BtImg_ConfigEffectCut2_BtName,"top"=>tf.System_BtImg_ConfigEffectCut2_Ypos,"left"=>tf.System_BtImg_ConfigEffectCut2_Xpos,"exp"=>tf.System_BtImg_ConfigEffectCut2_ExpFunc,"enterse"=>tf.System_Se_Config_BtEffectCut2_Sel,"clickse"=>tf.System_Se_Config_BtEffectCut2_Click,"onenter"=>tf.System_BtImg_ConfigEffectCut2_InFunc,"onleave"=>tf.System_BtImg_ConfigEffectCut2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigEffectCut1B_BtFile, "name"=>tf.System_BtImg_ConfigEffectCut1_BtName,"top"=>tf.System_BtImg_ConfigEffectCut1_Ypos,"left"=>tf.System_BtImg_ConfigEffectCut1_Xpos,"exp"=>tf.System_BtImg_ConfigEffectCut1_ExpFunc,"enterse"=>tf.System_Se_Config_BtEffectCut1_Sel,"clickse"=>tf.System_Se_Config_BtEffectCut1_Click,"onenter"=>tf.System_BtImg_ConfigEffectCut1_InFunc,"onleave"=>tf.System_BtImg_ConfigEffectCut1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigEffectCut2A_BtFile, "name"=>tf.System_BtImg_ConfigEffectCut2_BtName,"top"=>tf.System_BtImg_ConfigEffectCut2_Ypos,"left"=>tf.System_BtImg_ConfigEffectCut2_Xpos,"exp"=>tf.System_BtImg_ConfigEffectCut2_ExpFunc,"enterse"=>tf.System_Se_Config_BtEffectCut2_Sel,"clickse"=>tf.System_Se_Config_BtEffectCut2_Click,"onenter"=>tf.System_BtImg_ConfigEffectCut2_InFunc,"onleave"=>tf.System_BtImg_ConfigEffectCut2_OutFunc]);	
		}
		//;システムメニュー
		if( sf.ConfigState8==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigRightMenu1A_BtFile, "name"=>tf.System_BtImg_ConfigRightMenu1_BtName,"top"=>tf.System_BtImg_ConfigRightMenu1_Ypos,"left"=>tf.System_BtImg_ConfigRightMenu1_Xpos,"exp"=>tf.System_BtImg_ConfigRightMenu1_ExpFunc,"enterse"=>tf.System_Se_Config_BtSystemMenu1_Sel,"clickse"=>tf.System_Se_Config_BtSystemMenu1_Click,"onenter"=>tf.System_BtImg_ConfigRightMenu1_InFunc,"onleave"=>tf.System_BtImg_ConfigRightMenu1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigRightMenu2A_BtFile, "name"=>tf.System_BtImg_ConfigRightMenu2_BtName,"top"=>tf.System_BtImg_ConfigRightMenu2_Ypos,"left"=>tf.System_BtImg_ConfigRightMenu2_Xpos,"exp"=>tf.System_BtImg_ConfigRightMenu2_ExpFunc,"enterse"=>tf.System_Se_Config_BtSystemMenu2_Sel,"clickse"=>tf.System_Se_Config_BtSystemMenu2_Click,"onenter"=>tf.System_BtImg_ConfigRightMenu2_InFunc,"onleave"=>tf.System_BtImg_ConfigRightMenu2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigRightMenu1B_BtFile, "name"=>tf.System_BtImg_ConfigRightMenu1_BtName,"top"=>tf.System_BtImg_ConfigRightMenu1_Ypos,"left"=>tf.System_BtImg_ConfigRightMenu1_Xpos,"exp"=>tf.System_BtImg_ConfigRightMenu1_ExpFunc,"enterse"=>tf.System_Se_Config_BtSystemMenu1_Sel,"clickse"=>tf.System_Se_Config_BtSystemMenu1_Click,"onenter"=>tf.System_BtImg_ConfigRightMenu1_InFunc,"onleave"=>tf.System_BtImg_ConfigRightMenu1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigRightMenu2B_BtFile, "name"=>tf.System_BtImg_ConfigRightMenu2_BtName,"top"=>tf.System_BtImg_ConfigRightMenu2_Ypos,"left"=>tf.System_BtImg_ConfigRightMenu2_Xpos,"exp"=>tf.System_BtImg_ConfigRightMenu2_ExpFunc,"enterse"=>tf.System_Se_Config_BtSystemMenu2_Sel,"clickse"=>tf.System_Se_Config_BtSystemMenu2_Click,"onenter"=>tf.System_BtImg_ConfigRightMenu2_InFunc,"onleave"=>tf.System_BtImg_ConfigRightMenu2_OutFunc]);	
		}
		//;機能ヘルプ表示
		if( sf.ConfigState9==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigHelp1A_BtFile, "name"=>tf.System_BtImg_ConfigHelp1_BtName,"top"=>tf.System_BtImg_ConfigHelp1_Ypos,"left"=>tf.System_BtImg_ConfigHelp1_Xpos,"exp"=>tf.System_BtImg_ConfigHelp1_ExpFunc,"enterse"=>tf.System_Se_Config_BtHelp1_Sel,"clickse"=>tf.System_Se_Config_BtHelp1_Click,"onenter"=>tf.System_BtImg_ConfigHelp1_InFunc,"onleave"=>tf.System_BtImg_ConfigHelp1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigHelp2A_BtFile, "name"=>tf.System_BtImg_ConfigHelp2_BtName,"top"=>tf.System_BtImg_ConfigHelp2_Ypos,"left"=>tf.System_BtImg_ConfigHelp2_Xpos,"exp"=>tf.System_BtImg_ConfigHelp2_ExpFunc,"enterse"=>tf.System_Se_Config_BtHelp2_Sel,"clickse"=>tf.System_Se_Config_BtHelp2_Click,"onenter"=>tf.System_BtImg_ConfigHelp2_InFunc,"onleave"=>tf.System_BtImg_ConfigHelp2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigHelp1B_BtFile, "name"=>tf.System_BtImg_ConfigHelp1_BtName,"top"=>tf.System_BtImg_ConfigHelp1_Ypos,"left"=>tf.System_BtImg_ConfigHelp1_Xpos,"exp"=>tf.System_BtImg_ConfigHelp1_ExpFunc,"enterse"=>tf.System_Se_Config_BtHelp1_Sel,"clickse"=>tf.System_Se_Config_BtHelp1_Click,"onenter"=>tf.System_BtImg_ConfigHelp1_InFunc,"onleave"=>tf.System_BtImg_ConfigHelp1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigHelp2B_BtFile, "name"=>tf.System_BtImg_ConfigHelp2_BtName,"top"=>tf.System_BtImg_ConfigHelp2_Ypos,"left"=>tf.System_BtImg_ConfigHelp2_Xpos,"exp"=>tf.System_BtImg_ConfigHelp2_ExpFunc,"enterse"=>tf.System_Se_Config_BtHelp2_Sel,"clickse"=>tf.System_Se_Config_BtHelp2_Click,"onenter"=>tf.System_BtImg_ConfigHelp2_InFunc,"onleave"=>tf.System_BtImg_ConfigHelp2_OutFunc]);	
		}
		//;ボイススキップ*modeA_VoiceSkip
		if( sf.ConfigState10==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvSkip1A_BtFile, "name"=>tf.System_BtImg_ConfigCvSkip1_BtName,"top"=>tf.System_BtImg_ConfigCvSkip1_Ypos,"left"=>tf.System_BtImg_ConfigCvSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigCvSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtVoiceSkip1_Sel,"clickse"=>tf.System_Se_Config_BtVoiceSkip1_Click,"onenter"=>tf.System_BtImg_ConfigCvSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigCvSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvSkip2A_BtFile, "name"=>tf.System_BtImg_ConfigCvSkip2_BtName,"top"=>tf.System_BtImg_ConfigCvSkip2_Ypos,"left"=>tf.System_BtImg_ConfigCvSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigCvSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtVoiceSkip2_Sel,"clickse"=>tf.System_Se_Config_BtVoiceSkip2_Click,"onenter"=>tf.System_BtImg_ConfigCvSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigCvSkip2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvSkip1B_BtFile, "name"=>tf.System_BtImg_ConfigCvSkip1_BtName,"top"=>tf.System_BtImg_ConfigCvSkip1_Ypos,"left"=>tf.System_BtImg_ConfigCvSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigCvSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtVoiceSkip1_Sel,"clickse"=>tf.System_Se_Config_BtVoiceSkip1_Click,"onenter"=>tf.System_BtImg_ConfigCvSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigCvSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvSkip2B_BtFile, "name"=>tf.System_BtImg_ConfigCvSkip2_BtName,"top"=>tf.System_BtImg_ConfigCvSkip2_Ypos,"left"=>tf.System_BtImg_ConfigCvSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigCvSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtVoiceSkip2_Sel,"clickse"=>tf.System_Se_Config_BtVoiceSkip2_Click,"onenter"=>tf.System_BtImg_ConfigCvSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigCvSkip2_OutFunc]);	
		}
		//;スキップ機能
		if( sf.allskip==0 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgSkip1A_BtFile, "name"=>tf.System_BtImg_ConfigMsgSkip1_BtName,"top"=>tf.System_BtImg_ConfigMsgSkip1_Ypos,"left"=>tf.System_BtImg_ConfigMsgSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigMsgSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtSkipFunc1_Sel,"clickse"=>tf.System_Se_Config_BtSkipFunc1_Click,"onenter"=>tf.System_BtImg_ConfigMsgSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgSkip2A_BtFile, "name"=>tf.System_BtImg_ConfigMsgSkip2_BtName,"top"=>tf.System_BtImg_ConfigMsgSkip2_Ypos,"left"=>tf.System_BtImg_ConfigMsgSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigMsgSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtSkipFunc2_Sel,"clickse"=>tf.System_Se_Config_BtSkipFunc2_Click,"onenter"=>tf.System_BtImg_ConfigMsgSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgSkip2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgSkip1B_BtFile, "name"=>tf.System_BtImg_ConfigMsgSkip1_BtName,"top"=>tf.System_BtImg_ConfigMsgSkip1_Ypos,"left"=>tf.System_BtImg_ConfigMsgSkip1_Xpos,"exp"=>tf.System_BtImg_ConfigMsgSkip1_ExpFunc,"enterse"=>tf.System_Se_Config_BtSkipFunc1_Sel,"clickse"=>tf.System_Se_Config_BtSkipFunc1_Click,"onenter"=>tf.System_BtImg_ConfigMsgSkip1_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgSkip1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgSkip2B_BtFile, "name"=>tf.System_BtImg_ConfigMsgSkip2_BtName,"top"=>tf.System_BtImg_ConfigMsgSkip2_Ypos,"left"=>tf.System_BtImg_ConfigMsgSkip2_Xpos,"exp"=>tf.System_BtImg_ConfigMsgSkip2_ExpFunc,"enterse"=>tf.System_Se_Config_BtSkipFunc2_Sel,"clickse"=>tf.System_Se_Config_BtSkipFunc2_Click,"onenter"=>tf.System_BtImg_ConfigMsgSkip2_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgSkip2_OutFunc]);	
		}
		//;ダイアログ
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigAllOnOff1_BtFile, "name"=>tf.System_BtImg_ConfigAllOnOff1_BtName,"top"=>tf.System_BtImg_ConfigAllOnOff1_Ypos,"left"=>tf.System_BtImg_ConfigAllOnOff1_Xpos,"exp"=>tf.System_BtImg_ConfigAllOnOff1_ExpFunc,"enterse"=>tf.System_Se_Config_BtAllOnOff1_Sel,"clickse"=>tf.System_Se_Config_BtAllOnOff1_Click,"onenter"=>tf.System_BtImg_ConfigAllOnOff1_InFunc,"onleave"=>tf.System_BtImg_ConfigAllOnOff1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigAllOnOff2_BtFile, "name"=>tf.System_BtImg_ConfigAllOnOff2_BtName,"top"=>tf.System_BtImg_ConfigAllOnOff2_Ypos,"left"=>tf.System_BtImg_ConfigAllOnOff2_Xpos,"exp"=>tf.System_BtImg_ConfigAllOnOff2_ExpFunc,"enterse"=>tf.System_Se_Config_BtAllOnOff2_Sel,"clickse"=>tf.System_Se_Config_BtAllOnOff2_Click,"onenter"=>tf.System_BtImg_ConfigAllOnOff2_InFunc,"onleave"=>tf.System_BtImg_ConfigAllOnOff2_OutFunc]);	
		//;セーブ確認
		if( sf.ConfigState14==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSaveChk1A_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSaveChk2A_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_2_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSaveChk1B_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSaveChk2B_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_2_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk2_OutFunc]);	
		}
		//;ロード確認
		if( sf.ConfigState15==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigLoadChk1A_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_1_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigLoadChk2A_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_2_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigLoadChk1B_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_1_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigLoadChk2B_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_2_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk2_OutFunc]);	
		}
		//;クイックセーブ確認
		if( sf.ConfigState16==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQSaveChk1A_BtFile, "name"=>tf.System_BtImg_ConfigQSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigQSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_1_Click,"onenter"=>tf.System_BtImg_ConfigQSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQSaveChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQSaveChk2A_BtFile, "name"=>tf.System_BtImg_ConfigQSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigQSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_2_Click,"onenter"=>tf.System_BtImg_ConfigQSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQSaveChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQSaveChk1B_BtFile, "name"=>tf.System_BtImg_ConfigQSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigQSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_1_Click,"onenter"=>tf.System_BtImg_ConfigQSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQSaveChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQSaveChk2B_BtFile, "name"=>tf.System_BtImg_ConfigQSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigQSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_2_Click,"onenter"=>tf.System_BtImg_ConfigQSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQSaveChk2_OutFunc]);	
		}
		//;クイックロード確認
		if( sf.ConfigState17==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQLoadChk1A_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_1_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQLoadChk2A_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_2_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQLoadChk1B_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_1_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQLoadChk2B_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_2_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk2_OutFunc]);	
		}
		//;ジャンプ確認
		if( sf.ConfigState18==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigJumpChk1A_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk1_BtName,"top"=>tf.System_BtImg_ConfigJumpChk1_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk1_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_1_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigJumpChk2A_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk2_BtName,"top"=>tf.System_BtImg_ConfigJumpChk2_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk2_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_2_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigJumpChk1B_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk1_BtName,"top"=>tf.System_BtImg_ConfigJumpChk1_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk1_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_1_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigJumpChk2B_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk2_BtName,"top"=>tf.System_BtImg_ConfigJumpChk2_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk2_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_2_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk2_OutFunc]);	
		}
		//;設定初期化確認
		if( sf.ConfigState19==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigInitChk1A_BtFile, "name"=>tf.System_BtImg_ConfigInitChk1_BtName,"top"=>tf.System_BtImg_ConfigInitChk1_Ypos,"left"=>tf.System_BtImg_ConfigInitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_1_Click,"onenter"=>tf.System_BtImg_ConfigInitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigInitChk2A_BtFile, "name"=>tf.System_BtImg_ConfigInitChk2_BtName,"top"=>tf.System_BtImg_ConfigInitChk2_Ypos,"left"=>tf.System_BtImg_ConfigInitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_2_Click,"onenter"=>tf.System_BtImg_ConfigInitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk2_OutFunc]);	
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigInitChk1B_BtFile, "name"=>tf.System_BtImg_ConfigInitChk1_BtName,"top"=>tf.System_BtImg_ConfigInitChk1_Ypos,"left"=>tf.System_BtImg_ConfigInitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_1_Click,"onenter"=>tf.System_BtImg_ConfigInitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigInitChk2B_BtFile, "name"=>tf.System_BtImg_ConfigInitChk2_BtName,"top"=>tf.System_BtImg_ConfigInitChk2_Ypos,"left"=>tf.System_BtImg_ConfigInitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_2_Click,"onenter"=>tf.System_BtImg_ConfigInitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk2_OutFunc]);	
		}
		//;ゲーム終了確認
		if( sf.ConfigState20==1 ){
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigExitChk1A_BtFile, "name"=>tf.System_BtImg_ConfigExitChk1_BtName,"top"=>tf.System_BtImg_ConfigExitChk1_Ypos,"left"=>tf.System_BtImg_ConfigExitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_1_Click,"onenter"=>tf.System_BtImg_ConfigExitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigExitChk2A_BtFile, "name"=>tf.System_BtImg_ConfigExitChk2_BtName,"top"=>tf.System_BtImg_ConfigExitChk2_Ypos,"left"=>tf.System_BtImg_ConfigExitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_2_Click,"onenter"=>tf.System_BtImg_ConfigExitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk2_OutFunc]);	
//		SysBtn_CreateButton("system_config_modeA_State20A2","system_config_modeA_State20A",643,818,"system_config_modeA_Exit(1)","ViewHelp(40)","HideHelp()");
//		SysBtn_CreateButton("system_config_modeA_State20B1","system_config_modeA_State20B",643,905,"system_config_modeA_Exit(1)","ViewHelp(41)","HideHelp()");
		}else{
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigExitChk1B_BtFile, "name"=>tf.System_BtImg_ConfigExitChk1_BtName,"top"=>tf.System_BtImg_ConfigExitChk1_Ypos,"left"=>tf.System_BtImg_ConfigExitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_1_Click,"onenter"=>tf.System_BtImg_ConfigExitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk1_OutFunc]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigExitChk2B_BtFile, "name"=>tf.System_BtImg_ConfigExitChk2_BtName,"top"=>tf.System_BtImg_ConfigExitChk2_Ypos,"left"=>tf.System_BtImg_ConfigExitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_2_Click,"onenter"=>tf.System_BtImg_ConfigExitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk2_OutFunc]);	
//		SysBtn_CreateButton("system_config_modeA_State20A1","system_config_modeA_State20A",643,818,"system_config_modeA_Exit(1)","ViewHelp(40)","HideHelp()");
//		SysBtn_CreateButton("system_config_modeA_State20B2","system_config_modeA_State20B",643,905,"system_config_modeA_Exit(1)","ViewHelp(41)","HideHelp()");
		}

		break;
		case 1://キーボード設定

		//;マスターボリューム
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMasterVol1_BtFile, "name"=>tf.System_BtImg_ConfigMasterVol1_BtName,"top"=>tf.System_BtImg_ConfigMasterVol1_Ypos,"left"=>tf.System_BtImg_ConfigMasterVol1_Xpos,"exp"=>tf.System_BtImg_ConfigMasterVol1_ExpFunc,"enterse"=>tf.System_Se_Config_BtMasterVolume1_Sel,"clickse"=>tf.System_Se_Config_BtMasterVolume1_Click,"onenter"=>tf.System_BtImg_ConfigMasterVol1_InFunc,"onleave"=>tf.System_BtImg_ConfigMasterVol1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMasterVol2_BtFile, "name"=>tf.System_BtImg_ConfigMasterVol2_BtName,"top"=>tf.System_BtImg_ConfigMasterVol2_Ypos,"left"=>tf.System_BtImg_ConfigMasterVol2_Xpos,"exp"=>tf.System_BtImg_ConfigMasterVol2_ExpFunc,"enterse"=>tf.System_Se_Config_BtMasterVolume2_Sel,"clickse"=>tf.System_Se_Config_BtMasterVolume2_Click,"onenter"=>tf.System_BtImg_ConfigMasterVol2_InFunc,"onleave"=>tf.System_BtImg_ConfigMasterVol2_OutFunc]);	
		//;BGMボリューム
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigBgmVol1_BtFile, "name"=>tf.System_BtImg_ConfigBgmVol1_BtName,"top"=>tf.System_BtImg_ConfigBgmVol1_Ypos,"left"=>tf.System_BtImg_ConfigBgmVol1_Xpos,"exp"=>tf.System_BtImg_ConfigBgmVol1_ExpFunc,"enterse"=>tf.System_Se_Config_BtBgmVolume1_Sel,"clickse"=>tf.System_Se_Config_BtBgmVolume1_Click,"onenter"=>tf.System_BtImg_ConfigBgmVol1_InFunc,"onleave"=>tf.System_BtImg_ConfigBgmVol1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigBgmVol2_BtFile, "name"=>tf.System_BtImg_ConfigBgmVol2_BtName,"top"=>tf.System_BtImg_ConfigBgmVol2_Ypos,"left"=>tf.System_BtImg_ConfigBgmVol2_Xpos,"exp"=>tf.System_BtImg_ConfigBgmVol2_ExpFunc,"enterse"=>tf.System_Se_Config_BtBgmVolume2_Sel,"clickse"=>tf.System_Se_Config_BtBgmVolume2_Click,"onenter"=>tf.System_BtImg_ConfigBgmVol2_InFunc,"onleave"=>tf.System_BtImg_ConfigBgmVol2_OutFunc]);	
		//;SEボリューム
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSeVol1_BtFile, "name"=>tf.System_BtImg_ConfigSeVol1_BtName,"top"=>tf.System_BtImg_ConfigSeVol1_Ypos,"left"=>tf.System_BtImg_ConfigSeVol1_Xpos,"exp"=>tf.System_BtImg_ConfigSeVol1_ExpFunc,"enterse"=>tf.System_Se_Config_BtSeVolume1_Sel,"clickse"=>tf.System_Se_Config_BtSeVolume1_Click,"onenter"=>tf.System_BtImg_ConfigSeVol1_InFunc,"onleave"=>tf.System_BtImg_ConfigSeVol1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSeVol2_BtFile, "name"=>tf.System_BtImg_ConfigSeVol2_BtName,"top"=>tf.System_BtImg_ConfigSeVol2_Ypos,"left"=>tf.System_BtImg_ConfigSeVol2_Xpos,"exp"=>tf.System_BtImg_ConfigSeVol2_ExpFunc,"enterse"=>tf.System_Se_Config_BtSeVolume2_Sel,"clickse"=>tf.System_Se_Config_BtSeVolume2_Click,"onenter"=>tf.System_BtImg_ConfigSeVol2_InFunc,"onleave"=>tf.System_BtImg_ConfigSeVol2_OutFunc]);	
		//;ボイスボリューム
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvVol1_BtFile, "name"=>tf.System_BtImg_ConfigCvVol1_BtName,"top"=>tf.System_BtImg_ConfigCvVol1_Ypos,"left"=>tf.System_BtImg_ConfigCvVol1_Xpos,"exp"=>tf.System_BtImg_ConfigCvVol1_ExpFunc,"enterse"=>tf.System_Se_Config_BtCvVolume1_Sel,"clickse"=>tf.System_Se_Config_BtCvVolume1_Click,"onenter"=>tf.System_BtImg_ConfigCvVol1_InFunc,"onleave"=>tf.System_BtImg_ConfigCvVol1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigCvVol2_BtFile, "name"=>tf.System_BtImg_ConfigCvVol2_BtName,"top"=>tf.System_BtImg_ConfigCvVol2_Ypos,"left"=>tf.System_BtImg_ConfigCvVol2_Xpos,"exp"=>tf.System_BtImg_ConfigCvVol2_ExpFunc,"enterse"=>tf.System_Se_Config_BtCvVolume2_Sel,"clickse"=>tf.System_Se_Config_BtCvVolume2_Click,"onenter"=>tf.System_BtImg_ConfigCvVol2_InFunc,"onleave"=>tf.System_BtImg_ConfigCvVol2_OutFunc]);	
		//;ウインドウ透過率
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgOpacity1_BtFile, "name"=>tf.System_BtImg_ConfigMsgOpacity1_BtName,"top"=>tf.System_BtImg_ConfigMsgOpacity1_Ypos,"left"=>tf.System_BtImg_ConfigMsgOpacity1_Xpos,"exp"=>tf.System_BtImg_ConfigMsgOpacity1_ExpFunc,"enterse"=>tf.System_Se_Config_BtMsgWindowOpacity1_Sel,"clickse"=>tf.System_Se_Config_BtMsgWindowOpacity1_Click,"onenter"=>tf.System_BtImg_ConfigMsgOpacity1_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgOpacity1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgOpacity2_BtFile, "name"=>tf.System_BtImg_ConfigMsgOpacity2_BtName,"top"=>tf.System_BtImg_ConfigMsgOpacity2_Ypos,"left"=>tf.System_BtImg_ConfigMsgOpacity2_Xpos,"exp"=>tf.System_BtImg_ConfigMsgOpacity2_ExpFunc,"enterse"=>tf.System_Se_Config_BtMsgWindowOpacity2_Sel,"clickse"=>tf.System_Se_Config_BtMsgWindowOpacity2_Click,"onenter"=>tf.System_BtImg_ConfigMsgOpacity2_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgOpacity2_OutFunc]);	
		//;メッセージウエイト
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgWait1_BtFile, "name"=>tf.System_BtImg_ConfigMsgWait1_BtName,"top"=>tf.System_BtImg_ConfigMsgWait1_Ypos,"left"=>tf.System_BtImg_ConfigMsgWait1_Xpos,"exp"=>tf.System_BtImg_ConfigMsgWait1_ExpFunc,"enterse"=>tf.System_Se_Config_BtTextWait1_Sel,"clickse"=>tf.System_Se_Config_BtTextWait1_Click,"onenter"=>tf.System_BtImg_ConfigMsgWait1_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgWait1_OutFunc]);	
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigMsgWait2_BtFile, "name"=>tf.System_BtImg_ConfigMsgWait2_BtName,"top"=>tf.System_BtImg_ConfigMsgWait2_Ypos,"left"=>tf.System_BtImg_ConfigMsgWait2_Xpos,"exp"=>tf.System_BtImg_ConfigMsgWait2_ExpFunc,"enterse"=>tf.System_Se_Config_BtTextWait2_Sel,"clickse"=>tf.System_Se_Config_BtTextWait2_Click,"onenter"=>tf.System_BtImg_ConfigMsgWait2_InFunc,"onleave"=>tf.System_BtImg_ConfigMsgWait2_OutFunc]);	
		//スライダーオブジェクトを生成
		slider_init("layer11");
		SysBtn_CreateSlider("config1","fore",tf.System_Se_Config_Slider_MasterVol_BaseXpos,tf.System_Se_Config_Slider_MasterVol_BaseYpos,"sf.Config_Volume1",tf.System_Se_Config_Slider_MasterVol_BaseImgFile,tf.System_Se_Config_Slider_MasterVol_TabImgFile,"MoveConfigSlider",100);
		SysBtn_CreateSlider("config2","fore",tf.System_Se_Config_Slider_BgmVol_BaseXpos,tf.System_Se_Config_Slider_BgmVol_BaseYpos,"sf.Config_Volume2",tf.System_Se_Config_Slider_BgmVol_BaseImgFile,tf.System_Se_Config_Slider_BgmVol_TabImgFile,"MoveConfigSlider",100);
		SysBtn_CreateSlider("config3","fore",tf.System_Se_Config_Slider_SeVol_BaseXpos,tf.System_Se_Config_Slider_SeVol_BaseYpos,"sf.Config_Volume3",tf.System_Se_Config_Slider_SeVol_BaseImgFile,tf.System_Se_Config_Slider_SeVol_TabImgFile,"MoveConfigSlider",100);
		SysBtn_CreateSlider("config4","fore",tf.System_Se_Config_Slider_CvVol_BaseXpos,tf.System_Se_Config_Slider_CvVol_BaseYpos,"sf.Config_Volume4",tf.System_Se_Config_Slider_CvVol_BaseImgFile,tf.System_Se_Config_Slider_CvVol_TabImgFile,"MoveConfigSlider",100);
		SysBtn_CreateSlider("config5","fore",tf.System_Se_Config_Slider_MsgOpacityVol_BaseXpos,tf.System_Se_Config_Slider_MsgOpacityVol_BaseYpos,"sf.Config_MsgOpacity",tf.System_Se_Config_Slider_MsgOpacityVol_BaseImgFile,tf.System_Se_Config_Slider_MsgOpacityVol_TabImgFile,"MoveConfigSlider",255);
		SysBtn_CreateSlider("config6","fore",tf.System_Se_Config_Slider_TextWaitVol_BaseXpos,tf.System_Se_Config_Slider_TextWaitVol_BaseYpos,"sf.Config_MsgSpeed",tf.System_Se_Config_Slider_TextWaitVol_BaseImgFile,tf.System_Se_Config_Slider_TextWaitVol_TabImgFile,"MoveConfigSlider",100);

			SysBtn_CreateImage(tf.System_BgImg_ConfigBase_ModeBBgImgFile,"0","0","11","fore","true");
			SysBtn_CreateImage(tf.System_BtImg_ConfigModeBTab_BtFile2,tf.System_BtImg_ConfigModeBTab_Xpos2,tf.System_BtImg_ConfigModeBTab_Ypos2,"12","fore","true");
			SysBtn_CreateImage(tf.System_BtImg_ConfigModeBTab_LayImgFile,"0","0","13","fore","true");

			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeATab_BtFile, "name"=>tf.System_BtImg_ConfigModeATab_BtName,"top"=>tf.System_BtImg_ConfigModeATab_Ypos,"left"=>tf.System_BtImg_ConfigModeATab_Xpos,"exp"=>tf.System_BtImg_ConfigModeATab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeA_Sel,"clickse"=>tf.System_Se_Config_BtModeA_Sel_Click]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeCTab_BtFile, "name"=>tf.System_BtImg_ConfigModeCTab_BtName,"top"=>tf.System_BtImg_ConfigModeCTab_Ypos,"left"=>tf.System_BtImg_ConfigModeCTab_Xpos,"exp"=>tf.System_BtImg_ConfigModeCTab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeC_Sel,"clickse"=>tf.System_Se_Config_BtModeC_Sel_Click]);	

			//function SysBtn_CreateStr(text,layer,page,x,y,size,color,edge,shadow)
			//メッセージ送り
			if( tf.System_BtImg_ConfigSCutKey_ANext_Use == 1){
				SysBtn_GetKeyCode(0);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_ANext_CodeXpos,tf.System_BtImg_ConfigSCutKey_ANext_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_ANext_Fontcolor,"false","false");
			}
			//メッセージウインドウ消去
			if( tf.System_BtImg_ConfigSCutKey_AMsgHide_Use == 1 ){
				SysBtn_GetKeyCode(1);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_AMsgHide_CodeXpos,tf.System_BtImg_ConfigSCutKey_AMsgHide_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_AMsgHide_Fontcolor,"false","false");
			}
			//システム画面呼び出し
			if( tf.System_BtImg_ConfigSCutKey_AConfig_Use == 1 ){
				SysBtn_GetKeyCode(2);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_AConfig_CodeXpos,tf.System_BtImg_ConfigSCutKey_AConfig_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_ASelUp_Fontcolor,"false","false");
			}
			//選択肢の移動・上
			if( tf.System_BtImg_ConfigSCutKey_ASelUp_Use == 1 ){
				SysBtn_GetKeyCode(3);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_ASelUp_CodeXpos,tf.System_BtImg_ConfigSCutKey_ASelUp_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_ASelUp_Fontcolor,"false","false");
			}
			//選択肢の移動・下
			if( tf.System_BtImg_ConfigSCutKey_ASelDown_Use == 1 ){
				SysBtn_GetKeyCode(4);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_ASelDown_CodeXpos,tf.System_BtImg_ConfigSCutKey_ASelDown_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_ASelDown_Fontcolor,"false","false");
			}
			//メッセージログの呼び出し
			if( tf.System_BtImg_ConfigSCutKey_Amsglog_Use == 1 ){
				SysBtn_GetKeyCode(5);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Amsglog_CodeXpos,tf.System_BtImg_ConfigSCutKey_Amsglog_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Amsglog_Fontcolor,"false","false");
			}
			//メッセージスキップ
			if( tf.System_BtImg_ConfigSCutKey_Askip_Use == 1 ){
				SysBtn_GetKeyCode(6);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Askip_CodeXpos,tf.System_BtImg_ConfigSCutKey_Askip_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Askip_Fontcolor,"false","false");
			}
			//クイックセーブ
			if( tf.System_BtImg_ConfigSCutKey_AQsave_Use == 1 ){
				SysBtn_GetKeyCode(7);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_AQsave_CodeXpos,tf.System_BtImg_ConfigSCutKey_AQsave_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_AQsave_Fontcolor,"false","false");
			}
			//クイックロード
			if( tf.System_BtImg_ConfigSCutKey_AQload_Use == 1 ){
				SysBtn_GetKeyCode(8);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_AQload_CodeXpos,tf.System_BtImg_ConfigSCutKey_AQload_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_AQload_Fontcolor,"false","false");
			}
			//セーブ画面呼び出し
			if( tf.System_BtImg_ConfigSCutKey_Asave_Use == 1 ){
				SysBtn_GetKeyCode(9);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Asave_CodeXpos,tf.System_BtImg_ConfigSCutKey_Asave_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Asave_Fontcolor,"false","false");
			}
			//ロード画面呼び出し
			if( tf.System_BtImg_ConfigSCutKey_Aload_Use == 1 ){
				SysBtn_GetKeyCode(10);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Aload_CodeXpos,tf.System_BtImg_ConfigSCutKey_Aload_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Aload_Fontcolor,"false","false");
			}
			//スキップモード切替
			if( tf.System_BtImg_ConfigSCutKey_Askipmode_Use == 1 ){
				SysBtn_GetKeyCode(11);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Askipmode_CodeXpos,tf.System_BtImg_ConfigSCutKey_Askipmode_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Ajump_Fontcolor,"false","false");
			}
			//シーンジャンプ
			if( tf.System_BtImg_ConfigSCutKey_Ajump_Use == 1 ){
				SysBtn_GetKeyCode(12);
				SysBtn_CreateStr(sf.Config_Key_GetCode,"13","fore",tf.System_BtImg_ConfigSCutKey_Ajump_CodeXpos,tf.System_BtImg_ConfigSCutKey_Ajump_CodeYpos,tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize,tf.System_BtImg_ConfigSCutKey_Ajump_Fontcolor,"false","false");
			}
			
			
			//キーコード透明ボタン生成
			//function SysBtn_CreateButton(graphic,name,top,left,exp,onenter,onleave)
			
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_ANext_ImgFile, "name"=>"system_config_modeC_EditKey1","left"=>tf.System_BtImg_ConfigSCutKey_ANext_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_ANext_Ypos,"exp"=>"KeyInput(0)","enterse"=>tf.System_BtImg_ConfigSCutKey_ANext_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_ANext_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_AMsgHide_ImgFile, "name"=>"system_config_modeC_EditKey2","left"=>tf.System_BtImg_ConfigSCutKey_AMsgHide_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_AMsgHide_Ypos,"exp"=>"KeyInput(1)","enterse"=>tf.System_BtImg_ConfigSCutKey_AMsgHide_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_AMsgHide_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_AConfig_ImgFile, "name"=>"system_config_modeC_EditKey3","left"=>tf.System_BtImg_ConfigSCutKey_AConfig_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_AConfig_Ypos,"exp"=>"KeyInput(2)","enterse"=>tf.System_BtImg_ConfigSCutKey_AConfig_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_AConfig_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_ASelUp_ImgFile, "name"=>"system_config_modeC_EditKey4","left"=>tf.System_BtImg_ConfigSCutKey_ASelUp_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_ASelUp_Ypos,"exp"=>"KeyInput(3)","enterse"=>tf.System_BtImg_ConfigSCutKey_ASelUp_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_ASelUp_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_ASelDown_ImgFile, "name"=>"system_config_modeC_EditKey5","left"=>tf.System_BtImg_ConfigSCutKey_ASelDown_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_ASelDown_Ypos,"exp"=>"KeyInput(4)","enterse"=>tf.System_BtImg_ConfigSCutKey_ASelDown_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_ASelDown_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Amsglog_ImgFile, "name"=>"system_config_modeC_EditKey6","left"=>tf.System_BtImg_ConfigSCutKey_Amsglog_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Amsglog_Ypos,"exp"=>"KeyInput(5)","enterse"=>tf.System_BtImg_ConfigSCutKey_Amsglog_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Amsglog_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Askip_ImgFile, "name"=>"system_config_modeC_EditKey7","left"=>tf.System_BtImg_ConfigSCutKey_Askip_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Askip_Ypos,"exp"=>"KeyInput(6)","enterse"=>tf.System_BtImg_ConfigSCutKey_Askip_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Askip_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_AQsave_ImgFile, "name"=>"system_config_modeC_EditKey8","left"=>tf.System_BtImg_ConfigSCutKey_AQsave_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_AQsave_Ypos,"exp"=>"KeyInput(7)","enterse"=>tf.System_BtImg_ConfigSCutKey_AQsave_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_AQsave_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_AQload_ImgFile, "name"=>"system_config_modeC_EditKey9","left"=>tf.System_BtImg_ConfigSCutKey_AQload_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_AQload_Ypos,"exp"=>"KeyInput(8)","enterse"=>tf.System_BtImg_ConfigSCutKey_AQload_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_AQload_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Asave_ImgFile, "name"=>"system_config_modeC_EditKey10","left"=>tf.System_BtImg_ConfigSCutKey_Asave_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Asave_Ypos,"exp"=>"KeyInput(9)","enterse"=>tf.System_BtImg_ConfigSCutKey_Asave_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Asave_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Aload_ImgFile, "name"=>"system_config_modeC_EditKey11","left"=>tf.System_BtImg_ConfigSCutKey_Aload_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Aload_Ypos,"exp"=>"KeyInput(10)","enterse"=>tf.System_BtImg_ConfigSCutKey_Aload_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Aload_ClickSeFile]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Askipmode_ImgFile, "name"=>"system_config_modeC_EditKey12","left"=>tf.System_BtImg_ConfigSCutKey_Askipmode_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Askipmode_Ypos,"exp"=>"KeyInput(11)","enterse"=>tf.System_BtImg_ConfigSCutKey_Askipmode_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Askipmode_ClickSeFile]);	

			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_Ajump_ImgFile, "name"=>"system_config_modeC_EditKey13","left"=>tf.System_BtImg_ConfigSCutKey_Ajump_Xpos,"top"=>tf.System_BtImg_ConfigSCutKey_Ajump_Ypos,"exp"=>"KeyInput(12)","enterse"=>tf.System_BtImg_ConfigSCutKey_Ajump_SelSeFile,"clickse"=>tf.System_BtImg_ConfigSCutKey_Ajump_ClickSeFile]);	
		break;
		case 2:
			SysBtn_CreateImage(tf.System_BgImg_ConfigBase_ModeCBgImgFile,"0","0","11","fore","true");
			SysBtn_CreateImage(tf.System_BtImg_ConfigModeCTab_BtFile2,tf.System_BtImg_ConfigModeCTab_Xpos2,tf.System_BtImg_ConfigModeCTab_Ypos2,"12","fore","true");
			SysBtn_CreateImage(tf.System_BtImg_ConfigModeCTab_LayImgFile,"0","0","13","fore","true");

			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeATab_BtFile, "name"=>tf.System_BtImg_ConfigModeATab_BtName,"top"=>tf.System_BtImg_ConfigModeATab_Ypos,"left"=>tf.System_BtImg_ConfigModeATab_Xpos,"exp"=>tf.System_BtImg_ConfigModeATab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeA_Sel,"clickse"=>tf.System_Se_Config_BtModeA_Sel_Click]);	
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigModeBTab_BtFile, "name"=>tf.System_BtImg_ConfigModeBTab_BtName,"top"=>tf.System_BtImg_ConfigModeBTab_Ypos,"left"=>tf.System_BtImg_ConfigModeBTab_Xpos,"exp"=>tf.System_BtImg_ConfigModeBTab_ExpFunc,"enterse"=>tf.System_Se_Config_BtModeB_Sel,"clickse"=>tf.System_Se_Config_BtModeB_Sel_Click]);	


			//登場キャラクター数　コンフィグに表示する
			//表示フラグ利用時は、ONになっていないキャラは読み飛ばされる
			for(var loop=0;loop<sf.config_Character_FontcolorCount;loop++){
				switch(loop){
					case 0://1キャラクター目
						tf.ypos=122;
					break;
					case 1:
						tf.ypos=141;
					break;
					case 2:
						tf.ypos=189;
					break;
					case 3:
						tf.ypos=242;
					break;
					case 4:
						tf.ypos=290;
					break;
					case 5:
						tf.ypos=342;
					break;
					case 6:
						tf.ypos=393;
					break;
					case 7:
						tf.ypos=444;
					break;
					case 8:
						tf.ypos=493;
					break;
					case 9:
						tf.ypos=542;
					break;
					case 10:
						tf.ypos=591;
					break;
					case 11:
						tf.ypos=640;
					break;
					case 12:
						tf.ypos=689;
					break;
				}
				tf.Label='*system_config_modeC_CV'+tf.loop;
				tf.NameA='system_config_modeC_VoiceState_A'+loop;
				tf.NameB='system_config_modeC_VoiceState_B'+loop;
				
				if(sf.config_Character_Fontcolor[loop][4]==1){
					SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[loop], "name"=>tf.NameA,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[loop]]);	
					SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[loop], "name"=>tf.NameB,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[loop]]);	
				}
				else{
					if( tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[loop].length > 0 ){
						SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[loop], "name"=>tf.NameA,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[loop]]);	
						SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[loop], "name"=>tf.NameB,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[loop]]);	
					}
/*					if( loop < 1 ){
						SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[loop], "name"=>tf.NameA,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[loop],"left"=>sf.tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[loop]]);	
						SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[loop], "name"=>tf.NameB,"top"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[loop],"exp"=>"VoiceMUteChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[loop]]);	
					}
*/				}
				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaReset_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[loop],"exp"=>"VoiceResetChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[loop]]);	

				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaREDMIN_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[loop],"exp"=>"FontColRedMinChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[loop]]);	
				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaREDMAX_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[loop],"exp"=>"FontColRedMaxChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[loop]]);	

				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaGREENMIN_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[loop],"exp"=>"FontColGreenMinChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[loop]]);	
				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaGREENMAX_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[loop],"exp"=>"FontColGreenMaxChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[loop]]);	

				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaBLUEMIN_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[loop],"exp"=>"FontColBlueMinChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[loop]]);	
				SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[loop], "name"=>tf.System_BtImg_ConfigChaBLUEMAX_BtName,"top"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[loop],"left"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[loop],"exp"=>"FontColBlueMaxChange("+loop+")","enterse"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[loop],"clickse"=>tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[loop]]);	
			}

			//スライダー生成
			slider_init("layer11");
			//これは、loop値の指定ができないのでループ外となる
			//移行のことを考え、２０キャラ分の生成が可能な形となっている
			//function SysBtn_CreateSlider(name,page,left,top,val,baseimage,tabimage,onchange,max)
			SysBtn_CreateSlider("colchaR1","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[0],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[0],"sf.config_Character_Fontcolor[0][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[0],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[0],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG1","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[0],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[0],"sf.config_Character_Fontcolor[0][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[0],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[0],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB1","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[0],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[0],"sf.config_Character_Fontcolor[0][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[0],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[0],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR2","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[1],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[1],"sf.config_Character_Fontcolor[1][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[1],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[1],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG2","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[1],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[1],"sf.config_Character_Fontcolor[1][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[1],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[1],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB2","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[1],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[1],"sf.config_Character_Fontcolor[1][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[1],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[1],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR3","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[2],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[2],"sf.config_Character_Fontcolor[2][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[2],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[2],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG3","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[2],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[2],"sf.config_Character_Fontcolor[2][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[2],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[2],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB3","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[2],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[2],"sf.config_Character_Fontcolor[2][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[2],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[2],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR4","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[3],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[3],"sf.config_Character_Fontcolor[3][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[3],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[3],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG4","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[3],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[3],"sf.config_Character_Fontcolor[3][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[3],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[3],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB4","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[3],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[3],"sf.config_Character_Fontcolor[3][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[3],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[3],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR5","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[4],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[4],"sf.config_Character_Fontcolor[4][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[4],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[4],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG5","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[4],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[4],"sf.config_Character_Fontcolor[4][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[4],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[4],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB5","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[4],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[4],"sf.config_Character_Fontcolor[4][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[4],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[4],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR6","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[5],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[5],"sf.config_Character_Fontcolor[5][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[5],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[5],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG6","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[5],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[5],"sf.config_Character_Fontcolor[5][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[5],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[5],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB6","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[5],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[5],"sf.config_Character_Fontcolor[5][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[5],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[5],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR7","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[6],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[6],"sf.config_Character_Fontcolor[6][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[6],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[6],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG7","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[6],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[6],"sf.config_Character_Fontcolor[6][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[6],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[6],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB7","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[6],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[6],"sf.config_Character_Fontcolor[6][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[6],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[6],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR8","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[7],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[7],"sf.config_Character_Fontcolor[7][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[7],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[7],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG8","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[7],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[7],"sf.config_Character_Fontcolor[7][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[7],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[7],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB8","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[7],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[7],"sf.config_Character_Fontcolor[7][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[7],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[7],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR9","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[8],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[8],"sf.config_Character_Fontcolor[8][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[8],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[8],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG9","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[8],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[8],"sf.config_Character_Fontcolor[8][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[8],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[8],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB9","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[8],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[8],"sf.config_Character_Fontcolor[8][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[8],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[8],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR10","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[9],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[9],"sf.config_Character_Fontcolor[9][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[9],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[9],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG10","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[9],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[9],"sf.config_Character_Fontcolor[9][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[9],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[9],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB10","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[9],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[9],"sf.config_Character_Fontcolor[9][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[9],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[9],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR11","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[10],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[10],"sf.config_Character_Fontcolor[10][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[10],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[10],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG11","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[10],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[10],"sf.config_Character_Fontcolor[10][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[10],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[10],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB11","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[10],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[10],"sf.config_Character_Fontcolor[10][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[10],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[10],"MoveConfigSlider",255);

			SysBtn_CreateSlider("colchaR12","fore",tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[11],tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[11],"sf.config_Character_Fontcolor[11][1]",tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[11],tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[11],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaG12","fore",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[11],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[11],"sf.config_Character_Fontcolor[11][2]",tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[11],tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[11],"MoveConfigSlider",255);
			SysBtn_CreateSlider("colchaB12","fore",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[11],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[11],"sf.config_Character_Fontcolor[11][3]",tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[11],tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[11],"MoveConfigSlider",255);

			RefleshNameColor();
		break;
	}
}
//■キーボードの入力を開始する■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function KeyInput(KeyNo)
{
	SysBtn_DeleteButton("system_config_modeC_EditKey1","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey2","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey3","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey4","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey5","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey6","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey7","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey8","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey9","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey10","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey11","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey12","fore");
	SysBtn_DeleteButton("system_config_modeC_EditKey13","fore");

	tf.EditKeyInputing=1;
	tf.EditkeyMp = KeyNo;
	SysBtn_CreateImage("system_config_modeB_InputKey.png","0","0","15","fore","true",3000000);
}
//■キーボードの入力を開始する■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function getkeycodeParam(code)
{
	switch(code){
		case 0x08:sf.Config_Key_GetParam='BACK';break;
		case 0x09:sf.Config_Key_GetParam='TAB';break;
		case 0x0D:sf.Config_Key_GetParam='RETURN';break;
		case 0x10:sf.Config_Key_GetParam='SHIFT';break;
		case 0x11:sf.Config_Key_GetParam='CTRL';break;
		case 0x14:sf.Config_Key_GetParam='CAP';break;
		case 0x15:sf.Config_Key_GetParam='KANA';break;
		case 0x1B:sf.Config_Key_GetParam='ESC';break;
		case 0x20:sf.Config_Key_GetParam='SPACE';break;
		case 0x25:sf.Config_Key_GetParam='LEFT';break;
		case 0x26:sf.Config_Key_GetParam='UP';break;
		case 0x27:sf.Config_Key_GetParam='RIGHT';break;
		case 0x28:sf.Config_Key_GetParam='DOWN';break;
		case 0x29:sf.Config_Key_GetParam='SELECT';break;
		case 0x2E:sf.Config_Key_GetParam='DELETE';break;
		case 0x2F:sf.Config_Key_GetParam='HELP';break;
		case 0x30:sf.Config_Key_GetParam='0';break;
		case 0x31:sf.Config_Key_GetParam='1';break;
		case 0x32:sf.Config_Key_GetParam='2';break;
		case 0x33:sf.Config_Key_GetParam='3';break;
		case 0x34:sf.Config_Key_GetParam='4';break;
		case 0x35:sf.Config_Key_GetParam='5';break;
		case 0x36:sf.Config_Key_GetParam='6';break;
		case 0x37:sf.Config_Key_GetParam='7';break;
		case 0x38:sf.Config_Key_GetParam='8';break;
		case 0x39:sf.Config_Key_GetParam='9';break;
		case 0x41:sf.Config_Key_GetParam='A';break;
		case 0x42:sf.Config_Key_GetParam='B';break;
		case 0x43:sf.Config_Key_GetParam='C';break;
		case 0x44:sf.Config_Key_GetParam='D';break;
		case 0x45:sf.Config_Key_GetParam='E';break;
		case 0x46:sf.Config_Key_GetParam='F';break;
		case 0x47:sf.Config_Key_GetParam='G';break;
		case 0x48:sf.Config_Key_GetParam='H';break;
		case 0x49:sf.Config_Key_GetParam='I';break;
		case 0x4A:sf.Config_Key_GetParam='J';break;
		case 0x4B:sf.Config_Key_GetParam='K';break;
		case 0x4C:sf.Config_Key_GetParam='L';break;
		case 0x4D:sf.Config_Key_GetParam='M';break;
		case 0x4E:sf.Config_Key_GetParam='N';break;
		case 0x4F:sf.Config_Key_GetParam='O';break;
		case 0x50:sf.Config_Key_GetParam='P';break;
		case 0x51:sf.Config_Key_GetParam='Q';break;
		case 0x52:sf.Config_Key_GetParam='R';break;
		case 0x53:sf.Config_Key_GetParam='S';break;
		case 0x54:sf.Config_Key_GetParam='T';break;
		case 0x55:sf.Config_Key_GetParam='U';break;
		case 0x56:sf.Config_Key_GetParam='V';break;
		case 0x57:sf.Config_Key_GetParam='W';break;
		case 0x58:sf.Config_Key_GetParam='X';break;
		case 0x59:sf.Config_Key_GetParam='Y';break;
		case 0x5A:sf.Config_Key_GetParam='Z';break;
	}

}
//■ボイスカラーR を最小化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColRedMinChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][1] = 0;
	tf.timer.enabled=true;
}
//■ボイスカラーR を最大化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColRedMaxChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][1] = 255;
	tf.timer.enabled=true;
}
//■ボイスカラーG を最小化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColGreenMinChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][2] = 0;
	tf.timer.enabled=true;
}
//■ボイスカラーG を最大化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColGreenMaxChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][2] = 255;
	tf.timer.enabled=true;
}
//■ボイスカラーB を最小化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColBlueMinChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][3] = 0;
	tf.timer.enabled=true;
}
//■ボイスカラーB を最大化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function FontColBlueMaxChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][3] = 255;
	tf.timer.enabled=true;
}

//■ボイス音声、カラー情報をリセットする■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function VoiceResetChange(UnitNo)
{
	//指定設定をリセットする
	sf.config_Character_Fontcolor[UnitNo][1] = sf.config_Character_FontcolorInit[UnitNo][1];
	sf.config_Character_Fontcolor[UnitNo][2] = sf.config_Character_FontcolorInit[UnitNo][2];
	sf.config_Character_Fontcolor[UnitNo][3] = sf.config_Character_FontcolorInit[UnitNo][3];
	sf.config_Character_Fontcolor[UnitNo][4] = sf.config_Character_FontcolorInit[UnitNo][4];
	tf.timer.enabled=true;
}
//■ボイスミュートフラグを変更する■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function VoiceMUteChange(UnitNo)
{
	
	//ボイス再生フラグを変更
	if( sf.config_Character_Fontcolor[UnitNo][4] == 0 )
		sf.config_Character_Fontcolor[UnitNo][4] == 1;
	else
		sf.config_Character_Fontcolor[UnitNo][4] == 0;

	tf.NameA='system_config_modeC_VoiceState_A'+UnitNo;
	tf.NameB='system_config_modeC_VoiceState_B'+UnitNo;
	dm("VoiceMUteChange="+tf.NameA);

	if(sf.config_Character_Fontcolor[UnitNo][4]==0){

		var elm = %["graphic"=>"system_config_modeC_OnBt2","name"=>tf.NameA, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>"system_config_modeC_OffBt","name"=>tf.NameB, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);

		sf.config_Character_Fontcolor[UnitNo][4] = 1;

	}
	else{
		var elm = %["graphic"=>"system_config_modeC_OnBt","name"=>tf.NameA, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>"system_config_modeC_OffBt2","name"=>tf.NameB, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);

		sf.config_Character_Fontcolor[UnitNo][4] = 0;

	}

	
//	tf.timer.enabled=true;

}
function MoveConfigSlider(loop,data)
{
	dm("スライダーが動かされた");
	tf.timer.enabled=true;

}
//名前の色をリフレッシュ
function RefleshNameColor()
{
	//名前表示用レイヤーをクリア
//	var elm = %["layer"=>"13", "page"=>"fore","storage"=>"alphaimage"];
//	kag.getLayerFromElm(elm).loadImages(elm);
	SysBtn_CreateImage("system_config_modeCBg.png","0","0","13","fore","true");



	dm("RefleshNameColor");
	for(var loop=0;loop<sf.config_Character_FontcolorCount;loop++){
		tf.xpos = 0;
		tf.ypos = 0;
		switch(loop){
			case 0:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos1;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos1;
			break;
			case 1:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos2;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos2;
			break;
			case 2:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos3;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos3;
			break;
			case 3:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos4;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos4;
			break;
			case 4:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos5;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos5;
			break;
			case 5:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos6;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos6;
			break;
			case 6:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos7;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos7;
				break;
			case 7:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos8;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos8;
			break;
			case 8:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos9;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos9;
			break;
			case 9:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos10;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos10;
			break;
			case 10:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos11;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos11;
			break;
			case 11:
				tf.xpos=tf.System_BtImg_ConfigSCutKey_Name_Xpos12;
				tf.ypos=tf.System_BtImg_ConfigSCutKey_Name_Ypos12;
			break;
		}
		tf.color = (int)sf.config_Character_Fontcolor[loop][1]<<16 | (int)sf.config_Character_Fontcolor[loop][2]<<8 | (int)sf.config_Character_Fontcolor[loop][3];
		tf.Str=sf.config_Character_FontcolorInit[loop][7];
		dm(sf.config_Character_Fontcolor[loop][7]);
		var elm = %["layer"=>"13", "page"=>"fore","x"=>tf.xpos,"y"=>tf.ypos,"text"=>tf.Str,"size"=>"28","color"=>tf.color,"bold"=>"true","edge"=>"true","shadow"=>"true","face"=>"ＭＳ ゴシック"];
		kag.getLayerFromElm(elm).drawReconstructibleText(elm);	

	}

}
// コンフィグボタンが押された時の処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_onConfigButtonClick(RunMode)
{
	//ヘルプウィンドウを削除します
	HideHelp();
	
	//コンフィグが起動した時、クイックセーブロードの選択中フラグはオフとなる
	//こうしないと、右クリックでロード状態となる。
	sf.QSaveLoadSelectIndex = -1;
	
	//メッセージレイヤ透明度変更フラグ　変更時に１となる
	f.MsgWindowOpacityFast = sf.Config_MsgOpacity;//コンフィグ起動時のメッセージウインドウ透過率を保存
	f.MsgWindowOpacity = 0;
	
	
//	kag.showConfig();
	f.SCutEnableFlg = 0;//キーショートカット利用不可
	
	//コンフィグ起動前に現在の画面状態を保存
	//これは、コンフィグ操作後のメッセージウインドウ透過率操作時にメッセージウインドウが失われる為
//	kag.backupLayer(%["layer"=>"message0"], true);//メッセージウインドウを裏にコピー

	//コンフィグ画面動作フラグ
	f.ConfigRunModeFlg = 0;//0=基本設定　1=キーボード 2=カラー
	f.CallConfigModeFlg = RunMode;//0=タイトル画面からの呼び出し　1=ゲーム画面からの呼び出し
	
	//コンフィグ画面を生成
	//これはゲーム画面の上に被せる形で生成する。
	kag.setHistoryOptions(%["output"=>"false", "enabled"=>"false"]);
	kag.historyWriteEnabled = false;
	kag.historyEnabled = false;
	

	//右クリックの処理を変更～コンフィグ画面を消す処理とする
	//現在は、処理を行わないようにしているのみ
	kag.rightClickEnabled = false;
	
	//メッセージウインドウを消去
	dm("f.RightMenuSysFlg="+f.RightMenuSysFlg);
	dm("f.MessageWindowFlg="+f.MessageWindowFlg);
	dm("f.UnderMenuSysFlg="+f.UnderMenuSysFlg);
	dm("f.Config_FaceWindowUse="+f.Config_FaceWindowUse);
	
	global.extsystembutton_obj.del();
	if( f.RightMenuSysFlg == 1 ){
		var elm = %["layer"=>"message2", "page"=>"fore","visible"=>false];
		kag.getLayerFromElm(elm).setOptions(elm);
	}
	if( f.MessageWindowFlg == 1 ){
		var elm = %["layer"=>"message0", "page"=>"fore","visible"=>false];
		kag.getLayerFromElm(elm).setOptions(elm);
		var elm = %["layer"=>"message3", "page"=>"fore","visible"=>false];
		kag.getLayerFromElm(elm).setOptions(elm);		
	}
	if( f.UnderMenuSysFlg == 1 ){
		var elm = %["layer"=>"message1", "page"=>"fore","visible"=>false];
		kag.getLayerFromElm(elm).setOptions(elm);
	}
	if( tf.Config_FaceWindowUse){
		var elm = %["layer"=>"message4", "page"=>"fore","visible"=>false];
		kag.getLayerFromElm(elm).setOptions(elm);
	}
	
	//システムで利用するレイヤーを消去
	//ゲーム画面でシステムに使われている可能性がある
	var elm = %["layer"=>"15", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);
	
//	SelectPlugin_obj.delOnPage("fore");
	if( tf.SelectingRun == 1 ){
		SelectPlugin_obj.setOptions("btn0","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn1","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn2","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn3","fore",%["visible"=>false]);
	}
/*	
	//シナリオ進行を停止
	kag.stablePosibility = true;
	kag.cancelSkip();	
	if(!kag.usingExtraConductor) kag.incRecordLabel(true);
	kag.inSleep = true;
	if(kag.recordHistoryOfStore == 2) // 2 : 選択肢 ( @s タグ ) ごと
		kag.setToRecordHistory();
	kag.notifyStable();
	// メッセージレイヤタイムアウト呼び出し開始
	kag.current.startTimeout();
*/
	//コンフィグ画面の基本を生成[image storage="system_configbg.png" left=0 top=0 layer=10 page=back visible=true]

	SelectPlugin_obj.setOptions(%["name"=>"btn1","page"=>"fore","enabled"=>false]);
	
	var elm = %["storage"=>tf.Config_ModeA_BgImgFile, "left"=>"0","top"=>"0","layer"=>"10","page"=>"fore","visible"=>"true"];
	kag.getLayerFromElm(elm).loadImages(elm);

	//ボタン類生成-------------------------------------
	//閉じるボタン
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Close_BtFile, "name"=>tf.System_BtImg_Close_BtName,"top"=>tf.System_BtImg_Close_Ypos,"left"=>tf.System_BtImg_Close_Xpos,"exp"=>tf.System_BtImg_Close_ExpFunc,"enterse"=>tf.System_Se_Config_BtClose_Sel,"clickse"=>tf.System_Se_Config_BtClose_Click]);
	//タイトル画面へ戻る
	if( RunMode == 1 ){
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ReturnTitle_BtFile, "name"=>tf.System_BtImg_ReturnTitle_BtName,"top"=>tf.System_BtImg_ReturnTitle_Ypos,"left"=>tf.System_BtImg_ReturnTitle_Xpos,"exp"=>tf.System_BtImg_ReturnTitle_ExpFunc,"enterse"=>tf.System_Se_Config_BtRetTitle_Sel,"clickse"=>tf.System_Se_Config_BtRetTitle_Click]);
		//終了ボタン
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigQuit_BtFile, "name"=>tf.System_BtImg_ConfigQuit_BtName,"top"=>tf.System_BtImg_ConfigQuit_Ypos,"left"=>tf.System_BtImg_ConfigQuit_Xpos,"exp"=>tf.System_BtImg_ConfigQuit_ExpFunc,"enterse"=>tf.System_Se_Config_BtClose_Sel,"clickse"=>tf.System_Se_Config_BtClose_Click]);
	}
	
	//全リセットボタン
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_ConfigReset_BtFile, "name"=>tf.System_BtImg_ConfigReset_BtName,"top"=>tf.System_BtImg_ConfigReset_Ypos,"left"=>tf.System_BtImg_ConfigReset_Xpos,"exp"=>tf.System_BtImg_ConfigReset_ExpFunc,"enterse"=>tf.System_Se_Config_BtInitialize_Sel,"clickse"=>tf.System_Se_Config_BtInitialize_Click]);	

	//動作モード別の基本アイテムを描画
	SysBtn_CreateConfigItem(0);


}

//画面下部の基本メニューボタンを生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function Create_UnderMenuButton()
{

	if( tf.SceneMode_RunFlg == 0 ){
		
		if( tf.System_Config_USys_ConfigBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt1_BtFile, "name"=>tf.System_BtImg_MsgBt1_BtName,"top"=>tf.System_BtImg_MsgBt1_Ypos,"left"=>tf.System_BtImg_MsgBt1_Xpos,"exp"=>tf.System_BtImg_MsgBt1_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt1_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt1_Click,"onenter"=>tf.System_BtImg_MsgBt1_InFunc,"onleave"=>tf.System_BtImg_MsgBt1_OutFunc]);
		if( tf.System_Config_USys_MsgLogBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt2_BtFile, "name"=>tf.System_BtImg_MsgBt2_BtName,"top"=>tf.System_BtImg_MsgBt2_Ypos,"left"=>tf.System_BtImg_MsgBt2_Xpos,"exp"=>tf.System_BtImg_MsgBt2_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt2_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt2_Click,"onenter"=>tf.System_BtImg_MsgBt2_InFunc,"onleave"=>tf.System_BtImg_MsgBt2_OutFunc]);
		if( tf.System_Config_USys_AutoBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt3_BtFile, "name"=>tf.System_BtImg_MsgBt3_BtName,"top"=>tf.System_BtImg_MsgBt3_Ypos,"left"=>tf.System_BtImg_MsgBt3_Xpos,"exp"=>tf.System_BtImg_MsgBt3_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt3_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt3_Click,"onenter"=>tf.System_BtImg_MsgBt3_InFunc,"onleave"=>tf.System_BtImg_MsgBt3_OutFunc]);
		if( tf.System_Config_USys_SkipBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt4_BtFile, "name"=>tf.System_BtImg_MsgBt4_BtName,"top"=>tf.System_BtImg_MsgBt4_Ypos,"left"=>tf.System_BtImg_MsgBt4_Xpos,"exp"=>tf.System_BtImg_MsgBt4_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt4_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt4_Click,"onenter"=>tf.System_BtImg_MsgBt4_InFunc,"onleave"=>tf.System_BtImg_MsgBt4_OutFunc]);
		if( tf.System_Config_USys_JumpBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt5_BtFile, "name"=>tf.System_BtImg_MsgBt5_BtName,"top"=>tf.System_BtImg_MsgBt5_Ypos,"left"=>tf.System_BtImg_MsgBt5_Xpos,"exp"=>tf.System_BtImg_MsgBt5_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt5_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt5_Click,"onenter"=>tf.System_BtImg_MsgBt5_InFunc,"onleave"=>tf.System_BtImg_MsgBt5_OutFunc]);
		if( tf.System_Config_USys_QSaveBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt6_BtFile, "name"=>tf.System_BtImg_MsgBt6_BtName,"top"=>tf.System_BtImg_MsgBt6_Ypos,"left"=>tf.System_BtImg_MsgBt6_Xpos,"exp"=>tf.System_BtImg_MsgBt6_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt6_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt6_Click,"onenter"=>tf.System_BtImg_MsgBt6_InFunc,"onleave"=>tf.System_BtImg_MsgBt6_OutFunc]);
		if( tf.System_Config_USys_QLoadBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt7_BtFile, "name"=>tf.System_BtImg_MsgBt7_BtName,"top"=>tf.System_BtImg_MsgBt7_Ypos,"left"=>tf.System_BtImg_MsgBt7_Xpos,"exp"=>tf.System_BtImg_MsgBt7_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt7_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt7_Click,"onenter"=>tf.System_BtImg_MsgBt7_InFunc,"onleave"=>tf.System_BtImg_MsgBt7_OutFunc]);
		if( tf.System_Config_USys_SaveBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt8_BtFile, "name"=>tf.System_BtImg_MsgBt8_BtName,"top"=>tf.System_BtImg_MsgBt8_Ypos,"left"=>tf.System_BtImg_MsgBt8_Xpos,"exp"=>tf.System_BtImg_MsgBt8_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt8_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt8_Click,"onenter"=>tf.System_BtImg_MsgBt8_InFunc,"onleave"=>tf.System_BtImg_MsgBt8_OutFunc]);
		if( tf.System_Config_USys_LoadBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt9_BtFile, "name"=>tf.System_BtImg_MsgBt9_BtName,"top"=>tf.System_BtImg_MsgBt9_Ypos,"left"=>tf.System_BtImg_MsgBt9_Xpos,"exp"=>tf.System_BtImg_MsgBt9_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt9_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt9_Click,"onenter"=>tf.System_BtImg_MsgBt9_InFunc,"onleave"=>tf.System_BtImg_MsgBt9_OutFunc]);
		if( tf.System_Config_USys_MinBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt10_BtFile, "name"=>tf.System_BtImg_MsgBt10_BtName,"top"=>tf.System_BtImg_MsgBt10_Ypos,"left"=>tf.System_BtImg_MsgBt10_Xpos,"exp"=>tf.System_BtImg_MsgBt10_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt10_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt10_Click,"onenter"=>tf.System_BtImg_MsgBt10_InFunc,"onleave"=>tf.System_BtImg_MsgBt10_OutFunc]);

	}
	else{
		if( tf.System_Config_USys_ConfigBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt1_BtFile, "name"=>tf.System_BtImg_MsgBt1_BtName,"top"=>tf.System_BtImg_MsgBt1_Ypos,"left"=>tf.System_BtImg_MsgBt1_Xpos,"exp"=>tf.System_BtImg_MsgBt1_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt1_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt1_Click,"onenter"=>tf.System_BtImg_MsgBt1_InFunc,"onleave"=>tf.System_BtImg_MsgBt1_OutFunc]);
		if( tf.System_Config_USys_MsgLogBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt2_BtFile, "name"=>tf.System_BtImg_MsgBt2_BtName,"top"=>tf.System_BtImg_MsgBt2_Ypos,"left"=>tf.System_BtImg_MsgBt2_Xpos,"exp"=>tf.System_BtImg_MsgBt2_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt2_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt2_Click,"onenter"=>tf.System_BtImg_MsgBt2_InFunc,"onleave"=>tf.System_BtImg_MsgBt2_OutFunc]);
		if( tf.System_Config_USys_AutoBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt3_BtFile, "name"=>tf.System_BtImg_MsgBt3_BtName,"top"=>tf.System_BtImg_MsgBt3_Ypos,"left"=>tf.System_BtImg_MsgBt3_Xpos,"exp"=>tf.System_BtImg_MsgBt3_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt3_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt3_Click,"onenter"=>tf.System_BtImg_MsgBt3_InFunc,"onleave"=>tf.System_BtImg_MsgBt3_OutFunc]);
		if( tf.System_Config_USys_SkipBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt4_BtFile, "name"=>tf.System_BtImg_MsgBt4_BtName,"top"=>tf.System_BtImg_MsgBt4_Ypos,"left"=>tf.System_BtImg_MsgBt4_Xpos,"exp"=>tf.System_BtImg_MsgBt4_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt4_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt4_Click,"onenter"=>tf.System_BtImg_MsgBt4_InFunc,"onleave"=>tf.System_BtImg_MsgBt4_OutFunc]);

		if( tf.System_Config_USys_MinBtUse == 1)
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_MsgBt10_BtFile, "name"=>tf.System_BtImg_MsgBt10_BtName,"top"=>tf.System_BtImg_MsgBt10_Ypos,"left"=>tf.System_BtImg_MsgBt10_Xpos,"exp"=>tf.System_BtImg_MsgBt10_ExpFunc,"enterse"=>tf.System_Se_MessageWindow_Bt10_Sel,"clickse"=>tf.System_Se_MessageWindow_Bt10_Click,"onenter"=>tf.System_BtImg_MsgBt10_InFunc,"onleave"=>tf.System_BtImg_MsgBt10_OutFunc]);

//		SysBtn_CreateButton("system_UnderWindow_BT10.png","system_UnderWindow_BT10",763,1170,"SysBtn_onTextHideButtonClick()","ViewHelp(51)","HideHelp()");
	}
}
//画面右部のQセーブスロットメニューボタンを復元生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function Create_RightMenuButton()
{
	SysBtn_CreateButtonOnenter("System_SideWindow_on_A.png","System_SideWindow_on_A",0,1227,"kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikReflesh_on')");
}

// コンフィグ画面を閉じる時の処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CloseConfig()
{
	if( tf.EditKeyInputing == 1 )return;
	
	//システム画面の起動フラグをたてる
	kag.RunConfigModeFlg = false;
	
	//スライダーを削除
	SysBtn_ReleaseConfigObject(tf.ConfigTypeMode);

	//コンフィグ画面のボタンを削除
	SysBtn_DeleteButton("","fore");

	//コンフィグ画面の画像を削除
	var elm = %["layer"=>"10", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"11", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"12", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"13", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	//アドベンチャ画面のメッセージウインドウを再度生成
	//メッセージウインドウを復帰
	if( f.CallConfigModeFlg == 0 ){//タイトル画面からの呼び出し
	
	var elm = %["graphic"=>"title_menuBtA", "name"=>"title_menuBtA","top"=>tf.System_Config_Title_TitleBtAYpos,"left"=>tf.System_Config_Title_TitleBtAXpos,"target"=>"*NewGame","enterse"=>tf.System_Se_Title_NewGame_Sel,"clickse"=>tf.System_Se_Title_NewGame_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtB", "name"=>"title_menuBtB","top"=>tf.System_Config_Title_TitleBtBYpos,"left"=>tf.System_Config_Title_TitleBtBXpos,"target"=>"*SaveLoad","enterse"=>tf.System_Se_Title_Load_Sel,"clickse"=>tf.System_Se_Title_Load_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtC", "name"=>"title_menuBtC","top"=>tf.System_Config_Title_TitleBtCYpos,"left"=>tf.System_Config_Title_TitleBtCXpos,"target"=>"*Config","enterse"=>tf.System_Se_Title_Config_Sel,"clickse"=>tf.System_Se_Title_Config_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtD", "name"=>"title_menuBtD","top"=>tf.System_Config_Title_TitleBtDYpos,"left"=>tf.System_Config_Title_TitleBtDXpos,"target"=>"*Extra","enterse"=>tf.System_Se_Title_Omake_Sel,"clickse"=>tf.System_Se_Title_Omake_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtE", "name"=>"title_menuBtE","top"=>tf.System_Config_Title_TitleBtEYpos,"left"=>tf.System_Config_Title_TitleBtEXpos,"exp"=>"kag.close()","enterse"=>tf.System_Se_Title_Exit_Sel,"clickse"=>tf.System_Se_Title_Exit_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	f.SCutEnableFlg = 0;//キーショートカット利用不可

	}
	else{//ゲーム画面からの呼び出し

		var elm = new Dictionary();
		if( sf.ConfigState8 != void &&  sf.ConfigState8 == 1 ){//-右メニューの復元
			var elm = %["layer"=>"message2", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
			SysBtn_CreateRightMenuButton(0);
		}
		if( f.MessageWindowFlg != void && f.MessageWindowFlg == 1 ){
			var elm = %["layer"=>"message0", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
			var elm = %["layer"=>"message3", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
			//画面を復元
			if( f.CallConfigModeFlg == 1 && f.MsgWindowOpacity == 1 ){//ゲーム画面からの呼び出し
				dm("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");

				var elm = %["layer"=>"message0","frame"=>"window01_frame0.png","page"=>"fore","visible"=>"true","opacity"=>sf.Config_MsgOpacity];
				kag.getMessageLayerObjectFromElm(elm).setPosition(elm);
			}
			if( tf.Config_FaceWindowUse == 1 ){//フェイスウインドウが有効なら表示
				var elm = %["layer"=>"message4", "page"=>"fore","visible"=>true];
				kag.getLayerFromElm(elm).setOptions(elm);

			}

			
		}
			
		
		
		
		if( f.UnderMenuSysFlg != void && f.UnderMenuSysFlg == 1 ){
//			var elm = %["layer"=>"message1", "page"=>"fore","visible"=>true];
//			kag.getLayerFromElm(elm).setOptions(elm);
			Create_UnderMenuButton();//-基本ボタンメニューを起動
		}
		
		kag.historyWriteEnabled = true;
		kag.historyEnabled = true;
		kag.rightClickEnabled = true;
		f.SCutEnableFlg = 1;//キーショートカット利用可

		kag.setHistoryOptions(%["output"=>"true", "enabled"=>"true"]);
		

	}
	
	

	if( tf.SelectingRun == 1 ){
		SelectPlugin_obj.setOptions("btn0","fore",%["visible"=>true]);
		SelectPlugin_obj.setOptions("btn1","fore",%["visible"=>true]);
		SelectPlugin_obj.setOptions("btn2","fore",%["visible"=>true]);
		SelectPlugin_obj.setOptions("btn3","fore",%["visible"=>true]);
	}

	
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
// 仮想キーコード取得
function SysBtn_GetKeyCode(code)
{
	switch(code){
		case 0://メッセージ次●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_MsgNext);
		break;
		case 1://メッセージ消去●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_MsgHide);
		break;
		case 2://システム画面呼び出し●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_SysCall);
		break;
		case 3://選択肢の移動・上下
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_SelUP);
		break;
		case 4://選択肢の移動・上下
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_SelDown);
		break;
		case 5://ログ画面呼び出し●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_LogCall);
		break;
		case 6://メッセージスキップ
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_MsgSkip);
		break;
		case 7://クイックセーブ●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_QuickSave);
		break;
		case 8://クイックロード●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_QuickLoad);
		break;
		case 9://セーブ●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_Save);
		break;
		case 10://ロード●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_Load);
		break;
		case 11://スキップモード切替:
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_SceneJump);
		break;
		case 12://シーンジャンプ切替●
			SysBtn_GetKeyCodegetkeycodeParam(sf.Config_Key_SkipMode);
		break;
	}
	sf.Config_Key_GetCode = sf.Config_Key_GetParam;

}
// 仮想キーコード取得
function SysBtn_GetKeyCodegetkeycodeParam(code)
{	
	switch(code){
		case 0x08:sf.Config_Key_GetParam='BACK';break;
		case 0x09:sf.Config_Key_GetParam='TAB';break;
		case 0x0D:sf.Config_Key_GetParam='RETURN';break;
		case 0x10:sf.Config_Key_GetParam='SHIFT';break;
		case 0x11:sf.Config_Key_GetParam='CTRL';break;
		case 0x14:sf.Config_Key_GetParam='CAP';break;
		case 0x15:sf.Config_Key_GetParam='KANA';break;
		case 0x1B:sf.Config_Key_GetParam='ESC';break;
		case 0x20:sf.Config_Key_GetParam='SPACE';break;
		case 0x25:sf.Config_Key_GetParam='LEFT';break;
		case 0x26:sf.Config_Key_GetParam='UP';break;
		case 0x27:sf.Config_Key_GetParam='RIGHT';break;
		case 0x28:sf.Config_Key_GetParam='DOWN';break;
		case 0x29:sf.Config_Key_GetParam='SELECT';break;
		case 0x2E:sf.Config_Key_GetParam='DELETE';break;

		case 0x2F:sf.Config_Key_GetParam='HELP';break;
		case 0x30:sf.Config_Key_GetParam='0';break;
		case 0x31:sf.Config_Key_GetParam='1';break;
		case 0x32:sf.Config_Key_GetParam='2';break;
		case 0x33:sf.Config_Key_GetParam='3';break;
		case 0x34:sf.Config_Key_GetParam='4';break;
		case 0x35:sf.Config_Key_GetParam='5';break;
		case 0x36:sf.Config_Key_GetParam='6';break;
		case 0x37:sf.Config_Key_GetParam='7';break;
		case 0x38:sf.Config_Key_GetParam='8';break;
		case 0x39:sf.Config_Key_GetParam='9';break;

		case 0x41:sf.Config_Key_GetParam='A';break;
		case 0x42:sf.Config_Key_GetParam='B';break;
		case 0x43:sf.Config_Key_GetParam='C';break;
		case 0x44:sf.Config_Key_GetParam='D';break;
		case 0x45:sf.Config_Key_GetParam='E';break;
		case 0x46:sf.Config_Key_GetParam='F';break;
		case 0x47:sf.Config_Key_GetParam='G';break;
		case 0x48:sf.Config_Key_GetParam='H';break;
		case 0x49:sf.Config_Key_GetParam='I';break;
		case 0x4A:sf.Config_Key_GetParam='J';break;
		case 0x4B:sf.Config_Key_GetParam='K';break;
		case 0x4C:sf.Config_Key_GetParam='L';break;
		case 0x4D:sf.Config_Key_GetParam='M';break;
		case 0x4E:sf.Config_Key_GetParam='N';break;
		case 0x4F:sf.Config_Key_GetParam='O';break;
		case 0x50:sf.Config_Key_GetParam='P';break;
		case 0x51:sf.Config_Key_GetParam='Q';break;
		case 0x52:sf.Config_Key_GetParam='R';break;
		case 0x53:sf.Config_Key_GetParam='S';break;
		case 0x54:sf.Config_Key_GetParam='T';break;
		case 0x55:sf.Config_Key_GetParam='U';break;
		case 0x56:sf.Config_Key_GetParam='V';break;
		case 0x57:sf.Config_Key_GetParam='W';break;
		case 0x58:sf.Config_Key_GetParam='X';break;
		case 0x59:sf.Config_Key_GetParam='Y';break;
		case 0x5A:sf.Config_Key_GetParam='Z';break;

	}

}
//■設定画面モード１：全画面表示に切り替え■■■■■■■■■■■■■■■■■■■■■■
//RunFlg 0 = スクリーンモードは切り替えずボタンのみ　1=スクリーンモードも切り替える
function modeA_ScreenMode(RunFlg)
{
	if( kag.fullScreened==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigScreen1A_BtFile, "name"=>tf.System_BtImg_ConfigScreen1_BtName];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigScreen2A_BtFile, "name"=>tf.System_BtImg_ConfigScreen2_BtName];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		if( RunFlg == 1 )
			kag.onWindowedMenuItemClick();
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigScreen1B_BtFile, "name"=>tf.System_BtImg_ConfigScreen1_BtName];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigScreen2B_BtFile, "name"=>tf.System_BtImg_ConfigScreen2_BtName];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		if( RunFlg == 1 )
			kag.onFullScreenMenuItemClick();

	}
	kag.saveSystemVariables();
}
//■設定画面モード１：ムービースキップ切り替え■■■■■■■■■■■■■■■■■■■■■■
function modeA_MovieSkip(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState2==1 )
			sf.ConfigState2=0;
		else
			sf.ConfigState2=1;
	}

	if( sf.ConfigState2==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigMovieSkip1A_BtFile,"name"=>tf.System_BtImg_ConfigMovieSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigMovieSkip2A_BtFile,"name"=>tf.System_BtImg_ConfigMovieSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigMovieSkip1B_BtFile,"name"=>tf.System_BtImg_ConfigMovieSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigMovieSkip2B_BtFile,"name"=>tf.System_BtImg_ConfigMovieSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}

	
	
}
//■設定画面モード１：エフェクトカット■■■■■■■■■■■■■■■■■■■■■■
function modeA_EffectCut(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState3==1 )
			sf.ConfigState3=0;
		else
			sf.ConfigState3=1;
	}
	if( sf.ConfigState3==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigEffectCut1A_BtFile,"name"=>tf.System_BtImg_ConfigEffectCut1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigEffectCut2B_BtFile,"name"=>tf.System_BtImg_ConfigEffectCut2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigEffectCut1B_BtFile,"name"=>tf.System_BtImg_ConfigEffectCut1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigEffectCut2A_BtFile,"name"=>tf.System_BtImg_ConfigEffectCut2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	
	
}
//■スライダーに対する最小・最大ボタン類■■■■■■■■■■■■■■■■■■■■■■
function State4A_MIN(SetFlg)
{
	switch(SetFlg){
		case 0:
			sf.Config_Volume1=0;
			dm("sf.Config_Volume1="+sf.Config_Volume1);
			var elm = %["name"=>"config1", "val"=>"sf.Config_Volume1"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 1:
			sf.Config_Volume2=0;
			var elm = %["name"=>"config2", "val"=>"sf.Config_Volume2"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 2:
			sf.Config_Volume3=0;
			var elm = %["name"=>"config3", "val"=>"sf.Config_Volume3"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 3:
			sf.Config_Volume4=0;
			var elm = %["name"=>"config4", "val"=>"sf.Config_Volume4"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 4:
			sf.Config_MsgOpacity=0;
			var elm = %["name"=>"config5", "val"=>"sf.Config_MsgOpacity"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 5:
			sf.Config_MsgSpeed=0;
			var elm = %["name"=>"config6", "val"=>"sf.Config_MsgSpeed"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
	}
}
//■スライダーに対する最小・最大ボタン類■■■■■■■■■■■■■■■■■■■■■■
function State4A_MAX(SetFlg)
{
	switch(SetFlg){
		case 0:
			sf.Config_Volume1=100;
			dm("sf.Config_Volume1="+sf.Config_Volume1);
			var elm = %["name"=>"config1", "val"=>"sf.Config_Volume1"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 1:
			sf.Config_Volume2=100;
			var elm = %["name"=>"config2", "val"=>"sf.Config_Volume2"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 2:
			sf.Config_Volume3=100;
			var elm = %["name"=>"config3", "val"=>"sf.Config_Volume3"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 3:
			sf.Config_Volume4=100;
			var elm = %["name"=>"config4", "val"=>"sf.Config_Volume4"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 4:
			sf.Config_MsgOpacity=255;
			var elm = %["name"=>"config5", "val"=>"sf.Config_MsgOpacity"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
		case 5:
			sf.Config_MsgSpeed=100;
			var elm = %["name"=>"config6", "val"=>"sf.Config_MsgSpeed"];
			global.sliderplugin_obj.setOptions(elm.name, elm.page, elm);
			MoveConfigSlider();
		break;
	}
}
//■システムメニュー■■■■■■■■■■■■■■■■■■■■■■
function modeA_SystemMenu(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState8==1 ){
			sf.ConfigState8=0;
			f.RightMenuSysFlg=0;
		}
		else{
			sf.ConfigState8=1;
			f.RightMenuSysFlg=1;
		}
	}

	if( sf.ConfigState8==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigRightMenu1A_BtFile,"name"=>tf.System_BtImg_ConfigRightMenu1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigRightMenu2A_BtFile,"name"=>tf.System_BtImg_ConfigRightMenu2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigRightMenu1B_BtFile,"name"=>tf.System_BtImg_ConfigRightMenu1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigRightMenu2B_BtFile,"name"=>tf.System_BtImg_ConfigRightMenu2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	
	
	
}
//■設定画面モード１：機能ヘルプ表示■■■■■■■■■■■■■■■■■■■■■■
function modeA_SystemHelp(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState9==1 )
			sf.ConfigState9=0;
		else
			sf.ConfigState9=1;
	}

	if( sf.ConfigState9==0 ){
		var elm = %["graphic"=>"system_config_modeA_State9A1","name"=>"system_config_modeA_State9A", "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>"system_config_modeA_State9B2","name"=>"system_config_modeA_State9B", "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>"system_config_modeA_State9A2","name"=>"system_config_modeA_State9A", "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>"system_config_modeA_State9B1","name"=>"system_config_modeA_State9B", "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：ボイススキップ■■■■■■■■■■■■■■■■■■■■■■
function modeA_SystemVoiceSkip(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState10==1 )
			sf.ConfigState10=0;
		else
			sf.ConfigState10=1;
	}
	if( sf.ConfigState10==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigCvSkip1A_BtFile,"name"=>tf.System_BtImg_ConfigCvSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigCvSkip2A_BtFile,"name"=>tf.System_BtImg_ConfigCvSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigCvSkip1B_BtFile,"name"=>tf.System_BtImg_ConfigCvSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigCvSkip2B_BtFile,"name"=>tf.System_BtImg_ConfigCvSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	
	
	
}
//■設定画面モード１：スキップ機能■■■■■■■■■■■■■■■■■■■■■■
function modeA_SystemSkipMode(RunFlg)
{

	
	if( RunFlg == 0 ){

		if( sf.allskip==1 ){
			var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip1A_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip1_BtName, "page"=>"fore"];
			global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
			var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip2A_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip2_BtName, "page"=>"fore"];
			global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		}
		else{
			var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip1B_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip1_BtName, "page"=>"fore"];
			global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
			var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip2B_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip2_BtName, "page"=>"fore"];
			global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		}
		return;
	}


	if( sf.allskip==1 ){
		sf.allskip = 0;
		var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip1A_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip2A_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);

		kag.allSkipMenuItem.checked =sf.allskip;
	}
	else{
		sf.allskip = 1;
		var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip1B_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip1_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigMsgSkip2B_BtFile,"name"=>tf.System_BtImg_ConfigMsgSkip2_BtName, "page"=>"fore"];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);

		kag.allSkipMenuItem.checked = sf.allskip;
	}
}
//■設定画面モード１：確認ダイアログのすべてONまたはOFF■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_State13ABT()
{
	sf.ConfigState14=1;
	sf.ConfigState15=1;
	sf.ConfigState16=1;
	sf.ConfigState17=1;
	sf.ConfigState18=1;
	sf.ConfigState19=1;
	sf.ConfigState20=1;

	var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk1A_BtFile,"name"=>tf.System_BtImg_ConfigSaveChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk2A_BtFile,"name"=>tf.System_BtImg_ConfigSaveChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	
	var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk1A_BtFile,"name"=>tf.System_BtImg_ConfigLoadChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk2A_BtFile,"name"=>tf.System_BtImg_ConfigLoadChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk1A_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk2A_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk1A_BtFile,"name"=>tf.System_BtImg_ConfigQLoadChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk2A_BtFile,"name"=>tf.System_BtImg_ConfigQLoadChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk1A_BtFile,"name"=>tf.System_BtImg_ConfigJumpChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk2A_BtFile,"name"=>tf.System_BtImg_ConfigJumpChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk1A_BtFile,"name"=>tf.System_BtImg_ConfigInitChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk2A_BtFile,"name"=>tf.System_BtImg_ConfigInitChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk1A_BtFile,"name"=>tf.System_BtImg_ConfigExitChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk2A_BtFile,"name"=>tf.System_BtImg_ConfigExitChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

}
//■設定画面モード１：確認ダイアログのすべてONまたはOFF■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_State13BBT()
{
	sf.ConfigState14=0;
	sf.ConfigState15=0;
	sf.ConfigState16=0;
	sf.ConfigState17=0;
	sf.ConfigState18=0;
	sf.ConfigState19=0;
	sf.ConfigState20=0;
	
	var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk1B_BtFile,"name"=>tf.System_BtImg_ConfigSaveChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk2B_BtFile,"name"=>tf.System_BtImg_ConfigSaveChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	
	var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk1B_BtFile,"name"=>tf.System_BtImg_ConfigLoadChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk2B_BtFile,"name"=>tf.System_BtImg_ConfigLoadChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk1B_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk2B_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk1B_BtFile,"name"=>tf.System_BtImg_ConfigQLoadChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk2B_BtFile,"name"=>tf.System_BtImg_ConfigQLoadChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk1B_BtFile,"name"=>tf.System_BtImg_ConfigJumpChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk2B_BtFile,"name"=>tf.System_BtImg_ConfigJumpChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk1B_BtFile,"name"=>tf.System_BtImg_ConfigInitChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk2B_BtFile,"name"=>tf.System_BtImg_ConfigInitChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

	var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk1B_BtFile,"name"=>tf.System_BtImg_ConfigExitChk1_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk2B_BtFile,"name"=>tf.System_BtImg_ConfigExitChk2_BtName, "page"=>"fore"];
	global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);	

}
//■設定画面モード１：クイックセーブ確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_QSave(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState16==1 )
			sf.ConfigState16=0;
		else
			sf.ConfigState16=1;
	}
	if( sf.ConfigState16==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk1A_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk1_BtName, "page"=>"fore","top"=>tf.System_BtImg_ConfigQSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk2A_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk2_BtName, "page"=>"fore","top"=>tf.System_BtImg_ConfigQSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk1B_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk1_BtName, "page"=>"fore","top"=>tf.System_BtImg_ConfigQSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigQSaveChk2B_BtFile,"name"=>tf.System_BtImg_ConfigQSaveChk2_BtName, "page"=>"fore","top"=>tf.System_BtImg_ConfigQSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigQSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQSaveChk1_ExpFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：クイックロード確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_QLoad(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState17==1 )
			sf.ConfigState17=0;
		else
			sf.ConfigState17=1;
	}
	if( sf.ConfigState17==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk1A_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_1_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk2A_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk3_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk3_2_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk1B_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_1_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigQLoadChk2B_BtFile, "name"=>tf.System_BtImg_ConfigQLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigQLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigQLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigQLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk4_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk4_2_Click,"onenter"=>tf.System_BtImg_ConfigQLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigQLoadChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：セーブ確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_Save(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState14==1 )
			sf.ConfigState14=0;
		else
			sf.ConfigState14=1;
	}

	if( sf.ConfigState14==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk1A_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk2A_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_2_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk1B_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk1_BtName,"top"=>tf.System_BtImg_ConfigSaveChk1_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk1_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigSaveChk2B_BtFile, "name"=>tf.System_BtImg_ConfigSaveChk2_BtName,"top"=>tf.System_BtImg_ConfigSaveChk2_Ypos,"left"=>tf.System_BtImg_ConfigSaveChk2_Xpos,"exp"=>tf.System_BtImg_ConfigSaveChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk1_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk1_2_Click,"onenter"=>tf.System_BtImg_ConfigSaveChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigSaveChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：ロード確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_Load(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState15==1 )
			sf.ConfigState15=0;
		else
			sf.ConfigState15=1;
	}
	if( sf.ConfigState15==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk1A_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_1_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk2A_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_2_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk1B_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk1_BtName,"top"=>tf.System_BtImg_ConfigLoadChk1_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk1_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_1_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigLoadChk2B_BtFile, "name"=>tf.System_BtImg_ConfigLoadChk2_BtName,"top"=>tf.System_BtImg_ConfigLoadChk2_Ypos,"left"=>tf.System_BtImg_ConfigLoadChk2_Xpos,"exp"=>tf.System_BtImg_ConfigLoadChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk2_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk2_2_Click,"onenter"=>tf.System_BtImg_ConfigLoadChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigLoadChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}


//■設定画面モード１：ジャンプ確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_Jump(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState18==1 )
			sf.ConfigState18=0;
		else
			sf.ConfigState18=1;
	}
	if( sf.ConfigState18==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk1A_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk1_BtName,"top"=>tf.System_BtImg_ConfigJumpChk1_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk1_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_1_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk2A_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk2_BtName,"top"=>tf.System_BtImg_ConfigJumpChk2_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk2_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_2_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk1B_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk1_BtName,"top"=>tf.System_BtImg_ConfigJumpChk1_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk1_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_1_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigJumpChk2B_BtFile, "name"=>tf.System_BtImg_ConfigJumpChk2_BtName,"top"=>tf.System_BtImg_ConfigJumpChk2_Ypos,"left"=>tf.System_BtImg_ConfigJumpChk2_Xpos,"exp"=>tf.System_BtImg_ConfigJumpChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk5_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk5_2_Click,"onenter"=>tf.System_BtImg_ConfigJumpChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigJumpChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：設定初期化確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_Init(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState19==1 )
			sf.ConfigState19=0;
		else
			sf.ConfigState19=1;
	}
	if( sf.ConfigState19==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk1A_BtFile, "name"=>tf.System_BtImg_ConfigInitChk1_BtName,"top"=>tf.System_BtImg_ConfigInitChk1_Ypos,"left"=>tf.System_BtImg_ConfigInitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_1_Click,"onenter"=>tf.System_BtImg_ConfigInitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk2A_BtFile, "name"=>tf.System_BtImg_ConfigInitChk2_BtName,"top"=>tf.System_BtImg_ConfigInitChk2_Ypos,"left"=>tf.System_BtImg_ConfigInitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_2_Click,"onenter"=>tf.System_BtImg_ConfigInitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk1B_BtFile, "name"=>tf.System_BtImg_ConfigInitChk1_BtName,"top"=>tf.System_BtImg_ConfigInitChk1_Ypos,"left"=>tf.System_BtImg_ConfigInitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_1_Click,"onenter"=>tf.System_BtImg_ConfigInitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigInitChk2B_BtFile, "name"=>tf.System_BtImg_ConfigInitChk2_BtName,"top"=>tf.System_BtImg_ConfigInitChk2_Ypos,"left"=>tf.System_BtImg_ConfigInitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigInitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk6_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk6_2_Click,"onenter"=>tf.System_BtImg_ConfigInitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigInitChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
	}
}
//■設定画面モード１：ゲーム終了確認■■■■■■■■■■■■■■■■■■■■■■
function system_config_modeA_Exit(RunFlg)
{
	if( RunFlg == 1 ){
		if( sf.ConfigState20==1 )
			sf.ConfigState20=0;
		else
			sf.ConfigState20=1;
	}
	if( sf.ConfigState20==1 ){
		var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk1A_BtFile, "name"=>tf.System_BtImg_ConfigExitChk1_BtName,"top"=>tf.System_BtImg_ConfigExitChk1_Ypos,"left"=>tf.System_BtImg_ConfigExitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_1_Click,"onenter"=>tf.System_BtImg_ConfigExitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk2A_BtFile, "name"=>tf.System_BtImg_ConfigExitChk2_BtName,"top"=>tf.System_BtImg_ConfigExitChk2_Ypos,"left"=>tf.System_BtImg_ConfigExitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_2_Click,"onenter"=>tf.System_BtImg_ConfigExitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		sf.exitAsk=1;
	}
	else{
		var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk1B_BtFile, "name"=>tf.System_BtImg_ConfigExitChk1_BtName,"top"=>tf.System_BtImg_ConfigExitChk1_Ypos,"left"=>tf.System_BtImg_ConfigExitChk1_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk1_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_1_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_1_Click,"onenter"=>tf.System_BtImg_ConfigExitChk1_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk1_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		var elm = %["graphic"=>tf.System_BtImg_ConfigExitChk2B_BtFile, "name"=>tf.System_BtImg_ConfigExitChk2_BtName,"top"=>tf.System_BtImg_ConfigExitChk2_Ypos,"left"=>tf.System_BtImg_ConfigExitChk2_Xpos,"exp"=>tf.System_BtImg_ConfigExitChk2_ExpFunc,"enterse"=>tf.System_Se_Config_BtDlgChk7_2_Sel,"clickse"=>tf.System_Se_Config_BtDlgChk7_2_Click,"onenter"=>tf.System_BtImg_ConfigExitChk2_InFunc,"onleave"=>tf.System_BtImg_ConfigExitChk2_OutFunc];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		sf.exitAsk=0;
	}
}

//■右メニューを生成■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//0=メニューを最小化（消去ではない）1=メニューをオープン
function SysBtn_CreateRightMenuButton(RunFlg)
{
	//オープン時の効果音が設定されているなら再生
	if( tf.System_Se_QSaveLoadSot_Slot_Open != '' ){
		kag.se[0].play(%["buf"=>"0","storage"=>tf.System_Se_QSaveLoadSot_Slot_Open]);
	}
	//ベースの判定となっていた透明ボタンを消去
	SysBtn_DeleteButton("System_SideWindow","fore");

	
	dm("SysBtn_CreateRightMenuButton="+RunFlg);
	if(RunFlg){
		tf.OpenQucikDrawFlag=1;

//	[layopt layer=message2 page=fore left=749 top=0]
//	[position layer=message2 page=fore frame="System_SideScrollBase_on.png" visible=true]
		var elm = %["layer"=>"message2","page"=>"fore", "left"=>tf.System_BtImg_QSaveLoadSot_BaseXposOn,"top"=>tf.System_BtImg_QSaveLoadSot_BaseYposOn];
		kag.getLayerFromElm(elm).setOptions(elm);
		var elm = %["layer"=>"message2","page"=>"fore", "frame"=>tf.System_BtImg_QSaveLoadSot_BaseImgFileOn,"visible"=>"true"];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);

//	[sysbutton_setopt page=fore onenter="" ="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikReflesh_off')"]
		SysBtn_CreateButtonOnenter("alpharightmenuout.png","alpharightmenuout",0,0,"SysBtn_CreateRightMenuButton(0)");


		tf.OpenQucikSlotCursorFlag=0;
/*
	[sysbutton name="QSLOT1" graphic="System_SideWindow_slot1" page=fore top=125 left=1239 exp="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_on1')" absolute=1100001]
	[sysbutton name="QSLOT2" graphic="System_SideWindow_slot2" page=fore top=182 left=1239 exp="kag.callExtraConductor('','*OpenQucikSlot_on1')" absolute=1100001]
	[sysbutton name="QSLOT3" graphic="System_SideWindow_slot3" page=fore top=239 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT4" graphic="System_SideWindow_slot4" page=fore top=296 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT5" graphic="System_SideWindow_slot5" page=fore top=353 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT6" graphic="System_SideWindow_slot6" page=fore top=410 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT7" graphic="System_SideWindow_slot7" page=fore top=467 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT8" graphic="System_SideWindow_slot8" page=fore top=524 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT9" graphic="System_SideWindow_slot9" page=fore top=581 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT10" graphic="System_SideWindow_slot10" page=fore top=638 left=1239 exp="" absolute=1100001]
*/

	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot1ImgFile, "name"=>"QSLOT1","top"=>tf.System_BtImg_QSaveLoadSot_Slot1Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot1Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot1SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(0)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot2ImgFile, "name"=>"QSLOT2","top"=>tf.System_BtImg_QSaveLoadSot_Slot2Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot2Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot2SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(1)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot3ImgFile, "name"=>"QSLOT3","top"=>tf.System_BtImg_QSaveLoadSot_Slot3Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot3Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot3SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(2)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot4ImgFile, "name"=>"QSLOT4","top"=>tf.System_BtImg_QSaveLoadSot_Slot4Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot4Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot4SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(3)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot5ImgFile, "name"=>"QSLOT5","top"=>tf.System_BtImg_QSaveLoadSot_Slot5Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot5Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot5SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(4)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot6ImgFile, "name"=>"QSLOT6","top"=>tf.System_BtImg_QSaveLoadSot_Slot6Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot6Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot6SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(5)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot7ImgFile, "name"=>"QSLOT7","top"=>tf.System_BtImg_QSaveLoadSot_Slot7Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot7Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot7SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(6)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot8ImgFile, "name"=>"QSLOT8","top"=>tf.System_BtImg_QSaveLoadSot_Slot8Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot8Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot8SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(7)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot9ImgFile, "name"=>"QSLOT9","top"=>tf.System_BtImg_QSaveLoadSot_Slot9Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot9Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot9SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(8)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_QSaveLoadSot_Slot10ImgFile, "name"=>"QSLOT10","top"=>tf.System_BtImg_QSaveLoadSot_Slot10Ypos,"left"=>tf.System_BtImg_QSaveLoadSot_Slot10Xpos,"exp"=>"SysBtn_QuickSaveRun("+tf.System_BtImg_QSaveLoadSot_Slot10SaveIdx+")","enterse"=>tf.System_Se_QSaveLoadSot_Slot_Sel,"clickse"=>tf.System_Se_QSaveLoadSot_Slot_Click,"onenter"=>"SysBtn_QuickSaveSlotSelect(9)","onleave"=>"SysBtn_QuickSaveSlotRelease()"]);	
	
	
	
	
	}
	else{//右メニューを最小化
		tf.OpenQucikDrawFlag=0;
		var elm = %["layer"=>"message2","page"=>"fore", "left"=>tf.System_BtImg_QSaveLoadSot_BaseXpos,"top"=>tf.System_BtImg_QSaveLoadSot_BaseYpos];
		kag.getLayerFromElm(elm).setOptions(elm);
		var elm = %["layer"=>"message2","page"=>"fore", "frame"=>tf.System_BtImg_QSaveLoadSot_BaseImgFileOff,"visible"=>"true"];
		kag.getMessageLayerObjectFromElm(elm).setPosition(elm);

		var elm = %["name"=>"System_SideWindow","page"=>"fore","onenter"=>"SysBtn_CreateRightMenuButton(1)", "onleave"=>""];
		global.extsystembutton_obj.setOptions(elm.name, elm.page, elm);
		
		SysBtn_DeleteButton("alpharightmenuout","fore");
		SysBtn_DeleteButton("QSLOT1","fore");
		SysBtn_DeleteButton("QSLOT2","fore");
		SysBtn_DeleteButton("QSLOT3","fore");
		SysBtn_DeleteButton("QSLOT4","fore");
		SysBtn_DeleteButton("QSLOT5","fore");
		SysBtn_DeleteButton("QSLOT6","fore");
		SysBtn_DeleteButton("QSLOT7","fore");
		SysBtn_DeleteButton("QSLOT8","fore");
		SysBtn_DeleteButton("QSLOT9","fore");
		SysBtn_DeleteButton("QSLOT10","fore");
		//最小化されたボタンを再度生成	
		SysBtn_CreateButtonOnenter(tf.System_BtImg_QSaveLoadSot_SlotBaseBaseImgFile,"System_SideWindow",tf.System_BtImg_QSaveLoadSot_SlotBaseYpos,tf.System_BtImg_QSaveLoadSot_SlotBaseXpos,"SysBtn_CreateRightMenuButton(1)");



	}
}
//■指定番号スロットの選択状態を更新します。■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_QuickSaveSlotSelect(Index)
{
	if( sf.SaveMode_Flag[Index+90][0]!=1 ){
		return;
	}

	sf.QSaveLoadSelectIndex = Index+90;
	
	SysBtn_DeleteButton("QSLOT_THUM","fore");
	var ypos = 100;
/*


	kag.back.layers[15].setPos(15, ypos);
	kag.back.layers[15].loadImages(%[storage:kag.getBookMarkFileNameAtNum(Index)]);
	kag.back.layers[15].visible = true;	
*/	
	SysBtn_CreateImage(kag.getBookMarkFileNameAtNum(Index+90),"950",ypos,"15","fore","true",1500000);
}
//■指定番号スロットの選択状態を解除。■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_QuickSaveSlotRelease()
{
	sf.QSaveLoadSelectIndex = -1;
	dm("選択解除");
	var elm = %["layer"=>"15", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);
}
//■指定番号スロットに対してクイックセーブを行います。■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//右メニューが表示している時は、表示がオフになります。
function SysBtn_QuickSaveRun(SaveIndex)
{
	tf.saveindex = SaveIndex;
	kag.goToQSaveWithAsk();


}
//■指定番号スロットに対してクイックロードを行います。■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//右メニューが表示している時は、表示がオフになります。
function SysBtn_QuickLoadRun(SaveIndex)
{
	dm("クイックロード実行="+SaveIndex+"/"+tf.saveingnow);
	
	tf.LoadIndex = SaveIndex;
	kag.goToQLoadWithAsk();
	

}


//■セーブ処理実行します■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_SaveFunction(SaveIndex)
{
	dm("セーブ実行="+SaveIndex+"/"+tf.saveingnow);
	tf.saveindex = SaveIndex;
	
	if( tf.saveingnow == 1 )return;
	
	if( tf.SaveMode_Flag_Mode==0 )
	{
		kag.goToSaveWithAsk();
	}
}
//■ロード処理実行します■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_LoadFunction(LoadIndex)
{
	dm("SysBtn_LoadFunction="+LoadIndex);
	tf.LoadIndex = LoadIndex;

//	if( sf.ConfigState15==1 && sf.Quicl_Flag_Mode==0 ){
		kag.goToLoadWithAsk();
//	}
		


	
}
//■セーブロード画面を校正■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//RunMode 0 = セーブ 1 = ロード
//GameCall 0= ゲームからの呼び出しではない
function SysBtn_CreateSaveLoadViewMode(RunMode,GameCall)
{
	//ヘルプを削除
	HideHelp();
	
	//コンフィグ画面への移行時の起動元を保存しておく
	f.CallConfigModeFlg = GameCall;
	
	
	//コンフィグが起動した時、クイックセーブロードの選択中フラグはオフとなる
	//こうしないと、右クリックでロード状態となる。
	sf.QSaveLoadSelectIndex = -1;	
	
	kag.lockSnapshot();
	
	if( tf.SelectingRun == 1 ){
		SelectPlugin_obj.setOptions("btn0","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn1","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn2","fore",%["visible"=>false]);
		SelectPlugin_obj.setOptions("btn3","fore",%["visible"=>false]);
	}

//	kag.showConfig();
	f.SCutEnableFlg = 0;//キーショートカット利用不可
	f.CallSaveLoadModeFlg = GameCall;
	tf.SaveMode_Flag_Mode = RunMode;
	kag.RunSaveLoadModeFlg = 1;
	
	//コンフィグ画面を生成
	//これはゲーム画面の上に被せる形で生成する。
	//何故か次シナリオにいくまで動くので修正必要
	kag.historyWriteEnabled = false;
	kag.historyEnabled = false;
	

	//右クリックの処理を変更～コンフィグ画面を消す処理とする
	//現在は、処理を行わないようにしているのみ
	kag.rightClickEnabled = false;


	//メッセージウインドウを消去～ゲーム画面からのコール時のみ
	if( GameCall == 1 )
	{
		global.extsystembutton_obj.del();
		
		
		dm("f.RightMenuSysFlg="+f.RightMenuSysFlg);
		if( f.RightMenuSysFlg == 1 ){
			var elm = %["layer"=>"message2", "page"=>"fore","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
		}
		dm("f.MessageWindowFlg="+f.MessageWindowFlg);
		if( f.MessageWindowFlg == 1 ){
			var elm = %["layer"=>"message0", "page"=>"fore","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
			var elm = %["layer"=>"message3", "page"=>"fore","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
		}
		dm("f.UnderMenuSysFlg="+f.UnderMenuSysFlg);
		if( f.UnderMenuSysFlg == 1 ){
			var elm = %["layer"=>"message1", "page"=>"fore","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
			var elm = %["layer"=>"message1", "page"=>"back","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
		}
		dm("f.Config_FaceWindowUse="+f.Config_FaceWindowUse);
		if( tf.Config_FaceWindowUse){
			var elm = %["layer"=>"message4", "page"=>"fore","visible"=>false];
			kag.getLayerFromElm(elm).setOptions(elm);
		}
	}
	else{//タイトル画面からの呼び出し
		//タイトルボタンを削除
		SysBtn_DeleteButton("","fore");
	}
	
	//システムで利用するレイヤーを消去
	//ゲーム画面でシステムに使われている可能性がある
	var elm = %["layer"=>"15", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);
	
	//-バックログを表示させない
	var elm = %["output"=>false,"enabled"=>false];
	kag.setHistoryOptions(elm);
	
	if( RunMode==0 ){//セーブ画面構築
		dm("セーブ画面構築");
		SysBtn_CreateImage(tf.SaveMode_File_Bg_Name,"0","0","11","fore","true");
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveReturn_BtFile, "name"=>tf.System_BtImg_SaveReturn_BtName,"top"=>tf.System_BtImg_SaveReturn_Ypos,"left"=>tf.System_BtImg_SaveReturn_Xpos,"exp"=>tf.System_BtImg_SaveReturn_ExpFunc,"enterse"=>tf.System_Se_Save_BtClose_Sel,"clickse"=>tf.System_Se_Save_BtClose_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveBackPage_BtFile, "name"=>tf.System_BtImg_SaveBackPage_BtName,"top"=>tf.System_BtImg_SaveBackPage_Ypos,"left"=>tf.System_BtImg_SaveBackPage_Xpos,"exp"=>tf.System_BtImg_SaveBackPage_ExpFunc,"enterse"=>tf.System_Se_Save_BtBackPage_Sel,"clickse"=>tf.System_Se_Save_BtBackPage_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveNexpPage_BtFile, "name"=>tf.System_BtImg_SaveNexpPage_BtName,"top"=>tf.System_BtImg_SaveNexpPage_Ypos,"left"=>tf.System_BtImg_SaveNexpPage_Xpos,"exp"=>tf.System_BtImg_SaveNexpPage_ExpFunc,"enterse"=>tf.System_Se_Save_BtNextPage_Sel,"clickse"=>tf.System_Se_Save_BtNextPage_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveFirstPage_BtFile, "name"=>tf.System_BtImg_SaveFirstPage_BtName,"top"=>tf.System_BtImg_SaveFirstPage_Ypos,"left"=>tf.System_BtImg_SaveFirstPage_Xpos,"exp"=>tf.System_BtImg_SaveFirstPage_ExpFunc,"enterse"=>tf.System_Se_Save_BtFirstPage_Sel,"clickse"=>tf.System_Se_Save_BtFirstPage_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveEndPage_BtFile, "name"=>tf.System_BtImg_SaveEndPage_BtName,"top"=>tf.System_BtImg_SaveEndPage_Ypos,"left"=>tf.System_BtImg_SaveEndPage_Xpos,"exp"=>tf.System_BtImg_SaveEndPage_ExpFunc,"enterse"=>tf.System_Se_Save_BtEndPage_Sel,"clickse"=>tf.System_Se_Save_BtEndPage_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_SaveTAB1_BtFile, "name"=>tf.System_BtImg_SaveTAB1_BtName,"top"=>tf.System_BtImg_SaveTAB1_Ypos,"left"=>tf.System_BtImg_SaveTAB1_Xpos,"exp"=>tf.System_BtImg_SaveTAB1_ExpFunc,"enterse"=>tf.System_Se_Save_BtLoad_Sel,"clickse"=>tf.System_Se_Save_BtLoad_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Config_BtFile, "name"=>tf.System_BtImg_Config_BtName,"top"=>tf.System_BtImg_Config_Ypos,"left"=>tf.System_BtImg_Config_Xpos,"exp"=>tf.System_BtImg_Config_ExpFunc,"enterse"=>tf.System_Se_Save_Config_Sel,"clickse"=>tf.System_Se_Save_Config_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Title_BtFile, "name"=>tf.System_BtImg_Title_BtName,"top"=>tf.System_BtImg_Title_Ypos,"left"=>tf.System_BtImg_Title_Xpos,"exp"=>tf.System_BtImg_Title_ExpFunc,"enterse"=>tf.System_Se_Save_Title_Sel,"clickse"=>tf.System_Se_Save_Title_Click,"page"=>"fore"]);
		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Quit_BtFile, "name"=>tf.System_BtImg_Quit_BtName,"top"=>tf.System_BtImg_Quit_Ypos,"left"=>tf.System_BtImg_Quit_Xpos,"exp"=>tf.System_BtImg_Quit_ExpFunc,"enterse"=>tf.System_Se_Save_Quit_Sel,"clickse"=>tf.System_Se_Save_Quit_Click,"page"=>"fore"]);
	}
	else{//ロード画面構築
		dm("ロード画面構築");
		if( GameCall == 0 ) {
			SysBtn_CreateImage(tf.LoadMode_File_Bg_Name,"0","0","11","fore","true");
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadReturn_BtFile, "name"=>tf.System_BtImg_LoadReturn_BtName,"top"=>tf.System_BtImg_LoadReturn_Ypos,"left"=>tf.System_BtImg_LoadReturn_Xpos,"exp"=>tf.System_BtImg_LoadReturn_ExpFunc,"enterse"=>tf.System_Se_Save_BtClose_Sel,"clickse"=>tf.System_Se_Save_BtClose_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadBackPage_BtFile, "name"=>tf.System_BtImg_LoadBackPage_BtName,"top"=>tf.System_BtImg_LoadBackPage_Ypos,"left"=>tf.System_BtImg_LoadBackPage_Xpos,"exp"=>tf.System_BtImg_LoadBackPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtBackPage_Sel,"clickse"=>tf.System_Se_Load_BtBackPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadNexpPage_BtFile, "name"=>tf.System_BtImg_LoadNexpPage_BtName,"top"=>tf.System_BtImg_LoadNexpPage_Ypos,"left"=>tf.System_BtImg_LoadNexpPage_Xpos,"exp"=>tf.System_BtImg_LoadNexpPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtNextPage_Sel,"clickse"=>tf.System_Se_Load_BtNextPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadFirstPage_BtFile, "name"=>tf.System_BtImg_LoadFirstPage_BtName,"top"=>tf.System_BtImg_LoadFirstPage_Ypos,"left"=>tf.System_BtImg_LoadFirstPage_Xpos,"exp"=>tf.System_BtImg_LoadFirstPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtFirstPage_Sel,"clickse"=>tf.System_Se_Load_BtFirstPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadEndPage_BtFile, "name"=>tf.System_BtImg_LoadEndPage_BtName,"top"=>tf.System_BtImg_LoadEndPage_Ypos,"left"=>tf.System_BtImg_LoadEndPage_Xpos,"exp"=>tf.System_BtImg_LoadEndPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtEndPage_Sel,"clickse"=>tf.System_Se_Load_BtEndPage_Click,"page"=>"fore"]);
//		SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadTAB1_BtFile, "name"=>tf.System_BtImg_LoadTAB1_BtName,"top"=>tf.System_BtImg_LoadTAB1_Ypos,"left"=>tf.System_BtImg_LoadTAB1_Xpos,"exp"=>tf.System_BtImg_LoadTAB1_ExpFunc,"enterse"=>tf.System_Se_Load_BtSave_Sel,"clickse"=>tf.System_Se_Load_BtSave_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Config_BtFile, "name"=>tf.System_BtImg_Config_BtName,"top"=>tf.System_BtImg_Config_Ypos,"left"=>tf.System_BtImg_Config_Xpos,"exp"=>tf.System_BtImg_Config_ExpFunc,"enterse"=>tf.System_Se_Load_Config_Sel,"clickse"=>tf.System_Se_Load_Config_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Title_BtFile, "name"=>tf.System_BtImg_Title_BtName,"top"=>tf.System_BtImg_Title_Ypos,"left"=>tf.System_BtImg_Title_Xpos,"exp"=>tf.System_BtImg_Title_ExpFunc,"enterse"=>tf.System_Se_Load_Title_Sel,"clickse"=>tf.System_Se_Load_Title_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Quit_BtFile, "name"=>tf.System_BtImg_Quit_BtName,"top"=>tf.System_BtImg_Quit_Ypos,"left"=>tf.System_BtImg_Quit_Xpos,"exp"=>tf.System_BtImg_Quit_ExpFunc,"enterse"=>tf.System_Se_Load_Quit_Sel,"clickse"=>tf.System_Se_Load_Quit_Click,"page"=>"fore"]);
		} else {
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadReturn_BtFile, "name"=>tf.System_BtImg_LoadReturn_BtName,"top"=>tf.System_BtImg_LoadReturn_Ypos,"left"=>tf.System_BtImg_LoadReturn_Xpos,"exp"=>tf.System_BtImg_LoadReturn_ExpFunc,"enterse"=>tf.System_Se_Save_BtClose_Sel,"clickse"=>tf.System_Se_Save_BtClose_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadBackPage_BtFile, "name"=>tf.System_BtImg_LoadBackPage_BtName,"top"=>tf.System_BtImg_LoadBackPage_Ypos,"left"=>tf.System_BtImg_LoadBackPage_Xpos,"exp"=>tf.System_BtImg_LoadBackPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtBackPage_Sel,"clickse"=>tf.System_Se_Load_BtBackPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadNexpPage_BtFile, "name"=>tf.System_BtImg_LoadNexpPage_BtName,"top"=>tf.System_BtImg_LoadNexpPage_Ypos,"left"=>tf.System_BtImg_LoadNexpPage_Xpos,"exp"=>tf.System_BtImg_LoadNexpPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtNextPage_Sel,"clickse"=>tf.System_Se_Load_BtNextPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadFirstPage_BtFile, "name"=>tf.System_BtImg_LoadFirstPage_BtName,"top"=>tf.System_BtImg_LoadFirstPage_Ypos,"left"=>tf.System_BtImg_LoadFirstPage_Xpos,"exp"=>tf.System_BtImg_LoadFirstPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtFirstPage_Sel,"clickse"=>tf.System_Se_Load_BtFirstPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadEndPage_BtFile, "name"=>tf.System_BtImg_LoadEndPage_BtName,"top"=>tf.System_BtImg_LoadEndPage_Ypos,"left"=>tf.System_BtImg_LoadEndPage_Xpos,"exp"=>tf.System_BtImg_LoadEndPage_ExpFunc,"enterse"=>tf.System_Se_Load_BtEndPage_Sel,"clickse"=>tf.System_Se_Load_BtEndPage_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_LoadTAB1_BtFile, "name"=>tf.System_BtImg_LoadTAB1_BtName,"top"=>tf.System_BtImg_LoadTAB1_Ypos,"left"=>tf.System_BtImg_LoadTAB1_Xpos,"exp"=>tf.System_BtImg_LoadTAB1_ExpFunc,"enterse"=>tf.System_Se_Load_BtSave_Sel,"clickse"=>tf.System_Se_Load_BtSave_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Config_BtFile, "name"=>tf.System_BtImg_Config_BtName,"top"=>tf.System_BtImg_Config_Ypos,"left"=>tf.System_BtImg_Config_Xpos,"exp"=>tf.System_BtImg_Config_ExpFunc,"enterse"=>tf.System_Se_Load_Config_Sel,"clickse"=>tf.System_Se_Load_Config_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Title_BtFile, "name"=>tf.System_BtImg_Title_BtName,"top"=>tf.System_BtImg_Title_Ypos,"left"=>tf.System_BtImg_Title_Xpos,"exp"=>tf.System_BtImg_Title_ExpFunc,"enterse"=>tf.System_Se_Load_Title_Sel,"clickse"=>tf.System_Se_Load_Title_Click,"page"=>"fore"]);
			SysBtn_CreateButtonElm(%["graphic"=>tf.System_BtImg_Quit_BtFile, "name"=>tf.System_BtImg_Quit_BtName,"top"=>tf.System_BtImg_Quit_Ypos,"left"=>tf.System_BtImg_Quit_Xpos,"exp"=>tf.System_BtImg_Quit_ExpFunc,"enterse"=>tf.System_Se_Load_Quit_Sel,"clickse"=>tf.System_Se_Load_Quit_Click,"page"=>"fore"]);
		
		}
	}
	

	
	//ページのリフレッシュ
	SysBtn_RefleshSaveLoadPage();
	
	//サムネイルのリフレッシュ
	SysBtn_RefleshSaveLoadThum();
	
}
//■セーブロード画面のページリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_RefleshSaveLoadPage()
{
	//ページボタンを削除
	SysBtn_DeleteButton("PageCount","fore");
	
	var file= "";
	if( tf.SaveMode_Flag_Mode == 0 )//セーブ
		file = tf.System_BgImg_PageBgSave_ImgFile[tf.SaveMode_Count_PageNo];
	else
		file = tf.System_BgImg_PageBgLoad_ImgFile[tf.SaveMode_Count_PageNo];
	
	if( file != ""){
		SysBtn_CreateImage(file,"0","0","12","fore","true");
	}

	//ページ切り替えタブの描画
	for(var loop=0;loop<tf.SaveMode_Count_MaxSavePage;loop++){
	
		if( tf.SaveMode_Count_PageNo != loop ){
			if(tf.SaveMode_Flag_Mode == 0) {
				var file=tf.System_BtImg_PageTab_BtImgFile[loop];
				var func="SysBtn_PageChngeSaveLoadThum("+loop+")";
				SysBtn_CreateButtonElm(%["graphic"=>file, "top"=>tf.SaveMode_Pos_Page1_Ypos[loop], "left"=>tf.SaveMode_Pos_Page1_Xpos[loop], "page"=>"fore", "name"=>"PageCount", "exp"=>func,"enterse"=>tf.System_BtImg_PageTab_SelectSeImgFile[loop],"clickse"=>tf.System_BtImg_PageTab_ClickSeImgFile[loop]]);
			} else {
				var file=tf.System_BtImg_LoadPageTab_BtImgFile[loop];
				var func="SysBtn_PageChngeSaveLoadThum("+loop+")";
				SysBtn_CreateButtonElm(%["graphic"=>file, "top"=>tf.SaveMode_Pos_Page1_Ypos[loop], "left"=>tf.SaveMode_Pos_Page1_Xpos[loop], "page"=>"fore", "name"=>"PageCount", "exp"=>func,"enterse"=>tf.System_BtImg_PageTab_SelectSeImgFile[loop],"clickse"=>tf.System_BtImg_PageTab_ClickSeImgFile[loop]]);
			}
		}
	}


}
//■セーブロード画面のページ状態を切り替え左右■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//0 = BACK 1 = NEXT
function SysBtn_SaveLoadPageChange(RunFlg)
{
	if( RunFlg == 0 ){
		tf.SaveMode_Count_PageNo = tf.SaveMode_Count_PageNo - 1;
		if( tf.SaveMode_Count_PageNo < 0 )tf.SaveMode_Count_PageNo = 9;
	}
	else if( RunFlg == 1 ){
		tf.SaveMode_Count_PageNo = tf.SaveMode_Count_PageNo + 1;
		if( tf.SaveMode_Count_PageNo > 9 )tf.SaveMode_Count_PageNo = 0;
	}
	else if( RunFlg == 2 ){
		tf.SaveMode_Count_PageNo = 0;
	}
	else if( RunFlg == 3 ){
		tf.SaveMode_Count_PageNo = 9;
	}
	SysBtn_PageChngeSaveLoadThum(tf.SaveMode_Count_PageNo);

}
//■セーブロード画面のページ状態を切り替え■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_PageChngeSaveLoadThum(PageNo)
{
	dm("SysBtn_PageChngeSaveLoadThum="+PageNo);
	
	tf.SaveMode_Count_PageNo = PageNo;
	
	//ページのリフレッシュ
	SysBtn_RefleshSaveLoadPage();
	
	//サムネイルのリフレッシュ
	SysBtn_RefleshSaveLoadThum();



}
//■セーブロード画面のサムネイルリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_RefleshSaveLoadThum()
{
	//サムネイルボタンを削除
	SysBtn_DeleteButton("SaveThumImg","fore");
	
	//サムネイルレイヤーを削除
	var elm = %["layer"=>"13", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);


	//サムネイルをループによって描画
	for(var loop=0;loop<tf.SaveMode_Count_PageInSlot;loop++){
		var xpos=tf.System_Pos_SaveThum_Xpos[loop];
		var ypos=tf.System_Pos_SaveThum_Ypos[loop];

		if( sf.SaveMode_Flag[tf.SaveMode_Count_PageNo*10+loop][0]==1 ){
			
			
			SysBtn_CreateImage(kag.getBookMarkFileNameAtNum(loop+(tf.SaveMode_Count_PageNo*10)),0,0,"13","back","true");

			var wrklayer = kag.back.layers[13];
			var tempLayer = new Layer(kag, wrklayer);
			tempLayer.assignImages(wrklayer);

			wrklayer.setImageSize(tf.System_Size_SaveThum_Width,tf.System_Size_SaveThum_Height);
			wrklayer.setSizeToImageSize();
			kag.fore.layers[12].stretchCopy(xpos, ypos, wrklayer.width, wrklayer.height, tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, stLinear);
			invalidate tempLayer;
			//保存日付を表示
			var elm = %["layer"=>"12", "page"=>"fore","x"=>xpos+tf.System_Pos_SaveDayTime_Xpos,"y"=>ypos+tf.System_Pos_SaveDayTime_Ypos,"text"=>kag.getBookMarkDate(loop+(tf.SaveMode_Count_PageNo*10)),"size"=>tf.System_Size_SaveDayTime_Font,"color"=>sf.System_Color_SaveDayTime_Font,"edgecolor"=>sf.System_Color_SaveDayTime_edgeFont,"edge"=>"true","shadow"=>"true"];
			kag.getLayerFromElm(elm).drawReconstructibleText(elm);	

		}
		//反応範囲となる透明エリアを生成
		if( tf.SaveMode_Flag_Mode == 0 || ( tf.SaveMode_Flag_Mode == 1 && sf.SaveMode_Flag[tf.SaveMode_Count_PageNo*10+loop][0]==1  ))
		{
			if( tf.SaveMode_Flag_Mode == 0 )
				var expstr = "SysBtn_SaveFunction("+(loop+tf.SaveMode_Count_PageNo*10)+")";
			else
				var expstr = "SysBtn_LoadFunction("+(loop+tf.SaveMode_Count_PageNo*10)+")";
			
			if( tf.SaveMode_Flag_Mode == 0 )
				SysBtn_CreateButtonElm(%["graphic"=>tf.SaveMode_File_AlphaSlot_Name, "top"=>ypos+tf.System_Pos_SaveSlotErea_Ypos, "left"=>xpos+tf.System_Pos_SaveSlotErea_Xpos, "page"=>"fore", "name"=>"SaveThumImg", "exp"=>expstr,"enterse"=>tf.System_File_SaveSlotSelect_SeFile,"clickse"=>tf.System_File_SaveSlotClick_SeFile]);
			else
				SysBtn_CreateButtonElm(%["graphic"=>tf.SaveMode_File_AlphaSlot_Name, "top"=>ypos+tf.System_Pos_SaveSlotErea_Ypos, "left"=>xpos+tf.System_Pos_SaveSlotErea_Xpos, "page"=>"fore", "name"=>"SaveThumImg", "exp"=>expstr,"enterse"=>tf.System_File_SaveSlotSelect_SeFile,"clickse"=>tf.System_File_SaveSlotClick_SeFile]);
		}
	}


}
//■セーブロード画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_CloseSaveLoadViewMode()
{
	if( tf.SaveMode_Flag_Mode == 0 )
		kag.unlockSnapshot();

	//システム画面の起動フラグをたてる
	kag.RunSaveLoadModeFlg = false;

	//セーブロード画面のボタンを削除
	SysBtn_DeleteButton("","fore");

	//セーブロード画面の画像を削除
	var elm = %["layer"=>"10", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"11", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"12", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	var elm = %["layer"=>"13", "page"=>"fore"];
	kag.getLayerFromElm(elm).freeImage(elm);

	//アドベンチャ画面のメッセージウインドウを再度生成
	//メッセージウインドウを復帰
	if( f.CallSaveLoadModeFlg == 0 ){//タイトル画面からの呼び出し

	var elm = %["graphic"=>"title_menuBtA", "name"=>"title_menuBtA","top"=>tf.System_Config_Title_TitleBtAYpos,"left"=>tf.System_Config_Title_TitleBtAXpos,"target"=>"*NewGame","enterse"=>tf.System_Se_Title_NewGame_Sel,"clickse"=>tf.System_Se_Title_NewGame_Click ];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtB", "name"=>"title_menuBtB","top"=>tf.System_Config_Title_TitleBtBYpos,"left"=>tf.System_Config_Title_TitleBtBXpos,"target"=>"*SaveLoad","enterse"=>tf.System_Se_Title_Load_Sel,"clickse"=>tf.System_Se_Title_Load_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtC", "name"=>"title_menuBtC","top"=>tf.System_Config_Title_TitleBtCYpos,"left"=>tf.System_Config_Title_TitleBtCXpos,"target"=>"*Config","enterse"=>tf.System_Se_Title_Config_Sel,"clickse"=>tf.System_Se_Title_Config_Click ];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtD", "name"=>"title_menuBtD","top"=>tf.System_Config_Title_TitleBtDYpos,"left"=>tf.System_Config_Title_TitleBtDXpos,"target"=>"*Extra","enterse"=>tf.System_Se_Title_Omake_Sel,"clickse"=>tf.System_Se_Title_Omake_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

	var elm = %["graphic"=>"title_menuBtE", "name"=>"title_menuBtE","top"=>tf.System_Config_Title_TitleBtEYpos,"left"=>tf.System_Config_Title_TitleBtEXpos,"exp"=>"kag.close()","enterse"=>tf.System_Se_Title_Exit_Sel,"clickse"=>tf.System_Se_Title_Exit_Click];
	elm.classobj = 'KAnimButtonLayer';
	elm.classobj = Scripts.eval(elm.classobj);
	elm.enabled = kag.inStable;
	global.extsystembutton_obj.add(elm.name, elm.classobj, elm.page, elm);

		f.SCutEnableFlg = 0;//キーショートカット利用不可

	}
	else{//ゲーム画面からの呼び出し
		var elm = new Dictionary();
		if( f.RightMenuSysFlg != void && f.RightMenuSysFlg == 1 ){//-右メニューの復元
			var elm = %["layer"=>"message2", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
//			Create_RightMenuButton();
			SysBtn_CreateRightMenuButton(0);
		}
		
		if( f.MessageWindowFlg != void && f.MessageWindowFlg == 1 ){
			var elm = %["layer"=>"message0", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
			var elm = %["layer"=>"message3", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);
		}
		if( f.UnderMenuSysFlg != void && f.UnderMenuSysFlg == 1 ){
//			var elm = %["layer"=>"message1", "page"=>"fore","visible"=>true];
//			kag.getLayerFromElm(elm).setOptions(elm);
			Create_UnderMenuButton();//-基本ボタンメニューを起動
		}
		if( tf.Config_FaceWindowUse == 1 ){//フェイスウインドウが有効なら表示
			var elm = %["layer"=>"message4", "page"=>"fore","visible"=>true];
			kag.getLayerFromElm(elm).setOptions(elm);

		}

		kag.historyWriteEnabled = true;
		kag.historyEnabled = true;
		kag.rightClickEnabled = true;

		if( tf.SelectingRun == 1 ){
			SelectPlugin_obj.setOptions("btn0","fore",%["visible"=>true]);
			SelectPlugin_obj.setOptions("btn1","fore",%["visible"=>true]);
			SelectPlugin_obj.setOptions("btn2","fore",%["visible"=>true]);
			SelectPlugin_obj.setOptions("btn3","fore",%["visible"=>true]);
		}
		f.SCutEnableFlg = 1;//キーショートカット利用可

	}
	




}
//■シーンジャンプフラグを書き換え■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
function SysBtn_SceneJumpModeFlg(storage,target,Runflg)
{
	dm(storage);
	dm(target);
	dm(Runflg);
	
	for(var loop=0;loop<tf.SceneMode_Count_ListMax;loop++)
	{
		if( sf.SceneJump_List[loop][0]==storage&&sf.SceneJump_List[loop][1]==target )
		{
			sf.SceneJump_List[loop][2]=Runflg;
			loop=tf.SceneMode_Count_ListMax;
		}
	}
	//次のシーンジャンプ先を未設定にする。これをしないとずっと同じ場所にジャンプしてしまう
	//次のジャンプ先にスクリプト側で明示的に宣言しなければならない
//	f.SceneJump_Selectfile = "";
//	f.SceneJump_Selecttarget = "";

}
//■シーンジャンプターゲットを配列要素数を取得■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//未閲覧状態の場合は、存在しても-1を返す。強制ジャンプモードの場合は見閲覧でも要素値を返す
function PeasSys_Get_SceneJumpRun()
{
	for(var loop=0;loop<tf.SceneMode_Count_ListMax;loop++)
	{
		if( sf.SceneJump_List[loop][0]==storage&&sf.SceneJump_List[loop][1]==target )
		{
			//シーンジャンプ要素発見
			if( sf.SceneJump_List[loop][2] == 1 || f.SceneJump_RunFlg == 1 )
			{
				
				return sf.systemreturn = loop;
			}
			return sf.systemreturn = -1;
		}
	}
	
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
