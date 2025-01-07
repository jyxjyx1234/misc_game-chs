;===========================================================
; CGモード画面作成
;===========================================================

; image フォルダに append_theme フォルダを配置して使用します
; 必要に応じて枚数やページの増減をおこなってください

;-----------------------------------------------------------
*start
;-----------------------------------------------------------
; 初期化
[layopt layer=message0 visible=false]
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[hidemenubutton]

[clearfix]
[cm]

; ギャラリーモードの背景読込み
[bg storage=../image/append_theme/bg_gallery.png time=300]

[iscript]

tf.page              = 0   // ページ番号
tf.selected_cg_image = []  // 選択したCGの差分を格納した配列変数
tf.cg_index          = 0   // 上の配列の要素番号

[endscript]

[jump target=*cgpage]

;-----------------------------------------------------------
*cgpage
;-----------------------------------------------------------
[cm]

; ギャラリーモード終了
[button graphic=append_theme/gallery_close.png enterimg=append_theme/gallery_close2.png target=*backtitle x=1170 y=20]

; tf.page変数を利用して個別閲覧ボタン作成ラベルにジャンプします
[jump target="& 'page_' + tf.page "]

;-------------------------------------------------------
*page_0
;-------------------------------------------------------

; CG閲覧モード画面1ページ目

; graphic には表示する画像のファイル名
; thumb にはサムネイルとして表示する画像のファイル名（記述がなければgraphicのファイルを指定）

; 一段目
[cg_image_button graphic="1.png,1-2.png,1-3.png,1-4.png,1-5.png" thumb="1.png" no_graphic="../image/append_theme/lock.png" x=240 y=184 width=252 height=142]
[cg_image_button graphic="2.png,2-2.png" thumb="2.png" no_graphic="../image/append_theme/lock.png" x=512 y=184 width=252 height=142]
[cg_image_button graphic="3.png,3-2.png" thumb="3.png" no_graphic="../image/append_theme/lock.png" x=784 y=184 width=252 height=142]

; 二段目
[cg_image_button graphic="4.png,4-2.png,4-3.png,4-4.png,4-5.png" thumb="4.png" no_graphic="../image/append_theme/lock.png" x=240 y=349 width=252 height=142]
[cg_image_button graphic="5.png,5-2.png,5-3.png" thumb="5.png" no_graphic="../image/append_theme/lock.png" x=512 y=349 width=252 height=142]
[cg_image_button graphic="6.png,6-2.png,6-3.png,6-4.png,6-5.png" thumb="6.png" no_graphic="../image/append_theme/lock.png" x=784 y=349 width=252 height=142]

; 三段目
[cg_image_button graphic="7.png" thumb="7.png" no_graphic="../image/append_theme/lock.png" x=240 y=514 width=252 height=142]
[cg_image_button graphic="8.png,8-2.png,8-3.png,8-4.png,8-5.png" thumb="8.png" no_graphic="../image/append_theme/lock.png" x=512 y=514 width=252 height=142]
[cg_image_button graphic="9.png,9-2.png" thumb="9.png" no_graphic="../image/append_theme/lock.png" x=784 y=514 width=252 height=142]

; 次ページへ
[button graphic=append_theme/gallery_next.png enterimg=append_theme/gallery_next2.png target=*nextpage x=1101 y=382]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*page_1
;-------------------------------------------------------
; CG閲覧モード画面2ページ目

; 一段目
[cg_image_button graphic="10.png,10-2.png,10-3.png,10-4.png,10-5.png" thumb="10.png" no_graphic="../image/append_theme/lock.png" x=240 y=184 width=252 height=142]
[cg_image_button graphic="11.png,11-2.png,11-3.png,11-4.png,11-5.png,11-6.png" thumb="11.png" no_graphic="../image/append_theme/lock.png" x=512 y=184 width=252 height=142]
[cg_image_button graphic="12.png,12-2.png,12-3.png" thumb="12.png" no_graphic="../image/append_theme/lock.png" x=784 y=184 width=252 height=142]

; 二段目
[cg_image_button graphic="13.png,13-2.png,13-3.png,13-4.png,13-5.png,13-6.png,13-7.png,13-8.png" thumb="13-3.png" no_graphic="../image/append_theme/lock.png" x=240 y=349 width=252 height=142]
[cg_image_button graphic="14.png" thumb="14.png" no_graphic="../image/append_theme/lock.png" x=512 y=349 width=252 height=142]
[cg_image_button graphic="15.png,15-2.png,15-3.png,15-4.png,15-5.png,15-6.png,15-7.png" thumb="15.png" no_graphic="../image/append_theme/lock.png" x=784 y=349 width=252 height=142]

; 三段目
[cg_image_button graphic="16.png,16-2.png" thumb="16.png" no_graphic="../image/append_theme/lock.png" x=240 y=514 width=252 height=142]
[cg_image_button graphic="17.png,17-2.png,17-3.png,17-4.png,17-5.png,17-6.png,17-7.png,17-8.png,17-9.png" thumb="17.png" no_graphic="../image/append_theme/lock.png" x=512 y=514 width=252 height=142]
[cg_image_button graphic="18.png,18-2.png" thumb="18.png" no_graphic="../image/append_theme/lock.png" x=784 y=514 width=252 height=142]

; 前のページへ
[button graphic=append_theme/gallery_prev.png enterimg=append_theme/gallery_prev2.png target=*prevpage x=82  y=382]

; 次のページへ
[button graphic=append_theme/gallery_next.png enterimg=append_theme/gallery_next2.png target=*nextpage x=1101 y=382]

; [jump]
; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*page_2
;-------------------------------------------------------
; CG閲覧モード画面3ページ目

; 一段目
[cg_image_button graphic="koukoku1.png,koukoku1-2.png,koukoku1-3.png" thumb="koukoku1.png" no_graphic="../image/append_theme/lock.png" x=240 y=184 width=252 height=142]
[cg_image_button graphic="koukoku2.png,koukoku2-2.png,koukoku2-3.png" thumb="koukoku2.png" no_graphic="../image/append_theme/lock.png" x=512 y=184 width=252 height=142]
[cg_image_button graphic="koukoku3.png" thumb="koukoku3.png" no_graphic="../image/append_theme/lock.png" x=784 y=184 width=252 height=142]

; 二段目
[cg_image_button graphic="koukoku4.png" thumb="koukoku4.png" no_graphic="../image/append_theme/lock.png" x=240 y=349 width=252 height=142]
[cg_image_button graphic="koukoku5.png" thumb="koukoku5.png" no_graphic="../image/append_theme/lock.png" x=512 y=349 width=252 height=142]
[cg_image_button graphic="koukoku6.png" thumb="koukoku6.png" no_graphic="../image/append_theme/lock.png" x=784 y=349 width=252 height=142]

; 三段目
[cg_image_button graphic="koukoku7.png,koukoku7-2.png" thumb="koukoku7.png" no_graphic="../image/append_theme/lock.png" x=240 y=514 width=252 height=142]
[cg_image_button graphic="koukoku8.png" thumb="koukoku8.png" no_graphic="../image/append_theme/lock.png" x=512 y=514 width=252 height=142]
[cg_image_button graphic="koukoku9.png" thumb="koukoku9.png" no_graphic="../image/append_theme/lock.png" x=784 y=514 width=252 height=142]

; 前ページへ
[button graphic=append_theme/gallery_prev.png enterimg=append_theme/gallery_prev2.png target=*prevpage x=82  y=382]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*common
;-------------------------------------------------------

; 停止

[s]


;-----------------------------------------------------------
*backtitle
;-----------------------------------------------------------
; タイトルに戻る処理

; 使用したレイヤーをすべて消去
[cm]
[freeimage layer=0]
[freeimage layer=1]

; 別のシナリオにジャンプする場合はここを変更
[jump storage=title.ks  target="*cgback"]


;-----------------------------------------------------------
*nextpage
;-----------------------------------------------------------
; 次のページに移る処理

; 一時変数 tf.page を増加させたうえで *cgpage へ
[eval exp=tf.page++]
[jump target=*cgpage]

;-----------------------------------------------------------
*prevpage
;-----------------------------------------------------------
; 前のページに移る処理

; 一時変数 tf.page を減少させたうえで *cgpage へ
[eval exp=tf.page--]
[jump target=*cgpage]

;-----------------------------------------------------------
*no_image
;-----------------------------------------------------------
; 未解放のCGをクリックしたときの処理
[jump target=*cgpage]

;-----------------------------------------------------------
*clickcg
;-----------------------------------------------------------
; 解放済みのCGをクリックしたときの処理

; フリーレイヤーとレイヤー１(back)を解放します
[cm]
[freeimage layer=1 page=back]

; 一時変数 tf.cg_index に 0 をぶち込みます
[eval exp="tf.cg_index = 0"]

;-------------------------------------------------------
*cg_next_image
;-------------------------------------------------------
; CGを見ていきます。
; 見るべきCGがひとつしかない場合は、それだけ見たあと *cgpage に戻ります。
; 見るべきCGが複数ある場合(差分がある場合)は、
; 再帰的にこのラベルに飛び直して次のCGを見ていきます。

; 一時変数 tf.storage に表示すべきCGのstorageを代入します
[iscript]
tf.storage = tf.selected_cg_image[tf.cg_index];
[endscript]

; CGを表示してクリックを待ちます。
[freeimage layer=1 page=back]
[image     layer=1 page=back storage=&tf.storage folder=bgimage width=1280 height=720]
[trans     layer=1 time=1s00]
[wt]
[l]

; クリックされたら
; 一時変数 tf.cg_index (差分画像がある場合の画像番号)を1増加させます。
[eval exp=tf.cg_index++]

; まだ表示すべき差分画像が残っているなら、このラベルに飛びなおします。
[if exp=" tf.selected_cg_image.length > tf.cg_index "]
  [jump target=cg_next_image]

[else]
  [freeimage layer=1 page=back]
  [freeimage layer=1 page=fore time=700]
  [jump target=*cgpage]

[endif]
