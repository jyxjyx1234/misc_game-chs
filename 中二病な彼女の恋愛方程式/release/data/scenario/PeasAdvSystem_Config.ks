;■コンフィグ画面スクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;-パラメーター
;sf.ConfigRunMode = 	0:タイトル画面からの実行 1:ゲーム中からの実行
;tf.ConfigTypeMode =	0:基本設定 1:キーコンフィグ 2:テキストカラー
;sf.ConfigState1 =		画面モード　0:ウインドウ 1:フルスクリーン
;sf.ConfigState2 =		ムービースキップ　0:再生 1:非再生
;sf.ConfigState3 =		エフェクトカット　0:カットしない 1:カットする

;sf.ConfigState8 =		システムメニュー　0:表示する 1:表示しない
;sf.ConfigState9 =		機能ヘルプ表示　0:表示する 1:表示しない
;sf.ConfigState10 =		ボイススキップ　0:スキップしない 1:スキップする
;sf.ConfigState11 =		スキップ機能　0:既読のみ 1:全て

;sf.ConfigState14 =		セーブ確認　0:行う 1:行わない
;sf.ConfigState15 =		ロード確認　0:行う 1:行わない
;sf.ConfigState16 =		クイックセーブ確認　0:行う 1:行わない
;sf.ConfigState17 =		クイックロード確認　0:行う 1:行わない
;sf.ConfigState18 =		シーンジャンプ確認　0:行う 1:行わない
;sf.ConfigState19 =		設定初期化確認　0:行う 1:行わない
;sf.ConfigState20 =		ゲーム終了確認　0:行う 1:行わない

;コンフィグ画面の実際の動作は、TJS処理によって行われているのでこのファイルでは処理されない

[return]
[s]

;■コンフィグ画面のデザインに関する定義を行う
;ゲーム動作に関する設定項目も含まれる
*Initialize

;ボリューム初期値
[eval exp="tf.Config_Volume1_Init=100"]
[eval exp="tf.Config_Volume2_Init=50"]
[eval exp="tf.Config_Volume3_Init=70"]
[eval exp="tf.Config_Volume4_Init=70"]

;キーボード操作コード
[eval exp="tf.EditKeyInputing=0"]

[eval exp="tf.Config_Key_GetCode='' if tf.Config_Key_GetCode === void"]
[eval exp="tf.Config_Key_GetParam='' if tf.Config_Key_GetParam === void"]

[eval exp="sf.Config_Key_MsgNext=sf.Config_Key_MsgNextInit=0x4D if sf.Config_Key_MsgNext === void"]
[eval exp="sf.Config_Key_MsgHide=sf.Config_Key_MsgHideInit=0x4B if sf.Config_Key_MsgHide === void"]
[eval exp="sf.Config_Key_SysCall=sf.Config_Key_SysCallInit=0x31 if sf.Config_Key_SysCall === void"]
[eval exp="sf.Config_Key_SelUP=sf.Config_Key_SelUPInit=0x4D if sf.Config_Key_SelUP === void"]
[eval exp="sf.Config_Key_SelDown=sf.Config_Key_SelDownInit=0x4E if sf.Config_Key_SelDown === void"]
[eval exp="sf.Config_Key_LogCall=sf.Config_Key_LogCallInit=0x4F if sf.Config_Key_LogCall === void"]
[eval exp="sf.Config_Key_MsgSkip=sf.Config_Key_MsgSkipInit=0x50 if sf.Config_Key_MsgSkip === void"]
[eval exp="sf.Config_Key_QuickSave=sf.Config_Key_QuickSaveInit=0x51 if sf.Config_Key_QuickSave === void"]
[eval exp="sf.Config_Key_QuickLoad=sf.Config_Key_QuickLoadInit=0x57 if sf.Config_Key_QuickLoad === void"]
[eval exp="sf.Config_Key_Save=sf.Config_Key_SaveInit=0x53 if sf.Config_Key_Save === void"]
[eval exp="sf.Config_Key_Load=sf.Config_Key_LoadInit=0x4C if sf.Config_Key_Load === void"]
[eval exp="sf.Config_Key_SkipMode=sf.Config_Key_SkipModeInit=0x55 if sf.Config_Key_SkipMode === void"]
[eval exp="sf.Config_Key_SceneJump=sf.Config_Key_SceneJumpInit=0x4A if sf.Config_Key_SceneJump === void"]

;コンフィグ画面デザイン情報
[eval exp="tf.Config_ModeA_BgImgFile='system_configbg.png'"]
[eval exp="tf.Config_ModeB_BgImgFile='system_configbg.png'"]
[eval exp="tf.Config_ModeC_BgImgFile='system_configbg.png'"]

;//-コンフィグ画面リソース設定
[iscript]
tf.System_BtImg_Close_BtFile='system_config_close.png';//コンフィグ画面　閉じるボタン
tf.System_BtImg_Close_BtName='system_config_close';//コンフィグ画面　閉じるボタン オブジェクト名
tf.System_BtImg_Close_Xpos=1159;//コンフィグ画面　閉じるボタン XPOS
tf.System_BtImg_Close_Ypos=664;//コンフィグ画面　閉じるボタン YPOS
tf.System_BtImg_Close_ExpFunc="SysBtn_CloseConfig()";//コンフィグ画面　閉じるボタン 実行処理

tf.System_BtImg_ReturnTitle_BtFile='system_config_titleback.png';//コンフィグ画面　タイトルへ戻るボタン
tf.System_BtImg_ReturnTitle_BtName='system_config_titleback';//コンフィグ画面　タイトルへ戻るボタン オブジェクト名
tf.System_BtImg_ReturnTitle_Xpos=1170;//コンフィグ画面　タイトルへ戻るボタン XPOS
tf.System_BtImg_ReturnTitle_Ypos=487;//コンフィグ画面　タイトルへ戻るボタン YPOS
tf.System_BtImg_ReturnTitle_ExpFunc="SysBtn_ReturnGameTitle()";//コンフィグ画面　タイトルへ戻るボタン 実行処理

tf.System_BtImg_ConfigQuit_BtFile='system_config_quit.png';//コンフィグ画面　終了ボタン
tf.System_BtImg_ConfigQuit_BtName='system_config_quit';//コンフィグ画面　終了ボタン オブジェクト名
tf.System_BtImg_ConfigQuit_Xpos=1170;//コンフィグ画面　終了ボタン XPOS
tf.System_BtImg_ConfigQuit_Ypos=575;//コンフィグ画面　終了ボタン YPOS
tf.System_BtImg_ConfigQuit_ExpFunc="kag.close()";//コンフィグ画面　終了ボタン 実行処理

tf.System_BtImg_ConfigReset_BtFile='system_config_setingreset.png';//コンフィグ画面　設定初期化ボタン
tf.System_BtImg_ConfigReset_BtName='system_config_setingreset';//コンフィグ画面　設定初期化ボタン オブジェクト名
tf.System_BtImg_ConfigReset_Xpos=1035;//コンフィグ画面　設定初期化ボタン XPOS
tf.System_BtImg_ConfigReset_Ypos=13;//コンフィグ画面　設定初期化ボタン YPOS
tf.System_BtImg_ConfigReset_ExpFunc="SysBtn_ConfigReset()";//コンフィグ画面　設定初期化ボタン 実行処理

//設定項目基本ベース～ここに各項目の下地を描画します
tf.System_BgImg_ConfigBase_ModeABgImgFile="system_config_modeA_Base.png";//コンフィグ画面　モードAコンテンツベース
tf.System_BgImg_ConfigBase_ModeBBgImgFile="system_config_modeB_Base.png";//コンフィグ画面　モードBコンテンツベース
tf.System_BgImg_ConfigBase_ModeCBgImgFile="system_config_modeC_Base.png";//コンフィグ画面　モードCコンテンツベース

tf.System_Se_Config_BtModeA_Sel='';//CONFIG画面　モードAタブ　に触れた時の効果音
tf.System_Se_Config_BtModeA_Sel_Click='';//CONFIG画面　モードAタブ　にクリックした時の効果音
tf.System_Se_Config_BtModeB_Sel='';//CONFIG画面　モードBタブ　に触れた時の効果音
tf.System_Se_Config_BtModeB_Sel_Click='';//CONFIG画面　モードBタブ　にクリックした時の効果音
tf.System_Se_Config_BtModeC_Sel='';//CONFIG画面　モードBタブ　に触れた時の効果音
tf.System_Se_Config_BtModeC_Sel_Click='';//CONFIG画面　モードBタブ　にクリックした時の効果音
tf.System_Se_Config_BtInitialize_Sel='';//CONFIG画面　設定初期化　に触れた時の効果音
tf.System_Se_Config_BtInitialize_Click='';//CONFIG画面　設定初期化　にクリックした時の効果音
tf.System_Se_Config_BtRetTitle_Sel='';//CONFIG画面　タイトルに戻る　に触れた時の効果音
tf.System_Se_Config_BtRetTitle_Click='';//CONFIG画面　タイトルに戻る　にクリックした時の効果音
tf.System_Se_Config_BtClose_Sel='';//CONFIG画面　閉じる　に触れた時の効果音
tf.System_Se_Config_BtClose_Click='';//CONFIG画面　閉じる　にクリックした時の効果音

//-コンフィグ設定モードタブ
tf.System_BtImg_ConfigModeATab_BtFile='system_config_modeA.png';//コンフィグ画面　モードAボタン
tf.System_BtImg_ConfigModeATab_BtFile2='system_config_modeA_IMG.png';//コンフィグ画面　モードAボタン・実行状態
tf.System_BtImg_ConfigModeATab_BtName='system_config_modeA';//コンフィグ画面　モードAボタン オブジェクト名
tf.System_BtImg_ConfigModeATab_LayImgFile='system_config_modeABg.png';//コンフィグ画面　モードAボタン 上に重ねる画像
tf.System_BtImg_ConfigModeATab_Xpos=669;//コンフィグ画面　モードAボタン XPOS
tf.System_BtImg_ConfigModeATab_Ypos=13;//コンフィグ画面　モードAボタン YPOS
tf.System_BtImg_ConfigModeATab_Xpos2=669;//コンフィグ画面　モードAボタン XPOS・実行状態
tf.System_BtImg_ConfigModeATab_Ypos2=13;//コンフィグ画面　モードAボタン YPOS・実行状態
tf.System_BtImg_ConfigModeATab_ExpFunc="SysBtn_CreateConfigItem(0)";//コンフィグ画面　モードAボタン 実行処理

tf.System_BtImg_ConfigModeBTab_BtFile='system_config_modeB.png';//コンフィグ画面　モードBボタン
tf.System_BtImg_ConfigModeBTab_BtFile2='system_config_modeB_IMG.png';//コンフィグ画面　モードBボタン・実行状態
tf.System_BtImg_ConfigModeBTab_BtName='system_config_modeB';//コンフィグ画面　モードBボタン オブジェクト名
tf.System_BtImg_ConfigModeBTab_LayImgFile='system_config_modeBBg.png';//コンフィグ画面　モードBボタン 上に重ねる画像
tf.System_BtImg_ConfigModeBTab_Xpos=774;//コンフィグ画面　モードBボタン XPOS
tf.System_BtImg_ConfigModeBTab_Ypos=13;//コンフィグ画面　モードBボタン YPOS
tf.System_BtImg_ConfigModeBTab_Xpos2=774;//コンフィグ画面　モードBボタン XPOS・実行状態
tf.System_BtImg_ConfigModeBTab_Ypos2=13;//コンフィグ画面　モードBボタン YPOS・実行状態
tf.System_BtImg_ConfigModeBTab_ExpFunc="SysBtn_CreateConfigItem(1)";//コンフィグ画面　モードBボタン 実行処理

tf.System_BtImg_ConfigModeCTab_BtFile='system_config_modeC.png';//コンフィグ画面　モードCボタン
tf.System_BtImg_ConfigModeCTab_BtFile2='system_config_modeC_IMG.png';//コンフィグ画面　モードCボタン・実行状態
tf.System_BtImg_ConfigModeCTab_BtName='system_config_modeC';//コンフィグ画面　モードCボタン オブジェクト名
tf.System_BtImg_ConfigModeCTab_LayImgFile='system_config_modeCBg.png';//コンフィグ画面　モードCボタン 上に重ねる画像
tf.System_BtImg_ConfigModeCTab_Xpos=897;//コンフィグ画面　モードCボタン XPOS
tf.System_BtImg_ConfigModeCTab_Ypos=13;//コンフィグ画面　モードCボタン YPOS
tf.System_BtImg_ConfigModeCTab_Xpos2=897;//コンフィグ画面　モードCボタン XPOS・実行状態
tf.System_BtImg_ConfigModeCTab_Ypos2=13;//コンフィグ画面　モードCボタン YPOS・実行状態
tf.System_BtImg_ConfigModeCTab_ExpFunc="SysBtn_CreateConfigItem(2)";//コンフィグ画面　モードCボタン 実行処理


//コンフィグモードA各種オブジェクト
tf.System_BtImg_ConfigScreen1A_BtFile='system_config_modeA_State1B2.png';//コンフィグ画面　画面モードAボタン ON
tf.System_BtImg_ConfigScreen1B_BtFile='system_config_modeA_State1B1.png';//コンフィグ画面　画面モードAボタン OFF
tf.System_BtImg_ConfigScreen1_BtName='system_config_modeA_State1A';//コンフィグ画面　画面モードAボタン オブジェクト名
tf.System_BtImg_ConfigScreen1_Xpos=264;//コンフィグ画面　画面モードAボタン XPOS
tf.System_BtImg_ConfigScreen1_Ypos=116;//コンフィグ画面　画面モードAボタン YPOS
tf.System_BtImg_ConfigScreen1_HelpImgFile='system_config_ModeA_ScreenModeA.png';//コンフィグ画面　画面モードAボタン ヘルプ画像
tf.System_BtImg_ConfigScreen1_HelpXpos=256;//コンフィグ画面　画面モードAボタン XPOS
tf.System_BtImg_ConfigScreen1_HelpYpos=143;//コンフィグ画面　画面モードAボタン YPOS
tf.System_BtImg_ConfigScreen1_ExpFunc="modeA_ScreenMode(1)";//コンフィグ画面　画面モードAボタン 実行処理
tf.System_BtImg_ConfigScreen1_InFunc="ViewHelp(0)";//コンフィグ画面　画面モードAボタン インボタン実行処理
tf.System_BtImg_ConfigScreen1_OutFunc="HideHelp()";//コンフィグ画面　画面モードAボタン アウトボタン実行処理
tf.System_Se_Config_BtScreenMode1_Sel='';//CONFIG画面　全画面表示　に触れた時の効果音
tf.System_Se_Config_BtScreenMode1_Click='';//CONFIG画面　全画面表示　にクリックした時の効果音

tf.System_BtImg_ConfigScreen2A_BtFile='system_config_modeA_State1A1.png';//コンフィグ画面　画面モードBボタン ON
tf.System_BtImg_ConfigScreen2B_BtFile='system_config_modeA_State1A2.png';//コンフィグ画面　画面モードBボタン OFF
tf.System_BtImg_ConfigScreen2_BtName='system_config_modeA_State1B';//コンフィグ画面　画面モードBボタン オブジェクト名
tf.System_BtImg_ConfigScreen2_Xpos=433;//コンフィグ画面　画面モードBボタン XPOS
tf.System_BtImg_ConfigScreen2_Ypos=116;//コンフィグ画面　画面モードBボタン YPOS
tf.System_BtImg_ConfigScreen2_HelpImgFile='system_config_ModeA_ScreenModeB.png';//コンフィグ画面　画面モードAボタン ヘルプ画像
tf.System_BtImg_ConfigScreen2_HelpXpos=420;//コンフィグ画面　画面モードAボタン XPOS
tf.System_BtImg_ConfigScreen2_HelpYpos=143;//コンフィグ画面　画面モードAボタン YPOS
tf.System_BtImg_ConfigScreen2_ExpFunc="modeA_ScreenMode(1)";//コンフィグ画面　画面モードBボタン 実行処理
tf.System_BtImg_ConfigScreen2_InFunc="ViewHelp(1)";//コンフィグ画面　画面モードBボタン インボタン実行処理
tf.System_BtImg_ConfigScreen2_OutFunc="HideHelp()";//コンフィグ画面　画面モードBボタン アウトボタン実行処理
tf.System_Se_Config_BtScreenMode2_Sel='';//CONFIG画面　ウインドウ表示　に触れた時の効果音
tf.System_Se_Config_BtScreenMode2_Click='';//CONFIG画面　ウインドウ表示　にクリックした時の効果音

tf.System_BtImg_ConfigMovieSkip1A_BtFile='system_config_modeA_State2A2.png';//コンフィグ画面　ムービースキップAボタン ON
tf.System_BtImg_ConfigMovieSkip1B_BtFile='system_config_modeA_State2A1.png';//コンフィグ画面　ムービースキップAボタン OFF
tf.System_BtImg_ConfigMovieSkip1_BtName='system_config_modeA_State2A';//コンフィグ画面　ムービースキップAボタン オブジェクト名
tf.System_BtImg_ConfigMovieSkip1_Xpos=264;//コンフィグ画面　ムービースキップAボタン XPOS
tf.System_BtImg_ConfigMovieSkip1_Ypos=161;//コンフィグ画面　ムービースキップAボタン YPOS
tf.System_BtImg_ConfigMovieSkip1_HelpImgFile='system_config_ModeA_MovieSkipA.png';//コンフィグ画面　画面モードAボタン ヘルプ画像
tf.System_BtImg_ConfigMovieSkip1_HelpXpos=256;//コンフィグ画面　画面モードAボタン XPOS
tf.System_BtImg_ConfigMovieSkip1_HelpYpos=189;//コンフィグ画面　画面モードAボタン YPOS
tf.System_BtImg_ConfigMovieSkip1_ExpFunc="modeA_MovieSkip(1)";//コンフィグ画面　ムービースキップAボタン 実行処理
tf.System_BtImg_ConfigMovieSkip1_InFunc="ViewHelp(2)";//コンフィグ画面　ムービースキップAボタン インボタン実行処理
tf.System_BtImg_ConfigMovieSkip1_OutFunc="HideHelp()";//コンフィグ画面　ムービースキップAボタン アウトボタン実行処理
tf.System_Se_Config_BtMovieSkip1_Sel='';//CONFIG画面　再生　に触れた時の効果音
tf.System_Se_Config_BtMovieSkip1_Click='';//CONFIG画面　再生　にクリックした時の効果音

tf.System_BtImg_ConfigMovieSkip2A_BtFile='system_config_modeA_State2B1.png';//コンフィグ画面　ムービースキップBボタン ON
tf.System_BtImg_ConfigMovieSkip2B_BtFile='system_config_modeA_State2B2.png';//コンフィグ画面　ムービースキップBボタン OFF
tf.System_BtImg_ConfigMovieSkip2_BtName='system_config_modeA_State2B';//コンフィグ画面　ムービースキップBボタン オブジェクト名
tf.System_BtImg_ConfigMovieSkip2_Xpos=433;//コンフィグ画面　ムービースキップBボタン XPOS
tf.System_BtImg_ConfigMovieSkip2_Ypos=161;//コンフィグ画面　ムービースキップBボタン YPOS
tf.System_BtImg_ConfigMovieSkip2_HelpImgFile='system_config_ModeA_MovieSkipB.png';//コンフィグ画面　ムービースキップBボタン ヘルプ画像
tf.System_BtImg_ConfigMovieSkip2_HelpXpos=420;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMovieSkip2_HelpYpos=189;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMovieSkip2_ExpFunc="modeA_MovieSkip(1)";//コンフィグ画面　ムービースキップBボタン 実行処理
tf.System_BtImg_ConfigMovieSkip2_InFunc="ViewHelp(3)";//コンフィグ画面　ムービースキップBボタン インボタン実行処理
tf.System_BtImg_ConfigMovieSkip2_OutFunc="HideHelp()";//コンフィグ画面　ムービースキップBボタン アウトボタン実行処理
tf.System_Se_Config_BtMovieSkip2_Sel='';//CONFIG画面　非再生　に触れた時の効果音
tf.System_Se_Config_BtMovieSkip2_Click='';//CONFIG画面　非再生　にクリックした時の効果音

tf.System_BtImg_ConfigEffectCut1A_BtFile='system_config_modeA_State3B2.png';//コンフィグ画面　エフェクトカットAボタン ON
tf.System_BtImg_ConfigEffectCut1B_BtFile='system_config_modeA_State3B1.png';//コンフィグ画面　エフェクトカットAボタン OFF
tf.System_BtImg_ConfigEffectCut1_BtName='system_config_modeA_State3A';//コンフィグ画面　エフェクトカットAボタン オブジェクト名
tf.System_BtImg_ConfigEffectCut1_Xpos=264;//コンフィグ画面　エフェクトカットAボタン XPOS
tf.System_BtImg_ConfigEffectCut1_Ypos=207;//コンフィグ画面　エフェクトカットAボタン YPOS
tf.System_BtImg_ConfigEffectCut1_HelpImgFile='system_config_ModeA_EffectCutB.png';//コンフィグ画面　ムービースキップBボタン ヘルプ画像
tf.System_BtImg_ConfigEffectCut1_HelpXpos=256;//コンフィグ画面　エフェクトカットAボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigEffectCut1_HelpYpos=234;//コンフィグ画面　エフェクトカットAボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigEffectCut1_ExpFunc="modeA_EffectCut(1)";//コンフィグ画面　エフェクトカットAボタン 実行処理
tf.System_BtImg_ConfigEffectCut1_InFunc="ViewHelp(4)";//コンフィグ画面　エフェクトカットAボタン インボタン実行処理
tf.System_BtImg_ConfigEffectCut1_OutFunc="HideHelp()";//コンフィグ画面　エフェクトカットAボタン アウトボタン実行処理
tf.System_Se_Config_BtEffectCut1_Sel='';//CONFIG画面　カット　に触れた時の効果音
tf.System_Se_Config_BtEffectCut1_Click='';//CONFIG画面　カット　にクリックした時の効果音

tf.System_BtImg_ConfigEffectCut2A_BtFile='system_config_modeA_State3A2.png';//コンフィグ画面　エフェクトカットBボタン ON
tf.System_BtImg_ConfigEffectCut2B_BtFile='system_config_modeA_State3A1.png';//コンフィグ画面　エフェクトカットBボタン OFF
tf.System_BtImg_ConfigEffectCut2_BtName='system_config_modeA_State3B';//コンフィグ画面　エフェクトカットBボタン オブジェクト名
tf.System_BtImg_ConfigEffectCut2_Xpos=433;//コンフィグ画面　エフェクトカットBボタン XPOS
tf.System_BtImg_ConfigEffectCut2_Ypos=207;//コンフィグ画面　エフェクトカットBボタン YPOS
tf.System_BtImg_ConfigEffectCut2_HelpImgFile='system_config_ModeA_EffectCutA.png';//コンフィグ画面　ムービースキップBボタン ヘルプ画像
tf.System_BtImg_ConfigEffectCut2_HelpXpos=420;//コンフィグ画面　エフェクトカットBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigEffectCut2_HelpYpos=234;//コンフィグ画面　エフェクトカットBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigEffectCut2_ExpFunc="modeA_EffectCut(1)";//コンフィグ画面　エフェクトカットBボタン 実行処理
tf.System_BtImg_ConfigEffectCut2_InFunc="ViewHelp(5)";//コンフィグ画面　エフェクトカットBボタン インボタン実行処理
tf.System_BtImg_ConfigEffectCut2_OutFunc="HideHelp()";//コンフィグ画面　エフェクトカットBボタン アウトボタン実行処理
tf.System_Se_Config_BtEffectCut2_Sel='';//CONFIG画面　通常表現　に触れた時の効果音
tf.System_Se_Config_BtEffectCut2_Click='';//CONFIG画面　通常表現　にクリックした時の効果音

tf.System_BtImg_ConfigRightMenu1A_BtFile='system_config_modeA_State8A2.png';//コンフィグ画面　右メニューONOFFボタン ON
tf.System_BtImg_ConfigRightMenu1B_BtFile='system_config_modeA_State8A1.png';//コンフィグ画面　右メニューONOFFボタン OFF
tf.System_BtImg_ConfigRightMenu1_BtName='system_config_modeA_State8A';//コンフィグ画面　右メニューONOFFボタン オブジェクト名
tf.System_BtImg_ConfigRightMenu1_Xpos=264;//コンフィグ画面　右メニューONOFFボタン XPOS
tf.System_BtImg_ConfigRightMenu1_Ypos=253;//コンフィグ画面　右メニューONOFFボタン YPOS
tf.System_BtImg_ConfigRightMenu1_HelpImgFile='system_config_ModeA_QsaveloadslotA.png';//コンフィグ画面　右メニューONOFFボタン ヘルプ画像
tf.System_BtImg_ConfigRightMenu1_HelpXpos=256;//コンフィグ画面　右メニューONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigRightMenu1_HelpYpos=279;//コンフィグ画面　右メニューONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigRightMenu1_ExpFunc="modeA_SystemMenu(1)";//コンフィグ画面　右メニューONOFFボタン 実行処理
tf.System_BtImg_ConfigRightMenu1_InFunc="ViewHelp(20)";//コンフィグ画面　右メニューONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigRightMenu1_OutFunc="HideHelp()";//コンフィグ画面　右メニューONOFFボタン アウトボタン実行処理
tf.System_Se_Config_BtSystemMenu1_Sel='';//CONFIG画面　システムメニュー表示　に触れた時の効果音
tf.System_Se_Config_BtSystemMenu1_Click='';//CONFIG画面　システムメニュー表示　にクリックした時の効果音

tf.System_BtImg_ConfigRightMenu2A_BtFile='system_config_modeA_State8B1.png';//コンフィグ画面　右メニューONOFFボタン ON
tf.System_BtImg_ConfigRightMenu2B_BtFile='system_config_modeA_State8B2.png';//コンフィグ画面　右メニューONOFFボタン OFF
tf.System_BtImg_ConfigRightMenu2_BtName='system_config_modeA_State8B';//コンフィグ画面　メッセージウインドウ透過率Aボタン オブジェクト名
tf.System_BtImg_ConfigRightMenu2_Xpos=433;//コンフィグ画面　右メニューONOFFボタン XPOS
tf.System_BtImg_ConfigRightMenu2_Ypos=253;//コンフィグ画面　右メニューONOFFボタン YPOS
tf.System_BtImg_ConfigRightMenu2_HelpImgFile='system_config_ModeA_QsaveloadslotB.png';//コンフィグ画面　右メニューONOFFボタン ヘルプ画像
tf.System_BtImg_ConfigRightMenu2_HelpXpos=420;//コンフィグ画面　右メニューONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigRightMenu2_HelpYpos=279;//コンフィグ画面　右メニューONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigRightMenu2_ExpFunc="modeA_SystemMenu(1)";//コンフィグ画面　右メニューONOFFボタン 実行処理
tf.System_BtImg_ConfigRightMenu2_InFunc="ViewHelp(21)";//コンフィグ画面　右メニューONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigRightMenu2_OutFunc="HideHelp()";//コンフィグ画面　右メニューONOFFボタン アウトボタン実行処理
tf.System_Se_Config_BtSystemMenu2_Sel='';//CONFIG画面　システムメニュー非表示　に触れた時の効果音
tf.System_Se_Config_BtSystemMenu2_Click='';//CONFIG画面　システムメニュー非表示　にクリックした時の効果音

tf.System_BtImg_ConfigHelp1A_BtFile='system_config_modeA_State9A2.png';//コンフィグ画面　ヘルプ表示ONOFFボタン ON
tf.System_BtImg_ConfigHelp1B_BtFile='system_config_modeA_State9A1.png';//コンフィグ画面　ヘルプ表示ONOFFボタン OFF
tf.System_BtImg_ConfigHelp1_BtName='system_config_modeA_State9A';//コンフィグ画面　ヘルプ表示ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigHelp1_Xpos=264;//コンフィグ画面　ヘルプ表示ONOFFボタン XPOS
tf.System_BtImg_ConfigHelp1_Ypos=301;//コンフィグ画面　ヘルプ表示ONOFFボタン YPOS
tf.System_BtImg_ConfigHelp1_HelpImgFile='system_config_ModeA_SystemMenuA.png';//コンフィグ画面　ヘルプ表示ONOFFボタンヘルプ画像
tf.System_BtImg_ConfigHelp1_HelpXpos=256;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigHelp1_HelpYpos=327;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigHelp1_ExpFunc="modeA_SystemHelp(1)";//コンフィグ画面　ヘルプ表示ONOFFボタン 実行処理
tf.System_BtImg_ConfigHelp1_InFunc="ViewHelp(16)";//コンフィグ画面　ヘルプ表示ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigHelp1_OutFunc="HideHelp()";//コンフィグ画面　ヘルプ表示ONOFFボタン アウトボタン実行処理
tf.System_Se_Config_BtHelp1_Sel='';//CONFIG画面　ヘルプ表示　に触れた時の効果音
tf.System_Se_Config_BtHelp1_Click='';//CONFIG画面　ヘルプ表示　にクリックした時の効果音

tf.System_BtImg_ConfigHelp2A_BtFile='system_config_modeA_State9B1.png';//コンフィグ画面　ヘルプ表示ONOFFボタン ON
tf.System_BtImg_ConfigHelp2B_BtFile='system_config_modeA_State9B2.png';//コンフィグ画面　ヘルプ表示ONOFFボタン OFF
tf.System_BtImg_ConfigHelp2_BtName='system_config_modeA_State9B';//コンフィグ画面　ヘルプ表示 オブジェクト名
tf.System_BtImg_ConfigHelp2_Xpos=433;//コンフィグ画面　ヘルプ表示ONOFFボタン XPOS
tf.System_BtImg_ConfigHelp2_Ypos=301;//コンフィグ画面　ヘルプ表示ONOFFボタン YPOS
tf.System_BtImg_ConfigHelp2_HelpImgFile='system_config_ModeA_SystemMenuB.png';//コンフィグ画面　ヘルプ表示ONOFFボタンヘルプ画像
tf.System_BtImg_ConfigHelp2_HelpXpos=420;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigHelp2_HelpYpos=327;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigHelp2_ExpFunc="modeA_SystemHelp(1)";//コンフィグ画面　ヘルプ表示ONOFFボタン 実行処理
tf.System_BtImg_ConfigHelp2_InFunc="ViewHelp(17)";//コンフィグ画面　ヘルプ表示ボタン インボタン実行処理
tf.System_BtImg_ConfigHelp2_OutFunc="HideHelp()";//コンフィグ画面　ヘルプ表示ボタン アウトボタン実行処理
tf.System_Se_Config_BtHelp2_Sel='';//CONFIG画面　ヘルプ非表示　に触れた時の効果音
tf.System_Se_Config_BtHelp2_Click='';//CONFIG画面　ヘルプ非表示　にクリックした時の効果音

tf.System_BtImg_ConfigCvSkip1A_BtFile='system_config_modeA_State10A2.png';//コンフィグ画面　音声スキップ設定ボタン ON
tf.System_BtImg_ConfigCvSkip1B_BtFile='system_config_modeA_State10A1.png';//コンフィグ画面　音声スキップ設定ボタン OFF
tf.System_BtImg_ConfigCvSkip1_BtName='system_config_modeA_State10A';//コンフィグ画面　音声スキップ設定ボタン オブジェクト名
tf.System_BtImg_ConfigCvSkip1_Xpos=264;//コンフィグ画面　音声スキップ設定ボタン XPOS
tf.System_BtImg_ConfigCvSkip1_Ypos=393;//コンフィグ画面　音声スキップ設定ボタン YPOS
tf.System_BtImg_ConfigCvSkip1_HelpImgFile='system_config_ModeA_VoiceSkipA.png';//コンフィグ画面　ヘルプ表示ONOFFボタンヘルプ画像
tf.System_BtImg_ConfigCvSkip1_HelpXpos=256;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigCvSkip1_HelpYpos=420;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigCvSkip1_ExpFunc="modeA_SystemVoiceSkip(1)";//コンフィグ画面　音声スキップ設定ボタン 実行処理
tf.System_BtImg_ConfigCvSkip1_InFunc="ViewHelp(18)";//コンフィグ画面　音声スキップ設定ボタン インボタン実行処理
tf.System_BtImg_ConfigCvSkip1_OutFunc="HideHelp()";//コンフィグ画面　音声スキップ設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtVoiceSkip1_Sel='';//CONFIG画面　停止する　に触れた時の効果音
tf.System_Se_Config_BtVoiceSkip1_Click='';//CONFIG画面　停止する　にクリックした時の効果音

tf.System_BtImg_ConfigCvSkip2A_BtFile='system_config_modeA_State10B1.png';//コンフィグ画面　音声スキップ設定ボタン ON
tf.System_BtImg_ConfigCvSkip2B_BtFile='system_config_modeA_State10B2.png';//コンフィグ画面　音声スキップ設定ボタン OFF
tf.System_BtImg_ConfigCvSkip2_BtName='system_config_modeA_State10B';//コンフィグ画面　音声スキップ設定 オブジェクト名
tf.System_BtImg_ConfigCvSkip2_Xpos=433;//コンフィグ画面　音声スキップ設定ボタン XPOS
tf.System_BtImg_ConfigCvSkip2_Ypos=393;//コンフィグ画面　音声スキップ設定ボタン YPOS
tf.System_BtImg_ConfigCvSkip2_HelpImgFile='system_config_ModeA_VoiceSkipB.png';//コンフィグ画面　ヘルプ表示ONOFFボタンヘルプ画像
tf.System_BtImg_ConfigCvSkip2_HelpXpos=420;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigCvSkip2_HelpYpos=420;//コンフィグ画面　ヘルプ表示ONOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigCvSkip2_ExpFunc="modeA_SystemVoiceSkip(1)";//コンフィグ画面　音声スキップ設定ボタン 実行処理
tf.System_BtImg_ConfigCvSkip2_InFunc="ViewHelp(19)";//コンフィグ画面　音声スキップ設定ボタン インボタン実行処理
tf.System_BtImg_ConfigCvSkip2_OutFunc="HideHelp()";//コンフィグ画面　音声スキップ設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtVoiceSkip2_Sel='';//CONFIG画面　停止しない　に触れた時の効果音
tf.System_Se_Config_BtVoiceSkip2_Click='';//CONFIG画面　停止しない　にクリックした時の効果音

tf.System_BtImg_ConfigMsgSkip1A_BtFile='system_config_modeA_State11A2.png';//コンフィグ画面　メッセージスキップ設定ボタン ON
tf.System_BtImg_ConfigMsgSkip1B_BtFile='system_config_modeA_State11A1.png';//コンフィグ画面　メッセージスキップ設定ボタン OFF
tf.System_BtImg_ConfigMsgSkip1_BtName='system_config_modeA_State11A';//コンフィグ画面　メッセージスキップ設定ボタン オブジェクト名
tf.System_BtImg_ConfigMsgSkip1_Xpos=264;//コンフィグ画面　メッセージスキップ設定ボタン XPOS
tf.System_BtImg_ConfigMsgSkip1_Ypos=347;//コンフィグ画面　メッセージスキップ設定ボタン YPOS
tf.System_BtImg_ConfigMsgSkip1_HelpImgFile='system_config_ModeA_TextSkipA.png';//コンフィグ画面　 メッセージスキップ設定ボタン ヘルプ画像
tf.System_BtImg_ConfigMsgSkip1_HelpXpos=256;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgSkip1_HelpYpos=372;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgSkip1_ExpFunc="modeA_SystemSkipMode(1)";//コンフィグ画面　メッセージスキップ設定ボタン 実行処理
tf.System_BtImg_ConfigMsgSkip1_InFunc="ViewHelp(22)";//コンフィグ画面　メッセージスキップ設定ボタン インボタン実行処理
tf.System_BtImg_ConfigMsgSkip1_OutFunc="HideHelp()";//コンフィグ画面　メッセージスキップ設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtSkipFunc1_Sel='';//CONFIG画面　既読のみ　に触れた時の効果音
tf.System_Se_Config_BtSkipFunc1_Click='';//CONFIG画面　既読のみ　にクリックした時の効果音

tf.System_BtImg_ConfigMsgSkip2A_BtFile='system_config_modeA_State11B1.png';//コンフィグ画面　メッセージスキップ設定ボタン ON
tf.System_BtImg_ConfigMsgSkip2B_BtFile='system_config_modeA_State11B2.png';//コンフィグ画面　メッセージスキップ設定ボタン OFF
tf.System_BtImg_ConfigMsgSkip2_BtName='system_config_modeA_State11B';//コンフィグ画面　メッセージスキップ設定 オブジェクト名
tf.System_BtImg_ConfigMsgSkip2_Xpos=433;//コンフィグ画面　メッセージスキップ設定ボタン XPOS
tf.System_BtImg_ConfigMsgSkip2_Ypos=347;//コンフィグ画面　メッセージスキップ設定ボタン YPOS
tf.System_BtImg_ConfigMsgSkip2_HelpImgFile='system_config_ModeA_TextSkipB.png';//コンフィグ画面　 メッセージスキップ設定ボタン ヘルプ画像
tf.System_BtImg_ConfigMsgSkip2_HelpXpos=420;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgSkip2_HelpYpos=372;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgSkip2_ExpFunc="modeA_SystemSkipMode(1)";//コンフィグ画面　メッセージスキップ設定ボタン 実行処理
tf.System_BtImg_ConfigMsgSkip2_InFunc="ViewHelp(23)";//コンフィグ画面　メッセージスキップ設定ボタン インボタン実行処理
tf.System_BtImg_ConfigMsgSkip2_OutFunc="HideHelp()";//コンフィグ画面　メッセージスキップ設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtSkipFunc2_Sel='';//CONFIG画面　すべて　に触れた時の効果音
tf.System_Se_Config_BtSkipFunc2_Click='';//CONFIG画面　すべて　にクリックした時の効果音




tf.System_BtImg_ConfigMasterVol1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　マスターボリュームAボタン ON
tf.System_BtImg_ConfigMasterVol1_BtName='system_config_modeA_State4A';//コンフィグ画面　マスターボリュームAボタン オブジェクト名
tf.System_BtImg_ConfigMasterVol1_Xpos=305;//コンフィグ画面　マスターボリュームAボタン XPOS
tf.System_BtImg_ConfigMasterVol1_Ypos=121;//コンフィグ画面　マスターボリュームAボタン YPOS
tf.System_BtImg_ConfigMasterVol1_HelpImgFile='system_config_ModeA_VolumeA.png';//コンフィグ画面　ムービースキップBボタン ヘルプ画像
tf.System_BtImg_ConfigMasterVol1_HelpXpos=245;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMasterVol1_HelpYpos=143;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMasterVol1_ExpFunc="State4A_MIN(0)";//コンフィグ画面　マスターボリュームAボタン 実行処理
tf.System_BtImg_ConfigMasterVol1_InFunc="ViewHelp(6)";//コンフィグ画面　マスターボリュームAボタン インボタン実行処理
tf.System_BtImg_ConfigMasterVol1_OutFunc="HideHelp()";//コンフィグ画面　マスターボリュームAボタン アウトボタン実行処理
tf.System_Se_Config_BtMasterVolume1_Sel='';//CONFIG画面　マスターボリューム最小　に触れた時の効果音
tf.System_Se_Config_BtMasterVolume1_Click='';//CONFIG画面　マスターボリューム最小　にクリックした時の効果音

tf.System_BtImg_ConfigMasterVol2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　マスターボリュームBボタン ON
tf.System_BtImg_ConfigMasterVol2_BtName='system_config_modeA_State4B';//コンフィグ画面　マスターボリュームBボタン オブジェクト名
tf.System_BtImg_ConfigMasterVol2_Xpos=525;//コンフィグ画面　マスターボリュームBボタン XPOS
tf.System_BtImg_ConfigMasterVol2_Ypos=121;//コンフィグ画面　マスターボリュームBボタン YPOS
tf.System_BtImg_ConfigMasterVol2_HelpImgFile='system_config_ModeA_VolumeB.png';//コンフィグ画面　ムービースキップBボタン ヘルプ画像
tf.System_BtImg_ConfigMasterVol2_HelpXpos=470;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMasterVol2_HelpYpos=143;//コンフィグ画面　ムービースキップBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMasterVol2_ExpFunc="State4A_MAX(0)";//コンフィグ画面　マスターボリュームBボタン 実行処理
tf.System_BtImg_ConfigMasterVol2_InFunc="ViewHelp(7)";//コンフィグ画面　マスターボリュームBボタン インボタン実行処理
tf.System_BtImg_ConfigMasterVol2_OutFunc="HideHelp()";//コンフィグ画面　マスターボリュームBボタン アウトボタン実行処理
tf.System_Se_Config_BtMasterVolume2_Sel='';//CONFIG画面　マスターボリューム最大　に触れた時の効果音
tf.System_Se_Config_BtMasterVolume2_Click='';//CONFIG画面　マスターボリューム最大　にクリックした時の効果音

tf.System_BtImg_ConfigBgmVol1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　BGMボリュームAボタン ON
tf.System_BtImg_ConfigBgmVol1_BtName='system_config_modeA_State5A';//コンフィグ画面　BGMボリュームAボタン オブジェクト名
tf.System_BtImg_ConfigBgmVol1_Xpos=305;//コンフィグ画面　BGMボリュームAボタン XPOS
tf.System_BtImg_ConfigBgmVol1_Ypos=167;//コンフィグ画面　BGMボリュームAボタン YPOS
tf.System_BtImg_ConfigBgmVol1_HelpImgFile='system_config_ModeA_SeA.png';//コンフィグ画面　BGMボリュームAボタン ヘルプ画像
tf.System_BtImg_ConfigBgmVol1_HelpXpos=245;//コンフィグ画面　BGMボリュームAボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigBgmVol1_HelpYpos=189;//コンフィグ画面　BGMボリュームAボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigBgmVol1_ExpFunc="State4A_MIN(1)";//コンフィグ画面　BGMボリュームAボタン 実行処理
tf.System_BtImg_ConfigBgmVol1_InFunc="ViewHelp(8)";//コンフィグ画面　BGMボリュームAボタン インボタン実行処理
tf.System_BtImg_ConfigBgmVol1_OutFunc="HideHelp()";//コンフィグ画面　BGMボリュームAボタン アウトボタン実行処理
tf.System_Se_Config_BtBgmVolume1_Sel='';//CONFIG画面　BGMボリューム最小　に触れた時の効果音
tf.System_Se_Config_BtBgmVolume1_Click='';//CONFIG画面　BGMボリューム最小　にクリックした時の効果音

tf.System_BtImg_ConfigBgmVol2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　BGMボリュームBボタン ON
tf.System_BtImg_ConfigBgmVol2_BtName='system_config_modeA_State5B';//コンフィグ画面　BGMボリュームBボタン オブジェクト名
tf.System_BtImg_ConfigBgmVol2_Xpos=525;//コンフィグ画面　BGMボリュームBボタン XPOS
tf.System_BtImg_ConfigBgmVol2_Ypos=167;//コンフィグ画面　BGMボリュームBボタン YPOS
tf.System_BtImg_ConfigBgmVol2_HelpImgFile='system_config_ModeA_SeB.png';//コンフィグ画面　BGMボリュームAボタン ヘルプ画像
tf.System_BtImg_ConfigBgmVol2_HelpXpos=470;//コンフィグ画面　BGMボリュームAボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigBgmVol2_HelpYpos=189;//コンフィグ画面　BGMボリュームAボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigBgmVol2_ExpFunc="State4A_MAX(1)";//コンフィグ画面　BGMボリュームBボタン 実行処理
tf.System_BtImg_ConfigBgmVol2_InFunc="ViewHelp(9)";//コンフィグ画面　BGMボリュームBボタン インボタン実行処理
tf.System_BtImg_ConfigBgmVol2_OutFunc="HideHelp()";//コンフィグ画面　BGMボリュームBボタン アウトボタン実行処理
tf.System_Se_Config_BtBgmVolume2_Sel='';//CONFIG画面　BGMボリューム最大　に触れた時の効果音
tf.System_Se_Config_BtBgmVolume2_Click='';//CONFIG画面　BGMボリューム最大　にクリックした時の効果音

tf.System_BtImg_ConfigSeVol1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　SEボリュームAボタン ON
tf.System_BtImg_ConfigSeVol1_BtName='system_config_modeA_State6A';//コンフィグ画面　SEボリュームAボタン オブジェクト名
tf.System_BtImg_ConfigSeVol1_Xpos=305;//コンフィグ画面　SEボリュームAボタン XPOS
tf.System_BtImg_ConfigSeVol1_Ypos=213;//コンフィグ画面　SEボリュームAボタン YPOS
tf.System_BtImg_ConfigSeVol1_HelpImgFile='system_config_ModeA_BgmA.png';//コンフィグ画面　SEボリュームAボタン ヘルプ画像
tf.System_BtImg_ConfigSeVol1_HelpXpos=245;//コンフィグ画面　SEボリュームAボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigSeVol1_HelpYpos=234;//コンフィグ画面　SEボリュームAボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigSeVol1_ExpFunc="State4A_MIN(2)";//コンフィグ画面　SEボリュームAボタン 実行処理
tf.System_BtImg_ConfigSeVol1_InFunc="ViewHelp(10)";//コンフィグ画面　SEボリュームAボタン インボタン実行処理
tf.System_BtImg_ConfigSeVol1_OutFunc="HideHelp()";//コンフィグ画面　SEボリュームAボタン アウトボタン実行処理
tf.System_Se_Config_BtSeVolume1_Sel='';//CONFIG画面　Seボリューム最小　に触れた時の効果音
tf.System_Se_Config_BtSeVolume1_Click='';//CONFIG画面　Seボリューム最小　にクリックした時の効果音

tf.System_BtImg_ConfigSeVol2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　SEボリュームBボタン ON
tf.System_BtImg_ConfigSeVol2_BtName='system_config_modeA_State6B';//コンフィグ画面　SEボリュームBボタン オブジェクト名
tf.System_BtImg_ConfigSeVol2_Xpos=525;//コンフィグ画面　SEボリュームBボタン XPOS
tf.System_BtImg_ConfigSeVol2_Ypos=213;//コンフィグ画面　SEボリュームBボタン YPOS
tf.System_BtImg_ConfigSeVol2_HelpImgFile='system_config_ModeA_BgmB.png';//コンフィグ画面　SEボリュームBボタン ヘルプ画像
tf.System_BtImg_ConfigSeVol2_HelpXpos=470;//コンフィグ画面　SEボリュームBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigSeVol2_HelpYpos=234;//コンフィグ画面　SEボリュームBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigSeVol2_ExpFunc="State4A_MAX(2)";//コンフィグ画面　SEボリュームBボタン 実行処理
tf.System_BtImg_ConfigSeVol2_InFunc="ViewHelp(11)";//コンフィグ画面　SEボリュームBボタン インボタン実行処理
tf.System_BtImg_ConfigSeVol2_OutFunc="HideHelp()";//コンフィグ画面　SEボリュームBボタン アウトボタン実行処理
tf.System_Se_Config_BtSeVolume2_Sel='';//CONFIG画面　Seボリューム最大　に触れた時の効果音
tf.System_Se_Config_BtSeVolume2_Click='';//CONFIG画面　Seボリューム最大　にクリックした時の効果音

tf.System_BtImg_ConfigCvVol1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　CVボリュームAボタン ON
tf.System_BtImg_ConfigCvVol1_BtName='system_config_modeA_State7A';//コンフィグ画面　CVボリュームAボタン オブジェクト名
tf.System_BtImg_ConfigCvVol1_Xpos=305;//コンフィグ画面　CVボリュームAボタン XPOS
tf.System_BtImg_ConfigCvVol1_Ypos=259;//コンフィグ画面　CVボリュームAボタン YPOS
tf.System_BtImg_ConfigCvVol1_HelpImgFile='system_config_ModeA_VoiceA.png';//コンフィグ画面　CVボリュームAボタン ヘルプ画像
tf.System_BtImg_ConfigCvVol1_HelpXpos=245;//コンフィグ画面　CVボリュームAボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigCvVol1_HelpYpos=280;//コンフィグ画面　CVボリュームAボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigCvVol1_ExpFunc="State4A_MIN(3)";//コンフィグ画面　CVボリュームAボタン 実行処理
tf.System_BtImg_ConfigCvVol1_InFunc="ViewHelp(12)";//コンフィグ画面　CVボリュームAボタン インボタン実行処理
tf.System_BtImg_ConfigCvVol1_OutFunc="HideHelp()";//コンフィグ画面　CVボリュームAボタン アウトボタン実行処理
tf.System_Se_Config_BtCvVolume1_Sel='';//CONFIG画面　Cvボリューム最小　に触れた時の効果音
tf.System_Se_Config_BtCvVolume1_Click='';//CONFIG画面　Cvボリューム最小　にクリックした時の効果音

tf.System_BtImg_ConfigCvVol2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　CVボリュームBボタン ON
tf.System_BtImg_ConfigCvVol2_BtName='system_config_modeA_State7B';//コンフィグ画面　CVボリュームBボタン オブジェクト名
tf.System_BtImg_ConfigCvVol2_Xpos=525;//コンフィグ画面　CVボリュームBボタン XPOS
tf.System_BtImg_ConfigCvVol2_Ypos=259;//コンフィグ画面　CVボリュームBボタン YPOS
tf.System_BtImg_ConfigCvVol2_HelpImgFile='system_config_ModeA_VoiceB.png';//コンフィグ画面　CVボリュームBボタン ヘルプ画像
tf.System_BtImg_ConfigCvVol2_HelpXpos=470;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigCvVol2_HelpYpos=280;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigCvVol2_ExpFunc="State4A_MAX(3)";//コンフィグ画面　CVボリュームBボタン 実行処理
tf.System_BtImg_ConfigCvVol2_InFunc="ViewHelp(13)";//コンフィグ画面　CVボリュームBボタン インボタン実行処理
tf.System_BtImg_ConfigCvVol2_OutFunc="HideHelp()";//コンフィグ画面　CVボリュームBボタン アウトボタン実行処理
tf.System_Se_Config_BtCvVolume2_Sel='';//CONFIG画面　Cvボリューム最大　に触れた時の効果音
tf.System_Se_Config_BtCvVolume2_Click='';//CONFIG画面　Cvボリューム最大　にクリックした時の効果音

tf.System_BtImg_ConfigMsgOpacity1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　メッセージウインドウ透過率Aボタン ON
tf.System_BtImg_ConfigMsgOpacity1_BtName='system_config_modeA_State7C';//コンフィグ画面　メッセージウインドウ透過率Aボタン オブジェクト名
tf.System_BtImg_ConfigMsgOpacity1_Xpos=305;//コンフィグ画面　メッセージウインドウ透過率Aボタン XPOS
tf.System_BtImg_ConfigMsgOpacity1_Ypos=304;//コンフィグ画面　メッセージウインドウ透過率Aボタン YPOS
tf.System_BtImg_ConfigMsgOpacity1_HelpImgFile='system_config_ModeA_MsgopacityA.png';//コンフィグ画面　CVボリュームBボタン ヘルプ画像
tf.System_BtImg_ConfigMsgOpacity1_HelpXpos=245;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgOpacity1_HelpYpos=327;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgOpacity1_ExpFunc="State4A_MIN(4)";//コンフィグ画面　メッセージウインドウ透過率Aボタン 実行処理
tf.System_BtImg_ConfigMsgOpacity1_InFunc="ViewHelp(14)";//コンフィグ画面　メッセージウインドウ透過率Aボタン インボタン実行処理
tf.System_BtImg_ConfigMsgOpacity1_OutFunc="HideHelp()";//コンフィグ画面　メッセージウインドウ透過率Aボタン アウトボタン実行処理
tf.System_Se_Config_BtMsgWindowOpacity1_Sel='';//CONFIG画面　ウインドウ透過率ボリューム最小　に触れた時の効果音
tf.System_Se_Config_BtMsgWindowOpacity1_Click='';//CONFIG画面　ウインドウ透過率ボリューム最小　にクリックした時の効果音

tf.System_BtImg_ConfigMsgOpacity2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　メッセージウインドウ透過率Bボタン ON
tf.System_BtImg_ConfigMsgOpacity2_BtName='system_config_modeA_State7D';//コンフィグ画面　メッセージウインドウ透過率Bボタン オブジェクト名
tf.System_BtImg_ConfigMsgOpacity2_Xpos=524;//コンフィグ画面　メッセージウインドウ透過率Bボタン XPOS
tf.System_BtImg_ConfigMsgOpacity2_Ypos=304;//コンフィグ画面　メッセージウインドウ透過率Bボタン YPOS
tf.System_BtImg_ConfigMsgOpacity2_HelpImgFile='system_config_ModeA_MsgopacityB.png';//コンフィグ画面　CVボリュームBボタン ヘルプ画像
tf.System_BtImg_ConfigMsgOpacity2_HelpXpos=470;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgOpacity2_HelpYpos=327;//コンフィグ画面　CVボリュームBボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgOpacity2_ExpFunc="State4A_MAX(4)";//コンフィグ画面　メッセージウインドウ透過率Bボタン 実行処理
tf.System_BtImg_ConfigMsgOpacity2_InFunc="ViewHelp(15)";//コンフィグ画面　メッセージウインドウ透過率Bボタン インボタン実行処理
tf.System_BtImg_ConfigMsgOpacity2_OutFunc="HideHelp()";//コンフィグ画面　メッセージウインドウ透過率Bボタン アウトボタン実行処理
tf.System_Se_Config_BtMsgWindowOpacity2_Sel='';//CONFIG画面　ウインドウ透過率ボリューム最大　に触れた時の効果音
tf.System_Se_Config_BtMsgWindowOpacity2_Click='';//CONFIG画面　ウインドウ透過率ボリューム最大　にクリックした時の効果音

tf.System_BtImg_ConfigMsgWait1_BtFile='system_config_modeA_State4A1.png';//コンフィグ画面　メッセージウエイト設定ボタン ON
tf.System_BtImg_ConfigMsgWait1_BtName='system_config_modeA_State12A';//コンフィグ画面　メッセージウエイト設定ボタン オブジェクト名
tf.System_BtImg_ConfigMsgWait1_Xpos=305;//コンフィグ画面　メッセージウエイト設定ボタン XPOS
tf.System_BtImg_ConfigMsgWait1_Ypos=350;//コンフィグ画面　メッセージウエイト設定ボタン YPOS
tf.System_BtImg_ConfigMsgWait1_HelpImgFile='system_config_ModeA_MsgWaitA.png';//コンフィグ画面　 メッセージスキップ設定ボタン ヘルプ画像
tf.System_BtImg_ConfigMsgWait1_HelpXpos=245;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgWait1_HelpYpos=371;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgWait1_ExpFunc="State4A_MIN(5)";//コンフィグ画面　メッセージウエイト設定ボタン 実行処理
tf.System_BtImg_ConfigMsgWait1_InFunc="ViewHelp(24)";//コンフィグ画面　メッセージウエイト設定ボタン インボタン実行処理
tf.System_BtImg_ConfigMsgWait1_OutFunc="HideHelp()";//コンフィグ画面　メッセージウエイト設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtTextWait1_Sel='';//CONFIG画面　テキストウエイト最小　に触れた時の効果音
tf.System_Se_Config_BtTextWait1_Click='';//CONFIG画面　テキストウエイト最小　にクリックした時の効果音

tf.System_BtImg_ConfigMsgWait2_BtFile='system_config_modeA_State4B1.png';//コンフィグ画面　メッセージウエイト設定ボタン OFF
tf.System_BtImg_ConfigMsgWait2_BtName='system_config_modeA_State12B';//コンフィグ画面　メッセージウエイト設定 オブジェクト名
tf.System_BtImg_ConfigMsgWait2_Xpos=525;//コンフィグ画面　メッセージウエイト設定ボタン XPOS
tf.System_BtImg_ConfigMsgWait2_Ypos=350;//コンフィグ画面　メッセージウエイト設定ボタン YPOS
tf.System_BtImg_ConfigMsgWait2_HelpImgFile='system_config_ModeA_MsgWaitB.png';//コンフィグ画面　 メッセージスキップ設定ボタン ヘルプ画像
tf.System_BtImg_ConfigMsgWait2_HelpXpos=470;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 XPOS
tf.System_BtImg_ConfigMsgWait2_HelpYpos=371;//コンフィグ画面　メッセージスキップ設定ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigMsgWait2_ExpFunc="State4A_MAX(5)";//コンフィグ画面　メッセージウエイト設定ボタン 実行処理
tf.System_BtImg_ConfigMsgWait2_InFunc="ViewHelp(25)";//コンフィグ画面　メッセージウエイト設定ボタン インボタン実行処理
tf.System_BtImg_ConfigMsgWait2_OutFunc="HideHelp()";//コンフィグ画面　メッセージウエイト設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtTextWait2_Sel='';//CONFIG画面　テキストウエイト最大　に触れた時の効果音
tf.System_Se_Config_BtTextWait2_Click='';//CONFIG画面　テキストウエイト最大　にクリックした時の効果音






tf.System_BtImg_ConfigAllOnOff1_BtFile='system_config_modeA_State13A1.png';//コンフィグ画面　すべての確認をON
tf.System_BtImg_ConfigAllOnOff1_BtName='system_config_modeA_State13A';//コンフィグ画面　すべての確認をONボタン オブジェクト名
tf.System_BtImg_ConfigAllOnOff1_Xpos=804;//コンフィグ画面　すべての確認をONボタン XPOS
tf.System_BtImg_ConfigAllOnOff1_Ypos=116;//コンフィグ画面　すべての確認をONボタン YPOS
tf.System_BtImg_ConfigAllOnOff1_HelpImgFile='system_config_ModeA_DlgA.png';//コンフィグ画面　 すべての確認をONボタン ヘルプ画像
tf.System_BtImg_ConfigAllOnOff1_HelpXpos=523;//コンフィグ画面　すべての確認をONボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigAllOnOff1_HelpYpos=142;//コンフィグ画面　すべての確認をONボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigAllOnOff1_ExpFunc="system_config_modeA_State13ABT()";//コンフィグ画面　すべての確認をONボタン 実行処理
tf.System_BtImg_ConfigAllOnOff1_InFunc="ViewHelp(26)";//コンフィグ画面　すべての確認をONボタン インボタン実行処理
tf.System_BtImg_ConfigAllOnOff1_OutFunc="HideHelp()";//コンフィグ画面　すべての確認をONボタン アウトボタン実行処理
tf.System_Se_Config_BtAllOnOff1_Sel='';//CONFIG画面　すべてON　に触れた時の効果音
tf.System_Se_Config_BtAllOnOff1_Click='';//CONFIG画面　すべてON　にクリックした時の効果音

tf.System_BtImg_ConfigAllOnOff2_BtFile='system_config_modeA_State13B1.png';//コンフィグ画面　すべての確認をOFF
tf.System_BtImg_ConfigAllOnOff2_BtName='system_config_modeA_State13B';//コンフィグ画面　すべての確認をOFF オブジェクト名
tf.System_BtImg_ConfigAllOnOff2_Xpos=974;//コンフィグ画面　すべての確認をOFF XPOS
tf.System_BtImg_ConfigAllOnOff2_Ypos=116;//コンフィグ画面　すべての確認をOFF YPOS
tf.System_BtImg_ConfigAllOnOff2_HelpImgFile='system_config_ModeA_DlgB.png';//コンフィグ画面　 すべての確認をOFFボタン ヘルプ画像
tf.System_BtImg_ConfigAllOnOff2_HelpXpos=687;//コンフィグ画面　すべての確認をOFFボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigAllOnOff2_HelpYpos=142;//コンフィグ画面　すべての確認をOFFボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigAllOnOff2_ExpFunc="system_config_modeA_State13BBT()";//コンフィグ画面　すべての確認をOFFボタン 実行処理
tf.System_BtImg_ConfigAllOnOff2_InFunc="ViewHelp(27)";//コンフィグ画面　すべての確認をOFFボタン インボタン実行処理
tf.System_BtImg_ConfigAllOnOff2_OutFunc="HideHelp()";//コンフィグ画面　すべての確認をOFFボタン アウトボタン実行処理
tf.System_Se_Config_BtAllOnOff2_Sel='';//CONFIG画面　すべてOFF　に触れた時の効果音
tf.System_Se_Config_BtAllOnOff2_Click='';//CONFIG画面　すべてOFF　にクリックした時の効果音

tf.System_BtImg_ConfigSaveChk1A_BtFile='system_config_modeA_State14A2.png';//コンフィグ画面　セーブ確認ボタン ON
tf.System_BtImg_ConfigSaveChk1B_BtFile='system_config_modeA_State14A1.png';//コンフィグ画面　セーブ確認ボタン OFF
tf.System_BtImg_ConfigSaveChk1_BtName='system_config_modeA_State14A';//コンフィグ画面　セーブ確認ボタン オブジェクト名
tf.System_BtImg_ConfigSaveChk1_Xpos=804;//コンフィグ画面　セーブ確認ボタン XPOS
tf.System_BtImg_ConfigSaveChk1_Ypos=161;//コンフィグ画面　セーブ確認設定ボタン YPOS
tf.System_BtImg_ConfigSaveChk1_HelpImgFile='system_config_ModeA_DlgSaveA.png';//コンフィグ画面　 セーブ確認ボタンヘルプ画像
tf.System_BtImg_ConfigSaveChk1_HelpXpos=523;//コンフィグ画面　セーブ確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigSaveChk1_HelpYpos=188;//コンフィグ画面　セーブ確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigSaveChk1_ExpFunc="system_config_modeA_Save(1)";//コンフィグ画面　セーブ確認設定ボタン 実行処理
tf.System_BtImg_ConfigSaveChk1_InFunc="ViewHelp(28)";//コンフィグ画面　セーブ確認設定ボタン インボタン実行処理
tf.System_BtImg_ConfigSaveChk1_OutFunc="HideHelp()";//コンフィグ画面　セーブ確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk1_1_Sel='';//CONFIG画面　確認ダイアログ　セーブON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk1_Click='';//CONFIG画面　確認ダイアログ　セーブON　にクリックした時の効果音

tf.System_BtImg_ConfigSaveChk2A_BtFile='system_config_modeA_State14B1.png';//コンフィグ画面　セーブ確認設定ボタン ON
tf.System_BtImg_ConfigSaveChk2B_BtFile='system_config_modeA_State14B2.png';//コンフィグ画面　セーブ確認設定ボタン OFF
tf.System_BtImg_ConfigSaveChk2_BtName='system_config_modeA_State14B';//コンフィグ画面　セーブ確認設定 オブジェクト名
tf.System_BtImg_ConfigSaveChk2_Xpos=974;//コンフィグ画面　セーブ確認設定ボタン XPOS
tf.System_BtImg_ConfigSaveChk2_Ypos=161;//コンフィグ画面　セーブ確認設定ボタン YPOS
tf.System_BtImg_ConfigSaveChk2_HelpImgFile='system_config_ModeA_DlgSaveB.png';//コンフィグ画面　 セーブ確認ボタンヘルプ画像
tf.System_BtImg_ConfigSaveChk2_HelpXpos=687;//コンフィグ画面　セーブ確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigSaveChk2_HelpYpos=188;//コンフィグ画面　セーブ確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigSaveChk2_ExpFunc="system_config_modeA_Save(1)";//コンフィグ画面　セーブ確認設定ボタン 実行処理
tf.System_BtImg_ConfigSaveChk2_InFunc="ViewHelp(29)";//コンフィグ画面　セーブ確認ボタン インボタン実行処理
tf.System_BtImg_ConfigSaveChk2_OutFunc="HideHelp()";//コンフィグ画面　セーブ確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk1_2_Sel='';//CONFIG画面　確認ダイアログ　セーブOFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk1_2_Click='';//CONFIG画面　確認ダイアログ　セーブOFF　にクリックした時の効果音

tf.System_BtImg_ConfigLoadChk1A_BtFile='system_config_modeA_State15A2.png';//コンフィグ画面　ロード確認ボタン ON
tf.System_BtImg_ConfigLoadChk1B_BtFile='system_config_modeA_State15A1.png';//コンフィグ画面　ロード確認ボタン OFF
tf.System_BtImg_ConfigLoadChk1_BtName='system_config_modeA_State15A';//コンフィグ画面　ロード確認ボタン オブジェクト名
tf.System_BtImg_ConfigLoadChk1_Xpos=804;//コンフィグ画面　ロード確認ボタン XPOS
tf.System_BtImg_ConfigLoadChk1_Ypos=207;//コンフィグ画面　ロード確認設定ボタン YPOS
tf.System_BtImg_ConfigLoadChk1_HelpImgFile='system_config_ModeA_DlgLoadA.png';//コンフィグ画面　 ロード確認ボタンヘルプ画像
tf.System_BtImg_ConfigLoadChk1_HelpXpos=523;//コンフィグ画面　ロード確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigLoadChk1_HelpYpos=233;//コンフィグ画面　ロード確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigLoadChk1_ExpFunc="system_config_modeA_Load(1)";//コンフィグ画面　ロード確認設定ボタン 実行処理
tf.System_BtImg_ConfigLoadChk1_InFunc="ViewHelp(30)";//コンフィグ画面　ロード確認設定ボタン インボタン実行処理
tf.System_BtImg_ConfigLoadChk1_OutFunc="HideHelp()";//コンフィグ画面　ロード確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk2_1_Sel='';//CONFIG画面　確認ダイアログ　ロードON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk2_1_Click='';//CONFIG画面　確認ダイアログ　ロードON　にクリックした時の効果音

tf.System_BtImg_ConfigLoadChk2A_BtFile='system_config_modeA_State15B1.png';//コンフィグ画面　ロード確認設定ボタン ON
tf.System_BtImg_ConfigLoadChk2B_BtFile='system_config_modeA_State15B2.png';//コンフィグ画面　ロード確認設定ボタン OFF
tf.System_BtImg_ConfigLoadChk2_BtName='system_config_modeA_State15B';//コンフィグ画面　ロード確認設定 オブジェクト名
tf.System_BtImg_ConfigLoadChk2_Xpos=974;//コンフィグ画面　ロード確認設定ボタン XPOS
tf.System_BtImg_ConfigLoadChk2_Ypos=207;//コンフィグ画面　ロード確認設定ボタン YPOS
tf.System_BtImg_ConfigLoadChk2_HelpImgFile='system_config_ModeA_DlgLoadB.png';//コンフィグ画面　 ロード確認ボタンヘルプ画像
tf.System_BtImg_ConfigLoadChk2_HelpXpos=687;//コンフィグ画面　ロード確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigLoadChk2_HelpYpos=233;//コンフィグ画面　ロード確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigLoadChk2_ExpFunc="system_config_modeA_Load(1)";//コンフィグ画面　ロード確認設定ボタン 実行処理
tf.System_BtImg_ConfigLoadChk2_InFunc="ViewHelp(31)";//コンフィグ画面　ロード確認ボタン インボタン実行処理
tf.System_BtImg_ConfigLoadChk2_OutFunc="HideHelp()";//コンフィグ画面　ロード確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk2_2_Sel='';//CONFIG画面　確認ダイアログ　ロードOFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk2_2_Click='';//CONFIG画面　確認ダイアログ　ロードOFF　にクリックした時の効果音

tf.System_BtImg_ConfigQSaveChk1A_BtFile='system_config_modeA_State16A2.png';//コンフィグ画面　Qセーブ確認ボタン ON
tf.System_BtImg_ConfigQSaveChk1B_BtFile='system_config_modeA_State16A1.png';//コンフィグ画面　Qセーブ確認ボタン OFF
tf.System_BtImg_ConfigQSaveChk1_BtName='system_config_modeA_State16A';//コンフィグ画面　Qセーブ確認ボタン オブジェクト名
tf.System_BtImg_ConfigQSaveChk1_Xpos=804;//コンフィグ画面　Qセーブ確認ボタン XPOS
tf.System_BtImg_ConfigQSaveChk1_Ypos=253;//コンフィグ画面　Qセーブ確認ボタン YPOS
tf.System_BtImg_ConfigQSaveChk1_HelpImgFile='system_config_ModeA_DlgQSaveA.png';//コンフィグ画面　 Qセーブ確認ボタンヘルプ画像
tf.System_BtImg_ConfigQSaveChk1_HelpXpos=523;//コンフィグ画面　Qセーブ確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigQSaveChk1_HelpYpos=280;//コンフィグ画面　Qセーブ確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigQSaveChk1_ExpFunc="system_config_modeA_QSave(1)";//コンフィグ画面　Qセーブ確認設定ボタン 実行処理
tf.System_BtImg_ConfigQSaveChk1_InFunc="ViewHelp(32)";//コンフィグ画面　Qセーブ確認設定ボタン インボタン実行処理
tf.System_BtImg_ConfigQSaveChk1_OutFunc="HideHelp()";//コンフィグ画面　Qセーブ確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk3_1_Sel='';//CONFIG画面　確認ダイアログ　QセーブON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk3_1_Click='';//CONFIG画面　確認ダイアログ　QセーブON　にクリックした時の効果音

tf.System_BtImg_ConfigQSaveChk2A_BtFile='system_config_modeA_State16B1.png';//コンフィグ画面　Qセーブ確認設定ボタン ON
tf.System_BtImg_ConfigQSaveChk2B_BtFile='system_config_modeA_State16B2.png';//コンフィグ画面　Qセーブ確認設定ボタン OFF
tf.System_BtImg_ConfigQSaveChk2_BtName='system_config_modeA_State16B';//コンフィグ画面　Qセーブ確認設定 オブジェクト名
tf.System_BtImg_ConfigQSaveChk2_Xpos=974;//コンフィグ画面　Qセーブ確認設定ボタン XPOS
tf.System_BtImg_ConfigQSaveChk2_Ypos=253;//コンフィグ画面　Qセーブ確認設定ボタン YPOS
tf.System_BtImg_ConfigQSaveChk2_HelpImgFile='system_config_ModeA_DlgQSaveB.png';//コンフィグ画面　 Qセーブ確認ボタンヘルプ画像
tf.System_BtImg_ConfigQSaveChk2_HelpXpos=687;//コンフィグ画面　Qセーブ確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigQSaveChk2_HelpYpos=280;//コンフィグ画面　Qセーブ確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigQSaveChk2_ExpFunc="system_config_modeA_QSave(1)";//コンフィグ画面　Qセーブ確認設定ボタン 実行処理
tf.System_BtImg_ConfigQSaveChk2_InFunc="ViewHelp(33)";//コンフィグ画面　Qセーブ確認ボタン インボタン実行処理
tf.System_BtImg_ConfigQSaveChk2_OutFunc="HideHelp()";//コンフィグ画面　Qセーブ確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk3_2_Sel='';//CONFIG画面　確認ダイアログ　QセーブOFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk3_2_Click='';//CONFIG画面　確認ダイアログ　QセーブOFF　にクリックした時の効果音

tf.System_BtImg_ConfigQLoadChk1A_BtFile='system_config_modeA_State17A2.png';//コンフィグ画面　Qロード確認ボタン ON
tf.System_BtImg_ConfigQLoadChk1B_BtFile='system_config_modeA_State17A1.png';//コンフィグ画面　Qロード確認ボタン OFF
tf.System_BtImg_ConfigQLoadChk1_BtName='system_config_modeA_State17A';//コンフィグ画面　QL確認ボタン オブジェクト名
tf.System_BtImg_ConfigQLoadChk1_Xpos=804;//コンフィグ画面　QL確認ボタン XPOS
tf.System_BtImg_ConfigQLoadChk1_Ypos=299;//コンフィグ画面　QL確認設定ボタン YPOS
tf.System_BtImg_ConfigQLoadChk1_HelpImgFile='system_config_ModeA_DlgQLoadA.png';//コンフィグ画面　 QL確認ボタンヘルプ画像
tf.System_BtImg_ConfigQLoadChk1_HelpXpos=523;//コンフィグ画面　QL確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigQLoadChk1_HelpYpos=326;//コンフィグ画面　QL確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigQLoadChk1_ExpFunc="system_config_modeA_QLoad(1)";//コンフィグ画面　Qセーブ確認設定ボタン 実行処理
tf.System_BtImg_ConfigQLoadChk1_InFunc="ViewHelp(34)";//コンフィグ画面　QL確認設定ボタン インボタン実行処理
tf.System_BtImg_ConfigQLoadChk1_OutFunc="HideHelp()";//コンフィグ画面　QL確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk4_1_Sel='';//CONFIG画面　確認ダイアログ　QLON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk4_1_Click='';//CONFIG画面　確認ダイアログ　QLON　にクリックした時の効果音

tf.System_BtImg_ConfigQLoadChk2A_BtFile='system_config_modeA_State17B1.png';//コンフィグ画面　QL確認設定ボタン ON
tf.System_BtImg_ConfigQLoadChk2B_BtFile='system_config_modeA_State17B2.png';//コンフィグ画面　QL確認設定ボタン OFF
tf.System_BtImg_ConfigQLoadChk2_BtName='system_config_modeA_State17B';//コンフィグ画面　QL確認設定 オブジェクト名
tf.System_BtImg_ConfigQLoadChk2_Xpos=974;//コンフィグ画面　QL確認設定ボタン XPOS
tf.System_BtImg_ConfigQLoadChk2_Ypos=299;//コンフィグ画面　QL確認設定ボタン YPOS
tf.System_BtImg_ConfigQLoadChk2_HelpImgFile='system_config_ModeA_DlgQLoadB.png';//コンフィグ画面　 QL確認ボタンヘルプ画像
tf.System_BtImg_ConfigQLoadChk2_HelpXpos=687;//コンフィグ画面　QL確認ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigQLoadChk2_HelpYpos=326;//コンフィグ画面　QL確認ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigQLoadChk2_ExpFunc="system_config_modeA_QLoad(1)";//コンフィグ画面　QL確認設定ボタン 実行処理
tf.System_BtImg_ConfigQLoadChk2_InFunc="ViewHelp(35)";//コンフィグ画面　QL確認ボタン インボタン実行処理
tf.System_BtImg_ConfigQLoadChk2_OutFunc="HideHelp()";//コンフィグ画面　QL確認設定ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk4_2_Sel='';//CONFIG画面　確認ダイアログ　QLOFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk4_2_Click='';//CONFIG画面　確認ダイアログ　QLOFF　にクリックした時の効果音

tf.System_BtImg_ConfigJumpChk1A_BtFile='system_config_modeA_State18A2.png';//コンフィグ画面　JUMPボタン ON
tf.System_BtImg_ConfigJumpChk1B_BtFile='system_config_modeA_State18A1.png';//コンフィグ画面　JUMPボタン OFF
tf.System_BtImg_ConfigJumpChk1_BtName='system_config_modeA_State18A';//コンフィグ画面　JUMPボタン オブジェクト名
tf.System_BtImg_ConfigJumpChk1_Xpos=804;//コンフィグ画面　JUMPボタン XPOS
tf.System_BtImg_ConfigJumpChk1_Ypos=347;//コンフィグ画面　JUMP設定ボタン YPOS
tf.System_BtImg_ConfigJumpChk1_HelpImgFile='system_config_ModeA_DlgJumpA.png';//コンフィグ画面　 JUMPボタンヘルプ画像
tf.System_BtImg_ConfigJumpChk1_HelpXpos=523;//コンフィグ画面　JUMPボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigJumpChk1_HelpYpos=373;//コンフィグ画面　JUMPボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigJumpChk1_ExpFunc="system_config_modeA_Jump(1)";//コンフィグ画面　JUMPボタン 実行処理
tf.System_BtImg_ConfigJumpChk1_InFunc="ViewHelp(36)";//コンフィグ画面　JUMPボタン インボタン実行処理
tf.System_BtImg_ConfigJumpChk1_OutFunc="HideHelp()";//コンフィグ画面　JUMPボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk5_1_Sel='';//CONFIG画面　確認ダイアログ　ジャンプON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk5_1_Click='';//CONFIG画面　確認ダイアログ　ジャンプON　にクリックした時の効果音

tf.System_BtImg_ConfigJumpChk2A_BtFile='system_config_modeA_State18B1.png';//コンフィグ画面　JUMPボタン ON
tf.System_BtImg_ConfigJumpChk2B_BtFile='system_config_modeA_State18B2.png';//コンフィグ画面　JUMPボタン OFF
tf.System_BtImg_ConfigJumpChk2_BtName='system_config_modeA_State18B';//コンフィグ画面　JUMP オブジェクト名
tf.System_BtImg_ConfigJumpChk2_Xpos=974;//コンフィグ画面　JUMPボタン XPOS
tf.System_BtImg_ConfigJumpChk2_Ypos=347;//コンフィグ画面　JUMPボタン YPOS
tf.System_BtImg_ConfigJumpChk2_HelpImgFile='system_config_ModeA_DlgJumpB.png';//コンフィグ画面　 JUMPボタンヘルプ画像
tf.System_BtImg_ConfigJumpChk2_HelpXpos=687;//コンフィグ画面　JUMPボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigJumpChk2_HelpYpos=373;//コンフィグ画面　JUMPボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigJumpChk2_ExpFunc="system_config_modeA_Jump(1)";//コンフィグ画面　JUMPボタン 実行処理
tf.System_BtImg_ConfigJumpChk2_InFunc="ViewHelp(37)";//コンフィグ画面　JUMPボタン インボタン実行処理
tf.System_BtImg_ConfigJumpChk2_OutFunc="HideHelp()";//コンフィグ画面　JUMPボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk5_2_Sel='';//CONFIG画面　確認ダイアログ　ジャンプOFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk5_2_Click='';//CONFIG画面　確認ダイアログ　ジャンプOFF　にクリックした時の効果音

tf.System_BtImg_ConfigInitChk1A_BtFile='system_config_modeA_State19A2.png';//コンフィグ画面　設定初期化ボタン ON
tf.System_BtImg_ConfigInitChk1B_BtFile='system_config_modeA_State19A1.png';//コンフィグ画面　設定初期化ボタン OFF
tf.System_BtImg_ConfigInitChk1_BtName='system_config_modeA_State19A';//コンフィグ画面　設定初期化ボタン オブジェクト名
tf.System_BtImg_ConfigInitChk1_Xpos=804;//コンフィグ画面　設定初期化ボタン XPOS
tf.System_BtImg_ConfigInitChk1_Ypos=393;//コンフィグ画面　設定初期化設定ボタン YPOS
tf.System_BtImg_ConfigInitChk1_HelpImgFile='system_config_ModeA_DlgInitA.png';//コンフィグ画面　 設定初期化ボタンヘルプ画像
tf.System_BtImg_ConfigInitChk1_HelpXpos=523;//コンフィグ画面　設定初期化ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigInitChk1_HelpYpos=421;//コンフィグ画面　設定初期化ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigInitChk1_ExpFunc="system_config_modeA_Init(1)";//コンフィグ画面　設定初期化ボタン 実行処理
tf.System_BtImg_ConfigInitChk1_InFunc="ViewHelp(38)";//コンフィグ画面　設定初期化ボタン インボタン実行処理
tf.System_BtImg_ConfigInitChk1_OutFunc="HideHelp()";//コンフィグ画面　設定初期化ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk6_1_Sel='';//CONFIG画面　確認ダイアログ　設定初期化ON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk6_1_Click='';//CONFIG画面　確認ダイアログ　設定初期化ON　にクリックした時の効果音

tf.System_BtImg_ConfigInitChk2A_BtFile='system_config_modeA_State19B1.png';//コンフィグ画面　設定初期化ボタン ON
tf.System_BtImg_ConfigInitChk2B_BtFile='system_config_modeA_State19B2.png';//コンフィグ画面　設定初期化ボタン OFF
tf.System_BtImg_ConfigInitChk2_BtName='system_config_modeA_State19B';//コンフィグ画面　設定初期化 オブジェクト名
tf.System_BtImg_ConfigInitChk2_Xpos=974;//コンフィグ画面　設定初期化ボタン XPOS
tf.System_BtImg_ConfigInitChk2_Ypos=393;//コンフィグ画面　設定初期化ボタン YPOS
tf.System_BtImg_ConfigInitChk2_HelpImgFile='system_config_ModeA_DlgInitB.png';//コンフィグ画面　 設定初期化ボタンヘルプ画像
tf.System_BtImg_ConfigInitChk2_HelpXpos=687;//コンフィグ画面　設定初期化ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigInitChk2_HelpYpos=421;//コンフィグ画面　設定初期化ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigInitChk2_ExpFunc="system_config_modeA_Init(1)";//コンフィグ画面　設定初期化ボタン 実行処理
tf.System_BtImg_ConfigInitChk2_InFunc="ViewHelp(39)";//コンフィグ画面　設定初期化ボタン インボタン実行処理
tf.System_BtImg_ConfigInitChk2_OutFunc="HideHelp()";//コンフィグ画面　設定初期化ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk6_2_Sel='';//CONFIG画面　確認ダイアログ　設定初期化OFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk6_2_Click='';//CONFIG画面　確認ダイアログ　設定初期化OFF　にクリックした時の効果音

tf.System_BtImg_ConfigExitChk1A_BtFile='system_config_modeA_State20A2.png';//コンフィグ画面　終了ボタン ON
tf.System_BtImg_ConfigExitChk1B_BtFile='system_config_modeA_State20A1.png';//コンフィグ画面　終了ボタン OFF
tf.System_BtImg_ConfigExitChk1_BtName='system_config_modeA_State20A';//コンフィグ画面　終了ボタン オブジェクト名
tf.System_BtImg_ConfigExitChk1_Xpos=804;//コンフィグ画面　終了ボタン XPOS
tf.System_BtImg_ConfigExitChk1_Ypos=439;//コンフィグ画面　終了ボタン YPOS
tf.System_BtImg_ConfigExitChk1_HelpImgFile='system_config_ModeA_GameExitA.png';//コンフィグ画面　 終了ボタンヘルプ画像
tf.System_BtImg_ConfigExitChk1_HelpXpos=523;//コンフィグ画面　終了ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigExitChk1_HelpYpos=467;//コンフィグ画面　終了ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigExitChk1_ExpFunc="system_config_modeA_Exit(1)";//コンフィグ画面　終了ボタン 実行処理
tf.System_BtImg_ConfigExitChk1_InFunc="ViewHelp(40)";//コンフィグ画面　終了ボタン インボタン実行処理
tf.System_BtImg_ConfigExitChk1_OutFunc="HideHelp()";//コンフィグ画面　終了ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk7_1_Sel='';//CONFIG画面　確認ダイアログ　ゲーム終了ON　に触れた時の効果音
tf.System_Se_Config_BtDlgChk7_1_Click='';//CONFIG画面　確認ダイアログ　ゲーム終了ON　にクリックした時の効果音

tf.System_BtImg_ConfigExitChk2A_BtFile='system_config_modeA_State20B1.png';//コンフィグ画面　終了ボタン ON
tf.System_BtImg_ConfigExitChk2B_BtFile='system_config_modeA_State20B2.png';//コンフィグ画面　終了ボタン OFF
tf.System_BtImg_ConfigExitChk2_BtName='system_config_modeA_State20B';//コンフィグ画面　終了 オブジェクト名
tf.System_BtImg_ConfigExitChk2_Xpos=974;//コンフィグ画面　終了ボタン XPOS
tf.System_BtImg_ConfigExitChk2_Ypos=439;//コンフィグ画面　終了ボタン YPOS
tf.System_BtImg_ConfigExitChk2_HelpImgFile='system_config_ModeA_GameExitB.png';//コンフィグ画面　 終了ボタンヘルプ画像
tf.System_BtImg_ConfigExitChk2_HelpXpos=687;//コンフィグ画面　終了ボタンヘルプ画像 XPOS
tf.System_BtImg_ConfigExitChk2_HelpYpos=467;//コンフィグ画面　終了ボタン ヘルプ画像 YPOS
tf.System_BtImg_ConfigExitChk2_ExpFunc="system_config_modeA_Exit(1)";//コンフィグ画面　終了ボタン 実行処理
tf.System_BtImg_ConfigExitChk2_InFunc="ViewHelp(41)";//コンフィグ画面　終了ボタン インボタン実行処理
tf.System_BtImg_ConfigExitChk2_OutFunc="HideHelp()";//コンフィグ画面　終了ボタン アウトボタン実行処理
tf.System_Se_Config_BtDlgChk7_2_Sel='';//CONFIG画面　確認ダイアログ　ゲーム終了OFF　に触れた時の効果音
tf.System_Se_Config_BtDlgChk7_2_Click='';//CONFIG画面　確認ダイアログ　ゲーム終了OFF　にクリックした時の効果音


//スライダーデータ
tf.System_Se_Config_Slider_MasterVol_BaseImgFile='system_config_SliderBase.png';//マスターボリューム　ベース
tf.System_Se_Config_Slider_MasterVol_TabImgFile='system_config_SliderTab.png';//マスターボリューム　タブ
tf.System_Se_Config_Slider_MasterVol_BaseXpos=344;//マスターボリューム　タブXpos
tf.System_Se_Config_Slider_MasterVol_BaseYpos=121;//マスターボリューム　タブYpos
tf.System_Se_Config_Slider_BgmVol_BaseImgFile='system_config_SliderBase.png';//Bgmボリューム　ベース
tf.System_Se_Config_Slider_BgmVol_TabImgFile='system_config_SliderTab.png';//Bgmボリューム　タブ
tf.System_Se_Config_Slider_BgmVol_BaseXpos=344;//Bgmボリューム　タブXpos
tf.System_Se_Config_Slider_BgmVol_BaseYpos=167;//Bgmボリューム　タブYpos
tf.System_Se_Config_Slider_SeVol_BaseImgFile='system_config_SliderBase.png';//Seボリューム　ベース
tf.System_Se_Config_Slider_SeVol_TabImgFile='system_config_SliderTab.png';//Seボリューム　タブ
tf.System_Se_Config_Slider_SeVol_BaseXpos=344;//Seボリューム　タブXpos
tf.System_Se_Config_Slider_SeVol_BaseYpos=213;//Seボリューム　タブYpos
tf.System_Se_Config_Slider_CvVol_BaseImgFile='system_config_SliderBase.png';//Cvボリューム　ベース
tf.System_Se_Config_Slider_CvVol_TabImgFile='system_config_SliderTab.png';//Cvボリューム　タブ
tf.System_Se_Config_Slider_CvVol_BaseXpos=344;//Cvボリューム　タブXpos
tf.System_Se_Config_Slider_CvVol_BaseYpos=259;//Cvボリューム　タブYpos
tf.System_Se_Config_Slider_MsgOpacityVol_BaseImgFile='system_config_SliderBase.png';//MsgOpacityボリューム　ベース
tf.System_Se_Config_Slider_MsgOpacityVol_TabImgFile='system_config_SliderTab.png';//MsgOpacityボリューム　タブ
tf.System_Se_Config_Slider_MsgOpacityVol_BaseXpos=344;//MsgOpacityボリューム　タブXpos
tf.System_Se_Config_Slider_MsgOpacityVol_BaseYpos=304;//MsgOpacityボリューム　タブYpos
tf.System_Se_Config_Slider_TextWaitVol_BaseImgFile='system_config_SliderBase.png';//TextWaitボリューム　ベース
tf.System_Se_Config_Slider_TextWaitVol_TabImgFile='system_config_SliderTab.png';//TextWaitボリューム　タブ
tf.System_Se_Config_Slider_TextWaitVol_BaseXpos=344;//TextWaitボリューム　タブXpos
tf.System_Se_Config_Slider_TextWaitVol_BaseYpos=350;//TextWaitボリューム　タブYpos

//キーコード透明ボタン生成
tf.System_BtImg_ConfigSCutKey_KeyCode_Fontsize = 30;

tf.System_BtImg_ConfigSCutKey_ANext_Use = 1;//メッセージ送り
tf.System_BtImg_ConfigSCutKey_ANext_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　メッセージ送り キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_ANext_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_ANext_Ypos=118;//ypos
tf.System_BtImg_ConfigSCutKey_ANext_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_ANext_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_ANext_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_ANext_CodeYpos=120;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_ANext_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_AMsgHide_Use = 1;//メッセージウインドウ消去
tf.System_BtImg_ConfigSCutKey_AMsgHide_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　メッセージウインドウ消去 キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_AMsgHide_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_AMsgHide_Ypos=164;//ypos
tf.System_BtImg_ConfigSCutKey_AMsgHide_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_AMsgHide_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_AMsgHide_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_AMsgHide_CodeYpos=166;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_AMsgHide_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_AConfig_Use = 1;//システム画面呼び出し
tf.System_BtImg_ConfigSCutKey_AConfig_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　システム画面呼び出し キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_AConfig_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_AConfig_Ypos=210;//ypos
tf.System_BtImg_ConfigSCutKey_AConfig_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_AConfig_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_AConfig_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_AConfig_CodeYpos=211;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_AConfig_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_ASelUp_Use = 0;//ショートカット機能を利用するかどうか
tf.System_BtImg_ConfigSCutKey_ASelUp_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　選択肢の移動・上 キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_ASelUp_Xpos=0;//xpos
tf.System_BtImg_ConfigSCutKey_ASelUp_Ypos=0;//ypos
tf.System_BtImg_ConfigSCutKey_ASelUp_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_ASelUp_ClickSeFile = "";
tf.System_BtImg_ConfigSCutKey_ASelUp_CodeXpos=0;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_ASelUp_CodeYpos=0;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_ASelUp_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_ASelDown_Use = 0;//ショートカット機能を利用するかどうか
tf.System_BtImg_ConfigSCutKey_ASelDown_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　選択肢の移動・下 キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_ASelDown_Xpos=0;//xpos
tf.System_BtImg_ConfigSCutKey_ASelDown_Ypos=0;//ypos
tf.System_BtImg_ConfigSCutKey_ASelDown_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_ASelDown_ClickSeFile = "";
tf.System_BtImg_ConfigSCutKey_ASelDown_CodeXpos=0;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_ASelDown_CodeYpos=0;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_ASelDown_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Amsglog_Use = 1;//メッセージログ
tf.System_BtImg_ConfigSCutKey_Amsglog_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　メッセージログの呼び出し キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Amsglog_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Amsglog_Ypos=255;//ypos
tf.System_BtImg_ConfigSCutKey_Amsglog_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Amsglog_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Amsglog_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Amsglog_CodeYpos=257;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Amsglog_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Askip_Use = 1;//メッセージスキップ
tf.System_BtImg_ConfigSCutKey_Askip_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　メッセージスキップ キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Askip_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Askip_Ypos=301;//ypos
tf.System_BtImg_ConfigSCutKey_Askip_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Askip_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Askip_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Askip_CodeYpos=303;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Askip_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_AQsave_Use = 1;//クイックセーブ
tf.System_BtImg_ConfigSCutKey_AQsave_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　クイックセーブ キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_AQsave_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_AQsave_Ypos=347;//ypos
tf.System_BtImg_ConfigSCutKey_AQsave_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_AQsave_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_AQsave_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_AQsave_CodeYpos=349;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_AQsave_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_AQload_Use = 1;//クイックロード
tf.System_BtImg_ConfigSCutKey_AQload_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　クイックロード キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_AQload_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_AQload_Ypos=393;//ypos
tf.System_BtImg_ConfigSCutKey_AQload_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_AQload_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_AQload_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_AQload_CodeYpos=395;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_AQload_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Asave_Use = 1;//セーブ画面呼び出し
tf.System_BtImg_ConfigSCutKey_Asave_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　セーブ画面呼び出し キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Asave_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Asave_Ypos=438;//ypos
tf.System_BtImg_ConfigSCutKey_Asave_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Asave_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Asave_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Asave_CodeYpos=440;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Asave_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Aload_Use = 1;//ロード画面呼び出し
tf.System_BtImg_ConfigSCutKey_Aload_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　ロード画面呼び出し キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Aload_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Aload_Ypos=484;//ypos
tf.System_BtImg_ConfigSCutKey_Aload_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Aload_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Aload_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Aload_CodeYpos=485;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Aload_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Askipmode_Use = 1;//スキップモード切替
tf.System_BtImg_ConfigSCutKey_Askipmode_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　スキップモード切替 キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Askipmode_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Askipmode_Ypos=527;//ypos
tf.System_BtImg_ConfigSCutKey_Askipmode_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Askipmode_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Askipmode_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Askipmode_CodeYpos=531;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Askipmode_Fontcolor="0x000000";//文字カラー

tf.System_BtImg_ConfigSCutKey_Ajump_Use = 1;//シーンジャンプ
tf.System_BtImg_ConfigSCutKey_Ajump_ImgFile='system_config_ModeC_EditkeyAlpha.png';//コンフィグ画面　シーンジャンプ キー変更用透明ボタン
tf.System_BtImg_ConfigSCutKey_Ajump_Xpos=923;//xpos
tf.System_BtImg_ConfigSCutKey_Ajump_Ypos=575;//ypos
tf.System_BtImg_ConfigSCutKey_Ajump_SelSeFile = "";
tf.System_BtImg_ConfigSCutKey_Ajump_ClickSeFile = "BtSel.ogg";
tf.System_BtImg_ConfigSCutKey_Ajump_CodeXpos=940;//キーコード表示位置xpos
tf.System_BtImg_ConfigSCutKey_Ajump_CodeYpos=576;//キーコード表示位置ypos
tf.System_BtImg_ConfigSCutKey_Ajump_Fontcolor="0x000000";//文字カラー

//-リセットボタン
tf.System_BtImg_ConfigChaReset_BtName='system_config_modeC_VoiceState1_C';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaReset_ExpFunc="system_config_modeA_Exit(1)";//コンフィグ画面　キャラクター音声ONOFFボタン 実行処理
tf.System_BtImg_ConfigChaReset_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaReset_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理

//スライダーデータ
tf.System_BtImg_ConfigChaREDMIN_BtName='system_config_modeC_VoiceState1_D';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaREDMIN_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaREDMIN_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理
tf.System_BtImg_ConfigChaREDMAX_BtName='system_config_modeC_VoiceState1_E';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaREDMAX_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaREDMAX_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理
tf.System_BtImg_ConfigChaGREENMIN_BtName='system_config_modeC_VoiceState1_F';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaGREENMIN_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaGREENMIN_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理
tf.System_BtImg_ConfigChaGREENMAX_BtName='system_config_modeC_VoiceState1_G';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaGREENMAX_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaGREENMAX_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理
tf.System_BtImg_ConfigChaBLUEMIN_BtName='system_config_modeC_VoiceState1_H';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaBLUEMIN_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaBLUEMIN_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理
tf.System_BtImg_ConfigChaBLUEMAX_BtName='system_config_modeC_VoiceState1_I';//コンフィグ画面　キャラクター音声ONOFFボタン オブジェクト名
tf.System_BtImg_ConfigChaBLUEMAX_InFunc="ViewHelp(41)";//コンフィグ画面　キャラクター音声ONOFFボタン インボタン実行処理
tf.System_BtImg_ConfigChaBLUEMAX_OutFunc="HideHelp()";//コンフィグ画面　キャラクター音声ONOFFボタン アウトボタン実行処理

//キャラクター音声ONOFFとフォントカラー設定～コンフィグ画面に登場させるキャラ数分必要です。
//ダミーデータとして２０件分が用意されています。
//このデータは、配列として宣言されています。
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile = [];//音声ONOFFのONボタン画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile = [];//音声ONOFFのONボタン画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile = [];//音声ONOFFのOFFボタン画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile = [];//音声ONOFFのOFFボタン画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos = [];//音声ONOFFのONボタン画像ファイル表示X座標
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos = [];//音声ONOFFのONボタン画像ファイル表示Y座標
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos = [];//音声ONOFFのOFFボタン画像ファイル表示X座標
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos = [];//音声ONOFFのOFFボタン画像ファイル表示Y座標
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile = [];//音声ONOFFのONボタンボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile = [];//音声ONOFFのOFFボタンボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile = [];//音声ONOFFのONボタンボタンクリック時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile = [];//音声ONOFFのOFFボタンボタンクリック時の効果音ファイル

tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile = [];//音声設定　リセットボタンの画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos = [];//音声設定　リセットボタンの画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos = [];//音声設定　リセットボタンの画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile = [];
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile = [];
//Rスライダー
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile = [];//音声設定　赤最小値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos = [];//音声設定　赤最小値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos = [];//音声設定　赤最小値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile = [];//赤最小値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile = [];//赤最小値ボタンクリック時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile = [];//音声設定　赤最大値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos = [];//音声設定　赤最大値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos = [];//音声設定　赤最大値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile = [];//赤最大値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile = [];//赤最大値ボタンクリック時の効果音ファイル
//Gスライダー
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile = [];//音声設定　緑最小値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos = [];//音声設定　緑最小値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos = [];//音声設定　緑最小値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile = [];//緑最小値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile = [];//緑最小値ボタンクリック時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile = [];//音声設定　緑最大値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos = [];//音声設定　緑最大値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos = [];//音声設定　緑最大値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile = [];//緑最大値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile = [];//緑最大値ボタンクリック時の効果音ファイル
//Bスライダー
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile = [];//音声設定　青最小値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos = [];//音声設定　青最小値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos = [];//音声設定　青最小値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile = [];//青最小値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile = [];//青最小値ボタンクリック時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile = [];//音声設定　青最大値の画像ファイル名配列
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos = [];//音声設定　青最大値の画像ファイル表示位置 XPOS
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos = [];//音声設定　青最大値の画像ファイル表示位置 YPOS
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile = [];//青最大値ボタン選択時の効果音ファイル
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile = [];//青最大値ボタンクリック時の効果音ファイル

tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile = [];//赤スライダーベース画像ファイル
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile = [];//赤スライダータブ画像ファイル
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile = [];//緑スライダーベース画像ファイル
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile = [];//緑スライダータブ画像ファイル
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile = [];//青スライダーベース画像ファイル
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile = [];//青スライダータブ画像ファイル

tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos = [];//赤スライダーベース画像ファイルXPOS
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos = [];//赤スライダーベース画像ファイルYPOS
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos = [];//赤スライダーベース画像ファイルXPOS
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos = [];//赤スライダーベース画像ファイルYPOS
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos = [];//赤スライダーベース画像ファイルXPOS
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos = [];//赤スライダーベース画像ファイルYPOS

//-キャラ音声・文字色関連のデータをセット
//-キャラクター１のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos1 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos1 = 141;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[0] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[0] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[0] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[0] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[0] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[0] = 141;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[0] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[0] = 141;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[0] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[0] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[0] = 141;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[0] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[0] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[0] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[0] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[0] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[0] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[0] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[0] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[0] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[0] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[0] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[0] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[0] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[0] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[0] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[0] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[0] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[0] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[0] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[0] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[0] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[0] = 143;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[0] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[0] = 143;
//-キャラクター２のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos2 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos2 = 191;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[1] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[1] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[1] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[1] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[1] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[1] = 191;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[1] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[1] = 191;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[1] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[1] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[1] = 191;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[1] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[1] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[1] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[1] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[1] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[1] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[1] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[1] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[1] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[1] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[1] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[1] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[1] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[1] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[1] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[1] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[1] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[1] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[1] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[1] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[1] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[1] = 193;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[1] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[1] = 193;
//-キャラクター３のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos3 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos3 = 242;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[2] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[2] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[2] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[2] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[2] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[2] = 242;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[2] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[2] = 242;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[2] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[2] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[2] = 242;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[2] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[2] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[2] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[2] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[2] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[2] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[2] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[2] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[2] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[2] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[2] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[2] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[2] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[2] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[2] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[2] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[2] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[2] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[2] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[2] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[2] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[2] = 244;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[2] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[2] = 244;
//-キャラクター４のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos4 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos4 = 290;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[3] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[3] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[3] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[3] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[3] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[3] = 291;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[3] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[3] = 291;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[3] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[3] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[3] = 291;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[3] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[3] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[3] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[3] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[3] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[3] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[3] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[3] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[3] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[3] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[3] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[3] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[3] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[3] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[3] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[3] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[3] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[3] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[3] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[3] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[3] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[3] = 293;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[3] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[3] = 293;
//-キャラクター５のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos5 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos5 = 341;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[4] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[4] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[4] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[4] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[4] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[4] = 342;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[4] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[4] = 342;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[4] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[4] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[4] = 342;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[4] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[4] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[4] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[4] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[4] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[4] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[4] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[4] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[4] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[4] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[4] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[4] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[4] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[4] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[4] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[4] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[4] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[4] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[4] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[4] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[4] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[4] = 344;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[4] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[4] = 344;
//-キャラクター６のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos6 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos6 = 393;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[5] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[5] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[5] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[5] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[5] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[5] = 393;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[5] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[5] = 393;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[5] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[5] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[5] = 393;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[5] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[5] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[5] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[5] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[5] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[5] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[5] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[5] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[5] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[5] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[5] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[5] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[5] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[5] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[5] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[5] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[5] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[5] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[5] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[5] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[5] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[5] = 395;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[5] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[5] = 395;
//-キャラクター７のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos7 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos7 = 444;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[6] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[6] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[6] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[6] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[6] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[6] = 444;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[6] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[6] = 444;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[6] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[6] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[6] = 444;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[6] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[6] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[6] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[6] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[6] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[6] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[6] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[6] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[6] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[6] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[6] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[6] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[6] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[6] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[6] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[6] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[6] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[6] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[6] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[6] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[6] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[6] = 446;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[6] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[6] = 446;
//-キャラクター８のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos8 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos8 = 493;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[7] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[7] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[7] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[7] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[7] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[7] = 493;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[7] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[7] = 493;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[7] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[7] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[7] = 493;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[7] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[7] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[7] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[7] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[7] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[7] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[7] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[7] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[7] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[7] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[7] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[7] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[7] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[7] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[7] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[7] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[7] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[7] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[7] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[7] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[7] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[7] = 495;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[7] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[7] = 495;
//-キャラクター９のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos9 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos9 = 542;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[8] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[8] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[8] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[8] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[8] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[8] = 542;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[8] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[8] = 542;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[8] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[8] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[8] = 542;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[8] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[8] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[8] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[8] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[8] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[8] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[8] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[8] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[8] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[8] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[8] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[8] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[8] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[8] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[8] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[8] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[8] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[8] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[8] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[8] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[8] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[8] = 544;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[8] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[8] = 544;
//-キャラクター１０のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos10 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos10 = 594;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[9] = "system_config_modeC_OnBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[9] = "system_config_modeC_OnBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[9] = "system_config_modeC_OffBt.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[9] = "system_config_modeC_OffBt2.png";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[9] = 256;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[9] = 592;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[9] = 353;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[9] = 592;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[9] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[9] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[9] = 592;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[9] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[9] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[9] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[9] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[9] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[9] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[9] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[9] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[9] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[9] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[9] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[9] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[9] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[9] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[9] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[9] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[9] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[9] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[9] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[9] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[9] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[9] = 594;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[9] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[9] = 594;
//-キャラクター１１のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos11 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos11 = 644;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[10] = 309;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[10] = 563;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[10] = 389;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[10] = 563;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[10] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[10] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[10] = 641;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[10] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[10] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[10] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[10] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[10] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[10] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[10] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[10] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[10] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[10] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[10] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[10] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[10] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[10] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[10] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[10] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[10] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[10] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[10] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[10] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[10] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[10] = 643;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[10] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[10] = 643;
//-キャラクター１２のデータ
tf.System_BtImg_ConfigSCutKey_Name_Xpos12 = 60;//名前表示位置X
tf.System_BtImg_ConfigSCutKey_Name_Ypos12 = 693;//名前表示位置Y
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_A_ImgFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_B_ImgFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_A_ImgFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_B_ImgFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Xpos[11] = 309;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_Ypos[11] = 563;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Xpos[11] = 389;
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_Ypos[11] = 563;
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_ON_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvOnOff_OFF_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ImgFile[11] = "system_config_modeC_ResetBt.png";
tf.System_BtImg_ConfigSCutKey_CvResetBt_Xpos[11] = 1039;
tf.System_BtImg_ConfigSCutKey_CvResetBt_Ypos[11] = 690;
tf.System_BtImg_ConfigSCutKey_CvResetBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvResetBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ImgFile[11] = "system_config_modeC_RColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Xpos[11] = 453;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMinBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ImgFile[11] = "system_config_modeC_RColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Xpos[11] = 592;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvRedMaxBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ImgFile[11] = "system_config_modeC_GColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Xpos[11] = 646;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMinBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ImgFile[11] = "system_config_modeC_GColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Xpos[11] = 786;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvGreenMaxBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ImgFile[11] = "system_config_modeC_BColorMinBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Xpos[11] = 837;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMinBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ImgFile[11] = "system_config_modeC_BColorMaxBt.png";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Xpos[11] = 976;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_EnterSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvBlueMaxBt_ClickSeFile[11] = "";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_BaseImgFile[11] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_TabImgFile[11] = "system_config_modeC_ColorSliderRed.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_BaseImgFile[11] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_TabImgFile[11] = "system_config_modeC_ColorSliderGreen.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_BaseImgFile[11] = "system_config_modeC_ColorSliderBase.png";
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_TabImgFile[11] = "system_config_modeC_ColorSliderBlue.png";
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Xpos[11] = 486;
tf.System_BtImg_ConfigSCutKey_CvRedSlider_Base_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Xpos[11] = 679;
tf.System_BtImg_ConfigSCutKey_CvGreenSlider_Base_Ypos[11] = 692;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Xpos[11] = 870;
tf.System_BtImg_ConfigSCutKey_CvBlueSlider_Base_Ypos[11] = 692;

[endscript]
[return]
[s]

;設定情報を適応■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;これでタイトル画面で設定の適応を行う
;これがコールされてないとタイトル画面等で設定が適応されない。
*Initialize_Config
;マスターボリューム
[eval exp="sf.Config_Volume1=tf.Config_Volume1_Init if sf.Config_Volume1 === void"]
;BGMボリューム
[eval exp="sf.Config_Volume2=tf.Config_Volume2_Init if sf.Config_Volume2 === void"]
;SEボリューム
[eval exp="sf.Config_Volume3=tf.Config_Volume3_Init if sf.Config_Volume3 === void"]
;CVボリューム
[eval exp="sf.Config_Volume4=tf.Config_Volume4_Init if sf.Config_Volume4 === void"]

;ボリュームの設定
[bgmopt gvolume=&sf.Config_Volume1 volume=&sf.Config_Volume2]
[seopt buf=0 gvolume=&sf.Config_Volume1 volume=&sf.Config_Volume3]

;キャラクターボリュームは、全バッファに適応される・登場キャラクター数によってループ
;sf.config_Character_FontcolorCount によって定義されている
[iscript]
	for(var loop=1;loop<kag.numSEBuffers;loop++)
	{
		kag.se[loop].setOptions(%["gvolume"=>sf.Config_Volume1, "volume"=>sf.Config_Volume4]);
	}
[endscript]

;メッセージ速度の設定
[if exp="sf.Config_MsgSpeed==0"]
	[delay speed="nowait"]
[else]
	[delay speed=&sf.Config_MsgSpeed]
[endif]


[return]
[s]

