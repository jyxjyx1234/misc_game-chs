//CGモードなどのシステム関係の定義


#PROPERTY	$cg_mode_in	:	int		//CGモードに入ったら1

#PROPERTY	$chr_old_tansaku_flag	//	@ft_old等でキャラ探索を行った際、無かったときに止めるか否か　止める = 0 止めない = 1 ★★通常は0で
#PROPERTY	$chr_old_tansaku_check	//	$chr_old_tansaku_flag = 1 の状態で、キャラが無かったときに、$chr_old_tansaku_check = -1を返す

#PROPERTY	$chr_old_test_mode_in  : int 		//立ち絵テストモードに入ったら1


//----------------------------------------
//ルビ（ルビを使用しないウィンドウを指定する）


#MACRO	@ruby(@moji(""))
		if (get_mwnd != 3 && get_mwnd != 4)  {
			if (@moji != "") {ruby(@moji)} else {ruby}
		}


//======================================================
//-----------フレームアクションを終了する

#MACRO		@fa_end		frame_action_ch[0].end
						frame_action_ch[1].end
						frame_action_ch[2].end
						frame_action_ch[3].end
						
						frame_action_ch[8].end

#MACRO		@fa_last_end	frame_action_ch[4].end		//@BGのワイプ後に挿入 ここに入れるものにはrepやchild等を使わないこと（エラーが出る）


//======================================================
//-----------画面フラッシュ

#MACRO		@All_Flash
				screen.effect[0].init
				screen.effect[0].bright = 255
				screen.effect[0].bright_eve.set(0,250,0,2)


//======================================================
//-----------２桁の１６進数を１０進数に変換（主にRGB用）

#COMMAND	$HEXA_to_DECI(str)


//======================================================
//-----------文字列の後ろｎ文字をカットする

#COMMAND	$str_tail_cut(str,int) : str


//======================================================
//-----------特定の文字列の間の文字を取り出す

#COMMAND	$str_search_and_get(str,str,str) : str


//======================================================
//-----------システムメッセージの表示

#COMMAND	$system_message(str,int)	//str,y
#MACRO		@system_message(@str,@y(627))	$system_message(@str,@y)


#MACRO		@system_message_off front.object[<system_message_obj>].init



//======================================================
//-----------チェックボックスの表示

#DEFINE		<check_box_obj>	480			//暫定
#DEFINE		<check_box_btn_group>	15  //チェックボックス専用のボタンオブジェクトグループ

#COMMAND	$check_box(int,str,str) : int

//----------------------------
//ボタン汎用設定

#PROPERTY	$LS_btn0_hit
#PROPERTY	$LS_btn1_hit
#PROPERTY	$LS_btn2_hit
#PROPERTY	$LS_btn3_hit
#PROPERTY	$LS_btn4_hit
#PROPERTY	$LS_btn5_hit
#PROPERTY	$LS_btn6_hit

#PROPERTY	$LS_btn0_push
#PROPERTY	$LS_btn1_push
#PROPERTY	$LS_btn2_push
#PROPERTY	$LS_btn3_push
#PROPERTY	$LS_btn4_push
#PROPERTY	$LS_btn5_push
#PROPERTY	$LS_btn6_push

#PROPERTY	$LS_btn0_decided
#PROPERTY	$LS_btn1_decided
#PROPERTY	$LS_btn2_decided
#PROPERTY	$LS_btn3_decided
#PROPERTY	$LS_btn4_decided
#PROPERTY	$LS_btn5_decided
#PROPERTY	$LS_btn6_decided

#PROPERTY	$LS_btn_break

#MACRO @LS_btn_reset	$LS_btn0_hit = 0
						$LS_btn1_hit = 0
						$LS_btn2_hit = 0
						$LS_btn3_hit = 0
						$LS_btn4_hit = 0
						$LS_btn5_hit = 0
						$LS_btn6_hit = 0

						$LS_btn0_push = 0
						$LS_btn1_push = 0
						$LS_btn2_push = 0
						$LS_btn3_push = 0
						$LS_btn4_push = 0
						$LS_btn5_push = 0
						$LS_btn6_push = 0

						$LS_btn0_decided = 0
						$LS_btn1_decided = 0
						$LS_btn2_decided = 0
						$LS_btn3_decided = 0
						$LS_btn4_decided = 0
						$LS_btn5_decided = 0
						$LS_btn6_decided = 0
						
						$LS_btn_break = 0

						front.objbtngroup[0].init
						front.objbtngroup[1].init
						front.objbtngroup[2].init
						front.objbtngroup[3].init
						front.objbtngroup[4].init
						front.objbtngroup[5].init
						front.objbtngroup[6].init



#PROPERTY $debug_check
#PROPERTY $debug_h_root_check


//----------------------------
//TIMEWAIT	★2024.03.05
/*
	TIMEWAIT_KEYと同じ。
	基本的に今後すべてTIMEWAITはこちらを使う

	将来的に％時短できるようになればいいな…
	
	★2024.03.19
	
	以下のものをkeywaitか通常waitか、コンフィグで切り替えられるようにした
	
	@timewait_cg(@time(1000))	@クリックでイベントＣＧの演出をスキップ
	@timewait_chr(@time(1000))		@クリックでキャラの演出をスキップ
	@timewait_bg(@time(1000))		@クリックで背景の演出をスキップ
	
	各命令内では上記を使用する。	
	
 */

#MACRO	@timewait(@time(2000))	TIMEWAIT_KEY(@time)

//フラグが立ってたらクリックで飛ばせる

#MACRO	@timewait_flag(@time(2000),@flag(1)) if (@flag == 0) {TIMEWAIT(@time)} else {TIMEWAIT_KEY(@time)}

#MACRO	@timewait_cg(@time(2000)) 
			if (@クリックでイベントＣＧの演出をスキップ == 1) {@timewait(@time)}else{TIMEWAIT(@time)}

#MACRO	@timewait_chr(@time(2000))
			if (@クリックでキャラの演出をスキップ == 1) {@timewait(@time)}else{TIMEWAIT(@time)}
			
#MACRO	@timewait_bg(@time(2000))
			if (@クリックで背景の演出をスキップ == 1) {@timewait(@time)}else{TIMEWAIT(@time)}
			



