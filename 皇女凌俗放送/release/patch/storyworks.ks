;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■本編開始　　最終更新　01/09　更新者　白土
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

;■右クリック禁止解除
[rclick enabled=true]
;■バックログに書き込み禁止解除
[history output=true enabled=true]
;■セーブ＝ＯＫ　ロード＝ＯＫ
[disablestore store=false restore=false]

;■ＳＡＶＥ＆ＬＯＡＤ状態設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]

;// ;■白画面で、スタート
;// [loadbg storage=white page=fore]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*storyloop_init
;// [wait time=1000]
[clearimage layer1=8]
;■最初に読み込むファイル
[eval exp="f.nextread = 'ss00.ks'"]


*storyloop
;■次に読み込むファイル
[call storage=&f.nextread]
[wait time=1000]

;□ネクストが、ＥＮＤ→終了処理へ
[if exp="f.nextread  == 'end'"][jump target=*ret][endif]


;□通常の場合、もう一度ループ
[jump storage="storyworks.ks" target=*storyloop]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*ret
[wait time=1000 canskip=false]
;□本編シナリオ終了
[return]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■オープニングムービー
;□ムービーカットパッチを当てる時は、　*xmove_op　←→　*move_op　と、ラベル名を変更
*xmove_op
[return]

;□ムービーカットパッチを当てる時は、　*move_op　←→　*xmove_op　と、ラベル名を変更
*move_op
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ビデオ再生準備
[eval exp="WaveSoundBuffer.freeDirectSound()"] 
[video visible=false left=0 top=0 width=640 height=480]
[openvideo storage="op.avi"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ビデオ再生開始
[video visible=true left=0 top=0 width=640 height=480]
[playvideo]
[wv canskip=true]
[return]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■エンディングムービー
;□ムービーカットパッチを当てる時は、　*xmove_end　←→　*move_end　と、ラベル名を変更
*xmove_end
[return]

;□ムービーカットパッチを当てる時は、　*move_end　←→　*xmove_end　と、ラベル名を変更
*move_end
;□スキップ処理停止
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ムービー再生　準備
[loadbg storage=black]
[ud time=1000]
[eval exp="WaveSoundBuffer.freeDirectSound()"]
[video visible=false left=0 top=0 width=640 height=480]
[openvideo storage="ed.avi"]
;■ムービー再生　開始
[video visible=true left=0 top=0 width=640 height=480]
[playvideo]
;□クリアしていない場合、ムービーをスキップしない
[wv canskip=false cond="sf.cleared == 0"]
;□１回以上クリアしている場合、ムービーをスキップ可能
[wv canskip=true  cond="sf.cleared >= 1"]
;■ムービー再生　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[wait time=1000 canskip=false]
[return]
