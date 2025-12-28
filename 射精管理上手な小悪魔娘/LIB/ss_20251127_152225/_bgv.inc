

#define		@BGV_BUFF_CH		10		//効果音の再生チャンネル → pcmch[ここ].play
//#define		@BGV_VOL_CH		16

// ----------------------------------------------------------------------------------
// ＢＧＶの再生
// ----------------------------------------------------------------------------------
#define @BGV_H1
				if(syscom.get_sound_onoff(@BGV_VOL_CH)==1){
					pcmevent[0].start_random(
						@BGV_BUFF_CH,				//再生チャンネル
						wait_type=1,
						volume_type = @BGV_VOL_CH,
						bgm_fade2_target = 1,
						chara_no=011,		//キャラの音声番号 ＝ KOE(xxx,zzz) のzzzの数字です
						[Z014900010, 100, 500],
						[Z014900012, 100, 500]		//いくつでも指定可能ですが、最後のみ「,」がありませんのでご注意ください
					)
				}


#define @BGV_H2
				if(syscom.get_sound_onoff(@BGV_VOL_CH)==1){
					pcmevent[0].start_random(
						@BGV_BUFF_CH,				//再生チャンネル
						wait_type=1,
						volume_type = @BGV_VOL_CH,
						bgm_fade2_target = 1,
						chara_no=011,		//キャラの音声番号 ＝ KOE(xxx,zzz) のzzzの数字です
						[Z014900015, 100, 500],
						[Z014900016, 100, 500]		//いくつでも指定可能ですが、最後のみ「,」がありませんのでご注意ください
					)
				}

//#define	@BGV_VOL_DEFAULT	//ＢＧＶのボリュームをデフォルトにする
//			syscom.set_sound_volume(@BGV_VOL_CH,@BGV_VOL_DEFAULT_VALUE)




//上記マクロをコピペして増やす

