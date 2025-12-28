//--------------------------------
//立ち絵データベース・キャラリスト

#PROPERTY	$chr_face_list_objno
//#COMMAND	$cbs_mki(int)
#COMMAND	$cbs_jur(int)
#COMMAND	$cbs_kas(int)



#MACRO	@chr_face_list(@objno)

			switch($chr_filename_chr[@objno]) {	//キャラリスト
			
				//case("miz") @cbs_miz(@objno)	
				
				//case("noz") $cbs_noz(@objno)
				//case("ura") $cbs_ura(@objno)
				
				//case("kan") $cbs_kan(@objno)
				
//				case("mki") $cbs_mki(@objno)

				case("jur") $cbs_jur(@objno)
				case("kas") $cbs_kas(@objno)


			}



//--------------------------------
//立ち絵表示制御

/*--

	立ち絵表示を簡略化。

	■立ち位置はobjnoによって初期位置固定。以下の通り。
	
		21＜23＜24＞22＞20	：立ち絵
		
		31＜33＜34＞32＞30	：バストアップ
		
		40以降はカットインなど、マスクを併用することを想定。（ひとまず置いておく）
	
	■orderは背景より前で固定。<order_chr>
	
	■ファイル名は「bst_」で統一。
	
		※bst_ は省略可能
		
			bst_nozXA_000
			nozXA_000		★こっちもＯＫ（自動で bst_ が前に挿入される）
	
	■CHR命令のobjnoによって立ち絵とバストアップにわかれる（CHR_BUSTUPを使わない)
	
	■ワイプするかどうかを決められるようにした
	
		キャラを複数一気に表示したり、背景と同時に表示する際に、@wipe = <nowipe>と入れる
	
	■表情パーツの直接入力を可能にした
	
	
	@CHR(@filename,@objno(24),@wipe(1),@mayu(""),@eye(""),@mouth(""))
	@fts	//←★表示したCHRの顔グラを表示したい場合に。詳しくは「フェイスターゲット」参照。


---*/


#DEFINE		<nowipe>	0
#DEFINE		<nodisp>	2		//透明(tr=0)で用意だけする tr.eveで255にする前提

#DEFINE		<mabataki_max>	9	//瞬きganアニメの個数
#DEFINE		<chr_frameaction_ch_max>	3




#DEFINE		<chr_bst_scaling>	950		//基本大きさ
#DEFINE		<chr_tcg_scaling>	<chr_bst_scaling>-200		//立ち絵の時のキャラの大きさ

//以下、カメラワークで使用中

#DEFINE		<chr_bst_scaling_sssss>	<chr_bst_scaling>-500
#DEFINE		<chr_bst_scaling_ssss>	<chr_bst_scaling>-400
#DEFINE		<chr_bst_scaling_sss>	<chr_bst_scaling>-300
#DEFINE		<chr_bst_scaling_ss>	<chr_bst_scaling>-200		// = <chr_tcg_scaling>
#DEFINE		<chr_bst_scaling_s>		<chr_bst_scaling>-100
//#DEFINE		<chr_bst_scaling>	950		//基本大きさ
#DEFINE		<chr_bst_scaling_b>		<chr_bst_scaling>+50
#DEFINE		<chr_bst_scaling_bb>	<chr_bst_scaling>+150
#DEFINE		<chr_bst_scaling_bbb>	<chr_bst_scaling>+250
#DEFINE		<chr_bst_scaling_bbbb>	<chr_bst_scaling>+350
#DEFINE		<chr_bst_scaling_bbbbb>	<chr_bst_scaling>+450



#DEFINE		<CHR_BUSTUP_C>	950	//バストアップキャラ中央
#DEFINE		<CHR_BUSTUP_L1>	600
#DEFINE		<CHR_BUSTUP_R1>	1320
#DEFINE		<CHR_BUSTUP_L2>	390
#DEFINE		<CHR_BUSTUP_R2>	1530
#DEFINE		<CHR_BUSTUP_Y>	1850	//バストアップキャラ縦軸

#DEFINE		<CHR_BUSTUP_R3>	1650
#DEFINE		<CHR_BUSTUP_L3>	270


#DEFINE		<chr_obj_startindex>	20
#DEFINE		<chr_obj_endindex>		50
#DEFINE		<chr_obj_ftindex>		0		//フェイスターゲット一時格納用用Objno
#DEFINE		<chr_obj_faceindex>		1		//顔グラ一時格納用用Objno


#PROPERTY	$chr_filename			: strlist[<chr_obj_endindex>]		//ベースファイルネーム
#PROPERTY	$chr_filename_chr		: strlist[<chr_obj_endindex>]		//キャラ名
#PROPERTY	$chr_filename_fukusou	: strlist[<chr_obj_endindex>]		//服装
#PROPERTY	$chr_filename_pose		: strlist[<chr_obj_endindex>]		//ポーズ
#PROPERTY	$chr_filename_effect	: strlist[<chr_obj_endindex>]		//感情エフェクト
#PROPERTY	$chr_filename_face		: strlist[<chr_obj_endindex>]		//顔
#PROPERTY	$chr_filename_chr_base	: strlist[<chr_obj_endindex>]		//bst_mizXAまで合成

#PROPERTY	$chr_filename_split_mayu	: strlist[<chr_obj_endindex>]		//眉の直入力
#PROPERTY	$chr_filename_split_eye		: strlist[<chr_obj_endindex>]		//目の直入力
#PROPERTY	$chr_filename_split_mouth	: strlist[<chr_obj_endindex>]		//口の直入力

#MACRO		@cbs_base_set(@a1(""),@b1(""),@c1(""),@d1(""),@e1(""),@f1(""))
					$cbs_base[0] = @a1
					$cbs_base[1] = @b1
					$cbs_base[2] = @c1
					$cbs_base[3] = @d1
					$cbs_base[4] = @e1
					$cbs_base[5] = @f1

#MACRO		@cbs_set(@a(""),@b(""),@c(""),@d(""),@e(""),@f(""))
					$cbs_patno[0] = @a
					$cbs_patno[1] = @b
					$cbs_patno[2] = @c
					$cbs_patno[3] = @d
					$cbs_patno[4] = @e
					$cbs_patno[5] = @f


#PROPERTY	$chr_tmp
#PROPERTY	$chr_str_tmp : str

#PROPERTY	$chr_init_pos_x
#PROPERTY	$chr_init_pos_y
#PROPERTY	$chr_init_scale
#PROPERTY	$bg_scale_chr		//キャラ描画時の背景拡大率

//パーツ番号のみで判別する

#PROPERTY	$cbs_patno : strlist[6]
#PROPERTY	$cbs_base : strlist[6]

#MACRO	@chr_filename_split(@filename,@objno)		//ファイル名の分割と服装判断

			$chr_str_tmp = @filename
			$chr_filename[@objno]			= $chr_str_tmp
			$chr_filename_chr[@objno]		= $chr_str_tmp.mid(4,3)
			$chr_filename_fukusou[@objno]	= $chr_str_tmp.mid(7,1)
			$chr_filename_pose[@objno]		= $chr_str_tmp.mid(8,1)
			$chr_filename_effect[@objno]	= $chr_str_tmp.mid(10,1)
			$chr_filename_face[@objno]		= $chr_str_tmp.mid(11,2)
			
			if ($chr_filename_fukusou[@objno] == "X") {
			
				switch($chr_filename_chr[@objno]) {		//★キャラ分用意する
				
					//case("kan")	$chr_filename_fukusou[@objno] = $chr_fukusou[0]
					case("jur")	$chr_filename_fukusou[@objno] = $chr_fukusou[0]
					case("kas")	$chr_filename_fukusou[@objno] = $chr_fukusou[1]

				
				}
				
				$chr_filename_chr_base[@objno] = "bst_"+$chr_filename_chr[@objno]+$chr_filename_fukusou[@objno]+$chr_filename_pose[@objno]
			
			
			}else {
						
				$chr_filename_chr_base[@objno]	= $chr_str_tmp.mid(0,9)
			
			}
			


#PROPERTY	$chr_Blend_Sys_childobj : strlist[6]
#PROPERTY	$chr_filename_tmp : str

#MACRO	@chr_blend_sys_set(@obj,@objno)
			
			if ($chr_Blend_Sys_childobj[00] != "") {
			
				@obj.child[00].create($chr_Blend_Sys_childobj[00],1,0,0)		
			
			}else{
			
				@obj.child[00].free
			
			}
			
			if ($chr_Blend_Sys_childobj[01] != "") {	//mayu
			
				if ($chr_filename_split_mayu[@objno] != "") {
				
					$chr_Blend_Sys_childobj[01] = "bst_"+$chr_filename_chr[@objno]+"1A_face_mayu"+$chr_filename_split_mayu[@objno]
					
				}
				
				@obj.child[01].create($chr_Blend_Sys_childobj[01],1,0,0)
				
			}else{
			
				@obj.child[01].free
			
			}
			
			if ($chr_Blend_Sys_childobj[02] != "") {	//eye
			
				if ($chr_filename_split_eye[@objno] != "") {
				
					$chr_Blend_Sys_childobj[02] = "bst_"+$chr_filename_chr[@objno]+"1A_face_eye"+$chr_filename_split_eye[@objno]
					
				}
			
				@obj.child[02].create($chr_Blend_Sys_childobj[02],1,0,0)
				
				
				if (@obj.child[02].get_pat_cnt >= 2) {
					
					@obj.child[02].load_gan(_mabataki01)
					
					if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
					
						@obj.child[02].start_gan(math.rand(1,<mabataki_max>),1,1)
					
					}else {
					
						@obj.child[02].start_gan(0,1,1)
					
					}
					
				}
				
			}else{
			
				@obj.child[02].free
			
			}
			
			if ($chr_Blend_Sys_childobj[03] != "") {	//mouth
			
				if ($chr_filename_split_mouth[@objno] != "") {
				
					$chr_Blend_Sys_childobj[03] = "bst_"+$chr_filename_chr[@objno]+"1A_face_mouth"+$chr_filename_split_mouth[@objno]
					
				}
			
				@obj.child[03].create($chr_Blend_Sys_childobj[03],1,0,0)
			
			}else{
			
				@obj.child[03].free
			
			}
			
			
			// ;;★todo ★メガネ			
			// if (@メガネかけない == 1) {
				
			// 	if ($chr_Blend_Sys_childobj[04].search("megane") >= 1) {$chr_Blend_Sys_childobj[04] = ""}
			
			// }
			
			if ($chr_Blend_Sys_childobj[04] != "") {

			
				@obj.child[04].create($chr_Blend_Sys_childobj[04],1,0,0)
			
			}else{
			
				@obj.child[04].free
			
			}
			


//★20250916.初期拡大スイッチを追加
//$chr_init_ampli に値が入っていた場合は、初期スケールをその値にする

#PROPERTY	$chr_init_ampli

#MACRO	@CHR(@filename,@objno(24),@wipe(1),@mayu(""),@eye(""),@mouth(""),@pre_x(0),@pre_y(0))
			
			$chr_filename_tmp = @filename
			
			for ($chr_tmp = <chr_obj_startindex>,$chr_tmp < <chr_obj_endindex>,$chr_tmp += 1) {
			
				if ($chr_tmp == @objno) {continue}
				if ($chr_filename[$chr_tmp] != "") { front.object[$chr_tmp].wipe_copy = 1 }
			
			}
			
			
			if ($chr_filename_tmp.cnt == 9) {
			
				$chr_filename_tmp = "bst_"+@filename
			
			}

			
			@chr_filename_split($chr_filename_tmp,@objno)
			
			$chr_filename_split_mayu[@objno] = @mayu
			$chr_filename_split_eye[@objno] = @eye
			$chr_filename_split_mouth[@objno] = @mouth
			
			
						
			switch(@objno) { //★初期配置と大きさ設定
			
				case(24)	$chr_init_pos_x = <CHR_BUSTUP_C>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_tcg_scaling>
							$bg_scale_chr = <scale01_ampli>
				
				case(23)	$chr_init_pos_x = <CHR_BUSTUP_L1>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_tcg_scaling>
							$bg_scale_chr = <scale01_ampli>
				
				case(22)	$chr_init_pos_x = <CHR_BUSTUP_R1>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_tcg_scaling>
							$bg_scale_chr = <scale01_ampli>
				
				case(21)	$chr_init_pos_x = <CHR_BUSTUP_L2>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_tcg_scaling>
							$bg_scale_chr = <scale01_ampli>
				
				case(20)	$chr_init_pos_x = <CHR_BUSTUP_R2>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_tcg_scaling>
							$bg_scale_chr = <scale01_ampli>
				
				case(34)	$chr_init_pos_x = <CHR_BUSTUP_C>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling>
							$bg_scale_chr = <scale02_ampli>
				
				case(33)	$chr_init_pos_x = <CHR_BUSTUP_L1>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling>
							$bg_scale_chr = <scale02_ampli>
				
				case(32)	$chr_init_pos_x = <CHR_BUSTUP_R1>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling>
							$bg_scale_chr = <scale02_ampli>
				
				case(31)	$chr_init_pos_x = <CHR_BUSTUP_L2>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling>
							$bg_scale_chr = <scale02_ampli>
				
				case(30)	$chr_init_pos_x = <CHR_BUSTUP_R2>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling>
							$bg_scale_chr = <scale02_ampli>
				
				//★2025.09.16追加 端語り用
				case(35)	$chr_init_pos_x = <CHR_BUSTUP_R3>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling_bb>
							$bg_scale_chr = <scale02_ampli>

				case(36)	$chr_init_pos_x = <CHR_BUSTUP_L3>
							$chr_init_pos_y = <CHR_BUSTUP_Y>
							$chr_init_scale = <chr_bst_scaling_bb>
							$bg_scale_chr = <scale02_ampli>



				default		$chr_init_scale = 550
							$bg_scale_chr = 1000
							$chr_init_pos_x = 0
							$chr_init_pos_y = 0
			
			}
			

			//★2025.09.16 初期スケール設定
			if ($chr_init_ampli != 0) {
				$chr_init_scale = $chr_init_ampli
				$chr_init_ampli = 0
			}
			
			back.object[@objno].create($chr_filename_chr_base[@objno],1,0,0)
			back.object[@objno].set_scale($chr_init_scale,$chr_init_scale)
			back.object[@objno].x = $chr_init_pos_x
			back.object[@objno].y = $chr_init_pos_y
			
			back.object[@objno].layer = @objno
			back.object[@objno].order = <order_chr>

			back.object[@objno].x_rep.resize(20)
			back.object[@objno].y_rep.resize(20)
			
			back.object[@objno].x_rep[<chr_rep_pos>] = @pre_x	//2024.0323追加
			back.object[@objno].y_rep[<chr_rep_pos>] = @pre_y	//2024.0323追加
			
			
			@camera_work_chrsize(@objno,$chr_init_scale,0,0,0)	//2024.0412追加	自動高さ調整に変更
			

			back.object[@objno].child.resize(20)
			back.object[@objno].frame_action_ch.resize(<chr_frameaction_ch_max>)
			
			
			//---立ち絵ないので一旦
			
			//if ($chr_filename_chr[@objno] == "ura") { back.object[@objno].rotate_x = 1800 back.object[@objno].change_file("bst_noz1A")}
			
			
			//2025.09.17 モブの場合は合成命令を通らない

			if ($chr_filename_tmp.search("mob") == -1) {
				@chr_face_list(@objno)
				@chr_blend_sys_set(back.object[@objno],@objno)
			}

			
			if (front.object[0].scale_x < $bg_scale_chr) {	//自動拡大
			
				front.object[0].scale_x_eve.set($bg_scale_chr,500,0,2)
				front.object[0].scale_y_eve.set($bg_scale_chr,500,0,2)
				
			}
			
			if (@wipe == 1) {
			
				@CHR_WIPE_ONLY

			}elseif(@wipe == <nodisp>){	//★2024.0527追加

				back.object[@objno].tr = 0
				@CHR_WIPE_ONLY(0)

			}

//キャラワイプオンリー
#MACRO	@CHR_WIPE_ONLY(@time(500))
			close
			wipe(0,@time,speed_mode = 2,start_order = <order_chr>,end_order = <order_chr>,key_skip = @クリックでキャラの演出をスキップ)
			@TIMEWAIT_chr(@time)


//指定したキャラを消去する
#MACRO	@CHR_CLEAR(@ObjNO(24),@wipe(0))
			
			switch(@wipe){

				case(0)		//即座に消す　キャラの大きさを変える場合等に
					wipe(1,0,speed_mode = 2,start_layer = @Objno,end_layer = @objno, start_order = <order_chr>,end_order = <order_chr>)

				case(1)		//消すまで待つ　これを使ったほうが自然な場合も
					close
					wipe(0,500,speed_mode = 2,start_layer = @Objno,end_layer = @objno, start_order = <order_chr>,end_order = <order_chr>)
					@TIMEWAIT_chr(500)

				case(2)		//CHR_CLEAR_NOWAIT　消すアニメを待たない
					close
					wipe(0,500,speed_mode = 2,wait = 0,start_layer = @Objno,end_layer = @objno, start_order = <order_chr>,end_order = <order_chr>)

			}

#MACRO	@CHR_CLEAR_NOWAIT(@ObjNO(24)) @CHR_CLEAR(@ObjNo,2)

//--------------------
//フェイスターゲット制御

/*--

	フェイスターゲット（自動キャラ捜索＆表情チェンジ）の簡略化。
	
	◯bst_mizXA_000
	◯mizXA_000

	ｘmiz00A	… 廃止
	
	
	★命令	fts	について
		後ろを省略すると一つ前の立ち絵の顔グラを表示する

---*/

#PROPERTY	$chr_tansaku_hit_objno	//キャラがなければ-1、あればそのobjnoを返す
#PROPERTY	$chr_tansaku_tmp
#PROPERTY	$chr_tansaku_str : str
#PROPERTY	$chr_tansaku_chr : str
#PROPERTY	$ft_layer
#PROPERTY	$ft_filename : str

#MACRO	@chr_tansaku(@chr)	//キャラクター名からobjnoを逆引き
			
			$chr_tansaku_hit_objno = -1
			$chr_tansaku_str = ""
			$chr_tansaku_chr = @chr
			
			//for($chr_tansaku_tmp = <chr_obj_endindex> - 1,$chr_tansaku_tmp >= <chr_obj_startindex>,$chr_tansaku_tmp -= 1) {	//大きい順にチェック
			
			for($chr_tansaku_tmp = <chr_obj_startindex> ,$chr_tansaku_tmp <= <chr_obj_endindex> - 1,$chr_tansaku_tmp += 1) {	//★2025.09.16_小さい順にチェックするよう変更

				
				if (front.object[$chr_tansaku_tmp].exist_type == 1) {
				
						$chr_tansaku_str = front.object[$chr_tansaku_tmp].get_file_name
						
				
					if ($chr_tansaku_str.search($chr_tansaku_chr) != -1) {
					
						$chr_tansaku_hit_objno = $chr_tansaku_tmp
											
						break
					
					}
				
				}
			}
			
		


#MACRO	@ft_set(@filename,@mayu(""),@eye(""),@mouth(""))
	
			$ft_filename = @filename
	
			if ($ft_filename.cnt == 9) {
			
				$ft_filename = "bst_"+@filename
			
			}
			
			@chr_filename_split($ft_filename,<chr_obj_ftindex>)
						
			@chr_tansaku($chr_filename_chr[<chr_obj_ftindex>])

			if ($chr_tansaku_hit_objno != -1) {
			
				$ft_layer = front.object[$chr_tansaku_hit_objno].layer
			
				@chr_filename_split($ft_filename,$chr_tansaku_hit_objno)
				
				$chr_filename_split_mayu[$chr_tansaku_hit_objno] = @mayu
				$chr_filename_split_eye[$chr_tansaku_hit_objno] = @eye
				$chr_filename_split_mouth[$chr_tansaku_hit_objno] = @mouth
				
				
				//print($ft_layer) R
				
				
				//前面のパラメータを後面にコピー
				
				back.object[$chr_tansaku_hit_objno].create_copy_from(front.object[$chr_tansaku_hit_objno])
				back.object[$chr_tansaku_hit_objno].change_file($chr_filename_chr_base[$chr_tansaku_hit_objno])
				
				@chr_face_list($chr_tansaku_hit_objno)
				
				@chr_blend_sys_set(back.object[$chr_tansaku_hit_objno],$chr_tansaku_hit_objno)
				
				
				//該当のレイヤーだけワイプ
			
				wipe(0,500,wait = 0,speed_mode = 2,start_order = <order_chr>,end_order = <order_chr>,start_layer = $ft_layer,end_layer = $ft_layer)
				
			}




#MACRO	@ft(@filename,@mayu(""),@eye(""),@mouth(""))	//顔グラつき
			
			@ft_set(@filename,@mayu,@eye,@mouth)
			@set_face(@filename,@mayu,@eye,@mouth)
			
#MACRO	@ftn(@filename,@mayu(""),@eye(""),@mouth(""))	//立ち絵変更のみ
			
			@ft_set(@filename,@mayu,@eye,@mouth)
			
#MACRO	@fts(@filename($chr_filename_tmp),@mayu(""),@eye(""),@mouth(""))	//顔グラのみ
			
			@set_face(@filename,@mayu,@eye,@mouth)
		

//--------------------
//顔グラフィック制御

/*--

	顔グラフィックの簡略化。
	
	◯bst_mizXA_000
	◯mizXA_000
	
---*/

#PROPERTY	$face_filename : str
#PROPERTY	$face_obj_item : str

#DEFINE	<face_scale>	320		//2024.07.30 スケーリングを調整
#DEFINE <face_x> 215
#DEFINE <face_y> 1400

#MACRO	@set_face(@filename,@mayu(""),@eye(""),@mouth(""))

			

			$face_obj_item = ""
			$face_filename = @filename
			
			if ($face_filename.cnt == 9) {
			
				$face_filename = "bst_"+@filename
			
			}
			
			if ($face_filename.cnt != 5) { 	//mob以外	※モブは必ず5文字で mobXX

				@chr_filename_split($face_filename,<chr_obj_faceindex>)
							
				$chr_filename_split_mayu[<chr_obj_faceindex>] = @mayu
				$chr_filename_split_eye[<chr_obj_faceindex>] = @eye
				$chr_filename_split_mouth[<chr_obj_faceindex>] = @mouth
				
				@chr_face_list(<chr_obj_faceindex>)
							
				if ($chr_Blend_Sys_childobj[00] != "") {
				
					$face_obj_item = $face_obj_item + " | " + $chr_Blend_Sys_childobj[00]
				
				}
				
				if ($chr_Blend_Sys_childobj[01] != "") {	//mayu
				
					if ($chr_filename_split_mayu[<chr_obj_faceindex>] != "") {
						
						$chr_Blend_Sys_childobj[01] = "bst_"+$chr_filename_chr[<chr_obj_faceindex>]+"1A_face_mayu"+$chr_filename_split_mayu[<chr_obj_faceindex>]
						
					}
				
					$face_obj_item = $face_obj_item + " | " + $chr_Blend_Sys_childobj[01]
					
				}
				
				if ($chr_Blend_Sys_childobj[02] != "") {	//eye
				
					if ($chr_filename_split_eye[<chr_obj_faceindex>] != "") {
					
						$chr_Blend_Sys_childobj[02] = "bst_"+$chr_filename_chr[<chr_obj_faceindex>]+"1A_face_eye"+$chr_filename_split_eye[<chr_obj_faceindex>]
						
					}
				
					$face_obj_item = $face_obj_item + " | " + $chr_Blend_Sys_childobj[02]
				
				}
				
				if ($chr_Blend_Sys_childobj[03] != "") {	//mouth
				
					if ($chr_filename_split_mouth[<chr_obj_faceindex>] != "") {
					
						$chr_Blend_Sys_childobj[03] = "bst_"+$chr_filename_chr[<chr_obj_faceindex>]+"1A_face_mouth"+$chr_filename_split_mouth[<chr_obj_faceindex>]
						
					}
				
					$face_obj_item = $face_obj_item + " | " + $chr_Blend_Sys_childobj[03]
				
				}
				


				// ;;★todo ★メガネ				
				// if (@メガネかけない == 1) {
				
				// 	if ($chr_Blend_Sys_childobj[04].search("megane") >= 1) {$chr_Blend_Sys_childobj[04] = ""}
					
				// }
			
				
				
				if ($chr_Blend_Sys_childobj[04] != "") {
				
					$face_obj_item = $face_obj_item + " | " + $chr_Blend_Sys_childobj[04]
				
				}
				
				
				set_face($chr_filename_chr_base[<chr_obj_faceindex>] + $face_obj_item)
				
				
			}else {	//mob
			
				set_face($face_filename)
			
			}
			
			@set_face_scale_and_pos(0)


#MACRO		@set_face_scale_and_pos(@mwnd(0))
				
				front.mwnd[@mwnd].face[0].set_scale(<face_scale>,<face_scale>)
				front.mwnd[@mwnd].face[0].y = <face_y>
				front.mwnd[@mwnd].face[0].x = <face_x>
				front.mwnd[@mwnd].face[0].y_rep.resize(1)

				front.mwnd[@mwnd].face[0].y_rep[0] = 0

				switch(front.mwnd[@mwnd].face[0].get_file_name) {	//モブ用高さ調整

					case("mob01")	front.mwnd[@mwnd].face[0].y_rep[0] = 00
					case("mob02")	front.mwnd[@mwnd].face[0].y_rep[0] = 00
					case("mob03")	front.mwnd[@mwnd].face[0].y_rep[0] = 00
					case("mob11")	front.mwnd[@mwnd].face[0].y_rep[0] = 00
					case("mob10")	front.mwnd[@mwnd].face[0].y_rep[0] = 00

				}



//------------------------------------
//バストアップ拡縮表示	自動Ｙ補正	☆2024.04.12追加

/*-----
	
	立ち絵を小さく、あるいは大きく表示したいときに
	高さを自動補正してくれる命令
	立ち絵表示命令の直後に入れる。
	
	tcgとbstの区別が無くなったので一括計算に。
	
		※ただし「妹メイド」では調整しきれなかったので区別して使用している

------*/


//#DEFINE	<chr_scaling_calculation>	math.linear(@scale,<chr_tcg_scaling>,-400,<chr_bst_scaling>,0)


#DEFINE	<chr_scaling_calculation>	math.timetable(@scale,0,-750,[<chr_tcg_scaling>-300,<chr_tcg_scaling>-1,-400],[<chr_tcg_scaling>-1,<chr_tcg_scaling>,-320],[<chr_tcg_scaling>,<chr_bst_scaling>,0],[<chr_bst_scaling>,<chr_bst_scaling>+500,800])


//------------------------------------
//キャラクターのorder、layerを変更する	★2025.09.16

#MACRO	@chr_order(@chr,@order(<order_chr_sub>))
			@chr_tansaku(@chr)
			front.object[$chr_tansaku_hit_objno].order = @order

//汎用オブジェクト指定版 キャラ以外はこちら
#MACRO	@obj_order(@obj,@order(0))
			front.object[@obj].order = @order


#MACRO	@chr_layer(@chr,@layer(24))
			@chr_tansaku(@chr)
			front.object[$chr_tansaku_hit_objno].layer = @layer

//汎用オブジェクト指定版 キャラ以外はこちら
#MACRO	@obj_layer(@obj,@order(0))
			front.object[@obj].layer = @layer

//------------------------------------
//キャラのモノローグ用エフェクト（上下黒帯）
/*
	キャラクターの設定に関わってくるためこちらに記載
*/

//@chr_monolouge_effect(40,<order_screen_front>)
//@obj_order(40,<order_chr_sub>)

#MACRO	@chr_monolouge_effect(@obj(40),@order(<order_chr_sub>))

			front.object[@obj].init
			front.object[@obj].order = @order
			front.object[@obj].disp = 1
			front.object[@obj].child.resize(2)
			front.object[@obj].child[0].create_rect(0,0,1920,80,25,25,25,255,1, 1920,0)
			front.object[@obj].child[1].create_rect(0,0,1920,80,25,25,25,255,1,-1920,1000)

			front.object[@obj].child[0].x_eve.set(0,500,0,2)
			front.object[@obj].child[1].x_eve.set(0,500,0,2)

			if (@クリックで背景の演出をスキップ == 1){
				front.object[@obj].child[1].x_eve.wait_key
			}else{
				front.object[@obj].child[1].x_eve.wait
			}
			
			


