//---------------------
//効果音停止

#MACRO @pcm_wait(@pcmch(0))		pcmch[@pcmch].wait_fade_key
#MACRO @pcm_stop(@time(1000))		pcmch[0].stop(@time) pcmch[1].stop(@time) pcmch[2].stop(@time) 
#MACRO @pcm_stop_wait(@time(1000))		pcmch[0].stop(@time) pcmch[1].stop(@time) pcmch[2].stop(@time) TIMEWAIT(@time)

#MACRO @pcm0_stop(@time(1000))		pcmch[0].stop(@time)
#MACRO @pcm1_stop(@time(1000))		pcmch[1].stop(@time)
#MACRO @pcm2_stop(@time(1000))		pcmch[2].stop(@time)


//-----------------------
//固定効果音

//今後は製品が変わっても変更なし。

//300～309


#MACRO	@se_tukkomi	if (1) {@PCMPLAY(301)}
#MACRO	@tukkomi	@MW_QUAKE @size_b if (1) {@PCMPLAY(301)}

#MACRO	@se_pi		@PCMPLAY(302)
#MACRO	@se_bikkuri if (1) {@PCMPLAY(303)}

#MACRO	@se_ikari	if (1) {@PCMPLAY(304)}
#MACRO	@se_hatena	if (1) {@PCMPLAY(305,2)}

#MACRO	@se_scene_change_up	$PCMPLAY(306,2,2)
#MACRO	@se_scene_change_down	$PCMPLAY(307,2,2)		//2
#MACRO	@se_scene_change_alone	$PCMPLAY(308,4,2)		//2
#MACRO	@se_scene_change_alone2	$PCMPLAY(309,4,2)		//2


//以下固定追加分。番号を変えた場合は変更すること。

#MACRO	@se_down(@pcmch(0))		if (1) {$pcmplay(482,0,@pcmch)}
#MACRO	@se_ikiri(@pcmch(0))	if (1) {$pcmplay(483,0,@pcmch)}



//-----------------------------------------------
//310_演出固定音

#MACRO	@pcm_camera(@pcmch(0))	$pcmplay(310,0,@pcmch)
#MACRO	@pcm_camera_ren(@pcmch(0))	$pcmplay(311,0,@pcmch)
#MACRO	@pcm_camera_set(@pcmch(0))	$pcmplay(312,2,@pcmch)
#MACRO	@pcm_camera_start(@pcmch(0))	$pcmplay(313,0,@pcmch)
#MACRO	@pcm_room_clock(@pcmch(0))	$pcmplay(314,4,@pcmch)

#MACRO  @pcm_click(@pcmch(0))	 	$pcmplay(315,0,@pcmch)
#MACRO  @pcm_click_d(@pcmch(0))	  	$pcmplay(316,0,@pcmch)


//-----------------------------------------------
//390_回想関係やチリチリ音など

#MACRO	@pcm_dream_noise1(@pcmch(1))	$pcmplay(390,2,@pcmch) //1
#MACRO	@pcm_dream_noise2(@pcmch(1))	$pcmplay(391,2,@pcmch) //1
#MACRO	@pcm_dream_fear(@pcmch(1))	$pcmplay(392,2,@pcmch) //1
#MACRO	@pcm_dream_distress(@pcmch(1))	$pcmplay(393,2,@pcmch) //1
#MACRO	@pcm_dream_memories(@pcmch(1))	$pcmplay(394,2,@pcmch) //1
#MACRO	@pcm_dream_switch(@pcmch(1))	$pcmplay(395,2,@pcmch) //1
#MACRO	@pcm_dream_in(@pcmch(1))	$pcmplay(396,2,@pcmch) //1
#MACRO	@pcm_dream_out(@pcmch(1))	$pcmplay(397,2,@pcmch) //1

//-----------------------------------------------
//450_手を握る・抱きつく・押し倒す

#MACRO	@pcm_bed_sheet(@pcmch(0))	$pcmplay(450,2,@pcmch)
#MACRO	@pcm_bed_futon(@pcmch(0))	$pcmplay(451,0,@pcmch)
#MACRO	@pcm_bed_wakeup(@pcmch(0))	$pcmplay(452,0,@pcmch)
#MACRO	@pcm_bed_overthrow(@pcmch(0))	$pcmplay(453,0,@pcmch)
#MACRO	@pcm_bed_plunge(@pcmch(0))	$pcmplay(454,0,@pcmch)
#MACRO	@pcm_bed_jump(@pcmch(0))	$pcmplay(455,0,@pcmch)
#MACRO	@pcm_bed_move(@pcmch(0))	$pcmplay(456,2,@pcmch)
#MACRO	@pcm_bed_wild(@pcmch(0))	$pcmplay(457,2,@pcmch)
#MACRO	@pcm_hug_strong(@pcmch(0))	$pcmplay(458,0,@pcmch)
#MACRO	@pcm_hug_grab(@pcmch(0))	$pcmplay(459,0,@pcmch)
#MACRO	@pcm_hug_wild(@pcmch(0))	$pcmplay(460,2,@pcmch)
#MACRO	@pcm_hug_touch(@pcmch(0))	$pcmplay(461,2,@pcmch)
#MACRO	@pcm_hug1(@pcmch(0))	$pcmplay(462,0,@pcmch)
#MACRO	@pcm_hug2(@pcmch(0))	$pcmplay(463,0,@pcmch)
#MACRO	@pcm_hugged(@pcmch(0))	$pcmplay(464,0,@pcmch)

#MACRO	@pcm_hand_panpan(@pcmch(0))	$pcmplay(465,0,@pcmch)


//-----------------------------------------------
//470_心臓の音・心象音

#MACRO	@pcm_mind_kaminari(@pcmch(0))	$pcmplay(470,0,@pcmch)
#MACRO	@pcm_mind_gusagusa(@pcmch(0))	$pcmplay(471,0,@pcmch)
#MACRO	@pcm_mind_gusa(@pcmch(0))	$pcmplay(472,0,@pcmch)
#MACRO	@pcm_mind_zusya(@pcmch(0))	$pcmplay(473,0,@pcmch)
#MACRO	@pcm_mind_chiin(@pcmch(0))	$pcmplay(474,3,@pcmch)
#MACRO	@pcm_mind_doya(@pcmch(0))	$pcmplay(475,2,@pcmch)
#MACRO	@pcm_mind_parin(@pcmch(0))	$pcmplay(476,0,@pcmch)
#MACRO	@pcm_mind_gaan(@pcmch(0))	$pcmplay(477,2,@pcmch)
#MACRO	@pcm_mind_heal(@pcmch(0))	$pcmplay(478,2,@pcmch)
#MACRO	@pcm_mind_hotface(@pcmch(0))	$pcmplay(479,2,@pcmch)
#MACRO	@pcm_dokun(@pcmch(0))	$pcmplay(480,0,@pcmch)
#MACRO	@pcm_dokun_loop(@pcmch(0))	$pcmplay(481,4,@pcmch)
#MACRO	@pcm_mind_down(@pcmch(0))	$pcmplay(482,0,@pcmch)
		
#MACRO	@pcm_mind_ikiri(@pcmch(0))	$pcmplay(483,0,@pcmch)


//-----------------------------------------------
//620_環境音

#MACRO	@pcm_noise_veranda(@pcmch(1))	$pcmplay(620,5,@pcmch) //1
#MACRO	@pcm_noise_station_front(@pcmch(1))	$pcmplay(621,5,@pcmch) //1
#MACRO	@pcm_noise_summer_town_semi(@pcmch(1))	$pcmplay(622,4,@pcmch) //1
#MACRO	@pcm_noise_summer_country_semi(@pcmch(1))	$pcmplay(623,4,@pcmch) //1
#MACRO	@pcm_noise_town(@pcmch(1))	$pcmplay(624,4,@pcmch) //1
#MACRO	@pcm_noise_park(@pcmch(1))	$pcmplay(625,4,@pcmch) //1
#MACRO	@pcm_noise_traffic_jam(@pcmch(1))	$pcmplay(626,4,@pcmch) //1
#MACRO	@pcm_noise_aircon(@pcmch(1))	$pcmplay(627,4,@pcmch) //1
#MACRO	@pcm_noise_housing(@pcmch(1))	$pcmplay(628,4,@pcmch) //1
#MACRO	@pcm_noise_back_mountain(@pcmch(1))	$pcmplay(629,4,@pcmch) //1
#MACRO	@pcm_noise_alley(@pcmch(1))	$pcmplay(630,4,@pcmch) //1
#MACRO	@pcm_noise_snow_parapara(@pcmch(1))	$pcmplay(631,4,@pcmch) //1
#MACRO	@pcm_noise_snow_botabota(@pcmch(1))	$pcmplay(632,4,@pcmch) //1
#MACRO	@pcm_noise_morning_kanraku(@pcmch(1))	$pcmplay(633,4,@pcmch) //1
#MACRO	@pcm_noise_morning_suzume(@pcmch(1))	$pcmplay(634,4,@pcmch) //1
#MACRO	@pcm_noise_rain1(@pcmch(1))	$pcmplay(635,4,@pcmch) //1	@pcm_noise_rain1
#MACRO	@pcm_noise_rain2(@pcmch(1))	$pcmplay(636,4,@pcmch) //1	@pcm_noise_rain2


//-----------------------------------------------
//650_電話・スマホ関係

#MACRO	@pcm_line_talk(@pcmch(0))	$pcmplay(650,0,@pcmch)
#MACRO	@pcm_line_end(@pcmch(0))	$pcmplay(651,0,@pcmch)
#MACRO	@pcm_line_call(@pcmch(0))	$pcmplay(652,0,@pcmch)
#MACRO	@pcm_sumaho_unlock(@pcmch(0))	$pcmplay(653,0,@pcmch)
#MACRO	@pcm_sumaho_call(@pcmch(0))	$pcmplay(654,5,@pcmch)
#MACRO	@pcm_sumaho_calling(@pcmch(0))	$pcmplay(655,5,@pcmch)
#MACRO	@pcm_sumaho_mail(@pcmch(0))	$pcmplay(656,0,@pcmch)
#MACRO	@pcm_sumaho_put(@pcmch(0))	$pcmplay(657,0,@pcmch)
#MACRO	@pcm_sumaho_end(@pcmch(0))	$pcmplay(658,0,@pcmch)
#MACRO	@pcm_sumaho_vibe(@pcmch(0))	$pcmplay(659,5,@pcmch)
#MACRO	@pcm_sumaho_incoming(@pcmch(0))	$pcmplay(660,5,@pcmch)
#MACRO	@pcm_sumaho_clock1(@pcmch(0))	$pcmplay(661,5,@pcmch)
#MACRO	@pcm_sumaho_clock2(@pcmch(0))	$pcmplay(662,5,@pcmch)
#MACRO	@pcm_sumaho_not_connect(@pcmch(0))	$pcmplay(663,5,@pcmch)
#MACRO	@pcm_sumaho_connect_end(@pcmch(0))	$pcmplay(664,5,@pcmch)


//-----------------------------------------------
//670_チャイム・玄関・学校	

#MACRO	@pcm_intercom(@pcmch(0))	$pcmplay(670,0,@pcmch)
#MACRO	@pcm_intercom_ren(@pcmch(0))	$pcmplay(671,5,@pcmch)
#MACRO	@pcm_whistle_distance(@pcmch(0))	$pcmplay(672,2,@pcmch)
#MACRO	@pcm_school_chime(@pcmch(0))	$pcmplay(673,3,@pcmch)


//-----------------------------------------------
//680_ゲーム音・電子音・ネタ音

#MACRO	@pcm_effect_powerup(@pcmch(0))	$pcmplay(680,0,@pcmch)
#MACRO	@pcm_effect_hero_standup(@pcmch(0))	$pcmplay(681,0,@pcmch)
#MACRO	@pcm_effect_dash_appear(@pcmch(0))	$pcmplay(682,0,@pcmch)
#MACRO	@pcm_effect_dash_escape(@pcmch(0))	$pcmplay(683,0,@pcmch)
#MACRO	@pcm_effect_munyu1(@pcmch(0))	$pcmplay(684,0,@pcmch)
#MACRO	@pcm_effect_munyu2(@pcmch(0))	$pcmplay(685,0,@pcmch)
#MACRO	@pcm_effect_attack_spaan(@pcmch(0))	$pcmplay(686,0,@pcmch)
#MACRO	@pcm_effect_attack_dogooo(@pcmch(0))	$pcmplay(687,0,@pcmch)
#MACRO	@pcm_effect_attack_dogo(@pcmch(0))	$pcmplay(688,0,@pcmch)
#MACRO	@pcm_effect_attack_hataku(@pcmch(0))	$pcmplay(689,0,@pcmch)
#MACRO	@pcm_effect_attack_bisi(@pcmch(0))	$pcmplay(690,0,@pcmch)
#MACRO	@pcm_effect_attack_misimisi(@pcmch(0))	$pcmplay(691,0,@pcmch)
#MACRO	@pcm_effect_kinkon(@pcmch(0))	$pcmplay(692,0,@pcmch)
#MACRO	@pcm_effect_cash(@pcmch(0))	$pcmplay(693,0,@pcmch)
#MACRO	@pcm_effect_game_break(@pcmch(0))	$pcmplay(694,0,@pcmch)
#MACRO	@pcm_effect_game_shot(@pcmch(0))	$pcmplay(695,0,@pcmch)
#MACRO	@pcm_effect_game_over(@pcmch(0))	$pcmplay(696,0,@pcmch)



//-----------------------------------------------
//710_ファスナー・バイブなど準エロ音

#MACRO	@pcm_biH_hip_slap1(@pcmch(0))	$pcmplay(710,0,@pcmch)
#MACRO	@pcm_biH_hip_slap2(@pcmch(0))	$pcmplay(711,0,@pcmch)
#MACRO	@pcm_biH_condom_look(@pcmch(0))	$pcmplay(712,0,@pcmch)
#MACRO	@pcm_biH_condom_equip(@pcmch(0))	$pcmplay(713,2,@pcmch)
#MACRO	@pcm_biH_zubon_fastener(@pcmch(0))	$pcmplay(714,2,@pcmch)
#MACRO	@pcm_biH_zubon_takeoff(@pcmch(0))	$pcmplay(715,3,@pcmch)
#MACRO	@pcm_biH_vibe_winwin(@pcmch(0))	$pcmplay(716,5,@pcmch)
#MACRO	@pcm_biH_vibe_strong(@pcmch(0))	$pcmplay(717,5,@pcmch)
#MACRO	@pcm_biH_vibe_moderate(@pcmch(0))	$pcmplay(718,5,@pcmch)
#MACRO	@pcm_biH_vibe_intermit(@pcmch(0))	$pcmplay(719,5,@pcmch)
#MACRO	@pcm_biH_bra_hook_remove(@pcmch(0))	$pcmplay(720,0,@pcmch)
#MACRO	@pcm_biH_bra_hook_getout(@pcmch(0))	$pcmplay(721,0,@pcmch)
#MACRO	@pcm_biH_swimwear_takeoff(@pcmch(0))	$pcmplay(722,0,@pcmch)
#MACRO	@pcm_biH_skin_touch(@pcmch(0))	$pcmplay(723,4,@pcmch)
#MACRO	@pcm_biH_skin_justlike(@pcmch(0))	$pcmplay(724,4,@pcmch)
#MACRO	@pcm_biH_cloth_justlike(@pcmch(0))	$pcmplay(725,4,@pcmch)
#MACRO	@pcm_biH_cloth_touch(@pcmch(0))	$pcmplay(726,4,@pcmch)
#MACRO	@pcm_biH_cloth_rub1(@pcmch(0))	$pcmplay(727,4,@pcmch)
#MACRO	@pcm_biH_cloth_rub2(@pcmch(0))	$pcmplay(728,4,@pcmch)
#MACRO	@pcm_biH_cloth_takeoff_floor(@pcmch(0))	$pcmplay(729,2,@pcmch)
#MACRO	@pcm_biH_cloth_takeoff_bed(@pcmch(0))	$pcmplay(730,2,@pcmch)
#MACRO	@pcm_biH_cloth_takeoff(@pcmch(0))	$pcmplay(731,3,@pcmch)
#MACRO	@pcm_biH_belt(@pcmch(0))	$pcmplay(732,4,@pcmch)
#MACRO	@pcm_lotion_mix(@pcmch(0))	$pcmplay(733,4,@pcmch)
#MACRO	@pcm_lotion_paint(@pcmch(0))	$pcmplay(734,4,@pcmch)
#MACRO	@pcm_lotion_touch(@pcmch(0))	$pcmplay(735,4,@pcmch)
#MACRO	@pcm_lotion_play(@pcmch(0))	$pcmplay(736,4,@pcmch)
#MACRO	@pcm_lotion_play_long(@pcmch(0))	$pcmplay(737,5,@pcmch)






