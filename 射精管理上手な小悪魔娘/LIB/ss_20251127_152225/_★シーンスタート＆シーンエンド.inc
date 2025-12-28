//------------------------------------
//シナリオ開始時のエフェクト（とりあえず置いておく）
#MACRO	@Scene_start	
			@camera_work_init
			//@all_screen_clear
			screen.effect[0].init
			screen.effect[1].init
			screen.effect[2].init
			screen.effect[3].init


//------------------------------------
//シナリオ終了時のエフェクト（とりあえず置いておく）


#MACRO	@scene_end(@Time(2000),@wait_time(1000),@noBlack(0))
			
			//$ev_chat_init		//美姫ちゃん
			
			if (@noBlack == 0) {@BG(_black,0,@Time)}
			@BGMSTOP(@Time)
			@pcmch_init(@Time)
			@hbg_stop_all(@Time)
			@TIMEWAIT(@wait_time)
			@PCM_init
			if (@noBlack == 0) {@camera_work_default}
			@ALL_WIPECOPY_OFF
			
			g00buf.free_all


#DEFINE	@kaisou_end	//回想モード終了時エフェクト
			//$ev_chat_init() //美姫ちゃん




