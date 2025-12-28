
//-----------------------
//オーダーメモ（★2023.09.12版）

/*---

	以下のように定義し直す。

	order = 0 	:	背景およびイベントＣＧ
	order = 1	:	背景エフェクトムービー
	order = 2	:	立ち絵後ろ
	order = 3	:	立ち絵

	order = 4	:	立ち絵のサブオーダー	★20250912追加※使用してない
	
	order = 5	:	立ち絵より前面のエフェクトムービー
	
		▼以下、カメラワーク無影響
	
	order = 6	:	立ち絵利用画像表示、およびカットイン
	order = 7	:	立ち絵利用画像表示、およびカットイン


		▼以下、@BGによるワイプ無影響

	order = 8	:	スタッフロールなど特殊演出系
	
	order = 9	:	スクリーンエフェクト前面（セピアにするなど）
	order = 10	:	スクリーンエフェクト通常（画面全体白化するなど）
	order = 11	:	場所や時間などのタグ表示
	
	order = 12	:	トランジション	
	order = 13	:	選択肢
	
	order = 14	:	メッセージウィンドウ

---*/

#DEFINE	<order_normal>			0
#DEFINE	<order_omv_effect>		1
#DEFINE	<order_chrcg_back>		2
#DEFINE	<order_chr>				3
#DEFINE	<order_chr_sub>			4
#DEFINE	<order_chr_effect>		5

#DEFINE	<order_chrcg_front2>	6
#DEFINE	<order_chrcg_front>		7

#DEFINE	<order_staffroll>		8

#DEFINE	<order_screen_front>	9
#DEFINE	<order_screen_normal>	10
#DEFINE	<order_tag>				11

#DEFINE	<order_transition>		12
#DEFINE	<order_sentaku>			13
#DEFINE	<order_message>			14



//-----------------------
//立ち絵repメモ（★2023.09.14以降）
/*
 * 16,17 : カメラワーク
 */

#DEFINE	<chr_rep_jump>	1
#DEFINE	<chr_rep_quake>	2
#DEFINE	<chr_rep_pos>	3		//汎用移動・初期位置もこれ
#DEFINE	<chr_inout_pos>	4		//キャライン＆アウト用に使用




//-----------------------
//背景repメモ（★2023.09.14以降）



//------------------------------------
//よく使うObj一覧

#DEFINE	<cutin_obj>	50		//orderは <order_chrcg_front>



//------------------------------------
//@HKCHR命令関係でワイプされないObj一覧

/*---

	現在のobjNoの最大値は499。

	ObjNo が 251～289の場合は、@HKCHR系列でワイプされない。
	それらの番号一覧。
	
	@BG命令でワイプされる	※@BG(_)でキャラを消す時だけはワイプされない。
	
	ObjNo が 290～299の場合は、@BG命令でもワイプされない。消し忘れ注意。

	
---*/


#DEFINE	<max_obj_number>	499
#DEFINE	<no_wipe_bg_objno_min>	290
#DEFINE	<no_wipe_bg_objno_max>	299






//★ムービー用 ★2023.1.23追加

#DEFINE	<omv_effect_obj>	251


//★画面フィルタ

#DEFINE	<filter_objno>	252



//★エンディング文章フィルタ

#DEFINE <end_staffroll_back>	220
#DEFINE <end_moji>		221
#DEFINE <end_staffroll>		222


//★　いもうと美姫ちゃん、イベントCG時のチャット用
#DEFINE	<ev_chat_objno>		225


//★白や黒のフィルタ（ノベルモードセンタリング版などの見やすさ用）

#DEFINE	<bg_novelbg_objno>	282


//★薄目フィルタ

#DEFINE <bg_usume_objno>	283


//★目閉じ明けフィルタ

#DEFINE <bg_eyeopen_objno>	284


//★白黒暗転の後ろでいろいろやりたい時用	白フラッシュなどにも使用している

#DEFINE <bg_wandb_objno>	285


//☆スライダー

#DEFINE <slider_obj>	286




//★日付表示用

#DEFINE	<day_disp_objno>	397

//★トランジション用

#DEFINE <transition_objno>	398


//★シーンタイトル

#DEFINE	<scene_title_objno>	399



//★スキップとオートのアイコン表示

#DEFINE	<mark_auto>		493
#DEFINE	<mark_skip>		494

//★ヘルプテキスト

#DEFINE	<help_txt_objno>	495
#DEFINE	<help_txt_objno2>	496
#DEFINE	<help_txt_objno_wm>	497		//ウィンドウメニュー用

//★デバッグ文字

#DEFINE <debug_objno>	498

//★システムメッセージ（セーブ・ロードとか）

#DEFINE		<system_message_obj>	499



//------------------------------------
//スペースキーで消せるObj一覧

/*---

gameexe.ini と設定を合わせること

299以降を使うこと

---*/

//★専用メニューオブジェクト（デジタル原画集用）

#DEFINE <digital_btn_menu_obj>	400
#DEFINE <digital_comment_obj>	401


