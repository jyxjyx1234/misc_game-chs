;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/29　更新者　白土
*ss01

;■データ初期設定
;■表示可能な番号をリストアップ
;□現在の表示可能Ｎｏを取得

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■番組リスト出現条件

;■ヒロインＡ＋ヒロインＷの場合
[eval exp="f.ch_aw_root = f.ch_a_root +f.ch_w_root"]
[if exp=" f.ch_aw_root == 1 && f.set_a04 != 1"][eval exp=" f.a04_01 = 0"][endif]
[if exp=" f.ch_aw_root == 2 && f.set_a03 != 1"][eval exp=" f.a03_01 = 0"][endif]
[if exp=" f.ch_aw_root == 3 && f.set_a13 != 1"][eval exp=" f.a13_01 = 0"][endif]
[if exp=" f.ch_aw_root == 4 && f.set_a02 != 1"][eval exp=" f.a02_01 = 0"][eval exp=" f.a03_01 = 99"][endif]
[if exp=" f.ch_aw_root == 5 && f.set_a11 != 1"][eval exp=" f.a11_01 = 0"][endif]
[if exp=" f.ch_aw_root >= 6 && f.set_a10 != 1"][eval exp=" f.a10_01 = 0"][eval exp=" f.a03_01 = 99"][endif]

;■ヒロインＢ＋ヒロインＷの場合
[eval exp="f.ch_bw_root = f.ch_b_root +f.ch_w_root"]
[if exp=" f.ch_bw_root == 1 && f.set_b02 != 1"][eval exp=" f.b02_01 = 0"][endif]
[if exp=" f.ch_bw_root == 2 && f.set_b01 != 1"][eval exp=" f.b01_01 = 0"][endif]
[if exp=" f.ch_bw_root == 3 && f.set_b13 != 1"][eval exp=" f.b13_01 = 0"][endif]
[if exp=" f.ch_bw_root == 4 && f.set_b06 != 1"][eval exp=" f.b06_01 = 0"][eval exp=" f.b03_01 = 99"][endif]
[if exp=" f.ch_bw_root == 5 && f.set_b12 != 1"][eval exp=" f.b12_01 = 0"][endif]
[if exp=" f.ch_bw_root == 6 && f.set_b11 != 1"][eval exp=" f.b11_01 = 0"][endif]
[if exp=" f.ch_bw_root >= 7 && f.set_b04 != 1"][eval exp=" f.b04_01 = 0"][endif]

;■ヒロインＡ＋ヒロインＷの場合
[if exp=" f.sijiritu >= 45 && f.set_w02 != 1"][eval exp=" f.w02_01 = 0"][endif]
[if exp=" f.sijiritu >= 65 && f.set_w04 != 1"][eval exp=" f.w04_01 = 0"][endif]
[if exp=" f.sijiritu >= 80 && f.set_w06 != 1"][eval exp=" f.w06_01 = 0"][endif]
[if exp=" f.sijiritu >= 95 && f.set_w05 != 1"][eval exp=" f.w05_01 = 0"][endif]

;■「企画書」イベントで発生した番組の登録
[if exp="f.a01_01x == 1 && f.set_a01 != 1"][eval exp=" f.a01_01 = 0"][endif]
[if exp="f.b03_01x == 1 && f.set_b03 != 1"][eval exp=" f.b03_01 = 0"][endif]
[if exp="f.a05_01x == 1 && f.set_a05 != 1"][eval exp=" f.a05_01 = 0"][endif]
[if exp="f.a06_01x == 1 && f.set_a06 != 1"][eval exp=" f.a06_01 = 0"][endif]
[if exp="f.b05_01x == 1 && f.set_b05 != 1"][eval exp=" f.b05_01 = 0"][endif]
[if exp="f.a07_01x == 1 && f.set_a07 != 1"][eval exp=" f.a07_01 = 0"][endif]
[if exp="f.a08_01x == 1 && f.set_a08 != 1"][eval exp=" f.a08_01 = 0"][endif]
[if exp="f.a09_01x == 1 && f.set_a09 != 1"][eval exp=" f.a09_01 = 0"][endif]
[if exp="f.b07_01x == 1 && f.set_b07 != 1"][eval exp=" f.b07_01 = 0"][endif]
[if exp="f.b08_01x == 1 && f.set_b08 != 1"][eval exp=" f.b08_01 = 0"][endif]
[if exp="f.b09_01x == 1 && f.set_b09 != 1"][eval exp=" f.b09_01 = 0"][endif]
[if exp="f.w01_01x == 1 && f.set_w01 != 1"][eval exp=" f.w01_01 = 0"][endif]
[if exp="f.a12_01x == 1 && f.set_a12 != 1"][eval exp=" f.a12_01 = 0"][endif]
[if exp="f.w03_01x == 1 && f.set_w03 != 1"][eval exp=" f.w03_01 = 0"][endif]
[if exp="f.b10_01x == 1 && f.set_b10 != 1"][eval exp=" f.b10_01 = 0"][endif]
[if exp="f.w07_01x == 1 && f.set_w07 != 1"][eval exp=" f.w07_01 = 0"][endif]

;■「慰問イベント」系の番組で、連動して登録抹消する場合
[if exp=" f.set_a07 == 1 "][eval exp=" f.set_b07 = 1"][endif]
[if exp=" f.set_a08 == 1 "][eval exp=" f.set_b08 = 1"][endif]
[if exp=" f.set_a09 == 1 "][eval exp=" f.set_b09 = 1"][endif]

[if exp=" f.set_b07 == 1 "][eval exp=" f.set_a07 = 1"][endif]
[if exp=" f.set_b08 == 1 "][eval exp=" f.set_a08 = 1"][endif]
[if exp=" f.set_b09 == 1 "][eval exp=" f.set_a09 = 1"][endif]

;■特定のターンだけ登録する場合
;■※選挙は、イベントを見た片方だけ登録する場合
;[if exp="f.ch_x_root == 21 && f.a14_01x == 1 && f.set_a14 != 1 "][eval exp="f.a14_01  == 0 "][eval exp="f.set_a14 == 0 "][eval exp="f.set_a14_get = 1"][eval exp="f.bangumi =2"][jump target=*ss01_root20][endif]
;[if exp="f.ch_x_root == 21 && f.b14_01x == 1 && f.set_b14 != 1 "][eval exp="f.b14_01  == 0 "][eval exp="f.set_b14 == 0 "][eval exp="f.set_b14_get = 1"][eval exp="f.bangumi =2"][jump target=*ss01_root20][endif]
;■※選挙は二つとも登録する場合
[if exp="f.ch_x_root == 21 "][eval exp="f.a14_01  =  0 "][eval exp="f.set_a14 =  0 "][endif]
[if exp="f.ch_x_root == 21 "][eval exp="f.b14_01  =  0 "][eval exp="f.set_b14 =  0 "][endif]
[if exp="f.ch_x_root != 21 "][eval exp="f.a14_01  = 99 "][eval exp="f.b14_01  = 99 "][endif]

;■Ａ１４～Ｂ１４　出現チェック　ＯＫの出たタイミングを保存　保存したら処理ナンバーを加算する
[if exp="f.ch_x_root == 21 "]
[if exp="f.ch_x_root >= f.a14_01 && f.set_a14 == 0 "][eval exp="f.set_a14_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b14_01 && f.set_b14 == 0 "][eval exp="f.set_b14_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[endif]

;■Ａ０１～Ｗ０７　出現チェック　ＯＫの出たタイミングを保存　保存したら処理ナンバーを加算する
[if exp="f.ch_x_root != 21 "]
[if exp="f.ch_x_root >= f.a01_01 && f.set_a01 == 0 "][eval exp="f.set_a01_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a02_01 && f.set_a02 == 0 "][eval exp="f.set_a02_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a03_01 && f.set_a03 == 0 "][eval exp="f.set_a03_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a04_01 && f.set_a04 == 0 "][eval exp="f.set_a04_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a05_01 && f.set_a05 == 0 "][eval exp="f.set_a05_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a06_01 && f.set_a06 == 0 "][eval exp="f.set_a06_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a07_01 && f.set_a07 == 0 "][eval exp="f.set_a07_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a08_01 && f.set_a08 == 0 "][eval exp="f.set_a08_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a09_01 && f.set_a09 == 0 "][eval exp="f.set_a09_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a10_01 && f.set_a10 == 0 "][eval exp="f.set_a10_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a11_01 && f.set_a11 == 0 "][eval exp="f.set_a11_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a12_01 && f.set_a12 == 0 "][eval exp="f.set_a12_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.a13_01 && f.set_a13 == 0 "][eval exp="f.set_a13_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]

[if exp="f.ch_x_root >= f.b01_01 && f.set_b01 == 0 "][eval exp="f.set_b01_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b02_01 && f.set_b02 == 0 "][eval exp="f.set_b02_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b03_01 && f.set_b03 == 0 "][eval exp="f.set_b03_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b04_01 && f.set_b04 == 0 "][eval exp="f.set_b04_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b05_01 && f.set_b05 == 0 "][eval exp="f.set_b05_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b06_01 && f.set_b06 == 0 "][eval exp="f.set_b06_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b07_01 && f.set_b07 == 0 "][eval exp="f.set_b07_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b08_01 && f.set_b08 == 0 "][eval exp="f.set_b08_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b09_01 && f.set_b09 == 0 "][eval exp="f.set_b09_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b10_01 && f.set_b10 == 0 "][eval exp="f.set_b10_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b11_01 && f.set_b11 == 0 "][eval exp="f.set_b11_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b12_01 && f.set_b12 == 0 "][eval exp="f.set_b12_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.b13_01 && f.set_b13 == 0 "][eval exp="f.set_b13_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]

[if exp="f.ch_x_root >= f.w01_01 && f.set_w01 == 0 "][eval exp="f.set_w01_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w02_01 && f.set_w02 == 0 "][eval exp="f.set_w02_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w03_01 && f.set_w03 == 0 "][eval exp="f.set_w03_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w04_01 && f.set_w04 == 0 "][eval exp="f.set_w04_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w05_01 && f.set_w05 == 0 "][eval exp="f.set_w05_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w06_01 && f.set_w06 == 0 "][eval exp="f.set_w06_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[if exp="f.ch_x_root >= f.w07_01 && f.set_w07 == 0 "][eval exp="f.set_w07_get = f.bangumi"][eval exp="f.bangumi += 1"][endif]
[endif]

[endnowait]
[endif]

;■項目の数をカウント　カウンターは初期値に戻す
;□出現条件が満たしている個数分、「f.set_select_no」に表示個所をセットする
[eval exp="f.set_select_no = f.bangumi"][eval exp="f.bangumi = 1"]


*ss01_root20
;■■■■■□□□□□■■■■■□□□□□■■■■■
;■データの初期化
[eval exp="tf.i = 1"]
[eval exp="tf.j = 1"]
*ss01_for_i_c

[eval exp="f.slect_name_[tf.j] = ''"]
[eval exp="f.slect_no_[tf.j] = ''"]
[eval exp="tf.j += 1"]

[eval exp="tf.i +=1"]
[jump target=*ss01_for_i_c cond="tf.i <= 36"]
;ss00_next i_c
;■■■■■□□□□□■■■■■□□□□□■■■■■

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■番組リスト出現
;ＯＫなら　現在の処理ナンバーに登録　１～１６
;f.slect_name[xx]　と　 f.slect_no[xx]　に登録
;ループ１～３５
[eval exp="tf.i = 1"]
[eval exp="tf.j = 1"]
*ss01_for_i

;■２１ターン目の登録
[if exp="f.ch_x_root == 21 "]
[if exp="f.set_a14_get == tf.i && f.set_a14 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a14'"][eval exp="f.slect_no_[tf.j] = 'a14'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b14_get == tf.i && f.set_b14 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b14'"][eval exp="f.slect_no_[tf.j] = 'b14'"][eval exp="tf.j += 1"][endif]
[endif]

;■２１ターン目以外の登録
[if exp="f.ch_x_root != 21 "]
[if exp="f.set_a01_get == tf.i && f.set_a01 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a01'"][eval exp="f.slect_no_[tf.j] = 'a01'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a02_get == tf.i && f.set_a02 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a02'"][eval exp="f.slect_no_[tf.j] = 'a02'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a03_get == tf.i && f.set_a03 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a03'"][eval exp="f.slect_no_[tf.j] = 'a03'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a04_get == tf.i && f.set_a04 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a04'"][eval exp="f.slect_no_[tf.j] = 'a04'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a05_get == tf.i && f.set_a05 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a05'"][eval exp="f.slect_no_[tf.j] = 'a05'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a06_get == tf.i && f.set_a06 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a06'"][eval exp="f.slect_no_[tf.j] = 'a06'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a07_get == tf.i && f.set_a07 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a07'"][eval exp="f.slect_no_[tf.j] = 'a07'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a08_get == tf.i && f.set_a08 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a08'"][eval exp="f.slect_no_[tf.j] = 'a08'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a09_get == tf.i && f.set_a09 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a09'"][eval exp="f.slect_no_[tf.j] = 'a09'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a10_get == tf.i && f.set_a10 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a10'"][eval exp="f.slect_no_[tf.j] = 'a10'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a11_get == tf.i && f.set_a11 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a11'"][eval exp="f.slect_no_[tf.j] = 'a11'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a12_get == tf.i && f.set_a12 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a12'"][eval exp="f.slect_no_[tf.j] = 'a12'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_a13_get == tf.i && f.set_a13 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_a13'"][eval exp="f.slect_no_[tf.j] = 'a13'"][eval exp="tf.j += 1"][endif]

[if exp="f.set_b01_get == tf.i && f.set_b01 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b01'"][eval exp="f.slect_no_[tf.j] = 'b01'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b02_get == tf.i && f.set_b02 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b02'"][eval exp="f.slect_no_[tf.j] = 'b02'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b03_get == tf.i && f.set_b03 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b03'"][eval exp="f.slect_no_[tf.j] = 'b03'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b04_get == tf.i && f.set_b04 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b04'"][eval exp="f.slect_no_[tf.j] = 'b04'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b05_get == tf.i && f.set_b05 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b05'"][eval exp="f.slect_no_[tf.j] = 'b05'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b06_get == tf.i && f.set_b06 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b06'"][eval exp="f.slect_no_[tf.j] = 'b06'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b07_get == tf.i && f.set_b07 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b07'"][eval exp="f.slect_no_[tf.j] = 'b07'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b08_get == tf.i && f.set_b08 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b08'"][eval exp="f.slect_no_[tf.j] = 'b08'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b09_get == tf.i && f.set_b09 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b09'"][eval exp="f.slect_no_[tf.j] = 'b09'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b10_get == tf.i && f.set_b10 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b10'"][eval exp="f.slect_no_[tf.j] = 'b10'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b11_get == tf.i && f.set_b11 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b11'"][eval exp="f.slect_no_[tf.j] = 'b11'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b12_get == tf.i && f.set_b12 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b12'"][eval exp="f.slect_no_[tf.j] = 'b12'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_b13_get == tf.i && f.set_b13 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_b13'"][eval exp="f.slect_no_[tf.j] = 'b13'"][eval exp="tf.j += 1"][endif]

[if exp="f.set_w01_get == tf.i && f.set_w01 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w01'"][eval exp="f.slect_no_[tf.j] = 'w01'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w02_get == tf.i && f.set_w02 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w02'"][eval exp="f.slect_no_[tf.j] = 'w02'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w03_get == tf.i && f.set_w03 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w03'"][eval exp="f.slect_no_[tf.j] = 'w03'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w04_get == tf.i && f.set_w04 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w04'"][eval exp="f.slect_no_[tf.j] = 'w04'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w05_get == tf.i && f.set_w05 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w05'"][eval exp="f.slect_no_[tf.j] = 'w05'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w06_get == tf.i && f.set_w06 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w06'"][eval exp="f.slect_no_[tf.j] = 'w06'"][eval exp="tf.j += 1"][endif]
[if exp="f.set_w07_get == tf.i && f.set_w07 == 0"][eval exp="f.slect_name_[tf.j] = 'jyouhou_bangumi_btn_w07'"][eval exp="f.slect_no_[tf.j] = 'w07'"][eval exp="tf.j += 1"][endif]
[endif]

[eval exp="tf.i +=1"]
[jump target=*ss01_for_i cond="tf.i <= 36"]
;ss00_next i
;■■■■■□□□□□■■■■■□□□□□■■■■■

;■シナリオが無い場合　死亡エンド（END07）へ
[if exp="f.slect_name_[1] == ''"][jump storage="ss00.ks"target=*slg00_0073][endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ターン数による　セーブファイル名の決定
[if exp="f.ch_x_root == 1"][eval exp="sf.sname_ss01 =sf.sname_ss01_01"][endif]
[if exp="f.ch_x_root == 2"][eval exp="sf.sname_ss01 =sf.sname_ss01_02"][endif]
[if exp="f.ch_x_root == 3"][eval exp="sf.sname_ss01 =sf.sname_ss01_03"][endif]
[if exp="f.ch_x_root == 4"][eval exp="sf.sname_ss01 =sf.sname_ss01_04"][endif]
[if exp="f.ch_x_root == 5"][eval exp="sf.sname_ss01 =sf.sname_ss01_05"][endif]
[if exp="f.ch_x_root == 6"][eval exp="sf.sname_ss01 =sf.sname_ss01_06"][endif]
[if exp="f.ch_x_root == 7"][eval exp="sf.sname_ss01 =sf.sname_ss01_07"][endif]
[if exp="f.ch_x_root == 8"][eval exp="sf.sname_ss01 =sf.sname_ss01_08"][endif]
[if exp="f.ch_x_root == 9"][eval exp="sf.sname_ss01 =sf.sname_ss01_09"][endif]
[if exp="f.ch_x_root ==10"][eval exp="sf.sname_ss01 =sf.sname_ss01_10"][endif]
[if exp="f.ch_x_root ==11"][eval exp="sf.sname_ss01 =sf.sname_ss01_11"][endif]
[if exp="f.ch_x_root ==12"][eval exp="sf.sname_ss01 =sf.sname_ss01_12"][endif]
[if exp="f.ch_x_root ==13"][eval exp="sf.sname_ss01 =sf.sname_ss01_13"][endif]
[if exp="f.ch_x_root ==14"][eval exp="sf.sname_ss01 =sf.sname_ss01_14"][endif]
[if exp="f.ch_x_root ==15"][eval exp="sf.sname_ss01 =sf.sname_ss01_15"][endif]
[if exp="f.ch_x_root ==16"][eval exp="sf.sname_ss01 =sf.sname_ss01_16"][endif]
[if exp="f.ch_x_root ==17"][eval exp="sf.sname_ss01 =sf.sname_ss01_17"][endif]
[if exp="f.ch_x_root ==18"][eval exp="sf.sname_ss01 =sf.sname_ss01_18"][endif]
[if exp="f.ch_x_root ==19"][eval exp="sf.sname_ss01 =sf.sname_ss01_19"][endif]
[if exp="f.ch_x_root ==20"][eval exp="sf.sname_ss01 =sf.sname_ss01_20"][endif]
[if exp="f.ch_x_root ==21"][eval exp="sf.sname_ss01 =sf.sname_ss01_21"][endif]
[if exp="f.ch_x_root ==22"][eval exp="sf.sname_ss01 =sf.sname_ss01_22"][endif]
[if exp="f.ch_x_root ==23"][eval exp="sf.sname_ss01 =sf.sname_ss01_23"][endif]
[if exp="f.ch_x_root ==24"][eval exp="sf.sname_ss01 =sf.sname_ss01_24"][endif]

*ss01_start|&sf.sname_ss01
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■初期設定

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]
;□スキップモード＿禁止
[nextskip enabled=false]
;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;□使用するレイヤーの設定
[win_full]
[layopt page=fore layer=message2 visible=false]
[layopt page=back layer=message2 visible=false]
[layopt page=fore layer=message1 visible=false]
[layopt page=back layer=message1 visible=false]
[layopt page=fore layer=message0 visible=true]
[layopt page=back layer=message0 visible=true]
[current layer=message0 page=back]
[position left=0 top=0 width=640 height=480 frame="" opacity=0 marginl=0 margint=0 marginr=0 marginb=0]

;□モードの開始フラグ
[eval exp="f.jyouhou_first=true"]
[eval exp="f.set_page = 1"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■選択肢表示画面
*start
;■ＢＧＭ設定
[bgmplay storage="bgm10"]

;■使用レイヤー設定
[current layer=message0 page=back]
[er]

;■画像準備
[bg storage="jyouhou_bg"]
[ld storage="cls" layer=1 pos=0]

;■情報表示
[nowait]

;□日付
[eval exp="tf.sy =(f.ch_x_root -1) *23"]
[pimage storage="jyouhou_day" layer=base page=back dx=8 dy=50 sy=&tf.sy sh=23]

;□勢力
[pimage storage="bgff0000" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(f.sijiritu) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=&tf.sw sh=10]

[eval exp="var sijiritu_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.sijiritu *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]

[if exp="tf.put_no != 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=56 ]
[endif]

[if exp="tf.put_no == 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[0]" sw=12]
[endif]


;□視聴率
[eval exp="var tv_onare_no_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.tv_onare_old *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]

[if exp="tf.put_no != 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=103 ]
[endif]
[if exp="tf.put_no == 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[0]" sw=12]
[endif]




;□ニーズ
[eval exp="var need_00_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_01_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_02_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="tf.put_no_00 = f.need_00 +5"]
[eval exp="tf.put_no_01 = f.need_01 +5"]
[eval exp="tf.put_no_02 = f.need_02 +5"]
[eval exp="tf.no_00=tf.put_no_00 %12"]
[eval exp="tf.no_01=tf.put_no_01 %12"]
[eval exp="tf.no_02=tf.put_no_02 %12"]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=504 dy=97 sx="&need_00_set[tf.no_00]" sy= 0 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=537 dy=97 sx="&need_01_set[tf.no_01]" sy=14 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=570 dy=97 sx="&need_02_set[tf.no_02]" sy=28 sw=32 sh=14]

;■感情プレート表示
[if exp="f.kanjyou == '渇望'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=  0 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '怒り'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx= 80 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '不偏'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=160 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '同情'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=240 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '反発'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=320 sy=0 sw=80 sh=30][endif]

;□セーブボタン＆ロードボタン表示
[pimage storage="jyouhou_btn_load"    layer=base page=back dx= 20 dy=164 sw=120]
[pimage storage="jyouhou_btn_save"    layer=base page=back dx=150 dy=164 sw=120]

;□過去データ確認画面へ切り替えボタン
[pimage storage="jyouhou_data"    layer=base page=back dx=490 dy=131 sw=150]

;□選択肢追加状態の切り替えボタン
;[if exp="f.set_select_no >  9 && f.set_page == 1"][pimage storage="jyouhou_btn_page_01" layer=1 page=back dx=423 dy=131 sw=67][endif]
;[if exp="f.set_select_no >  9 && f.set_page == 2"][pimage storage="jyouhou_btn_page_02" layer=1 page=back dx=356 dy=131 sw=67][endif]
[pimage storage="jyouhou_btn_page_01" layer=base page=back dx=356 dy=131 sx=67 sw=67]
[if exp="f.set_select_no > 9 "]
[pimage storage="jyouhou_btn_page_02" layer=base page=back dx=423 dy=131 sx=67 sw=67]
[endif]

[if exp="f.set_page == 1"]
[if exp="f.slect_name_[1] != ''"][pimage storage="&f.slect_name_[1]" layer=1 page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[2] != ''"][pimage storage="&f.slect_name_[2]" layer=1 page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[3] != ''"][pimage storage="&f.slect_name_[3]" layer=1 page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[4] != ''"][pimage storage="&f.slect_name_[4]" layer=1 page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[5] != ''"][pimage storage="&f.slect_name_[5]" layer=1 page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[6] != ''"][pimage storage="&f.slect_name_[6]" layer=1 page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[7] != ''"][pimage storage="&f.slect_name_[7]" layer=1 page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[8] != ''"][pimage storage="&f.slect_name_[8]" layer=1 page=back dx=322 dy=403 sw=300][endif]
[endif]

[if exp="f.set_page == 2"]
[if exp="f.slect_name_[9]  != ''"][pimage storage="&f.slect_name_[9]"  layer=1 page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[10] != ''"][pimage storage="&f.slect_name_[10]" layer=1 page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[11] != ''"][pimage storage="&f.slect_name_[11]" layer=1 page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[12] != ''"][pimage storage="&f.slect_name_[12]" layer=1 page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[13] != ''"][pimage storage="&f.slect_name_[13]" layer=1 page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[14] != ''"][pimage storage="&f.slect_name_[14]" layer=1 page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[15] != ''"][pimage storage="&f.slect_name_[15]" layer=1 page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[16] != ''"][pimage storage="&f.slect_name_[16]" layer=1 page=back dx=322 dy=403 sw=300][endif]
[endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ボタン配置
[locate x= 20 y=164][button clickse=&sf.sys_se_01 enterse=&sf.sys_se_11 leavese=&sf.sys_se_21 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou_btn_load" target=*slg_load]
[locate x=150 y=164][button clickse=&sf.sys_se_02 enterse=&sf.sys_se_12 leavese=&sf.sys_se_22 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou_btn_save" target=*slg_save]

[locate x=356 y=131][button clickse=&sf.sys_se_03 enterse=&sf.sys_se_13 leavese=&sf.sys_se_23 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou_btn_page_01" exp="f.set_page = 1" target=*page_to_p1]
[if exp="f.set_select_no > 9 "][locate x=423 y=131][button clickse=&sf.sys_se_03 enterse=&sf.sys_se_13 leavese=&sf.sys_se_23 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou_btn_page_02" exp="f.set_page = 2" target=*page_to_p2][endif]




[locate x=490 y=131][button clickse=&sf.sys_se_04 enterse=&sf.sys_se_14 leavese=&sf.sys_se_24 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou_data" target=*data_output]

;■選択項目表示
*sig01_0020
[if exp="f.set_page == 1"]
[if exp="f.slect_name_[1] != ''"][locate x= 18 y=187][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[1]" exp="tf.select_no = 1" target=*sig01_0030][endif]
[if exp="f.slect_name_[2] != ''"][locate x= 18 y=259][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[2]" exp="tf.select_no = 2" target=*sig01_0030][endif]
[if exp="f.slect_name_[3] != ''"][locate x= 18 y=331][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[3]" exp="tf.select_no = 3" target=*sig01_0030][endif]
[if exp="f.slect_name_[4] != ''"][locate x= 18 y=403][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[4]" exp="tf.select_no = 4" target=*sig01_0030][endif]
[if exp="f.slect_name_[5] != ''"][locate x=322 y=187][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[5]" exp="tf.select_no = 5" target=*sig01_0030][endif]
[if exp="f.slect_name_[6] != ''"][locate x=322 y=259][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[6]" exp="tf.select_no = 6" target=*sig01_0030][endif]
[if exp="f.slect_name_[7] != ''"][locate x=322 y=331][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[7]" exp="tf.select_no = 7" target=*sig01_0030][endif]
[if exp="f.slect_name_[8] != ''"][locate x=322 y=403][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[8]" exp="tf.select_no = 8" target=*sig01_0030][endif]
[endif]

[if exp="f.set_page == 2"]
[if exp="f.slect_name_[9]  != ''"][locate x= 18 y=187][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[9]"  exp="tf.select_no = 9" target=*sig01_0030][endif]
[if exp="f.slect_name_[10] != ''"][locate x= 18 y=259][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[10]" exp="tf.select_no =10" target=*sig01_0030][endif]
[if exp="f.slect_name_[11] != ''"][locate x= 18 y=331][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[11]" exp="tf.select_no =11" target=*sig01_0030][endif]
[if exp="f.slect_name_[12] != ''"][locate x= 18 y=403][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[12]" exp="tf.select_no =12" target=*sig01_0030][endif]
[if exp="f.slect_name_[13] != ''"][locate x=322 y=187][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[13]" exp="tf.select_no =13" target=*sig01_0030][endif]
[if exp="f.slect_name_[14] != ''"][locate x=322 y=259][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[14]" exp="tf.select_no =14" target=*sig01_0030][endif]
[if exp="f.slect_name_[15] != ''"][locate x=322 y=331][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[15]" exp="tf.select_no =15" target=*sig01_0030][endif]
[if exp="f.slect_name_[16] != ''"][locate x=322 y=403][button clickse=&sf.sys_se_05 enterse=&sf.sys_se_15 leavese=&sf.sys_se_25 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="&f.slect_name_[16]" exp="tf.select_no =16" target=*sig01_0030][endif]
[endif]

[endnowait]

;■画面更新
[ud time=0]
[s]


;■■■■■□□□□□■■■■■□□□□□■■■■■

*sig01_0030
;■選択

;□選択した、イベントナンバーを取得
[if exp="tf.select_no == 1"][eval exp="f.st99 = f.slect_no_[1] "][endif]
[if exp="tf.select_no == 2"][eval exp="f.st99 = f.slect_no_[2] "][endif]
[if exp="tf.select_no == 3"][eval exp="f.st99 = f.slect_no_[3] "][endif]
[if exp="tf.select_no == 4"][eval exp="f.st99 = f.slect_no_[4] "][endif]
[if exp="tf.select_no == 5"][eval exp="f.st99 = f.slect_no_[5] "][endif]
[if exp="tf.select_no == 6"][eval exp="f.st99 = f.slect_no_[6] "][endif]
[if exp="tf.select_no == 7"][eval exp="f.st99 = f.slect_no_[7] "][endif]
[if exp="tf.select_no == 8"][eval exp="f.st99 = f.slect_no_[8] "][endif]
[if exp="tf.select_no == 9"][eval exp="f.st99 = f.slect_no_[9] "][endif]
[if exp="tf.select_no ==10"][eval exp="f.st99 = f.slect_no_[10]"][endif]
[if exp="tf.select_no ==11"][eval exp="f.st99 = f.slect_no_[11]"][endif]
[if exp="tf.select_no ==12"][eval exp="f.st99 = f.slect_no_[12]"][endif]
[if exp="tf.select_no ==13"][eval exp="f.st99 = f.slect_no_[13]"][endif]
[if exp="tf.select_no ==14"][eval exp="f.st99 = f.slect_no_[14]"][endif]
[if exp="tf.select_no ==15"][eval exp="f.st99 = f.slect_no_[15]"][endif]
[if exp="tf.select_no ==16"][eval exp="f.st99 = f.slect_no_[16]"][endif]


*sig01_0035
;□イベント進行度を加算
[if exp="f.st99 == 'a01'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a01 = 1"][eval exp="f.a01_01 = 99"][endif]
[if exp="f.st99 == 'a02'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a02 = 1"][eval exp="f.a02_01 = 99"][endif]
[if exp="f.st99 == 'a03'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a03 = 1"][eval exp="f.a03_01 = 99"][endif]
[if exp="f.st99 == 'a04'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a04 = 1"][eval exp="f.a04_01 = 99"][endif]
[if exp="f.st99 == 'a05'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a05 = 1"][eval exp="f.a05_01 = 99"][endif]
[if exp="f.st99 == 'a06'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a06 = 1"][eval exp="f.a06_01 = 99"][endif]
[if exp="f.st99 == 'a07'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a07 = 1"][eval exp="f.a07_01 = 99"][endif]

[if exp="f.st99 == 'a08'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a08 = 1"][eval exp="f.a08_01 = 99"][endif]
[if exp="f.st99 == 'a09'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a09 = 1"][eval exp="f.a09_01 = 99"][endif]
[if exp="f.st99 == 'a10'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a10 = 1"][eval exp="f.a10_01 = 99"][endif]
[if exp="f.st99 == 'a11'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a11 = 1"][eval exp="f.a11_01 = 99"][endif]
[if exp="f.st99 == 'a12'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a12 = 1"][eval exp="f.a12_01 = 99"][endif]
[if exp="f.st99 == 'a13'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a13 = 1"][eval exp="f.a13_01 = 99"][endif]
[if exp="f.st99 == 'a14'"][eval exp="f.ch_a_root +=1"][eval exp="f.set_a14 = 1"][eval exp="f.a14_01 = 99"][endif]

[if exp="f.st99 == 'b01'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b01 = 1"][eval exp="f.b01_01 = 99"][endif]
[if exp="f.st99 == 'b02'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b02 = 1"][eval exp="f.b02_01 = 99"][endif]
[if exp="f.st99 == 'b03'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b03 = 1"][eval exp="f.b03_01 = 99"][endif]
[if exp="f.st99 == 'b04'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b04 = 1"][eval exp="f.b04_01 = 99"][endif]
[if exp="f.st99 == 'b05'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b05 = 1"][eval exp="f.b05_01 = 99"][endif]
[if exp="f.st99 == 'b06'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b06 = 1"][eval exp="f.b06_01 = 99"][endif]
[if exp="f.st99 == 'b07'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b07 = 1"][eval exp="f.b07_01 = 99"][endif]

[if exp="f.st99 == 'b08'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b08 = 1"][eval exp="f.b08_01 = 99"][endif]
[if exp="f.st99 == 'b09'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b09 = 1"][eval exp="f.b09_01 = 99"][endif]
[if exp="f.st99 == 'b10'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b10 = 1"][eval exp="f.b10_01 = 99"][endif]
[if exp="f.st99 == 'b11'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b11 = 1"][eval exp="f.b11_01 = 99"][endif]
[if exp="f.st99 == 'b12'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b12 = 1"][eval exp="f.b12_01 = 99"][endif]
[if exp="f.st99 == 'b13'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b13 = 1"][eval exp="f.b13_01 = 99"][endif]
[if exp="f.st99 == 'b14'"][eval exp="f.ch_b_root +=1"][eval exp="f.set_b14 = 1"][eval exp="f.b14_01 = 99"][endif]

[if exp="f.st99 == 'w01'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w01 = 1"][eval exp="f.w01_01 = 99"][endif]
[if exp="f.st99 == 'w02'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w02 = 1"][eval exp="f.w02_01 = 99"][endif]
[if exp="f.st99 == 'w03'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w03 = 1"][eval exp="f.w03_01 = 99"][endif]
[if exp="f.st99 == 'w04'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w04 = 1"][eval exp="f.w04_01 = 99"][endif]
[if exp="f.st99 == 'w05'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w05 = 1"][eval exp="f.w05_01 = 99"][endif]
[if exp="f.st99 == 'w06'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w06 = 1"][eval exp="f.w06_01 = 99"][endif]
[if exp="f.st99 == 'w07'"][eval exp="f.ch_w_root +=1"][eval exp="f.set_w07 = 1"][eval exp="f.w07_01 = 99"][endif]




;■■■■■□□□□□■■■■■□□□□□■■■■■
;□データの保存
;■番組の結果から、使用する過去データの画像名を、変数に格納
;■[eval exp="f.st99_back_ターン数  = 放送した番組タイトル"]　→　縦書きプレートの名前
;■[eval exp="f.st99_back2_ターン数 = 放送した番組タイトル"]　→　横書きプレートの名前
;□選択したイベントファイルのキーワード、（f.st99）

[if exp="f.ch_x_root == 1"][eval exp="f.st99_back_00 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 2"][eval exp="f.st99_back_01 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 3"][eval exp="f.st99_back_02 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 4"][eval exp="f.st99_back_03 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 5"][eval exp="f.st99_back_04 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 6"][eval exp="f.st99_back_05 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 7"][eval exp="f.st99_back_06 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 8"][eval exp="f.st99_back_07 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 9"][eval exp="f.st99_back_08 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==10"][eval exp="f.st99_back_09 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==11"][eval exp="f.st99_back_10 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==12"][eval exp="f.st99_back_11 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==13"][eval exp="f.st99_back_12 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==14"][eval exp="f.st99_back_13 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==15"][eval exp="f.st99_back_14 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==16"][eval exp="f.st99_back_15 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==17"][eval exp="f.st99_back_16 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==18"][eval exp="f.st99_back_17 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==19"][eval exp="f.st99_back_18 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==20"][eval exp="f.st99_back_19 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==21"][eval exp="f.st99_back_20 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==22"][eval exp="f.st99_back_21 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==23"][eval exp="f.st99_back_22 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==24"][eval exp="f.st99_back_23 = 'jyouhou2_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==25"][eval exp="f.st99_back_24 = 'jyouhou2_pl_name_' +f.st99"][endif]

[if exp="f.ch_x_root == 1"][eval exp="f.st99_back2_00 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 2"][eval exp="f.st99_back2_01 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 3"][eval exp="f.st99_back2_02 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 4"][eval exp="f.st99_back2_03 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 5"][eval exp="f.st99_back2_04 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 6"][eval exp="f.st99_back2_05 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 7"][eval exp="f.st99_back2_06 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 8"][eval exp="f.st99_back2_07 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root == 9"][eval exp="f.st99_back2_08 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==10"][eval exp="f.st99_back2_09 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==11"][eval exp="f.st99_back2_10 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==12"][eval exp="f.st99_back2_11 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==13"][eval exp="f.st99_back2_12 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==14"][eval exp="f.st99_back2_13 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==15"][eval exp="f.st99_back2_14 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==16"][eval exp="f.st99_back2_15 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==17"][eval exp="f.st99_back2_16 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==18"][eval exp="f.st99_back2_17 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==19"][eval exp="f.st99_back2_18 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==20"][eval exp="f.st99_back2_19 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==21"][eval exp="f.st99_back2_20 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==22"][eval exp="f.st99_back2_21 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==23"][eval exp="f.st99_back2_22 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==24"][eval exp="f.st99_back2_23 = 'jyouhou3_pl_name_' +f.st99"][endif]
[if exp="f.ch_x_root ==25"][eval exp="f.st99_back2_24 = 'jyouhou3_pl_name_' +f.st99"][endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■選択した放送の放映　開始
*slg00_0050

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]
[setwindow]

;■ＢＧＭ設定
[bgmstop]


;■Ｒメニュー禁止解除
[rclick enabled=true]


;□選択した番組のファイルを放送
[call storage="&f.st99+'.ks'"]

;■Ｒメニュー禁止
[rclick enabled=false]


;■ＢＧＭ設定
[bgmstop]

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]
;■選択した放送の放映　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■ステータス変更＆計算
*sig01_0040



;□今回取得したイベントのデータを取得
[eval exp="f.st00 = f[f.st99 + '_00']"]
[eval exp="f.st01 = f[f.st99 + '_01']"]
[eval exp="f.st02 = f[f.st99 + '_02']"]
[eval exp="f.st03 = f[f.st99 + '_03']"]
[eval exp="f.st04 = f[f.st99 + '_04']"]


;■視聴率の変動について
;　ニーズ×視聴効果＋世論ボーナス＋ランダム値＝視聴率上昇値
;
;ランダム値＝＋0.0～+0.5
;
;■勢力の変動について
;（ニーズ×視聴効果）×視聴率＋世論ボーナス＝勢力変動値
;
;■ただし、一定以上もしくは以下の数値で、変動に補正がかかる。

[if exp="f.A14_win =='王' && f.ch_x_root == 21"][eval exp="f.sijiritu =f.sijiritu /3 *2"][endif]
[if exp="f.B14_win =='王' && f.ch_x_root == 21"][eval exp="f.sijiritu =f.sijiritu /3 *2"][endif]


;上記以外の時



;■計算式
;□勢力
;■渇望　変更時　（（ニーズ×　視聴効果×２　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
;■同情　変更時　（（ニーズ×　視聴効果×２　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
;■怒り　変更時　（（ニーズ×　視聴効果×２　　）×視聴率＋世論ボーナス＋２）×上昇補正＝勢力変動値
;■反発　変更時　（（ニーズ×　視聴効果　　　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
;■変動無し　　　（（ニーズ×　視聴効果　　　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値

;□視聴率
;■渇望　変更時　（（ニーズ×　視聴効果×２　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
;■同情　変更時　（（ニーズ×　視聴効果×２　　）＋ランダム値＋世論ボーナス＋２）×上昇補正＝視聴率上昇値
;■怒り　変更時　（（ニーズ×　視聴効果×２　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
;■反発　変更時　（（ニーズ×　視聴効果　　　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
;■変動無し　　　（（ニーズ×　視聴効果　　　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値

;■計算

;■変動パターンの取得
;■変動無＝０　■反発　＝０
;■渇望　＝１
;■同情　＝２
;■怒り　＝３
[eval exp="f.henndou = 0"]
[if exp="f.kanjyou == '怒り' && f.st04 == '渇望' "][eval exp="f.kanjyou = '渇望'"][eval exp="f.henndou  = 1"][eval exp="tf.point = 1"][endif]
[if exp="f.kanjyou == '渇望' && f.st04 == '同情' "][eval exp="f.kanjyou = '同情'"][eval exp="f.henndou  = 2"][endif]
[if exp="f.kanjyou == '同情' && f.st04 == '怒り' "][eval exp="f.kanjyou = '怒り'"][eval exp="f.henndou  = 3"][endif]
[if exp="f.ch_x_root == 21   && f.st04 == '反発' "][eval exp="f.kanjyou = '反発'"][endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変動無＝０
[if exp="f.henndou == 0"]
;□勢力
;■変動無し　　　（（ニーズ×　視聴効果　　　　　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
[if exp="f.st02 == '凌辱'"][eval exp="f.sijiritu_x = f.need_00 * ((f.st03) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.sijiritu_x = f.need_01 * ((f.st03) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.sijiritu_x = f.need_02 * ((f.st03) /100) * (( f.tv_onare_old) /100)"][endif]

[if exp="f.kanjyou == '渇望'"][eval exp="f.sijiritu_x = f.sijiritu_x + 1"][endif]
[if exp="f.kanjyou == '怒り'"][eval exp="f.sijiritu_x = f.sijiritu_x + 2"][endif]
[if exp="f.kanjyou == '同情'"][eval exp="f.sijiritu_x = f.sijiritu_x - 5"][endif]
[if exp="f.kanjyou == '反発'"][eval exp="f.sijiritu_x = f.sijiritu_x - 5"][endif]

[eval exp="tf.hosei = 1  "]
[if exp="f.sijiritu >= 95 && f.sijiritu <= 100 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.sijiritu >= 90 && f.sijiritu <   95 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.sijiritu >= 80 && f.sijiritu <   90 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.sijiritu >= 60 && f.sijiritu <   80 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.sijiritu >= 40 && f.sijiritu <   60 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.sijiritu >= 10 && f.sijiritu <   40 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.sijiritu >=  5 && f.sijiritu <   10 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.sijiritu >=  0 && f.sijiritu <    5 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.sijiritu = f.sijiritu + (f.sijiritu_x * tf.hosei)"]


;□視聴率
;■変動無し　　　（（ニーズ×　視聴効果　　　　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
[if exp="f.st02 == '凌辱'"][eval exp="f.tv_onare_new = f.need_00 *((f.st03) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.tv_onare_new = f.need_01 *((f.st03) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.tv_onare_new = f.need_02 *((f.st03) /100)"][endif]

[rand min=0 max=5][eval exp="tf.rand =f.rand * 0.1"]
[eval exp="f.tv_onare_new = f.tv_onare_new +tf.rand"]

[if exp="f.kanjyou == '渇望'"][eval exp="f.tv_onare_new = f.tv_onare_new + 1"][endif]
[if exp="f.kanjyou == '反発'"][eval exp="f.tv_onare_new = f.tv_onare_new - 5"][endif]

[eval exp="tf.hosei = 1  "]
[if exp="f.tv_onare_old >= 95 && f.tv_onare_old <= 100 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.tv_onare_old >= 90 && f.tv_onare_old <   95 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.tv_onare_old >= 80 && f.tv_onare_old <   90 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.tv_onare_old >= 60 && f.tv_onare_old <   80 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.tv_onare_old >= 40 && f.tv_onare_old <   60 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.tv_onare_old >= 10 && f.tv_onare_old <   40 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.tv_onare_old >=  5 && f.tv_onare_old <   10 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.tv_onare_old >=  0 && f.tv_onare_old <    5 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.tv_onare_old = f.tv_onare_old + (f.tv_onare_new * tf.hosei)"]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■渇望　＝１
[if exp="f.henndou == 1"]
;□勢力
;■渇望　変更時　（（ニーズ×　視聴効果×２　　　　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
[if exp="f.st02 == '凌辱'"][eval exp="f.sijiritu_x = f.need_00 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.sijiritu_x = f.need_01 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.sijiritu_x = f.need_02 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]

[eval exp="f.sijiritu_x = f.sijiritu_x + 1"]

[eval exp="tf.hosei = 1  "]
[if exp="f.sijiritu >= 95 && f.sijiritu <= 100 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.sijiritu >= 90 && f.sijiritu <   95 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.sijiritu >= 80 && f.sijiritu <   90 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.sijiritu >= 60 && f.sijiritu <   80 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.sijiritu >= 40 && f.sijiritu <   60 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.sijiritu >= 10 && f.sijiritu <   40 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.sijiritu >=  5 && f.sijiritu <   10 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.sijiritu >=  0 && f.sijiritu <    5 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.sijiritu = f.sijiritu + (f.sijiritu_x * tf.hosei)"]


;□視聴率
;■渇望　変更時　（（ニーズ×　視聴効果×２　　　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
[if exp="f.st02 == '凌辱'"][eval exp="f.tv_onare_new = f.need_00 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.tv_onare_new = f.need_01 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.tv_onare_new = f.need_02 *((f.st03 * 2) /100)"][endif]

[rand min=0 max=5][eval exp="tf.rand =f.rand * 0.1"]
[eval exp="f.tv_onare_new = f.tv_onare_new +tf.rand"]

[eval exp="f.tv_onare_new = f.tv_onare_new + 1"]

[eval exp="tf.hosei = 1  "]
[if exp="f.tv_onare_old >= 95 && f.tv_onare_old <= 100 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.tv_onare_old >= 90 && f.tv_onare_old <   95 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.tv_onare_old >= 80 && f.tv_onare_old <   90 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.tv_onare_old >= 60 && f.tv_onare_old <   80 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.tv_onare_old >= 40 && f.tv_onare_old <   60 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.tv_onare_old >= 10 && f.tv_onare_old <   40 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.tv_onare_old >=  5 && f.tv_onare_old <   10 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.tv_onare_old >=  0 && f.tv_onare_old <    5 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.tv_onare_old = f.tv_onare_old + (f.tv_onare_new * tf.hosei)"]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■同情　＝２
[if exp="f.henndou == 2"]
;□勢力
;■同情　変更時　（（ニーズ×　視聴効果×２　）×視聴率＋世論ボーナス　　）×上昇補正＝勢力変動値
[if exp="f.st02 == '凌辱'"][eval exp="f.sijiritu_x = f.need_00 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.sijiritu_x = f.need_01 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.sijiritu_x = f.need_02 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]

[eval exp="f.sijiritu_x = f.sijiritu_x - 5"]

[eval exp="tf.hosei = 1  "]
[if exp="f.sijiritu >= 95 && f.sijiritu <= 100 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.sijiritu >= 90 && f.sijiritu <   95 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.sijiritu >= 80 && f.sijiritu <   90 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.sijiritu >= 60 && f.sijiritu <   80 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.sijiritu >= 40 && f.sijiritu <   60 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.sijiritu >= 10 && f.sijiritu <   40 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.sijiritu >=  5 && f.sijiritu <   10 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.sijiritu >=  0 && f.sijiritu <    5 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.sijiritu = f.sijiritu + (f.sijiritu_x * tf.hosei)"]


;□視聴率
;■同情　変更時　（（ニーズ　視聴効果×２　）＋ランダム値＋世論ボーナス＋２）×上昇補正＝視聴率上昇値
[if exp="f.st02 == '凌辱'"][eval exp="f.tv_onare_new = f.need_00 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.tv_onare_new = f.need_01 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.tv_onare_new = f.need_02 *((f.st03 * 2) /100)"][endif]

[rand min=0 max=5][eval exp="tf.rand =f.rand * 0.1"]
[eval exp="f.tv_onare_new = f.tv_onare_new +tf.rand"]

[eval exp="f.tv_onare_new = f.tv_onare_new + 0 +2"]


[eval exp="tf.hosei = 1  "]
[if exp="f.tv_onare_old >= 95 && f.tv_onare_old <= 100 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.tv_onare_old >= 90 && f.tv_onare_old <   95 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.tv_onare_old >= 80 && f.tv_onare_old <   90 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.tv_onare_old >= 60 && f.tv_onare_old <   80 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.tv_onare_old >= 40 && f.tv_onare_old <   60 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.tv_onare_old >= 10 && f.tv_onare_old <   40 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.tv_onare_old >=  5 && f.tv_onare_old <   10 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.tv_onare_old >=  0 && f.tv_onare_old <    5 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.tv_onare_old = f.tv_onare_old + (f.tv_onare_new * tf.hosei)"]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■怒り　＝３
[if exp="f.henndou == 3"]
;□勢力
;■怒り　変更時　（（ニーズ×　視聴効果×２　）×視聴率＋世論ボーナス＋２）×上昇補正＝勢力変動値
[if exp="f.st02 == '凌辱'"][eval exp="f.sijiritu_x = f.need_00 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.sijiritu_x = f.need_01 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.sijiritu_x = f.need_02 * ((f.st03 * 2) /100) * (( f.tv_onare_old) /100)"][endif]

[eval exp="f.sijiritu_x = f.sijiritu_x + 2 +2"]

[eval exp="tf.hosei = 1  "]
[if exp="f.sijiritu >= 95 && f.sijiritu <= 100 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.sijiritu >= 90 && f.sijiritu <   95 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.sijiritu >= 80 && f.sijiritu <   90 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.sijiritu >= 60 && f.sijiritu <   80 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.sijiritu >= 40 && f.sijiritu <   60 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.sijiritu >= 10 && f.sijiritu <   40 && f.sijiritu_x >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.sijiritu >=  5 && f.sijiritu <   10 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.sijiritu >=  0 && f.sijiritu <    5 && f.sijiritu_x <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.sijiritu = f.sijiritu + (f.sijiritu_x * tf.hosei)"]

;□視聴率
;■怒り　変更時　（（ニーズ×　視聴効果×２　）＋ランダム値＋世論ボーナス　　）×上昇補正＝視聴率上昇値
[if exp="f.st02 == '凌辱'"][eval exp="f.tv_onare_new = f.need_00 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.tv_onare_new = f.need_01 *((f.st03 * 2) /100)"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.tv_onare_new = f.need_02 *((f.st03 * 2) /100)"][endif]

[rand min=0 max=5][eval exp="tf.rand =f.rand * 0.1"]
[eval exp="f.tv_onare_new = f.tv_onare_new +tf.rand"]

[eval exp="tf.hosei = 1  "]
[if exp="f.tv_onare_old >= 95 && f.tv_onare_old <= 100 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.1"][endif]
[if exp="f.tv_onare_old >= 90 && f.tv_onare_old <   95 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.2"][endif]
[if exp="f.tv_onare_old >= 80 && f.tv_onare_old <   90 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.4"][endif]
[if exp="f.tv_onare_old >= 60 && f.tv_onare_old <   80 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.6"][endif]
[if exp="f.tv_onare_old >= 40 && f.tv_onare_old <   60 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 0.8"][endif]
[if exp="f.tv_onare_old >= 10 && f.tv_onare_old <   40 && f.tv_onare_new >= 0"][eval exp="tf.hosei = 1  "][endif]
[if exp="f.tv_onare_old >=  5 && f.tv_onare_old <   10 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.3"][endif]
[if exp="f.tv_onare_old >=  0 && f.tv_onare_old <    5 && f.tv_onare_new <  0"][eval exp="tf.hosei = 0.1"][endif]
[eval exp="f.tv_onare_old = f.tv_onare_old + (f.tv_onare_new * tf.hosei)"]
[endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■今回選んだ番組のニーズのリセット
[if exp="f.st02 == '凌辱'"][eval exp="f.need_00 = -1"][endif]
[if exp="f.st02 == '恥辱'"][eval exp="f.need_01 = -1"][endif]
[if exp="f.st02 == 'バカ'"][eval exp="f.need_02 = -1"][endif]

;□怒り　補正
[if exp="tf.point == 1"][eval exp="tf.point = 0"]
[eval exp="f.need_00 += 2 "][if exp="f.need_00 >= 6 "][eval exp="f.need_00 = 6 "][endif]
[eval exp="f.need_01 += 2 "][if exp="f.need_01 >= 6 "][eval exp="f.need_01 = 6 "][endif]
[eval exp="f.need_02 += 2 "][if exp="f.need_02 >= 6 "][eval exp="f.need_02 = 6 "][endif]
[endif]


[jump target=*exit]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■セーブロード切り替え

;■ロード切り替え
*slg_load
[cm]
[call storage="LoadMenu.ks" target=*loadmenu]
[cm]
[ld storage="cls" layer=1 pos=0]
;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="ss01.ks" target=*start]

;■セーブ切り替え
*slg_save
;■使用レイヤー設定
[current layer=message0 page=back]

;■画像準備
[bg storage="jyouhou_bg"]
[ld storage="cls" layer=1 pos=0]

;■情報表示
[nowait]

;□日付
[eval exp="tf.sy =(f.ch_x_root -1) *23"]
[pimage storage="jyouhou_day" layer=base page=back dx=8 dy=50 sy=&tf.sy sh=23]

;□勢力
[pimage storage="bgff0000" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(f.sijiritu) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=&tf.sw sh=10]

[eval exp="var sijiritu_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.sijiritu *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]

[if exp="tf.put_no != 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=56 ]
[endif]

[if exp="tf.put_no == 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[0]" sw=12]
[endif]


;□視聴率
[eval exp="var tv_onare_no_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.tv_onare_old *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]

[if exp="tf.put_no != 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=103 ]
[endif]
[if exp="tf.put_no == 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[0]" sw=12]
[endif]




;□ニーズ
[eval exp="var need_00_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_01_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_02_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="tf.put_no_00 = f.need_00 +5"]
[eval exp="tf.put_no_01 = f.need_01 +5"]
[eval exp="tf.put_no_02 = f.need_02 +5"]
[eval exp="tf.no_00=tf.put_no_00 %12"]
[eval exp="tf.no_01=tf.put_no_01 %12"]
[eval exp="tf.no_02=tf.put_no_02 %12"]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=504 dy=97 sx="&need_00_set[tf.no_00]" sy= 0 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=537 dy=97 sx="&need_01_set[tf.no_01]" sy=14 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=570 dy=97 sx="&need_02_set[tf.no_02]" sy=28 sw=32 sh=14]

;■感情プレート表示
[if exp="f.kanjyou == '渇望'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=  0 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '怒り'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx= 80 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '不偏'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=160 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '同情'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=240 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '反発'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=320 sy=0 sw=80 sh=30][endif]

;□セーブボタン＆ロードボタン表示
[pimage storage="jyouhou_btn_load"    layer=base page=back dx= 20 dy=164 sw=120]
[pimage storage="jyouhou_btn_save"    layer=base page=back dx=150 dy=164 sw=120]

;□過去データ確認画面へ切り替えボタン
[pimage storage="jyouhou_data"    layer=base page=back dx=490 dy=131 sw=150]

;□選択肢追加状態の切り替えボタン
;[if exp="f.set_select_no >  9 && f.set_page == 1"][pimage storage="jyouhou_btn_page_01" layer=1 page=back dx=423 dy=131 sw=67][endif]
;[if exp="f.set_select_no >  9 && f.set_page == 2"][pimage storage="jyouhou_btn_page_02" layer=1 page=back dx=356 dy=131 sw=67][endif]
[pimage storage="jyouhou_btn_page_01" layer=base page=back dx=356 dy=131 sx=67 sw=67]
[if exp="f.set_select_no > 9 "]
[pimage storage="jyouhou_btn_page_02" layer=base page=back dx=423 dy=131 sx=67 sw=67]
[endif]

;□番組表示
[if exp="f.set_page == 1"]
[if exp="f.slect_name_[1] != ''"][pimage storage="&f.slect_name_[1]" layer=base page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[2] != ''"][pimage storage="&f.slect_name_[2]" layer=base page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[3] != ''"][pimage storage="&f.slect_name_[3]" layer=base page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[4] != ''"][pimage storage="&f.slect_name_[4]" layer=base page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[5] != ''"][pimage storage="&f.slect_name_[5]" layer=base page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[6] != ''"][pimage storage="&f.slect_name_[6]" layer=base page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[7] != ''"][pimage storage="&f.slect_name_[7]" layer=base page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[8] != ''"][pimage storage="&f.slect_name_[8]" layer=base page=back dx=322 dy=403 sw=300][endif]
[endif]

[if exp="f.set_page == 2"]
[if exp="f.slect_name_[9]  != ''"][pimage storage="&f.slect_name_[9]"  layer=base page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[10] != ''"][pimage storage="&f.slect_name_[10]" layer=base page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[11] != ''"][pimage storage="&f.slect_name_[11]" layer=base page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[12] != ''"][pimage storage="&f.slect_name_[12]" layer=base page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[13] != ''"][pimage storage="&f.slect_name_[13]" layer=base page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[14] != ''"][pimage storage="&f.slect_name_[14]" layer=base page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[15] != ''"][pimage storage="&f.slect_name_[15]" layer=base page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[16] != ''"][pimage storage="&f.slect_name_[16]" layer=base page=back dx=322 dy=403 sw=300][endif]
[endif]

[stoptrans]
[ud]


[cm]
[call storage="SaveMenu.ks" target=*savemenu]
[cm]
[ld storage="cls" layer=1 pos=0]
;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="ss01.ks" target=*start]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ページ切り替え　Ｐ１へ
*page_to_p1
*page_to_p2
;■初期表示
[cm]
[ld storage="cls" layer=1 pos=0]


;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="ss01.ks" target=*start]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■過去データへ
*data_output
;■ページ初期化
[eval exp="f.set_page_data = 1"]
[cm]
;■情報表示
[nowait]
[bg storage="jyouhou2_bg_1"]


;□日付
[eval exp="tf.sy =(f.ch_x_root -1) *23"]
[pimage storage="jyouhou_day" layer=base page=back dx=8 dy=50 sy=&tf.sy sh=23]

;□勢力
[pimage storage="bgff0000" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(f.sijiritu) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=&tf.sw sh=10]

[eval exp="var sijiritu_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.sijiritu *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]

[if exp="tf.put_no != 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=56 ]
[endif]
[if exp="tf.put_no == 1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[0]" sw=12]
[endif]

;□視聴率
[eval exp="var tv_onare_no_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.tv_onare_old *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=103 ]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[0]" sw=12]
[endif]

;□ニーズ
[eval exp="var need_00_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_01_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_02_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="tf.put_no_00 = f.need_00 +5"]
[eval exp="tf.put_no_01 = f.need_01 +5"]
[eval exp="tf.put_no_02 = f.need_02 +5"]
[eval exp="tf.no_00=tf.put_no_00 %12"]
[eval exp="tf.no_01=tf.put_no_01 %12"]
[eval exp="tf.no_02=tf.put_no_02 %12"]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=504 dy=97 sx="&need_00_set[tf.no_00]" sy= 0 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=537 dy=97 sx="&need_01_set[tf.no_01]" sy=14 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=570 dy=97 sx="&need_02_set[tf.no_02]" sy=28 sw=32 sh=14]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□放送済み番組タイトル（縦書き）プレート

[if exp="f.set_page_data == 1 || f.set_page_data == 4 "]
[if exp="f.ch_x_root >= 1"][pimage storage="jyouhou2_pl_name_s01" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="&f.st99_back_00" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="&f.st99_back_01" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="&f.st99_back_02" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="&f.st99_back_03" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="&f.st99_back_04" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="&f.st99_back_05" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="&f.st99_back_06" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="&f.st99_back_07" layer=base page=back dx=480 dy=345][endif]
[endif]

[if exp="f.set_page_data == 2 || f.set_page_data == 5 "]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_pl_name_s02" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >=10"][pimage storage="&f.st99_back_08" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >=11"][pimage storage="&f.st99_back_09" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >=12"][pimage storage="&f.st99_back_10" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >=13"][pimage storage="&f.st99_back_11" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >=14"][pimage storage="&f.st99_back_12" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >=15"][pimage storage="&f.st99_back_13" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >=16"][pimage storage="&f.st99_back_14" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >=17"][pimage storage="&f.st99_back_15" layer=base page=back dx=480 dy=345][endif]
[endif]

[if exp="f.set_page_data == 3 || f.set_page_data == 6 "]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_pl_name_s03" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >=18"][pimage storage="&f.st99_back_16" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >=19"][pimage storage="&f.st99_back_17" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >=20"][pimage storage="&f.st99_back_18" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >=21"][pimage storage="&f.st99_back_19" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >=22"][pimage storage="&f.st99_back_20" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >=23"][pimage storage="&f.st99_back_21" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >=24"][pimage storage="&f.st99_back_22" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >=25"][pimage storage="&f.st99_back_23" layer=base page=back dx=480 dy=345][endif]
[endif]




;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□軍支持率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 1"]
[if exp="f.ch_x_root >= 1"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_00))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_01))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_02))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_03))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_04))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_05))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_06))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_07))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="bg0000ff" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_08))"][pimage storage="bgff0000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 2"]
[if exp="f.ch_x_root >= 9"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_08))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=10"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_09))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=11"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_10))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=12"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_11))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=13"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_12))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=14"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_13))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=15"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_14))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=16"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_15))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=17"][pimage storage="bg0000ff" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_16))"][pimage storage="bgff0000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 3"]
[if exp="f.ch_x_root >=17"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_16))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=18"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_17))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=19"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_18))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=20"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_19))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=21"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_20))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=22"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_21))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=23"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_22))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=24"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_23))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[eval exp="var sijiritu_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

;□軍支持率データの表示　ＰＡＧＥ０１


[if exp="f.set_page_data == 1"]
[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.sijiritu_back_00 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.sijiritu_back_01 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.sijiritu_back_02 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.sijiritu_back_03 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.sijiritu_back_04 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.sijiritu_back_05 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.sijiritu_back_06 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.sijiritu_back_07 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.sijiritu_back_00 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.sijiritu_back_01 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.sijiritu_back_02 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.sijiritu_back_03 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.sijiritu_back_04 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.sijiritu_back_05 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.sijiritu_back_06 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.sijiritu_back_07 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]

;□軍支持率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 2"]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.sijiritu_back_09 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.sijiritu_back_10 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.sijiritu_back_11 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.sijiritu_back_12 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.sijiritu_back_13 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.sijiritu_back_14 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.sijiritu_back_15 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.sijiritu_back_09 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.sijiritu_back_10 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.sijiritu_back_11 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.sijiritu_back_12 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.sijiritu_back_13 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.sijiritu_back_14 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.sijiritu_back_15 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 3"]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.sijiritu_back_17 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.sijiritu_back_18 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.sijiritu_back_19 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.sijiritu_back_20 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.sijiritu_back_21 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.sijiritu_back_22 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.sijiritu_back_23 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]

[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.sijiritu_back_17 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.sijiritu_back_18 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.sijiritu_back_19 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.sijiritu_back_20 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.sijiritu_back_21 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.sijiritu_back_22 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.sijiritu_back_23 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 4"]
[if exp="f.ch_x_root >= 1"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_00))"][pimage storage="bg000000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_01))"][pimage storage="bg000000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_02))"][pimage storage="bg000000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_03))"][pimage storage="bg000000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_04))"][pimage storage="bg000000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_05))"][pimage storage="bg000000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_06))"][pimage storage="bg000000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_07))"][pimage storage="bg000000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="bg00ff00" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_08))"][pimage storage="bg000000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 5"]
[if exp="f.ch_x_root >= 9"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_08))"][pimage storage="bg000000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=10"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_09))"][pimage storage="bg000000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=11"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_10))"][pimage storage="bg000000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=12"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_11))"][pimage storage="bg000000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=13"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_12))"][pimage storage="bg000000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=14"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_13))"][pimage storage="bg000000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=15"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_14))"][pimage storage="bg000000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=16"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_15))"][pimage storage="bg000000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=17"][pimage storage="bg00ff00" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_16))"][pimage storage="bg000000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 6"]
[if exp="f.ch_x_root >=17"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_16))"][pimage storage="bg000000" layer=base page=back dx=144 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=18"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_17))"][pimage storage="bg000000" layer=base page=back dx=188 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=19"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_18))"][pimage storage="bg000000" layer=base page=back dx=232 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=20"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_19))"][pimage storage="bg000000" layer=base page=back dx=276 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=21"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_20))"][pimage storage="bg000000" layer=base page=back dx=320 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=22"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_21))"][pimage storage="bg000000" layer=base page=back dx=364 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=23"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_22))"][pimage storage="bg000000" layer=base page=back dx=408 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=24"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_23))"][pimage storage="bg000000" layer=base page=back dx=452 dy=235  sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[eval exp="var tv_onare_old_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

;□視聴率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 4"]
[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.tv_onare_old_back_00 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.tv_onare_old_back_01 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.tv_onare_old_back_02 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.tv_onare_old_back_03 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.tv_onare_old_back_04 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.tv_onare_old_back_05 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.tv_onare_old_back_06 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.tv_onare_old_back_07 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.tv_onare_old_back_00 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.tv_onare_old_back_01 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.tv_onare_old_back_02 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.tv_onare_old_back_03 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.tv_onare_old_back_04 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.tv_onare_old_back_05 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.tv_onare_old_back_06 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.tv_onare_old_back_07 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]


;□視聴率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 5"]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.tv_onare_old_back_09 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.tv_onare_old_back_10 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.tv_onare_old_back_11 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.tv_onare_old_back_12 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.tv_onare_old_back_13 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.tv_onare_old_back_14 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.tv_onare_old_back_15 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.tv_onare_old_back_09 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.tv_onare_old_back_10 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.tv_onare_old_back_11 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.tv_onare_old_back_12 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.tv_onare_old_back_13 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.tv_onare_old_back_14 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.tv_onare_old_back_15 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 6"]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.tv_onare_old_back_17 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.tv_onare_old_back_18 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.tv_onare_old_back_19 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.tv_onare_old_back_20 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.tv_onare_old_back_21 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.tv_onare_old_back_22 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.tv_onare_old_back_23 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]

[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.tv_onare_old_back_17 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.tv_onare_old_back_18 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.tv_onare_old_back_19 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.tv_onare_old_back_20 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.tv_onare_old_back_21 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.tv_onare_old_back_22 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.tv_onare_old_back_23 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]



;□番組選択画面へ切り替えボタン
[pimage storage="jyouhou2_select"    layer=base page=back dx=490 dy=131 sw=150]

[if exp="f.set_page_data == 1 || f.set_page_data == 2 || f.set_page_data == 3 "]
[pimage storage="jyouhou2_bt_page_1"   layer=base page=back dx=301 dy=165 sx=316 sw=316]
[pimage storage="jyouhou2_btn_page_01" layer=base page=back dx=289 dy=131 sx= 67 sw= 67]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_btn_page_02" layer=base page=back dx=356 dy=131 sx=67 sw=67][endif]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_btn_page_03" layer=base page=back dx=423 dy=131 sx=67 sw=67][endif]
[endif]

[if exp="f.set_page_data == 4 || f.set_page_data == 5 || f.set_page_data == 6 "]
[pimage storage="jyouhou2_bt_page_2"   layer=base page=back dx=301 dy=165 sx=316 sw=316]
[pimage storage="jyouhou2_btn_page_04" layer=base page=back dx=289 dy=131 sx= 67 sw= 67]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_btn_page_05" layer=base page=back dx=356 dy=131 sx=67 sw=67][endif]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_btn_page_06" layer=base page=back dx=423 dy=131 sx=67 sw=67][endif]
[endif]

[endnowait]
[ud time=500]


;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="ss02.ks" target=*ss02]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■処理継続
*exit
;■初期表示
[cm]
[nowait]
[bg storage="black"]
[endnowait]
[ud time=500]

;□スキップモード＿禁止解除
[nextskip enabled=true]
;■Ｒメニュー禁止解除
[rclick enabled=true]
;□回想出力＿禁止解除
[history output=true]

[setwindow]
[jump storage="ss00.ks" target=*ss00_jyouhou_return]


