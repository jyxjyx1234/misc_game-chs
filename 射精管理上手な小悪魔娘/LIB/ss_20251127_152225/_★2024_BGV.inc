//----------------------------------------------------
//BGV関連設定全般

#DEFINE     @BGV_VOL_CH		16
#DEFINE     @BGS_ONESHOT_VOL_CH		17
#DEFINE     @BGS_ACTION_VOL_CH		18
#DEFINE     @BGS_ENV_VOL_CH		19

#DEFINE     @BGV_VOL_DEFAULT_VALUE  178     //初期値


//コンフィグで再生するサンプルファイル名

//#DEFINE   <BGV_SAMPLE>         "hbgv_aegi01_kan01"   →ゲームごとの設定にて　妹サポなら、imosapo_専用BGVマクロ.inc
#DEFINE     <BGS_ONESHOT_SAMPLE> "hse_in01"
#DEFINE     <BGS_ACTION_SAMPLE>  "hse_loop05"
#DEFINE     <BGS_ENV_SAMPLE>     "bgse_bed05"

#PROPERTY	$se_tmp : int // L[00]などに影響しないように

//ミュートフラグ
//個別設定があるため独立

#DEFINE     @BGV_ALL_MUTE   G[0060]
#DEFINE		@BGV_MUTE	    G[0061]
#DEFINE		@BGS_ONESHOT_MUTE	G[0062]
#DEFINE		@BGS_ACTION_MUTE	G[0063]
#DEFINE		@BGS_ENV_MUTE   	G[0064]
#DEFINE     @BGVボリュームバランス    G[0065]

//////////////////////////////////////////////
//BGV&BGS 再生＆停止命令

#command    $bgv_voice(str,int,int)
#command    $bgv_stop(int,int)
#command    $bgs_oneshot(str,int)
#command    $bgs_oneshot_stop(int,int)
#command    $bgs_action(str,int)
#command    $bgs_action_stop(int,int)
#command    $bgs_env(str,int,int)       //ループフラグ有り（ベットぎしっワンショット対応用）
#command    $bgs_env_stop(int,int)


#MACRO      @hbgv_stop(@ch(0),@time(500))    $bgv_stop(@ch,@time)
#MACRO      @hbgv_stop_all(@time(500))  
                for($se_tmp = 0,$se_tmp < 6,$se_tmp+=1) {$bgv_stop($se_tmp,@time)}

#MACRO      @hbgs_oneshot_stop(@ch(0),@time(500))    $bgs_oneshot_stop(@ch,@time)
#MACRO      @hbgs_oneshot_stop_all(@time(500))  
                for($se_tmp = 0,$se_tmp < 3,$se_tmp+=1) {$bgs_oneshot_stop($se_tmp,@time)}

#MACRO      @hbgs_action_stop(@ch(0),@time(500))    $bgs_action_stop(@ch,@time)
#MACRO      @hbgs_action_stop_all(@time(500))  
                for($se_tmp = 0,$se_tmp < 3,$se_tmp+=1) {$bgs_action_stop($se_tmp,@time)}

#MACRO      @hbgs_env_stop(@ch(0),@time(500))    $bgs_env_stop(@ch,@time)
#MACRO      @hbgs_env_stop_all(@time(500))  
                for($se_tmp = 0,$se_tmp < 3,$se_tmp+=1) {$bgs_env_stop($se_tmp,@time)}



#MACRO      @hbgo_stop_all(@time(500))  @hbgs_oneshot_stop_all(@time)	//短縮


#MACRO      @hbgae_stop_all(@time(500))  
                @hbgs_action_stop_all(@time)
                @hbgs_env_stop_all(@time) 

#MACRO      @hbgs_stop_all(@time(500))  
                @hbgs_oneshot_stop_all(@time)
                @hbgs_action_stop_all(@time)
                @hbgs_env_stop_all(@time) 

#MACRO      @hbg_stop_all(@time(500))  
                @hbgv_stop_all(@time)
                @hbgs_stop_all(@time)


////////////////////////////////////////////////////
//BGVの音量に関する項目

#define	@BGV_VOL_DEFAULT	//ＢＧＶのボリュームをデフォルトにする
    syscom.set_sound_volume(@BGV_VOL_CH,@BGV_VOL_DEFAULT_VALUE)
    @BGV_VOL_SET

//---------------------------
//それぞれのBGSボリュームをBGVボリュームに対する一定値で設定する
#DEFINE     @BGV_VOL_SET
                switch(@BGVボリュームバランス){
                    
                    case(0) //標準
                        syscom.set_sound_volume(@BGS_ONESHOT_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 90 / 100)
                        syscom.set_sound_volume(@BGS_ACTION_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 80 / 100)
                        syscom.set_sound_volume(@BGS_ENV_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 90 / 100)

                    case(1) //バランス
                        syscom.set_sound_volume(@BGS_ONESHOT_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 80 / 100)
                        syscom.set_sound_volume(@BGS_ACTION_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 60 / 100)
                        syscom.set_sound_volume(@BGS_ENV_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH) * 70 / 100)

                    case(2) //100%
                        syscom.set_sound_volume(@BGS_ONESHOT_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH))
                        syscom.set_sound_volume(@BGS_ACTION_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH))
                        syscom.set_sound_volume(@BGS_ENV_VOL_CH, syscom.get_sound_volume(@BGV_VOL_CH))
                        

                }

