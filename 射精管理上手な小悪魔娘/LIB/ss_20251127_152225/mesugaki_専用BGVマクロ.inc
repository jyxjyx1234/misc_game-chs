//--------------------------------------
//エロ効果音用マクロ一覧

//コンフィグ用サンプルファイル
#DEFINE      <BGV_SAMPLE>         "hbgv_aegi_S_jur01"

//全ch止め
//@hbgv_stop_all(@time(500)) 

//----------------
//各キャラ喘ぎ声＆フェラ音(ch=0)

//#MACRO	@hbgv_jur_kiss1(@fade_mode(1))				$bgv_voice("hbgv_kiss01_jur01",0,@fade_mode)
//#MACRO	@hbgv_jur_berokiss1(@fade_mode(1))			$bgv_voice("hbgv_kiss02_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_fera_S1(@fade_mode(1))			$bgv_voice("hbgv_fera_S_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_fera_SS1(@fade_mode(1))			$bgv_voice("hbgv_fera_SS_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_fera_nomu1(@fade_mode(1))			$bgv_voice("hbgv_fera_n_jur01",0,@fade_mode)

//#MACRO	@hbgv_jur_kiss2(@fade_mode(1))				$bgv_voice("hbgv_kiss01_jur02",0,@fade_mode)
//#MACRO	@hbgv_jur_berokiss2(@fade_mode(1))			$bgv_voice("hbgv_kiss02_jur02",0,@fade_mode)
#MACRO	@hbgv_jur_fera_S2(@fade_mode(1))			$bgv_voice("hbgv_fera_S_jur02",0,@fade_mode)
#MACRO	@hbgv_jur_fera_SS2(@fade_mode(1))			$bgv_voice("hbgv_fera_SS_jur02",0,@fade_mode)
#MACRO	@hbgv_jur_fera_nomu2(@fade_mode(1))			$bgv_voice("hbgv_fera_n_jur02",0,@fade_mode)

#MACRO	@hbgv_jur_aegi_S1(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_aegi_SS1(@fade_mode(1))			$bgv_voice("hbgv_aegi_SS_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_aegi_SSS1(@fade_mode(1))			$bgv_voice("hbgv_aegi_SSS_jur01",0,@fade_mode)
//#MACRO	@hbgv_jur_aegi_gaman_S1(@fade_mode(1))		$bgv_voice("hbgv_aegi04_jur01",0,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)
//#MACRO	@hbgv_jur_aegi_gaman_SS1(@fade_mode(1))		$bgv_voice("hbgv_aegi05_jur01",0,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)強
#MACRO	@hbgv_jur_aegi_owari1(@fade_mode(1))		$bgv_voice("hbgv_aegi_end_jur01",0,@fade_mode)

#MACRO	@hbgv_jur_aegi_S2(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_jur02",0,@fade_mode)
#MACRO	@hbgv_jur_aegi_SS2(@fade_mode(1))			$bgv_voice("hbgv_aegi_SS_jur02",0,@fade_mode)
#MACRO	@hbgv_jur_aegi_SSS2(@fade_mode(1))			$bgv_voice("hbgv_aegi_SSS_jur02",0,@fade_mode)
//#MACRO	@hbgv_jur_aegi_gaman_S2(@fade_mode(1))		$bgv_voice("hbgv_aegi04_jur02",0,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)
//#MACRO	@hbgv_jur_aegi_gaman_SS2(@fade_mode(1))		$bgv_voice("hbgv_aegi05_jur02",0,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)強
#MACRO	@hbgv_jur_aegi_owari2(@fade_mode(1))		$bgv_voice("hbgv_aegi_end_jur02",0,@fade_mode)

//★メスガキ用笑い声ループ
#MACRO	@hbgv_jur_warai1(@fade_mode(1))		$bgv_voice("hbgv_warai_jur01",0,@fade_mode)
#MACRO	@hbgv_jur_warai2(@fade_mode(1))		$bgv_voice("hbgv_warai_jur02",0,@fade_mode)

//★耳元
#MACRO	@hbgv_jur_fera_S1_R(@fade_mode(1))			$bgv_voice("hbgv_fera_S_jur01_R",0,@fade_mode)
#MACRO	@hbgv_jur_fera_S2_R(@fade_mode(1))			$bgv_voice("hbgv_fera_S_jur02_R",0,@fade_mode)

#MACRO	@hbgv_jur_aegi_S1_R(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_jur01_R",0,@fade_mode)
#MACRO	@hbgv_jur_aegi_S2_R(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_jur02_R",0,@fade_mode)

//★笑い声右側

#MACRO	@hbgv_jur_warai_R(@fade_mode(1))		$bgv_voice("hbgv_warai_jur_R",0,@fade_mode)


//----------------
//チュパ音＆あえぎ声停止

#MACRO	@hbgv_jur_stop(@time(500))			$bgv_stop(0,@time)



//----------------
//各キャラ喘ぎ声＆フェラ音(ch=1)

//#MACRO	@hbgv_kas_kiss1(@fade_mode(1))				$bgv_voice("hbgv_kiss01_kas01",1,@fade_mode)
//#MACRO	@hbgv_kas_berokiss1(@fade_mode(1))			$bgv_voice("hbgv_kiss02_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_fera_S1(@fade_mode(1))			$bgv_voice("hbgv_fera_S_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_fera_SS1(@fade_mode(1))			$bgv_voice("hbgv_fera_SS_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_fera_nomu1(@fade_mode(1))			$bgv_voice("hbgv_fera_n_kas01",1,@fade_mode)

//#MACRO	@hbgv_kas_kiss2(@fade_mode(1))				$bgv_voice("hbgv_kiss01_kas02",1,@fade_mode)
//#MACRO	@hbgv_kas_berokiss2(@fade_mode(1))			$bgv_voice("hbgv_kiss02_kas02",1,@fade_mode)
#MACRO	@hbgv_kas_fera_S2(@fade_mode(1))			$bgv_voice("hbgv_fera_S_kas02",1,@fade_mode)
#MACRO	@hbgv_kas_fera_SS2(@fade_mode(1))			$bgv_voice("hbgv_fera_SS_kas02",1,@fade_mode)
#MACRO	@hbgv_kas_fera_nomu2(@fade_mode(1))			$bgv_voice("hbgv_fera_n_kas02",1,@fade_mode)

#MACRO	@hbgv_kas_aegi_S1(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_aegi_SS1(@fade_mode(1))			$bgv_voice("hbgv_aegi_SS_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_aegi_SSS1(@fade_mode(1))			$bgv_voice("hbgv_aegi_SSS_kas01",1,@fade_mode)
//#MACRO	@hbgv_kas_aegi_gaman_S1(@fade_mode(1))		$bgv_voice("hbgv_aegi04_kas01",1,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)
//#MACRO	@hbgv_kas_aegi_gaman_SS1(@fade_mode(1))		$bgv_voice("hbgv_aegi05_kas01",1,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)強
#MACRO	@hbgv_kas_aegi_owari1(@fade_mode(1))		$bgv_voice("hbgv_aegi_end_kas01",1,@fade_mode)

#MACRO	@hbgv_kas_aegi_S2(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_kas02",1,@fade_mode)
#MACRO	@hbgv_kas_aegi_SS2(@fade_mode(1))			$bgv_voice("hbgv_aegi_SS_kas02",1,@fade_mode)
#MACRO	@hbgv_kas_aegi_SSS2(@fade_mode(1))			$bgv_voice("hbgv_aegi_SSS_kas02",1,@fade_mode)
//#MACRO	@hbgv_kas_aegi_gaman_S2(@fade_mode(1))		$bgv_voice("hbgv_aegi04_kas02",1,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)
//#MACRO	@hbgv_kas_aegi_gaman_SS2(@fade_mode(1))		$bgv_voice("hbgv_aegi05_kas02",1,@fade_mode)	//口押さえて我慢(口を手で塞ぐ)強
#MACRO	@hbgv_kas_aegi_owari2(@fade_mode(1))		$bgv_voice("hbgv_aegi_end_kas02",1,@fade_mode)

//★メスガキ用笑い声ループ
#MACRO	@hbgv_kas_warai1(@fade_mode(1))		$bgv_voice("hbgv_warai_kas01",1,@fade_mode)
#MACRO	@hbgv_kas_warai2(@fade_mode(1))		$bgv_voice("hbgv_warai_kas02",1,@fade_mode)

//★耳元
#MACRO	@hbgv_kas_fera_S1_L(@fade_mode(1))			$bgv_voice("hbgv_fera_S_kas01_L",1,@fade_mode)
#MACRO	@hbgv_kas_fera_S2_L(@fade_mode(1))			$bgv_voice("hbgv_fera_S_kas02_L",1,@fade_mode)

#MACRO	@hbgv_kas_aegi_S1_L(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_kas01_L",1,@fade_mode)
#MACRO	@hbgv_kas_aegi_S2_L(@fade_mode(1))			$bgv_voice("hbgv_aegi_S_kas02_L",1,@fade_mode)

//★笑い声左側
#MACRO	@hbgv_kas_warai_L(@fade_mode(1))		$bgv_voice("hbgv_warai_kas_L",1,@fade_mode)



//----------------
//チュパ音＆あえぎ声停止

#MACRO	@hbgv_kas_stop(@time(500))			$bgv_stop(1,@time)


//-----------------
//音声加工済みループ

#MACRO	@hbgv_aegi_unknown01		$bgv_voice("hbgv_aegi_unknown01",1,0)
#MACRO	@hbgv_aegi_unknown02		$bgv_voice("hbgv_aegi_unknown02",1,0)

