#Z00

//-----------------------------------------
//画面キャプチャーシステム

/*---

	twitterの仕様やAPIの発行数などが頻繁に変わりすぎるため、
	代替システムとして、画面をキャプチャーして保存するシステムを制作する。
	
	a0_overlap.g00	を使用する。

---*/

#INC_START

	#PROPERTY $ichiji_capture_flag

#INC_END


switch(@画面キャプチャー機能) {

	case(0) $capture_system(0)
	case(1) $capture_system(1)
	
}

return





command $capture_system(property $mode) {



//連続で撮らないよう、一時的に切る

key.clear

$ichiji_capture_flag = @キー操作による画面キャプチャー許可
@キー操作による画面キャプチャー許可 = 0


if ($mode == 1) {

	syscom.set_hide_mwnd_onoff_flag(1)
	
}

@system_message_off

K[00] = "capture_" + math.tostr_zero(@画面キャプチャー通し番号,4)

front.object[300].create(a0_overlap,1,0,0)
front.object[300].order = 9999999

syscom.create_capture_buffer(1920,1080)
syscom.capture_and_save_buffer_to_png(0,0,K[00])

//system.shell_open_web("savedata")	//コンフィグ側に記載する

syscom.destroy_capture_buffer

@画面キャプチャー通し番号 = (@画面キャプチャー通し番号 + 1) % 10000



TIMEWAIT(1000)


@キー操作による画面キャプチャー許可 = $ichiji_capture_flag

front.object[300].init


if ($mode == 1) {

	syscom.set_hide_mwnd_onoff_flag(0)
	
}

@system_message("◆画面をキャプチャーし、#Dsavedataフォルダに保存しました。",30)


}








