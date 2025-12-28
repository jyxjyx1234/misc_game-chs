//--------------------------------------
//カメラワーク

/*----------

	screen.effectを使用したカメラワークエフェクト命令群。
	
	キャラの立ち位置を指定するものは
	
	4：中央
	3：左
	2：右
	1：最も左
	0：最も右
	
	

	キャラの移動は @chr_old_POS_X & Yを使うこと。(_★立ち絵表示システム拡張.inc)

	拡縮は @chr_old_SCALE
	
	他にも _★立ち絵表示システム拡張 との連携は多い(CHR_BUSTUP3など）のでチェックすること

------------*/

#PROPERTY	$cw_tmp
#PROPERTY	$cw_tmp2

#PROPERTY	$cw_pos1
#PROPERTY	$cw_pos2
#PROPERTY	$cw_pos3
#PROPERTY	$cw_pos4



//★初期化

#MACRO	@camera_work_init
			
			screen.effect[0].init

			screen.effect[0].begin_order = <order_normal>
			screen.effect[0].end_order = <order_chrcg_front>

			screen.effect[0].end_layer = 49 //背景～立ち絵まで
			

//★基本形 背景とキャラを同時に動かすカメラワーク

#MACRO	@camera_work(@pos(4),@time(500),@speed_mode(2),@pos_rep_x(0))
			
			close
			
			$cw_tmp = 0
			$cw_tmp2 = 0
			$cw_pos1 = 0
			$cw_pos2 = 0
			$cw_pos3 = 0
			$cw_pos4 = 0
			
			
			
			switch(@pos) {
			
				case(3)
					$cw_pos1 = 75
					$cw_pos2 = @pos_rep_x
					$cw_pos3 = 90
					$cw_pos4 = 100
				
				case(2)
					$cw_pos1 = -75
					$cw_pos2 = @pos_rep_x
					$cw_pos3 = -90
					$cw_pos4 = -100
				case(1)
					$cw_pos1 = 150
					$cw_pos2 = @pos_rep_x
					$cw_pos3 = 175
					$cw_pos4 = 200
					
				case(0)
					$cw_pos1 = -150
					$cw_pos2 = @pos_rep_x
					$cw_pos3 = -175
					$cw_pos4 = -200
				
				default
					$cw_pos1 = 0
					$cw_pos2 = 0
					$cw_pos3 = 0
					$cw_pos4 = 0
					
					
			
			}
			
			$cw_tmp2 = math.limit(-80,$cw_pos4,80)
			
			
			for($cw_tmp = 20,$cw_tmp <= 24,$cw_tmp += 1) {
					
				if (front.object[$cw_tmp].exist_type != 1) {continue}
				
				front.object[$cw_tmp].x_rep_eve[16].set($cw_pos3,@time,0,@speed_mode)
				front.object[$cw_tmp].x_rep_eve[17].set($cw_pos2,@time,0,@speed_mode)
				
				$cw_tmp2 = math.limit(-120,$cw_pos4,120)
			
			}
			
			for($cw_tmp = 30,$cw_tmp <= 34,$cw_tmp += 1) {
					
				if (front.object[$cw_tmp].exist_type != 1) {continue}
				
				front.object[$cw_tmp].x_rep_eve[16].set($cw_pos1,@time,0,@speed_mode)
				front.object[$cw_tmp].x_rep_eve[17].set($cw_pos2,@time,0,@speed_mode)
				
				$cw_tmp2 = math.limit(-240,$cw_pos4,240)
			
			}
			screen.effect[0].begin_order = <order_normal>
			screen.effect[0].end_order = <order_chr_effect>
			screen.effect[0].x_eve.set($cw_tmp2,@time,0,@speed_mode)
	


//★拡縮 chr&bst 統合版	☆2024.04.12	立ち絵表示時にも使用する

#MACRO	@camera_work_chrsize(@ObjNo(24),@scale(<chr_bst_scaling>),@time(500),@mode(2),@stage(1))
			
			if (stage[@stage].object[@ObjNo].exist_type == 1) {

				stage[@stage].object[@ObjNo].y_rep_eve[16].set(<chr_scaling_calculation>,@time,0,@mode)
				stage[@stage].object[@ObjNo].scale_x_eve.set(@scale,@time,0,@mode)
				stage[@stage].object[@ObjNo].scale_y_eve.set(@scale,@time,0,@mode)
				
			}

//☆デフォルトobjnoを34⇒24に変更したので注意


#MACRO	@camera_work_chrsize_sssss(@ObjNo(24),@time(500),@mode(2),@stage(1)) 		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_sssss>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_ssss(@ObjNo(24),@time(500),@mode(2),@stage(1)) 		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_ssss>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_sss(@ObjNo(24),@time(500),@mode(2),@stage(1)) 		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_sss>,@time,@mode,@stage)

//標準立ち絵サイズ
#MACRO	@camera_work_chrsize_ss(@ObjNo(24),@time(500),@mode(2),@stage(1)) 		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_ss>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_s(@ObjNo(24),@time(500),@mode(2),@stage(1)) 			@camera_work_chrsize(@ObjNo,<chr_bst_scaling_s>,@time,@mode,@stage)

//標準バストアップサイズ
#MACRO	@camera_work_chrsize_n(@ObjNo(24),@time(500),@mode(2),@stage(1))			@camera_work_chrsize(@ObjNo,<chr_bst_scaling> ,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_b(@ObjNo(24),@time(500),@mode(2),@stage(1))			@camera_work_chrsize(@ObjNo,<chr_bst_scaling_b> ,@time,@mode,@stage)
						
#MACRO	@camera_work_chrsize_bb(@ObjNo(24),@time(500),@mode(2),@stage(1))			@camera_work_chrsize(@ObjNo,<chr_bst_scaling_bb>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_bbb(@ObjNo(24),@time(500),@mode(2),@stage(1))		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_bbb>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_bbbb(@ObjNo(24),@time(500),@mode(2),@stage(1))		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_bbbb>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_bbbbb(@ObjNo(24),@time(500),@mode(2),@stage(1))		@camera_work_chrsize(@ObjNo,<chr_bst_scaling_bbbbb>,@time,@mode,@stage)

#MACRO	@camera_work_chrsize_wait(@ObjNo(24))	front.object[@ObjNo].scale_x_eve.wait_key front.object[@ObjNo].scale_y_eve.end



//★キャラを消す

#MACRO	@camera_work_chr_erase(@ObjNO(24),@mode(0),@speed(250))
			
			switch(@mode){
			
				case(0)	//移動なし
			
				case(1)	//上
				
					front.object[@ObjNO].y_rep_eve[0].set(-100,@speed,0,2)
				
				case(2)	//左
				
					front.object[@ObjNO].x_rep_eve[0].set(-100,@speed,0,2)
				
				case(3)	//右
				
					front.object[@ObjNO].x_rep_eve[0].set( 100,@speed,0,2)
				
				case(4)	//下
				
					front.object[@ObjNO].y_rep_eve[0].set( 100,@speed,0,2)
			
			}
			
			front.object[@ObjNO].tr_eve.set(0,@speed,0,2)


#MACRO	@camera_work_chr_erase_wait(@ObjNo(24))		front.object[@ObjNO].tr_eve.wait_key


//★背景のみ拡縮（キャラが居ないとき用）

#MACRO	@camera_work_bgsize(@scale(1000),@time(500),@mode(2))
			
			front.object[0].scale_x_eve.set(@scale,@time,0,2)
			front.object[0].scale_y_eve.set(@scale,@time,0,2)

#MACRO	@camera_work_bgsize_s(@time(500),@mode(2))	@camera_work_bgsize(<scale-1_ampli>,@time,@mode)					//ほぼ横移動出来ないので注意
#MACRO	@camera_work_bgsize_n(@time(500),@mode(2))	@camera_work_bgsize(<scale00_ampli>,@time,@mode)		//1080
#MACRO	@camera_work_bgsize_b(@time(500),@mode(2))	@camera_work_bgsize(<scale01_ampli>,@time,@mode)		//1200
#MACRO	@camera_work_bgsize_bb(@time(500),@mode(2))	@camera_work_bgsize(<scale02_ampli>,@time,@mode)		//1500
#MACRO	@camera_work_bgsize_bbb(@time(500),@mode(2))	@camera_work_bgsize(<scale03_ampli>,@time,@mode)		//1700


#MACRO	@camera_work_bgsize_wait_bgonly 		front.object[0].scale_x_eve.wait_key front.object[0].scale_y_eve.end


#PROPERTY	$chr_eve_tmp
#MACRO	@camera_work_bgsize_wait 		@camera_work_bgsize_wait_bgonly		//キャラ大きさも同時にkey操作によりイベント終わるようにした
										for ($chr_eve_tmp=24,$chr_eve_tmp>=20,$chr_eve_tmp-=1){
											if (front.object[$chr_eve_tmp].exist_type == 1) {
												front.object[$chr_eve_tmp].y_rep_eve[16].end
												front.object[$chr_eve_tmp].scale_x_eve.end
												front.object[$chr_eve_tmp].scale_y_eve.end
											}
										}
										for ($chr_eve_tmp=34,$chr_eve_tmp>=30,$chr_eve_tmp-=1){
											if (front.object[$chr_eve_tmp].exist_type == 1) {
												front.object[$chr_eve_tmp].y_rep_eve[16].end
												front.object[$chr_eve_tmp].scale_x_eve.end
												front.object[$chr_eve_tmp].scale_y_eve.end
											}
										}



//★背景のみ移動（キャラと別々に動かすとき用）	//★背景サイズは1440x800想定なので注意。演出時に上下左右に黒ライン見えてないか確認

#MACRO	@camera_work_bgpos(@pos_x(0),@pos_y(0),@time(500),@mode(2),@stage(1))

			stage[@stage].object[0].x_rep_eve[18].set(@pos_x,@time,0,@mode)
			stage[@stage].object[0].y_rep_eve[18].set(@pos_y,@time,0,@mode)
			
#MACRO	@camera_work_bgpos_x(@pos_x(0),@time(500),@mode(2),@stage(1))	stage[@stage].object[0].x_rep_eve[18].set(@pos_x,@time,0,@mode)
#MACRO	@camera_work_bgpos_y(@pos_y(0),@time(500),@mode(2),@stage(1))	stage[@stage].object[0].y_rep_eve[18].set(@pos_y,@time,0,@mode)

#MACRO	@camera_work_bgpos_x_wait	front.object[0].x_rep_eve[18].wait_key
#MACRO	@camera_work_bgpos_y_wait	front.object[0].y_rep_eve[18].wait_key




//★背景ウェイト

#MACRO	@camera_work_wait	screen.effect[0].x_eve.wait_key screen.effect[0].y_eve.end


//★すべて元の位置に戻す

#MACRO	@camera_work_default(@time(0))
			
			close
			
			@camera_work_bgpos_x(0,@time / 2,2) TIMEWAIT(@time / 2)
			@camera_work_bgpos_y(0,@time / 2,2) TIMEWAIT(@time / 2)
			
			@camera_work(4,@time / 2)
			@camera_work_wait
			
			@camera_work_chrsize(34,<chr_bst_scaling>,@time)
			@camera_work_chrsize(33,<chr_bst_scaling>,@time)
			@camera_work_chrsize(32,<chr_bst_scaling>,@time)
			@camera_work_chrsize(31,<chr_bst_scaling>,@time)
			@camera_work_chrsize(30,<chr_bst_scaling>,@time)
			
			@camera_work_chrsize(24,<chr_tcg_scaling>,@time)
			@camera_work_chrsize(23,<chr_tcg_scaling>,@time)
			@camera_work_chrsize(24,<chr_tcg_scaling>,@time)
			@camera_work_chrsize(21,<chr_tcg_scaling>,@time)
			@camera_work_chrsize(20,<chr_tcg_scaling>,@time)
			
			@camera_work_bgsize(1000,@time)
			@camera_work_bgsize_wait



//------------------------------------
//バストアップ拡縮表示
/*
 * 表示と同時に大きさを変えておきたい場合は、
 * 
 * @CHR(nozXA_000,<nowipe>)
 * @CHR_SCALE(500,24)
 * @CHR_WIPE_ONLY
 * 
 * 基本的には表示後のキャラスケールは「カメラワーク」を使うので
 * 表示と同時用の命令としていいかもしれない
 */


#MACRO	@CHR_SCALE(@Scale,@ObjNo(24),@TIME(0),@stage(0))

		stage[@stage].object[@ObjNo].y_rep_eve[16].set(<chr_scaling_calculation>,@time,0,2)
		
		stage[@stage].object[@ObjNo].scale_x_eve.set(@scale,@Time,0,2)
		stage[@stage].object[@ObjNo].scale_y_eve.set(@scale,@Time,0,2)


//★キャラ位置変更

#MACRO	@CHR_POS(@pos_x(0),@pos_y(0),@ObjNo(24),@stage(0),@Time(0),@wait_x(0),@wait_y(0))

			if (@pos_x != -1)	{
				stage[@stage].object[@ObjNo].x_rep_eve[<chr_rep_pos>].set(@pos_x,@time,0,2)
				if (@wait_x == 1) { 
					stage[@stage].object[@ObjNo].x_rep_eve[<chr_rep_pos>].wait_key
					stage[@stage].object[@ObjNo].y_rep_eve[<chr_rep_pos>].end
				}
			}

			if (@pos_y != -1)	{
				stage[@stage].object[@ObjNo].y_rep_eve[<chr_rep_pos>].set(@pos_y,@time,0,2)
				if (@wait_y == 1) { stage[@stage].object[@ObjNo].y_rep_eve[<chr_rep_pos>].wait_key }
			}


//------------------------------------
//上下パン演出
/*
 * キャラ全身を眺めるための単純な上下パン演出。
 * 画面全体を動かす。
 * デフォルトでは通常バストアップを想定。
 */

#DEFINE	<limit_bg_pos_y>	-100
#DEFINE <limit_chr_pos_y>	-720

#PROPERTY $udpan_tmp

#MACRO @camera_work_chr_udpan_show(@Power,@Time)

	@camera_work_bgpos_y(math.limit(<limit_bg_pos_y>,math.linear(-@power,<limit_chr_pos_y>,<limit_bg_pos_y>,-<limit_chr_pos_y>,-<limit_bg_pos_y>),-<limit_bg_pos_y>),@Time)

	for ($udpan_tmp = 20,$udpan_tmp<=34,$udpan_tmp+=1){
		if (front.object[$udpan_tmp].exist_type == 1) {
			if (front.object[$udpan_tmp].scale_x > <chr_bst_scaling>) {	//バストアップより大きいときは制約なし
				@chr_pos(-1,-@power,$udpan_tmp,1,@Time)
			
			}elseif (front.object[$udpan_tmp].scale_x > <chr_tcg_scaling>){
				@chr_pos(-1,math.limit(-<limit_chr_pos_y>,-@power,<limit_chr_pos_y>),$udpan_tmp,1,@Time)
				
			}else{
				@chr_pos(-1,math.limit(-<limit_chr_pos_y>/2,-@power/2,<limit_chr_pos_y>/2),$udpan_tmp,1,@Time)

			}
		}
	}

	@camera_work_bgpos_y_wait

	for ($udpan_tmp = 20,$udpan_tmp<=34,$udpan_tmp+=1){
		if (front.object[$udpan_tmp].exist_type == 1) {front.object[$udpan_tmp].y_rep_eve[<chr_rep_pos>].end }
	}


#MACRO @camera_work_chr_udpan_show_start(@power(700),@Time(1000)) @camera_work_chr_udpan_show(@Power,@Time)
#MACRO @camera_work_chr_udpan_show_end(@power(0),@Time(1000)) @camera_work_chr_udpan_show(@Power,@Time)




//-----------------------
//以下、以前のをメモ代わりに残しておく、今と仕様が違うかもなので注意（カメラは以下のとおりのrepを使ってる）
/*---

	キャラ表示時に使用しているrep一覧（キャラ＆背景共通）
	
	rep[0]	：ジャンプ時に使用
	rep[1]	：クエイク時に使用
	rep[2]	：過去作のキャラ位置補正に使用、今は未使用状態？
	rep[3]	：
	rep[4]	：立ち絵の上下パンに使用
	rep[5]	：立ち絵のキャラごとの立ち位置調整（y:縦）に使用
	
	rep[6]	: 注視に使用
	rep[7]	: 同上
	rep[8]	: 同上


	rep[16]	：カメラワークに使用	主に配置の自動計算用
	rep[17]	：同上					主に配置の自動計算用
	rep[18]	：同上		自由な配置移動に使う
	
	rep[19]	: 上下呼吸表現のみに使用（常時拡縮からこちらに変更した） <chr_rep_kokyu_no>

---*/

