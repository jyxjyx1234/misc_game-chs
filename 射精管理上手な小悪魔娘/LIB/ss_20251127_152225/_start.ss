
#Z00



syscom.set_auto_mode_onoff_flag(0)
syscom.set_read_skip_onoff_flag(0)

syscom.set_syscom_menu_disable
script.set_ctrl_skip_disable 

syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)


//-----起動チェック

//system.check_dummy_file_once("sokubaku", 70,  "hajimemesugaki") //★sokubaku_check_OK


$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）

set_title("")


//----------------------
//★2019.06.27追加
//フォントの縁設定を書き戻す（特殊ノベルモード中にゲームを落としたときとか用）

if (@フォント縁設定一時ストック != syscom.get_font_decoration) {

	syscom.set_font_decoration(@フォント縁設定一時ストック)
	
}



;mov.play("la_op")

;R









@戻るメニューページ = 0

//-----------------------------
//動作確認テンプレート用のもの


$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）



//-----------------------------


@BG_flagcheck(__TITLE_LOGO,@初回起動)

@systemvoice_hamham


@TIMEWAIT(3000)

@BG_flagcheck(__TITLE_ATTENTION,@初回起動) @TIMEWAIT(5000)
@BG_flagcheck(__TITLE_ATTENTION2,@初回起動) @TIMEWAIT(5000)
//@BG(__TITLE_ATTENTION3) TIMEWAIT_KEY(5000)


PCM.STOP

@BG_flagcheck(_black,@初回起動)


if (@初回起動 == 0) {

	$game_init()
	
}

@TIMEWAIT(500)



JUMP(<title_ss>)



