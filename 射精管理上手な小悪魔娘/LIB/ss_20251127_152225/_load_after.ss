//ロード直後に実行される部分
//##ローカル汎用フラグを使用する場合にこのファイルが必要になります。


#Z00
	
	//	ウィンドウ種類の一致
	farcall(_window_change,0)

	// ＭＷボタンのロード直後処理を呼びます。
	$mwnd_btn_load_after
	syscom.set_auto_mode_onoff_flag(0)	//オートモードの解除


	
	//------------------------------------------------------
	//@set_faceしているときに、縮小命令を入れておく（セーブされてないようなので）
	
	if (($novel_mode_flag == 0)) {

		syscom.set_font_decoration(@フォント縁設定一時ストック)
		@set_face_scale_and_pos(0)

	}
	

return


