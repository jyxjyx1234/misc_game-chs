//===========================================================================
//!
//!    @file     __sys_load_after.ss
//!    @brief    ロード直後コール
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     ロード直後に実行される制御
//!
//===========================================================================

#z00

// タブレットモードを更新する
switch( <TABLET_MODE> ) {
case(<TABLET_MODE_OFF>)		$$tablet_mode_off
case(<TABLET_MODE_R>)		$$tablet_mode_on(<TABLET_MODE_R>)
case(<TABLET_MODE_L>)		$$tablet_mode_on(<TABLET_MODE_L>)
default						@dm("__sys_load_after.ss → タブレットモードの指定は" + math.tostr(<TABLET_MODE_OFF>) + "～" + math.tostr(<TABLET_MODE_MAX> - 1) + "の範囲にする必要があります。\nモード番号 : " + math.tostr(<TABLET_MODE>) + "\nタブレットモードをオフにします。")
							$$tablet_mode_off
}

// サイドバー動作を更新する
switch( <SIDEBAR_MODE> ) {
case(<SIDEBAR_MODE_OFF>)	$$sidebar_mode_off
case(<SIDEBAR_MODE_R>)		$$sidebar_mode_on(<SIDEBAR_MODE_R>)
case(<SIDEBAR_MODE_L>)		$$sidebar_mode_on(<SIDEBAR_MODE_L>)
default						@dm("__sys_load_after.ss → サイドバー動作の指定は" + math.tostr(<SIDEBAR_MODE_OFF>) + "～" + math.tostr(<SIDEBAR_MODE_MAX> - 1) + "の範囲にする必要があります。\nモード番号 : " + math.tostr(<SIDEBAR_MODE>) + "\nサイドバーをオフにします。")
							$$sidebar_mode_off
}

// メッセージウィンドウボタンを更新する
$$update_mwbtn

return
