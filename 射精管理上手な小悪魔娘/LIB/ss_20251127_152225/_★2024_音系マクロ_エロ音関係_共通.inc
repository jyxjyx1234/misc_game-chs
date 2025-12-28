
//----------------
//ワンショット系
/*----

	挿入音やおならの音など。

---*/

//おしっこ

#MACRO		@bho_nyo01(@ch(0))				$bgs_oneshot("hse_nyo01",@ch)
#MACRO		@bho_nyo02(@ch(0))				$bgs_oneshot("hse_nyo02",@ch)
#MACRO		@bho_nyo_start(@ch(0))			$bgs_oneshot("hse_nyo03",@ch)
#MACRO		@bho_nyo_end(@ch(0))			$bgs_oneshot("hse_nyo04",@ch)
#MACRO		@bho_nyo_long(@ch(0))			$bgs_oneshot("hse_nyo05",@ch)
#MACRO		@bho_nyo_nokori(@ch(0))			$bgs_oneshot("hse_nyo06",@ch)

//おなら

#MACRO		@bho_he01(@ch(0))				$bgs_oneshot("hse_he01",@ch)
#MACRO		@bho_he02(@ch(0))				$bgs_oneshot("hse_he02",@ch)
#MACRO		@bho_he03(@ch(0))				$bgs_oneshot("hse_he03",@ch)
#MACRO		@bho_he04(@ch(0))				$bgs_oneshot("hse_he04",@ch)
#MACRO		@bho_he05(@ch(0))				$bgs_oneshot("hse_he05",@ch)
#MACRO		@bho_he_mizu01(@ch(0))			$bgs_oneshot("hse_he06",@ch)
#MACRO		@bho_he_mizu02(@ch(0))			$bgs_oneshot("hse_he07",@ch)

//挿入

#MACRO		@bho_in01(@ch(0))				$bgs_oneshot("hse_in01",@ch)
#MACRO		@bho_in02(@ch(0))				$bgs_oneshot("hse_in02",@ch)

//射精		@<フラッシュ：射精>

#MACRO		@bho_dasu01(@ch(0))				$bgs_oneshot("hse_dasu01",@ch)
#MACRO		@bho_dasu02(@ch(0))				$bgs_oneshot("hse_dasu02",@ch)
#MACRO		@bho_dasu03(@ch(0))				$bgs_oneshot("hse_dasu03",@ch)

//絶頂

#MACRO		@bho_out01(@ch(0))				$bgs_oneshot("hse_out01",@ch)
#MACRO		@bho_out02(@ch(0))				$bgs_oneshot("hse_out02",@ch)
#MACRO		@bho_out03(@ch(0))				$bgs_oneshot("hse_out03",@ch)
#MACRO		@bho_out04(@ch(0))				$bgs_oneshot("hse_out04",@ch)

//クチュクチュ音（ロング）

#MACRO		@bho_kuchu01(@ch(0))			$bgs_oneshot("hse_kuchu01",@ch)
#MACRO		@bho_kuchu02(@ch(0))			$bgs_oneshot("hse_kuchu02",@ch)
#MACRO		@bho_kuchu03(@ch(0))			$bgs_oneshot("hse_kuchu03",@ch)
#MACRO		@bho_kuchu04(@ch(0))			$bgs_oneshot("hse_kuchu04",@ch)
#MACRO		@bho_kuchu05(@ch(0))			$bgs_oneshot("hse_kuchu05",@ch)


//クチュクチュ音（ショート）

#MACRO		@bho_kuchu01_short(@ch(0))			$bgs_oneshot("hse_kuchu01_short",@ch)
#MACRO		@bho_kuchu02_short(@ch(0))			$bgs_oneshot("hse_kuchu02_short",@ch)
#MACRO		@bho_kuchu03_short(@ch(0))			$bgs_oneshot("hse_kuchu03_short",@ch)
#MACRO		@bho_kuchu04_short(@ch(0))			$bgs_oneshot("hse_kuchu04_short",@ch)
#MACRO		@bho_kuchu05_short(@ch(0))			$bgs_oneshot("hse_kuchu05_short",@ch)



//★ワンショット全停止（前の命令を維持するための置き換え）

#MACRO		@bho_stop(@Time(1000))	@hbgs_oneshot_stop_all(@Time)


//----------------
//行為アクションループ系
/*----

	基本的には環境音との同時ＯＮ／ＯＦＦになるので、
	単体で使うことはあまりない。

	※擦る音、パイズリ音だけは単体使用も多いと思う

---*/

//正常位

#MACRO		@back_H_action_front_S(@ch(0))			$bgs_action("hse_loop01",@ch)
#MACRO		@back_H_action_front_SS(@ch(0))			$bgs_action("hse_loop02",@ch)
#MACRO		@back_H_action_front_SSS(@ch(0))		$bgs_action("hse_loop03",@ch)
#MACRO		@back_H_action_front_SSSS(@ch(0))		$bgs_action("hse_loop04",@ch)
#MACRO		@back_H_action_front_SSSSS(@ch(0))		$bgs_action("hse_loop05",@ch)
#MACRO		@back_H_action_front_SSSSSS(@ch(0))		$bgs_action("hse_loop06",@ch)
#MACRO		@back_H_action_front_SSSSSSS(@ch(0))	$bgs_action("hse_loop07",@ch)
#MACRO		@back_H_action_front_SSSSSSSS(@ch(0))	$bgs_action("hse_loop08",@ch)

//後背位

#MACRO		@back_H_action_back_S(@ch(0))			$bgs_action("hse_loop11",@ch)
#MACRO		@back_H_action_back_SS(@ch(0))			$bgs_action("hse_loop12",@ch)
#MACRO		@back_H_action_back_SSS(@ch(0))			$bgs_action("hse_loop13",@ch)
#MACRO		@back_H_action_back_SSSS(@ch(0))		$bgs_action("hse_loop14",@ch)
#MACRO		@back_H_action_back_SSSSS(@ch(0))		$bgs_action("hse_loop15",@ch)
#MACRO		@back_H_action_back_SSSSSS(@ch(0))		$bgs_action("hse_loop16",@ch)
#MACRO		@back_H_action_back_SSSSSSS(@ch(0))		$bgs_action("hse_loop17",@ch)
#MACRO		@back_H_action_back_SSSSSSSS(@ch(0))	$bgs_action("hse_loop18",@ch)

//騎乗位

#MACRO		@back_H_action_ride_S(@ch(0))			$bgs_action("hse_loop21",@ch)
#MACRO		@back_H_action_ride_SS(@ch(0))			$bgs_action("hse_loop22",@ch)
#MACRO		@back_H_action_ride_SSS(@ch(0))			$bgs_action("hse_loop23",@ch)
#MACRO		@back_H_action_ride_SSSS(@ch(0))		$bgs_action("hse_loop24",@ch)
#MACRO		@back_H_action_ride_SSSSS(@ch(0))		$bgs_action("hse_loop25",@ch)
#MACRO		@back_H_action_ride_SSSSSS(@ch(0))		$bgs_action("hse_loop26",@ch)
#MACRO		@back_H_action_ride_SSSSSSS(@ch(0))		$bgs_action("hse_loop27",@ch)
#MACRO		@back_H_action_ride_SSSSSSSS(@ch(0))	$bgs_action("hse_loop28",@ch)

//ちんちんを擦る

#MACRO		@back_H_action_rub(@ch(0))		$bgs_action_stop(@ch,0)	@bho_kuchu05_short(@ch) //とめる＋くちゅ音
#MACRO		@back_H_action_rub_S(@ch(0))			$bgs_action("hse_suri_loop01",@ch)
#MACRO		@back_H_action_rub_SS(@ch(0))			$bgs_action("hse_suri_loop02",@ch)
#MACRO		@back_H_action_rub_SSS(@ch(0))			$bgs_action("hse_suri_loop03",@ch)
#MACRO		@back_H_action_rub_SSSS(@ch(0))			$bgs_action("hse_suri_loop04",@ch)

//パイズリ	($ch=0と1を使うので、別キャラを同時に使う場合は別キャラの動作は$ch=2を使うこと。あまりないと思うけど)

#MACRO		@back_H_action_pai				$bgs_action_stop(0,0) $bgs_action_stop(1,0)	@bho_kuchu01_short(0) 
#MACRO		@back_H_action_pai_S			 $bgs_action("hse_suri_loop01",0)
#MACRO		@back_H_action_pai_SS			 $bgs_action("hse_suri_loop02",0)
#MACRO		@back_H_action_pai_SSS			 $bgs_action("hse_suri_loop03",0)
#MACRO		@back_H_action_pai_SSSS			 $bgs_action("hse_suri_loop04",0)
#MACRO		@back_H_action_pai_SSSSS		 $bgs_action("hse_suri_loop03",0) $bgs_action("hse_loop24",1)
#MACRO		@back_H_action_pai_SSSSSS		 $bgs_action("hse_suri_loop03",0) $bgs_action("hse_loop25",1)
#MACRO		@back_H_action_pai_SSSSSSS		 $bgs_action("hse_suri_loop04",0) $bgs_action("hse_loop26",1)
#MACRO		@back_H_action_pai_SSSSSSSS		 $bgs_action("hse_suri_loop04",0) $bgs_action("hse_loop27",1)


//ストップ（前の命令を維持するための置き換え）

#MACRO		@back_H_action_stop(@time(0))	@hbgs_action_stop_all(@time) 

//----------------
//環境音系
/*----

	基本的にはアクション音との同時ＯＮ／ＯＦＦになるので、
	単体で使うことはあまりない（ワンショットだけは単体使用あり）
	
	またチャンネルも重ねないので、0固定にしておく（今後他のchも使うかもしれない）

---*/

//ベッドとか
 
#MACRO		@back_H_bg_bed		@hbgs_action_stop_all(0) $bgs_env("bgse_bed00",0,0) 	//ワンショット、アクションも停止

#MACRO		@back_H_bg_bed_S	$bgs_env("bgse_bed01",0,1)
#MACRO		@back_H_bg_bed_SS	$bgs_env("bgse_bed02",0,1)
#MACRO		@back_H_bg_bed_SSS	$bgs_env("bgse_bed03",0,1)
#MACRO		@back_H_bg_bed_SSSS	$bgs_env("bgse_bed04",0,1)
#MACRO		@back_H_bg_bed_SSSSS	$bgs_env("bgse_bed05",0,1)
#MACRO		@back_H_bg_bed_SSSSSS	$bgs_env("bgse_bed06",0,1)
#MACRO		@back_H_bg_bed_SSSSSSS	$bgs_env("bgse_bed07",0,1)
#MACRO		@back_H_bg_bed_SSSSSSSS	$bgs_env("bgse_bed08",0,1)

//風呂場とか

#MACRO		@back_H_bg_furo		@hbgs_action_stop_all(0)  $bgs_env("bgse_furo00",0,0) //ワンショット、アクションも停止

#MACRO		@back_H_bg_furo_S		$bgs_env("bgse_furo01",0,1)
#MACRO		@back_H_bg_furo_SS		$bgs_env("bgse_furo02",0,1)
#MACRO		@back_H_bg_furo_SSS		$bgs_env("bgse_furo03",0,1)
#MACRO		@back_H_bg_furo_SSSS	$bgs_env("bgse_furo04",0,1)
#MACRO		@back_H_bg_furo_SSSSS	$bgs_env("bgse_furo05",0,1)
#MACRO		@back_H_bg_furo_SSSSSS	$bgs_env("bgse_furo06",0,1)
#MACRO		@back_H_bg_furo_SSSSSSS	$bgs_env("bgse_furo07",0,1)
#MACRO		@back_H_bg_furo_SSSSSSSS	$bgs_env("bgse_furo08",0,1)

//トイレとか

#MACRO		@back_H_bg_toire		@hbgs_action_stop_all(0) $bgs_env("bgse_toire00",0,0) //ワンショット、アクションも停止

#MACRO		@back_H_bg_toire_S		$bgs_env("bgse_toire01",0,1)
#MACRO		@back_H_bg_toire_SS		$bgs_env("bgse_toire02",0,1)
#MACRO		@back_H_bg_toire_SSS	$bgs_env("bgse_toire03",0,1)
#MACRO		@back_H_bg_toire_SSSS	$bgs_env("bgse_toire04",0,1)
#MACRO		@back_H_bg_toire_SSSSS	$bgs_env("bgse_toire05",0,1)
#MACRO		@back_H_bg_toire_SSSSSS	$bgs_env("bgse_toire06",0,1)
#MACRO		@back_H_bg_toire_SSSSSSS	$bgs_env("bgse_toire07",0,1)
#MACRO		@back_H_bg_toire_SSSSSSSS	$bgs_env("bgse_toire07",0,1)


//ストップ（前の命令を維持するための置き換え）

#MACRO		@back_H_bg_stop(@time(0))	@hbgs_env_stop_all(@time)  

//----------------
//行為アクション＋環境音
/*----

	基本的には同時使用なこちらを使用する。

---*/

//全停止

#MACRO	@bhab_stop @back_H_bg_stop @back_H_action_stop


//ベッド＋正常位

/*
@back_H_bg_bed
*/

#MACRO	@bhab_bed_front @back_H_bg_bed
#MACRO	@bhab_bed_front_S(@ch(0))			@back_H_action_front_S(@ch)			@back_H_bg_bed_S
#MACRO	@bhab_bed_front_SS(@ch(0))			@back_H_action_front_SS(@ch)		@back_H_bg_bed_SS
#MACRO	@bhab_bed_front_SSS(@ch(0))			@back_H_action_front_SSS(@ch)		@back_H_bg_bed_SSS
#MACRO	@bhab_bed_front_SSSS(@ch(0))		@back_H_action_front_SSSS(@ch)		@back_H_bg_bed_SSSS
#MACRO	@bhab_bed_front_SSSSS(@ch(0))		@back_H_action_front_SSSSS(@ch)		@back_H_bg_bed_SSSSS
#MACRO	@bhab_bed_front_SSSSSS(@ch(0))		@back_H_action_front_SSSSSS(@ch)	@back_H_bg_bed_SSSSSS
#MACRO	@bhab_bed_front_SSSSSSS(@ch(0))		@back_H_action_front_SSSSSSS(@ch)	@back_H_bg_bed_SSSSSSS
#MACRO	@bhab_bed_front_SSSSSSSS(@ch(0))	@back_H_action_front_SSSSSSSS(@ch) 	@back_H_bg_bed_SSSSSSSS

//ベッド＋後背位

/*
@back_H_bg_bed
*/

#MACRO	@bhab_bed_back  @back_H_bg_bed
#MACRO	@bhab_bed_back_S(@ch(0))			@back_H_action_back_S(@ch)			@back_H_bg_bed_S
#MACRO	@bhab_bed_back_SS(@ch(0))			@back_H_action_back_SS(@ch)			@back_H_bg_bed_SS
#MACRO	@bhab_bed_back_SSS(@ch(0))			@back_H_action_back_SSS(@ch)		@back_H_bg_bed_SSS
#MACRO	@bhab_bed_back_SSSS(@ch(0))			@back_H_action_back_SSSS(@ch)		@back_H_bg_bed_SSSS
#MACRO	@bhab_bed_back_SSSSS(@ch(0))		@back_H_action_back_SSSSS(@ch)		@back_H_bg_bed_SSSSS
#MACRO	@bhab_bed_back_SSSSSS(@ch(0))		@back_H_action_back_SSSSSS(@ch)		@back_H_bg_bed_SSSSSS
#MACRO	@bhab_bed_back_SSSSSSS(@ch(0))		@back_H_action_back_SSSSSSS(@ch)	@back_H_bg_bed_SSSSSSS
#MACRO	@bhab_bed_back_SSSSSSSS(@ch(0))		@back_H_action_back_SSSSSSSS(@ch) 	@back_H_bg_bed_SSSSSSSS

//ベッド＋騎乗位

/*
@back_H_bg_bed
*/

#MACRO	@bhab_bed_ride  @back_H_bg_bed
#MACRO	@bhab_bed_ride_S(@ch(0))			@back_H_action_ride_S(@ch)			@back_H_bg_bed_S
#MACRO	@bhab_bed_ride_SS(@ch(0))			@back_H_action_ride_SS(@ch)			@back_H_bg_bed_SS
#MACRO	@bhab_bed_ride_SSS(@ch(0))			@back_H_action_ride_SSS(@ch)		@back_H_bg_bed_SSS
#MACRO	@bhab_bed_ride_SSSS(@ch(0))			@back_H_action_ride_SSSS(@ch)		@back_H_bg_bed_SSSS
#MACRO	@bhab_bed_ride_SSSSS(@ch(0))		@back_H_action_ride_SSSSS(@ch)		@back_H_bg_bed_SSSSS
#MACRO	@bhab_bed_ride_SSSSSS(@ch(0))		@back_H_action_ride_SSSSSS(@ch)		@back_H_bg_bed_SSSSSS
#MACRO	@bhab_bed_ride_SSSSSSS(@ch(0))		@back_H_action_ride_SSSSSSS(@ch)	@back_H_bg_bed_SSSSSSS
#MACRO	@bhab_bed_ride_SSSSSSSS(@ch(0))		@back_H_action_ride_SSSSSSSS(@ch) 	@back_H_bg_bed_SSSSSSSS


//風呂＋正常位

/*
@back_H_bg_furo
*/

#MACRO	@bhab_furo_front @back_H_bg_furo
#MACRO	@bhab_furo_front_S(@ch(0))			@back_H_action_front_S(@ch)			@back_H_bg_furo_S
#MACRO	@bhab_furo_front_SS(@ch(0))			@back_H_action_front_SS(@ch)		@back_H_bg_furo_SS
#MACRO	@bhab_furo_front_SSS(@ch(0))		@back_H_action_front_SSS(@ch)		@back_H_bg_furo_SSS
#MACRO	@bhab_furo_front_SSSS(@ch(0))		@back_H_action_front_SSSS(@ch)		@back_H_bg_furo_SSSS
#MACRO	@bhab_furo_front_SSSSS(@ch(0))		@back_H_action_front_SSSSS(@ch)		@back_H_bg_furo_SSSSS
#MACRO	@bhab_furo_front_SSSSSS(@ch(0))		@back_H_action_front_SSSSSS(@ch)	@back_H_bg_furo_SSSSSS
#MACRO	@bhab_furo_front_SSSSSSS(@ch(0))	@back_H_action_front_SSSSSSS(@ch)	@back_H_bg_furo_SSSSSSS
#MACRO	@bhab_furo_front_SSSSSSSS(@ch(0))	@back_H_action_front_SSSSSSSS(@ch) 	@back_H_bg_furo_SSSSSSSS

//風呂＋後背位

/*
@back_H_bg_furo
*/

#MACRO	@bhab_furo_back  @back_H_bg_furo
#MACRO	@bhab_furo_back_S(@ch(0))			@back_H_action_back_S(@ch)			@back_H_bg_furo_S
#MACRO	@bhab_furo_back_SS(@ch(0))			@back_H_action_back_SS(@ch)			@back_H_bg_furo_SS
#MACRO	@bhab_furo_back_SSS(@ch(0))			@back_H_action_back_SSS(@ch)		@back_H_bg_furo_SSS
#MACRO	@bhab_furo_back_SSSS(@ch(0))		@back_H_action_back_SSSS(@ch)		@back_H_bg_furo_SSSS
#MACRO	@bhab_furo_back_SSSSS(@ch(0))		@back_H_action_back_SSSSS(@ch)		@back_H_bg_furo_SSSSS
#MACRO	@bhab_furo_back_SSSSSS(@ch(0))		@back_H_action_back_SSSSSS(@ch)		@back_H_bg_furo_SSSSSS
#MACRO	@bhab_furo_back_SSSSSSS(@ch(0))		@back_H_action_back_SSSSSSS(@ch)	@back_H_bg_furo_SSSSSSS
#MACRO	@bhab_furo_back_SSSSSSSS(@ch(0))	@back_H_action_back_SSSSSSSS(@ch) 	@back_H_bg_furo_SSSSSSSS

//風呂＋騎乗位

/*
@back_H_bg_furo
*/

#MACRO	@bhab_furo_ride  @back_H_bg_furo
#MACRO	@bhab_furo_ride_S(@ch(0))			@back_H_action_ride_S(@ch)			@back_H_bg_furo_S
#MACRO	@bhab_furo_ride_SS(@ch(0))			@back_H_action_ride_SS(@ch)			@back_H_bg_furo_SS
#MACRO	@bhab_furo_ride_SSS(@ch(0))			@back_H_action_ride_SSS(@ch)		@back_H_bg_furo_SSS
#MACRO	@bhab_furo_ride_SSSS(@ch(0))		@back_H_action_ride_SSSS(@ch)		@back_H_bg_furo_SSSS
#MACRO	@bhab_furo_ride_SSSSS(@ch(0))		@back_H_action_ride_SSSSS(@ch)		@back_H_bg_furo_SSSSS
#MACRO	@bhab_furo_ride_SSSSSS(@ch(0))		@back_H_action_ride_SSSSSS(@ch)		@back_H_bg_furo_SSSSSS
#MACRO	@bhab_furo_ride_SSSSSSS(@ch(0))		@back_H_action_ride_SSSSSSS(@ch)	@back_H_bg_furo_SSSSSSS
#MACRO	@bhab_furo_ride_SSSSSSSS(@ch(0))	@back_H_action_ride_SSSSSSSS(@ch) 	@back_H_bg_furo_SSSSSSSS


//トイレ＋正常位

/*
@back_H_bg_toire
*/

#MACRO	@bhab_toire_front @back_H_bg_toire
#MACRO	@bhab_toire_front_S(@ch(0))			@back_H_action_front_S(@ch)			@back_H_bg_toire_S
#MACRO	@bhab_toire_front_SS(@ch(0))		@back_H_action_front_SS(@ch)		@back_H_bg_toire_SS
#MACRO	@bhab_toire_front_SSS(@ch(0))		@back_H_action_front_SSS(@ch)		@back_H_bg_toire_SSS
#MACRO	@bhab_toire_front_SSSS(@ch(0))		@back_H_action_front_SSSS(@ch)		@back_H_bg_toire_SSSS
#MACRO	@bhab_toire_front_SSSSS(@ch(0))		@back_H_action_front_SSSSS(@ch)		@back_H_bg_toire_SSSSS
#MACRO	@bhab_toire_front_SSSSSS(@ch(0))	@back_H_action_front_SSSSSS(@ch)	@back_H_bg_toire_SSSSSS
#MACRO	@bhab_toire_front_SSSSSSS(@ch(0))	@back_H_action_front_SSSSSSS(@ch)	@back_H_bg_toire_SSSSSSS
#MACRO	@bhab_toire_front_SSSSSSSS(@ch(0))	@back_H_action_front_SSSSSSSS(@ch) 	@back_H_bg_toire_SSSSSSSS

//トイレ＋後背位

/*
@back_H_bg_toire
*/

#MACRO	@bhab_toire_back @back_H_bg_toire
#MACRO	@bhab_toire_back_S(@ch(0))			@back_H_action_back_S(@ch)			@back_H_bg_toire_S
#MACRO	@bhab_toire_back_SS(@ch(0))			@back_H_action_back_SS(@ch)			@back_H_bg_toire_SS
#MACRO	@bhab_toire_back_SSS(@ch(0))		@back_H_action_back_SSS(@ch)		@back_H_bg_toire_SSS
#MACRO	@bhab_toire_back_SSSS(@ch(0))		@back_H_action_back_SSSS(@ch)		@back_H_bg_toire_SSSS
#MACRO	@bhab_toire_back_SSSSS(@ch(0))		@back_H_action_back_SSSSS(@ch)		@back_H_bg_toire_SSSSS
#MACRO	@bhab_toire_back_SSSSSS(@ch(0))		@back_H_action_back_SSSSSS(@ch)		@back_H_bg_toire_SSSSSS
#MACRO	@bhab_toire_back_SSSSSSS(@ch(0))	@back_H_action_back_SSSSSSS(@ch)	@back_H_bg_toire_SSSSSSS
#MACRO	@bhab_toire_back_SSSSSSSS(@ch(0))	@back_H_action_back_SSSSSSSS(@ch) 	@back_H_bg_toire_SSSSSSSS

//トイレ＋騎乗位

/*
@back_H_bg_toire
*/
#MACRO	@bhab_toire_ride @back_H_bg_toire
#MACRO	@bhab_toire_ride_S(@ch(0))			@back_H_action_ride_S(@ch)			@back_H_bg_toire_S
#MACRO	@bhab_toire_ride_SS(@ch(0))			@back_H_action_ride_SS(@ch)			@back_H_bg_toire_SS
#MACRO	@bhab_toire_ride_SSS(@ch(0))		@back_H_action_ride_SSS(@ch)		@back_H_bg_toire_SSS
#MACRO	@bhab_toire_ride_SSSS(@ch(0))		@back_H_action_ride_SSSS(@ch)		@back_H_bg_toire_SSSS
#MACRO	@bhab_toire_ride_SSSSS(@ch(0))		@back_H_action_ride_SSSSS(@ch)		@back_H_bg_toire_SSSSS
#MACRO	@bhab_toire_ride_SSSSSS(@ch(0))		@back_H_action_ride_SSSSSS(@ch)		@back_H_bg_toire_SSSSSS
#MACRO	@bhab_toire_ride_SSSSSSS(@ch(0))	@back_H_action_ride_SSSSSSS(@ch)	@back_H_bg_toire_SSSSSSS
#MACRO	@bhab_toire_ride_SSSSSSSS(@ch(0))	@back_H_action_ride_SSSSSSSS(@ch) 	@back_H_bg_toire_SSSSSSSS


//全ストップ

//@hbgv_stop_all		;音声全止め
//@hbgs_stop_all		;サウンド全止め
//@hbg_stop_all			;両方全止め
