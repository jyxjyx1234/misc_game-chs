
// *************************************************************
// 宣言：シナリオ中のコマンド
// =============================================================
//		シナリオ中、演出用のコマンドです
// =============================================================
//		コマンドの「定義」は _object.ss にあります。
// =============================================================

// 左立ち絵の位置を指定
#define @bstl	188

// 右立ち絵の位置を指定
#define @bstr	612

// 真ん中立ち絵の位置を指定
#define @bstc	400

// バックグラウンドモードフラグ（ウィンドウを閉じずにワイプ）
#property $bg_mode

// ワイプする
#command $wipe(int)

// 背景を指定し、ワイプする
#command $bg(int, str)

// キャラを０人指定し、ワイプする
#command $char0(int)

// キャラを１人指定し、ワイプする
#command $char1(int, str)

// キャラを２人指定し、ワイプする
#command $char2(int, str, str)

// キャラを３人指定し、ワイプする。
//※３人で歩美を付け加える、半ば専用
#command $char3(int, str, str, str)

// クリアする
#command $clear(int)

// 画面を揺らす。揺れるタイプ
#command $squake(int)

// 幕間-オーバーレイ
#command $interval(str)

// アイキャッチ
#command $eyec(str)

#command $eyecatch

#command $snow(int)

#command $snow_end(int)

#command $snow_up

#command $kirikae
