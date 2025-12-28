
//======================================================-
//画面スクリーン演出 ワイプ無視系

/*---

	「_★★ワイプされないObj一覧.inc」記載のObjNoのうち、
	ObjNo が 290～299の場合は、@BG命令でもワイプされない。
	
	それを使った、画面スクリーン全体を使った演出用の命令群。
	
					★ 消し忘れ注意 ★

	
	★2023.01.26
	
		screen命令で動くように変更。旧版は前に[old_」とつけている。
		立ち絵の後ろまで、立ち絵のみ、全体…と範囲を変えられるようにした。
		

---*/



//----------------------------
//★★スクリーン画像展開、１枚絵用
//画像の後ろレイヤーでいろいろ仕込みたい時に使用

#COMMAND	$old_all_screen(str,int,int)
#COMMAND	$old_all_screen_color(str,int,int)

/*---

	$all_screen($rgb,$time,$mode,$range)

		$mode  = 0:全体の色変更 1:消去 2:明滅 3:全体の色変更addモード 4:明滅addモード
		$range = 0:全体 1:立ち絵の後ろまで（背景） 2:立ち絵のみ 3;オーダー２のもの全部（カットインなど。_★立ち絵利用画像表示.inc） 4：オーダー０と１のもの（カットインはそのまま）
		$power : 強さ(0～255)	普通は255で使うが、暗くするなどのエフェクト用に128等も使える

		通常はその色そのものにする。addモードは色味を加算する（加算なので黒方向はできない）

---*/

#COMMAND	$all_screen(str,int,int,int,int,int)		//$rgb,$time,$mode,$range,$power,$channel(screen.effect[n] デフォルトはn=1)


#DEFINE		<all_screen_white>	"FFFFFF"
#DEFINE		<all_screen_black>	"000000"
#DEFINE		<all_screen_red>	"CC0000"
#DEFINE		<all_screen_blue>	"0000CC"
#DEFINE		<all_screen_green>	"00CC00"
#DEFINE		<all_screen_yellow>	"CCCC00"

#DEFINE		<all_screen_whitepink>	"FF90FF"
#DEFINE		<all_screen_darkpurple>	"401041"
#DEFINE		<all_screen_cyan>		"84cde7"




#MACRO		@all_green(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_green>,@time,0,0,@power,@channel)
#MACRO		@all_green_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_green>,@time,3,0,@power,@channel)
#MACRO		@all_green_flash(@power(255),@channel(1))				$all_screen(<all_screen_green>,200,2,0,@power,@channel)
#MACRO		@all_green_add_flash(@power(180),@channel(1))			$all_screen(<all_screen_green>,200,4,0,@power,@channel)
#MACRO		@chr_old_green(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_green>,@time,0,2,@power,@channel)
#MACRO		@chr_old_green_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_green>,@time,3,2,@power,@channel)
#MACRO		@chr_old_green_flash(@power(255),@channel(1))				$all_screen(<all_screen_green>,200,2,2,@power,@channel)
#MACRO		@chr_old_green_add_flash(@power(180),@channel(1))			$all_screen(<all_screen_green>,200,4,2,@power,@channel)

#MACRO		@all_red(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_red>,@time,0,0,@power,@channel)
#MACRO		@all_red_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_red>,@time,3,0,@power,@channel)
#MACRO		@all_red_flash(@power(255),@channel(1))				$all_screen(<all_screen_red>,200,2,0,@power,@channel)
#MACRO		@all_red_add_flash(@power(180),@channel(1))			$all_screen(<all_screen_red>,200,4,0,@power,@channel)
#MACRO		@chr_old_red(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_red>,@time,0,2,@power,@channel)
#MACRO		@chr_old_red_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_red>,@time,3,2,@power,@channel)
#MACRO		@chr_old_red_flash(@power(255),@channel(1))				$all_screen(<all_screen_red>,200,2,2,@power,@channel)
#MACRO		@chr_old_red_add_flash(@power(180),@channel(1))			$all_screen(<all_screen_red>,200,4,2,@power,@channel)

#MACRO		@all_blue(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_blue>,@time,0,0,@power,@channel)
#MACRO		@all_blue_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_blue>,@time,3,0,@power,@channel)
#MACRO		@all_blue_flash(@power(255),@channel(1))			$all_screen(<all_screen_blue>,200,2,0,@power,@channel)
#MACRO		@all_blue_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_blue>,200,4,0,@power,@channel)
#MACRO		@chr_old_blue(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_blue>,@time,0,2,@power,@channel)
#MACRO		@chr_old_blue_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_blue>,@time,3,2,@power,@channel)
#MACRO		@chr_old_blue_flash(@power(255),@channel(1))			$all_screen(<all_screen_blue>,200,2,2,@power,@channel)
#MACRO		@chr_old_blue_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_blue>,200,4,2,@power,@channel)

#MACRO		@all_yellow(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_yellow>,@time,0,0,@power,@channel)
#MACRO		@all_yellow_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_yellow>,@time,3,0,@power,@channel)
#MACRO		@all_yellow_flash(@power(255),@channel(1))			$all_screen(<all_screen_yellow>,200,2,0,@power,@channel)
#MACRO		@all_yellow_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_yellow>,200,4,0,@power,@channel)
#MACRO		@chr_old_yellow(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_yellow>,@time,0,2,@power,@channel)
#MACRO		@chr_old_yellow_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_yellow>,@time,3,2,@power,@channel)
#MACRO		@chr_old_yellow_flash(@power(255),@channel(1))			$all_screen(<all_screen_yellow>,200,2,2,@power,@channel)
#MACRO		@chr_old_yellow_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_yellow>,200,4,2,@power,@channel)

#MACRO		@all_white(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_white>,@time,0,0,@power,@channel)
#MACRO		@all_white_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_white>,@time,3,0,@power,@channel)
#MACRO		@all_white_flash(@power(255),@channel(1))			$all_screen(<all_screen_white>,200,2,0,@power,@channel)
#MACRO		@all_white_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_white>,200,4,0,@power,@channel)
#MACRO		@chr_old_white(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_white>,@time,0,2,@power,@channel)
#MACRO		@chr_old_white_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_white>,@time,3,2,@power,@channel)
#MACRO		@chr_old_white_flash(@power(255),@channel(1))			$all_screen(<all_screen_white>,200,2,2,@power,@channel)
#MACRO		@chr_old_white_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_white>,200,4,2,@power,@channel)

#MACRO		@all_black(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_black>,@time,0,0,@power,@channel)
#MACRO		@all_black_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_black>,@time,3,0,@power,@channel)
#MACRO		@all_black_flash(@power(255),@channel(1))			$all_screen(<all_screen_black>,200,2,0,@power,@channel)
#MACRO		@all_black_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_black>,200,4,0,@power,@channel)
#MACRO		@chr_old_black(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_black>,@time,0,2,@power,@channel)
#MACRO		@chr_old_black_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_black>,@time,3,2,@power,@channel)
#MACRO		@chr_old_black_flash(@power(255),@channel(1))			$all_screen(<all_screen_black>,200,2,2,@power,@channel)
#MACRO		@chr_old_black_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_black>,200,4,2,@power,@channel)

#MACRO		@all_whitepink(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_whitepink>,@time,0,0,@power,@channel)
#MACRO		@all_whitepink_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_whitepink>,@time,3,0,@power,@channel)
#MACRO		@all_whitepink_flash(@power(255),@channel(1))			$all_screen(<all_screen_whitepink>,200,2,0,@power,@channel)
#MACRO		@all_whitepink_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_whitepink>,200,4,0,@power,@channel)
#MACRO		@chr_old_whitepink(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_whitepink>,@time,0,2,@power,@channel)
#MACRO		@chr_old_whitepink_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_whitepink>,@time,3,2,@power,@channel)
#MACRO		@chr_old_whitepink_flash(@power(255),@channel(1))			$all_screen(<all_screen_whitepink>,200,2,2,@power,@channel)
#MACRO		@chr_old_whitepink_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_whitepink>,200,4,2,@power,@channel)

#MACRO		@all_darkpurple(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_darkpurple>,@time,0,0,@power,@channel)
#MACRO		@all_darkpurple_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_darkpurple>,@time,3,0,@power,@channel)
#MACRO		@all_darkpurple_flash(@power(255),@channel(1))			$all_screen(<all_screen_darkpurple>,200,2,0,@power,@channel)
#MACRO		@all_darkpurple_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_darkpurple>,200,4,0,@power,@channel)
#MACRO		@chr_old_darkpurple(@time(0),@power(255),@channel(1))		$all_screen(<all_screen_darkpurple>,@time,0,2,@power,@channel)
#MACRO		@chr_old_darkpurple_add(@time(0),@power(180),@channel(1))	$all_screen(<all_screen_darkpurple>,@time,3,2,@power,@channel)
#MACRO		@chr_old_darkpurple_flash(@power(255),@channel(1))			$all_screen(<all_screen_darkpurple>,200,2,2,@power,@channel)
#MACRO		@chr_old_darkpurple_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_darkpurple>,200,4,2,@power,@channel)

#MACRO		@all_cyan(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_cyan>,@time,0,0,@power,@channel)
#MACRO		@all_cyan_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_cyan>,@time,3,0,@power,@channel)
#MACRO		@all_cyan_flash(@power(255),@channel(1))			$all_screen(<all_screen_cyan>,200,2,0,@power,@channel)
#MACRO		@all_cyan_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_cyan>,200,4,0,@power,@channel)
#MACRO		@chr_old_cyan(@time(0),@power(255),@channel(1))			$all_screen(<all_screen_cyan>,@time,0,2,@power,@channel)
#MACRO		@chr_old_cyan_add(@time(0),@power(180),@channel(1))		$all_screen(<all_screen_cyan>,@time,3,2,@power,@channel)
#MACRO		@chr_old_cyan_flash(@power(255),@channel(1))			$all_screen(<all_screen_cyan>,200,2,2,@power,@channel)
#MACRO		@chr_old_cyan_add_flash(@power(180),@channel(1))		$all_screen(<all_screen_cyan>,200,4,2,@power,@channel)



#MACRO		@all_screen_clear(@time(0),@channel(1))			$all_screen("",@time,1,0,255,@channel)
#MACRO		@all_screen_clear_nowait(@time(0),@channel(1))	$all_screen("nowait",@time,1,0,255,@channel)

#MACRO		@all_screen_wait(@channel(1))

									if (screen.effect[@channel].color_rate_eve.check == 1){
										screen.effect[@channel].color_rate_eve.wait_key
									}	//画面転換系は、これがないと表示が乱れるかも

									elseif(screen.effect[@channel].color_add_r_eve.check == 1){
										screen.effect[@channel].color_add_r_eve.wait
										screen.effect[@channel].color_add_g_eve.end
										screen.effect[@channel].color_add_b_eve.end
									}

									elseif(screen.effect[@channel].color_add_g_eve.check == 1){
										screen.effect[@channel].color_add_g_eve.wait
										screen.effect[@channel].color_add_r_eve.end
										screen.effect[@channel].color_add_b_eve.end
									}

									elseif(screen.effect[@channel].color_add_b_eve.check == 1){
										screen.effect[@channel].color_add_b_eve.wait
										screen.effect[@channel].color_add_r_eve.end
										screen.effect[@channel].color_add_g_eve.end
									}
									
									//screen.effect[@channel].color_add_r_eve.wait_key


//---------------------------------
//画面効果デフォルトセット

//回想用	inで白くなりoutで色を戻す 間で@monomodeや@kokyu_offなどを使用する	mono化も一緒に行う
//※camera_work_initを使った場合、monoがリセットされるので、あらためて _in_inと_in_outの間で screen.effect[0].mono = 200 を差し込む

#MACRO		@recollection_in_in	close
								@pcm_dream_in
								@all_white(150)
								@all_screen_wait
								screen.effect[0].mono = 200
								screen.effect[0].begin_order = <order_normal>	
								screen.effect[0].end_order = <order_chrcg_front>


#MACRO		@recollection_in_out	close
								@all_screen_clear(1250)
								@all_screen_wait
								
#MACRO		@recollection_out_in	close
								@pcm_dream_out
								@all_white(150)
								@all_screen_wait
								screen.effect[0].mono = 0
								screen.effect[0].begin_order = <order_normal>	
								screen.effect[0].end_order = <order_chrcg_front>
								
#MACRO		@recollection_out_out	close
								@all_screen_clear(1250)
								@all_screen_wait

//射精用

#MACRO		@<フラッシュ：射精>	if (@Ｈシーンのフラッシュ効果を演出する == 1) {

									close
									@all_white_add(50,150)
									screen.effect[1].color_add_r_eve.wait_key
									screen.effect[1].color_add_g_eve.end
									screen.effect[1].color_add_b_eve.end
									@all_screen_clear_nowait(1000)
									
								}
								


