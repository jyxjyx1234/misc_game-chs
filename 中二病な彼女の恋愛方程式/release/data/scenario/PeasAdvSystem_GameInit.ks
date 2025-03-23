*start
[return]
[s]


;■ゲームシステムの初期化
;テンプレートの基本情報に基づいた初期化を行う
*Initialize

;システムダイアログ
[iscript]
tf.config_YesNoDialogWindow_Image = "YesNoImageDialog_YesNoDialog.png";
tf.config_YesNoDialogWindow_Msg_xpos = 437;//メッセージ表示エリアのXPOS
tf.config_YesNoDialogWindow_Msg_ypos = 337;//メッセージ表示エリアのYPOS
tf.config_YesNoDialogWindow_Msg_width = 300;//メッセージ表示エリアのwidth
tf.config_YesNoDialogWindow_Msg_height = 100;//メッセージ表示エリアのheight

tf.config_YesNoDialogWindow_YesBt_Image = "YesNoImageDialog_YesButton.png";
tf.config_YesNoDialogWindow_YesBt_xpos = 470;
tf.config_YesNoDialogWindow_YesBt_ypos = 407;

tf.config_YesNoDialogWindow_NoBt_Image = "YesNoImageDialog_NoButton.png";
tf.config_YesNoDialogWindow_NoBt_xpos = 659;
tf.config_YesNoDialogWindow_NoBt_ypos = 407;

tf.config_OKDialogWindow_Image = "YesNoImageDialog_OKDialog.png";

tf.config_OKDialogWindow_YesBt_Image = "YesNoImageDialog_OKButton.png";
tf.config_OKDialogWindow_YesBt_xpos = 550;
tf.config_OKDialogWindow_YesBt_ypos = 407;



[endscript]


;登場キャラクターを登録（フォントカラー・音声再生ONOFF対象とするキャラクター）
;■キャラクターフォントカラー
;キャラクター登録数・この値以下でも問題ありません
[eval exp="sf.Config_ChacterMaxCount=20 if sf.Config_ChacterMaxCount === void"]

[iscript]
//Config.tjs のnumSEBuffers　にも同じ値を適応しなければならない
sf.config_Character_FontcolorCount = 12;//登場キャラクター数（コンフィグに表示するキャラ数）
if(sf.config_Character_Fontcolor===void)
{
	sf.config_Character_Fontcolor = new Array();
	sf.config_Character_FontcolorInit = new Array();
	for (var i=0; i < sf.Config_ChacterMaxCount; i++){
		sf.config_Character_Fontcolor[i] = new Array();
		sf.config_Character_FontcolorInit[i] = new Array();
		switch(i){
			case 0://キャラ名とRGB
				sf.config_Character_Fontcolor[i][0] = "aoi";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 200;//R
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 255;//G
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 199;//B
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;//音声ONOFF
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 1;//バッファ番号
				sf.config_Character_FontcolorInit[i][6] = 0;//-キャラ表示フラグ
				sf.config_Character_FontcolorInit[i][7] = "葵";//-日本語名
			break;
			case 1:
				sf.config_Character_Fontcolor[i][0] = "supica";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 187;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 251;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 2;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "すぴか";//-日本語名
			break;
			case 2:
				sf.config_Character_Fontcolor[i][0] = "momo";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 195;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 171;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 3;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "もも";//-日本語名
			break;
			case 3:
				sf.config_Character_Fontcolor[i][0] = "mion";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 173;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 254;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 4;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "澪音";//-日本語名
			break;
			case 4:
				sf.config_Character_Fontcolor[i][0] = "chisato";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 249;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 183;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 5;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "千聖";//-日本語名
			break;
			case 5:
				sf.config_Character_Fontcolor[i][0] = "satomi";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 242;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 222;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 6;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "聖水";//-日本語名
			break;
			case 6:
				sf.config_Character_Fontcolor[i][0] = "akane";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 220;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 220;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 7;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "あかね";//-日本語名
			break;
			case 7:
				sf.config_Character_Fontcolor[i][0] = "sousi";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 226;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 233;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 8;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "爽史";//-日本語名
			break;
			case 8:
				sf.config_Character_Fontcolor[i][0] = "man";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 223;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 216;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 9;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "その他男";//-日本語名
			break;
			case 9:
				sf.config_Character_Fontcolor[i][0] = "women";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 223;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 216;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 1;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 10;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "その他女";//-日本語名
			break;
			case 10:
				sf.config_Character_Fontcolor[i][0] = "tibun";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 255;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 0;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 11;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "地文";//-日本語名
			break;
			case 11:
				sf.config_Character_Fontcolor[i][0] = "ryuichi";
				sf.config_Character_FontcolorInit[i][1] = sf.config_Character_Fontcolor[i][1] = 255;
				sf.config_Character_FontcolorInit[i][2] = sf.config_Character_Fontcolor[i][2] = 255;
				sf.config_Character_FontcolorInit[i][3] = sf.config_Character_Fontcolor[i][3] = 255;
				sf.config_Character_FontcolorInit[i][4] = sf.config_Character_Fontcolor[i][4] = 0;
				sf.config_Character_FontcolorInit[i][5] = sf.config_Character_Fontcolor[i][5] = 11;
				sf.config_Character_FontcolorInit[i][6] = 0;
				sf.config_Character_FontcolorInit[i][7] = "竜一";//-日本語名
			break;

		}
	}
}
[endscript]
;キャラクター表示マクロを作製
[char_reg name="aoi" coordinates="0,0 0,0"]
[char_reg name="supica" coordinates="0,0 0,0"]
[char_reg name="momo" coordinates="0,0 0,0"]
[char_reg name="mion" coordinates="0,0 0,0"]
[char_reg name="chisato" coordinates="0,0 0,0"]
[char_reg name="satomi" coordinates="0,0 0,0"]
[char_reg name="akane" coordinates="0,0 0,0"]
[char_reg name="sousi" coordinates="0,0 0,0"]
[char_reg name="man" coordinates="0,0 0,0"]
[char_reg name="women" coordinates="0,0 0,0"]
[char_reg name="tibun" coordinates="0,0 0,0"]
[char_reg name="ryuichi" coordinates="0,0 0,0"]



;システム利用の変数宣言
[eval exp="tf.SaveMode_Flag_Mode=0 if tf.SaveMode_Flag_Mode === void"]
[eval exp="tf.ConfigTypeMode=-1"]
[eval exp="tf.RunConfigModeFlg=0"]
[eval exp="tf.ScemeJumping=0"]

;コンフィグ画面の各種設定・初期設定
;▼ムービースキップ　0:再生 1:非再生
[eval exp="sf.ConfigState2=1 if sf.ConfigState2 === void"]
;▼エフェクトカット　0:カットしない 1:カットする
[eval exp="sf.ConfigState3=0 if sf.ConfigState3 === void"]
;▼？
[eval exp="sf.ConfigState7=1 if sf.ConfigState7 === void"]
;▼システムメニュー　0:表示する 1:表示しない
[eval exp="sf.ConfigState8=1 if sf.ConfigState8 === void"]
;▼機能ヘルプ表示　0:表示する 1:表示しない
[eval exp="sf.ConfigState9=1 if sf.ConfigState9 === void"]
;▼ボイススキップ　0:スキップしない 1:スキップする
[eval exp="sf.ConfigState10=0 if sf.ConfigState10 === void"]
;▼スキップ機能　0:既読のみ 1:全て
[eval exp="sf.ConfigState11=1 if sf.ConfigState11 === void"]

;▼セーブ確認　0:行う 1:行わない
[eval exp="sf.ConfigState14=1 if sf.ConfigState14 === void"]
;▼ロード確認　0:行う 1:行わない
[eval exp="sf.ConfigState15=1 if sf.ConfigState15 === void"]
;▼クイックセーブ確認　0:行う 1:行わない
[eval exp="sf.ConfigState16=1 if sf.ConfigState16 === void"]
;▼クイックロード確認　0:行う 1:行わない
[eval exp="sf.ConfigState17=1 if sf.ConfigState17 === void"]
;▼シーンジャンプ確認　0:行う 1:行わない
[eval exp="sf.ConfigState18=1 if sf.ConfigState18 === void"]
;▼設定初期化確認　0:行う 1:行わない
[eval exp="sf.ConfigState19=1 if sf.ConfigState19 === void"]
;▼ゲーム終了確認　0:行う 1:行わない
[eval exp="sf.ConfigState20=1 if sf.ConfigState20 === void"]
[if exp="sf.ConfigState20 == 0"]
	[eval exp="sf.exitAsk=0"]
[else]
	[eval exp="sf.exitAsk=1"]
[endif]

;フェイスウインドウを利用するかどうか
;このパラメータは、コンフィグ画面等の時にフェイスウインドウを消す処理等に影響している。
;フェイスを利用するのに、このパラメータが０だと、フェイスウインドウを正しく消去できない
[eval exp="tf.Config_FaceWindowUse=1"]




;BGMボリューム
[eval exp="sf.Config_Volume2=50 if sf.Config_Volume2 === void"]
[bgmopt volume=&sf.Config_Volume2]

;SEボリューム
[eval exp="sf.Config_Volume3=70 if sf.Config_Volume3 === void"]
[seopt buf=0 volume=&sf.Config_Volume3]

;ボイスボリューム
[eval exp="sf.Config_Volume4=100 if sf.Config_Volume4 === void"]
[seopt buf=1 volume=&sf.Config_Volume4]

;ウインドウ透過率
[eval exp="sf.Config_MsgOpacity=80 if sf.Config_MsgOpacity === void"]
;テキストウエイト
[eval exp="sf.Config_MsgSpeed=20 if sf.Config_MsgSpeed === void"]
;メッセージ速度の設定
[if exp="sf.Config_MsgSpeed==0"]
	[delay speed="nowait"]
[else]
	[delay speed=&sf.Config_MsgSpeed]
[endif]


[iscript]
//	sf.System_Config_GameWidth = 1280;//画面サイズ横幅 この設定はconfig.tjs scWidth　に記述
//	sf.System_Config_GameHeight = 800;//画面サイズ縦幅 この設定はconfig.tjs scHeight　に記述
	tf.System_Config_ScreenSize = 0;//ウインドウサイズを可変させるか？ 0=させない 1=させる
	//※吉里吉里Z動作では、現バージョンではウインドウサイズ可変はできないため０としなければならない
	
	tf.System_Config_GameTitle = "中二病な彼女の恋愛方程式 Deepseek-R1 机翻 by jyxjyx1234@ai2.moe";//アプリケーションタイトル
	sf.System_Config_InitScreen = 0;//初期スクリーンモード 0=ウインドウ 1=フルスクリーン
//	sf.System_Config_ViewSysMenu = 0;//システムメニュー表示有無 0=システムメニューを非表示 1=表示　この設定はconfig.tjs menu.visible　に記述
	
	tf.System_Se_AllSound_Sel = "BtSel.ogg";//ボタン選択時の共通効果音ファイル
	tf.System_Se_AllSound_Click='BtSel.ogg';//ボタンクリック時の共通効果音ファイル
	
	//-選択肢
	tf.System_Config_Sel_bgleft = 0;//選択肢エリア　左上X
	tf.System_Config_Sel_bgtop = 200;//選択肢エリア　左上Y
	tf.System_Config_Sel_bgwidth = 880;//選択肢エリア幅
	tf.System_Config_Sel_barealeft = 0;//ボタン領域のbgleftからの左上相対XY座標
	tf.System_Config_Sel_bareatop = 0;//ボタン領域のbgleftからの左上相対XY座標
	tf.System_Config_Sel_bareaheight = 300;//ボタン領域縦幅
	tf.System_Config_Sel_clearmsg = "none";//選択肢表示前または後にメッセージレイヤを[cm]でクリアするか
	tf.System_Config_Sel_ImageFile = "SelectBase.png";//選択肢ボタン画像

	//-メッセージウインドウ
	tf.System_Config_Msg_PosX = 55;//メッセージウインドウ表示位置X
	tf.System_Config_Msg_PosY = 623;//メッセージウインドウ表示位置Y
	tf.System_Config_Msg_marginl = 336;
	tf.System_Config_Msg_margint = 12;
	tf.System_Config_Msg_marginr = 39;
	tf.System_Config_Msg_marginb = 19;
	tf.System_Config_Msg_ImageFile = "window01_frame0.png";//メッセージウインドウベース画像
	tf.System_Config_Msg_ImageFileWidth = 1170;//メッセージウインドウ画像サイズ
	tf.System_Config_Msg_ImageFileHeight = 169;//メッセージウインドウ画像サイズ
	//-メッセージウインドウシステムボタン
	tf.System_Config_USys_ConfigBtUse = 1;//コンフィグボタンの利用ONOFF
	tf.System_Config_USys_MsgLogBtUse = 1;//履歴ボタンの利用ONOFF
	tf.System_Config_USys_AutoBtUse = 1;//オートボタンの利用ONOFF
	tf.System_Config_USys_SkipBtUse = 1;//スキップボタンの利用ONOFF
	tf.System_Config_USys_JumpBtUse = 1;//ジャンプボタンの利用ONOFF
	tf.System_Config_USys_QSaveBtUse = 1;//クイックセーブの利用ONOFF
	tf.System_Config_USys_QLoadBtUse = 1;//クイックロードの利用ONOFF
	tf.System_Config_USys_SaveBtUse = 1;//セーブボタンの利用ONOFF
	tf.System_Config_USys_LoadBtUse = 1;//ロードボタンの利用ONOFF
	tf.System_Config_USys_MinBtUse = 0;//最小化ボタンの利用ONOFF
	tf.System_Config_USys_ImageFile = "";//下部システムのウインドウ画像
	tf.System_Config_USys_ImageXpos = 0;//下部システムのウインドウ表示位置X
	tf.System_Config_USys_ImageYpos = 0;//下部システムのウインドウ表示位置Y

	//-メッセージウインドウリソース
	tf.System_BtImg_MsgBt1_BtFile='system_UnderWindow_BT1.png';
	tf.System_BtImg_MsgBt1_BtName='system_UnderWindow_BT1';
	tf.System_BtImg_MsgBt1_Xpos=843;
	tf.System_BtImg_MsgBt1_Ypos=631;
	tf.System_BtImg_MsgBt1_ExpFunc="SysBtn_onConfigButtonClick(1)";
	tf.System_BtImg_MsgBt1_InFunc="ViewHelp(42)";
	tf.System_BtImg_MsgBt1_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt2_BtFile='system_UnderWindow_BT2.png';
	tf.System_BtImg_MsgBt2_BtName='system_UnderWindow_BT2';
	tf.System_BtImg_MsgBt2_Xpos=875;
	tf.System_BtImg_MsgBt2_Ypos=631;
	tf.System_BtImg_MsgBt2_ExpFunc="SysBtn_onHistoryButtonClick()";
	tf.System_BtImg_MsgBt2_InFunc="ViewHelp(43)";
	tf.System_BtImg_MsgBt2_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt3_BtFile='system_UnderWindow_BT3.png';
	tf.System_BtImg_MsgBt3_BtName='system_UnderWindow_BT3';
	tf.System_BtImg_MsgBt3_Xpos=914;
	tf.System_BtImg_MsgBt3_Ypos=631;
	tf.System_BtImg_MsgBt3_ExpFunc="SysBtn_onAutoReadButtonClick()";
	tf.System_BtImg_MsgBt3_InFunc="ViewHelp(44)";
	tf.System_BtImg_MsgBt3_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt4_BtFile='system_UnderWindow_BT4.png';
	tf.System_BtImg_MsgBt4_BtName='system_UnderWindow_BT4';
	tf.System_BtImg_MsgBt4_Xpos=946;
	tf.System_BtImg_MsgBt4_Ypos=631;
	tf.System_BtImg_MsgBt4_ExpFunc="SysBtn_onSkipButtonClick()";
	tf.System_BtImg_MsgBt4_InFunc="ViewHelp(45)";
	tf.System_BtImg_MsgBt4_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt5_BtFile='system_UnderWindow_BT5.png';
	tf.System_BtImg_MsgBt5_BtName='system_UnderWindow_BT5';
	tf.System_BtImg_MsgBt5_Xpos=985;
	tf.System_BtImg_MsgBt5_Ypos=631;
	tf.System_BtImg_MsgBt5_ExpFunc="SysBtn_onJumpButtonClick()";
	tf.System_BtImg_MsgBt5_InFunc="ViewHelp(46)";
	tf.System_BtImg_MsgBt5_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt6_BtFile='system_UnderWindow_BT6.png';
	tf.System_BtImg_MsgBt6_BtName='system_UnderWindow_BT6';
	tf.System_BtImg_MsgBt6_Xpos=1025;
	tf.System_BtImg_MsgBt6_Ypos=631;
	tf.System_BtImg_MsgBt6_ExpFunc="SysBtn_QuickSaveRun(99)";
	tf.System_BtImg_MsgBt6_InFunc="ViewHelp(47)";
	tf.System_BtImg_MsgBt6_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt7_BtFile='system_UnderWindow_BT7.png';
	tf.System_BtImg_MsgBt7_BtName='system_UnderWindow_BT7';
	tf.System_BtImg_MsgBt7_Xpos=1061;
	tf.System_BtImg_MsgBt7_Ypos=631;
	tf.System_BtImg_MsgBt7_ExpFunc="SysBtn_QuickLoadRun(99)";
	tf.System_BtImg_MsgBt7_InFunc="ViewHelp(48)";
	tf.System_BtImg_MsgBt7_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt8_BtFile='system_UnderWindow_BT8.png';
	tf.System_BtImg_MsgBt8_BtName='system_UnderWindow_BT8';
	tf.System_BtImg_MsgBt8_Xpos=1095;
	tf.System_BtImg_MsgBt8_Ypos=631;
	tf.System_BtImg_MsgBt8_ExpFunc="SysBtn_CreateSaveLoadViewMode(0,1)";
	tf.System_BtImg_MsgBt8_InFunc="ViewHelp(49)";
	tf.System_BtImg_MsgBt8_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt9_BtFile='system_UnderWindow_BT9.png';
	tf.System_BtImg_MsgBt9_BtName='system_UnderWindow_BT9';
	tf.System_BtImg_MsgBt9_Xpos=1141;
	tf.System_BtImg_MsgBt9_Ypos=631;
	tf.System_BtImg_MsgBt9_ExpFunc="SysBtn_CreateSaveLoadViewMode(1,1)";
	tf.System_BtImg_MsgBt9_InFunc="ViewHelp(50)";
	tf.System_BtImg_MsgBt9_OutFunc="HideHelp()";

	tf.System_BtImg_MsgBt10_BtFile='';
	tf.System_BtImg_MsgBt10_BtName='system_UnderWindow_BT10';
	tf.System_BtImg_MsgBt10_Xpos=0;
	tf.System_BtImg_MsgBt10_Ypos=0;
	tf.System_BtImg_MsgBt10_ExpFunc="SysBtn_onTextHideButtonClick()";
	tf.System_BtImg_MsgBt10_InFunc="ViewHelp(51)";
	tf.System_BtImg_MsgBt10_OutFunc="HideHelp()";

	tf.System_Se_MessageWindow_Bt1_Sel='';//メッセージウインドウボタン「コンフィグ」に触れた時の効果音
	tf.System_Se_MessageWindow_Bt2_Sel='';//メッセージウインドウボタン「バックログ」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt3_Sel='';//メッセージウインドウボタン「オート」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt4_Sel='';//メッセージウインドウボタン「スキップ」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt5_Sel='';//メッセージウインドウボタン「ジャンプ」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt6_Sel='';//メッセージウインドウボタン「Qセーブ」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt7_Sel='';//メッセージウインドウボタン「Qロード」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt8_Sel='';//メッセージウインドウボタン「セーブ」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt9_Sel='';//メッセージウインドウボタン「ロード」に触れた時のの効果音
	tf.System_Se_MessageWindow_Bt10_Sel='';//メッセージウインドウボタン「最小化」に触れた時のの効果音

	tf.System_Se_MessageWindow_Bt1_Click='';//メッセージウインドウボタン「コンフィグ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt2_Click='';//メッセージウインドウボタン「バックログ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt3_Click='';//メッセージウインドウボタン「オート」にクリックの効果音
	tf.System_Se_MessageWindow_Bt4_Click='';//メッセージウインドウボタン「スキップ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt5_Click='';//メッセージウインドウボタン「ジャンプ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt6_Click='';//メッセージウインドウボタン「Qセーブ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt7_Click='';//メッセージウインドウボタン「Qロード」にクリックの効果音
	tf.System_Se_MessageWindow_Bt8_Click='';//メッセージウインドウボタン「セーブ」にクリックの効果音
	tf.System_Se_MessageWindow_Bt9_Click='';//メッセージウインドウボタン「ロード」にクリックの効果音
	tf.System_Se_MessageWindow_Bt10_Click='';//メッセージウインドウボタン「最小化」にクリックの効果音
	
	tf.System_Se_MessageWindow_Help1_ImgFile='system_UnderWindow_BT1_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help1_Xpos=504;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help1_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help2_ImgFile='system_UnderWindow_BT2_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help2_Xpos=538;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help2_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help3_ImgFile='system_UnderWindow_BT3_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help3_Xpos=576;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help3_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help4_ImgFile='system_UnderWindow_BT4_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help4_Xpos=609;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help4_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help5_ImgFile='system_UnderWindow_BT5_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help5_Xpos=650;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help5_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help6_ImgFile='system_UnderWindow_BT6_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help6_Xpos=690;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help6_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help7_ImgFile='system_UnderWindow_BT7_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help7_Xpos=724;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help7_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help8_ImgFile='system_UnderWindow_BT8_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help8_Xpos=760;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help8_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help9_ImgFile='system_UnderWindow_BT9_SYS.png';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help9_Xpos=805;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help9_Ypos=560;//メッセージウインドウボタンヘルプ画像 YPOS
	tf.System_Se_MessageWindow_Help10_ImgFile='';//メッセージウインドウボタンヘルプ画像
	tf.System_Se_MessageWindow_Help10_Xpos=0;//メッセージウインドウボタンヘルプ画像 XPOS
	tf.System_Se_MessageWindow_Help10_Ypos=0;//メッセージウインドウボタンヘルプ画像 YPOS
	

	//サイドバーシステム
	tf.System_BtImg_QSaveLoadSot_BaseImgFileOff = "System_SideScrollBase_off.png";//サイドバーシステムのベース画像OFF
	tf.System_BtImg_QSaveLoadSot_BaseImgFileOn = "System_SideScrollBase_on.png";//サイドバーシステムのベース画像OFF
	tf.System_BtImg_QSaveLoadSot_BaseXpos = 1263;//サイドバーシステムのベース画像Xpos
	tf.System_BtImg_QSaveLoadSot_BaseYpos = 0;//サイドバーシステムのベース画像Ypos
	tf.System_BtImg_QSaveLoadSot_BaseXposOn = 839;//サイドバーシステムのベース画像Xpos　スロットウインドウがONになった時
	tf.System_BtImg_QSaveLoadSot_BaseYposOn = 0;//サイドバーシステムのベース画像Ypos　スロットウインドウがONになった時
	tf.System_BtImg_QSaveLoadSot_SlotBaseBaseImgFile = "System_SideWindow_on_A.png";//サイドバースロット画像
	tf.System_BtImg_QSaveLoadSot_SlotBaseXpos = 1227;//サイドバーシステムのスロット画像Xpos
	tf.System_BtImg_QSaveLoadSot_SlotBaseYpos = 0;//サイドバーシステムのスロット画像Ypos

	tf.System_BtImg_QSaveLoadSot_Slot1ImgFile = "System_SideWindow_slot1.png";//スロットボタン画像1
	tf.System_BtImg_QSaveLoadSot_Slot1Xpos = 1241;//スロットボタン画像1 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot1Ypos = 115;//スロットボタン画像1 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot2ImgFile = "System_SideWindow_slot2.png";//スロットボタン画像2
	tf.System_BtImg_QSaveLoadSot_Slot2Xpos = 1241;//スロットボタン画像2 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot2Ypos = 166;//スロットボタン画像2 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot3ImgFile = "System_SideWindow_slot3.png";//スロットボタン画像3
	tf.System_BtImg_QSaveLoadSot_Slot3Xpos = 1241;//スロットボタン画像3 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot3Ypos = 217;//スロットボタン画像3 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot4ImgFile = "System_SideWindow_slot4.png";//スロットボタン画像4
	tf.System_BtImg_QSaveLoadSot_Slot4Xpos = 1241;//スロットボタン画像4 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot4Ypos = 268;//スロットボタン画像4 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot5ImgFile = "System_SideWindow_slot5.png";//スロットボタン画像5
	tf.System_BtImg_QSaveLoadSot_Slot5Xpos = 1241;//スロットボタン画像5 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot5Ypos = 319;//スロットボタン画像5 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot6ImgFile = "System_SideWindow_slot6.png";//スロットボタン画像6
	tf.System_BtImg_QSaveLoadSot_Slot6Xpos = 1241;//スロットボタン画像6 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot6Ypos = 370;//スロットボタン画像6 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot7ImgFile = "System_SideWindow_slot7.png";//スロットボタン画像7
	tf.System_BtImg_QSaveLoadSot_Slot7Xpos = 1241;//スロットボタン画像7 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot7Ypos = 421;//スロットボタン画像7 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot8ImgFile = "System_SideWindow_slot8.png";//スロットボタン画像8
	tf.System_BtImg_QSaveLoadSot_Slot8Xpos = 1241;//スロットボタン画像8 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot8Ypos = 472;//スロットボタン画像8 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot9ImgFile = "System_SideWindow_slot9.png";//スロットボタン画像9
	tf.System_BtImg_QSaveLoadSot_Slot9Xpos = 1241;//スロットボタン画像9 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot9Ypos = 523;//スロットボタン画像9 Ypos
	tf.System_BtImg_QSaveLoadSot_Slot10ImgFile = "System_SideWindow_slot10.png";//スロットボタン画像10
	tf.System_BtImg_QSaveLoadSot_Slot10Xpos = 1241;//スロットボタン画像10 Xpos
	tf.System_BtImg_QSaveLoadSot_Slot10Ypos = 574;//スロットボタン画像10 Ypos

	tf.System_BtImg_QSaveLoadSot_Slot1SaveIdx = 90;//スロットボタン画像1 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot2SaveIdx = 91;//スロットボタン画像2 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot3SaveIdx = 92;//スロットボタン画像3 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot4SaveIdx = 93;//スロットボタン画像4 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot5SaveIdx = 94;//スロットボタン画像5 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot6SaveIdx = 95;//スロットボタン画像6 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot7SaveIdx = 96;//スロットボタン画像7 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot8SaveIdx = 97;//スロットボタン画像8 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot9SaveIdx = 98;//スロットボタン画像9 保存先インデックス
	tf.System_BtImg_QSaveLoadSot_Slot10SaveIdx = 99;//スロットボタン画像10 保存先インデックス


	tf.System_Se_QSaveLoadSot_Slot_Open='';//Qセーブロードウインドウボタンがオープンされた時の効果音
	tf.System_Se_QSaveLoadSot_Slot_Close='';//Qセーブロードウインドウボタンがクローズされた時の効果音
	tf.System_Se_QSaveLoadSot_Slot_Sel='';//Qセーブロードウインドウボタン「スロット」に触れた時の効果音
	tf.System_Se_QSaveLoadSot_Slot_Click='';//Qセーブロードウインドウボタン「スロット」をクリックの効果音

	tf.System_Se_QSaveLoadSot_Slot_Save='';//Qセーブロードウインドウボタン セーブされた時の効果音
	tf.System_Se_QSaveLoadSot_Slot_Load='';//Qセーブロードウインドウボタンロードされた時の効果音



	//効果音の再設定
	if(tf.System_Se_QSaveLoadSot_Slot_Sel==''){tf.System_Se_QSaveLoadSot_Slot_Sel=tf.System_Se_AllSound_Sel;}
	if(tf.System_Se_QSaveLoadSot_Slot_Click==''){tf.System_Se_QSaveLoadSot_Slot_Click=tf.System_Se_AllSound_Sel;}

[endscript]

;ウインドウサイズを指定サイズに変更
;現バージョンでは適応されずconfig.tjsに記載したサイズが適応される。
[iscript]
//Window.mainWindow.setInnerSize(sf.System_Config_GameWidth, sf.System_Config_GameHeight);
//global.Layer.setSize(sf.System_Config_GameWidth, sf.System_Config_GameHeight);
[endscript]

;ウインドウタイトルを設定
[title name=&tf.System_Config_GameTitle]

;初期起動時は、指定されたスクリーンモードで起動
[if exp="sf.System_Config_InitGameRun === void"]
	[iscript]
		if( sf.System_Config_InitScreen == 1 ){
			kag.onFullScreenMenuItemClick();
		}
		else{//フルスクリーン以外は、ウインドウ起動なので何もしない
//			kag.onWindowedMenuItemClick();
		}
	[endscript]

[endif]
;ゲーム初回起動フラグ
[eval exp="sf.System_Config_InitGameRun=1 if sf.System_Config_InitGameRun === void"]

;システムメニューの表示有無
;この項目は現バージョンにおいては　この設定はconfig.tjs menu.visible　に記述
;動的な変更はウインドウサイズ、レイヤサイズを維持できない為、不可とする。
[iscript]
	if( sf.System_Config_ViewSysMenu == 1 ){
//		kag.menu.visible = 1;
	}
	else{//フルスクリーン以外は、ウインドウ起動なので何もしない
//		kag.menu.visible = 0;
//		Window.mainWindow.setSize(sf.System_Config_GameWidth,400);
	}

[endscript]


[return]
[s]





