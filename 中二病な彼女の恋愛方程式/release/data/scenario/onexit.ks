;; RunOnExitで使用するスクリプト(onexit.ks)の実装例

; --------------------------------------------------------------------------
; ▼終了時に動作させたい処理を動かす。用途に合わせて編集すること。
; [trans]や[move]実行中だった時のことも考慮すること

[loadplugin module=KaichoTrans.dll]

[stoptrans]
[stopmove]
[stopquake]
[backlay]
; メニューとかsave/load画面が出てたら黒くする
[eval exp=".krclick_obj.clear('back')" cond="typeof(.krclick_obj) == 'Object'"]
; 背景を黒くする
[image storage=black layer=base page=back]
; 裏画面の画像を全部非表示
[call target=*layer_back_visible_off]
; 裏画面のメッセージを全部非表示
[call target=*message_back_visible_off]
; 裏画面のシステムボタンを全部非表示
[sysbutton_setopt page=back visible=false]
; 全部黒にブラーでフェードアウトさせる
[trans method=blur time=700]
[wt canskip=false]

; ▲ここまで
; --------------------------------------------------------------------------


;; 最後に必ず [eval exp="System.terminate()"][s] すること。
;; そうでないとゲーム終了しない。[close] だとntdll.dllでエラーが出ることが
;; ある。
;; [s] つけとかないと、コンダクタが生き残った場合に下も実行してしまう
[eval exp="System.terminate()"]
[s]

;; 以前、[eval exp="kag.closeByScript(%[ask:false])"]を推奨していたが、
;; これだとフルスクリーン時に終了できないことがあったので、System.terminate()に
;; 変更。
;; ただ、kag.closeByScript()だとゲームは終了するがコンソールやパネルは終了
;; しないため、「終了時にエラーが出る」場合にその原因を突き止めるのには
;; 役に立ちそうな気がしないでもない。



; ▼サブルーチン
; --------------------------------------------------------------------------

*layer_back_visible_off
[eval exp="tf.layernum = kag.back.layers.count"]
*layer_back_bisible_off_loop
[return cond="--tf.layernum < 0"]
[layopt layer=&tf.layernum page=back visible=off]
[jump target=*layer_back_bisible_off_loop]


*message_back_visible_off
[eval exp="tf.layernum = kag.back.messages.count"]
*message_back_bisible_off_loop
[return cond="--tf.layernum < 0"]
[layopt layer=&"'message'+tf.layernum" page=back visible=off]
[jump target=*message_back_bisible_off_loop]
