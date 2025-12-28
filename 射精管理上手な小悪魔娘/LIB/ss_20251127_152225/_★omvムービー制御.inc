#DEFINE		<omv_obj>	190		//仮決定	//ワイプコピーされないように変更したほうがいいかも？

#PROPERTY	$eventcg_omv_on : int
#PROPERTY	$eventcg_omv_name : str
#PROPERTY	$eventcg_omv_blend : int
#PROPERTY	$eventcg_omv_loop : int
#PROPERTY	$eventcg_omv_tr : int


//-------------
//イベントCG用（処理は _★イベントCG制御2017.ss 内で行う）

#MACRO		@eventcg_omv_set(@name,@blend,@loop,@tr(128))
				$eventcg_omv_on = 1
				$eventcg_omv_name = @name
				$eventcg_omv_blend = @blend
				$eventcg_omv_loop = @loop
				$eventcg_omv_tr = @tr
				

#MACRO 		@eventcg_omoide @eventcg_omv_set(mov02,3,1,128)

//-------------
//通常シーン用

#PROPERTY	$omv_resume_flag : int
#PROPERTY	$omv_resume_time : int

#COMMAND	$omv_set(int,str,int,int,int,int,int,int,int)	//stage,filename,blend,loop,tr,fadein_time,deray_time,resume_flag,back_or_front

#MACRO		@omv_set_tokai(@fadein_time(0),@deray_time(0))	$omv_set(0,mov08,3,1,64,@fadein_time,@deray_time,0,0)
#MACRO		@omv_set_chirichiri(@fadein_time(0),@deray_time(0))	$omv_set(1,mov07,3,0,128,@fadein_time,@deray_time,0,1) @pcm_dream_noise1 @omv_fade_old(2500,1000)
#MACRO		@omv_set_flare(@fadein_time(0),@deray_time(0))	$omv_set(0,mov04,1,0,245,@fadein_time,@deray_time,1,1) $omv_resume_time = 1200
#MACRO		@omv_set_syuuchuu(@fadein_time(0),@deray_time(0)) $omv_set(1,mov03,1,1,245,@fadein_time,@deray_time,0,1)

#MACRO		@omv_set_ame01(@fadein_time(0),@deray_time(0))	$omv_set(0,mov06,3,1,128,@fadein_time,@deray_time,0,1)
#MACRO		@omv_set_ame02(@fadein_time(0),@deray_time(0))	$omv_set(0,mov05,3,1,128,@fadein_time,@deray_time,0,0)


#MACRO		@omv_set_omoide(@blend(3),@fadein_time(0),@deray_time(0)) $omv_set(0,mov02,@blend,1,128,@fadein_time,@deray_time,0,1)
#MACRO		@omv_set_tokai2(@blend(3),@fadein_time(0),@deray_time(0))	$omv_set(0,mov08,@blend,1,64,@fadein_time,@deray_time,0,1)

#MACRO		@omv_set_tokai3(@fadein_time(1000),@deray_time(0))	$omv_set(1,mov08,3,1,64,@fadein_time,@deray_time,0,1)

#MACRO		@omv_set_tokai4(@fadein_time(0),@deray_time(0))	$omv_set(0,mov08,2,1,32,@fadein_time,@deray_time,0,1)			//暗い背景用

#COMMAND	$omv_fade(int,int,int)

#MACRO		@omv_fade_old(@fadeout_time(2000),@deray_time(0)) $omv_fade(@fadeout_time,@deray_time,0)
#MACRO		@omv_fade_wait_old(@fadeout_time(2000),@deray_time(0)) $omv_fade(@fadeout_time,@deray_time,1)

#MACRO		@omv_clear_old front.object[<omv_obj>].init	$eventcg_omv_on = 0 	//★ループ以外は勝手解放されるので不要

#MACRO		@omv_set_omoide2(@blend(3),@fadein_time(2000),@deray_time(0)) $omv_set(1,mov02,@blend,1,128,@fadein_time,@deray_time,0)

