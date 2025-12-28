//--------------------------
//立ち絵用エフェクト制作

//--------------------------
//レイヤー交換（立ち絵以外も使用可能）●立ち位置の前後変更に

#PROPERTY $layer_exchange_layerno

#MACRO	@layer_exchange(@Objno1,@Objno2)

			$layer_exchange_layerno = front.object[@Objno1].layer
			front.object[@Objno1].layer = front.object[@Objno2].layer
			front.object[@Objno2].layer = $layer_exchange_layerno


//--------------------------
//ジャンプ

#MACRO	@chr_jump_loop(@chr,@time(300),@power(50))
			
			if (1) {
				
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>
				front.object[$chr_tansaku_hit_objno].y_rep_eve[<chr_rep_jump>].turn(0,-@power,@time,0,2)
				
			}
		

#MACRO	@chr_jump_loopend(@chr)
			
			<chr_tansaku_check>
			front.object[$chr_tansaku_hit_objno].y_rep_eve[<chr_rep_jump>].end


#MACRO	@chr_jump(@chr,@time(250),@power(50))
			
			if (1) {
			
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].frame_action_ch[0].start(@time,"$obj_jump_fa",@power,@time,0)
			
			}
			

#MACRO	@chr_jump2(@chr,@time(250),@power(50))
			
			if (1) {
			
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].frame_action_ch[0].start(@time,"$obj_jump2_fa",@power,@time,0)
			
			}
			


//jump-xy指定版 2025.10.21 キャラを斜めにジャンプさせたいときなど

#MACRO	@chr_jump_xy(@chr,@time(250),@x,@y)
			
			if (1) {
			
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].frame_action_ch[0].start(@time,"$obj_jump_fa",@y,@time,@x)
			
			}

#MACRO	@chr_jump2_xy(@chr,@time(250),@x,@y)
			
			if (1) {
			
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].frame_action_ch[0].start(@time,"$obj_jump2_fa",@y,@time,@x)
			
			}


#COMMAND	$obj_jump_fa(frameaction,object,int,int,int)
#COMMAND	$obj_jump2_fa(frameaction,object,int,int,int)

//--------------------------
//クエイク

#MACRO	@chr_quake(@chr,@mode(0),@time(500),@power(50))

			if (1) {

				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].frame_action_ch[1].start(@time,"$obj_quake_fa",@mode,@power,@time)

			}

#COMMAND	$obj_quake_fa(frameaction,object,int,int,int)


//--------------------------
//くるっと反転

/*
	@hantenが奇数だと、反転しっぱなしになる
	極力この時間は短くするのが望ましいが、完全に無視する（反転を受け入れる）のも有り

*/

#MACRO	@chr_hanten(@chr,@hanten(1),@time(200))

			if (1) {
			
				if (check_wipe == 1) {wipe_end}
				<chr_tansaku_check>	

				front.object[$chr_tansaku_hit_objno].rotate_x_eve.set(1800 * @hanten,@time,0,0)
			
			}



//--------------------------
//キャラin & out
/*
	画面外からのキャラインなど。
	@CHRを「<nodisp>」で準備しておくことが前提。
	カメラワーク等と組み合わせると効果的。

	@CHR(jur1A_000,24,<nodisp>)
	@CHR_IN_R(jur)

*/


#PROPERTY $chr_move_chrname : str

#DEFINE	<chr_tansaku_check>		//@CHRにキャラ指定(3文字)か、ObjNo(2文字)が入っているかチェック

			$chr_move_chrname = @chr
			if ($chr_move_chrname.len == 3) {
				@chr_tansaku($chr_move_chrname)
			}else{	//objnoが入っていた場合（★２桁まで。"22"のように指定する
				$chr_tansaku_hit_objno = $chr_move_chrname.tonum
			}

#MACRO	@CHR_IN(@chr,@wait(1),@time(500))	//入れるだけ。事前にオーダーをいじりたい場合など

			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	

			front.object[$chr_tansaku_hit_objno].tr_eve.set(255,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].tr_eve.wait
			}
			

#MACRO	@CHR_IN_R(@chr,@wait(1),@time(500))
			
			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	
			front.object[$chr_tansaku_hit_objno].x_rep[<chr_inout_pos>] = 1920
			front.object[$chr_tansaku_hit_objno].tr = 255

			front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].set(0,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].wait
			}

#MACRO	@CHR_IN_L(@chr,@wait(1),@time(500))
			
			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	
			front.object[$chr_tansaku_hit_objno].x_rep[<chr_inout_pos>] = -1920
			front.object[$chr_tansaku_hit_objno].tr = 255

			front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].set(0,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].wait
			}

#MACRO	@CHR_BLACK_IN(@chr,@wait(1),@time(500))	//暗転のまま。戻すには再度@CHRで表示させる

			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	
			front.object[$chr_tansaku_hit_objno].dark = 255

			//表情を一旦非表示に
			front.object[$chr_tansaku_hit_objno].child[00].free
			front.object[$chr_tansaku_hit_objno].child[01].free
			front.object[$chr_tansaku_hit_objno].child[02].free
			front.object[$chr_tansaku_hit_objno].child[03].free
			front.object[$chr_tansaku_hit_objno].child[04].free

			front.object[$chr_tansaku_hit_objno].tr_eve.set(255,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].tr_eve.wait
			}


#MACRO	@CHR_OUT_R(@chr,@wait(1),@time(500))
			
			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	

			front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].set(1920,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].wait
			}

#MACRO	@CHR_OUT_L(@chr,@wait(1),@time(500))
			
			if (check_wipe == 1) {wipe_end}
			<chr_tansaku_check>	

			front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].set(-1920,@time,0,2)

			if (@wait == 1) {
				front.object[$chr_tansaku_hit_objno].x_rep_eve[<chr_inout_pos>].wait
			}


//--------------------------
//キャラを指定位置に移動
/*
	@CHRの固定立ち位置に移動する。20～36の初期値と連動する。
	layerやorderは変化させない。

*/
#PROPERTY $chr_move_pos


#MACRO @CHR_MOVE(@chr,@position(24),@wait(1),@time(500))

		if (check_wipe == 1) {wipe_end}

		<chr_tansaku_check>	

		switch(@position){
			case(24)	$chr_move_pos = <CHR_BUSTUP_C>
			case(23)	$chr_move_pos = <CHR_BUSTUP_L1>
			case(22)	$chr_move_pos = <CHR_BUSTUP_R1>
			case(21)	$chr_move_pos = <CHR_BUSTUP_L2>
			case(20)	$chr_move_pos = <CHR_BUSTUP_R2>
			case(34)	$chr_move_pos = <CHR_BUSTUP_C>
			case(33)	$chr_move_pos = <CHR_BUSTUP_L1>
			case(32)	$chr_move_pos = <CHR_BUSTUP_R1>
			case(31)	$chr_move_pos = <CHR_BUSTUP_L2>
			case(30)	$chr_move_pos = <CHR_BUSTUP_R2>
			case(35)	$chr_move_pos = <CHR_BUSTUP_R3>
			case(36)	$chr_move_pos = <CHR_BUSTUP_L3>
			default		$chr_move_pos = <CHR_BUSTUP_C>
		}

		front.object[$chr_tansaku_hit_objno].x_eve.set($chr_move_pos,@time,0,2)
		if (@wait == 1){
			if (@クリックでキャラの演出をスキップ == 1) {front.object[$chr_tansaku_hit_objno].x_eve.wait_key}
			else{front.object[$chr_tansaku_hit_objno].x_eve.wait}
		}




//------------------------------
//立ち絵演出の追加（2024以前のものから）

/*---
	
	立ち絵演出の追加命令、
	および過去作の演出命令の拡張版など。
	
	オブジェクトフレームアクションで作ることで、立ち絵以外でも使えるようにしたい
	
	※吹き出しアクション未制作（2024,3,7)

---*/

//-------------------------
//ガガーッと迫るような拡大

/*---------

	立ち絵の中心が初期値で下になっているため、
	立ち絵でこれを使う場合は中央補正座標をずらす必要がある
	
	front.object[30].set_center_rep(0,-1600)	//強引に合わせる
	@CHR_POS_Y(30,-120,0)	//強引に合わせる
	
	ずらした後で拡縮を別に行いたい場合は中央補正座標をもとに戻すこと
	
	@CHR_POS_Y(30,0,0)
	front.object[30].set_center_rep(0,0)


----------*/


#PROPERTY	$obj_action_approach_scale : intlist[20]
#PROPERTY	$obj_action_approach_tmp

#COMMAND	$obj_action_approach(frameaction,object)		//fa,obj

#MACRO		@obj_action_approach(@objno,@max_scale(1500),@min_scale(850))
				
				for($obj_action_approach_tmp = 0,$obj_action_approach_tmp < 20,$obj_action_approach_tmp+=1) {
				
					if ($obj_action_approach_tmp % 2 == 0) {$obj_action_approach_scale[$obj_action_approach_tmp] = math.rand(1000,@max_scale)}
					else{$obj_action_approach_scale[$obj_action_approach_tmp] = math.rand(@min_scale,950)}
				
				}
				front.object[@objno].frame_action.start(-1,"$obj_action_approach")


#MACRO		@obj_action_approach_end(@objno,@scale(1000))
					front.object[@objno].frame_action.end
					front.object[@objno].set_scale(@scale,@scale)


//-------------------------
//明滅（透明度）

/*---

		mode = 0 :消える mode = 1 現れる
		tr: mode=0のときは最初のtr値、mode=1のときは最終的なtr値
		
		@retioは明滅スピード。値が高いほど明滅が遅い。デフォルトは50。最大で120まで。

---*/

#COMMAND	$obj_action_flickering(frameaction,object,int,int,int)

#MACRO		@obj_action_flickering(@objno,@mode,@tr,@retio)
				
				front.object[@objno].frame_action.start(1000,"$obj_action_flickering",@mode,@tr,@retio)


#MACRO		@obj_action_flick_in(@objno,@tr(255),@retio(50))		@obj_action_flickering(@objno,1,@tr,math.min(@retio,120))	//現れる
#MACRO		@obj_action_flick_out(@objno,@tr(255),@retio(50))		@obj_action_flickering(@objno,0,@tr,math.min(@retio,120))	//消える


//-------------------------
//明滅（bright&dark）

/*---

	選択肢の決定後など、bright&darkを使ったバージョン
	
	front.object[@objno].frame_action.start(1000,"$obj_action_flickering",@mode,@power,@retio)
	
	mode = 0:bright
	mode = 1:dark
	
	@power は明るさ／暗さ
	@ratio は明滅スピード

---*/

#COMMAND	$obj_action_flickering2(frameaction,object,int,int,int)

