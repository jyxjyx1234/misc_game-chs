#PROPERTY $mouse_over		//マウスカーソル変更用

//タイトル画面ss

#DEFINE	<title_ss>	"mesugaki_タイトル画面"

#DEFINE	（ｖ）	"＃Ａ００"
#DEFINE	（汗）	"＃Ａ０１"
#DEFINE	（♪）	"＃Ａ０２"
#DEFINE	（怒）	"＃Ａ０３"
#DEFINE	（涙）	"＃Ａ０４"
#DEFINE	／／／	"＃Ａ０５"

#MACRO	@kwt	size R
#MACRO	@pp		if (@文中の句読点での一時停止 == 1) {PP}
#MACRO	@page	page
#MACRO	@kwt2	@nl size R
#MACRO	@nl		if ($novel_mode_flag == 0) { nl }
#MACRO	@nli	if ($novel_mode_flag == 0) { nli }

#DEFINE	<white>	255
#DEFINE	<black>	254
#DEFINE	<yellow>	12

#DEFINE <nowait> 0

//#DEFINE @size_bb	size(40)
//#DEFINE @size_b	size(35)
//#DEFINE @size_ss	size(18)


#MACRO	@size_bbbb size(90)

#MACRO	@size_bbb size(70)

#MACRO	@size_bb size(60)

#MACRO	@size_b(@plus(0)) size(48 + @plus)


#MACRO	@size_s size(33)
#MACRO	@size_s_rep		//縦位置のセンタリング
			rep_pos(0, 6)

#MACRO	@size_ss size(27)
#MACRO	@size_ss_rep		//縦位置のセンタリング
			rep_pos(0, 9)








#DEFINE <CG_NAME_TAG>	"CG"	//イベントCGの頭につけるファイル名

//-----------------フレームアクションチャンネル一覧
/*

	0 - 3 : 汎用 @fa_end (@BG) でストップする
	4 : 背景演出 @fa_last_end (@BG) でストップする
	5 : カットインチャンネル（2017.0421追加）
	6 : カットインチャンネル予備（2017.0421追加）
	7 : 			★イベントCGの手ブレ表現に使用（2021.07.02)
	8 : イベントCG表示中の画像拡縮や移動に使用	@fa_endでストップ
	9 : エンディングエフェクト
	10: EVENTCG_NOWIPE用
	11: 画面右上シナリオ表示用
	12: 邪システム
	13: 邪システム
	14: 邪システム
	15: メッセージウィンドウボタン表示

*/


//-----------------背景ワイプのパターン番号

#DEFINE	<ef_room_move>		70		//主に部屋移動時
#DEFINE	<ef_place_move>		120		//主に場所移動時
#DEFINE <ef_dash_move>	300		//主に走って移動するとき（ＩＮ）
#DEFINE <ef_time_move>		301	//時間経過時
#DEFINE <ef_scene_change>	300	//シーン切り替わり時
#DEFINE <ef_furimuki_move>	200	//振り向くときに使う場合（主に玄関⇔玄関前）
#DEFINE <ef_fadein_move>	213	//見上げるときなどに使う場合（主に空中へのパン）
#DEFINE <ef_fadeout_move>	214	//

//-----------------汎用

#PROPERTY	$tmp
#PROPERTY	$tmp1
#PROPERTY	$tmp2
#PROPERTY	$tmp3
#PROPERTY	$tmp4
#PROPERTY	$tmp5

//-----------------コンフィグで使用

#PROPERTY	$saveslot_name	: strlist[300]
#PROPERTY	$saveslot_data	: intlist[300]
#PROPERTY	$Readflag_local	: intlist[300]
#PROPERTY	$skipmode
#PROPERTY	$ex_mwnd_save // 一時的にメッセージウィンドウ柄を記憶
#PROPERTY	$ex_mwnd_save_flag // メッセージウィンドウ柄を１回でも変えたらフラグON

//----------------ボタンプッシュで使用

#PROPERTY	$btn_hit
#PROPERTY	$btn_push
#PROPERTY	$btn_decide

//----------------タイトル画面

#PROPERTY	$title_menu_page : int	//タイトルメニューのページ番号

//----------------回想モードおよびCGモード

//#PROPERTY	$kaisou_mode_flag : int //本編シナリオにも埋め込んでる	★未使用

#PROPERTY	$cg_mode_flag : int //★2023.03.02追加 イベントCG拡縮モード利用のためフラグをたてた



//----------------スタッフロール

#PROPERTY	$staffroll_chrno	:	int	//スタッフロールのキャラNO


//----------------体験版のときにONにするフラグ

#PROPERTY	$ls_taiken_flag : int



//ゲーム固有のフラグについては、9999_★★★メインフロー制御.inc にて

