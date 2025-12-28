//===========================================================================
//!
//!    @file     _config_sound.ss
//!    @brief    コンフィグ音量設定シーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _config_sound_bg, 0, 0)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_マスター], _config_sound_mute_all_btn, 110, 258, @ボタン_コンフィグ_音量設定_ミュート_マスター, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_all_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ], _config_sound_mute_bgm_btn, 110, 334, @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_bgm_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード], _config_sound_mute_bgm_fade_btn, 110, 411, @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_bgmfade_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_音声], _config_sound_mute_voice_btn, 110, 488, @ボタン_コンフィグ_音量設定_ミュート_音声, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_koe_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_効果音], _config_sound_mute_se_btn, 110, 565, @ボタン_コンフィグ_音量設定_ミュート_効果音, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_pcm_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_システム音], _config_sound_mute_sys_se_btn, 110, 642, @ボタン_コンフィグ_音量設定_ミュート_システム音, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_se_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー], _config_sound_mute_movie_btn, 110, 719, @ボタン_コンフィグ_音量設定_ミュート_ムービー, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_mov_onoff)
	$$create_config_sound_master_slider($stage.object[@スライダー_コンフィグ_音量設定_マスター], _config_sound_slider, 159, 299, @スライダー_コンフィグ_音量設定_マスター, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_bgm_slider($stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭ], _config_sound_slider, 159, 375, @スライダー_コンフィグ_音量設定_ＢＧＭ, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_bgm_fade_slider($stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード], _config_sound_slider, 159, 452, @スライダー_コンフィグ_音量設定_ＢＧＭフェード, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_voice_slider($stage.object[@スライダー_コンフィグ_音量設定_音声], _config_sound_slider, 159, 529, @スライダー_コンフィグ_音量設定_音声, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_se_slider($stage.object[@スライダー_コンフィグ_音量設定_効果音], _config_sound_slider, 159, 606, @スライダー_コンフィグ_音量設定_効果音, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_system_se_slider($stage.object[@スライダー_コンフィグ_音量設定_システム音], _config_sound_slider, 159, 683, @スライダー_コンフィグ_音量設定_システム音, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_sound_movie_slider($stage.object[@スライダー_コンフィグ_音量設定_ムービー], _config_sound_slider, 159, 760, @スライダー_コンフィグ_音量設定_ムービー, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_マスター], _config_sound_play_btn, 854, 284, @ボタン_コンフィグ_音量設定_再生_マスター, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭ], _config_sound_play_btn, 854, 360, @ボタン_コンフィグ_音量設定_再生_ＢＧＭ, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード], _config_sound_play_btn, 854, 437, @ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_音声], _config_sound_play_btn, 854, 514, @ボタン_コンフィグ_音量設定_再生_音声, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_効果音], _config_sound_play_btn, 854, 591, @ボタン_コンフィグ_音量設定_再生_効果音, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_システム音], _config_sound_play_btn, 854, 668, @ボタン_コンフィグ_音量設定_再生_システム音, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_再生_ムービー], _config_sound_play_btn, 854, 745, @ボタン_コンフィグ_音量設定_再生_ムービー, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_音量設定_初期設定], _config_common_default_btn, 742, 193, @ボタン_コンフィグ_音量設定_初期設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_再生設定_音声を続ける], _config_voice_continue_btn, 110, 888, @ボタン_コンフィグ_再生設定_音声を続ける, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_koe_dont_stop_onoff)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオン], _config_voice_all_on_btn, 1243, 878, @ボタン_コンフィグ_キャラクター別音声_全てオン, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオフ], _config_voice_all_off_btn, 1433, 878, @ボタン_コンフィグ_キャラクター別音声_全てオフ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター別音声_初期設定], _config_common_default_btn, 1675, 193, @ボタン_コンフィグ_キャラクター別音声_初期設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１_ミュート], _config_voice_chara_btn01, 1017, 253, @ボタン_コンフィグ_キャラクター１_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(0)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１_音量], _config_voice_slider, 999, 374, @スライダー_コンフィグ_キャラクター１_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生], _config_voice_play_btn, 1130, 255, @ボタン_コンフィグ_キャラクター１_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター２_ミュート], _config_voice_chara_btn02, 1191, 253, @ボタン_コンフィグ_キャラクター２_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(1)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター２_音量], _config_voice_slider, 1173, 374, @スライダー_コンフィグ_キャラクター２_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター２_ボイス再生], _config_voice_play_btn, 1304, 255, @ボタン_コンフィグ_キャラクター２_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター３_ミュート], _config_voice_chara_btn03, 1365, 253, @ボタン_コンフィグ_キャラクター３_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(2)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター３_音量], _config_voice_slider, 1347, 374, @スライダー_コンフィグ_キャラクター３_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター３_ボイス再生], _config_voice_play_btn, 1478, 255, @ボタン_コンフィグ_キャラクター３_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター４_ミュート], _config_voice_chara_btn04, 1539, 253, @ボタン_コンフィグ_キャラクター４_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(3)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター４_音量], _config_voice_slider, 1521, 374, @スライダー_コンフィグ_キャラクター４_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター４_ボイス再生], _config_voice_play_btn, 1652, 255, @ボタン_コンフィグ_キャラクター４_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター５_ミュート], _config_voice_chara_btn05, 1713, 253, @ボタン_コンフィグ_キャラクター５_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(4)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター５_音量], _config_voice_slider, 1695, 374, @スライダー_コンフィグ_キャラクター５_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター５_ボイス再生], _config_voice_play_btn, 1826, 255, @ボタン_コンフィグ_キャラクター５_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター６_ミュート], _config_voice_chara_btn06, 1017, 405, @ボタン_コンフィグ_キャラクター６_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(5)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター６_音量], _config_voice_slider, 999, 526, @スライダー_コンフィグ_キャラクター６_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター６_ボイス再生], _config_voice_play_btn, 1130, 407, @ボタン_コンフィグ_キャラクター６_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター７_ミュート], _config_voice_chara_btn07, 1191, 405, @ボタン_コンフィグ_キャラクター７_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(6)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター７_音量], _config_voice_slider, 1173, 526, @スライダー_コンフィグ_キャラクター７_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター７_ボイス再生], _config_voice_play_btn, 1304, 407, @ボタン_コンフィグ_キャラクター７_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター８_ミュート], _config_voice_chara_btn08, 1365, 405, @ボタン_コンフィグ_キャラクター８_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(7)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター８_音量], _config_voice_slider, 1347, 526, @スライダー_コンフィグ_キャラクター８_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター８_ボイス再生], _config_voice_play_btn, 1478, 407, @ボタン_コンフィグ_キャラクター８_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター９_ミュート], _config_voice_chara_btn09, 1539, 405, @ボタン_コンフィグ_キャラクター９_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(8)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター９_音量], _config_voice_slider, 1521, 526, @スライダー_コンフィグ_キャラクター９_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター９_ボイス再生], _config_voice_play_btn, 1652, 407, @ボタン_コンフィグ_キャラクター９_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１０_ミュート], _config_voice_chara_btn10, 1713, 405, @ボタン_コンフィグ_キャラクター１０_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(9)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１０_音量], _config_voice_slider, 1695, 526, @スライダー_コンフィグ_キャラクター１０_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１０_ボイス再生], _config_voice_play_btn, 1826, 407, @ボタン_コンフィグ_キャラクター１０_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１１_ミュート], _config_voice_chara_btn11, 1017, 557, @ボタン_コンフィグ_キャラクター１１_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(10)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１１_音量], _config_voice_slider, 999, 678, @スライダー_コンフィグ_キャラクター１１_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１１_ボイス再生], _config_voice_play_btn, 1130, 559, @ボタン_コンフィグ_キャラクター１１_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１２_ミュート], _config_voice_chara_btn12, 1191, 557, @ボタン_コンフィグ_キャラクター１２_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(11)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１２_音量], _config_voice_slider, 1173, 678, @スライダー_コンフィグ_キャラクター１２_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１２_ボイス再生], _config_voice_play_btn, 1304, 559, @ボタン_コンフィグ_キャラクター１２_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１３_ミュート], _config_voice_chara_btn13, 1365, 557, @ボタン_コンフィグ_キャラクター１３_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(12)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１３_音量], _config_voice_slider, 1347, 678, @スライダー_コンフィグ_キャラクター１３_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１３_ボイス再生], _config_voice_play_btn, 1478, 559, @ボタン_コンフィグ_キャラクター１３_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１４_ミュート], _config_voice_chara_btn14, 1539, 557, @ボタン_コンフィグ_キャラクター１４_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(13)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１４_音量], _config_voice_slider, 1521, 678, @スライダー_コンフィグ_キャラクター１４_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１４_ボイス再生], _config_voice_play_btn, 1652, 559, @ボタン_コンフィグ_キャラクター１４_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１５_ミュート], _config_voice_chara_btn15, 1713, 557, @ボタン_コンフィグ_キャラクター１５_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(14)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１５_音量], _config_voice_slider, 1695, 678, @スライダー_コンフィグ_キャラクター１５_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１５_ボイス再生], _config_voice_play_btn, 1826, 559, @ボタン_コンフィグ_キャラクター１５_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１６_ミュート], _config_voice_chara_btn16, 1017, 709, @ボタン_コンフィグ_キャラクター１６_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(15)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１６_音量], _config_voice_slider, 999, 830, @スライダー_コンフィグ_キャラクター１６_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１６_ボイス再生], _config_voice_play_btn, 1130, 711, @ボタン_コンフィグ_キャラクター１６_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_キャラクター１７_ミュート], _config_voice_chara_btn17, 1191, 709, @ボタン_コンフィグ_キャラクター１７_ミュート, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_charakoe_onoff($$get_config_charakoe(16)))
	$$create_config_voice_character_slider($stage.object[@スライダー_コンフィグ_キャラクター１７_音量], _config_voice_slider, 1173, 830, @スライダー_コンフィグ_キャラクター１７_音量, <OBJBTN_GROUP_NO_EXCALL>, 1, 2, 4)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_キャラクター１７_ボイス再生], _config_voice_play_btn, 1304, 711, @ボタン_コンフィグ_キャラクター１７_ボイス再生, <OBJBTN_GROUP_NO_EXCALL>, -1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_config_sound_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_config_sound_scene_object(property $stage : stage)
{
	property $i
	property $reverse
	property $anim_check_obj_no
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button(@ボタン_コンフィグ_ヘッダー_サウンド)
	
	// 背景
	$$create_ui_image($stage.object[1], $stage.object[0].get_file_name, 0, 0)
	$$create_ui_image($stage.object[2], $stage.object[0].get_file_name, 0, 0)
	$stage.object[0].patno = 2
	$stage.object[1].patno = 1
	$stage.object[2].patno = 0
	
	// アニメ―ション前に画面を更新する
	disp
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 前回のモードがシステムの場合は逆方向にアニメーションする
		$reverse = 1
		if( $$get_prev_config_mode == 0 ) {
			$reverse = -1
		}
		
		// 表示中のモードを左へ
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( excall.front.object[$i].f.get_size == 0 ) {
				continue
			}
			
			excall.front.object[$i].x_rep.resize(2)
			excall.front.object[$i].x_rep[1] = 0
			excall.front.object[$i].x_rep_eve[1].set(-<SCREEN_WIDTH> * $reverse, 500, 0, 2)
		}
		
		// システムモードを右から表示
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( $stage.object[$i].f.get_size == 0 ) {
				continue
			}
			
			$stage.object[$i].x_rep.resize(2)
			$stage.object[$i].x_rep[1] = <SCREEN_WIDTH> * $reverse
			$stage.object[$i].x_rep_eve[1].set(0, 500, 0, 2)
			
			$anim_check_obj_no = $i
		}
		
		// 通常表示(ジョイパッドのＲ１がキースキップするのでキースキップできないようにする)
		wipe(0, 250, wait=1, key_skip=0)
		
		// アニメーションの終了を待つ
		excall.front.object[$anim_check_obj_no].all_eve.wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_config_sound_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}
//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_config_sound_joypad_navigation(property $stage : stage)
{
	property $i
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_down  = @ボタン_コンフィグ_音量設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_left  = @ボタン_コンフィグ_ヘッダー_サウンド
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_right = @ボタン_コンフィグ_ヘッダー_テキスト
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_down  = @ボタン_コンフィグ_音量設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_left  = @ボタン_コンフィグ_ヘッダー_システム
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_right = @ボタン_コンフィグ_ヘッダー_サウンド
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_down  = @ボタン_コンフィグ_音量設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_left  = @ボタン_コンフィグ_ヘッダー_テキスト
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_right = @ボタン_コンフィグ_ヘッダー_システム
	
	$stage.object[@ボタン_コンフィグ_音量設定_初期設定].joypad_up    = @ボタン_コンフィグ_ヘッダー_サウンド
	$stage.object[@ボタン_コンフィグ_音量設定_初期設定].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_マスター
	$stage.object[@ボタン_コンフィグ_音量設定_初期設定].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_初期設定].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_マスター].joypad_up    = @ボタン_コンフィグ_音量設定_初期設定
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_マスター].joypad_down  = @スライダー_コンフィグ_音量設定_マスター
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_マスター].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_マスター].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_マスター].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_マスター
	$stage.object[@スライダー_コンフィグ_音量設定_マスター].joypad_down  = @ボタン_コンフィグ_音量設定_再生_マスター
	$stage.object[@スライダー_コンフィグ_音量設定_マスター].joypad_left  = @スライダー動作_コンフィグ_音量設定_マスター_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_マスター].joypad_right = @スライダー動作_コンフィグ_音量設定_マスター_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_マスター].joypad_up    = @スライダー_コンフィグ_音量設定_マスター
	$stage.object[@ボタン_コンフィグ_音量設定_再生_マスター].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ
	$stage.object[@ボタン_コンフィグ_音量設定_再生_マスター].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_マスター].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ].joypad_up    = @ボタン_コンフィグ_音量設定_再生_マスター
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ].joypad_down  = @スライダー_コンフィグ_音量設定_ＢＧＭ
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭ].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭ].joypad_down  = @ボタン_コンフィグ_音量設定_再生_ＢＧＭ
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭ].joypad_left  = @スライダー動作_コンフィグ_音量設定_ＢＧＭ_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭ].joypad_right = @スライダー動作_コンフィグ_音量設定_ＢＧＭ_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭ].joypad_up    = @スライダー_コンフィグ_音量設定_ＢＧＭ
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭ].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭ].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭ].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード].joypad_up    = @ボタン_コンフィグ_音量設定_再生_ＢＧＭ
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード].joypad_down  = @スライダー_コンフィグ_音量設定_ＢＧＭフェード
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード].joypad_down  = @ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード].joypad_left  = @スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード].joypad_right = @スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード].joypad_up    = @スライダー_コンフィグ_音量設定_ＢＧＭフェード
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_音声
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_音声].joypad_up    = @ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_音声].joypad_down  = @スライダー_コンフィグ_音量設定_音声
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_音声].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_音声].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_音声].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_音声
	$stage.object[@スライダー_コンフィグ_音量設定_音声].joypad_down  = @ボタン_コンフィグ_音量設定_再生_音声
	$stage.object[@スライダー_コンフィグ_音量設定_音声].joypad_left  = @スライダー動作_コンフィグ_音量設定_音声_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_音声].joypad_right = @スライダー動作_コンフィグ_音量設定_音声_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_音声].joypad_up    = @スライダー_コンフィグ_音量設定_音声
	$stage.object[@ボタン_コンフィグ_音量設定_再生_音声].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_効果音
	$stage.object[@ボタン_コンフィグ_音量設定_再生_音声].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_音声].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_効果音].joypad_up    = @ボタン_コンフィグ_音量設定_再生_音声
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_効果音].joypad_down  = @スライダー_コンフィグ_音量設定_効果音
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_効果音].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_効果音].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_効果音].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_効果音
	$stage.object[@スライダー_コンフィグ_音量設定_効果音].joypad_down  = @ボタン_コンフィグ_音量設定_再生_効果音
	$stage.object[@スライダー_コンフィグ_音量設定_効果音].joypad_left  = @スライダー動作_コンフィグ_音量設定_効果音_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_効果音].joypad_right = @スライダー動作_コンフィグ_音量設定_効果音_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_効果音].joypad_up    = @スライダー_コンフィグ_音量設定_効果音
	$stage.object[@ボタン_コンフィグ_音量設定_再生_効果音].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_システム音
	$stage.object[@ボタン_コンフィグ_音量設定_再生_効果音].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_効果音].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_システム音].joypad_up    = @ボタン_コンフィグ_音量設定_再生_効果音
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_システム音].joypad_down  = @スライダー_コンフィグ_音量設定_システム音
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_システム音].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_システム音].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_システム音].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_システム音
	$stage.object[@スライダー_コンフィグ_音量設定_システム音].joypad_down  = @ボタン_コンフィグ_音量設定_再生_システム音
	$stage.object[@スライダー_コンフィグ_音量設定_システム音].joypad_left  = @スライダー動作_コンフィグ_音量設定_システム音_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_システム音].joypad_right = @スライダー動作_コンフィグ_音量設定_システム音_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_システム音].joypad_up    = @スライダー_コンフィグ_音量設定_システム音
	$stage.object[@ボタン_コンフィグ_音量設定_再生_システム音].joypad_down  = @ボタン_コンフィグ_音量設定_ミュート_ムービー
	$stage.object[@ボタン_コンフィグ_音量設定_再生_システム音].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_システム音].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー].joypad_up    = @ボタン_コンフィグ_音量設定_再生_システム音
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー].joypad_down  = @スライダー_コンフィグ_音量設定_ムービー
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_音量設定_ムービー].joypad_up    = @ボタン_コンフィグ_音量設定_ミュート_ムービー
	$stage.object[@スライダー_コンフィグ_音量設定_ムービー].joypad_down  = @ボタン_コンフィグ_音量設定_再生_ムービー
	$stage.object[@スライダー_コンフィグ_音量設定_ムービー].joypad_left  = @スライダー動作_コンフィグ_音量設定_ムービー_下げる
	$stage.object[@スライダー_コンフィグ_音量設定_ムービー].joypad_right = @スライダー動作_コンフィグ_音量設定_ムービー_上げる
	
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ムービー].joypad_up    = @スライダー_コンフィグ_音量設定_ムービー
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ムービー].joypad_down  = @ボタン_コンフィグ_再生設定_音声を続ける
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ムービー].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_音量設定_再生_ムービー].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_再生設定_音声を続ける].joypad_up    = @ボタン_コンフィグ_音量設定_再生_ムービー
	$stage.object[@ボタン_コンフィグ_再生設定_音声を続ける].joypad_down  = @ボタン_コンフィグ_キャラクター別音声_初期設定
	$stage.object[@ボタン_コンフィグ_再生設定_音声を続ける].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_再生設定_音声を続ける].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_初期設定].joypad_up    = @ボタン_コンフィグ_再生設定_音声を続ける
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_初期設定].joypad_down  = @ボタン_コンフィグ_キャラクター１_ミュート
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_初期設定].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_初期設定].joypad_right = -1
	
	for( $i = 0, $i < @コンフィグ_キャラクターボイス最大数, $i += 1 )
	{
		$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_up    = @スライダー_コンフィグ_キャラクター１_音量 + ($i - 5) * 2
		$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_down  = @スライダー_コンフィグ_キャラクター１_音量 + $i * 2
		$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_left  = @ボタン_コンフィグ_キャラクター１_ボイス再生 + $i - 1
		$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_right = @ボタン_コンフィグ_キャラクター１_ボイス再生 + $i
		
		$stage.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2].joypad_up    = @ボタン_コンフィグ_キャラクター１_ミュート + $i
		$stage.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2].joypad_down  = @ボタン_コンフィグ_キャラクター１_ミュート + $i + 5
		$stage.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2].joypad_left  = @スライダー動作_コンフィグ_キャラクター１音声_下げる - $i * 2
		$stage.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2].joypad_right = @スライダー動作_コンフィグ_キャラクター１音声_上げる - $i * 2
		
		$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_up    = @スライダー_コンフィグ_キャラクター１_音量 + ($i - 5) * 2
		$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_down  = @ボタン_コンフィグ_キャラクター１_ミュート + $i + 5
		$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_left  = @ボタン_コンフィグ_キャラクター１_ミュート + $i
		$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_right = @ボタン_コンフィグ_キャラクター１_ミュート + $i + 1
		
		// 最左は最右へ
		if( $i % 5 == 0 )
		{
			$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_left  = @ボタン_コンフィグ_キャラクター１_ボイス再生 + $i + 4
		}
		
		// 最右は最左へ
		if( $i % 5 == 4 )
		{
			$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_right = @ボタン_コンフィグ_キャラクター１_ミュート + $i - 4
		}
		
		// 最上段
		if( $i < 5 )
		{
			$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_up = @ボタン_コンフィグ_キャラクター別音声_初期設定
			$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_up = @ボタン_コンフィグ_キャラクター別音声_初期設定
		}
		
		// 最下段
		if( @コンフィグ_キャラクターボイス最大数 - 5 <= $i  )
		{
			$stage.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2].joypad_down  = @ボタン_コンフィグ_キャラクター別音声_全てオン
			
			// 最左は最右へ
			if( $i % 5 == 0 )
			{
				$stage.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i].joypad_left  = @ボタン_コンフィグ_キャラクター１_ボイス再生 + @コンフィグ_キャラクターボイス最大数 - 1
			}
			
			// 最右は最左へ
			if( $i == @コンフィグ_キャラクターボイス最大数 - 1 )
			{
				$stage.object[@ボタン_コンフィグ_キャラクター１_ボイス再生 + $i].joypad_right = @ボタン_コンフィグ_キャラクター１_ミュート + @コンフィグ_キャラクターボイス最大数 - 1 - $i % 5
			}
		}
	}
	
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオン].joypad_up    = @スライダー_コンフィグ_キャラクター１６_音量
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオン].joypad_down  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオン].joypad_left  = @ボタン_コンフィグ_キャラクター別音声_全てオフ
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオン].joypad_right = @ボタン_コンフィグ_キャラクター別音声_全てオフ
	
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオフ].joypad_up    = @スライダー_コンフィグ_キャラクター１６_音量
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオフ].joypad_down  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオフ].joypad_left  = @ボタン_コンフィグ_キャラクター別音声_全てオン
	$stage.object[@ボタン_コンフィグ_キャラクター別音声_全てオフ].joypad_right = @ボタン_コンフィグ_キャラクター別音声_全てオン
	
	for( $i = @ボタン_フッター_セーブ, $i <= @ボタン_フッター_戻る, $i += 1 )
	{
		$stage.object[$i].joypad_up   = @ボタン_コンフィグ_キャラクター別音声_全てオン
		$stage.object[$i].joypad_down = @ボタン_コンフィグ_現在のタブ
	}
}
