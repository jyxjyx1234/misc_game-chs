;===========================================================
; CGモード画面作成
;===========================================================

; このファイルはscenarioフォルダ内に配置、
; image フォルダ内に append_theme フォルダを配置して使用します
; 必要に応じて枚数やページの増減をおこなってください

;-----------------------------------------------------------
*start
;-----------------------------------------------------------
; 初期化
[layopt layer=message0 visible=false]
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[free_layermode name="particles"]

[clearfix name="role_button"]

[clearfix]
[cm]

; ギャラリーモードの背景読込み
[mask time="200"]

[chara_hide_all layer=0 time=0 wait=false]
[chara_hide_all layer=1 time=0 wait=false]
[chara_hide_all layer=2 time=0 wait=false]

[bg storage=../image/append_theme/bg_gallary.png time="1"]
;[image name="label_gallery" storage="../image/append_theme/label_gallery.png" layer="0" x="0" y="-10" time="0"]

[iscript]

tf.page              = 0   // ページ番号
tf.selected_cg_image = []  // 選択したCGの差分を格納した配列変数
tf.cg_index          = 0   // 上の配列の要素番号

tf.cg_posx = [224, 720, 1216]; // サムネイルのX座標
tf.cg_posy = [310, 596];      // サムネイルのY座標
tf.cg_thumbnail_width  = 480; // サムネイルの幅
tf.cg_thumbnail_height = 270; // サムネイルの高さ

// 前ページボタン
tf.btn_prev_pos    = [70, 528]; // x, y
tf.btn_prev_width  =  92;
tf.btn_prev_height = 136;
tf.btn_prev_img    = ["append_theme/gallery_prev.png", "append_theme/gallery_prev2.png"];

// 次ページボタン
tf.btn_next_pos    = [1758, 528]; // x, y
tf.btn_next_width  =  92;
tf.btn_next_height = 136;
tf.btn_next_img    = ["append_theme/gallery_next.png", "append_theme/gallery_next2.png"];

[endscript]

; ページネーション（ページ数が変わるときはtextの中身を修正してね）
[macro name="pagination"]
  [layopt layer="0" visible="true"]
  [free layer="0" name="pagination" time="1"]
  [ptext layer="0" name="pagination" text="&tf.page + 1 + '/4'" x="0" y="910" size="32" color="0xF2F2F2" width="1920" align="center"]
  [endmacro]

[jump target=*cgpage]

;-----------------------------------------------------------
*cgpage
;-----------------------------------------------------------
[cm]

; ギャラリーモード終了
[button hint="ギャラリー画面を終了する" graphic="append_theme/gallery_close.png" enterimg="append_theme/gallery_close2.png" target="*backtitle" x="20" y="910" clickse="button/button_cancel.mp3" ]

; tf.page変数を利用して個別閲覧ボタン作成ラベルにジャンプします
[jump target="& 'page_' + tf.page "]

;-------------------------------------------------------
*page_0
;-------------------------------------------------------

; CG閲覧モード画面1ページ目

; graphic には表示する画像のファイル名
; thumb にはサムネイルとして表示する画像のファイル名（記述がなければgraphicのファイルを指定）

; 一段目
[cg_image_button graphic="CG1/CG1_tuujou_1.jpg,CG1/CG1_tuujou_2.jpg,CG1/CG1_tuujou_3.jpg,CG1/CG1_tuujou_4.jpg,CG1/CG1_tuujou_5.jpg,CG1/CG1_tuujou_6.jpg,CG1/CG1_tuujou_8.jpg,CG1/CG1_tuujou_9.jpg,CG1/CG1_menu_1.jpg,CG1/CG1_menu_3.jpg,CG1/CG1_menu_5.jpg,CG1/CG1_eating_1.jpg,CG1/CG1_eating_4.jpg,CG1/CG1_eating_5.jpg,CG1/CG1_eating_kasu_2.jpg,CG1/CG1_eating_kasu_4.jpg,CG1/CG1_eating_kasu_5.jpg,CG1/CG1_eating_kasu_6.jpg,CG1/CG1_eating_kasu_7_zoom.jpg,CG1/CG1_tuujou_soda_1.jpg,CG1/CG1_tuujou_soda_3.jpg,CG1/CG1_tuujou_soda_4.jpg,CG1/CG1_tuujou_soda_8.jpg,CG1/CG1_tuujou_soda_9.jpg,CG1/CG1_n_tuujou_1.jpg,CG1/CG1_n_tuujou_2.jpg,CG1/CG1_n_tuujou_3.jpg,CG1/CG1_n_tuujou_4.jpg,CG1/CG1_n_tuujou_5.jpg,CG1/CG1_n_tuujou_8.jpg,CG1/CG1_n_menu_1.jpg,CG1/CG1_n_menu_1_zoom.jpg,CG1/CG1_n_menu_3.jpg,CG1/CG1_n_menu_5.jpg,CG1/CG1_n_menu_6.jpg,CG1/CG1_n_menu_8.jpg,CG1/CG1_n_menu_9.jpg,CG1/CG1_n_menu_10.jpg,CG1/CG1_n_menu_11.jpg" thumb="CG1/CG1_tuujou_1.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG2/CG2_1_1_1.jpg,CG2/CG2_1_1_2.jpg,CG2/CG2_1_1_3.jpg,CG2/CG2_1_2_3.jpg,CG2/CG2_1_2_4.jpg,CG2/CG2_1_2_5.jpg,CG2/CG2_1_3_5.jpg,CG2/CG2_2_3_5.jpg,CG2/CG2_2_3_2.jpg,CG2/CG2_2_4_2.jpg" thumb="CG2/CG2_1_1_1.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG4/CG4_sage_1.jpg,CG4/CG4_sage_2.jpg,CG4/CG4_sage_4.jpg,CG4/CG4_age_4.jpg,CG4/CG4_age_6.jpg,CG4/CG4_age_1_zoom.jpg,CG4/CG4_age_2_zoom.jpg,CG4/CG4_age_3_zoom.jpg,CG4/CG4_age_4_zoom.jpg,CG4/CG4_age_5_zoom.jpg,CG4/CG4_age_6_zoom.jpg,CG4/CG4_age_7_zoom.jpg" thumb="CG4/CG4_sage_1.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 二段目

[cg_image_button graphic="CG21/CG21_01.jpg,CG21/CG21_01_2.jpg,CG21/CG21_02.jpg,CG21/CG21_03.jpg,CG21/CG21_04.jpg,CG21/CG21_05.jpg,CG21/CG21_06.jpg,CG21/CG21_07.jpg" thumb="CG21/CG21_01.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG19/CG19_shirt_n_2.jpg,CG19/CG19_shirt_n_3.jpg,CG19/CG19_shirt_n_6.jpg,CG19/CG19_shirt_n_8.jpg,CG19/CG19_shirt_n_9.jpg,CG19/CG19_shirt_n_11.jpg,CG19/CG19_shirt_n_kiss_1.jpg,CG19/CG19_shirt_n_kiss_2.jpg,CG19/CG19_shirt_n_kiss_3.jpg,CG19/CG19_shirt_n_kiss_4.jpg,CG19/CG19_hadaka_n_3.jpg,CG19/CG19_hadaka_n_kiss_1.jpg,CG19/CG19_yoru_hadaka_n_10.jpg,CG19/CG19_yoru_shirt_1.jpg,CG19/CG19_yoru_shirt_2.jpg,CG19/CG19_yoru_shirt_3.jpg,CG19/CG19_yoru_shirt_4.jpg,CG19/CG19_yoru_shirt_5.jpg,CG19/CG19_yoru_shirt_10.jpg,CG19/CG19_yoru_shirt_11.jpg,CG19/CG19_yoru_shihuku_n_10.jpg,CG19/CG19_shihuku_n_1.jpg,CG19/CG19_shihuku_n_2.jpg,CG19/CG19_shihuku_n_3.jpg,CG19/CG19_shihuku_n_4.jpg,CG19/CG19_shihuku_n_5.jpg,CG19/CG19_shihuku_n_7.jpg,CG19/CG19_shihuku_n_8.jpg,CG19/CG19_shihuku_n_9.jpg,CG19/CG19_shihuku_n_10.jpg,CG19/CG19_shihuku_n_11.jpg" thumb="CG19/CG19_shirt_n_2.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG6/CG6_zoom_1.jpg,CG6/CG6_zoom_2.jpg,CG6/CG6_zoom_4.jpg,CG6/CG6_zoom_5.jpg,CG6/CG6_zoom_aka_1.jpg,CG6/CG6_zoom_aka_2.jpg,CG6/CG6_zoom_aka_3.jpg,CG6/CG6_zoom_aka_4.jpg,CG6/CG6_zoom_aka_5.jpg,CG6/CG6_zoom_aka_7.jpg,CG6/CG6_zoom_aka_6.jpg,CG6/CG6_zoom_aka_9.jpg,CG6/CG6_zoom_aka_10.jpg,CG6/CG6_zoom_aka_11.jpg,CG6/CG6_zoom_aka_12.jpg,CG6/CG6_tekoki_6.jpg,CG6/CG6_tekoki_aka_1.jpg,CG6/CG6_tekoki_aka_2.jpg,CG6/CG6_tekoki_aka_5.jpg,CG6/CG6_tekoki_momi_2.jpg,CG6/CG6_tekoki_momi_3.jpg,CG6/CG6_tekoki_momi_4.jpg,CG6/CG6_tekoki_momi_5.jpg,CG6/CG6_tekoki_momi_6.jpg,CG6/CG6_tekoki_momi_7.jpg,CG6/CG6_tekoki_momi_siru_2.jpg,CG6/CG6_tekoki_momi_siru_6.jpg,CG6/CG6_sounyumae_aka_siru_2.jpg,CG6/CG6_sounyumae_aka_siru_3.jpg,CG6/CG6_sounyumae_aka_siru_4.jpg,CG6/CG6_sounyumae_aka_siru_5.jpg,CG6/CG6_sounyumae_aka_siru_6.jpg,CG6/CG6_aka_1.jpg,CG6/CG6_aka_2.jpg,CG6/CG6_sounyu1_2.jpg,CG6/CG6_sounyu1_4.jpg,CG6/CG6_sounyu1_5.jpg,CG6/CG6_sounyu1_7.jpg,CG6/CG6_sounyu1_8.jpg,CG6/CG6_sounyu1_9.jpg,CG6/CG6_sounyu2_1.jpg,CG6/CG6_sounyu2_2.jpg,CG6/CG6_sounyu2_5.jpg,CG6/CG6_sounyu2_7.jpg,CG6/CG6_sounyu2_8.jpg,CG6/CG6_sounyu2_9.jpg" thumb="CG6/CG6_sounyu1_2.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 次ページへ
[button hint="次のページ" graphic="&tf.btn_next_img[0]" enterimg="&tf.btn_next_img[1]" target="*nextpage" x="&tf.btn_next_pos[0]" y="&tf.btn_next_pos[1]" clickse="button/button_enter.mp3"]

; ページネーション
[pagination]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*page_1
;-------------------------------------------------------
; CG閲覧モード画面2ページ目

; 一段目
[cg_image_button graphic="CG7/CG7_misounyu_teoroshi_1.jpg,CG7/CG7_misounyu_teoroshi_3.jpg,CG7/CG7_misounyu_teoroshi_aka_2.jpg,CG7/CG7_9.jpg,CG7/CG7_misounyu_teoroshi_aka_5.jpg,CG7/CG7_sounyu_teoroshi_aka_1.jpg,CG7/CG7_sounyu_teoroshi_aka_2.jpg,CG7/CG7_sounyu_teoroshi_aka_3.jpg,CG7/CG7_sounyu_teoroshi_aka_4.jpg,CG7/CG7_sounyu_teoroshi_aka_5.jpg,CG7/CG7_sounyu_teoroshi_aka_6.jpg,CG7/CG7_sounyu_teoroshi_aka_7.jpg,CG7/CG7_sounyu_teoroshi_aka_8.jpg,CG7/CG7_sounyu_teoroshi_aka_6_sekkin.jpg,CG7/CG7_sounyu_teoroshi_aka_8_sekkin.jpg,CG7/CG7_sounyu_te_aka_5.jpg,CG7/CG7_sounyu_te_aka_6.jpg,CG7/CG7_sounyu_te_aka_7.jpg,CG7/CG7_sounyu_te_aka_8.jpg,CG7/CG7_sounyu_te_shasei_aka_5.jpg,CG7/CG7_sounyu_teoroshi_seieki_aka_8.jpg,CG7/CG7_sounyu_teoroshi_aka_1_sekkin.jpg,CG7/CG7_sounyu_teoroshi_aka_2_sekkin.jpg,CG7/CG7_sounyu_teoroshi_aka_4_sekkin.jpg,CG7/CG7_sounyu_teoroshi_aka_5_sekkin.jpg,CG7/CG7_sounyu_teoroshi_aka_7_sekkin.jpg" thumb="CG7/CG7_misounyu_teoroshi_1.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG8/CG8_yokogao_1_zoom.jpg,CG8/CG8_yokogao_5_zoom.jpg,CG8/CG8_yokogao_6_zoom.jpg,CG8/CG8_yokogao_1.jpg,CG8/CG8_yokogao_2.jpg,CG8/CG8_yokogao_3.jpg,CG8/CG8_yokogao_5.jpg,CG8/CG8_yokogao_6.jpg,CG8/CG8_ushiro.jpg,CG8/CG8_tobiori.jpg,CG8/CG8_haikei.jpg" thumb="CG8/CG8_ushiro.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG9/CG9_sasumae_1.jpg,CG9/CG9_sasumae_2.jpg,CG9/CG9_sasumae_3.jpg,CG9/CG9_sashi0_1.jpg,CG9/CG9_sashi1_1.jpg,CG9/CG9_sashi2_1.jpg,CG9/CG9_sashi_udenashi_3_1.jpg,CG9/CG9_sashi_udenashi_3_2.jpg,CG9/CG9_sashi_udenashi_3_3.jpg,CG9/CG9_sashi_udenashi_3_2_2.jpg,CG9/CG9_sashi_udenashi_3_2_3.jpg,CG9/CG9_sashi_udenashi_3_2_4.jpg,CG9/CG9_sashi_udenashi_3_2_5.jpg,CG9/CG9_sashi_udenashi_3_3_2.jpg,CG9/CG9_sashi_udenashi_3_2_6.jpg,CG9/CG9_sashi_udenashi_3_2_7.jpg" thumb="CG9/CG9_sasumae_1.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 二段目
[cg_image_button graphic="CG10/CG10_zoom_1.jpg,CG10/CG10_zoom_2.jpg,CG10/CG10_zoom_3.jpg,CG10/CG10_zoom_5.jpg,CG10/CG10_zoom_6.jpg,CG10/CG10_zoom_7.jpg,CG10/CG10_zoom_8.jpg,CG10/CG10_aka_3.jpg,CG10/CG10_aka_4.jpg,CG10/CG10_aka_5.jpg,CG10/CG10_aka_6.jpg,CG10/CG10_aka_7.jpg,CG10/CG10_aka_8.jpg,CG10/CG10_aka_9.jpg,CG10/CG10_aka_10.jpg,CG10/CG10_nure_aka_5.jpg,CG10/CG10_nure_aka_6.jpg,CG10/CG10_nure_aka_8.jpg,CG10/CG10_nure_aka_9.jpg,CG10/CG10_nure_aka_10.jpg,CG10/CG10_nure_shasei_aka_9.jpg,CG10/CG10_nure_shasei_aka_10.jpg,CG10/CG10_nure_seieki_aka_3.jpg,CG10/CG10_nure_seieki_aka_6.jpg,CG10/CG10_nure_seieki_aka_7.jpg,CG10/CG10_nure_seieki_aka_8.jpg,CG10/CG10_nure_seieki_aka_9.jpg,CG10/CG10_aka_zoom_3.jpg,CG10/CG10_aka_zoom_4.jpg,CG10/CG10_aka_zoom_8.jpg" thumb="CG10/CG10_aka_3.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG20/CG20_huton.jpg,CG20/CG20_tuujou_4_3.jpg,CG20/CG20_tuujou_3_5.jpg,CG20/CG20_tuujou_1_1.jpg,CG20/CG20_tuujou_2_2.jpg,CG20/CG20_tuujou_2_4.jpg,CG20/CG20_daeki_4_1.jpg,CG20/CG20_daeki_shita_2_7.jpg,CG20/CG20_daeki_shita_2_3.jpg,CG20/CG20_daeki_2_5.jpg,CG20/CG20_fera_4.jpg,CG20/CG20_daeki_shita_2_4.jpg,CG20/CG20_daeki_shita_2_5.jpg,CG20/CG20_daeki_3_5.jpg,CG20/CG20_fera_3.jpg,CG20/CG20_fera_5.jpg,CG20/CG20_daeki_shita_1_5.jpg,CG20/CG20_daeki_3_3.jpg,CG20/CG20_daeki_4_2.jpg,CG20/CG20_daeki_1_4.jpg,CG20/CG20_fera_1.jpg,CG20/CG20_daeki_shita_1_4.jpg,CG20/CG20_fera_shasei_6.jpg,CG20/CG20_fera_shasei_1.jpg,CG20/CG20_fera_shasei_4.jpg,CG20/CG20_fera_shasei_5.jpg,CG20/CG20_daeki_1_1.jpg,CG20/CG20_daeki_1_5.jpg,CG20/CG20_daeki_1_3.jpg" thumb="CG20/CG20_tuujou_4_3.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG22/CG22.jpg,CG22/CG22_2.jpg" thumb="CG22/CG22.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 前のページへ
[button hint="前のページ" graphic="&tf.btn_prev_img[0]" enterimg="&tf.btn_prev_img[1]" target="*backpage" x="&tf.btn_prev_pos[0]" y="&tf.btn_prev_pos[1]" clickse="button/button_enter.mp3"]

; 次のページへ
[button hint="次のページ" graphic="&tf.btn_next_img[0]" enterimg="&tf.btn_next_img[1]" target="*nextpage" x="&tf.btn_next_pos[0]" y="&tf.btn_next_pos[1]" clickse="button/button_enter.mp3"]

[pagination]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*page_2
;-------------------------------------------------------
; CG閲覧モード画面3ページ目

; 一段目
[cg_image_button graphic="CG12/CG12_2.jpg,CG12/CG12.jpg" thumb="CG12/CG12.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG13/CG13.jpg" thumb="CG13/CG13.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="CG14/CG14_1_4.jpg,CG14/CG14_3_12.jpg,CG14/CG14_2_8.jpg,CG14/CG14_2_7.jpg,CG14/CG14_1_2.jpg,CG14/CG14_2_6.jpg,CG14/CG14_2_5.jpg,CG14/CG14_1_1.jpg,CG14/CG14_3_10.jpg" thumb="CG14/CG14_1_4.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 二段目
[cg_image_button graphic="CG15/CG15_2.jpg,CG15/CG15_6.jpg,CG15/CG15_7.jpg,CG15/CG15_3.jpg,CG15/CG15_1.jpg,CG15/CG15_4.jpg,CG15/CG15_aka_7.jpg,CG15/CG15_aka_9.jpg,CG15/CG15_aka_6.jpg,CG15/CG15_aka_2.jpg,CG15/CG15_aka_4.jpg,CG15/CG15_aka_5.jpg,CG15/CG15_aka_8.jpg,CG15/CG15_aka_3.jpg,CG15/CG15_zoom_1.jpg,CG15/CG15_zoom_2.jpg" thumb="CG15/CG15_2.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="ED3.jpg" thumb="ED3.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[1]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]
[cg_image_button graphic="BAD_CG/ED2.jpg" thumb="BAD_CG/ED2.jpg" no_graphic="../image/append_theme/lock2.png" x="&tf.cg_posx[2]" y="&tf.cg_posy[1]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 前のページへ
[button hint="前のページ" graphic="&tf.btn_prev_img[0]" enterimg="&tf.btn_prev_img[1]" target="*backpage" x="&tf.btn_prev_pos[0]" y="&tf.btn_prev_pos[1]" clickse="button/button_enter.mp3"]

; 次のページへ
[button hint="次のページ" graphic="&tf.btn_next_img[0]" enterimg="&tf.btn_next_img[1]" target="*nextpage" x="&tf.btn_next_pos[0]" y="&tf.btn_next_pos[1]" clickse="button/button_enter.mp3"]

[pagination]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*page_3
;-------------------------------------------------------
; CG閲覧モード画面3ページ目

; 一段目
[cg_image_button graphic="BAD_CG/ED2_2.jpg,BAD_CG/ED2_5.jpg" thumb="BAD_CG/ED2_2.jpg" no_graphic="../image/append_theme/lock1.png" x="&tf.cg_posx[0]" y="&tf.cg_posy[0]" width="&tf.cg_thumbnail_width" height="&tf.cg_thumbnail_height"]

; 前のページへ
[button hint="前のページ" graphic="&tf.btn_prev_img[0]" enterimg="&tf.btn_prev_img[1]" target="*backpage" x="&tf.btn_prev_pos[0]" y="&tf.btn_prev_pos[1]" clickse="button/button_enter.mp3"]

[pagination]

; 共通処理にジャンプ
[jump target=*common]

;-------------------------------------------------------
*common
;-------------------------------------------------------

; 停止
[mask_off time="200"]

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

[awakegame]
;[jump storage=title.ks]


;-----------------------------------------------------------
*nextpage
;-----------------------------------------------------------
; 次のページに移る処理

; 一時変数 tf.page を増加させたうえで *cgpage へ
[eval exp=tf.page++]
[jump target=*cgpage]

;-----------------------------------------------------------
*backpage
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
[image     layer=1 page=back storage=&tf.storage folder=bgimage width="1920" height="1080"]
[trans     layer=1 time=700]
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
