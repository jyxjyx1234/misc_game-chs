//縦スライダー生成用

/*--

	簡単に縦スライダーを生成する。ボタン番号は999で固定。

	スライダー番号を指定することで、Ｙの値を記憶しておくことができる。
	（番号が重複しないよう注意）

--*/

//----------------------------------
//スライダー一覧メモ

/*--

00:チャプターセレクトで使用
01:ＣＧモードで使用
02:回想モードで使用

--*/

#DEFINE		<slider_sceneselect>	00
#DEFINE		<slider_cgmode>		01
#DEFINE		<slider_kaisou>		02

#PROPERTY	$slider_index
#PROPERTY	$slider_objno

#property	$page_height : intlist[99]	//ページの稼働高さ（下記マクロにて設定）
#property	$page_slider : intlist[99]	//スライダーのＹの値
//#property	$page_y_kioku : intlist[99]	//Yの値を記憶しておく

#MACRO		@page_y_kioku(@a)	G[<slider_index>+@a]

#DEFINE		<slider_back_color>	 54,41,6
#DEFINE		<slider_btn_color>	255,255,255

#DEFINE		<slider_bg_obj>	front.object[10]		//スライダーで動かすオブジェクト

#COMMAND	$create_tate_slider(int)
#COMMAND	$tate_slider_behavior
#COMMAND	$set_tate_slider_param

















