;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/29　更新者　白土


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定ブロック　開始処理

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定　番組登録

;■番組管理番号　初期値
[eval exp="f.bangumi      =  1"]
[eval exp="f.slect_name_  = []"]
[eval exp="f.slect_no_    = []"]

;■番組登録開始ターン変数　初期値
[eval exp="f.set_a01_get = 99"][eval exp="f.set_b01_get = 99"][eval exp="f.set_w01_get = 99"]
[eval exp="f.set_a02_get = 99"][eval exp="f.set_b02_get = 99"][eval exp="f.set_w02_get = 99"]
[eval exp="f.set_a03_get = 99"][eval exp="f.set_b03_get = 99"][eval exp="f.set_w03_get = 99"]
[eval exp="f.set_a04_get = 99"][eval exp="f.set_b04_get = 99"][eval exp="f.set_w04_get = 99"]
[eval exp="f.set_a05_get = 99"][eval exp="f.set_b05_get = 99"][eval exp="f.set_w05_get = 99"]
[eval exp="f.set_a06_get = 99"][eval exp="f.set_b06_get = 99"][eval exp="f.set_w06_get = 99"]
[eval exp="f.set_a07_get = 99"][eval exp="f.set_b07_get = 99"][eval exp="f.set_w07_get = 99"]
[eval exp="f.set_a08_get = 99"][eval exp="f.set_b08_get = 99"]
[eval exp="f.set_a09_get = 99"][eval exp="f.set_b09_get = 99"]
[eval exp="f.set_a10_get = 99"][eval exp="f.set_b10_get = 99"]
[eval exp="f.set_a11_get = 99"][eval exp="f.set_b11_get = 99"]
[eval exp="f.set_a12_get = 99"][eval exp="f.set_b12_get = 99"]
[eval exp="f.set_a13_get = 99"][eval exp="f.set_b13_get = 99"]
[eval exp="f.set_a14_get = 99"][eval exp="f.set_b14_get = 99"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定　現在支持率　現在視聴率　ニーズ　民衆感情（世論）

;■支持率
[eval exp="f.sijiritu   = 25"]
;■支持率　計算用変数
[eval exp="f.sijiritu_x =  0"]

;■視聴率＿現在
[eval exp="f.tv_onare_new = 10"]
;■視聴率＿前回
[eval exp="f.tv_onare_old = 10"]


;■凌辱
[eval exp="f.need_00 = 3"]
;■恥辱
[eval exp="f.need_01 = 2"]
;■バカ
[eval exp="f.need_02 = 0"]

;■民衆の感情値（初期ステータスは「同情」）
;■　渇望……次の番組はまだかまだかと待ちかねてる状態。
;■　怒り……王制に対して怒りを感じている状態。
;■　同情……王制に対して同情を抱いている状態。
;■　反発……軍閥に対して強い反発心を抱いている状態。
[eval exp="f.kanjyou = '同情'"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定　ヒロイン好感度　ルート進行度

;■ヒロインルート進行度　ヒロイン好感度
[eval exp="f.ch_a_root = 0"][eval exp="f.ch_a_point = 0"]
[eval exp="f.ch_b_root = 0"][eval exp="f.ch_b_point = 0"]
[eval exp="f.ch_c_root = 0"][eval exp="f.ch_c_point = 0"]
[eval exp="f.ch_w_root = 0"]

;■シナリオ進行度
[eval exp="f.ch_x_root = 1"]

;■シーンステータス初期値
;00　内容（タイトル）
;01　出現ターン
;02　趣向　（凌辱：恥辱：バカ）
;03　視聴影響値（視聴率の最大増減幅）パーセント表示
;　　計算する時は、（視聴影響値/100）とすること
;04　民衆感情値（世論属性）　（渇望：怒り：同情：反発）

;-------------------------------------------------------------
;姉姫（凌辱/２　恥辱/２　バカ/２）
;-------------------------------------------------------------
[eval exp="f.a01_00 = '断頭台ＳＥＸ'        "][eval exp="f.a01_01 =99"][eval exp="f.a01_02 = '凌辱'"][eval exp="f.a01_03 = 100"][eval exp="f.a01_04 ='怒り'"]
[eval exp="f.a02_00 = '手淫公開'            "][eval exp="f.a02_01 =99"][eval exp="f.a02_02 = '恥辱'"][eval exp="f.a02_03 = 120"][eval exp="f.a02_04 ='渇望'"]
[eval exp="f.a03_00 = '公開裁判'            "][eval exp="f.a03_01 =99"][eval exp="f.a03_02 = '恥辱'"][eval exp="f.a03_03 = 100"][eval exp="f.a03_04 ='怒り'"]
[eval exp="f.a04_00 = '罪人連衡'            "][eval exp="f.a04_01 =99"][eval exp="f.a04_02 = '凌辱'"][eval exp="f.a04_03 =  80"][eval exp="f.a04_04 ='渇望'"]
[eval exp="f.a05_00 = '叙勲式典'            "][eval exp="f.a05_01 =99"][eval exp="f.a05_02 = 'バカ'"][eval exp="f.a05_03 =  80"][eval exp="f.a05_04 ='渇望'"]
[eval exp="f.a06_00 = '敵兵贖罪'            "][eval exp="f.a06_01 =99"][eval exp="f.a06_02 = '恥辱'"][eval exp="f.a06_03 = 150"][eval exp="f.a06_04 ='同情'"]
[eval exp="f.a07_00 = '孤児院慰問'          "][eval exp="f.a07_01 =99"][eval exp="f.a07_02 = '凌辱'"][eval exp="f.a07_03 = 150"][eval exp="f.a07_04 ='怒り'"]
[eval exp="f.a08_00 = '医療現場視察'        "][eval exp="f.a08_01 =99"][eval exp="f.a08_02 = '恥辱'"][eval exp="f.a08_03 =  80"][eval exp="f.a08_04 ='渇望'"]
[eval exp="f.a09_00 = '老人ホーム慰問'      "][eval exp="f.a09_01 =99"][eval exp="f.a09_02 = '凌辱'"][eval exp="f.a09_03 = 120"][eval exp="f.a09_04 ='怒り'"]
[eval exp="f.a10_00 = '秘部実況放送'        "][eval exp="f.a10_01 =99"][eval exp="f.a10_02 = '凌辱'"][eval exp="f.a10_03 = 150"][eval exp="f.a10_04 ='渇望'"]
[eval exp="f.a11_00 = '限界挿入チン記録'    "][eval exp="f.a11_01 =99"][eval exp="f.a11_02 = '凌辱'"][eval exp="f.a11_03 = 120"][eval exp="f.a11_04 ='同情'"]
[eval exp="f.a12_00 = '乳フェラ選手権'      "][eval exp="f.a12_01 =99"][eval exp="f.a12_02 = 'バカ'"][eval exp="f.a12_03 = 150"][eval exp="f.a12_04 ='同情'"]
[eval exp="f.a13_00 = '公衆便姫'            "][eval exp="f.a13_01 =99"][eval exp="f.a13_02 = '凌辱'"][eval exp="f.a13_03 = 200"][eval exp="f.a13_04 ='同情'"]
[eval exp="f.a14_00 = '選挙放送'            "][eval exp="f.a14_01 =99"][eval exp="f.a14_02 = '凌辱'"][eval exp="f.a14_03 = 250"][eval exp="f.a14_04 ='反発'"]
;-------------------------------------------------------------
;妹姫（凌辱/６　恥辱/６　バカ/２）
;-------------------------------------------------------------
[eval exp="f.b01_00 = '姫の贖罪'            "][eval exp="f.b01_01 =99"][eval exp="f.b01_02 = '凌辱'"][eval exp="f.b01_03 = 200"][eval exp="f.b01_04 ='怒り'"]
[eval exp="f.b02_00 = '公開失禁'            "][eval exp="f.b02_01 =99"][eval exp="f.b02_02 = '恥辱'"][eval exp="f.b02_03 =  80"][eval exp="f.b02_04 ='渇望'"]
[eval exp="f.b03_00 = '公開裁判'            "][eval exp="f.b03_01 =99"][eval exp="f.b03_02 = '恥辱'"][eval exp="f.b03_03 = 100"][eval exp="f.b03_04 ='怒り'"]
[eval exp="f.b04_00 = 'マイヤ処刑？'        "][eval exp="f.b04_01 =99"][eval exp="f.b04_02 = '凌辱'"][eval exp="f.b04_03 = 150"][eval exp="f.b04_04 ='同情'"]
[eval exp="f.b05_00 = 'おめざめバズーカ'    "][eval exp="f.b05_01 =99"][eval exp="f.b05_02 = 'バカ'"][eval exp="f.b05_03 =  80"][eval exp="f.b05_04 ='同情'"]
[eval exp="f.b06_00 = 'ペットの躾け方'      "][eval exp="f.b06_01 =99"][eval exp="f.b06_02 = '恥辱'"][eval exp="f.b06_03 = 100"][eval exp="f.b06_04 ='渇望'"]
[eval exp="f.b07_00 = '孤児院慰問'          "][eval exp="f.b07_01 =99"][eval exp="f.b07_02 = '凌辱'"][eval exp="f.b07_03 = 150"][eval exp="f.b07_04 ='怒り'"]
[eval exp="f.b08_00 = '医療現場視察'        "][eval exp="f.b08_01 =99"][eval exp="f.b08_02 = '恥辱'"][eval exp="f.b08_03 = 100"][eval exp="f.b08_04 ='渇望'"]
[eval exp="f.b09_00 = '老人ホーム慰問'      "][eval exp="f.b09_01 =99"][eval exp="f.b09_02 = '恥辱'"][eval exp="f.b09_03 = 120"][eval exp="f.b09_04 ='同情'"]
[eval exp="f.b10_00 = '軍用犬の飼育'        "][eval exp="f.b10_01 =99"][eval exp="f.b10_02 = '凌辱'"][eval exp="f.b10_03 = 180"][eval exp="f.b10_04 ='同情'"]
[eval exp="f.b11_00 = '女体講習会'          "][eval exp="f.b11_01 =99"][eval exp="f.b11_02 = '恥辱'"][eval exp="f.b11_03 = 120"][eval exp="f.b11_04 ='渇望'"]
[eval exp="f.b12_00 = '時間耐久ＳＥＸ'      "][eval exp="f.b12_01 =99"][eval exp="f.b12_02 = '凌辱'"][eval exp="f.b12_03 = 180"][eval exp="f.b12_04 ='同情'"]
[eval exp="f.b13_00 = '初めてのお使い。'    "][eval exp="f.b13_01 =99"][eval exp="f.b13_02 = 'バカ'"][eval exp="f.b13_03 = 120"][eval exp="f.b13_04 ='渇望'"]
[eval exp="f.b14_00 = '選挙放送'            "][eval exp="f.b14_01 =99"][eval exp="f.b14_02 = '凌辱'"][eval exp="f.b14_03 = 250"][eval exp="f.b14_04 ='反発'"]
;-------------------------------------------------------------
;姉妹（凌辱/３　恥辱/２　バカ/２）
;-------------------------------------------------------------
[eval exp="f.w01_00 = 'お姫様と奴隷'        "][eval exp="f.w01_01 =99"][eval exp="f.w01_02 = '凌辱'"][eval exp="f.w01_03 = 120"][eval exp="f.w01_04 ='渇望'"]
[eval exp="f.w02_00 = '慰問ストリップ'      "][eval exp="f.w02_01 =99"][eval exp="f.w02_02 = '恥辱'"][eval exp="f.w02_03 = 100"][eval exp="f.w02_04 ='渇望'"]
[eval exp="f.w03_00 = '射精大会'            "][eval exp="f.w03_01 =99"][eval exp="f.w03_02 = 'バカ'"][eval exp="f.w03_03 = 150"][eval exp="f.w03_04 ='同情'"]
[eval exp="f.w04_00 = '義勇兵慰問フェラ'    "][eval exp="f.w04_01 =99"][eval exp="f.w04_02 = '凌辱'"][eval exp="f.w04_03 = 120"][eval exp="f.w04_04 ='怒り'"]
[eval exp="f.w05_00 = '支援者パーティ'      "][eval exp="f.w05_01 =99"][eval exp="f.w05_02 = '凌辱'"][eval exp="f.w05_03 = 200"][eval exp="f.w05_04 ='渇望'"]
[eval exp="f.w06_00 = '姉妹レズ'            "][eval exp="f.w06_01 =99"][eval exp="f.w06_02 = '恥辱'"][eval exp="f.w06_03 = 150"][eval exp="f.w06_04 ='同情'"]
[eval exp="f.w07_00 = '泥んこレスリング'    "][eval exp="f.w07_01 =99"][eval exp="f.w07_02 = 'バカ'"][eval exp="f.w07_03 = 180"][eval exp="f.w07_04 ='同情'"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定　セーブタイトル名リスト
;セーブ用のラベルをセットする際に　*|&sf.セーブタイトル名　とする

;セーブファイル名リスト
[eval exp="sf.sname_ss01_01 = '放送選択　－－　１週目　前半　－－'"]
[eval exp="sf.sname_ss01_02 = '放送選択　－－　１週目　後半　－－'"]
[eval exp="sf.sname_ss01_03 = '放送選択　－－　２週目　前半　－－'"]
[eval exp="sf.sname_ss01_04 = '放送選択　－－　２週目　後半　－－'"]
[eval exp="sf.sname_ss01_05 = '放送選択　－－　３週目　前半　－－'"]
[eval exp="sf.sname_ss01_06 = '放送選択　－－　３週目　後半　－－'"]
[eval exp="sf.sname_ss01_07 = '放送選択　－－　４週目　前半　－－'"]
[eval exp="sf.sname_ss01_08 = '放送選択　－－　４週目　後半　－－'"]
[eval exp="sf.sname_ss01_09 = '放送選択　－－　５週目　前半　－－'"]
[eval exp="sf.sname_ss01_10 = '放送選択　－－　５週目　後半　－－'"]
[eval exp="sf.sname_ss01_11 = '放送選択　－－　６週目　前半　－－'"]
[eval exp="sf.sname_ss01_12 = '放送選択　－－　６週目　後半　－－'"]
[eval exp="sf.sname_ss01_13 = '放送選択　－－　７週目　前半　－－'"]
[eval exp="sf.sname_ss01_14 = '放送選択　－－　７週目　後半　－－'"]
[eval exp="sf.sname_ss01_15 = '放送選択　－－　８週目　前半　－－'"]
[eval exp="sf.sname_ss01_16 = '放送選択　－－　８週目　後半　－－'"]
[eval exp="sf.sname_ss01_17 = '放送選択　－－　９週目　前半　－－'"]
[eval exp="sf.sname_ss01_18 = '放送選択　－－　９週目　後半　－－'"]
[eval exp="sf.sname_ss01_19 = '放送選択　－－１０週目　前半　－－'"]
[eval exp="sf.sname_ss01_20 = '放送選択　－－１０週目　後半　－－'"]
[eval exp="sf.sname_ss01_21 = '放送選択　－－１１週目　前半　－－'"]
[eval exp="sf.sname_ss01_22 = '放送選択　－－１１週目　後半　－－'"]
[eval exp="sf.sname_ss01_23 = '放送選択　－－１２週目　前半　－－'"]
[eval exp="sf.sname_ss01_24 = '放送選択　－－１２週目　後半　－－'"]

[eval exp="sf.sname_A01=      '皇女の後ろにオドロキの大行列？！　'"]
[eval exp="sf.sname_A02=      '皇女様の高貴な手淫を間近で大公開！'"]
[eval exp="sf.sname_A03=      '皇女様の本性暴露、公開裁判今日判決'"]
[eval exp="sf.sname_A04=      'この顔を覚えておけ　街中全裸で行進'"]
[eval exp="sf.sname_A05=      '英雄に奉仕　皇女涙を流して大喜び　'"]
[eval exp="sf.sname_A06=      '新政権、王軍に慈悲のニ択　　　　　'"]
[eval exp="sf.sname_A07=      '皇女、孤児院を慰問　子供達の反応は'"]
[eval exp="sf.sname_A08=      'バラライカ最先端　医療現場視察　　'"]
[eval exp="sf.sname_A09=      '巨乳皇女、体当たり老人ホーム慰問　'"]
[eval exp="sf.sname_A10=      '潜入！　バラライカ皇女秘部実況放送'"]
[eval exp="sf.sname_A11=      '驚愕　限界に挑戦　異物挿入チン記録'"]
[eval exp="sf.sname_A12=      '巨乳ｖｓ爆乳　第１回乳フェラ選手権'"]
[eval exp="sf.sname_A13=      '皇女の穴は誰のモノ？公衆便器姫現る'"]
[eval exp="sf.sname_A14=      '選挙広報撮影　　　　　　　　　　　'"]

[eval exp="sf.sname_AEV01=    '貴方と話すことなど何もありません　'"]
[eval exp="sf.sname_AEV02=    'たとえ身体を汚されても……　　　　'"]
[eval exp="sf.sname_AEV03=    '何故こんなにも、気になるんだ……　'"]
[eval exp="sf.sname_AT01=     'コレは夢よ……悪い夢だわ……　　　'"]
[eval exp="sf.sname_AT02=     '貴方は私からこれ以上何を奪いたいの'"]
[eval exp="sf.sname_AT03=     '何時いかなる時でも……　　　　　　'"]
[eval exp="sf.sname_AT04=     '姉であり、妹でもある存在　　　　　'"]
[eval exp="sf.sname_AT05=     '兄の行方を言え　　　　　　　　　　'"]
[eval exp="sf.sname_AT06=     'ケンジ……貴方いったい何者なの……'"]
[eval exp="sf.sname_AT07=     '……変よ、アイツ……　　　　　　　'"]

[eval exp="sf.sname_B01=      '見ろ！　これがバラライカの現状だ　'"]
[eval exp="sf.sname_B02=      '公衆の面前で失禁　皇女の聖水大公開'"]
[eval exp="sf.sname_B03=      'マイヤ皇女の本性か？公開裁判珍事件'"]
[eval exp="sf.sname_B04=      '皇女銃殺？！戦闘地域最前線レポート'"]
[eval exp="sf.sname_B05=      'おめざめバズーカ　マイヤ姫編　　　'"]
[eval exp="sf.sname_B06=      'バラライカ式　今月のペットの躾講座'"]
[eval exp="sf.sname_B07=      'マイヤ皇女孤児院を慰問、実状を見聞'"]
[eval exp="sf.sname_B08=      'よい子の、女体観察実験室　　　　　'"]
[eval exp="sf.sname_B09=      '皇女驚愕　老人ホーム視察レポート　'"]
[eval exp="sf.sname_B10=      '雌犬皇女　軍用犬の飼育に挑戦　　　'"]
[eval exp="sf.sname_B11=      'よい子の、女体観察講習　　　　　　'"]
[eval exp="sf.sname_B12=      '人間の限界に挑戦　時間耐久ＳＥＸ　'"]
[eval exp="sf.sname_B13=      'はじめてのお使い　　　　　　　　　'"]
[eval exp="sf.sname_B14=      '新政権広告撮影　　　　　　　　　　'"]

[eval exp="sf.sname_BEV01=    '俺は、抱きたい時にお前を抱く　　　'"]
[eval exp="sf.sname_BEV02=    'マイヤ自殺未遂事件　　　　　　　　'"]
[eval exp="sf.sname_BEV03=    '何処か遠くを見つめるような視線　　'"]

[eval exp="sf.sname_BT01=     '執拗にマイヤを責めるリアン　　　　'"]
[eval exp="sf.sname_BT02=     'あの様な弱い人間を見ると虫酸が走る'"]
[eval exp="sf.sname_BT03=     '先王について、知っている事を教えろ'"]
[eval exp="sf.sname_BT04=     '壊れかけた人形　　　　　　　　　　'"]
[eval exp="sf.sname_BT05=     'アクラス王子の居場所を教えろ！！　'"]
[eval exp="sf.sname_BT06=     'マイヤ……ケンジさんに聞きたい事が'"]
[eval exp="sf.sname_BT07=     '俺も、マイヤへの接し方に変化が……'"]

[eval exp="sf.sname_CEV01=    'ケンジには報酬を受ける権利がある　'"]
[eval exp="sf.sname_CEV02=    '報酬を受る権利というかこれは義務だ'"]
[eval exp="sf.sname_CEV02_01= '真実を告げる者　　　　　　　　　　'"]
[eval exp="sf.sname_CT01=     '俺が、挨拶の仕方を教えてやろう　　'"]
[eval exp="sf.sname_CT02=     'リアンコレクション　黒の章　　　　'"]
[eval exp="sf.sname_CT03=     'バラライカの未来　　　　　　　　　'"]
[eval exp="sf.sname_CT04=     '母の思い出　　　　　　　　　　　　'"]
[eval exp="sf.sname_CT05=     '日本は本当に良い国だ　　　　　　　'"]
[eval exp="sf.sname_CT06=     '二人の距離　　　　　　　　　　　　'"]
[eval exp="sf.sname_CT07=     '勝負の行方　　　　　　　　　　　　'"]

[eval exp="sf.sname_DL01=     'チュートリアル　　　　　　　　　　'"]
[eval exp="sf.sname_DL02=     '街頭にて　　　　　　　　　　　　　'"]
[eval exp="sf.sname_DL03=     '慌しき朝　　　　　　　　　　　　　'"]
[eval exp="sf.sname_DL04=     'アクラスという男　　　　　　　　　'"]
[eval exp="sf.sname_DL05=     '名もなき朝　　　　　　　　　　　　'"]
[eval exp="sf.sname_DL06=     '名もなき朝　　　　　　　　　　　　'"]

[eval exp="sf.sname_EL01=     '空に浮かぶ月　　　　　　　　　　　'"]
[eval exp="sf.sname_EL02=     'どうやらお前には早すぎたようだ　　'"]
[eval exp="sf.sname_EL03=     'たまにはこんなプレイも……　　　　'"]
[eval exp="sf.sname_EL04=     'サケ　サメ　タラ　コイ　　　　　　'"]
[eval exp="sf.sname_EL05=     '王子の事を考える　　　　　　　　　'"]

[eval exp="sf.sname_END01=    '現政権側　エンディング　１　　　　'"]
[eval exp="sf.sname_END02=    '現政権側　エンディング　２　　　　'"]
[eval exp="sf.sname_END03=    '王制側　エンディング　１　　　　　'"]
[eval exp="sf.sname_END04=    '王制側　エンディング　２　　　　　'"]
[eval exp="sf.sname_END05=    'ハーレムエンド　　　　　　　　　　'"]
[eval exp="sf.sname_END06=    'ＢＡＤエンド　　　　　　　　　　　'"]
[eval exp="sf.sname_END07=    'ＤＥＡＴＨエンド　　　　　　　　　'"]

[eval exp="sf.sname_ER01=     '次回の番組は……　　　　　　　　　'"]
[eval exp="sf.sname_ER02=     '深夜の玄関ホール　　　　　　　　　'"]
[eval exp="sf.sname_ER03=     '『役割』　　　　　　　　　　　　　'"]
[eval exp="sf.sname_ER04=     '深夜の訪問者　　　　　　　　　　　'"]
[eval exp="sf.sname_ER05=     '堕ちてゆく皇女　　　　　　　　　　'"]
[eval exp="sf.sname_ER06=     '疲労困憊　　　　　　　　　　　　　'"]
[eval exp="sf.sname_ER07=     '調査結果から判断する最高の選択は？'"]
[eval exp="sf.sname_ER08=     '新しいアイディアを組み込んでみよう'"]
[eval exp="sf.sname_ER09=     '企画書が捨てられる理由　　　　　　'"]
[eval exp="sf.sname_ER10=     'たまにはこんな日もある　　　　　　'"]
[eval exp="sf.sname_ER11=     'これから先の運命　　　　　　　　　'"]
[eval exp="sf.sname_ER11_01=  'これから先の運命（支持率が高い）　'"]
[eval exp="sf.sname_ER11_02=  'これから先の運命（支持率は平均的）'"]
[eval exp="sf.sname_ER11_03=  'これから先の運命（支持率が低い）　'"]
[eval exp="sf.sname_ER12=     '最後の政見放送は……　　　　　　　'"]

[eval exp="sf.sname_MEV01=    '企画書　『叙勲式？』　　　　　　　'"]
[eval exp="sf.sname_MEV02=    '企画書　『処刑命令書』　　　　　　'"]
[eval exp="sf.sname_MEV03=    '企画書　『施設慰問』　　　　　　　'"]
[eval exp="sf.sname_MEV04=    '企画書　『対決モノ？』　　　　　　'"]
[eval exp="sf.sname_MEV05=    '企画書　『日本文化万歳』　　　　　'"]
[eval exp="sf.sname_MEV06=    '企画書　『軍用犬の発情報告』　　　'"]
[eval exp="sf.sname_MEV07=    '企画書　『選挙前の攻防』　　　　　'"]
[eval exp="sf.sname_MEV08=    '企画書　『リアンの夢？』　　　　　'"]
[eval exp="sf.sname_MEV09=    '企画書　『天然のタチバナ』　　　　'"]
[eval exp="sf.sname_MEV10=    '企画書　『ケンジ式ストレス解消法』'"]

[eval exp="sf.sname_ML01=     'さぁ仕事するか　　　　　　　　　　'"]
[eval exp="sf.sname_ML02=     '今日は放送日だ　　　　　　　　　　'"]
[eval exp="sf.sname_ML03=     'カチェアの事を考える　　　　　　　'"]
[eval exp="sf.sname_ML04=     'マイヤの事を考える　　　　　　　　'"]
[eval exp="sf.sname_ML05=     'リアンの事を考える　　　　　　　　'"]
[eval exp="sf.sname_ML06=     'カラストの事を考え……たく無いなぁ'"]
[eval exp="sf.sname_ML07=     'プロパガンダ成功か？！　　　　　　'"]
[eval exp="sf.sname_ML08=     'プロパガンダ失敗か？！　　　　　　'"]
[eval exp="sf.sname_ML09=     '最後の一手　　　　　　　　　　　　'"]

[eval exp="sf.sname_OP01=     'バラライカへ　　　　　　　　　　　'"]
[eval exp="sf.sname_OP01_01=  '招いた者たち　　　　　　　　　　　'"]
[eval exp="sf.sname_OP01_02=  '揺らめく憎悪の炎　　　　　　　　　'"]
[eval exp="sf.sname_OP01_03=  '二人の皇女　　　　　　　　　　　　'"]
[eval exp="sf.sname_OP02=     'カラスト将軍の要求　　　　　　　　'"]
[eval exp="sf.sname_OP02_01=  '破られた約束　　　　　　　　　　　'"]
[eval exp="sf.sname_OP02_02=  '絶望と言う名の宣告　　　　　　　　'"]

[eval exp="sf.sname_RE01=     'リアンの報告（視聴率が極めて高い）'"]
[eval exp="sf.sname_RE02=     'リアンの報告（視聴率が高い）　　　'"]
[eval exp="sf.sname_RE03=     'リアンの報告（視聴率が中くらい）　'"]
[eval exp="sf.sname_RE04=     'リアンの報告（視聴率が低い）　　　'"]
[eval exp="sf.sname_RE05=     'リアンの報告（視聴率が極めて低い）'"]
[eval exp="sf.sname_RE06=     'リアンの報告（支持率が極めて高い）'"]
[eval exp="sf.sname_RE07=     'リアンの報告（支持率が高い）　　　'"]
[eval exp="sf.sname_RE08=     'リアンの報告（支持率が中くらい）　'"]
[eval exp="sf.sname_RE09=     'リアンの報告（支持率が低い）　　　'"]
[eval exp="sf.sname_RE10=     'リアンの報告（支持率が極めて低い）'"]

[eval exp="sf.sname_W01=      '宰相とレポーターがお姫様に挑戦？！'"]
[eval exp="sf.sname_W02=      '突撃最前線　皇女慰問ストリップ　　'"]
[eval exp="sf.sname_W03=      '飛び出せ元気　バラライカ射精大会　'"]
[eval exp="sf.sname_W04=      '義勇兵を慰問　皇女姉妹究極の癒し術'"]
[eval exp="sf.sname_W05=      '支援者パーティ中継放送　　　　　　'"]
[eval exp="sf.sname_W06=      '淫乱皇女　交じり合う愛液の果てに　'"]
[eval exp="sf.sname_W07=      '絶叫　泥レスリングタッグマッチ　　'"]

[eval exp="sf.sname_WT01=     '皇女の食事　　　　　　　　　　　　'"]
[eval exp="sf.sname_WT02=     '嘘か……それとも、本当か……　　　'"]
[eval exp="sf.sname_WT03=     'ぷるぷる震えている様は雌の子犬だな'"]
[eval exp="sf.sname_WT04=     '白くてドロリとしたとても濃い液体　'"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■変数初期値設定ブロック　終了処理

;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=true restore=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]


[return]

