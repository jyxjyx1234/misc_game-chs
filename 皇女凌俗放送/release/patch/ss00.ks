;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　05/05　更新者　白土
*ss00

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ルート管理設定

;■*ss00|ＳＬＧブロック開始
;　*debagmode_set|デバックモード

;■ＳＬＧループ開始
;　変数初期化

;■朝ＦＡＳＥ　変数初期化
;　ターン開始シナリオのセット
;　リアンの中間報告

;■番組ＦＡＳＥ
;　番組選択前のデータのバックアップ
;■番組選択
;　放送前のデータのバックアップ
;■選択した放送の放映
;　放送後のデータのバックアップ

;■結果集計表示
;■ヒロイン　トリガーイベント
;■ヒロイン　トリガーイベント　発動後

;■結果集計
;■ＳＬＧループ終了

;■*slg00_0060|エンディング



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期設定　開始

;■初期データの登録
[call storage="slg00.ks"]

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;■起動初期画面の設定（全黒表示更新）
[cm]
[bg storage=bg000000][ud]

;■変数初期設定　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■デバックモード　開始
*debagmode_set|デバックモード
;[bgmstop][call storage="debagmode.ks"][bgmstop]

;■デバックモード　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ＳＬＧブロック　ループ開始
*slg00_0000


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■初期値設定
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■軍閥王制支持率　最大・最小値修正　０～１００
[if exp="f.sijiritu <=   0"][eval exp="f.sijiritu =   0"][endif]
[if exp="f.sijiritu >= 100"][eval exp="f.sijiritu = 100"][endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■前回視聴率　　　最大・最小値修正　０～１００
[if exp="f.tv_onare_old <=  0"][eval exp="f.tv_onare_old =  0"][endif]
[if exp="f.tv_onare_old >=100"][eval exp="f.tv_onare_old =100"][endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ニーズの設定　開始

;■・世論によるニーズ変動値をそれぞれ調整。－５～６
;■■それぞれのステータスの特殊効果
;■渇望……集計時に支持率と視聴率ボーナス+1%・各ニーズの伸び（+0～+2/+1～+3/+0～+1）
;■怒り……集計時に軍支持率ボーナス      +2%・各ニーズの伸び（+1～+3/+0～+2/+0～+1）
;■同情……集計時に軍支持率ペナルティ    -5%・各ニーズの伸び（+0～+1/+0～+1/+1～+3）
;■反発……集計時に軍支持率・視聴率両方 -10%・各ニーズの伸び（-5    /    -5/    -5）

;■第１ターン目はスルー
[if exp="f.ch_x_root != 1"]

[if exp="f.kanjyou == '渇望'"]
[rand min=0 max=2][eval exp="f.need_00 = f.need_00 +f.rand   "]
[rand min=1 max=3][eval exp="f.need_01 = f.need_01 +f.rand   "]
[rand min=0 max=1][eval exp="f.need_02 = f.need_02 +f.rand   "]
[endif]

[if exp="f.kanjyou == '怒り'"]
[rand min=1 max=3][eval exp="f.need_00 = f.need_00 +f.rand   "]
[rand min=0 max=2][eval exp="f.need_01 = f.need_01 +f.rand   "]
[rand min=0 max=1][eval exp="f.need_02 = f.need_02 +f.rand   "]
[endif]

[if exp="f.kanjyou == '同情'"]
[rand min=0 max=1][eval exp="f.need_00 = f.need_00 +f.rand   "]
[rand min=0 max=1][eval exp="f.need_01 = f.need_01 +f.rand   "]
[rand min=1 max=3][eval exp="f.need_02 = f.need_02 +f.rand   "]
[endif]

[if exp="f.kanjyou == '反発'"]
[eval exp="f.need_00 = -5"]
[eval exp="f.need_01 = -5"]
[eval exp="f.need_02 = -5"]
[endif]

;■最大値修正
[if exp="f.need_00 >=  6"][eval exp="f.need_00 =  6"][endif]
[if exp="f.need_01 >=  6"][eval exp="f.need_01 =  6"][endif]
[if exp="f.need_02 >=  6"][eval exp="f.need_02 =  6"][endif]

;■最小値修正
[if exp="f.need_00 <= -5"][eval exp="f.need_00 = -5"][endif]
[if exp="f.need_01 <= -5"][eval exp="f.need_01 = -5"][endif]
[if exp="f.need_02 <= -5"][eval exp="f.need_02 = -5"][endif]

[endif]

*need_end
;■ニーズの設定　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■朝ＦＡＳＥ　変数初期化

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]

;■ＢＧＭ設定
[bgmstop]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ターン開始シナリオのセット
[if exp="f.ch_x_root == 1"][jump target=*asa_01][endif]
[if exp="f.ch_x_root == 2"][jump target=*asa_02][endif]
[if exp="f.ch_x_root == 3"][jump target=*asa_03][endif]
[if exp="f.ch_x_root == 4"][jump target=*asa_04][endif]
[if exp="f.ch_x_root == 5"][jump target=*asa_05][endif]
[if exp="f.ch_x_root == 6"][jump target=*asa_06][endif]
[if exp="f.ch_x_root == 7"][jump target=*asa_07][endif]
[if exp="f.ch_x_root == 8"][jump target=*asa_08][endif]
[if exp="f.ch_x_root == 9"][jump target=*asa_09][endif]
[if exp="f.ch_x_root ==10"][jump target=*asa_10][endif]
[if exp="f.ch_x_root ==11"][jump target=*asa_11][endif]
[if exp="f.ch_x_root ==12"][jump target=*asa_12][endif]
[if exp="f.ch_x_root ==13"][jump target=*asa_13][endif]
[if exp="f.ch_x_root ==14"][jump target=*asa_14][endif]
[if exp="f.ch_x_root ==15"][jump target=*asa_15][endif]
[if exp="f.ch_x_root ==16"][jump target=*asa_16][endif]
[if exp="f.ch_x_root ==17"][jump target=*asa_17][endif]
[if exp="f.ch_x_root ==18"][jump target=*asa_18][endif]
[if exp="f.ch_x_root ==19"][jump target=*asa_19][endif]
[if exp="f.ch_x_root ==20"][jump target=*asa_20][endif]
[if exp="f.ch_x_root ==21"][jump target=*asa_21][endif]
[if exp="f.ch_x_root ==22"][jump target=*asa_22][endif]
[if exp="f.ch_x_root ==23"][jump target=*asa_23][endif]
[if exp="f.ch_x_root ==24"][jump target=*asa_24][endif]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■１ターン目
;■OP01　プロローグ１カチェア処女喪失
;■DL01　チュートリアル（操作説明）

*asa_01
[bgmstop][call storage="OP01.ks"][bgmstop]
[bgmstop][call storage="DL01.ks"][bgmstop]
[jump target=*asa_exit]


;■２ターン目
;■OP02　プロローグ２マイヤ処女喪失
*asa_02
[bgmstop][call storage="OP02.ks"][bgmstop]
[jump target=*asa_exit]


;■３ターン目
;■MEV01　『カラストのお頭脳』企画書　A05　追加
*asa_03
[bgmstop][call storage="MEV01.ks"][bgmstop]
[jump target=*asa_exit]


;■４ターン目
;■ML01　さぁ仕事するか
;■「ＲＥ報告」
*asa_04
[bgmstop][call storage="ML01.ks"][bgmstop]
[jump target=*ss00_r00]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■５ターン目
;■MEV02　『処刑命令書』企画書　A06　追加
*asa_05
[bgmstop][call storage="MEV02.ks"][bgmstop]
[jump target=*asa_exit]


;■６ターン目
;■CT01　俺が、挨拶の仕方を教えてやろう
*asa_06
[bgmstop][call storage="CT01.ks"][bgmstop]
[jump target=*asa_exit]


;■７ターン目　
;■DL02 　（A05　未読）→街頭にて
;■MEV05　（A05　既読）→『日本文化万歳』企画書　B05　追加
*asa_07
[if exp="f.set_a05 == 0"][bgmstop][call storage="DL02.ks" ][bgmstop][endif]
[if exp="f.set_a05 == 1"][bgmstop][call storage="MEV05.ks"][bgmstop][endif]
[jump target=*asa_exit]


;■８ターン目
;■ML02　今日は放送日だ
;■「ＲＥ報告」
*asa_08
[bgmstop][call storage="ML02.ks"][bgmstop]
[jump target=*ss00_r00]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■９ターン目
;■MEV03　『慰問イベント』企画書　A07　A08　A09　B07　B08　B09　追加
*asa_09
[bgmstop][call storage="MEV03.ks"][bgmstop]
[jump target=*asa_exit]


;■１０ターン目
;■CT02　リアンコレクション　黒の章
*asa_10
[bgmstop][call storage="CT02.ks"][bgmstop]
[jump target=*asa_exit]


;■１１ターン目
;■DL03 　（A06　未読）→慌しき朝
;■MEV08　（A06　既読）→『リアンの夢？』企画書　W01　追加
*asa_11
[if exp="f.set_a06 == 0"][bgmstop][call storage="DL03.ks" ][bgmstop][endif]
[if exp="f.set_a06 == 1"][bgmstop][call storage="MEV08.ks"][bgmstop][endif]
[jump target=*asa_exit]


;■１２ターン目
;■ML03　カチェアの事を考える
;■「ＲＥ報告」
*asa_12
[bgmstop][call storage="ML03.ks"][bgmstop]
[jump target=*ss00_r00]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■１３ターン目
;■DL04 　（B05　未読）→アクラスという男
;■MEV04　（B05　既読）→『カラストのお頭脳再び』企画書　A12　追加
*asa_13
[if exp="f.set_b05 == 0"][bgmstop][call storage="DL04.ks" ][bgmstop][endif]
[if exp="f.set_b05 == 1"][bgmstop][call storage="MEV04.ks"][bgmstop][endif]
[jump target=*asa_exit]


;■１４ターン目
;■CT03　バラライカの未来
*asa_14
[bgmstop][call storage="CT03.ks"][bgmstop]
[jump target=*asa_exit]


;■１５ターン目
;■CT04　母の思い出
*asa_15
[bgmstop][call storage="CT04.ks"][bgmstop]
[jump target=*asa_exit]


;■１６ターン目
;■ML04　マイヤの事を考える
;■「ＲＥ報告」
*asa_16
[bgmstop][call storage="ML04.ks"][bgmstop]
[jump target=*ss00_r00]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■１７ターン目
;■DL05 　（W01　未読）→名もなき朝
;■MEV06　（W01　既読）→『軍用犬の発情報告』企画書　B10　追加
*asa_17
[if exp="f.set_w01 == 0"][bgmstop][call storage="DL05.ks" ][bgmstop][endif]
[if exp="f.set_w01 == 1"][bgmstop][call storage="MEV06.ks"][bgmstop][endif]
[jump target=*asa_exit]


;■１８ターン目
;■CT05　日本は本当に良い国だ
*asa_18
[bgmstop][call storage="CT05.ks"][bgmstop]
[jump target=*asa_exit]

;■１９ターン目
;■DL06 　（B10　未読）→名もなき朝
;■MEV10　（B10　既読）→『ケンジ式ストレス解消法』企画書　W07　追加
*asa_19
[if exp="f.set_b10 == 0"][bgmstop][call storage="DL06.ks" ][bgmstop][endif]
[if exp="f.set_b10 == 1"][bgmstop][call storage="MEV10.ks"][bgmstop][endif]
[jump target=*asa_exit]

;■２０ターン目
;■ML05　リアンの事を考える
;■「ＲＥ報告」
*asa_20
[bgmstop][call storage="ML05.ks"][bgmstop]
[jump target=*ss00_r00]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■２１ターン目
;■朝イベント無し
*asa_21
;選挙を行うので、朝のイベントは無し
[jump target=*asa_exit]


;■２２ターン目
;■CT06　（CEV02 既読　または　支持率　６０％以上）→二人の距離
;■ML06　（上記条件以外）→カラストの事を考え……たく無いなぁ
*asa_22
[if exp="f.CEV02_on == 1 || f.sijiritu >= 60"][bgmstop][call storage="CT06.ks"][bgmstop][jump target=*asa_exit][endif]
[if exp="f.kanjyou =='反発'"                 ][bgmstop][call storage="ML06.ks"][bgmstop][jump target=*asa_exit][endif]
[jump target=*asa_exit]
;■２３ターン目
;■ML07　（CEV02 既読　または　支持率　６０％以上）→プロパガンダ成功か？！
;■ML08　（上記条件以外）→プロパガンダ失敗か？！
*asa_23
[if exp="f.CEV02_on == 1 || f.sijiritu >= 60"][bgmstop][call storage="ML07.ks"][bgmstop][jump target=*asa_exit][endif]
[if exp="f.kanjyou =='反発'"                 ][bgmstop][call storage="ML08.ks"][bgmstop][jump target=*asa_exit][endif]
[jump target=*asa_exit]

;■２４ターン目
;■CT07　（CEV02 既読　または　支持率　６０％以上）→勝負の行方
;■ML09　（上記条件以外）→最後の一手
;■「ＲＥ報告」
*asa_24
[if exp="f.CEV02_on == 1 || f.sijiritu >= 60"][bgmstop][call storage="CT07.ks"][bgmstop][jump target=*ss00_r00][endif]
[if exp="f.kanjyou =='反発'"                 ][bgmstop][call storage="ML09.ks"][bgmstop][jump target=*ss00_r00][endif]
[jump target=*ss00_r00]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■リアン中間報告　開始
*ss00_r00

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■初期設定　開始

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]

;■誤爆防止のウエイト画像表示
;■ＢＧＭ設定
[bgmstop]
;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]




[cm2]
;■ＢＧＭ設定
[bgmstop]
;●背景　黒
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=0]
[wait time=500 canskip=false]
[mesw_on]


;■初期設定　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■視聴率判定
[if exp="f.tv_onare_old >=80"][jump target=*ss00_r00_1_1][endif]
[if exp="f.tv_onare_old >=60"][jump target=*ss00_r00_1_2][endif]
[if exp="f.tv_onare_old >=45"][jump target=*ss00_r00_1_3][endif]
[if exp="f.tv_onare_old >=30"][jump target=*ss00_r00_1_4][endif]
[if exp="f.tv_onare_old >= 0"][jump target=*ss00_r00_1_5][endif]

;■１、視聴率が極めて高い。
*ss00_r00_1_1
[call storage="RE01.ks"]
[jump target=*ss00_r00_1_end]

;■２、視聴率が高い。
*ss00_r00_1_2
[call storage="RE02.ks"]
[jump target=*ss00_r00_1_end]

;■３、視聴率が中くらい。
*ss00_r00_1_3
[call storage="RE03.ks"]
[jump target=*ss00_r00_1_end]

;■４、視聴率が低い。
*ss00_r00_1_4
[call storage="RE04.ks"]
[jump target=*ss00_r00_1_end]

;■５、視聴率が極めて低い。
*ss00_r00_1_5
[call storage="RE05.ks"]
[jump target=*ss00_r00_1_end]

*ss00_r00_1_end
;■■■■■□□□□□■■■■■□□□□□■■■■■
;■視聴率判定
[if exp="f.sijiritu >=80"][jump target=*ss00_r00_2_1][endif]
[if exp="f.sijiritu >=60"][jump target=*ss00_r00_2_2][endif]
[if exp="f.sijiritu >=45"][jump target=*ss00_r00_2_3][endif]
[if exp="f.sijiritu >=30"][jump target=*ss00_r00_2_4][endif]
[if exp="f.sijiritu >= 0"][jump target=*ss00_r00_2_5][endif]


;■１、支持率が極めて高い
*ss00_r00_2_1
[call storage="RE06.ks"]
[jump target=*ss00_r00_2_end]

;■２、支持率が高い
*ss00_r00_2_2
[call storage="RE07.ks"]
[jump target=*ss00_r00_2_end]

;■３、支持率が中くらい
*ss00_r00_2_3
[call storage="RE08.ks"]
[jump target=*ss00_r00_2_end]

;■４、支持率が低い
*ss00_r00_2_4
[call storage="RE09.ks"]
[jump target=*ss00_r00_2_end]

;■５、支持率が極めて低い
*ss00_r00_2_5
[call storage="RE10.ks"]
[jump target=*ss00_r00_2_end]


*ss00_r00_2_end

;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;■リアン中間報告　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



*asa_exit
;■朝ＦＡＳＥ　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■番組ＦＡＳＥ
*slg00_0010

;■初期設定
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;■データのバックアップ
;■[eval exp="f.sijiritu_back_ターン数     = 現在の支持率"]
;■[eval exp="f.tv_onare_old_back_ターン数 = 現在の視聴率"]
;□データの保存
;□現在のターン数（１～２４）
[if exp="f.ch_x_root == 1"][eval exp="f.sijiritu_back_00 = f.sijiritu"][eval exp="f.tv_onare_old_back_00 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 2"][eval exp="f.sijiritu_back_01 = f.sijiritu"][eval exp="f.tv_onare_old_back_01 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 3"][eval exp="f.sijiritu_back_02 = f.sijiritu"][eval exp="f.tv_onare_old_back_02 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 4"][eval exp="f.sijiritu_back_03 = f.sijiritu"][eval exp="f.tv_onare_old_back_03 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 5"][eval exp="f.sijiritu_back_04 = f.sijiritu"][eval exp="f.tv_onare_old_back_04 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 6"][eval exp="f.sijiritu_back_05 = f.sijiritu"][eval exp="f.tv_onare_old_back_05 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 7"][eval exp="f.sijiritu_back_06 = f.sijiritu"][eval exp="f.tv_onare_old_back_06 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 8"][eval exp="f.sijiritu_back_07 = f.sijiritu"][eval exp="f.tv_onare_old_back_07 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 9"][eval exp="f.sijiritu_back_08 = f.sijiritu"][eval exp="f.tv_onare_old_back_08 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==10"][eval exp="f.sijiritu_back_09 = f.sijiritu"][eval exp="f.tv_onare_old_back_09 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==11"][eval exp="f.sijiritu_back_10 = f.sijiritu"][eval exp="f.tv_onare_old_back_10 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==12"][eval exp="f.sijiritu_back_11 = f.sijiritu"][eval exp="f.tv_onare_old_back_11 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==13"][eval exp="f.sijiritu_back_12 = f.sijiritu"][eval exp="f.tv_onare_old_back_12 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==14"][eval exp="f.sijiritu_back_13 = f.sijiritu"][eval exp="f.tv_onare_old_back_13 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==15"][eval exp="f.sijiritu_back_14 = f.sijiritu"][eval exp="f.tv_onare_old_back_14 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==16"][eval exp="f.sijiritu_back_15 = f.sijiritu"][eval exp="f.tv_onare_old_back_15 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==17"][eval exp="f.sijiritu_back_16 = f.sijiritu"][eval exp="f.tv_onare_old_back_16 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==18"][eval exp="f.sijiritu_back_17 = f.sijiritu"][eval exp="f.tv_onare_old_back_17 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==19"][eval exp="f.sijiritu_back_18 = f.sijiritu"][eval exp="f.tv_onare_old_back_18 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==20"][eval exp="f.sijiritu_back_19 = f.sijiritu"][eval exp="f.tv_onare_old_back_19 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==21"][eval exp="f.sijiritu_back_20 = f.sijiritu"][eval exp="f.tv_onare_old_back_20 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==22"][eval exp="f.sijiritu_back_21 = f.sijiritu"][eval exp="f.tv_onare_old_back_21 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==23"][eval exp="f.sijiritu_back_22 = f.sijiritu"][eval exp="f.tv_onare_old_back_22 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==24"][eval exp="f.sijiritu_back_23 = f.sijiritu"][eval exp="f.tv_onare_old_back_23 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==25"][eval exp="f.sijiritu_back_24 = f.sijiritu"][eval exp="f.tv_onare_old_back_24 = f.tv_onare_old"][endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■番組選択画面　開始

;■誤爆防止のウエイト画像表示
;■ＢＧＭ設定
[bgmstop]
;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]
[cm2]
;■ＢＧＭ設定
[bgmstop]
;●背景　黒
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=0]
[wait time=500 canskip=false]
[mesw_on]

;■番組選択画面　ルーチン
[jump storage="ss01.ks" target=*ss01]

;■ＢＧＭ設定
[bgmstop]
*ss00_jyouhou_return
;■番組選択画面　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■放送後の、データ表示
*slg00_0053
;■[eval exp="f.sijiritu_back2_ターン数     = f.sijiritu"    ]　→　支持率をバックアップ
;■[eval exp="f.tv_onare_old_back2_ターン数 = f.tv_onare_old"]　→　視聴率をバックアップ

;■放送後の、データ取得
[if exp="f.ch_x_root == 1"][eval exp="f.sijiritu_back2_00 = f.sijiritu"][eval exp="f.tv_onare_old_back2_00 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 2"][eval exp="f.sijiritu_back2_01 = f.sijiritu"][eval exp="f.tv_onare_old_back2_01 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 3"][eval exp="f.sijiritu_back2_02 = f.sijiritu"][eval exp="f.tv_onare_old_back2_02 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 4"][eval exp="f.sijiritu_back2_03 = f.sijiritu"][eval exp="f.tv_onare_old_back2_03 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 5"][eval exp="f.sijiritu_back2_04 = f.sijiritu"][eval exp="f.tv_onare_old_back2_04 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 6"][eval exp="f.sijiritu_back2_05 = f.sijiritu"][eval exp="f.tv_onare_old_back2_05 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 7"][eval exp="f.sijiritu_back2_06 = f.sijiritu"][eval exp="f.tv_onare_old_back2_06 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 8"][eval exp="f.sijiritu_back2_07 = f.sijiritu"][eval exp="f.tv_onare_old_back2_07 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root == 9"][eval exp="f.sijiritu_back2_08 = f.sijiritu"][eval exp="f.tv_onare_old_back2_08 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==10"][eval exp="f.sijiritu_back2_09 = f.sijiritu"][eval exp="f.tv_onare_old_back2_09 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==11"][eval exp="f.sijiritu_back2_10 = f.sijiritu"][eval exp="f.tv_onare_old_back2_10 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==12"][eval exp="f.sijiritu_back2_11 = f.sijiritu"][eval exp="f.tv_onare_old_back2_11 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==13"][eval exp="f.sijiritu_back2_12 = f.sijiritu"][eval exp="f.tv_onare_old_back2_12 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==14"][eval exp="f.sijiritu_back2_13 = f.sijiritu"][eval exp="f.tv_onare_old_back2_13 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==15"][eval exp="f.sijiritu_back2_14 = f.sijiritu"][eval exp="f.tv_onare_old_back2_14 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==16"][eval exp="f.sijiritu_back2_15 = f.sijiritu"][eval exp="f.tv_onare_old_back2_15 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==17"][eval exp="f.sijiritu_back2_16 = f.sijiritu"][eval exp="f.tv_onare_old_back2_16 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==18"][eval exp="f.sijiritu_back2_17 = f.sijiritu"][eval exp="f.tv_onare_old_back2_17 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==19"][eval exp="f.sijiritu_back2_18 = f.sijiritu"][eval exp="f.tv_onare_old_back2_18 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==20"][eval exp="f.sijiritu_back2_19 = f.sijiritu"][eval exp="f.tv_onare_old_back2_19 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==21"][eval exp="f.sijiritu_back2_20 = f.sijiritu"][eval exp="f.tv_onare_old_back2_20 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==22"][eval exp="f.sijiritu_back2_21 = f.sijiritu"][eval exp="f.tv_onare_old_back2_21 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==23"][eval exp="f.sijiritu_back2_22 = f.sijiritu"][eval exp="f.tv_onare_old_back2_22 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==24"][eval exp="f.sijiritu_back2_23 = f.sijiritu"][eval exp="f.tv_onare_old_back2_23 = f.tv_onare_old"][endif]
[if exp="f.ch_x_root ==25"][eval exp="f.sijiritu_back2_24 = f.sijiritu"][eval exp="f.tv_onare_old_back2_24 = f.tv_onare_old"][endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■結果集計表示　開始
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]
[win_full]

;■誤爆防止のウエイト画像表示
;■ＢＧＭ設定
[bgmstop]
;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

[cm2]
;■ＢＧＭ設定
[bgmstop]
[sestop]

;●背景　黒
[mesw_off]
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=0]
[wait time=500 canskip=false]
[mesw_on]

;■Ｒメニュー禁止
[rclick enabled=false]

[call storage="ss03.ks" target=*ss03]

;■Ｒメニュー禁止　解除
[rclick enabled=true]

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

[setwindow]
;■結果集計表示　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■夜ＦＡＳＥ
*slg00_0055
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]

;■ＢＧＭ設定
[bgmstop]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ターン開始シナリオのセット
[if exp="f.ch_x_root == 1"][jump target=*yoru_EV01_end][endif]
[if exp="f.ch_x_root == 2"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 3"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 4"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 5"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 6"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 7"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 8"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root == 9"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==10"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==11"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==12"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==13"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==14"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==15"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==16"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==17"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==18"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==19"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==20"][jump target=*yoru_EV00][endif]
[if exp="f.ch_x_root ==21"][jump target=*yoru_EV01_end][endif]
[if exp="f.ch_x_root ==22"][jump target=*yoru_EV01_end][endif]
[if exp="f.ch_x_root ==23"][jump target=*yoru_EV01_end][endif]
[if exp="f.ch_x_root ==24"][jump target=*yoru_EV01_end][endif]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ヒロイン　トリガーイベント　発生
;■今回選択した番組によって「Ａ」「Ｂ」「Ｗ」のいずれかを選択
;■トリガーイベント不足の場合　「ＥＲイベント」をランダムで発動
*yoru_EV00

;■Ａルート　トリガーイベント
[if exp="f.st99 == 'a01'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a02'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a03'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a04'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a05'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a06'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a07'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a08'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a09'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a10'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a11'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a12'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a13'"][jump target=*yoru_EV00_a][endif]
[if exp="f.st99 == 'a14'"][jump target=*yoru_EV00_a][endif]

;■Ｂルート　トリガーイベント
[if exp="f.st99 == 'b01'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b02'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b03'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b04'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b05'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b06'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b07'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b08'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b09'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b10'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b11'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b12'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b13'"][jump target=*yoru_EV00_b][endif]
[if exp="f.st99 == 'b14'"][jump target=*yoru_EV00_b][endif]

;■Ｗルート　トリガーイベント
[if exp="f.st99 == 'w01'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w02'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w03'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w04'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w05'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w06'"][jump target=*yoru_EV00_w][endif]
[if exp="f.st99 == 'w07'"][jump target=*yoru_EV00_w][endif]

;■トリガーイベント　不足の場合
[jump target=*yoru_EV00_r]
[s]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■Ａルート　トリガーイベント
*yoru_EV00_a
[if exp="f.AT02_on != 1"][eval exp="f.AT02_on = 1"][call storage="AT02.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.AT03_on != 1"][eval exp="f.AT03_on = 1"][call storage="AT03.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.AT04_on != 1"][eval exp="f.AT04_on = 1"][call storage="AT04.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.AT05_on != 1"][eval exp="f.AT05_on = 1"][call storage="AT05.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.AT06_on != 1"][eval exp="f.AT06_on = 1"][call storage="AT06.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.AT07_on != 1"][eval exp="f.AT07_on = 1"][call storage="AT07.ks"][jump target=*yoru_EV01_end][endif]
[jump target=*yoru_EV00_r]

;■Ｂルート　トリガーイベント
*yoru_EV00_b
[if exp="f.BT01_on != 1"][eval exp="f.BT01_on = 1"][call storage="BT01.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT02_on != 1"][eval exp="f.BT02_on = 1"][call storage="BT02.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT03_on != 1"][eval exp="f.BT03_on = 1"][call storage="BT03.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT04_on != 1"][eval exp="f.BT04_on = 1"][call storage="BT04.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT05_on != 1"][eval exp="f.BT05_on = 1"][call storage="BT05.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT06_on != 1"][eval exp="f.BT06_on = 1"][call storage="BT06.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.BT07_on != 1"][eval exp="f.BT07_on = 1"][call storage="BT07.ks"][jump target=*yoru_EV01_end][endif]
[jump target=*yoru_EV00_r]

;■Ｗルート　トリガーイベント
*yoru_EV00_w
[if exp="f.WT01_on != 1"][eval exp="f.WT01_on = 1"][call storage="WT01.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.WT02_on != 1"][eval exp="f.WT02_on = 1"][call storage="WT02.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.WT03_on != 1"][eval exp="f.WT03_on = 1"][call storage="WT03.ks"][jump target=*yoru_EV01_end][endif]
[if exp="f.WT04_on != 1"][eval exp="f.WT04_on = 1"][call storage="WT04.ks"][jump target=*yoru_EV01_end][endif]
[jump target=*yoru_EV00_r]

;■トリガーイベント不足の場合
*yoru_EV00_r
[rand min=1 max=10]
[if exp="f.rand == 1"][call storage="ER01.ks"][endif]
[if exp="f.rand == 2"][call storage="ER02.ks"][endif]
[if exp="f.rand == 3"][call storage="ER03.ks"][endif]
[if exp="f.rand == 4"][call storage="ER04.ks"][endif]
[if exp="f.rand == 5"][call storage="ER05.ks"][endif]
[if exp="f.rand == 6"][call storage="ER06.ks"][endif]
[if exp="f.rand == 7"][call storage="ER07.ks"][endif]
[if exp="f.rand == 8"][call storage="ER08.ks"][endif]
[if exp="f.rand == 9"][call storage="ER09.ks"][endif]
[if exp="f.rand ==10"][call storage="ER10.ks"][endif]
[jump target=*yoru_EV01_end]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■トリガーイベント終了後
*yoru_EV01_end
[if exp="f.ch_x_root == 1"][jump target=*yoru_EV01][endif]
[if exp="f.ch_x_root == 4"][jump target=*yoru_EV04][endif]
[if exp="f.ch_x_root == 8"][jump target=*yoru_EV08][endif]
[if exp="f.ch_x_root ==12"][jump target=*yoru_EV12][endif]
[if exp="f.ch_x_root ==14"][jump target=*yoru_EV14][endif]
[if exp="f.ch_x_root ==16"][jump target=*yoru_EV16][endif]
[if exp="f.ch_x_root ==20"][jump target=*yoru_EV20][endif]
[if exp="f.ch_x_root ==21"][jump target=*yoru_EV21][endif]
[if exp="f.ch_x_root ==22"][jump target=*yoru_EV22][endif]
[if exp="f.ch_x_root ==23"][jump target=*yoru_EV23][endif]
[jump target=*yoru_exit]
[s]

;■１ターン目夜
;■AT01　放送後……
*yoru_EV01
[bgmstop][call storage="AT01.ks"][bgmstop]
[jump target=*yoru_exit]

;■４ターン目夜
;■EL05　王子の事を考える
*yoru_EV04
[bgmstop][call storage="EL05.ks"][bgmstop]
[jump target=*yoru_exit]

;■８・１２・１６ターン目夜
*yoru_EV08
*yoru_EV12
*yoru_EV16

;報告イベントのある8・12・16・20ターン目の夜の時点で、
;軍閥支持率・視聴率がともに５０％以上、
;リアン攻略イベント「ＣＥＶ０１」が発生。
;
;そうでない場合・もしくは既に見ている場合は、
;出演数とは、Ａ＋Ｗ　または　Ｂ＋Ｗである
;出演数に、ヒロインの好感度を加算
;　　７点で「ＡＥＶ０１」「ＢＥＶ０１」が発生。
;　１４点で「ＡＥＶ０２」「ＢＥＶ０２」が発生。
;　もし２人とも条件を満たしていたら、回数の多い方が優先。同数ならカチェア優先。
;　ＣＥＶ０１との優先度は、ともにＣＥＶ０１のほうが上。

;■「ＣＥＶ０１」発生条件
[if exp="f.sijiritu > 50 && f.tv_onare_old > 50 && f.CEV01_on != 1"]
[eval exp="f.CEV01_on = 1"][call storage="CEV01.ks"][jump target=*yoru_exit]
[endif]


;■ヒロインＡ＋ヒロインＷの場合
[eval exp="f.ch_aw_root = f.ch_a_root +f.ch_a_point +f.ch_w_root"]
;■ヒロインＢ＋ヒロインＷの場合
[eval exp="f.ch_bw_root = f.ch_b_root +f.ch_b_point +f.ch_w_root"]

;■「ＡＥＶ０２」「ＢＥＶ０２」発生条件
[if exp="(f.ch_aw_root >= 14 && f.ch_aw_root < 99 ) || (f.ch_bw_root >= 14 && f.ch_bw_root < 99)"]
[if exp="f.AEV02_on != 1 && f.AEV01_on == 1 && f.ch_a_root >= f.ch_b_root "][eval exp="f.AEV02_on = 1"][call storage="AEV02.ks"][jump target=*yoru_exit][endif]
[if exp="f.BEV02_on != 1 && f.BEV01_on == 1 && f.ch_a_root <  f.ch_b_root "][eval exp="f.BEV02_on = 1"][call storage="BEV02.ks"][jump target=*yoru_exit][endif]
[endif]

;■「ＡＥＶ０１」「ＢＥＶ０１」発生条件
[if exp="(f.ch_aw_root >=  7 && f.ch_aw_root < 14 ) || (f.ch_bw_root >=  7 && f.ch_bw_root < 14)"]
[if exp="f.AEV01_on != 1                    && f.ch_a_root >= f.ch_b_root "][eval exp="f.AEV01_on = 1"][call storage="AEV01.ks"][jump target=*yoru_exit][endif]
[if exp="f.BEV01_on != 1                    && f.ch_a_root <  f.ch_b_root "][eval exp="f.BEV01_on = 1"][call storage="BEV01.ks"][jump target=*yoru_exit][endif]
[endif]


;■上記に当てはまらない場合
[if exp="f.ch_x_root == 8"][bgmstop][call storage="EL01.ks"][bgmstop][endif]
[if exp="f.ch_x_root ==12"][bgmstop][call storage="EL02.ks"][bgmstop][endif]
[if exp="f.ch_x_root ==16"][bgmstop][call storage="EL03.ks"][bgmstop][endif]
[jump target=*yoru_exit]


;■１４ターン目夜
;■MEV09
*yoru_EV14
[bgmstop][call storage="MEV09.ks"][bgmstop]
[jump target=*yoru_exit]

;■２０ターン目夜
*yoru_EV20
;■同じ夜に発生する選挙番組関連の夜イベントの前にＡＥＶ・ＢＥＶが発生する機会がある。
[if exp="(f.ch_a_root >= 7 && f.ch_a_root < 14 ) || (f.ch_b_root >= 7 && f.ch_b_root < 14 )"]
[if exp="f.AEV01_on != 1 && f.ch_a_root >= f.ch_b_root "][eval exp="f.AEV01_on = 1"][call storage="AEV01.ks"][jump target=*yoru_exit][endif]
[if exp="f.BEV01_on != 1 && f.ch_a_root <  f.ch_b_root "][eval exp="f.BEV01_on = 1"][call storage="BEV01.ks"][jump target=*yoru_exit][endif]
[endif]

[if exp="(f.ch_a_root >= 14 ) || (f.ch_b_root >= 14 )"]
[if exp="f.AEV02_on != 1 && f.ch_a_root >= f.ch_b_root "][eval exp="f.AEV02_on = 1"][call storage="AEV02.ks"][jump target=*yoru_exit][endif]
[if exp="f.BEV02_on != 1 && f.ch_a_root <  f.ch_b_root "][eval exp="f.BEV02_on = 1"][call storage="BEV02.ks"][jump target=*yoru_exit][endif]
[endif]

[bgmstop][call storage="MEV07.ks"][bgmstop]
[jump target=*yoru_exit]

;■２１ターン目夜
*yoru_EV21
;■　条件
;■　選挙広報活動が成功し、
;■　軍閥支持率・視聴率ともに６０％以上、
;■　リアン好感度３以上、
;■　「Ｗ０１」を見ている場合、
;■　「ＣＥＶ０１」を見ている場合、
;■効果
;■　21ターン目の夜は、「ＣＥＶ０２」が発生。
;■
;■番組選択をして、ヒロインの思惑通りに進んでしまった場合は、
;■ヒロインＡ勝利かつ「ＡＥＶ０２」見ている　→「ＡＥＶ０３」発生
;■または
;■ヒロインＢ勝利かつ「ＢＥＶ０２」見ている　→「ＢＥＶ０３」発生

;「ＣＥＶ０２」発生条件
[if exp="(f.A14_win =='軍' || f.B14_win =='軍') && f.sijiritu >= 60 && f.tv_onare_old >= 60 && f.ch_c_point >= 3 && f.CEV01_on == 1 && f.set_w01 == 1"]
[eval exp="f.set_CEV02 = 1"][call storage="CEV02.ks"][jump target=*yoru_exit][endif]

;選挙の結果によってイベント決定
;「ＡＥＶ０３」「ＢＥＶ０３」発生条件
[if exp="f.A14_win =='王'&& f.AEV02_on == 1 "][eval exp="f.set_AEV03 =1"][call storage="AEV03.ks"][jump target=*yoru_exit][endif]
[if exp="f.B14_win =='王'&& f.BEV02_on == 1 "][eval exp="f.set_BEV03 =1"][call storage="BEV03.ks"][jump target=*yoru_exit][endif]

;上記の条件を満たしていない場合
[call storage="EL04.ks"]
[jump target=*yoru_exit]


;■２２ターン目夜
;■ER11　
*yoru_EV22
[bgmstop][call storage="ER11.ks"][bgmstop]
[jump target=*yoru_exit]

;■２３ターン目夜
;■ER12　
*yoru_EV23
[bgmstop][call storage="ER12.ks"][bgmstop]
[jump target=*yoru_exit]


;■トリガーイベント終了処理
*yoru_exit
[bgmstop]
[eval exp="f.A14_win ='無'"][eval exp="f.B14_win ='無'"]
;■夜ＦＡＳＥ　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■ターン終了ＦＡＳＥ
*slg00_0058



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■初期化
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数　集計処理
;■ルート進行カウント
[eval exp="f.ch_x_root += 1"]

;■好感度集計
[eval exp="f.ch_a_point =f.ch_a_point +f.ch_a_point_get"][eval exp="f.ch_a_point_get = 0"]
[eval exp="f.ch_b_point =f.ch_b_point +f.ch_b_point_get"][eval exp="f.ch_b_point_get = 0"]
[eval exp="f.ch_c_point =f.ch_c_point +f.ch_c_point_get"][eval exp="f.ch_c_point_get = 0"]

;■ルート進行　最終日判定
[if exp="f.ch_x_root >= 25"][jump target=*slg00_0060][endif]




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■一日の終了エフェクト　夜→朝
;■　夜→朝
[setwindow]
[mesw_off]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=ex3]
[ud time=500]
[wait time=2000]
[loadbg storage=ex1]
[ud time=500]
[wait time=1000]
[mesw_on]



[jump target=*slg00_0000]
;■ＳＬＧブロック　ループ終了
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■エンディング判定
*slg00_0060

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]
[setwindow]


;★★★エンド条件
;--------------------------------------------------
;■主人公支配ＥＮＤ
;　　「W-05」を実行済み。
;　　軍閥支持率・視聴率ともに９５％以上。

[if exp="f.sijiritu >= 95 && f.tv_onare_old >= 95 && f.set_w05 == 1"]
[eval exp="f.END05_on =1"][jump target=*slg00_0070]
[endif]


;--------------------------------------------------
;■現政権側勝利のリアンＥＮＤ
;　　「w-01」を実行済み。
;　　「ＣＥＶ０２」を見ている。
;　　リアン好感度　４以上
;　　軍閥支持率・視聴率ともに80％以上。
[if exp="f.sijiritu >= 80 && f.tv_onare_old >= 80 && f.ch_c_point >= 4 && f.set_w01 == 1 && f.set_CEV02 == 1"]
[eval exp="f.END02_on =1"][jump target=*slg00_0070]
[endif]

;--------------------------------------------------
;■現政権側勝利の普通ＥＮＤ
;　　軍閥支持率60％以上。
[if exp="f.sijiritu >= 60"]
[eval exp="f.END01_on =1"][jump target=*slg00_0070]
[endif]


;--------------------------------------------------
;■王制側勝利のカチェアＥＮＤ
;　　「A-14　カチェア選挙広報活動」を実行済み。
;　　「ＡＥＶ０３」を見ている。
;　　軍閥支持率20％以下
[if exp="f.sijiritu <= 20 && f.set_a14 == 1 && f.set_AEV03 == 1"]
[eval exp="f.END03_on =1"][jump target=*slg00_0070]
[endif]


;--------------------------------------------------
;■王制側勝利のマイヤＥＮＤ
;　　「B-14　マイヤ選挙広報活動」を実行済み。
;　　「ＢＥＶ０３」を見ている。
;　　軍閥支持率20％以下
[if exp="f.sijiritu <= 20 && f.set_b14 == 1 && f.set_BEV03 == 1"]
[eval exp="f.END04_on =1"][jump target=*slg00_0070]
[endif]

;--------------------------------------------------
;■失敗ＥＮＤ
;　全ての条件に合わなかったとき。

[eval exp="f.END06_on =1"]
[jump target=*slg00_0070]

;--------------------------------------------------
;■死亡ＥＮＤ
;　番組選択開始の時、１個も番組が無い場合


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■エンディング
*slg00_0070

;■エンディング直前　独白
[call storage="EL06.ks"]

;■エンディング
[if exp="f.END01_on == 1"][call storage="END01.ks"][eval exp="f.END01_on =0"][jump target=*slg00_0075][endif]
[if exp="f.END02_on == 1"][call storage="END02.ks"][eval exp="f.END02_on =0"][jump target=*slg00_0075][endif]
[if exp="f.END03_on == 1"][call storage="END03.ks"][eval exp="f.END03_on =0"][jump target=*slg00_0075][endif]
[if exp="f.END04_on == 1"][call storage="END04.ks"][eval exp="f.END04_on =0"][jump target=*slg00_0075][endif]
[if exp="f.END05_on == 1"][call storage="END05.ks"][eval exp="f.END05_on =0"][jump target=*slg00_0075][endif]
[if exp="f.END06_on == 1"][call storage="END06.ks"][eval exp="f.END06_on =0"][jump target=*slg00_0075][endif]
[jump target=*slg00_0075]

;■選択する番組が、なくなってしまった場合の　ＤＥＡＴＨエンド
*slg00_0073
[call storage="END07.ks"]
[jump target=*slg00_0075]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■エンディングムービー
*slg00_0075
;●黒画面　メッセージウインドウ消し
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage=bg000000]
[ud time=500]
[mesw_off]

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;■ＢＧＭ設定
[bgmstop]

;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]

;■Ｒメニュー禁止
[rclick enabled=false]

;■エンディングムービー
;[call storage="storyworks.ks" target=*move_end]

;■エンディングムービー（スクリプト）
[call storage="demo.ks"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■終了処理（storyworks.ks用）
[win_full]
[eval exp="f.nextread  = 'end'"]

;■Ｒメニュー禁止　解除
[rclick enabled=true]

[return]

