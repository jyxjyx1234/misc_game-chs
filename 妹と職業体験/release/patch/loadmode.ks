;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■LastUpdate since2006.11.07／かおす

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■ロードモード設定
*loadMode

[iscript]
function rightClicks()
{
	kag.process('','*load_exit');
}
[endscript]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;;現状のBGMを保存
;[eval exp="f.load_mode_bgm = f.now_bgm"]

;◇一時保存
[tempsave]

;◇システムボタンを非表示
[sysbtopt forevisible=false]
[sysbtopt backvisible=false]

;◇選択肢を非表示（クリック範囲が残るため）
[layopt layer=message3 visible=false page=back]
[layopt layer=message4 visible=false page=back]

;●文字配置用レイヤー撤去
[cl_a]
[freeimage layer=9  page=back]
[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[image storage="bg000000" layer=10 index=1011001 page=back visible=true opacity=255 left=0 top=0]
[ud time=100]

[eval exp="f.システムボタンを打鍵 = 0;"]


;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;◇右クリックで脱出
[rclick jump=true target="*load_exit" enabled=true]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■初期画面のページを設定
[if exp="f.page == void"][eval exp="f.page = 0"][endif]
[if exp="sf.save_new >=  1 && sf.save_new <= 10"][eval exp="f.page = 0"][endif]
[if exp="sf.save_new >= 11 && sf.save_new <= 20"][eval exp="f.page = 1"][endif]
[if exp="sf.save_new >= 21 && sf.save_new <= 30"][eval exp="f.page = 2"][endif]
[if exp="sf.save_new >= 31 && sf.save_new <= 40"][eval exp="f.page = 3"][endif]
[if exp="sf.save_new >= 41 && sf.save_new <= 50"][eval exp="f.page = 4"][endif]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■各ページ画像の配置
*load_setup
[eval exp="f.F01 = 10*f.page + 1"][eval exp="f.F02 = 10*f.page + 2"][eval exp="f.F03 = 10*f.page + 3"][eval exp="f.F04 = 10*f.page + 4"][eval exp="f.F05 = 10*f.page + 5"]
[eval exp="f.F06 = 10*f.page + 6"][eval exp="f.F07 = 10*f.page + 7"][eval exp="f.F08 = 10*f.page + 8"][eval exp="f.F09 = 10*f.page + 9"][eval exp="f.F10 = 10*f.page +10"]
[nowait]

;◇メッセージレイヤーの上に画像表示
[image storage="cls" layer=10 index=1011001 page=back visible=true opacity=255 left=0 top=0]

;◇背景画像の表示
[position layer=message10 frame="loadMode_bg" page=back opacity=255 left=0 top=0 width=1024 height=768 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[layopt layer=message11 visible=true page=back]


;◇ＮＥＷマーク配置
;[if exp="sf.save_new ==             51 "][pimage storage="save_new" layer=10 page=back dx=375 dy= 82][endif]
[if exp="sf.save_new == (10*f.page)+ 1 "][pimage storage="save_new" layer=10 page=back dx=526 dy=275][endif]
[if exp="sf.save_new == (10*f.page)+ 2 "][pimage storage="save_new" layer=10 page=back dx=526 dy=396][endif]
[if exp="sf.save_new == (10*f.page)+ 3 "][pimage storage="save_new" layer=10 page=back dx=526 dy=517][endif]
[if exp="sf.save_new == (10*f.page)+ 4 "][pimage storage="save_new" layer=10 page=back dx=526 dy=638][endif]
[if exp="sf.save_new == (10*f.page)+ 5 "][pimage storage="save_new" layer=10 page=back dx=526 dy=759][endif]
[if exp="sf.save_new == (10*f.page)+ 6 "][pimage storage="save_new" layer=10 page=back dx=1131 dy=275][endif]
[if exp="sf.save_new == (10*f.page)+ 7 "][pimage storage="save_new" layer=10 page=back dx=1131 dy=396][endif]
[if exp="sf.save_new == (10*f.page)+ 8 "][pimage storage="save_new" layer=10 page=back dx=1131 dy=517][endif]
[if exp="sf.save_new == (10*f.page)+ 9 "][pimage storage="save_new" layer=10 page=back dx=1131 dy=638][endif]
[if exp="sf.save_new == (10*f.page)+10 "][pimage storage="save_new" layer=10 page=back dx=1131 dy=759][endif]


;◇サムネイル配置
;[pimage storage="&kag.getBookMarkFileNameAtNum(51)" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(51))"                             layer=10 page=back dx= 55 dy= 75 sw=102 sh=76]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 1))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 1)))" layer=10 page=back dx= 90 dy=258 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 2))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 2)))" layer=10 page=back dx= 90 dy=379 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 3))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 3)))" layer=10 page=back dx= 90 dy=500 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 4))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 4)))" layer=10 page=back dx= 90 dy=621 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 5))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 5)))" layer=10 page=back dx= 90 dy=742 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 6))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 6)))" layer=10 page=back dx=695 dy=258 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 7))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 7)))" layer=10 page=back dx=695 dy=379 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 8))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 8)))" layer=10 page=back dx=695 dy=500 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+ 9))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+ 9)))" layer=10 page=back dx=695 dy=621 sw=128 sh=96]
[pimage storage="&kag.getBookMarkFileNameAtNum(((10*f.page)+10))" cond="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(((10*f.page)+10)))" layer=10 page=back dx=695 dy=742 sw=128 sh=96]


;◇ページボタン配置
[current layer=message10 page=back][er]
[locate x=431 y= 84][button graphic="load_pageNumber01" exp="f.page=0" rc="rightClicks()" target=*load_setup cond="f.page != 0"][pimage storage="load_pageNumber01_On" layer=10 page=back dx=431 dy= 84 cond="f.page == 0"]
[locate x=576 y= 84][button graphic="load_pageNumber02" exp="f.page=1" rc="rightClicks()" target=*load_setup cond="f.page != 1"][pimage storage="load_pageNumber02_On" layer=10 page=back dx=576 dy= 84 cond="f.page == 1"]
[locate x=720 y= 84][button graphic="load_pageNumber03" exp="f.page=2" rc="rightClicks()" target=*load_setup cond="f.page != 2"][pimage storage="load_pageNumber03_On" layer=10 page=back dx=720 dy= 84 cond="f.page == 2"]
[locate x=864 y= 84][button graphic="load_pageNumber04" exp="f.page=3" rc="rightClicks()" target=*load_setup cond="f.page != 3"][pimage storage="load_pageNumber04_On" layer=10 page=back dx=864 dy= 84 cond="f.page == 3"]
[locate x=1007 y= 84][button graphic="load_pageNumber05" exp="f.page=4" rc="rightClicks()" target=*load_setup cond="f.page != 4"][pimage storage="load_pageNumber05_On" layer=10 page=back dx=1007 dy= 84 cond="f.page == 4"]

;◇戻るボタン配置
[locate x=1135 y= 84][button graphic="load_return" rc="rightClicks()" target=*load_exit]

;◇クイックロード配置
;[locate x= 30 y= 70][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = 51" target=*loadCheck]

;◇ロードボタン配置
[locate x= 80 y=250][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 1)" target=*loadCheck]
[locate x= 80 y=371][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 2)" target=*loadCheck]
[locate x= 80 y=492][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 3)" target=*loadCheck]
[locate x= 80 y=613][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 4)" target=*loadCheck]
[locate x= 80 y=734][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 5)" target=*loadCheck]
[locate x=685 y=250][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 6)" target=*loadCheck]
[locate x=685 y=371][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 7)" target=*loadCheck]
[locate x=685 y=492][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 8)" target=*loadCheck]
[locate x=685 y=613][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+ 9)" target=*loadCheck]
[locate x=685 y=734][button graphic="load_bt_cell" rc="rightClicks()" exp="f.loadNumber = ((10*f.page)+10)" target=*loadCheck]

;◇ロード番号表示
[current layer=message11 page=back][er]
;[font face="黑体" size=23 color=0xff556f]
;[locate x=120 y= 79]Quick:
[font face="黑体" size=23 color=0xff556f edge=false]
[locate x=223 y=258]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 1))"]:
[locate x=223 y=379]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 2))"]:
[locate x=223 y=500]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 3))"]:
[locate x=223 y=621]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 4))"]:
[locate x=223 y=742]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 5))"]:
[locate x=828 y=258]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 6))"]:
[locate x=828 y=379]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 7))"]:
[locate x=828 y=500]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 8))"]:
[locate x=828 y=621]NO.[emb exp="'%2d'.sprintf(((10*f.page)+ 9))"]:
[locate x=828 y=742]NO.[emb exp="'%2d'.sprintf(((10*f.page)+10))"]:

;◇ゲーム内日付表示
;０　　　＝プロローグ
;１～３０＝全角日数
;３１　　＝エンディング

;[eval exp="f.ゲーム内日付 = []"]
;[eval exp="f.ゲーム内日付[51] = sf.data日付[51]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 1] = sf.data日付[(10*f.page)+ 1]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 2] = sf.data日付[(10*f.page)+ 2]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 3] = sf.data日付[(10*f.page)+ 3]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 4] = sf.data日付[(10*f.page)+ 4]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 5] = sf.data日付[(10*f.page)+ 5]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 6] = sf.data日付[(10*f.page)+ 6]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 7] = sf.data日付[(10*f.page)+ 7]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 8] = sf.data日付[(10*f.page)+ 8]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+ 9] = sf.data日付[(10*f.page)+ 9]"]
;[eval exp="f.ゲーム内日付[(10*f.page)+10] = sf.data日付[(10*f.page)+10]"]

;[if exp="sf.data日付[51]              == 0 "][eval exp="f.ゲーム内日付[51]              = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 1] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 1] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 2] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 2] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 3] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 3] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 4] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 4] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 5] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 5] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 6] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 6] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 7] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 7] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 8] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 8] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 9] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+ 9] = 'プロローグ' "][endif]
;[if exp="sf.data日付[(10*f.page)+10] == 0 "][eval exp="f.ゲーム内日付[(10*f.page)+10] = 'プロローグ' "][endif]

;[if exp="sf.data日付[51]              >= 31 "][eval exp="f.ゲーム内日付[51]              = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 1] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 1] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 2] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 2] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 3] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 3] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 4] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 4] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 5] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 5] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 6] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 6] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 7] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 7] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 8] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 8] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+ 9] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+ 9] = 'エンディング' "][endif]
;[if exp="sf.data日付[(10*f.page)+10] >= 31 "][eval exp="f.ゲーム内日付[(10*f.page)+10] = 'エンディング' "][endif]

;[font face="黑体" size=15 color=0xffffff bold=true]
;[if exp="sf.data日付[51] >= 1 && sf.data日付[51] <=  9 "][locate x=364 y= 70][emb exp="han2zen((string)f.ゲーム内日付[51])"]日目[endif]
;[if exp="sf.data日付[51] >=10 && sf.data日付[51] <= 30 "][locate x=352 y= 70][emb exp="han2zen((string)f.ゲーム内日付[51])"]日目[endif]
;[if exp="sf.data日付[51] == 0 || sf.data日付[51] >= 31 "][locate x=352 y= 70][emb exp="f.ゲーム内日付[51]"][endif]
;[font face="黑体" size=15 color=0xffffff bold=true]
;[if exp="sf.data日付[(10*f.page)+ 1] >= 1 && sf.data日付[(10*f.page)+ 1] <= 9 "][locate x=252 y=175][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 1])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 2] >= 1 && sf.data日付[(10*f.page)+ 2] <= 9 "][locate x=252 y=255][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 2])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 3] >= 1 && sf.data日付[(10*f.page)+ 3] <= 9 "][locate x=252 y=335][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 3])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 4] >= 1 && sf.data日付[(10*f.page)+ 4] <= 9 "][locate x=252 y=415][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 4])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 5] >= 1 && sf.data日付[(10*f.page)+ 5] <= 9 "][locate x=252 y=495][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 5])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 6] >= 1 && sf.data日付[(10*f.page)+ 6] <= 9 "][locate x=624 y=175][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 6])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 7] >= 1 && sf.data日付[(10*f.page)+ 7] <= 9 "][locate x=624 y=255][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 7])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 8] >= 1 && sf.data日付[(10*f.page)+ 8] <= 9 "][locate x=624 y=335][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 8])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 9] >= 1 && sf.data日付[(10*f.page)+ 9] <= 9 "][locate x=624 y=415][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 9])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+10] >= 1 && sf.data日付[(10*f.page)+10] <= 9 "][locate x=624 y=495][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+10])"]日目[endif]

;[if exp="sf.data日付[(10*f.page)+ 1] >= 10 && sf.data日付[(10*f.page)+ 1] <= 30 "][locate x=240 y=175][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 1])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 2] >= 10 && sf.data日付[(10*f.page)+ 2] <= 30 "][locate x=240 y=255][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 2])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 3] >= 10 && sf.data日付[(10*f.page)+ 3] <= 30 "][locate x=240 y=335][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 3])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 4] >= 10 && sf.data日付[(10*f.page)+ 4] <= 30 "][locate x=240 y=415][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 4])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 5] >= 10 && sf.data日付[(10*f.page)+ 5] <= 30 "][locate x=240 y=495][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 5])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 6] >= 10 && sf.data日付[(10*f.page)+ 6] <= 30 "][locate x=612 y=175][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 6])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 7] >= 10 && sf.data日付[(10*f.page)+ 7] <= 30 "][locate x=612 y=255][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 7])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 8] >= 10 && sf.data日付[(10*f.page)+ 8] <= 30 "][locate x=612 y=335][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 8])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+ 9] >= 10 && sf.data日付[(10*f.page)+ 9] <= 30 "][locate x=612 y=415][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+ 9])"]日目[endif]
;[if exp="sf.data日付[(10*f.page)+10] >= 10 && sf.data日付[(10*f.page)+10] <= 30 "][locate x=612 y=495][emb exp="han2zen((string)f.ゲーム内日付[(10*f.page)+10])"]日目[endif]

;[if exp="sf.data日付[(10*f.page)+ 1] == 0 || sf.data日付[(10*f.page)+ 1] >= 31 "][locate x=240 y=175][emb exp="f.ゲーム内日付[(10*f.page)+ 1]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 2] == 0 || sf.data日付[(10*f.page)+ 2] >= 31 "][locate x=240 y=255][emb exp="f.ゲーム内日付[(10*f.page)+ 2]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 3] == 0 || sf.data日付[(10*f.page)+ 3] >= 31 "][locate x=240 y=335][emb exp="f.ゲーム内日付[(10*f.page)+ 3]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 4] == 0 || sf.data日付[(10*f.page)+ 4] >= 31 "][locate x=240 y=415][emb exp="f.ゲーム内日付[(10*f.page)+ 4]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 5] == 0 || sf.data日付[(10*f.page)+ 5] >= 31 "][locate x=240 y=495][emb exp="f.ゲーム内日付[(10*f.page)+ 5]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 6] == 0 || sf.data日付[(10*f.page)+ 6] >= 31 "][locate x=612 y=175][emb exp="f.ゲーム内日付[(10*f.page)+ 6]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 7] == 0 || sf.data日付[(10*f.page)+ 7] >= 31 "][locate x=612 y=255][emb exp="f.ゲーム内日付[(10*f.page)+ 7]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 8] == 0 || sf.data日付[(10*f.page)+ 8] >= 31 "][locate x=612 y=335][emb exp="f.ゲーム内日付[(10*f.page)+ 8]"][endif]
;[if exp="sf.data日付[(10*f.page)+ 9] == 0 || sf.data日付[(10*f.page)+ 9] >= 31 "][locate x=612 y=415][emb exp="f.ゲーム内日付[(10*f.page)+ 9]"][endif]
;[if exp="sf.data日付[(10*f.page)+10] == 0 || sf.data日付[(10*f.page)+10] >= 31 "][locate x=612 y=495][emb exp="f.ゲーム内日付[(10*f.page)+10]"][endif]


;◇スートラ表示
;[font face="黑体" size=14 color=0xff3366 bold=true]
;[locate x=448 y= 71]Sutra
;[font face="黑体" size=14 color=0xff3366 bold=true]
;[locate x=341 y=177]Sutra
;[locate x=341 y=257]Sutra
;[locate x=341 y=337]Sutra
;[locate x=341 y=417]Sutra
;[locate x=341 y=497]Sutra
;[locate x=715 y=177]Sutra
;[locate x=715 y=257]Sutra
;[locate x=715 y=337]Sutra
;[locate x=715 y=417]Sutra
;[locate x=715 y=497]Sutra

;◇スートラ表示
;[font face="黑体" size=14 color=0xff3366 bold=true]
;[locate x=448 y= 86][emb exp="'%6d'.sprintf(sf.dataスートラ[51])"]
;[font face="黑体" size=14 color=0xff3366 bold=true]
;[locate x=341 y=190][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 1])"]
;[locate x=341 y=270][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 2])"]
;[locate x=341 y=350][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 3])"]
;[locate x=341 y=430][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 4])"]
;[locate x=341 y=510][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 5])"]
;[locate x=715 y=190][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 6])"]
;[locate x=715 y=270][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 7])"]
;[locate x=715 y=350][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 8])"]
;[locate x=715 y=430][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+ 9])"]
;[locate x=715 y=510][emb exp="'%6d'.sprintf(sf.dataスートラ[(10*f.page)+10])"]


;◇セーブ日時表示
[font face="黑体" size=23 color=0xff556f]
;[locate x=182 y= 78][emb exp="kag.getBookMarkDate(51)"]

[locate x=306 y=258][emb exp="kag.getBookMarkDate(((10*f.page)+ 1))"]
[locate x=306 y=379][emb exp="kag.getBookMarkDate(((10*f.page)+ 2))"]
[locate x=306 y=500][emb exp="kag.getBookMarkDate(((10*f.page)+ 3))"]
[locate x=306 y=621][emb exp="kag.getBookMarkDate(((10*f.page)+ 4))"]
[locate x=306 y=742][emb exp="kag.getBookMarkDate(((10*f.page)+ 5))"]
[locate x=911 y=258][emb exp="kag.getBookMarkDate(((10*f.page)+ 6))"]
[locate x=911 y=379][emb exp="kag.getBookMarkDate(((10*f.page)+ 7))"]
[locate x=911 y=500][emb exp="kag.getBookMarkDate(((10*f.page)+ 8))"]
[locate x=911 y=621][emb exp="kag.getBookMarkDate(((10*f.page)+ 9))"]
[locate x=911 y=742][emb exp="kag.getBookMarkDate(((10*f.page)+10))"]

;◇セーブタイトル表示
[font face="黑体" size=22 color=0xff556f]
[locate x=202 y=111][emb exp="kag.getBookMarkPageName(51)" cond="kag.getBookMarkPageName(51) != 'Non Data...'"]

[locate x=223 y=302][emb exp="kag.getBookMarkPageName(((10*f.page)+ 1))" cond="kag.getBookMarkPageName(((10*f.page)+ 1)) != 'Non Data...'"]
[locate x=223 y=423][emb exp="kag.getBookMarkPageName(((10*f.page)+ 2))" cond="kag.getBookMarkPageName(((10*f.page)+ 2)) != 'Non Data...'"]
[locate x=223 y=544][emb exp="kag.getBookMarkPageName(((10*f.page)+ 3))" cond="kag.getBookMarkPageName(((10*f.page)+ 3)) != 'Non Data...'"]
[locate x=223 y=665][emb exp="kag.getBookMarkPageName(((10*f.page)+ 4))" cond="kag.getBookMarkPageName(((10*f.page)+ 4)) != 'Non Data...'"]
[locate x=223 y=786][emb exp="kag.getBookMarkPageName(((10*f.page)+ 5))" cond="kag.getBookMarkPageName(((10*f.page)+ 5)) != 'Non Data...'"]
[locate x=828 y=302][emb exp="kag.getBookMarkPageName(((10*f.page)+ 6))" cond="kag.getBookMarkPageName(((10*f.page)+ 6)) != 'Non Data...'"]
[locate x=828 y=423][emb exp="kag.getBookMarkPageName(((10*f.page)+ 7))" cond="kag.getBookMarkPageName(((10*f.page)+ 7)) != 'Non Data...'"]
[locate x=828 y=544][emb exp="kag.getBookMarkPageName(((10*f.page)+ 8))" cond="kag.getBookMarkPageName(((10*f.page)+ 8)) != 'Non Data...'"]
[locate x=828 y=665][emb exp="kag.getBookMarkPageName(((10*f.page)+ 9))" cond="kag.getBookMarkPageName(((10*f.page)+ 9)) != 'Non Data...'"]
[locate x=828 y=786][emb exp="kag.getBookMarkPageName(((10*f.page)+10))" cond="kag.getBookMarkPageName(((10*f.page)+10)) != 'Non Data...'"]

[endnowait]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]
[s]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■ロード実行
*loadCheck

;◇データが無い
[if exp="kag.getBookMarkPageName(f.loadNumber) =='Non Data...'"][jump target=*loadCheck_NO][endif]

;◇データが存在（ダイアログにて確認有り）
[eval exp="tf.SetDialog = 'yesno03'"]
[eval exp="var result = askYesNo('ロードしますか？','ロード','','','',4,150,120,150)"]
	[if exp="result == true "][jump target=*loadCheck_YES][endif]
	[if exp="result == false"][jump target=*loadCheck_NO ][endif]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■ＹＥＳの時
*loadCheck_YES

;[se storage="_free_se1013"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]
[eval exp="kag.historyLayer.clear()"]

;ボタン等画面の後処理　＋　NOW LOADING演出

;skipなどのアイコンOFF
[mesw_off]



;●文字配置用レイヤー撤去
	[position layer=message10 frame="cls" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[layopt layer=message11 visible=true page=back][er]
	[freeimage layer=10 page=back]

	[layopt layer=message10 visible=false page=fore][layopt layer=message10 visible=false page=back]
	[layopt layer=message11 visible=false page=fore][layopt layer=message11 visible=false page=back]

	[layopt layer=message6 visible=false page=fore][layopt layer=message6 visible=false page=back]
	[layopt layer=message5 visible=false page=fore][layopt layer=message5 visible=false page=back]
	[layopt layer=message4 visible=false page=fore][layopt layer=message4 visible=false page=back]
	[layopt layer=message3 visible=false page=fore][layopt layer=message3 visible=false page=back]
	[layopt layer=message1 visible=false page=fore][layopt layer=message1 visible=false page=back]

[freeimage layer=0 page=fore]
[freeimage layer=0 page=back]

;カットイン用レイヤーを消去
[freeimage layer=5  page=fore]

;現在のサムネイルを消去
[freeimage layer=9  page=fore]
[freeimage layer=10 page=fore]
[cl_a]
;[bg storage=bgffffff][ud time=500]

;画面更新を、強制的に待機
[wt canskip=false]

;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;ロード後の誤爆確認の為の緊急ウエイト
[wait time=500 canskip=false]

;◇データロード
[eval exp="kag.loadBookMark(f.loadNumber)"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]
[jump target=*load_setup]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■ＮＯの時
*loadCheck_NO

[jump target=*load_setup]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■ロードモード終了
*load_exit

;脱出時のボタンクリック音を聞くためのウエイト
[wait time=300 canskip=false]

;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title == 0"]
	[position layer=message10 frame="cls" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[layopt layer=message11 visible=true page=back][er]
	[freeimage layer=10 page=back]
	[trans method=crossfade time=150]
	[wt canskip=false]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]
	[layopt layer=message11 visible=false page=fore]
	[layopt layer=message11 visible=false page=back]

	;◇システムボタンを表示
	[sysbtopt forevisible=true]
	[sysbtopt backvisible=true]
[endif]

[current layer=message0]

[rclick jump=false]
[stoptrans]
;◇一時保存をロード
[tempload bgm=false]

;;現状のBGMを復帰
;[eval exp="f.now_bgm = f.load_mode_bgm"]
;[if exp="f.now_bgm == 'bgm01'"][playbgm storage="bgm01" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm02'"][playbgm storage="bgm02" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm03'"][playbgm storage="bgm03" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm04'"][playbgm storage="bgm04" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm05'"][playbgm storage="bgm05" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm06'"][playbgm storage="bgm06" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm07'"][playbgm storage="bgm07" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm08'"][playbgm storage="bgm08" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm09'"][playbgm storage="bgm09" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm10'"][playbgm storage="bgm10" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm11'"][playbgm storage="bgm11" loop=true ][jump target=*bgm_setup][endif]
;[if exp="f.now_bgm == 'bgm12'"][playbgm storage="bgm12" loop=true ][jump target=*bgm_setup][endif]
;*bgm_setup

;◇メッセージ履歴出力＆表示
[history output=true enabled=true]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

[return]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
