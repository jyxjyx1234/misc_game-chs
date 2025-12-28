//--------------------------------
//BGV関係のコマンド
/*
 *  パン設定が不要になったためなるべくシンプルに作り直す。
 * 基本的な動作は過去作と変わらない
 * 
 * 
 * 効果音チャンネルおよび対応ボリュームは以下のとおり。それぞれ3つずつチャンネルを重ねられる。
 * 喘ぎ声とフェラ音は6チャンネル（そんなに要らないと思うが、今後複数キャラを出す可能性を考えて念の為用意）
 * 
 *                     チャンネル       ボリューム
 * 
 * 喘ぎ声＆フェラ音     10～15              16
 * ワンショット        16～18               17
 * アクション音         19～21              18
 * 環境音               22～24              19
 * 
 * コンフィグでのサンプル再生用チャンネル４つ   25～28
 * 
 * 
 */

#Z00

#INC_START

    #DEFINE <voice_debug>	1		//最終的に0にすること;;★todo

#INC_END


////////////////////////////////
//ＢＧＶ

command $bgv_voice(property $filename:str,property $ch,property $fade_mode) {

    if (@スキップ中にＨサウンドを鳴らさない == 1) {
		if (script.check_skip == 1) {return}
	}

    L[00] = 10 + $ch    //ベースチャンネル10

	if ((<voice_debug>) && (system.check_file_exist("wav\\"+$filename+".ogg") != 1)) {
		$debug_common("【警告】　"+$filename+"は存在しません",5)
		return
	}

    if ($fade_mode == 0) {      //0のときは、音量が小さくなる（※複数キャラがいるときに片方を喘ぎっぱなしにさせたいときなど）
        pcmch[L[00]].play($filename,volume_type = @BGV_VOL_CH ,loop = 1,bgm_fade_target = 1)
    }else{                      //1のときは、声が再生中に無音になる（こっちがデフォルト）
        pcmch[L[00]].play($filename,volume_type = @BGV_VOL_CH ,loop = 1,bgm_fade2_target = 1)
    }
}

command $bgv_stop(property $ch,property $fade_time) {
    L[00] = 10 + $ch    //ベースチャンネル10
    pcmch[L[00]].stop($fade_time)
}


////////////////////////////////
//ワンショット音

command $bgs_oneshot(property $filename:str,property $ch){

    if (@スキップ中にＨサウンドを鳴らさない == 1) {
		if (script.check_skip == 1) {return}
	}

    L[00] = 16 + $ch    //ベースチャンネル16
    pcmch[L[00]].play($filename,volume_type = @BGS_ONESHOT_VOL_CH)

}

command $bgs_oneshot_stop(property $ch,property $fade_time) {
    L[00] = 16 + $ch    //ベースチャンネル16
    pcmch[L[00]].stop($fade_time)
}


////////////////////////////////
//アクション音

command $bgs_action(property $filename:str,property $ch){

    if (@スキップ中にＨサウンドを鳴らさない == 1) {
		if (script.check_skip == 1) {return}
	}

    L[00] = 19 + $ch    //ベースチャンネル19
    pcmch[L[00]].play($filename,volume_type = @BGS_ACTION_VOL_CH,loop = 1)

}

command $bgs_action_stop(property $ch,property $fade_time) {
    L[00] = 19 + $ch    //ベースチャンネル19
    pcmch[L[00]].stop($fade_time)
}


////////////////////////////////
//環境音

command $bgs_env(property $filename:str,property $ch,property $loop){

    if (@スキップ中にＨサウンドを鳴らさない == 1) {
		if (script.check_skip == 1) {return}
	}

    L[00] = 22 + $ch    //ベースチャンネル19
    pcmch[L[00]].play($filename,volume_type = @BGS_ENV_VOL_CH,loop = $loop)

}

command $bgs_env_stop(property $ch,property $fade_time) {
    L[00] = 22 + $ch    //ベースチャンネル19
    pcmch[L[00]].stop($fade_time)
}

