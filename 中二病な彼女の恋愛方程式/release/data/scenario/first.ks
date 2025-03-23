[cm]
;▼デバッグモードフラグ 0=リリース 1=デバッグ
[eval exp="sf.DebugModeFlg=0"]
[if exp="sf.DebugModeFlg == 0"]
	[iscript]
		System.setArgument('-debugwin','no');
	[endscript]
[endif]
;バックログを表示させない
[history output=false enabled="false"]
;右クリック利用不可
[rclick enabled="false"]

; プラグイン・マクロ読込
[call storage="LoadMacros.ks"]


[call storage=PeasAdvSystem_GameInit.ks target="*Initialize"]
[call storage=PeasAdvSystem_Runing.ks target="*Initialize"]
[call storage=PeasAdvSystem_Title.ks target="*Initialize"]
[call storage=PeasAdvSystem_Config.ks target="*Initialize"]
[call storage=PeasAdvSystem_SaveLoad.ks target="*Initialize"]
[call storage=PeasAdvSystem_Extra.ks target="*Initialize"]

[call storage="ExtStaffroll.ks"]
;[if exp="tf.System_Config_ScreenSize == 1"]
;	[call storage="WindowResizable.ks"]
;[endif]
[call storage="TJSFunctions.ks"]
[call storage="Macro_TimeEffect.ks"]
[call storage="Macro_APimage.ks"]
[call storage="systembutton.ks"]
[call storage="ExtSystemButton.ks"]
[call storage="PeasAdvSystem.ks"]
[call storage="SaveAnywhere.ks"]
[call storage="MessageStore.ks"]
[call storage="SelectPlugin.ks"]
[call storage="AltEnterFullScreen.ks"]
[call storage="onClickOutOfPrimaryLayer.ks"]
[eval exp="KAGLoadScript('YesNoDialog.tjs')"]
[call storage="PeasAdvSystem_SceneJump.ks" target="*Initialize"]

[call storage="CtrlSkip.ks"]
[call storage="Interpolation.ks"]
[call storage="LayerMotionPlugin.ks"]
[call storage="SliderPlugin.ks"]

//システムレイヤのインデックスを修正
//11以降は、システムがコンフィグ等で利用するレイヤーとなるので注意
;[layopt layer=11 index=2000000]
;[layopt layer=12 index=2000000]
[layopt layer=13 index=2000000]
[layopt layer=14 index=2000000]

;ショートカットを利用不可とする
[EnableSCutFlg enable=0]




;システム利用用変数配列
[iscript]
if( sf.System_Val_Flag === void ){
	sf.System_Val_Flag=new Array();
	for(var loop=0;loop<100;loop++){
		sf.System_Val_Flag[loop] = 0;
	}
}
[endscript]



;CG回想フラグ配列
[iscript]
if( sf.GalleryMode_Flag === void ){
	sf.GalleryMode_Flag=new Array();
	for(var loop=0;loop<tf.GalleryMode_Count_MaxGalleryItem;loop++){
		sf.GalleryMode_Flag[loop] = new Array();
		sf.GalleryMode_Flag[loop][0] = 0;//オープンフラグを初期化
		//０番以降は、各差分のオープンフラグとなる
	}
}
//デバッグ用
/*
for(var loop=0;loop<tf.GalleryMode_Count_MaxGalleryItem;loop++){
	for(var loop2=0;loop2<20;loop2++){
	sf.GalleryMode_Flag[loop][loop2] = 1;//オープンフラグを初期化
	//０番以降は、各差分のオープンフラグとなる
	}
}
*/
[endscript]

;シーン回想フラグ
;シーン回想実行中フラグ(１の時、セーブロード・クイックセーブ系が利用付加になる
[eval exp="tf.SceneMode_RunFlg=0"]
[iscript]
if( sf.SceneMode_Flag === void ){
	sf.SceneMode_Flag=new Array();
	for(var loop=0;loop<tf.SceneMode_Count_MaxGalleryItem;loop++){
		sf.SceneMode_Flag[loop] = 0;//オープンフラグを初期化
	}
}
//デバッグ用
/*
for(var loop=0;loop<tf.GalleryMode_Count_MaxGalleryItem;loop++){
	sf.SceneMode_Flag[loop] = 1;
}
*/
[endscript]




;選択肢の初期化■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[select_opt titlecolor=0x55FF00FF bgleft="&tf.System_Config_Sel_bgleft" bgtop"&tf.System_Config_Sel_bgtop" bgwidth="&tf.System_Config_Sel_bgwidth" barealeft="&tf.System_Config_Sel_barealeft" bareatop="&tf.System_Config_Sel_bareatop" bareaheight="&tf.System_Config_Sel_bareaheight" clearmsg="&tf.System_Config_Sel_clearmsg"]
[select_button_opt graphic="&tf.System_Config_Sel_ImageFile"]


;メッセージレイヤーの初期化■■■■■■■■■■■■■■■■■■■■■■■■■
;メッセージレイヤは、ウインドウ用とメッセージ用に別れる
;これは、プレイ中にメッセージウインドウ透過率を変化させる為に必要となっている。
;0=ウインドウ用
;3=メッセージ用
;4=フェイスウインドウ
[position layer=message0 page=fore left="&tf.System_Config_Msg_PosX" top="&tf.System_Config_Msg_PosY" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb" visible=false]

[layopt layer=message2 page=fore opacity=255]
[layopt layer=message2 page=back opacity=255]

[position layer=message3 page=fore marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb" visible=false]

[layopt layer=message4 page=fore opacity=255]
[position layer=message4 page=fore left="0" top="500" width="1280" height="300" opacity="0" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb" visible=false]
[position layer=message4 page=back left="0" top="500" width="1280" height="300" opacity="0" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb" visible=false]


;システム系画面リソースデザインデータ
;//画面モード
;//-バックログ画面
[eval exp="tf.System_Se_BackLog_BtClose_Sel=''"]

[iscript]
tf.System_Se_BackLog_BtClose_Click='';//CONFIG画面　バックログ　閉じる　にクリックした時の効果音
tf.System_Se_BackLog_BtPlayCv_Sel='';//CONFIG画面　バックログ　音声再生　に触れた時の効果音
tf.System_Se_BackLog_BtPlayCv_Click='';//CONFIG画面　バックログ　音声再生　にクリックした時の効果音


//-セーブロード画面
tf.System_Se_Save_BtClose_Sel='';//Save画面　セーブ画面　閉じる　に触れた時の効果音
tf.System_Se_Save_BtClose_Click='';//Save画面　セーブ画面　閉じる　にクリックした時の効果音
tf.System_Se_Save_BtPageTab_Sel='';//Save画面　セーブ画面　ページ切り替え　に触れた時の効果音
tf.System_Se_Save_BtPageTab_Click='';//Save画面　セーブ画面　ページ切り替え　にクリックした時の効果音
tf.System_Se_Save_BtNextPage_Sel='';//Save画面　セーブ画面　次ページへ　に触れた時の効果音
tf.System_Se_Save_BtNextPage_Click='';//Save画面　セーブ画面　次ページへ　にクリックした時の効果音
tf.System_Se_Save_BtBackPage_Sel='';//Save画面　セーブ画面　前ページへ　に触れた時の効果音
tf.System_Se_Save_BtBackPage_Click='';//Save画面　セーブ画面　前ページへ　にクリックした時の効果音
tf.System_Se_Save_BtFirstPage_Sel='';//Save画面　セーブ画面　最初のページへ　に触れた時の効果音
tf.System_Se_Save_BtFirstPage_Click='';//Save画面　セーブ画面　最初のページへ　にクリックした時の効果音
tf.System_Se_Save_BtEndPage_Sel='';//Save画面　セーブ画面　最後のページへ　に触れた時の効果音
tf.System_Se_Save_BtEndPage_Click='';//Save画面　セーブ画面　最後のページへ　にクリックした時の効果音
tf.System_Se_Save_BtSlot_Sel='';//Save画面　セーブスロット　に触れた時の効果音
tf.System_Se_Save_BtSlot_Click='';//Save画面　セーブスロット　にクリックした時の効果音
tf.System_Se_Save_BtLoad_Sel='';//Save画面　ロードボタン　に触れた時の効果音
tf.System_Se_Save_BtLoad_Click='';//Save画面　ロードボタン　にクリックした時の効果音
tf.System_Se_Save_Config_Sel='';//Save画面　コンフィグ　に触れた時の効果音
tf.System_Se_Save_Config_Click='';//Save画面　コンフィグ　にクリックした時の効果音
tf.System_Se_Save_Title_Sel='';//Save画面　タイトル　に触れた時の効果音
tf.System_Se_Save_Title_Click='';//Save画面　タイトル　にクリックした時の効果音
tf.System_Se_Save_Quit_Sel='';//Save画面　終了　に触れた時の効果音
tf.System_Se_Save_Quit_Click='';//Save画面　終了　にクリックした時の効果音





tf.System_Se_Load_BtClose_Sel='';//Load画面　ロード画面　閉じる　に触れた時の効果音
tf.System_Se_Load_BtClose_Click='';//Load画面　ロード画面　閉じる　にクリックした時の効果音
tf.System_Se_Load_BtPageTab_Sel='';//Load画面　ロード画面　ページ切り替え　に触れた時の効果音
tf.System_Se_Load_BtPageTab_Click='';//Load画面　ロード画面　ページ切り替え　にクリックした時の効果音
tf.System_Se_Load_BtNextPage_Sel='';//Load画面　ロード画面　次ページへ　に触れた時の効果音
tf.System_Se_Load_BtNextPage_Click='';//Load画面　ロード画面　次ページへ　にクリックした時の効果音
tf.System_Se_Load_BtBackPage_Sel='';//Load画面　ロード画面　前ページへ　に触れた時の効果音
tf.System_Se_Load_BtBackPage_Click='';//Load画面　ロード画面　前ページへ　にクリックした時の効果音
tf.System_Se_Load_BtSlot_Sel='';//Load画面　ロードスロット　に触れた時の効果音
tf.System_Se_Load_BtSlot_Click='';//Load画面　ロードスロット　にクリックした時の効果音
tf.System_Se_Save_BtSave_Sel='';//Save画面　ロードボタン　に触れた時の効果音
tf.System_Se_Save_BtSave_Click='';//Save画面　ロードボタン　にクリックした時の効果音
tf.System_Se_Load_BtFirstPage_Sel='';//Save画面　セーブ画面　最初のページへ　に触れた時の効果音
tf.System_Se_Load_BtFirstPage_Click='';//Save画面　セーブ画面　最初のページへ　にクリックした時の効果音
tf.System_Se_Load_BtEndPage_Sel='';//Save画面　セーブ画面　最後のページへ　に触れた時の効果音
tf.System_Se_Load_BtEndPage_Click='';//Save画面　セーブ画面　最後のページへ　にクリックした時の効果音
tf.System_Se_Load_Config_Sel='';//Save画面　コンフィグ　に触れた時の効果音
tf.System_Se_Load_Config_Click='';//Save画面　コンフィグ　にクリックした時の効果音
tf.System_Se_Load_Title_Sel='';//Save画面　タイトル　に触れた時の効果音
tf.System_Se_Load_Title_Click='';//Save画面　タイトル　にクリックした時の効果音
tf.System_Se_Load_Quit_Sel='';//Save画面　終了　に触れた時の効果音
tf.System_Se_Load_Quit_Click='';//Save画面　終了　にクリックした時の効果音


//■音声を再設定■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
if(tf.System_Se_MessageWindow_Bt1_Sel==''){tf.System_Se_MessageWindow_Bt1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt2_Sel==''){tf.System_Se_MessageWindow_Bt2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt3_Sel==''){tf.System_Se_MessageWindow_Bt3_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt4_Sel==''){tf.System_Se_MessageWindow_Bt4_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt5_Sel==''){tf.System_Se_MessageWindow_Bt5_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt6_Sel==''){tf.System_Se_MessageWindow_Bt6_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt7_Sel==''){tf.System_Se_MessageWindow_Bt7_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt8_Sel==''){tf.System_Se_MessageWindow_Bt8_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt9_Sel==''){tf.System_Se_MessageWindow_Bt9_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_MessageWindow_Bt10_Sel==''){tf.System_Se_MessageWindow_Bt10_Sel=tf.System_Se_AllSound_Sel;}

if(tf.System_Se_MessageWindow_Bt1_Click==''){tf.System_Se_MessageWindow_Bt1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt2_Click==''){tf.System_Se_MessageWindow_Bt21_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt3_Click==''){tf.System_Se_MessageWindow_Bt3_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt4_Click==''){tf.System_Se_MessageWindow_Bt4_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt5_Click==''){tf.System_Se_MessageWindow_Bt5_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt6_Click==''){tf.System_Se_MessageWindow_Bt6_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt7_Click==''){tf.System_Se_MessageWindow_Bt7_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt8_Click==''){tf.System_Se_MessageWindow_Bt8_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt9_Click==''){tf.System_Se_MessageWindow_Bt9_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_MessageWindow_Bt10_Click==''){tf.System_Se_MessageWindow_Bt10_Click=tf.System_Se_AllSound_Click;}


if(tf.System_Se_QSaveLoadSot_Slot_Sel==''){tf.System_Se_QSaveLoadSot_Slot_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_QSaveLoadSot_Slot_Click==''){tf.System_Se_QSaveLoadSot_Slot_Click=tf.System_Se_AllSound_Click;}

//-CONGIF画面
if(tf.System_Se_Config_BtModeA_Sel==''){tf.System_Se_Config_BtModeA_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtModeA_Sel_Click==''){tf.System_Se_Config_BtModeA_Sel_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtModeB_Sel==''){tf.System_Se_Config_BtModeB_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtModeB_Sel_Click==''){tf.System_Se_Config_BtModeB_Sel_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtModeC_Sel==''){tf.System_Se_Config_BtModeC_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtModeC_Sel_Click==''){tf.System_Se_Config_BtModeC_Sel_Click=tf.System_Se_AllSound_Click;}




if(tf.System_Se_Config_BtInitialize_Sel==''){tf.System_Se_Config_BtInitialize_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtInitialize_Click==''){tf.System_Se_Config_BtInitialize_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtRetTitle_Sel==''){tf.System_Se_Config_BtRetTitle_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtRetTitle_Click==''){tf.System_Se_Config_BtRetTitle_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtClose_Sel==''){tf.System_Se_Config_BtClose_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtClose_Click==''){tf.System_Se_Config_BtClose_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtScreenMode1_Sel==''){tf.System_Se_Config_BtScreenMode1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtScreenMode1_Click==''){tf.System_Se_Config_BtScreenMode1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtScreenMode2_Sel==''){tf.System_Se_Config_BtScreenMode2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtScreenMode2_Click==''){tf.System_Se_Config_BtScreenMode2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtMovieSkip1_Sel==''){tf.System_Se_Config_BtMovieSkip1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMovieSkip1_Click==''){tf.System_Se_Config_BtMovieSkip1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtMovieSkip2_Sel==''){tf.System_Se_Config_BtMovieSkip2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMovieSkip2_Click==''){tf.System_Se_Config_BtMovieSkip2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtEffectCut1_Sel==''){tf.System_Se_Config_BtEffectCut1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtEffectCut1_Click==''){tf.System_Se_Config_BtEffectCut1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtEffectCut2_Sel==''){tf.System_Se_Config_BtEffectCut2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtEffectCut2_Click==''){tf.System_Se_Config_BtEffectCut2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtMasterVolume1_Sel==''){tf.System_Se_Config_BtMasterVolume1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMasterVolume1_Click==''){tf.System_Se_Config_BtMasterVolume1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtMasterVolume2_Sel==''){tf.System_Se_Config_BtMasterVolume2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMasterVolume2_Click==''){tf.System_Se_Config_BtMasterVolume2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtBgmVolume1_Sel==''){tf.System_Se_Config_BtBgmVolume1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtBgmVolume1_Click==''){tf.System_Se_Config_BtBgmVolume1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtBgmVolume2_Sel==''){tf.System_Se_Config_BtBgmVolume2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtBgmVolume2_Click==''){tf.System_Se_Config_BtBgmVolume2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtSeVolume1_Sel==''){tf.System_Se_Config_BtSeVolume1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSeVolume1_Click==''){tf.System_Se_Config_BtSeVolume1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtSeVolume2_Sel==''){tf.System_Se_Config_BtSeVolume2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSeVolume2_Click==''){tf.System_Se_Config_BtSeVolume2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtCvVolume1_Sel==''){tf.System_Se_Config_BtCvVolume1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtCvVolume1_Click==''){tf.System_Se_Config_BtCvVolume1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtCvVolume2_Sel==''){tf.System_Se_Config_BtCvVolume2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtCvVolume2_Click==''){tf.System_Se_Config_BtCvVolume2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtMsgWindowOpacity1_Sel==''){tf.System_Se_Config_BtMsgWindowOpacity1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMsgWindowOpacity1_Click==''){tf.System_Se_Config_BtMsgWindowOpacity1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtMsgWindowOpacity2_Sel==''){tf.System_Se_Config_BtMsgWindowOpacity2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtMsgWindowOpacity2_Click==''){tf.System_Se_Config_BtMsgWindowOpacity2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtSystemMenu1_Sel==''){tf.System_Se_Config_BtSystemMenu1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSystemMenu1_Click==''){tf.System_Se_Config_BtSystemMenu1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtSystemMenu2_Sel==''){tf.System_Se_Config_BtSystemMenu2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSystemMenu2_Click==''){tf.System_Se_Config_BtSystemMenu2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtHelp1_Sel==''){tf.System_Se_Config_BtHelp1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtHelp1_Click==''){tf.System_Se_Config_BtHelp1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtHelp2_Sel==''){tf.System_Se_Config_BtHelp2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtHelp2_Click==''){tf.System_Se_Config_BtHelp2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtVoiceSkip1_Sel==''){tf.System_Se_Config_BtVoiceSkip1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtVoiceSkip1_Click==''){tf.System_Se_Config_BtVoiceSkip1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtVoiceSkip2_Sel==''){tf.System_Se_Config_BtVoiceSkip2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtVoiceSkip2_Click==''){tf.System_Se_Config_BtVoiceSkip2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtSkipFunc1_Sel==''){tf.System_Se_Config_BtSkipFunc1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSkipFunc1_Click==''){tf.System_Se_Config_BtSkipFunc1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtSkipFunc2_Sel==''){tf.System_Se_Config_BtSkipFunc2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtSkipFunc2_Click==''){tf.System_Se_Config_BtSkipFunc2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtTextWait1_Sel==''){tf.System_Se_Config_BtTextWait1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtTextWait1_Click==''){tf.System_Se_Config_BtTextWait1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtTextWait2_Sel==''){tf.System_Se_Config_BtTextWait2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtTextWait2_Click==''){tf.System_Se_Config_BtTextWait2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtAllOnOff1_Sel==''){tf.System_Se_Config_BtAllOnOff1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtAllOnOff1_Click==''){tf.System_Se_Config_BtAllOnOff1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtAllOnOff2_Sel==''){tf.System_Se_Config_BtAllOnOff2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtAllOnOff2_Click==''){tf.System_Se_Config_BtAllOnOff2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk1_1_Sel==''){tf.System_Se_Config_BtDlgChk1_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk1_Click==''){tf.System_Se_Config_BtDlgChk1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk1_2_Sel==''){tf.System_Se_Config_BtDlgChk1_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk1_2_Click==''){tf.System_Se_Config_BtDlgChk1_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk2_1_Sel==''){tf.System_Se_Config_BtDlgChk2_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk2_1_Click==''){tf.System_Se_Config_BtDlgChk2_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk2_2_Sel==''){tf.System_Se_Config_BtDlgChk2_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk2_2_Click==''){tf.System_Se_Config_BtDlgChk2_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk3_1_Sel==''){tf.System_Se_Config_BtDlgChk3_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk3_1_Click==''){tf.System_Se_Config_BtDlgChk3_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk3_2_Sel==''){tf.System_Se_Config_BtDlgChk3_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk3_2_Click==''){tf.System_Se_Config_BtDlgChk3_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk4_1_Sel==''){tf.System_Se_Config_BtDlgChk4_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk4_1_Click==''){tf.System_Se_Config_BtDlgChk4_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk4_2_Sel==''){tf.System_Se_Config_BtDlgChk4_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk4_2_Click==''){tf.System_Se_Config_BtDlgChk4_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk5_1_Sel==''){tf.System_Se_Config_BtDlgChk5_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk5_1_Click==''){tf.System_Se_Config_BtDlgChk5_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk5_2_Sel==''){tf.System_Se_Config_BtDlgChk5_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk5_2_Click==''){tf.System_Se_Config_BtDlgChk5_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk6_1_Sel==''){tf.System_Se_Config_BtDlgChk6_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk6_1_Click==''){tf.System_Se_Config_BtDlgChk6_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk6_2_Sel==''){tf.System_Se_Config_BtDlgChk6_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk6_2_Click==''){tf.System_Se_Config_BtDlgChk6_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtDlgChk7_1_Sel==''){tf.System_Se_Config_BtDlgChk7_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk7_1_Click==''){tf.System_Se_Config_BtDlgChk7_1_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Config_BtDlgChk7_2_Sel==''){tf.System_Se_Config_BtDlgChk7_2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtDlgChk7_2_Click==''){tf.System_Se_Config_BtDlgChk7_2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey1_Sel==''){tf.System_Se_Config_BtShCutkey1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey1_Click==''){tf.System_Se_Config_BtShCutkey1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey2_Sel==''){tf.System_Se_Config_BtShCutkey2_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey2_Click==''){tf.System_Se_Config_BtShCutkey2_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey3_Sel==''){tf.System_Se_Config_BtShCutkey3_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey3_Click==''){tf.System_Se_Config_BtShCutkey3_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey4_Sel==''){tf.System_Se_Config_BtShCutkey4_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey4_Click==''){tf.System_Se_Config_BtShCutkey4_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey5_Sel==''){tf.System_Se_Config_BtShCutkey5_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey5_Click==''){tf.System_Se_Config_BtShCutkey5_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey6_1_Sel==''){tf.System_Se_Config_BtShCutkey6_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey6_1_Click==''){tf.System_Se_Config_BtShCutkey6_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey7_1_Sel==''){tf.System_Se_Config_BtShCutkey7_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey7_1_Click==''){tf.System_Se_Config_BtShCutkey7_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey8_1_Sel==''){tf.System_Se_Config_BtShCutkey8_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey8_1_Click==''){tf.System_Se_Config_BtShCutkey8_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey9_1_Sel==''){tf.System_Se_Config_BtShCutkey9_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey9_1_Click==''){tf.System_Se_Config_BtShCutkey9_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey10_1_Sel==''){tf.System_Se_Config_BtShCutkey10_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey10_1_Click==''){tf.System_Se_Config_BtShCutkey10_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey11_1_Sel==''){tf.System_Se_Config_BtShCutkey11_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey11_1_Click==''){tf.System_Se_Config_BtShCutkey11_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey12_1_Sel==''){tf.System_Se_Config_BtShCutkey12_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey12_1_Click==''){tf.System_Se_Config_BtShCutkey12_1_Click=tf.System_Se_AllSound_Click;}

if(tf.System_Se_Config_BtShCutkey13_1_Sel==''){tf.System_Se_Config_BtShCutkey13_1_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtShCutkey13_1_Click==''){tf.System_Se_Config_BtShCutkey13_1_Click=tf.System_Se_AllSound_Click;}


//-キャラクターフォントカラー系　初期では、１０キャラまで付与必要に応じて追加　ここは配列宣言となる
for(var loop=0;loop<sf.config_Character_FontcolorCount;loop++){
	if(tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
	if(tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[loop]==''){tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[loop]=tf.System_Se_AllSound_Click;}
}


//-バックログ画面
if(tf.System_Se_BackLog_BtClose_Sel==''){tf.System_Se_BackLog_BtClose_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtClose_Click==''){tf.System_Se_Config_BtClose_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_BackLog_BtPlayCv_Sel==''){tf.System_Se_BackLog_BtPlayCv_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Config_BtPlayCv_Click==''){tf.System_Se_Config_BtPlayCv_Click=tf.System_Se_AllSound_Click;}



//-セーブロード画面
if(tf.System_Se_Save_BtClose_Sel==''){tf.System_Se_Save_BtClose_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtClose_Click==''){tf.System_Se_Save_BtClose_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtPageTab_Sel==''){tf.System_Se_Save_BtPageTab_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtPageTab_Click==''){tf.System_Se_Save_BtPageTab_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtNextPage_Sel==''){tf.System_Se_Save_BtNextPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtNextPage_Click==''){tf.System_Se_Save_BtNextPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtBackPage_Sel==''){tf.System_Se_Save_BtBackPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtBackPage_Click==''){tf.System_Se_Save_BtBackPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtFirstPage_Sel==''){tf.System_Se_Save_BtFirstPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtFirstPage_Click==''){tf.System_Se_Save_BtFirstPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtEndPage_Sel==''){tf.System_Se_Save_BtEndPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtEndPage_Click==''){tf.System_Se_Save_BtEndPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtBackPage_Sel==''){tf.System_Se_Save_BtBackPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtBackPage_Click==''){tf.System_Se_Save_BtBackPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtSlot_Sel==''){tf.System_Se_Save_BtSlot_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtSlot_Click==''){tf.System_Se_Save_BtSlot_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_BtLoad_Sel==''){tf.System_Se_Save_BtLoad_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_BtLoad_Click==''){tf.System_Se_Save_BtLoad_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_Config_Sel==''){tf.System_Se_Save_Config_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_Config_Click==''){tf.System_Se_Save_Config_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_Title_Sel==''){tf.System_Se_Save_Title_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_Title_Click==''){tf.System_Se_Save_Title_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Save_Quit_Sel==''){tf.System_Se_Save_Quit_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Save_Quit_Click==''){tf.System_Se_Save_Quit_Click=tf.System_Se_AllSound_Click;}


if(tf.System_Se_Load_BtClose_Sel==''){tf.System_Se_Load_BtClose_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtClose_Click==''){tf.System_Se_Load_BtClose_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtPageTab_Sel==''){tf.System_Se_Load_BtPageTab_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtPageTab_Click==''){tf.System_Se_Load_BtPageTab_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtNextPage_Sel==''){tf.System_Se_Load_BtNextPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtNextPage_Click==''){tf.System_Se_Load_BtNextPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtBackPage_Sel==''){tf.System_Se_Load_BtBackPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtBackPage_Click==''){tf.System_Se_Load_BtBackPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtSlot_Sel==''){tf.System_Se_Load_BtSlot_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtSlot_Click==''){tf.System_Se_Load_BtSlot_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtFirstPage_Sel==''){tf.System_Se_Load_BtFirstPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtFirstPage_Click==''){tf.System_Se_Load_BtFirstPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtEndPage_Sel==''){tf.System_Se_Load_BtEndPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtEndPage_Click==''){tf.System_Se_Load_BtEndPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtBackPage_Sel==''){tf.System_Se_Load_BtBackPage_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtBackPage_Click==''){tf.System_Se_Load_BtBackPage_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtSlot_Sel==''){tf.System_Se_Load_BtSlot_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtSlot_Click==''){tf.System_Se_Load_BtSlot_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_BtSave_Sel==''){tf.System_Se_Load_BtSave_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_BtSave_Click==''){tf.System_Se_Load_BtSave_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_Config_Sel==''){tf.System_Se_Load_Config_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_Config_Click==''){tf.System_Se_Load_Config_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_Title_Sel==''){tf.System_Se_Load_Title_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_Title_Click==''){tf.System_Se_Load_Title_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Load_Quit_Sel==''){tf.System_Se_Load_Quit_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Load_Quit_Click==''){tf.System_Se_Load_Quit_Click=tf.System_Se_AllSound_Click;}

for(var loop=0;loop<sf.SaveMode_Count_MaxSavePage;loop++){
	if(tf.System_BtImg_PageTab_SelectSeImgFile[loop]==''){tf.System_BtImg_PageTab_SelectSeImgFile[loop]=tf.System_Se_AllSound_Sel;}
	if(tf.System_BtImg_PageTab_ClickSeImgFile[loop]==''){tf.System_BtImg_PageTab_ClickSeImgFile[loop]=tf.System_Se_AllSound_Sel;}
}

//-おまけ画面
if(tf.ExtraMode_File_CGModeSelSE_Name==''){tf.ExtraMode_File_CGModeSelSE_Name=tf.System_Se_AllSound_Click;}
if(tf.ExtraMode_File_SceneModeSelSE_Name==''){tf.ExtraMode_File_SceneModeSelSE_Name=tf.System_Se_AllSound_Click;}
if(tf.ExtraMode_File_MusicModeSelSE_Name==''){tf.ExtraMode_File_MusicModeSelSE_Name=tf.System_Se_AllSound_Click;}
if(tf.ExtraMode_File_ReturnSelSE_Name==''){tf.ExtraMode_File_ReturnSelSE_Name=tf.System_Se_AllSound_Click;}

if(tf.MusicMode_File_ReturnSelSe_Name==''){tf.MusicMode_File_ReturnSelSe_Name=tf.System_Se_AllSound_Click;}
if(tf.MusicMode_File_SlotSelectSe==''){tf.MusicMode_File_SlotSelectSe=tf.System_Se_AllSound_Click;}

if(tf.GalleryMode_File_ReturnSelSe_Name==''){tf.GalleryMode_File_ReturnSelSe_Name=tf.System_Se_AllSound_Click;}
if(tf.GalleryMode_File_BackPageSelSe_Name==''){tf.GalleryMode_File_BackPageSelSe_Name=tf.System_Se_AllSound_Click;}
if(tf.GalleryMode_File_NextPageSelSe_Name==''){tf.GalleryMode_File_NextPageSelSe_Name=tf.System_Se_AllSound_Click;}
if(tf.GalleryMode_File_ThumSelSe_Name==''){tf.GalleryMode_File_ThumSelSe_Name=tf.System_Se_AllSound_Click;}
if(tf.GalleryMode_File_PageBtSelSe_Name==''){tf.GalleryMode_File_PageBtSelSe_Name=tf.System_Se_AllSound_Click;}



[endscript]


;ゲーム起動時の処理を実行
[call storage=PeasAdvSystem_Runing.ks target="*start"]


[iscript]
kag.GameStart = 1;
[endscript]


[jump storage="title.ks"]