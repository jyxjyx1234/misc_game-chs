;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■LastUpdate since2006.11.09／かおす

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■コンフィグメニュー設定

*configMode
[iscript]
function rightClicks()
{
	kag.process('','*config_exit');
}
[endscript]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;◇一時保存
[tempsave]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇コンフィグ画面では、プルダウンメニューで変更不可
[eval exp="kag.fullScreenMenuItem.enabled = false"]
[eval exp="kag.windowedMenuItem.enabled = false"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;◇右クリックで脱出
[rclick jump=true target="*config_exit" enabled=true]

;◇選択肢を非表示（クリック範囲が残るため）
[layopt layer=message3 visible=false page=back]
[layopt layer=message4 visible=false page=back]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;◇システムボタンを非表示
[sysbtopt forevisible=false]
[sysbtopt backvisible=false]

;◇背景画像の表示
[position layer=message10 frame="configMode_bg" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[current layer=message10 page=back]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■コンフィグモードの配置へ
*config_setup

[er]
[nowait]

;◇メッセージスピードボタン
[locate x=729 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_Slow_Off" rc="rightClicks()" target=*messageSpeed_slow cond="kag.chSpeeds['slow'] != kag.userChSpeed"]
	[locate x=729 y= 224][graph storage="config_messageSpeed_Slow_On" char=false cond="kag.chSpeeds['slow'] == kag.userChSpeed"]
[locate x=758 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_Slower_Off" rc="rightClicks()" target=*messageSpeed_slower cond="kag.chSpeeds['slower'] != kag.userChSpeed"]
	[locate x=758 y= 224][graph storage="config_messageSpeed_Slower_On" char=false cond="kag.chSpeeds['slower'] == kag.userChSpeed"]
[locate x=787 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_slowerer_Off" rc="rightClicks()" target=*messageSpeed_slowerer cond="kag.chSpeeds['slowerer'] != kag.userChSpeed"]
	[locate x=787 y= 224][graph storage="config_messageSpeed_slowerer_On" char=false cond="kag.chSpeeds['slowerer'] == kag.userChSpeed"]
[locate x=816 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_slowererer_Off" rc="rightClicks()" target=*messageSpeed_slowererer cond="kag.chSpeeds['slowererer'] != kag.userChSpeed"]
	[locate x=816 y= 224][graph storage="config_messageSpeed_slowererer_On" char=false cond="kag.chSpeeds['slowererer'] == kag.userChSpeed"]
[locate x=845 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_medium_Off" rc="rightClicks()" target=*messageSpeed_medium cond="kag.chSpeeds['medium'] != kag.userChSpeed"]
	[locate x=845 y= 224][graph storage="config_messageSpeed_medium_On" char=false cond="kag.chSpeeds['medium'] == kag.userChSpeed"]
[locate x=874 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_fasterererer_Off" rc="rightClicks()" target=*messageSpeed_fasterererer cond="kag.chSpeeds['fasterererer'] != kag.userChSpeed"]
	[locate x=874 y= 224][graph storage="config_messageSpeed_fasterererer_On" char=false cond="kag.chSpeeds['fasterererer'] == kag.userChSpeed"]
[locate x=903 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_fastererer_Off" rc="rightClicks()" target=*messageSpeed_fastererer cond="kag.chSpeeds['fastererer'] != kag.userChSpeed"]
	[locate x=903 y= 224][graph storage="config_messageSpeed_fastererer_On" char=false cond="kag.chSpeeds['fastererer'] == kag.userChSpeed"]
[locate x=932 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_fasterer_Off" rc="rightClicks()" target=*messageSpeed_fasterer cond="kag.chSpeeds['fasterer'] != kag.userChSpeed"]
	[locate x=932 y= 224][graph storage="config_messageSpeed_fasterer_On" char=false cond="kag.chSpeeds['fasterer'] == kag.userChSpeed"]
[locate x=961 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_faster_Off" rc="rightClicks()" target=*messageSpeed_faster cond="kag.chSpeeds['faster'] != kag.userChSpeed"]
	[locate x=961 y= 224][graph storage="config_messageSpeed_faster_On" char=false cond="kag.chSpeeds['faster'] == kag.userChSpeed"]
[locate x=990 y=257][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSpeed_Fast_Off" rc="rightClicks()" target=*messageSpeed_fast cond="kag.chSpeeds['fast'] != kag.userChSpeed"]
	[locate x=990 y= 224][graph storage="config_messageSpeed_Fast_On" char=false cond="kag.chSpeeds['fast'] == kag.userChSpeed"]

;◇オートモードスピードボタン
[locate x=729 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Slow_Off" rc="rightClicks()" target=*autoTime_slow cond="kag.autoModePageWait != kag.autoModePageWaits.slow"]
	[locate x=729 y=293][graph storage="config_autoTime_Slow_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.slow"]
[locate x=758 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Slower_Off" rc="rightClicks()" target=*autoTime_slower cond="kag.autoModePageWait != kag.autoModePageWaits.slower"]
	[locate x=758 y=293][graph storage="config_autoTime_Slower_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.slower"]
[locate x=787 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Slowerer_Off" rc="rightClicks()" target=*autoTime_slowerer cond="kag.autoModePageWait != kag.autoModePageWaits.slowerer"]
	[locate x=787 y=293][graph storage="config_autoTime_Slowerer_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.slowerer"]
[locate x=816 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Slowererer_Off" rc="rightClicks()" target=*autoTime_slowererer cond="kag.autoModePageWait != kag.autoModePageWaits.slowererer"]
	[locate x=816 y=293][graph storage="config_autoTime_Slowererer_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.slowererer"]
[locate x=845 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Medium_Off" rc="rightClicks()" target=*autoTime_medium cond="kag.autoModePageWait != kag.autoModePageWaits.medium"]
	[locate x=845 y=293][graph storage="config_autoTime_Medium_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.medium"]
[locate x=874 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Fasterererer_Off" rc="rightClicks()" target=*autoTime_fasterererer cond="kag.autoModePageWait != kag.autoModePageWaits.fasterererer"]
	[locate x=874 y=293][graph storage="config_autoTime_Fasterererer_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.fasterererer"]
[locate x=903 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Fastererer_Off" rc="rightClicks()" target=*autoTime_fastererer cond="kag.autoModePageWait != kag.autoModePageWaits.fastererer"]
	[locate x=903 y=293][graph storage="config_autoTime_Fastererer_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.fastererer"]
[locate x=932 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Fasterer_Off" rc="rightClicks()" target=*autoTime_fasterer cond="kag.autoModePageWait != kag.autoModePageWaits.fasterer"]
	[locate x=932 y=293][graph storage="config_autoTime_Fasterer_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.fasterer"]
[locate x=961 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Faster_Off" rc="rightClicks()" target=*autoTime_faster cond="kag.autoModePageWait != kag.autoModePageWaits.faster"]
	[locate x=961 y=293][graph storage="config_autoTime_Faster_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.faster"]
[locate x=990 y=326][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_autoTime_Fast_Off" rc="rightClicks()" target=*autoTime_fast cond="kag.autoModePageWait != kag.autoModePageWaits.fast"]
	[locate x=990 y=293][graph storage="config_autoTime_Fast_On" char=false cond="kag.autoModePageWait == kag.autoModePageWaits.fast"]

;◇メッセージスキップボタン
[locate x=752 y=374][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSkip_All_Off" rc="rightClicks()" target=*messageSkip_all cond="sf.messageSkip != 0"]
	[locate x=752 y=364][graph storage="config_messageSkip_All_On" char=false cond="sf.messageSkip == 0"]
[locate x=895 y=374][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_messageSkip_Alr_Off" rc="rightClicks()" target=*messageSkip_alr cond="sf.messageSkip != 1"]
	[locate x=895 y=364][graph storage="config_messageSkip_Alr_On" char=false cond="sf.messageSkip == 1"]




;◇ボイスカットボタン
[locate x=752 y=443][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_voicecut_Alr_Off" target=*config_setup cond="sf.voice_cut != 1" exp="sf.voice_cut = 1"]
[locate x=752 y=433][graph storage="config_voicecut_Alr_On" char=false cond="sf.voice_cut== 1"]
;
[locate x=895 y=443][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_voicecut_All_Off" rc="rightClicks()" target=*config_setup cond="sf.voice_cut != 0" exp="sf.voice_cut = 0"]
[locate x=895 y=433][graph storage="config_voicecut_All_On" char=false cond="sf.voice_cut == 0"]


;◇カットイン演出ボタン
[locate x=752 y=512][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_cutin_All_On" target=*config_setup cond="sf.cutin != 1" exp="sf.cutin = 1"]
[locate x=752 y=502][graph storage="config_cutin_Alr_On" char=false cond="sf.cutin== 1"]
;
[locate x=895 y=512][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_cutin_All_Off" rc="rightClicks()" target=*config_setup cond="sf.cutin != 0" exp="sf.cutin = 0"]
[locate x=895 y=502][graph storage="config_cutin_Alr_Off" char=false cond="sf.cutin == 0"]



;◇ウィンドウ切り替えボタン
[locate x=653 y=172][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_windowSize_Win_Off" rc="rightClicks()" target=*window_Win cond="kag.windowSize != 0"]
	[locate x=653 y=162][graph storage="config_windowSize_Win_On" char=false cond="kag.windowSize == 0"]
[locate x=897 y=172][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_windowSize_Full_Off" rc="rightClicks()" target=*window_Full cond="kag.windowSize != 1"]
	[locate x=897 y=162][graph storage="config_windowSize_Full_On" char=false cond="kag.windowSize == 1"]

;◇ＢＧＭ音量ボタン
[locate x=729 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_00" exp="sf.bgm_volumeLevel = 0" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 0"]
	[locate x=729 y=569][graph storage="config_volumeMeter_00_on" char=false cond="sf.bgm_volumeLevel == 0"]
[locate x=758 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_01" exp="sf.bgm_volumeLevel = 1" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 1"]
	[locate x=758 y=569][graph storage="config_volumeMeter_01_on" char=false cond="sf.bgm_volumeLevel == 1"]
[locate x=787 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_02" exp="sf.bgm_volumeLevel = 2" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 2"]
	[locate x=787 y=569][graph storage="config_volumeMeter_02_on" char=false cond="sf.bgm_volumeLevel == 2"]
[locate x=816 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_03" exp="sf.bgm_volumeLevel = 3" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 3"]
	[locate x=816 y=569][graph storage="config_volumeMeter_03_on" char=false cond="sf.bgm_volumeLevel == 3"]
[locate x=845 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_04" exp="sf.bgm_volumeLevel = 4" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 4"]
	[locate x=845 y=569][graph storage="config_volumeMeter_04_on" char=false cond="sf.bgm_volumeLevel == 4"]
[locate x=874 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_05" exp="sf.bgm_volumeLevel = 5" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 5"]
	[locate x=874 y=569][graph storage="config_volumeMeter_05_on" char=false cond="sf.bgm_volumeLevel == 5"]
[locate x=903 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_06" exp="sf.bgm_volumeLevel = 6" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 6"]
	[locate x=903 y=569][graph storage="config_volumeMeter_06_on" char=false cond="sf.bgm_volumeLevel == 6"]
[locate x=932 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_07" exp="sf.bgm_volumeLevel = 7" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 7"]
	[locate x=932 y=569][graph storage="config_volumeMeter_07_on" char=false cond="sf.bgm_volumeLevel == 7"]
[locate x=961 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_08" exp="sf.bgm_volumeLevel = 8" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 8"]
	[locate x=961 y=569][graph storage="config_volumeMeter_08_on" char=false cond="sf.bgm_volumeLevel == 8"]
[locate x=990 y=602][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_09" exp="sf.bgm_volumeLevel = 9" rc="rightClicks()" target=*bgmVolume_check cond="sf.bgm_volumeLevel != 9"]
	[locate x=990 y=569][graph storage="config_volumeMeter_09_on" char=false cond="sf.bgm_volumeLevel == 9"]


;◇ＳＥ音量ボタン
[locate x=729 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_00" exp="sf.se_volumeLevel = 0" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 0"]
	[locate x=729 y=638][graph storage="config_volumeMeter_00_on" char=false cond="sf.se_volumeLevel == 0"]                                                                               
[locate x=758 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_01" exp="sf.se_volumeLevel = 1" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 1"]
	[locate x=758 y=638][graph storage="config_volumeMeter_01_on" char=false cond="sf.se_volumeLevel == 1"]                                                                               
[locate x=787 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_02" exp="sf.se_volumeLevel = 2" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 2"]
	[locate x=787 y=638][graph storage="config_volumeMeter_02_on" char=false cond="sf.se_volumeLevel == 2"]                                                                               
[locate x=816 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_03" exp="sf.se_volumeLevel = 3" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 3"]
	[locate x=816 y=638][graph storage="config_volumeMeter_03_on" char=false cond="sf.se_volumeLevel == 3"]                                                                               
[locate x=845 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_04" exp="sf.se_volumeLevel = 4" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 4"]
	[locate x=845 y=638][graph storage="config_volumeMeter_04_on" char=false cond="sf.se_volumeLevel == 4"]                                                                               
[locate x=874 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_05" exp="sf.se_volumeLevel = 5" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 5"]
	[locate x=874 y=638][graph storage="config_volumeMeter_05_on" char=false cond="sf.se_volumeLevel == 5"]                                                                               
[locate x=903 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_06" exp="sf.se_volumeLevel = 6" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 6"]
	[locate x=903 y=638][graph storage="config_volumeMeter_06_on" char=false cond="sf.se_volumeLevel == 6"]                                                                               
[locate x=932 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_07" exp="sf.se_volumeLevel = 7" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 7"]
	[locate x=932 y=638][graph storage="config_volumeMeter_07_on" char=false cond="sf.se_volumeLevel == 7"]                                                                               
[locate x=961 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_08" exp="sf.se_volumeLevel = 8" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 8"]
	[locate x=961 y=638][graph storage="config_volumeMeter_08_on" char=false cond="sf.se_volumeLevel == 8"]                                                                               
[locate x=990 y=671][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_09" exp="sf.se_volumeLevel = 9" rc="rightClicks()" target=*seVolume_check cond="sf.se_volumeLevel != 9"]
	[locate x=990 y=638][graph storage="config_volumeMeter_09_on" char=false cond="sf.se_volumeLevel == 9"]



;◇ボイス音量ボタン
[locate x=729 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_00" exp="sf.voice_volumeLevel = 0" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 0"]
	[locate x=729 y=707][graph storage="config_volumeMeter_00_on" char=false cond="sf.voice_volumeLevel == 0"]
[locate x=758 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_01" exp="sf.voice_volumeLevel = 1" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 1"]
	[locate x=758 y=707][graph storage="config_volumeMeter_01_on" char=false cond="sf.voice_volumeLevel == 1"]
[locate x=787 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_02" exp="sf.voice_volumeLevel = 2" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 2"]
	[locate x=787 y=707][graph storage="config_volumeMeter_02_on" char=false cond="sf.voice_volumeLevel == 2"]
[locate x=816 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_03" exp="sf.voice_volumeLevel = 3" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 3"]
	[locate x=816 y=707][graph storage="config_volumeMeter_03_on" char=false cond="sf.voice_volumeLevel == 3"]
[locate x=845 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_04" exp="sf.voice_volumeLevel = 4" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 4"]
	[locate x=845 y=707][graph storage="config_volumeMeter_04_on" char=false cond="sf.voice_volumeLevel == 4"]
[locate x=874 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_05" exp="sf.voice_volumeLevel = 5" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 5"]
	[locate x=874 y=707][graph storage="config_volumeMeter_05_on" char=false cond="sf.voice_volumeLevel == 5"]
[locate x=903 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_06" exp="sf.voice_volumeLevel = 6" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 6"]
	[locate x=903 y=707][graph storage="config_volumeMeter_06_on" char=false cond="sf.voice_volumeLevel == 6"]
[locate x=932 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_07" exp="sf.voice_volumeLevel = 7" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 7"]
	[locate x=932 y=707][graph storage="config_volumeMeter_07_on" char=false cond="sf.voice_volumeLevel == 7"]
[locate x=961 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_08" exp="sf.voice_volumeLevel = 8" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 8"]
	[locate x=961 y=707][graph storage="config_volumeMeter_08_on" char=false cond="sf.voice_volumeLevel == 8"]
[locate x=990 y=740][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_volumeMeter_09" exp="sf.voice_volumeLevel = 9" rc="rightClicks()" target=*voiceVolume_check cond="sf.voice_volumeLevel != 9"]
	[locate x=990 y=707][graph storage="config_volumeMeter_09_on" char=false cond="sf.voice_volumeLevel == 9"]



;◇戻る＆タイトル＆終了ボタン
[locate x=261 y=837][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_titleBack" rc="rightClicks()" target=*config_setup_titleBack]
[locate x=534 y=837][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_gameEnd" rc="rightClicks()" target=*config_setup_gameEnd]
[locate x=790 y=837][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="config_return" rc="rightClicks()" target=*config_exit]

[endnowait]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]
[s]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■メッセージ速度の設定
;◇遅い
*messageSpeed_slow
[eval exp="kag.userChSpeed = kag.chSpeeds['slow']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇遅い2
*messageSpeed_slower
[eval exp="kag.userChSpeed = kag.chSpeeds['slower']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇遅い3
*messageSpeed_slowerer
[eval exp="kag.userChSpeed = kag.chSpeeds['slowerer']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇遅い4
*messageSpeed_slowererer
[eval exp="kag.userChSpeed = kag.chSpeeds['slowererer']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇普通
*messageSpeed_medium
[eval exp="kag.userChSpeed = kag.chSpeeds['medium']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い4
*messageSpeed_fasterererer
[eval exp="kag.userChSpeed = kag.chSpeeds['fasterererer']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い3
*messageSpeed_fastererer
[eval exp="kag.userChSpeed = kag.chSpeeds['fastererer']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い2
*messageSpeed_fasterer
[eval exp="kag.userChSpeed = kag.chSpeeds['fasterer']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い1
*messageSpeed_faster
[eval exp="kag.userChSpeed = kag.chSpeeds['faster']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い
*messageSpeed_fast
[eval exp="kag.userChSpeed = kag.chSpeeds['fast']"]
[eval exp="kag.setUserSpeed()"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■オートプレイ待ち時間の設定
;◇遅い
*autoTime_slow
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.slow"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇やや遅い
*autoTime_slower
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.slower"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇やや遅い2
*autoTime_slowerer
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.slowerer"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇やや遅い3
*autoTime_slowererer
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.slowererer"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇普通
*autoTime_medium
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.medium"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇そこそこ速い
*autoTime_fasterererer
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.fasterererer"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇そこそこ速い2
*autoTime_fastererer
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.fastererer"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇そこそこ速い3
*autoTime_fasterer
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.fasterer"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇やや速い
*autoTime_faster
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.faster"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]

;◇速い
*autoTime_fast
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.fast"]
[eval exp="kag.saveSystemVariables()"]
[jump target=*config_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■メッセージスキップの設定

;◇未読スキップ
*messageSkip_all
[eval exp="sf.messageSkip = 0"]
[jump target=*config_setup]

;◇既読スキップ
*messageSkip_alr
[eval exp="sf.messageSkip = 1"]
[jump target=*config_setup]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ウィンドウモードの設定

;◇ウィンドウサイズ
*window_Win
[eval exp="kag.onWindowedMenuItemClick()"]
[jump target=*config_setup]

;◇フルサイズ
*window_Full
[eval exp="kag.onFullScreenMenuItemClick()"]
[jump target=*config_setup]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ＢＧＭ音量の設定

;◇ＢＧＭ音量の反映
*bgmVolume_check
[bgmopt gvolume="&sf.volumeSize[sf.bgm_volumeLevel]"]
[jump target=*config_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ボイス音量の設定

;◇ボイス音量の反映
*voiceVolume_check
[seopt buf=0 gvolume="&sf.volumeSize[sf.voice_volumeLevel]"]
[jump target=*config_setup]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ＳＥ音量の設定

;◇ＳＥ音量の反映
*seVolume_check
[seopt buf=1 gvolume="&sf.volumeSize[sf.se_volumeLevel]"]
[seopt buf=2 gvolume="&sf.volumeSize[sf.se_volumeLevel]"]
[jump target=*config_setup]

;◇ボリュームテスト
*seVolume_Test
[se_logo]
[se_wait]
[jump target=*config_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


■システム音量の設定

;◇音量アップ
*sysVolume_up
[eval exp="sf.sys_volumeLevel += 1" cond="sf.sys_volumeLevel < 10"]
[jump target=*sysVolume_check]

;◇音量ダウン
*sysVolume_down
[eval exp="sf.sys_volumeLevel -= 1" cond="sf.sys_volumeLevel > 0"]
[jump target=*sysVolume_check]

;◇システム音量の反映
*sysVolume_check
[eval exp="sf.sys_volume =  0" cond="sf.sys_volumeLevel == 0"]
[eval exp="sf.sys_volume = 35" cond="sf.sys_volumeLevel == 1"]
[eval exp="sf.sys_volume = 40" cond="sf.sys_volumeLevel == 2"]
[eval exp="sf.sys_volume = 45" cond="sf.sys_volumeLevel == 3"]
[eval exp="sf.sys_volume = 50" cond="sf.sys_volumeLevel == 4"]
[eval exp="sf.sys_volume = 60" cond="sf.sys_volumeLevel == 5"]
[eval exp="sf.sys_volume = 70" cond="sf.sys_volumeLevel == 6"]
[eval exp="sf.sys_volume = 75" cond="sf.sys_volumeLevel == 7"]
[eval exp="sf.sys_volume = 80" cond="sf.sys_volumeLevel == 8"]
[eval exp="sf.sys_volume = 85" cond="sf.sys_volumeLevel == 9"]
[eval exp="sf.sys_volume =100" cond="sf.sys_volumeLevel ==10"]
[seopt buf=3 gvolume=&sf.se_volume]
[seopt buf=4 gvolume=&sf.se_volume]
[jump target=*config_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■タイトルに戻る
*config_setup_titleBack
[gotostart ask=true ]
[jump target=*config_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■ゲーム終了
*config_setup_gameEnd
[close]
[jump target=*config_setup]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■コンフィグメニュー終了
*config_exit

;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title == 0"]
	[position layer=message10 frame="cls" opacity=255 page=back left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[trans method=crossfade time=150]
	[wt canskip=false]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]

	;◇システムボタンを表示
	[sysbtopt forevisible=true]
	[sysbtopt backvisible=true]
[endif]

[current layer=message0]

[rclick jump=false]

;◇一時保存をロード
[tempload]

;◇メッセージ履歴出力＆表示
[history output=true enabled=true]

;◇プルダウンメニューで変更可
[eval exp="kag.fullScreenMenuItem.enabled = true"]
[eval exp="kag.windowedMenuItem.enabled = true"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

[return]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
