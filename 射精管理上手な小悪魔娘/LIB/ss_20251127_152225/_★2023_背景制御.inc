//----------------------------
//背景表示簡略化

/*---

	余計なイベントを消去して簡略化。
	

---*/

#DEFINE <scale-1_ampli>	1000	//一段階縮小したときの背景拡大率（１００％）		★FullHD化に伴い設定
#DEFINE <scale00_ampli>	1080	//基本倍率（１０８％）		★FullHD化に伴い初期拡大率を変更

#DEFINE <scale01_ampli>	1200	//一段階拡大したときの背景拡大率（１２０％）
#DEFINE <scale02_ampli>	1500	//二段階拡大したときの背景拡大率（１５０％）
#DEFINE <scale03_ampli>	1700	//三段階拡大したときの背景拡大率（１７０％）


#PROPERTY	$wipecopy_tmp
#PROPERTY	$time_tmp

#PROPERTY	$bg_filename_tmp : str


#MACRO	@BG_set(@filename)
			back.object[0].create(@filename,1,959,539)
			back.object[0].center_x = back.object[0].get_size_x / 2
			back.object[0].center_y = back.object[0].get_size_y / 2
			back.object[0].layer = 0
			back.object[0].order = <order_normal>
			back.object[0].set_scale(<scale00_ampli>,<scale00_ampli>)

			back.object[0].x_rep.resize(20)
			back.object[0].y_rep.resize(20)
			
			@CHR_WIPECOPY_OFF
			

#MACRO	@BG(@filename(_black),@pat(0),@time(1000),@wait(1))

			close

			$bg_filename_tmp = @filename
			$time_tmp = @time

			if (@filename == "_") {

				$bg_filename_tmp = front.object[0].get_file_name
				$time_tmp = 500

			}

			@BG_set($bg_filename_tmp)

			switch(@pat) {
				case(99)	//99のときはワイプしない拡大させてからワイプしたいときなどに使用
				default @BG_WIPE_ONLY(@pat,$time_tmp,@wait)
			}
		


/*--
	ワイプ処理 @pat

	0:通常
	1:左から

--*/

#MACRO	@BG_WIPE_ONLY(@pat(0),@time(1000),@wait(1))		//2025.03.23 @waitをつけた
			switch(@pat){
				case(0) wipe(0,time = @time,speed_mode = 2,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,wait = @wait,key_skip = @クリックで背景の演出をスキップ)
				case(1) wipe(100,option=[4,2],time = @time,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,wait = @wait,key_skip = @クリックで背景の演出をスキップ)
			}


#MACRO	@CHR_WIPECOPY_OFF	//背景変更時にキャラのワイプコピーを切る

		for ($wipecopy_tmp = <chr_obj_startindex>,$wipecopy_tmp < <chr_obj_endindex>,$wipecopy_tmp+= 1) {	//背景チェンジ時に立ち絵のワイプコピーを切る
					
			front.object[$wipecopy_tmp].wipe_copy = 0

		}

#MACRO	@ALL_WIPECOPY_OFF	//すべてのワイプコピーを切る

		for ($wipecopy_tmp = 0,$wipecopy_tmp < <max_obj_number>,$wipecopy_tmp+= 1) {	
					
			front.object[$wipecopy_tmp].wipe_copy = 0

		}


//★背景拡大　数値固定版
#MACRO	@BG_SCALE(@scaling(0),@stage(1),@time(500))
			switch(@scaling){
				case(-1)
					stage[@stage].object[0].scale_x_eve.set(<scale-1_ampli>,@time,0,2)
					stage[@stage].object[0].scale_y_eve.set(<scale-1_ampli>,@time,0,2)
				case(0)
					stage[@stage].object[0].scale_x_eve.set(<scale00_ampli>,@time,0,2)
					stage[@stage].object[0].scale_y_eve.set(<scale00_ampli>,@time,0,2)
				case(1)
					stage[@stage].object[0].scale_x_eve.set(<scale01_ampli>,@time,0,2)
					stage[@stage].object[0].scale_y_eve.set(<scale01_ampli>,@time,0,2)
				case(2)
					stage[@stage].object[0].scale_x_eve.set(<scale02_ampli>,@time,0,2)
					stage[@stage].object[0].scale_y_eve.set(<scale02_ampli>,@time,0,2)
			}



//★背景とキャラをリセットする
#MACRO	@BG_CHR_RESET
			close
			@CHR_WIPECOPY_OFF

			wipe(0,500,wait = 0,start_layer = <chr_obj_startindex>,end_layer = <chr_obj_endindex>, start_order = <order_chr>,end_order = <order_chr>,key_skip = @クリックで背景の演出をスキップ)
			@BG_SCALE(0)
			@TIMEWAIT_bg

//フラグによってクリックで飛ばせるようになってるBG

#MACRO	@BG_flagcheck(@filename,@flag,@pat(0),@time(1000))

			@BG_set(@filename)
			wipe(@pat,@time,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @flag)



