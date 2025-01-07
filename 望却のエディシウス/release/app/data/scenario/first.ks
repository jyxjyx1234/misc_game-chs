;一番最初に呼び出されるファイル

[title name="望却のエディシウス claude-3.5-sonnet机翻 by ALyCE/jyxjyx1234"]
[plugin name="theme_kopanda_22"]
[plugin name=awakegame_ex]
[plugin name=voiceplay_ex]

[plugin name=menu_se]
[menu_se_set name=save_list clickse="button/button_enter.mp3"]
[menu_se_set name=menu_close clickse="button/button_cancel.mp3"]

[menu_se_set name=confirm clickse="button/button_enter.mp3"]
[menu_se_set name=cancel clickse="button/button_cancel.mp3"]

[menu_se_set name=hajimekara clickse="button/button_enter.mp3"]
[menu_se_set name=tudukikara clickse="button/button_enter.mp3"]
[menu_se_set name=cgmode clickse="button/button_enter.mp3"]
[menu_se_set name=scene_kaisou clickse="button/button_enter.mp3"]
[menu_se_set name=option clickse="button/button_enter.mp3"]
[menu_se_set name=game_end clickse="button/button_enter.mp3"]

[seopt buf=0 volume="&sf.current_se_vol" effect=true]
[seopt buf=1 volume="&sf.current_se_vol" effect=true]
[seopt buf=3 volume="&sf.current_se_vol" effect=true]

[seopt buf=2 volume="&sf.current_vo_vol" effect=true]

[logrepeat_config img="button/voice.png" element=".backlog_chara_name" insert="self"]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初はメニューボタンを非表示にする
[hidemenubutton]
[clearfix name="role_button"]

; メッセージウィンドウの設定（モノローグ）
[macro name="default_window"]
[stopse buf=2]
[free layer="message1" name="nozomi_window" time="0"]
[free layer="message1" name="mob_window" time="0"]
[free layer="message1" name="saku_window" time="0"]
;[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_default.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[endmacro]

; メッセージウィンドウの設定（朔）
[macro name="saku_window"]
[stopse buf=2]
[free layer="message1" name="nozomi_window" time="0"]
[free layer="message1" name="mob_window" time="0"]
;[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_saku.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[image name="chara_name_image" layer="message1" name="saku_window" zindex="100" storage="../others/plugin/theme_kopanda_22/image/frame_message_saku.png" width="1920" height="282" top="798" left="0" ]
[endmacro]


; メッセージウィンドウの設定（望）
[macro name="nozomi_window"]
[stopse buf=2]
[free layer="message1" name="mob_window" time="0"]
[free layer="message1" name="saku_window" time="0"]
;[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_nozomi.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[image name="chara_name_image" layer="message1" name="nozomi_window" zindex="100" storage="../others/plugin/theme_kopanda_22/image/frame_message_nozomi.png" width="1920" height="282" top="798" left="0" ]
[endmacro]

; メッセージウィンドウの設定（上記以外のキャラ）
[macro name="mob_window"]
[stopse buf=2]
[free layer="message1" name="nozomi_window" time="0"]
[free layer="message1" name="saku_window" time="0"]
;[position layer="message1" frame="../others/plugin/theme_kopanda_22/image/frame_message_mob.png" margint="100" marginl="160" marginr="160" marginb="30" width="1920" height="282" top="798" left="0" opacity="&mp.frame_opacity" page="fore"]
[image name="chara_name_image" layer="message1" name="mob_window" zindex="100" storage="../others/plugin/theme_kopanda_22/image/frame_message_mob.png" width="1920" height="282" top="798" left="0" ]
[endmacro]


;文字が表示される領域を調整
[iscript]

mp.font_color    = mp.font_color    || "0xe3e3e3";
mp.name_color    = mp.name_color    || "0xF2F2F2";
mp.frame_opacity = mp.frame_opacity || "255";
mp.font_color2   = mp.font_color2   || "0xe3e3e3";
mp.glyph         = mp.glyph         || "on";

if(TG.config.alreadyReadTextColor != "default") {
	TG.config.alreadyReadTextColor = mp.font_color2;
}

[endscript]

;タイトル画面へ移動
@jump storage="title.ks"

[s]

