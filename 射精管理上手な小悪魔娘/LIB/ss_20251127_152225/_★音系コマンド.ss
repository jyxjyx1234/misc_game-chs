#Z00

//★2021.06.29 すべてoggに置き換えたので注意（其のほうが劇的に軽かった…）

COMMAND $PCMPLAY(property $PcmNo,property $ModeNo,property $pcmch) {

	K[00] = math.tostr_zero($PcmNo,3)
	K[01] = "PCM_" + K[00]

	switch($ModeNo) {
		
		case(0)	//ワンショット（３秒減衰）

			pcmch[$pcmch].play(K[01])
			pcmch[$pcmch].stop(3000)
			
		case(1)	//ワンショット（３秒減衰キー待ち）
		
			pcmch[$pcmch].play(K[01])
			pcmch[$pcmch].stop(3000)
			pcmch[$pcmch].wait_fade_key
		
		case(2)	//ワンショット（６秒減衰）

			pcmch[$pcmch].play(K[01])
			pcmch[$pcmch].stop(6000)
		
		case(3)	//ワンショット（９秒減衰）

			pcmch[$pcmch].play(K[01])
			pcmch[$pcmch].stop(9000)
		
		case(4)	//ワンショット（１２秒減衰）

			pcmch[$pcmch].play(K[01])
			pcmch[$pcmch].stop(12000)
			
		case(5)	//ワンショット（停止無し）

			pcmch[$pcmch].play(K[01])

	}


}

