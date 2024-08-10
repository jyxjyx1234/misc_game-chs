#pragma once
#include <cstdint>

namespace YurisLibrary
{
	namespace YSCFG
	{
		#pragma pack(1)
		struct YSCFG_Struct_V5
		{
			uint32_t uiSignature;           // "YSCFG"
			uint32_t uiVersion;
			uint32_t uiUnknow0;
			uint32_t uiCompile;
			uint32_t uiScreenWidth;
			uint32_t uiScreenHeight;
			uint32_t uiEnable;
			uint8_t  ucImageTypeSlots[0x8];
			uint8_t  ucSoundTypeSlots[0x4];
			uint32_t uiThread;
			uint32_t uiDebugMode;
			uint32_t uiSound;
			uint32_t uiWindowReSize;
			uint32_t uiWindowFrame;
			uint32_t uiFilePriorityDev;
			uint32_t uiFilePriorityDebug;
			uint32_t uiFilePriorityRelease;
			uint32_t uiUnknow1;
			uint16_t uiCaptionLen;
			//uint8_t ucCaption[uiCaptionLen];
		};
		#pragma pack()
/*
		 	"OP":"0x75",
			"Command":"SYSTEMMODE",
			"Args":
			[
				{
					"ID":"0x0",
					"Arg":"SX",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1",
					"Arg":"SY",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x2",
					"Arg":"E",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x3",
					"Arg":"BMP",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x4",
					"Arg":"PNG",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x5",
					"Arg":"JPG",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x6",
					"Arg":"GIF",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x7",
					"Arg":"AVI",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x8",
					"Arg":"PSB",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x9",
					"Arg":"WEBP",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xa",
					"Arg":"WAV",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xb",
					"Arg":"OGG",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xc",
					"Arg":"CAPTION",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xd",
					"Arg":"THREAD",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xe",
					"Arg":"SCRIPTFILEEXT",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0xf",
					"Arg":"DEBUGMODE",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x10",
					"Arg":"SOUND",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x11",
					"Arg":"COMPILE",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x12",
					"Arg":"WINDOWRESIZE",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x13",
					"Arg":"WINDOWFRAME",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x14",
					"Arg":"FILEPRIORITYDEVELOP",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x15",
					"Arg":"FILEPRIORITYDEBUG",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x16",
					"Arg":"FILEPRIORITYRELEASE",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x17",
					"Arg":"DEFSTR",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x18",
					"Arg":"DEFSTR2",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x19",
					"Arg":"DEFSTR3",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1a",
					"Arg":"DEFSTR4",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1b",
					"Arg":"DEFSTR5",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1c",
					"Arg":"DEFSTR6",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1d",
					"Arg":"DEFSTR7",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1e",
					"Arg":"DEFSTR8",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x1f",
					"Arg":"DEFSTR9",
					"Value0":"0x0",
					"Value1":"0x0",
				},
				{
					"ID":"0x20",
					"Arg":"DEFSTR10",
					"Value0":"0x0",
					"Value1":"0x0",
				},
			],
*/
/*
//=========================================================================
//
// プロジェクト各種設定
//
//=========================================================================


//-------------------------------------------------------------------------
// デバッグモード
//   0:リリースモード(デバッグ機能は全てＯＦＦ＆ysbinデータ作成)
//   1:デバッグモード(エラー時編集ボタンＯＮ＆ERISデバッグ機能ＯＮ)
//-------------------------------------------------------------------------
SYSTEMMODE[DEBUGMODE=1]


//-------------------------------------------------------------------------
// 起動時のタイトルバー名
//   ※正式キーワードが TITLEBAR から CAPTION になりました。
//     ただし正式版リリース時までは TITLEBAR キーワードも引き続き使えます。
//-------------------------------------------------------------------------
SYSTEMMODE[CAPTION="(タイトル名)"]


//-------------------------------------------------------------------------
// タイトルバー、ウィンドウ枠の有無
//   0 を指定するとタイトルバーとウィンドウ枠が無くなります。
//   デスクトップアクセサリーの作成時などに使用します。
//   ※タイトルバー右上の[×]ボタンも無くなりますので注意してください。
//     (画面クリックでアクティブにした後Alt+F4を押せば終了確認が出ます)
//-------------------------------------------------------------------------
SYSTEMMODE[WINDOWFRAME=1]


//-------------------------------------------------------------------------
// ウィンドウリサイズ
//-------------------------------------------------------------------------
SYSTEMMODE[WINDOWRESIZE=1]


//-------------------------------------------------------------------------
// スレッドモード
//   1 を指定すると、タイトルバーを掴んでも動作が停止しないようになります。
// ※但しまだβ版のため挙動が不安定になる可能性があるため、
//   現状ではなるべく使用しないでください。
//-------------------------------------------------------------------------
SYSTEMMODE[THREAD=0]


//-------------------------------------------------------------------------
// 画面サイズ
//   ※SX, SY 共に0にすると起動時の画面サイズがウィンドウサイズとなります
//-------------------------------------------------------------------------
SYSTEMMODE[SX=800 SY=600]


//-------------------------------------------------------------------------
// サウンド機能
//   0 = 使用しない
//   1 = 使用する(通常はこちらを指定してください)
//-------------------------------------------------------------------------
SYSTEMMODE[SOUND=1]



//-------------------------------------------------------------------------
// 追加で認識させるスクリプトファイル拡張子
//   「〜.yst」ファイルの他に、スクリプトファイルとして
//   認識させたいファイル拡張子を指定します。
//
//   ※スクリプト部分とシナリオ部分に分離して、
//   エディタでそれぞれに色分けしたい場合に便利です。
//-------------------------------------------------------------------------
SYSTEMMODE[SCRIPTFILEEXT="txt"]
		*/
	}
}