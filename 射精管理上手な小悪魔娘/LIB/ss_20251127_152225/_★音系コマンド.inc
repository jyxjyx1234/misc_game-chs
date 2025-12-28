//-----------------------------------------------------
//新メインルート用ＢＧＭ再生システム

/*--

	BGMを再生するときに、BGMファイル名を保存する。
	主にメインルートで使用し、下の割り込み会話から戻ってくる時に
	前のBGMに戻すために使用する。
	
	現在の仕様だとBGM名の取得が出来ないため仕方なく。。。

	★2020.04.08 「BGM00」指定の場合は無再生するようにした（開発初期に命令だけ入れとく用）

	★2021.10.02  回想モードの拡張につき、「回想モード中 == 2」のとき、指定されたＢＧＭが再生されるようになった
	
	★2022.05.01  回想モードの拡張調整で、判定が「$CR_MODE == 1」（連続回想モード中）のときに変更
					さらに「@BGMSTOP」を追加。
	

--*/

#PROPERTY	$now_bgm_name : str

#MACRO	@BGM(@FileName,@time(0),@start_pos(-1))	
		if ($CR_MODE == 1 && $CR_BGM != "") { if($CR_BGM != "BGM00") { bgm.play($CR_BGM,@time,start_pos = @start_pos) }}
		elseif (@FileName != "BGM00") {$now_bgm_name = @FileName	bgm.play(@FileName,@time,start_pos = @start_pos)}
		
#MACRO	@BGM_Xfade(@FileName,@time1(3000),@time2(3000))
		if ($CR_MODE == 1 && $CR_BGM != "") { if($CR_BGM != "BGM00") { bgm.play($CR_BGM,@time1,@time2,start_pos = 1000000) }}
		elseif (@FileName != "BGM00") {$now_bgm_name = @FileName	bgm.play(@FileName,@time1,@time2,start_pos = 1000000)}


#MACRO	@BGMSTOP(@time(3000))
		if ($CR_MODE == 1 && $CR_BGM != "") { }
		else {$now_bgm_name = "" bgm.stop(@time)}


//------------------------------------------------------
//効果音の再生


#COMMAND	$PCMPLAY(int,int,int)
#MACRO		@PCMPLAY(@PcmNo,@ModeNo(0),@pcmch(0))	$PCMPLAY(@PcmNo,@ModeNo,@pcmch)

#MACRO		@PCMSTOP(@pcmch(0),@Time(3000)) pcmch[@pcmch].stop(@time)


//効果音範囲初期化 ★2023.03.02追加

#PROPERTY	$pcm_init_tmp
#DEFINE		<pcmch_max> 10			//Ｈ効果音範囲(11～)は含まない


#MACRO		@pcmch_init(@time(1000))		for($pcm_init_tmp = 0,$pcm_init_tmp < <pcmch_max>,$pcm_init_tmp+=1) { pcmch[$pcm_init_tmp].stop(@time) }

#MACRO		@PCM_init		pcm.stop				//全リセット
							@pcmch_init(0)
							@hbg_stop_all(0)

