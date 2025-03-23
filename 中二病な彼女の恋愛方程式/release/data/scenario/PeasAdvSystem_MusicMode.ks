;■おまけ画面スクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;ミュージックモード画面トップ
;デザイン系データは、「PeasAdvSystem_Extra.ks」にて設定します。
;基本機能のみで画面を構築する場合、得に変更する必要はありません。
[eval exp="tf.MusicMode_ChangeMusicFlg=0"]

;バックログを表示させない
[history output=false enabled="false"]
;右クリック利用不可

[backlay]
[freeimage layer=1 page=back]
[freeimage layer=10 page=back]
[image storage=&tf.MusicMode_File_Bg_Name left=0 top=0 layer=1 page=back visible=true]
;戻るボタン
[sysbutton graphic=&tf.MusicMode_File_Return_Name top=&tf.MusicMode_Pos_Return_Ypos left=&tf.MusicMode_Pos_Return_Xpos target="*close" page=back]

;BGM再生ボタンを生成（ボタンの数のみ生成します。
;ページ切り替え等を構築する場合は、ここを修正しなければなりません
[eval exp="tf.loopcnt=0"]
*loopdraw
[if exp="tf.loopcnt < tf.MusicMode_Count_SlotBtCount"]

	[eval exp="tf.system_filename=tf.MusicMode_File_SlotBtFileTbl[tf.loopcnt]"]
	[eval exp="tf.system_ypos=tf.MusicMode_Pos_SlotBtYposTbl[tf.loopcnt]"]
	[eval exp="tf.system_xpos=tf.MusicMode_Pos_SlotBtXposTbl[tf.loopcnt]"]
	[eval exp="tf.system_target='*playbgm'+tf.loopcnt"]


	[sysbutton graphic="&tf.system_filename" top="&tf.system_ypos" left="&tf.system_xpos" target="&tf.system_target" page=back]

	[eval exp="tf.loopcnt=tf.loopcnt+1"]
	[jump target="*loopdraw"]
[endif]

[trans method=crossfade time=10]
[wt]

[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_MusicMode.ks" target="*close"]


[s]

;//■BGM再生処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;BGM再生数が、多くなる場合は、ここでの記述を増やす必要があります。
*playbgm0
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[0]"]
[s]
*playbgm1
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[1]"]
[s]
*playbgm2
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[2]"]
[s]
*playbgm3
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[3]"]
[s]
*playbgm4
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[4]"]
[s]
*playbgm5
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[5]"]
[s]
*playbgm6
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[6]"]
[s]
*playbgm7
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[7]"]
[s]
*playbgm8
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[8]"]
[s]
*playbgm9
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[9]"]
[s]
*playbgm10
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[10]"]
[s]
*playbgm11
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[11]"]
[s]
*playbgm12
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[12]"]
[s]
*playbgm13
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[13]"]
[s]
*playbgm14
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[14]"]
[s]
*playbgm15
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[15]"]
[s]
*playbgm16
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[16]"]
[s]
*playbgm17
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[17]"]
[s]
*playbgm18
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[18]"]
[s]
*playbgm19
[eval exp="tf.MusicMode_ChangeMusicFlg=1"]
[playbgm storage="&tf.MusicMode_File_SlotBtPlaybgmTbl[19]"]
[s]





;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*close

[if exp="tf.MusicMode_ChangeMusicFlg==1"]
	[if exp="tf.ExtraMode_File_ReturnPlayBGM!=''"]
		[fadeoutbgm time=500]
		[playbgm storage="tf.ExtraMode_File_ReturnPlayBGM"]
	[endif]
[endif]

;[backlay]
;[image storage=white layer=1 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]



[jump storage="scenario/PeasAdvSystem_Extra.ks"]

[s]




[s]

