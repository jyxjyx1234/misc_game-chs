;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/29　更新者　白土
*ss03

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■初期設定

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

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
[eval exp="f.set_page_data = 1"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■過去データ表示画面
*start|過去データ表示画面

;■ＢＧＭ設定
[bgmplay storage="bgm10"]

;■使用レイヤー設定
[current layer=message0 page=back]
[er]

;■画像準備
[bg storage="jyouhou3_bg"]

;■情報表示
[nowait]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□データの補正値一覧表示

[if exp="f.kanjyou == '渇望'                  "][pimage storage="jyouhou3_pl_x_katubo"    layer=base page=back dx=420 dy=110 sx=0 sy= 0 sw=160 sh=89][endif]
[if exp="f.kanjyou == '同情'                  "][pimage storage="jyouhou3_pl_x_doujou"   layer=base page=back dx=420 dy=110 sx=0 sy= 0 sw=160 sh=89][endif]
[if exp="f.kanjyou == '怒り'                  "][pimage storage="jyouhou3_pl_x_ikari"     layer=base page=back dx=420 dy=110 sx=0 sy= 0 sw=160 sh=89][endif]
[if exp="f.kanjyou == '反発'                  "][pimage storage="jyouhou3_pl_x_hannpatu"  layer=base page=back dx=420 dy=110 sx=0 sy= 0 sw=160 sh=89][endif]

[if exp="f.kanjyou == '渇望' && f.henndou != 0"][pimage storage="jyouhou3_pl_xx_katubo"    layer=base page=back dx=420 dy=160 sx=0 sy=50 sw=160 sh=39][endif]
[if exp="f.kanjyou == '同情' && f.henndou != 0"][pimage storage="jyouhou3_pl_xx_doujou"   layer=base page=back dx=420 dy=160 sx=0 sy=50 sw=160 sh=39][endif]
[if exp="f.kanjyou == '怒り' && f.henndou != 0"][pimage storage="jyouhou3_pl_xx_ikari"     layer=base page=back dx=420 dy=160 sx=0 sy=50 sw=160 sh=39][endif]
[if exp="f.kanjyou == '反発' &&f.ch_x_root==21"][pimage storage="jyouhou3_pl_xx_hannpatu"  layer=base page=back dx=420 dy=160 sx=0 sy=50 sw=160 sh=39][endif]


;■今回選んだ番組タイトルが出る dx=174 dy=109

[if exp="f.ch_x_root == 1"][pimage storage="&f.st99_back2_00" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 2"][pimage storage="&f.st99_back2_01" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 3"][pimage storage="&f.st99_back2_02" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 4"][pimage storage="&f.st99_back2_03" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 5"][pimage storage="&f.st99_back2_04" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 6"][pimage storage="&f.st99_back2_05" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 7"][pimage storage="&f.st99_back2_06" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 8"][pimage storage="&f.st99_back2_07" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root == 9"][pimage storage="&f.st99_back2_08" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==10"][pimage storage="&f.st99_back2_09" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==11"][pimage storage="&f.st99_back2_10" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==12"][pimage storage="&f.st99_back2_11" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==13"][pimage storage="&f.st99_back2_12" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==14"][pimage storage="&f.st99_back2_13" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==15"][pimage storage="&f.st99_back2_14" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==16"][pimage storage="&f.st99_back2_15" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==17"][pimage storage="&f.st99_back2_16" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==18"][pimage storage="&f.st99_back2_17" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==19"][pimage storage="&f.st99_back2_18" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==20"][pimage storage="&f.st99_back2_19" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==21"][pimage storage="&f.st99_back2_20" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==22"][pimage storage="&f.st99_back2_21" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==23"][pimage storage="&f.st99_back2_22" layer=base page=back dx=80 dy=120][endif]
[if exp="f.ch_x_root ==24"][pimage storage="&f.st99_back2_23" layer=base page=back dx=80 dy=120][endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■軍閥支持率　過去データ　ゲージが出る
;■ＴＶ視聴率　過去データ　ゲージが出る
;■軍閥支持率　過去データ　パーセントが出る
;■ＴＶ視聴率　過去データ　パーセントが出る

;□軍支持率データの表示　過去データセット
[if exp="f.ch_x_root == 1"][eval exp="tf.sijiritu_back =f.sijiritu_back_00"][endif]
[if exp="f.ch_x_root == 2"][eval exp="tf.sijiritu_back =f.sijiritu_back_01"][endif]
[if exp="f.ch_x_root == 3"][eval exp="tf.sijiritu_back =f.sijiritu_back_02"][endif]
[if exp="f.ch_x_root == 4"][eval exp="tf.sijiritu_back =f.sijiritu_back_03"][endif]
[if exp="f.ch_x_root == 5"][eval exp="tf.sijiritu_back =f.sijiritu_back_04"][endif]
[if exp="f.ch_x_root == 6"][eval exp="tf.sijiritu_back =f.sijiritu_back_05"][endif]
[if exp="f.ch_x_root == 7"][eval exp="tf.sijiritu_back =f.sijiritu_back_06"][endif]
[if exp="f.ch_x_root == 8"][eval exp="tf.sijiritu_back =f.sijiritu_back_07"][endif]
[if exp="f.ch_x_root == 9"][eval exp="tf.sijiritu_back =f.sijiritu_back_08"][endif]
[if exp="f.ch_x_root ==10"][eval exp="tf.sijiritu_back =f.sijiritu_back_09"][endif]
[if exp="f.ch_x_root ==11"][eval exp="tf.sijiritu_back =f.sijiritu_back_10"][endif]
[if exp="f.ch_x_root ==12"][eval exp="tf.sijiritu_back =f.sijiritu_back_11"][endif]
[if exp="f.ch_x_root ==13"][eval exp="tf.sijiritu_back =f.sijiritu_back_12"][endif]
[if exp="f.ch_x_root ==14"][eval exp="tf.sijiritu_back =f.sijiritu_back_13"][endif]
[if exp="f.ch_x_root ==15"][eval exp="tf.sijiritu_back =f.sijiritu_back_14"][endif]
[if exp="f.ch_x_root ==16"][eval exp="tf.sijiritu_back =f.sijiritu_back_15"][endif]
[if exp="f.ch_x_root ==17"][eval exp="tf.sijiritu_back =f.sijiritu_back_16"][endif]
[if exp="f.ch_x_root ==18"][eval exp="tf.sijiritu_back =f.sijiritu_back_17"][endif]
[if exp="f.ch_x_root ==19"][eval exp="tf.sijiritu_back =f.sijiritu_back_18"][endif]
[if exp="f.ch_x_root ==20"][eval exp="tf.sijiritu_back =f.sijiritu_back_19"][endif]
[if exp="f.ch_x_root ==21"][eval exp="tf.sijiritu_back =f.sijiritu_back_20"][endif]
[if exp="f.ch_x_root ==22"][eval exp="tf.sijiritu_back =f.sijiritu_back_21"][endif]
[if exp="f.ch_x_root ==23"][eval exp="tf.sijiritu_back =f.sijiritu_back_22"][endif]
[if exp="f.ch_x_root ==24"][eval exp="tf.sijiritu_back =f.sijiritu_back_23"][endif]
[if exp="f.ch_x_root ==25"][eval exp="tf.sijiritu_back =f.sijiritu_back_24"][endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　過去データセット
[if exp="f.ch_x_root == 1"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_00"][endif]
[if exp="f.ch_x_root == 2"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_01"][endif]
[if exp="f.ch_x_root == 3"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_02"][endif]
[if exp="f.ch_x_root == 4"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_03"][endif]
[if exp="f.ch_x_root == 5"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_04"][endif]
[if exp="f.ch_x_root == 6"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_05"][endif]
[if exp="f.ch_x_root == 7"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_06"][endif]
[if exp="f.ch_x_root == 8"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_07"][endif]
[if exp="f.ch_x_root == 9"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_08"][endif]
[if exp="f.ch_x_root ==10"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_09"][endif]
[if exp="f.ch_x_root ==11"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_10"][endif]
[if exp="f.ch_x_root ==12"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_11"][endif]
[if exp="f.ch_x_root ==13"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_12"][endif]
[if exp="f.ch_x_root ==14"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_13"][endif]
[if exp="f.ch_x_root ==15"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_14"][endif]
[if exp="f.ch_x_root ==16"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_15"][endif]
[if exp="f.ch_x_root ==17"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_16"][endif]
[if exp="f.ch_x_root ==18"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_17"][endif]
[if exp="f.ch_x_root ==19"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_18"][endif]
[if exp="f.ch_x_root ==20"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_19"][endif]
[if exp="f.ch_x_root ==21"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_20"][endif]
[if exp="f.ch_x_root ==22"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_21"][endif]
[if exp="f.ch_x_root ==23"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_22"][endif]
[if exp="f.ch_x_root ==24"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_23"][endif]
[if exp="f.ch_x_root ==25"][eval exp="tf.tv_onare_old_back =f.tv_onare_old_back_24"][endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□軍支持率データの表示　パーセント表示
[eval exp="var sijiritu_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.sijiritu_back *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=236]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[0]" sw=12]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　パーセント表示
[eval exp="var tv_onare_old_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.tv_onare_old_back *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=295]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[0]" sw=12]
[endif]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■軍閥支持率　現在データ　パーセントが出る
;■ＴＶ視聴率　現在データ　パーセントが出る

;□軍支持率データの表示　現在データセット
[if exp="f.ch_x_root == 1"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_00"][endif]
[if exp="f.ch_x_root == 2"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_01"][endif]
[if exp="f.ch_x_root == 3"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_02"][endif]
[if exp="f.ch_x_root == 4"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_03"][endif]
[if exp="f.ch_x_root == 5"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_04"][endif]
[if exp="f.ch_x_root == 6"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_05"][endif]
[if exp="f.ch_x_root == 7"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_06"][endif]
[if exp="f.ch_x_root == 8"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_07"][endif]
[if exp="f.ch_x_root == 9"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_08"][endif]
[if exp="f.ch_x_root ==10"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_09"][endif]
[if exp="f.ch_x_root ==11"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_10"][endif]
[if exp="f.ch_x_root ==12"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_11"][endif]
[if exp="f.ch_x_root ==13"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_12"][endif]
[if exp="f.ch_x_root ==14"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_13"][endif]
[if exp="f.ch_x_root ==15"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_14"][endif]
[if exp="f.ch_x_root ==16"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_15"][endif]
[if exp="f.ch_x_root ==17"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_16"][endif]
[if exp="f.ch_x_root ==18"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_17"][endif]
[if exp="f.ch_x_root ==19"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_18"][endif]
[if exp="f.ch_x_root ==20"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_19"][endif]
[if exp="f.ch_x_root ==21"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_20"][endif]
[if exp="f.ch_x_root ==22"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_21"][endif]
[if exp="f.ch_x_root ==23"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_22"][endif]
[if exp="f.ch_x_root ==24"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_23"][endif]
[if exp="f.ch_x_root ==25"][eval exp="tf.sijiritu_back2 =f.sijiritu_back2_24"][endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　現在データセット
[if exp="f.ch_x_root == 1"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_00"][endif]
[if exp="f.ch_x_root == 2"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_01"][endif]
[if exp="f.ch_x_root == 3"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_02"][endif]
[if exp="f.ch_x_root == 4"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_03"][endif]
[if exp="f.ch_x_root == 5"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_04"][endif]
[if exp="f.ch_x_root == 6"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_05"][endif]
[if exp="f.ch_x_root == 7"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_06"][endif]
[if exp="f.ch_x_root == 8"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_07"][endif]
[if exp="f.ch_x_root == 9"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_08"][endif]
[if exp="f.ch_x_root ==10"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_09"][endif]
[if exp="f.ch_x_root ==11"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_10"][endif]
[if exp="f.ch_x_root ==12"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_11"][endif]
[if exp="f.ch_x_root ==13"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_12"][endif]
[if exp="f.ch_x_root ==14"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_13"][endif]
[if exp="f.ch_x_root ==15"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_14"][endif]
[if exp="f.ch_x_root ==16"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_15"][endif]
[if exp="f.ch_x_root ==17"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_16"][endif]
[if exp="f.ch_x_root ==18"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_17"][endif]
[if exp="f.ch_x_root ==19"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_18"][endif]
[if exp="f.ch_x_root ==20"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_19"][endif]
[if exp="f.ch_x_root ==21"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_20"][endif]
[if exp="f.ch_x_root ==22"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_21"][endif]
[if exp="f.ch_x_root ==23"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_22"][endif]
[if exp="f.ch_x_root ==24"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_23"][endif]
[if exp="f.ch_x_root ==25"][eval exp="tf.tv_onare_old_back2 =f.tv_onare_old_back2_24"][endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□軍支持率データの表示　グラフ表示
;□ベース（赤
[if exp="tf.sijiritu_back2 >= 100"][eval exp="tf.sijiritu_back2 = 100"][endif]
[if exp="tf.sijiritu_back2 <=   0"][eval exp="tf.sijiritu_back2 =   0"][endif]
[if exp="tf.sijiritu_back >= 100"][eval exp="tf.sijiritu_back = 100"][endif]
[if exp="tf.sijiritu_back <=   0"][eval exp="tf.sijiritu_back =   0"][endif]

[pimage storage="bgff0000" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=200 sh=10]

[eval exp="tf.sw =((int)(tf.sijiritu_back2 ) *2)"]
[pimage storage="bgff0000x" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.sijiritu_back ) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]

[if exp="tf.sijiritu_back >= tf.sijiritu_back2"]
[eval exp="tf.sw =((int)(tf.sijiritu_back ) *2)"]
[pimage storage="bg0000ffx" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.sijiritu_back2 ) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　グラフ表示
[pimage storage="bgff0000" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=200 sh=10]

[if exp="tf.tv_onare_old_back2 >= 100"][eval exp="tf.tv_onare_old_back2 = 100"][endif]
[if exp="tf.tv_onare_old_back2 <=   0"][eval exp="tf.tv_onare_old_back2 =   0"][endif]
[if exp="tf.tv_onare_old_back >= 100"][eval exp="tf.tv_onare_old_back = 100"][endif]
[if exp="tf.tv_onare_old_back <=   0"][eval exp="tf.tv_onare_old_back =   0"][endif]

[eval exp="tf.sw =((int)(tf.tv_onare_old_back2 ) *2)"]
[pimage storage="bgff0000x" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back ) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]

[if exp="tf.tv_onare_old_back >= tf.tv_onare_old_back2"]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back ) *2)"]
[pimage storage="bg0000ffx" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back2 ) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[endif]



;■計算開始ボタン配置
[pimage storage="jyouhou3_btn_keisan"    layer=base page=back dx=166 dy=362 sw=316]
[er]
[locate x=166 y=362][button clickse=&sf.sys_se_08 enterse=&sf.sys_se_18 leavese=&sf.sys_se_28 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_keisan" target=*ss03_keisan]

[endnowait]

;■画面更新
[stoptrans]
[ud time=500]
[s]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■データ集計開始
*ss03_keisan

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■グラフ変動値設定

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■軍閥支持率　現在データ確認
;□　if 目標値 == 現在値 then 増加値 = 0
;□　if 目標値 >  現在値 then 増加値 = 1
;□　if 目標値  < 現在値 then 増加値 =-1
[eval exp="tf.sijiritu_dx_hosei = 10"]

[if exp="tf.sijiritu_back2 == tf.sijiritu_back"][eval exp="tf.sijiritu_dx =  0"][jump target=*ss03_01_1][endif]
[if exp="tf.sijiritu_back2 >  tf.sijiritu_back"][eval exp="tf.sijiritu_dx =  1"][jump target=*ss03_01_1][endif]
[if exp="tf.sijiritu_back2 <  tf.sijiritu_back"][eval exp="tf.sijiritu_dx = -1"][jump target=*ss03_01_1][endif]
[s]
*ss03_01_1
;□データバックアップ
[eval exp="tf.sijiritu_back_02     = tf.sijiritu_back  *10"]
[eval exp="tf.sijiritu_back_03     = tf.sijiritu_back2 *10"]

[if exp="tf.sijiritu_back_02 >= 1000"][eval exp="tf.sijiritu_back_02 = 1000"][endif]
[if exp="tf.sijiritu_back_02 <=    0"][eval exp="tf.sijiritu_back_02 =    0"][endif]
[if exp="tf.sijiritu_back_03 >= 1000"][eval exp="tf.sijiritu_back_03 = 1000"][endif]
[if exp="tf.sijiritu_back_03 <=    0"][eval exp="tf.sijiritu_back_03 =    0"][endif]

*ss03_01_2
[nowait]
;□tf.sijiritu_back_03　目標値
;□tf.sijiritu_back_02　現在値
;□tf.sijiritu_dx 　　　増減値
;□tf.sijiritu_dx_hosei 増減値

;□変動値加算
[if   exp="tf.sijiritu_dx_hosei == 10"]
[eval exp="tf.sijiritu_back_02 = tf.sijiritu_back_02 + (tf.sijiritu_dx * tf.sijiritu_dx_hosei)"]
[if exp="tf.sijiritu_back_02 <= tf.sijiritu_back_03 && tf.sijiritu_dx == -1"][eval exp="tf.sijiritu_dx_hosei = 1"][endif]
[if exp="tf.sijiritu_back_02 >= tf.sijiritu_back_03 && tf.sijiritu_dx ==  1"][eval exp="tf.sijiritu_dx_hosei = 1"][endif]
[if exp="                                              tf.sijiritu_dx ==  0"][jump target=*ss03_01_end][endif]
;□脱出処理
[endif]

;□変動値加算
[if   exp="tf.sijiritu_dx_hosei == 1"]
[eval exp="tf.sijiritu_back_02 = tf.sijiritu_back_02 + (tf.sijiritu_dx * tf.sijiritu_dx_hosei)"]
;□脱出処理
[if exp="tf.sijiritu_back_02 <= tf.sijiritu_back_03 && tf.sijiritu_dx == -1"][jump target=*ss03_01_end][endif]
[if exp="tf.sijiritu_back_02 >= tf.sijiritu_back_03 && tf.sijiritu_dx ==  1"][jump target=*ss03_01_end][endif]
[if exp="                                              tf.sijiritu_dx ==  0"][jump target=*ss03_01_end][endif]
[endif]

;□軍支持率データの表示　グラフ表示
[pimage storage="bgff0000" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=200 sh=10]

[eval exp="tf.sw =((int)(tf.sijiritu_back2    ) *2    )"][pimage storage="bgff0000x" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.sijiritu_back_02  ) *2 /10)"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]

[if exp="tf.sijiritu_back >= tf.sijiritu_back2"]
[eval exp="tf.sw =((int)(tf.sijiritu_back_02  ) *2 /10)"][pimage storage="bg0000ffx" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.sijiritu_back2    ) *2    )"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]
[endif]

;□軍支持率データの表示　パーセント表示
[pimage storage="jyouhou3_bg" layer=base page=back dx=153 dy=219 sx=152 sy=278 sw=40 sh=25 ]
[eval exp="var sijiritu_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.sijiritu_back_02)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=236]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[0]" sw=12]
[endif]

;■計算開始ボタン配置　再度打鍵したら計算をスキップ
[pimage storage="jyouhou3_btn_keisan"    layer=base page=back dx=166 dy=362 sw=316]
[er]
[locate x=166 y=362][button clickse=&sf.sys_se_08 enterse=&sf.sys_se_18 leavese=&sf.sys_se_28 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_keisan" target=*ss03_01_end]

[endnowait]
;●ＳＥ　メーター増減
[seplay storage=se29]
[stoptrans]
[ud time=1]

[jump target=*ss03_01_2]

*ss03_01_end
[locate x=166 y=362][button clickse=&sf.sys_se_08 enterse=&sf.sys_se_18 leavese=&sf.sys_se_28 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_keisan"]
;■■■■■□□□□□■■■■■□□□□□■■■■■
;□集計終了
;●ＳＥ　計算終了
[seplay storage=se30]

[nowait]
;□軍支持率データの表示　グラフ表示
[pimage storage="bgff0000" layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(tf.sijiritu_back_03  ) *2 /10)"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=226 sx=0 sy=0 sw=&tf.sw sh=10]

;□軍支持率データの表示　パーセント表示
[pimage storage="jyouhou3_bg" layer=base page=back dx=153 dy=219 sx=152 sy=278 sw=40 sh=25 ]
[eval exp="var sijiritu_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.sijiritu_back_03)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=236]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=219 sx="&sijiritu_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=219 sx="&sijiritu_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=219 sx="&sijiritu_back_set[0]" sw=12]
[endif]

[endnowait]
[stoptrans]
[ud time=1]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ＴＶ視聴率　現在データ確認
;□　if 目標値 == 現在値 then 増加値 = 0
;□　if 目標値 >  現在値 then 増加値 = 1
;□　if 目標値  < 現在値 then 増加値 =-1
[eval exp="tf.tv_onare_old_dx_hosei =  10"]
[if exp="tf.tv_onare_old_back2 == tf.tv_onare_old_back"][eval exp="tf.tv_onare_old_dx =  0"][jump target=*ss03_02_1][endif]
[if exp="tf.tv_onare_old_back2 >  tf.tv_onare_old_back"][eval exp="tf.tv_onare_old_dx =  1"][jump target=*ss03_02_1][endif]
[if exp="tf.tv_onare_old_back2 <  tf.tv_onare_old_back"][eval exp="tf.tv_onare_old_dx = -1"][jump target=*ss03_02_1][endif]
[s]

*ss03_02_1
;□データバックアップ
[eval exp="tf.tv_onare_old_back_02 = tf.tv_onare_old_back  *10"]
[eval exp="tf.tv_onare_old_back_03 = tf.tv_onare_old_back2 *10"]

[if exp="tf.tv_onare_old_back_02 >= 1000"][eval exp="tf.tv_onare_old_back_02 = 1000"][endif]
[if exp="tf.tv_onare_old_back_02 <=    0"][eval exp="tf.tv_onare_old_back_02 =    0"][endif]
[if exp="tf.tv_onare_old_back_03 >= 1000"][eval exp="tf.tv_onare_old_back_03 = 1000"][endif]
[if exp="tf.tv_onare_old_back_03 <=    0"][eval exp="tf.tv_onare_old_back_03 =    0"][endif]

*ss03_02_2
[nowait]
;□tf.tv_onare_old_back_03　目標値
;□tf.tv_onare_old_back_02　現在値
;□tf.tv_onare_old_dx 　　　増減値
;□tf.tv_onare_old_dx_hosei 増減値

;□変動値加算
[if   exp="tf.tv_onare_old_dx_hosei == 10"]
[eval exp="tf.tv_onare_old_back_02 = tf.tv_onare_old_back_02 + (tf.tv_onare_old_dx * tf.tv_onare_old_dx_hosei)"]
[if exp="tf.tv_onare_old_back_02 <= tf.tv_onare_old_back_03 && tf.tv_onare_old_dx == -1"][eval exp="tf.tv_onare_old_dx_hosei = 1"][endif]
[if exp="tf.tv_onare_old_back_02 >= tf.tv_onare_old_back_03 && tf.tv_onare_old_dx ==  1"][eval exp="tf.tv_onare_old_dx_hosei = 1"][endif]
[if exp="                                                      tf.tv_onare_old_dx ==  0"][jump target=*ss03_02_end][endif]
;□脱出処理
[endif]

;□変動値加算
[if   exp="tf.tv_onare_old_dx_hosei == 1"]
[eval exp="tf.tv_onare_old_back_02 = tf.tv_onare_old_back_02 + (tf.tv_onare_old_dx * tf.tv_onare_old_dx_hosei)"]
;□脱出処理
[if exp="tf.tv_onare_old_back_02 <= tf.tv_onare_old_back_03 && tf.tv_onare_old_dx == -1"][jump target=*ss03_02_end][endif]
[if exp="tf.tv_onare_old_back_02 >= tf.tv_onare_old_back_03 && tf.tv_onare_old_dx ==  1"][jump target=*ss03_02_end][endif]
[if exp="                                                      tf.tv_onare_old_dx ==  0"][jump target=*ss03_02_end][endif]
[endif]

;□視聴率データの表示　グラフ表示
[pimage storage="bgff0000" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=200 sh=10]

[eval exp="tf.sw =((int)(tf.tv_onare_old_back2 )   *2    )"][pimage storage="bgff0000x" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back_02 ) *2 /10)"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]

[if exp="tf.tv_onare_old_back >= tf.tv_onare_old_back2"]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back_02 ) *2 /10)"][pimage storage="bg0000ffx" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back2 )   *2    )"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]
[endif]

;□視聴率データの表示　パーセント表示
[pimage storage="jyouhou3_bg" layer=base page=back dx=153 dy=278 sx=152 sy=278 sw=40 sh=25 ]

[eval exp="var tv_onare_old_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.tv_onare_old_back_02)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=295]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[0]" sw=12]
[endif]

;■計算開始ボタン配置　再度打鍵したら計算をスキップ
[pimage storage="jyouhou3_btn_keisan"    layer=base page=back dx=166 dy=362 sw=316]
[er]
[locate x=166 y=362][button clickse=&sf.sys_se_08 enterse=&sf.sys_se_18 leavese=&sf.sys_se_28 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_keisan" target=*ss03_02_end]

[endnowait]
;●ＳＥ　メーター増減
[seplay storage=se29]
[stoptrans]
[ud time=1]

[jump target=*ss03_02_2]

*ss03_02_end
[locate x=166 y=362][button clickse=&sf.sys_se_08 enterse=&sf.sys_se_18 leavese=&sf.sys_se_28 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_keisan"]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□集計終了
;●ＳＥ　計算終了
[seplay storage=se30]

[nowait]
;□視聴率データの表示　グラフ表示

[pimage storage="bgff0000" layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(tf.tv_onare_old_back_03 ) *2 /10)"][pimage storage="bg0000ff"  layer=base page=back dx=254 dy=285 sx=0 sy=0 sw=&tf.sw sh=10]

;□視聴率データの表示　パーセント表示
[pimage storage="jyouhou3_bg" layer=base page=back dx=153 dy=278 sx=152 sy=278 sw=40 sh=25 ]

[eval exp="var tv_onare_old_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

[eval exp="tf.put_no = (tf.tv_onare_old_back_03)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=175 dy=295]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100 %10"]
[eval exp="tf.no_0010=tf.put_no /10 %10"]
[eval exp="tf.no_0001=tf.put_no %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=278 sx="&tv_onare_old_back_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=166 dy=278 sx="&tv_onare_old_back_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=179 dy=278 sx="&tv_onare_old_back_set[0]" sw=12]
[endif]

[endnowait]
[stoptrans]
[ud time=1]
;□スキップ強制開始
[eval exp="kag.skipToStop()"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□







;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■集計終了→ＮＥＸＴボタン表示

[nowait]

[pimage storage="jyouhou3_btn_next"    layer=base page=back dx=166 dy=362 sw=316]
[er]
[locate x=166 y=362][button clickse=&sf.sys_se_09 enterse=&sf.sys_se_19 leavese=&sf.sys_se_29 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou3_btn_next" target=*exit]

[endnowait]
[stoptrans]
[ud time=500]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■処理継続
*exit
;■初期表示
[cm]
[nowait]
[bg storage="black"]
[endnowait]
[stoptrans]
[ud time=500]


;■Ｒメニュー禁止解除
[rclick enabled=true]
;□回想出力＿禁止解除
[history output=true]

[setwindow]
[return]

