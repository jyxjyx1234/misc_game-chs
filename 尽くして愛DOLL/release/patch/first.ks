@call storage="clearHistoryOnLoad.ks"
@call storage="autoInsertLabel.ks"
@loadplugin module=wuvorbis.dll
@loadplugin module=krmovie.dll
@call storage="gvolume.ks"
[gvolmenu name="BGM(&B)" control="bgm"]
[gvolmenu name="ボイス(&V)" control="0"]
[gvolmenu name="効果音(&D)" control="1"]
@eval exp="kag.enableMouseKey = function { }"
*start
[cm]
@call storage="マクロセット.ks"
[VisibleMes]
@call storage="rclick_tjs21.ks"
;[jump storage="プロローグ.ks" target="*epp"]
;[jump storage="アゲハ.ks" target="*epp"]
;[jump storage="ヒナ.ks" target="*epp"]
;[eval exp="sf.omakeflg=1"]
;*epp
;[laycount layers=6]
;[AlphaBK]
;[ReMes]
[loadplugin module=FONTCHANGER.dll]
[jump storage="start.ks" target="*start"]
[s]
