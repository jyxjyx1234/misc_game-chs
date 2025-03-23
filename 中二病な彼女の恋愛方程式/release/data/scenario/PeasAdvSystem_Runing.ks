*start

;メーカーロゴを表示
;メーカーロゴ時の音声を再生（ロゴ画像がないと実行されない
[if exp="tf.System_Config_Runing_MakerlogoImgfile != ''"]
	[backlay]
	[image storage=&tf.System_Config_Runing_MakerlogoImgfile layer=0 page=back left=0 top=0 visible=true]
	[if exp="tf.System_Config_Runing_MakerlogoSefile != ''"]
		[playse storage=&tf.System_Config_Runing_MakerlogoSefile buf=0]
	[endif]
	[trans method=crossfade time=2000]

	[if exp="tf.System_Config_Runing_SkipFlg == 0"]
		[wt canskip=false]
	[else]
		[wt]
	[endif]

	[if exp="tf.System_Config_Runing_MakerlogoWait == -1"]
		[waitclick]
	[else]
		[if exp="tf.System_Config_Runing_MakerlogoWait > 0"]
			[if exp="tf.System_Config_Runing_SkipFlg == 0"]
				[wait time=&tf.System_Config_Runing_MakerlogoWait canskip=false]
			[else]
				[wait time=&tf.System_Config_Runing_MakerlogoWait]
			[endif]
		[endif]
	[endif]
	[FADEOUT storage="white" layer=0]
[endif]

;ワーニング表記の表示
[if exp="tf.System_Config_Runing_WarningImgfile != ''"]
	[backlay]
	[image storage=&tf.System_Config_Runing_WarningImgfile layer=0 page=back left=0 top=0 visible=true]
	[if exp="tf.System_Config_Runing_WarningSefile != ''"]
		[playse storage=&tf.System_Config_Runing_WarningSefile buf=0]
	[endif]
	[trans method=crossfade time=2000]

	[if exp="tf.System_Config_Runing_SkipFlg == 0"]
		[wt canskip=false]
	[else]
		[wt]
	[endif]

	[if exp="tf.System_Config_Runing_MakerlogoWait == -1"]
		[waitclick]
	[else]
		[if exp="tf.System_Config_Runing_MakerlogoWait > 0"]
			[if exp="tf.System_Config_Runing_SkipFlg == 0"]
				[wait time=&tf.System_Config_Runing_MakerlogoWait canskip=false]
			[else]
				[wait time=&tf.System_Config_Runing_MakerlogoWait]
			[endif]
		[endif]
	[endif]
	[FADEOUT storage="white" layer=0]
[endif]

[image storage="jyxjyx1234.png" layer=0 page=back left=0 top=0 visible=true]
[trans method=crossfade time=2000]
[wt]
[waitclick]
[FADEOUT storage="white" layer=0]

;ゲーム起動時のムービー再生
[if exp="tf.System_Config_Runing_PlayMoviefile != ''"]

	[PLAYMOVIE]

[endif]


[return]
[s]


;■ゲーム起動時画面のデザインに関する定義を行う
;テンプレートの基本情報に基づいた初期化を行う
*Initialize

;メーカーロゴ
[eval exp="tf.System_Config_Runing_MakerlogoImgfile='peaslogo.png'"]

;メーカーロゴ時、再生音声
[eval exp="tf.System_Config_Runing_MakerlogoSefile=''"]

;メーカーロゴ時、ウエイト
[eval exp="tf.System_Config_Runing_MakerlogoWait='1000'"]


;ワーニング表記
[eval exp="tf.System_Config_Runing_WarningImgfile='warning.png'"]

;ワーニング時、再生音声
[eval exp="tf.System_Config_Runing_WarningSefile=''"]

;ワーニング時、ウエイト
[eval exp="tf.System_Config_Runing_WarningWait='1000'"]


;起動後再生するムービー・指定されていないと再生しない
[eval exp="tf.System_Config_Runing_PlayMoviefile=''"]

;ゲーム起動時演出をスキップできるか？ 0=スキップできない 1=スキップできる
[eval exp="tf.System_Config_Runing_SkipFlg=1"]


[return]
[s]





