[free layer="2" name="shop_icon" ]

;[tb_start_text mode=3 ]
;#
;当該シーン制作中につき、[r]
;９日めをスキップします[p]
;[_tb_end_text]

;そのまま就寝シーンに移れるように
;コミュニケーションパートでの変数を設定
[mask time="1000"]
[chara_hide_all]
[eval exp="f.isEatLunch =true"]
[eval exp="f.isEatDinner =true"]
[eval exp="f.isMioTakeBath.flag = true"]
[eval exp="f.isMioTakeBath.type = 2"]
[eval exp="f.cloth = f.pajama"]
[setTime hours=22 minutes=0]
[mask_off time="1000"]

;[jump target="loopStart" storage="communication2.ks"]



;共通部.txtの流れの中で、つどこの中のテキストが参照される流れを想定
*scene1
;　【１】出発先の決定～到着

;===================================================================================================
;外観bg
*dateSpot_exterior
[bgChange  time="1000"  method="crossfade"  storage="plaza2.png"  ]
;適当なものが無いor外観という概念がない場所などの場合、とりあえず黒塗りbk100
;暗転中に出しておくのでtime=0
[return]
;===================================================================================================
;内観bg
*dateSpot_interior
[bgChange  time="1000"  method="crossfade"  storage="plaza1.png"  ]
[return]
;===================================================================================================
;出発時みお反応

*departure

[if exp="f.commandForce" ]

    [goForce spotName=&f.strDateSpot]

;■プラザに行ったことが無い
[elsif exp="f.dateTotal == 0"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0067.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
プラザ……？[r]
ああ、駅前にそういえば……[p]
[_tb_end_text]

[elsif exp="f.dateTotal > 0 && !f.isDateSpotSame"]
;■プラザに来たことがあり、連続していない（前回お出かけは別の場所）
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0214.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
はいっ[r]
前お出かけした時も楽しかったですよね[p]
[_tb_end_text]


[elsif exp="f.dateTotal > 0 && f.isDateSpotSame && f.favoriteDate !='plaza'"]
;■プラザに来たことがあり、連続している（前回お出かけもここ）
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
先生、あそこがお好きなんですね[r]
わかりました[p]
[_tb_end_text]


[else]
;■プラザに来たことがあり、連続している（前回お出かけもここ）かつ、水族館がお気に入り
[mioHyoujouSabun hyoujou="happy4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
いいですね[r]
わたしもあそこは大好きです[p]
[_tb_end_text]

[endif]

[return]
;===================================================================================================
;初回到着時ウンチク

*trivia
[messageON]
[tb_start_text mode=3 ]
#
自分も実は通り過ぎるばかりで[r]
ここに来るのは初めてみたいなものだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
駅前というか駅直結の複合商業施設で[r]
８階の最上階から地下１階までテナントが並ぶ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
最上階にはなんと観覧車があって[r]
周囲の街並みを見下ろすことができる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
街でとりあえず遊ぶならここ、という[r]
一種の定番スポットとなっているそうだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
要するに……[r]
ショッピング＆アミューズメントだ！[p]
[_tb_end_text]
[return]
;===================================================================================================
;到着時みお反応
*arrival

;■分岐：はじめて来た
[if exp="f.dateTotal == 0"]

[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0103.mp3"  ]
[tb_start_text mode=3 ]
#みお
お友達がよくここの話するんですけど、[r]
わたしは来るのはじめてです[p]
[_tb_end_text]


;■分岐：２回目以降
[else]

[messageON]
[mioHyoujou hyoujou="rakuake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生は今日いきたいところとか[r]
決まってますか？[p]
[_tb_end_text]

[endif]
[eval exp="f.plaza.total++" ]
[bgChange time="1000" method="crossfade" storage="plaza1.png" ]
[return]

;===================================================================================================
;午前行動

;午前行動、午後行動ともに「1.雑談の選択肢」、「2.施設内の移動先（ホビー内容）の選択肢」の２段階で構成。
;1.はできれば何パターンか用意して、選択肢の取り揃え自体が変わるように。
;2.はデート先ごとに固定されているものの、午前で選んだものは午後は選べないように。

;　【２】午前行動
*scene2
;■1.雑談の選択肢

[messageON]
[tb_start_text mode=3 ]
#
駅経由で施設に入ると、エスカレーターで[r]
１階に直結している。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
順番に階を上がっていくのもいいし、[r]
好きな店へ直行するのもいいが……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
吹き抜けを見上げると[r]
うしろに倒れちゃいそうです[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0085.mp3"  ]
[tb_start_text mode=3 ]
#みお
お店もショッピングモールとは違うのが[r]
たくさんです～[p]
[_tb_end_text]


#＜話題選択＞
とりあえずは雑談でもしながら[r]
目に留まる店を探すとしようかな。[l]


[setDateSitu]
;【！】選択肢。一択目～三択目までの各種候補（a～c）からランダムに１つずつ選んで、選択肢を生成。
;　　　各種選択肢も、選んだ後のみおの反応がさらにランダムで決定される。
;　　　
;　　　午後行動でも同じ選択肢プールを使用するが、午前で使用されたものを除き、dも候補に入れてランダム生成。
;　　　（午前でa～cの範囲からbを選んでいた場合、午後ではa,c,dの範囲から１つをランダムに選ぶ）
;
;　　　選択肢決定後の分岐は回答は本テキストファイルの最下部に記載。

;[glink  color="btn_05_black"  storage=""  size="20"  x="275"  y="400"  width=""  height=""  text="ハンバーグ"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black"  storage=""  size="20"  x="590"  y="400"  width=""  height=""  text="チャーハン"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="肉じゃが"  _clickable_img=""  target="■■■"  ]
;[s]
[debugDateBtn]
;一択目：安直な話題ふり
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="観覧車が名物でさ"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="テナントがたくさん"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="レジャー施設も多いね"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[endif]

;(1-d.疲れてない？)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ホールでなにかやってる"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーピアノがある"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ガシャポンコーナーだ！"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

;(2-d.もう半日経ったのか……)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="地下街にも直結だって"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="運動のため階段で……"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="迷子になりそう"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[endif]

[s]
[s]

;(3-d.お腹すいてきた)

;↑選択肢のみお回答を表示した後、↓に合流。


;■2.施設内の移動先
*scene2_2

[setTime hours=11 minutes=0]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[messageON]
[tb_start_text mode=4 ]
#＜行きさき選択＞
さて、それじゃあ[r]
どこに行ってみようかな[l]
[_tb_end_text]

[setDateSitu]
;【！】午後行動の「2.施設内の移動先」も同じ選択肢を使用。
;　　　午前に選んだものは表示されなくなり、２択になり、表示位置も整形。
;　　　例：【選択肢１】【選択肢２】【選択肢３】とあり、午前に選択肢１を選んだ場合、
;　　　　　【選択肢２】　　　　　　【選択肢３】の見せ方になる（空白部がみお立ち絵が出ているあたり）
;
;　　　選択肢決定後の分岐は回答は本テキストファイルの最下部に記載。

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ボウリング" exp="f.destination='a'"  _clickable_img=""  target="destination_a_am"  ]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="展望階から景色を眺める" exp="f.destination='b'"  _clickable_img=""  target="destination_b_am"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="ヘッドスパ"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_am"  ]
[s]
[s]


;↑選択肢のみお回答を表示した後、共通部【３】ランチに合流。


;選択肢座標目安
;２択時
;[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="〇〇〇に出かける"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="■■■"  ]
;[s]

;３択時
;[glink  color="btn_05_black"  storage=""  size="20"  x="275"  y="400"  width=""  height=""  text="ハンバーグ"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black"  storage=""  size="20"  x="590"  y="400"  width=""  height=""  text="チャーハン"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="肉じゃが"  _clickable_img=""  target="■■■"  ]
;[s]


;===================================================================================================
*pre_scene3
;[freeimage layer="1"]

[jump storage="SundayDate/commonDate.ks" target="scene3"]


;　【３】ランチ＆帰宅判定

*scene3
;ランチ
[messageON]

;■この場所でのランチがはじめて
[if exp="f.dateTotal==0"]
    [tb_start_text mode=3 ]
    #
    飲食店は地下と最上階近くに[r]
    固まっているようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    昼だし、がっつりめというよりは――[r]
    おっ、これは……[p]
    [_tb_end_text]

    [bgChange  time="1000"  method="crossfade"  storage="gohan3_susi.jpg"  ]

    [mioHyoujouSabun hyoujou="normalake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    回転寿司、ですか？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0204.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいですね[r]
    それぞれ好きな分量で食べられますし[p]
    [_tb_end_text]

[else]
;■この場所でのランチ２回目以降
    [tb_start_text mode=3 ]
    #
    昼食を摂りに、[r]
    地下一階の回転寿司を目指した。[p]
    [_tb_end_text]

    [bgChange  time="1000"  method="crossfade"  storage="gohan3_susi.jpg"  ]

    [mioHyoujouSabun hyoujou="rakuake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0204.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    回るお寿司屋さんって[r]
    楽しいですよね[p]
    [_tb_end_text]

[endif]
[return]
;===================================================================================================
;食事テキスト（ランチ）
*eat_lunch
[messageON]
[tb_start_text mode=3 ]
#
回転寿司でおもいおもいに[r]
好きなネタを楽しんだ。[p]
[_tb_end_text]


[return]
;===================================================================================================
;　【４】午後行動
*scene4

;午後行動
[bgChange storage="plaza1.png" time="1000"]

[messageON]
[tb_start_text mode=3 ]
#
――館内をもう少し歩きながら[r]
午後のプランを考えることになった。[p]
[_tb_end_text]


;■1.午前と同じ雑談選択肢。詳細は午前側。



[setTime hours=13 minutes=30]

;[tb_hide_message_window  ]
;★1500ミリ秒程度でスチル表示　水族館デート用スチルFG003_1.png

;[wait  time="500"  ]
[messageON]
;スチル中なので立ち絵指定なし
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
……♪[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=4 ]
#＜話題選択＞
はしゃぐみおに
なんと声をかけようか。[l]
[_tb_end_text]

[setDateSitu]

;※選択肢表示
;そのまま考えると4パターン*3択となる。一旦ゴリ押しで記載する
;いい代替案があればそちらに差し替えする

;一択目：安直な話題ふり
[getrand min=0 max=2]

[if exp="f.answer1 == 'a'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="テナントがたくさん"  _clickable_img="" exp="f.answer1='a'"  target="answer1_b"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="レジャー施設も多いね"  _clickable_img="" exp="f.answer1='b'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="エレベーターだとラクかな"  _clickable_img="" exp="f.answer1='c'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'b'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="観覧車が名物でさ"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="エレベーターだとラクかな"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="レジャー施設も多いね"  _clickable_img="" exp="f.answer1='c'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'c'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="観覧車が名物でさ"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="テナントがたくさん"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="エレベーターだとラクかな"  _clickable_img="" exp="f.answer1='d'"  target="answer1_d"  ]

[endif]

[else]


[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="観覧車が名物でさ"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="テナントがたくさん"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="レジャー施設も多いね"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]

[endif]

[endif]
;(1-d.疲れてない？)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="f.answer2 == 'a'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーピアノがある"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの行列は……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]

[endif]

[elsif exp="f.answer2 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ホールでなにかやってる"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの行列は……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[elsif exp="f.answer2 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ホールでなにかやってる"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーピアノがある"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの行列は……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ホールでなにかやってる"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーピアノがある"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

[endif]

;(2-d.もう半日経ったのか……)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="f.answer3 == 'a'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="運動のため階段で……"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="迷子になりそう"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="混んできた……"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="地下街にも直結だって"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="迷子になりそう"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="混んできた……"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="地下街にも直結だって"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="運動のため階段で……"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="混んできた……"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="地下街にも直結だって"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="運動のため階段で……"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="迷子になりそう"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[endif]

[endif]

[s]
[s]


*scene4_2
;■2.午前と同じ施設内の移動先。詳細は午前側。
[setTime hours=14 minutes=0]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[messageON]
[tb_start_text mode=4 ]
#＜行きさき選択＞
さて、それじゃあ[r]
午後はどこに行ってみようかな[l]
[_tb_end_text]

[setDateSitu]

;※選択肢表示
[if exp="f.destination=='a'"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="展望階から景色を眺める" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="ヘッドスパ"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[elsif exp="f.destination=='b'"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ボウリング" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="ヘッドスパ"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ボウリング" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="展望階から景色を眺める" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]

[endif]

[s]
[s]
;↑選択肢のみお回答を表示した後、共通部【５】ディナーに合流。


*pre_scene5

[jump storage="SundayDate/commonDate.ks" target="scene4plus"  ]
[jump storage="SundayDate/commonDate.ks" target="scene5"]

;===================================================================================================
;ディナー
*scene5
[messageON]
;■この場所でのディナーがはじめて
[if exp="f.dateTotal==0"]

;ちょっと薄暗い差分にする？

[tb_start_text mode=3 ]
#
ディナーなら、街の夜景が楽しめる上階がいいけど[r]
そんなに気取った堅苦しい店もなぁ……[p]
[_tb_end_text]
[bgChange  time="1000"  method="crossfade"  storage="gohan1_yakinikuya.jpg"  ]

[tb_start_text mode=3 ]
#
と、思っていたところ、入れそうだったのが[r]
この焼き肉屋だった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、先生が焼いてくださるんですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0205.mp3"  ]
[tb_start_text mode=3 ]
#みお
エプロンとかしっかりつけてくださいね[r]
油が跳ねますから[p]
[_tb_end_text]



[else]
;■この場所でのディナー２回目以降
[tb_start_text mode=3 ]
#
また居心地のよい上階の焼き肉屋で[r]
ディナーを食べることにした。[p]
[_tb_end_text]
[bgChange  time="1000"  method="crossfade"  storage="gohan1_yakinikuya.jpg"  ]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0205.mp3"  ]
[tb_start_text mode=3 ]
#みお
エプロン、ちゃんとつけてくださいね[p]
[_tb_end_text]

[endif]

[return]
;===================================================================================================
;食事テキスト（ディナー）
*eat_dinner
[messageON]
[tb_start_text mode=3 ]
#
夜景そっちのけで夢中になって肉を焼いた……[p]
[_tb_end_text]


[eval exp="f.dateTotal++" ]
[return]
;【雑談の選択肢】回答パターン

;この会話中では、立ち絵の代わりに水族館スチル差分をみおの表情変化として指定

*dateSuccess

[messageON]
[tb_start_text mode=3 ]
#
黒のスカートをふりふりとゆらして[r]
みおは楽しそうに隣を歩いている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
この雰囲気ならば、と[r]
観覧車にみおを誘ったところ――……[p]
[_tb_end_text]

[return]

;-------------------------------------
;1-a.観覧車が名物でさ
*answer1_a
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 4 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 2" ]
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0160.mp3"  ]
[tb_start_text mode=3 ]
#みお
遠目に見えてた町中の観覧車が[r]
ここの観覧車だったんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
乗れるものとは思って無かったです[r]
こう、オブジェ的な……[p]
[_tb_end_text]




[elsif exp="tf.rand ==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
観覧車……ですか[r]
はい、あの高さはさすがに怖くて……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=3 ]
#みお
よほどテンションが上がった時とかでも[r]
なければちょっと……[p]
[_tb_end_text]




[elsif exp="tf.rand ==2"]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
ビルのまた上に観覧車って、すごいですよねえ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生は高いのは平気なんですか？[p]
[_tb_end_text]



[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]

;-------------------------------------
*answer1_b
[deleteDateSitu]
#
;1-b.テナントがたくさん
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[getrand min=0 max=2]
[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="normal3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
１つの階にお店が３つでも、[r]
８階あるから２４件ってことになりますもんね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
そんな単純じゃないかもですけども[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="rakuake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0084.mp3"  ]
[tb_start_text mode=3 ]
#みお
ショッピングモールもお店たくさんでしたけど[r]
全然違ったお店ばっかりです～[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
日用品とか雑貨とか、なにか買って持って帰るものが[r]
出るようなお店はあんまり行かなくて新鮮で……[p]
[_tb_end_text]



[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういう場所、わたしすぐ迷っちゃうんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0161.mp3"  ]
[tb_start_text mode=3 ]
#みお
もしもの時の合流地点を決めませんか[p]
[_tb_end_text]
[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer1_c
[deleteDateSitu]
#
;1-c.レジャー施設も多いね
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]

[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
着物の着付け教室とかもありますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
レジャーというか、習い事……？[p]
[_tb_end_text]




[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしレジャーって言葉に[r]
勝手にアウトドアな印象が持ってたんですけど[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
意外とそうでもないんですね[r]
世間知らずで恥ずかしいです……[p]
[_tb_end_text]


[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうですね～[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういうの、案内のフロアマップを見てるだけで[r]
楽しいです[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer1_d
[deleteDateSitu]
#
;1-d.エレベーターだとラクかな
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]

[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
８階もあるとエスカレーターを使っても[r]
時間かかっちゃいますしね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
高いビルのエレベーターって[r]
すごく速くてアトラクションみたいです[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="metoji.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
賑わってると待ち時間を考えるたら[r]
エスカレーターの方が速かったりしますよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも先生といっしょだったら[r]
待ち時間が長くても退屈しませんね[p]
[_tb_end_text]



[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、電車とかエレベーターで[r]
ぎゅうぎゅうになると人に埋もれちゃうんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい……背が低いので……[p]
[_tb_end_text]


[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_a
[deleteDateSitu]
#
;2-a.ホールでなにかやってる
[getrand min=0 max=2]
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 4 || f.dateSituNum == 5" ]
[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0197.mp3"  ]
[tb_start_text mode=3 ]
#みお
賑わってますね～[r]
なにか有名な方のトークショーみたいですよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……タレントさんとか[r]
あんまりわからなくて[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふだん開放してるホールが[r]
たまにイベント会場になるみたいですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0216.mp3"  ]
[tb_start_text mode=3 ]
#みお
当日飛び入りできる感じじゃなさそうですけど[r]
活気がある雰囲気は楽しいです[p]
[_tb_end_text]

[else]
;回答３

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
人だかりの向こうでなにかやってる……[r]
って感じですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　いい考えが……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
わっ、肩車とかしなくていいですぅっ[r]
そこまで見たいわけじゃなくてぇっ[p]
[_tb_end_text]


[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_b
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 2 || f.dateSituNum == 4" ]
[getrand min=0 max=2]
;2-b.フリーピアノがある

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=3 ]
#みお
みんなが譲り合って[r]
好きに弾いていいよってピアノですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……はい[r]
わたし、ですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0058.mp3"  ]
[tb_start_text mode=3 ]
#みお
習い事で昔やったんですけど[r]
どうもリズム感が弱くって[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="kira5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、本当[r]
誰かがきらきら星を弾いてます[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="EvKusai1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
きらきら星……だと思います[r]
なんだかすごいアレンジ始まってますけども[p]
[_tb_end_text]



[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0162.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生が弾いて来るなら待ってますよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0140.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういえば先生って音楽とか楽器とか[r]
やってらしたんですか？[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_c
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
;2-c.ガシャポンコーナーだ！

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
わ～、壁みたいにずらっと並んでます！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ショッピングモールのゲームコーナーにも[r]
ありましたけど、規模がぜんぜん違いますね[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0085.mp3"  ]
[tb_start_text mode=3 ]
#みお
おぉ……1000円するようなガシャポンも[r]
あるんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0191.mp3"  ]
[tb_start_text mode=3 ]
#みお
すごい、リアルな虫さん……[p]
[_tb_end_text]


[else]
;回答３
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
マスコットの磁石とかだったら[r]
キッチンでも便利に使えるので助かるかも……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
――先生？[r]
その百円玉の山は？[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_d
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval++" cond="f.dateSituNum == 2" ]
[getrand min=0 max=2]
;2-d.あの行列は……？

[if exp="tf.rand==0"]
;回答１
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんでしょう、どのお店につながってるか[r]
わからないぐらい長いですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0061.mp3"  ]
[tb_start_text mode=3 ]
#みお
……並んでみます？[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
そこのラーメン屋さんの行列みたいですね[r]
えーと……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
新メニューが評判よくて、[r]
みんなそれ目当てで来てるのかな[p]
[_tb_end_text]


[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="EvKusai1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あれは、そのう……[r]
お手洗いの列かなぁ、と[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
女性用ってどうしても時間かかる時があるので[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういえば先生は大丈夫ですか？[p]
[_tb_end_text]


[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_a
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[getrand min=0 max=2]
;3-a.地下街にも直結だって

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0134.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、別の建物とかに地下からいけるんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
地下鉄とか地下街とか
なかなか頭に入らなくて……[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
地下街を歩けば雨の日とかも[r]
濡れなくて済むからいいですよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0223.mp3"  ]
[tb_start_text mode=3 ]
#みお
学校行く方向にそういう通路はないので[r]
ほとんど寄らないんですけど[p]
[_tb_end_text]



[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
地下街も見て回るのおもしろそうですねえ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　夢中になって見てたら[r]
２、３駅ぶん歩いちゃう……って？[p]
[_tb_end_text]
[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_b
[deleteDateSitu]
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 1" ]
#
[getrand min=0 max=2]
;3-b.運動のため階段で……

[if exp="tf.rand ==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0224.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしの学校でもときどき[r]
そういうお話やってます[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？　はい、わたしの学校、[r]
エレベーターがあって[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
本当に必要な人だけが、って言われてるんですけど、[r]
乗っちゃう子がいるみたいで[p]
[_tb_end_text]
[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
いいですね、おともします！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
……でもさすがに１階ぶんとかですよね？[p]
[_tb_end_text]




[else]
;回答３

[messageON]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0009.mp3"  ]
[tb_start_text mode=3 ]
#みお
運動はいいことですけど……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0055.mp3"  ]
[tb_start_text mode=3 ]
#みお
ダイエット的な意味だったら[r]
わたしの方でも献立、気をつけますね？[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_c
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4 || f.dateSituNum == 5" ]

[getrand min=0 max=2]
;3-c.迷子になりそう

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生が、ですか……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生が居ないとわたしも帰り方自信無いです
お互い気をつけましょう[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしがですか？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
うーん……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
この人の多さだと[r]
ちょっと否定できないかも[p]
[_tb_end_text]


[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、じゃあお互い写真を撮りましょう！[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
そしたら迷子センターの人に[r]
探してもらいたい相手の服装の特徴とか言えるので[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="komruake6_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、電話し合えばいい、と……
たしかに……[p]
[_tb_end_text]


[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_d
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[getrand min=0 max=2]
;3-d.混んできた……

[if exp="tf.rand==0"]
;回答１

[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
午後になったらなんだかワッと増えましたね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
お休みの日だからゆっくり起き出した人たちが[r]
今集まって来た感じでしょうか[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２

[messageON]
[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
なにをするにも並ばないと[r]
いけなくなりそうです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0161.mp3"  ]
[tb_start_text mode=3 ]
#みお
やっぱり休日のお出かけは[r]
朝早くから動いてこそ、ですね[p]
[_tb_end_text]



[else]
;回答３

[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
まあ、なにか時間の決まった用事が[r]
あるわけでもないですし[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_com/FT_m003_com0056.mp3"  ]
[tb_start_text mode=3 ]
#みお
のーんびり、この時間を楽しみましょう[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;===================================================================================================
;===================================================================================================
;===================================================================================================
;【施設内の移動先の選択肢】回答パターン

;※午前と午後でさらに分岐
;　時間経過もここで込みになるので注意

;-------------------------------------
;ボウリング・午前
*destination_a_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 2" ]
;-------------------------------------
;ボウリング・午前


[maskStart]

    [freeimage layer="1"]
    [bgChange storage="bowling_1.png"]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
７階のボウリング場にやってきた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
お店も開いたばかりだから[r]
貸し切り状態ですね[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
まさに、それを狙ってこの時間に[r]
この場所へやってきたのだった。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
受付を済ませ、みおのぶんも[r]
ボウルとシューズと見繕う。[p]
[_tb_end_text]

;「イルカショー（午前）」初回のとき表示
[if exp="f.plaza.stageA.am == 0" ]

    [mioHyoujouSabun hyoujou="odoroki_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、わたしもやるんですか！？[r]
    見てるだけじゃなくて！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおとボウリングという、縁がなさそうな[r]
    組み合わせでなにが起こるか見て見たかったのだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    最低限のルールは[r]
    みおもすでに知っているようだし……[p]
    [_tb_end_text]
[else]

    ;「イルカショー（午前）」初回のとき表示かつ、「イルカショー（午後）」閲覧済みの場合はこちらに分岐
    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0161.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっぱり……わたしもやるんですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    前回みたいな、珍しいみおをまた見て楽しみたいし。[p]
    [_tb_end_text]

[endif]

;------

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0020.mp3"  ]
[tb_start_text mode=3 ]
#みお
この服だとよちよち歩きになりますが……[r]
では……[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0099.mp3"  ]
[tb_start_text mode=3 ]
#みお
てやーっ[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0100.mp3"  ]
[tb_start_text mode=3 ]
#みお
たあー……！[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0101.mp3"  ]
[tb_start_text mode=3 ]
#みお
お、重いですぅ～っ[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling02.mp3"  ]
[tb_start_text mode=3 ]
#
――と言いつつ、スペア率が高くて[r]
けっこう上手なみおだった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
非力で小股な投球フォームだが、それがかえって[r]
余計なりきみを排しているのか……？[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="bowling_1.png"  ]

[mioHyoujou hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
ぶ、分析されてる……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
とはいえ――わたし――[p]
[_tb_end_text]

[mioDown]

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0185.mp3"  ]
[tb_start_text mode=3 ]
#みお
手も足ももうぷるぷるで限界ですぅ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
まだ５フレームしか終わってない。[r]
つまり、もう半分まるまる残ってる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分もここまでの投球ですでに息があがっているが……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0104.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生がわたしのぶんも投げてください[r]
応援してますから[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ここまで言われてしまっては[r]
やらねばなるまい。[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
いざ――[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[tb_start_text mode=3 ]
#
てやっ！[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0198.mp3"  ]
[tb_start_text mode=3 ]
#みお
わー、ぱちぱちぱちー！[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[tb_start_text mode=3 ]
#
とおっ！[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0192.mp3"  ]
[tb_start_text mode=3 ]
#みお
おぉ～！[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling02.mp3"  ]
[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bowling_1.png"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生のこういう姿、新鮮ですてきです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおにしようとしたことを、[r]
気づけば自分がされていた。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
こういうのも、まあ、いいか……[p]
[_tb_end_text]

[eval exp="f.plaza.today.stageA.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午前】ドーム型通路で海中体験に
*destination_b_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[maskStart]

    [freeimage layer="1"]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange storage="plaza3_d.png" time="1"]
    [else]
        [bgChange storage="plaza3_e.png" time="1"]
    [endif]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
８階はガラス張りの展望階となっていて、[r]
周囲の街並みを眺められる。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
雰囲気としては空港の待合ロビーに近い。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0203.mp3"  ]
[tb_start_text mode=3 ]
#みお
いい眺め……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
……でも、下の方を見ると[r]
足がすくんじゃいそうになりますね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
地上８階の高さというと、[r]
２４メートルぐらいはありそうだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
奈良の大仏よりも１０メートルぐらいは[r]
視点が高いことになる。[p]
[_tb_end_text]

[if exp="f.plaza.stageB.am == 0" ]
    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おぉ……なるほど……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生ってものしりさんですね[p]
    [_tb_end_text]

[else]
    [mioHyoujouSabun hyoujou="happy2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そのお話というか[r]
    大仏さまでたとえるやつ、好きです[p]
    [_tb_end_text]


[endif]

[tb_start_text mode=3 ]
#
ビルにテナントがびっしりという商業施設の[r]
てっぺんにまた観覧車が乗ってるのが、ここだ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
眺めを楽しむなら観覧車に乗れば[r]
さらに高みから街を俯瞰できるが――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
それはちょっと考えさせてください[r]
勇気といいますか、なんといいますか……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……うん、高所恐怖症でなくともビビる高さだ。[r]
かくいう自分も余裕とはいかないだろう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
デートが大成功するとかで[r]
勢いづいている時なら行けるかな……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、勇気というなら[r]
先生にあやかれればもしかしたら[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うん？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
急に訪ねて来たわたしをおうちに[r]
置いてくれたんですよ、それって勇気です[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どうだろうなぁ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおがそう思って恩に感じてくれるぶんには[r]
ありがたいやら助かるやらだが。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
じぶんのことって[r]
じぶんじゃわからないですもんね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="metoji.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしもお料理はふつうくらいのつもりで、[r]
でも先生は美味しい美味しいって食べてくれて[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうやって、お互いにお互いの[r]
いいところに気づいて教え合えたらいいですね[p]
[_tb_end_text]

[if exp="f.plaza.stageB.am > 0" ]

    [mioHyoujouSabun hyoujou="normalake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0214.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    前もこういうお話して、[r]
    まだ先生ピンと来てないみたいですから[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happy2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    謙虚さもたぶん先生のいいところなんですよ[p]
    [_tb_end_text]


[endif]

[messageInvisible]
[chara_hide_all]
[bgChange name="sora" storage="yuugu_ride_sora.png" height="3200" top="-1760" time="1000"]
[messageON]

[tb_start_text mode=3 ]
#
まぶしい景色をバックに、まっすぐな微笑みで[r]
みおはそんなことを言ってくれるのだった。[p]
[_tb_end_text]



[eval exp="f.plaza.today.stageB.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午前】展示の水槽を順番にめぐってみる
*destination_c_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 3" ]
[freeimage layer="1"]

[maskStart]

    [freeimage layer="1"]
    [bgChange time="0" method="crossfade" storage="massagi1.png" ]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
マッサージとか美容とかの店も多く、[r]
男女二人連れ可なサロンも散見された。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そのひとつ、ヘッドスパ専門店に[r]
みおを連れて来た。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ヘッドスパなら着替えとかもなく[r]
気軽にできるリフレッシュだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0085.mp3"  ]
[tb_start_text mode=3 ]
#みお
落ち着く雰囲気のお店ですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
カップルＯＫというからふたりで[r]
入れると踏んだのだが――……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
午後はセルフコースなどあるが、午前のマッサージは[r]
ちょうど１名ぶんの空きしかないとのことで。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ならばみおに受けてもらおうと[r]
言葉を尽くして説得したのだった。[p]
[_tb_end_text]

[if exp="f.plaza.stageC.am == 0" ]
    [mioHyoujouSabun hyoujou="fuan.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    な、なんだかすみません……[p]
    [_tb_end_text]

[else]
    [mioHyoujouSabun hyoujou="tohoho.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしばっかり申し訳ないです……[p]
    [_tb_end_text]


[endif]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0036.mp3"  ]
[tb_start_text mode=3 ]
#みお
午前の方が忙しいみたいなので[r]
今度は午後にふたりで来ましょうね[p]
[_tb_end_text]

[mioLeave]

[messageON]
[tb_start_text mode=3 ]
#
みおもリフレッシュしてくれれば[r]
こちらにもメリットのあることだしな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ヘッドスパを受けるみおを見て楽しむ、という[r]
アテが外れたのだけ残念だったが……[p]
[_tb_end_text]

[quake count="4" vmax="30" hmax="30" wait="false" time="400" ]
[wait time="200" ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0189.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひゃあー！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0190.mp3"  ]
[tb_start_text mode=3 ]
#みお
まおーーっ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0191.mp3"  ]
[tb_start_text mode=3 ]
#みお
んみぃ～～～～っ！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ここからでも充分、それは叶うようだった。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
猫みたいな悲鳴だけど、いったいなにを[r]
されているのか……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
一番人気の熟練の女性スタッフさんが[r]
担当してくれているらしいが……[p]
[_tb_end_text]

[quake count="4" vmax="30" hmax="30" wait="false" time="400" ]
[wait time="200" ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0192.mp3"  ]
[tb_start_text mode=3 ]
#みお
ああっ[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
目が、目が――っ[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
目が大きくなっちゃいますぅー！[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
いいことなんじゃないかな。[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="massagi1.png"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]

    [freeimage layer="1"]
    [if exp="f.dayPart == 'morning'" ]
  ;      [bgChange storage="plaza3_d.png" time="1"]
    [else]
  ;      [bgChange storage="plaza3_e.png" time="1"]
    [endif]

[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[mioHyoujou hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0049.mp3"  ]
[tb_start_text mode=3 ]
#みお
た、ただいまです……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
感想を聞いてみると、[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0082.mp3"  ]

[tb_start_text mode=3 ]
#みお
ぜんぜんちからとか込めてないのに[r]
直接脳を触られているのかと思うぐらいでした[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とのことだった。[r]
怖い。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生もぜひ受けてみてください！[p]
[_tb_end_text]

[eval exp="f.plaza.today.stageC.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午後】イルカショーを見に行く
*destination_a_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 2" ]
;【午後】イルカショーを見に行く
[maskStart]

    [freeimage layer="1"]
    [bgChange storage="bowling_1.png" time="1"]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]


[tb_start_text mode=3 ]
#
７階のボウリング場にやってきた。[p]
[_tb_end_text]
[playse storage="BGS/Shoppingmall.mp3" buf="0" ]
[tb_start_text mode=3 ]
#
午後ともなるとほぼ全レーンが埋まるぐらいの[r]
盛況っぷりだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
食後の運動、ですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ランチを楽しんだ後だからか[r]
みおもけっこう乗り気でいてくれる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
混んでて騒がしい方が喧騒に紛れて[r]
気兼ねなくはしゃいだりできるものだしな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
というわけで……[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[tb_start_text mode=3 ]
#
１フレームめ、ピンは２本残したが[r]
悪くない滑り出しだ。[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling03.mp3"  ]
[tb_start_text mode=3 ]
#
２フレームめ、意地のスペアを見せつける。[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling04.mp3"  ]
[tb_start_text mode=3 ]
#
３フレームめ、次はストライク――[r]
という気持ちがせいですっぽ抜けガーターだ。[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling01.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あっ、あぁーっ[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/bowling04.mp3"  ]
[tb_start_text mode=3 ]
#
続いて投げたみおもガーター。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ここまでの３フレーム、[r]
みおは６投ぜんぶがほぼガーターだ。[p]
[_tb_end_text]

[if exp="f.plaza.stageA.pm == 0" ]
[tb_start_text mode=3 ]
#
よくよく見ると、みおは左手で投げていた。[r]
ふだんの利き手は右だったはずだ。[p]
[_tb_end_text]

[else]
[tb_start_text mode=3 ]
#
どうも、今回も左手で投球しているようだ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
前回、利き手の右でやればいいのにと[r]
すすめはしたのだが。[p]
[_tb_end_text]

[endif]

[bgChange time="1000"  method="crossfade"  storage="bowling_1.png"  ]

[mioHyoujou hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、気づかれましたか……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
朝はやくからするなら大丈夫かなと思うんですが[r]
さすがに午後にボウリングはちょっと……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0055.mp3"  ]
[tb_start_text mode=3 ]
#みお
今夜とか明日、筋肉痛で[r]
ごはん作れなくなっちゃいそうで[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0152.mp3"  ]
[tb_start_text mode=3 ]
#みお
それに、左手も強くできたらチャーハンとか[r]
美味しく作れるようになりそうじゃないですか[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うちはＩＨだから鉄鍋さばきを披露する機会は[r]
ないと思うなぁ……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
手の疲労が気になるなら、ケアをすればいいのだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
――自販機の冷たい缶ジュースでアイシングするとか。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
つめた～い、きもちい～[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/touch4.mp3"  ]

[tb_start_text mode=3 ]
#
――手で手をもみほぐすとか。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、わわっ、ひゃあ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、ありがとうございました[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生だっておなじだけ投げてるんですから[r]
今度はわたしがお返しのマッサージです[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
えっ！？[p]
[_tb_end_text]
[chara_hide_all time="1000" wait="false" ]
[bgChange time="1000"  method="crossfade"  storage="bk100.jpg"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/touch4.mp3"  ]

;[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
もみもみ……もみもみ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うおおおーっ！！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
その後、お互いに身体をいたわりながら[r]
ほどほどのスコアでゲームを終えたのだった。[p]
[_tb_end_text]

[eval exp="f.plaza.today.stageA.pm++" ]


[jump target="pre_scene5"]
;-------------------------------------
;【午後】ドーム型通路で海中体験に
*destination_b_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[freeimage layer="1"]
[maskStart]

    [freeimage layer="1"]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange storage="plaza3_d.png" time="1"]
    [else]
        [bgChange storage="plaza3_e.png" time="1"]
    [endif]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
最上階の８階にある展望エリアにやってきた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
またこの上に建つ観覧車に乗るほどではないが[r]
景色を楽しみたい、という時にはちょうどいい。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0202.mp3"  ]
[tb_start_text mode=3 ]
#みお
空気が澄んでるのか遠くの街並みも[r]
はっきり見えますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
ミニチュアみたい……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うんうん、とうなずきながら[r]
遠景を見やる。[p]
[_tb_end_text]

[messageInvisible]
[chara_hide_all]
[bgChange name="sora" storage="yuugu_ride_sora.png" height="3200" top="-1760" time="1000"]
[messageON]


[tb_start_text mode=3 ]
#
あれがショッピングモールだから、[r]
自分たちの家はだいたいあのへんだろう。[p]
[_tb_end_text]

;[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
おぉー[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あれが公園、あれがコーヒーショップに[r]
ティーショップ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
砂浜とか温泉旅館、[r]
パン屋やら森やら本屋やら……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
こうして眺めると自宅周辺には[r]
いろいろな施設が揃っていて彩り豊かだ。[p]
[_tb_end_text]

;[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0084.mp3"  ]
[tb_start_text mode=3 ]
#みお
お散歩とかしたら近くまで寄ることが[r]
あるかもですね[p]
[_tb_end_text]

;[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
と、いうことは……[p]
[_tb_end_text]

;[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0077.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、あのあたりがわたしの通ってる学校ですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
遠くからでも寮付きの女学校です、と澄ました感じの[r]
立派なたたずまいだ。わかりやすい。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そしてそのすぐ近くには――[p]
[_tb_end_text]

[if exp="f.day <= 50" ]

    [tb_start_text mode=3 ]
    #
    みおが住んでいた寮。[r]
    の、焼け跡。[p]
    [_tb_end_text]

    ;[mioHyoujouSabun hyoujou="normal2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この距離でもわかるぐらい黒い。[r]
    思ったよりも派手に燃えた箇所もあるようだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    テープやらなにやらで厳重に囲われて[r]
    立ち入り禁止の区域になっている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    死傷者が無かったそうで、[r]
    そこは本当によかったと思う。[p]
    [_tb_end_text]

[else]

    [tb_start_text mode=3 ]
    #
    みおが住んでいた寮の焼け跡……[r]
    があったはずの場所だ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    諸々の撤去も進み、まっさらとはいかないが[r]
    火事の跡はもうわからなくなっていた。[p]
    [_tb_end_text]

    ;[mioHyoujouSabun hyoujou="normal2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

[endif]

[if exp="f.dayPart == 'morning'" ]
    [bgChange storage="plaza3_d.png" time="1000"]
[else]
    [bgChange storage="plaza3_e.png" time="1000"]
[endif]

[mioHyoujouSabun hyoujou="metoji.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、火事のすぐ後は火が少し怖くて[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0017.mp3"  ]
[tb_start_text mode=3 ]
#みお
だけど、すぐ気にならなくなったんです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そういえば、そうだったな。[r]
苦手とも平気になったとも話さず来ていた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
煙に巻かれたとか火を見たとかはせずに[r]
済んだから、そのおかげかなぁって思ってました[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
でもたぶん違ってて、[r]
きっと先生のおかげなんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=3 ]
#みお
急に住むところが無くなるのは[r]
火事とは別に、充分ショックなことで[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ああ、それはまさに自分の一部が[r]
無くなったような感じだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0112.mp3"  ]
[tb_start_text mode=3 ]
#みお
そのショックで空いた部分が[r]
先生と過ごすことで埋めてもらえて[p]
[_tb_end_text]

[if exp="f.plaza.stageB.pm == 0" ]

    [mioHyoujouSabun hyoujou="rakuake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ここから景色を見て、[r]
    自分でもそれがやっとわかりました[p]
    [_tb_end_text]


[else]

    [mioHyoujouSabun hyoujou="rakuake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ここに来ると、何度でもそのことを[r]
    思い出せてうれしいです[p]
    [_tb_end_text]

[endif]

[tb_start_text mode=3 ]
#
心の隙間を埋めてもらったのは自分もおなじだ。[r]
――恥ずかしくって、うまく言えなくて。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
やっと返した自分の笑顔は、[r]
さぞかしぐしゃぐしゃだったことだろう。[p]
[_tb_end_text]

[eval exp="f.plaza.today.stageB.pm++" ]

[jump target="pre_scene5"]
;-------------------------------------
;【午後】展示の水槽を順番にめぐってみる
*destination_c_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 3" ]
;【午後】展示の水槽を順番にめぐってみる
[maskStart]

    [freeimage layer="1"]
    [bgChange storage="massagi1.png" time="1"]
    [mioHyoujouSabun time="0" hyoujou="raku1.png"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
美容やマッサージのテナントのフロアで、[r]
ヘッドスパのお店に入ってみた。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ヘッドだけだから着替える必要もなくて[r]
時間も比較的短いだろう。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なにより、２人組ＯＫなのが目を惹いた。[r]
つまり男女ふたり並んで施術をしてもらえる。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
別行動になったり相手を待たせちゃったりって[r]
なんか遠慮しちゃいますもんね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしは自分が待つ分には平気なんですけど、[r]
気を遣ってくれてありがとうございます[p]
[_tb_end_text]

*destination_c_pm_select

[tb_start_text mode=4 ]
#
と思ったが、今はセルフエステというのも[r]
入れるらしい。どうしようかな……？[l]
[_tb_end_text]

;選択肢
;　ふたりでヘッドスパを受ける
;　セルフエステを利用する
[glink_left storage="SundayDate/SundayDate_Plaza.ks" target="destination_c_pm_1" text="ふたりでヘッドスパを受ける"]
[glink_right storage="SundayDate/SundayDate_Plaza.ks" target="destination_c_pm_2" text="セルフエステを利用する"]
[s]

*destination_c_pm_1

;----------------
;----------------
;選択肢分岐：ふたりでヘッドスパを受ける

[tb_start_text mode=3 ]
#
まあ、今回は当初の予定通り[r]
ペアでのヘッドスパを頼むことにした。[p]
[_tb_end_text]

;→　既存の　地の文「ほどなくして呼び出しがあって店内へ入っていく。」　に接続
[jump target="*destination_c_pm_1_1" ]


*destination_c_pm_1_1
[tb_start_text mode=3 ]
#
ほどなくして呼び出しがあって店内へ入っていく。[p]
[_tb_end_text]


[tb_start_text mode=3 ]

#

ここには男女のセラピストがそろっていて、[r]
お客と同性の担当がついてくれるそうだった。[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
リクライニングチェアがずらっと並び、[r]
カーテンで簡単に仕切られている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
その一角で、仕切り無しのチェア２つに[r]
みおと隣同士で腰かけた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
後ろのワゴンにいろいろと道具があるようで[r]
施術者さんが手際よく用意を始めている。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
どきどき……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ヘッドスパは、みおへの労いの意味もあったが……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
スパを受けるみおの反応を間近で眺めて[r]
楽しみたい、という狙いもあった。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
足つぼマッサージとかで痛気持ちい～などと[r]
人が騒いでる様子を見るのは楽しいので。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
まあ、ヘッドスパで痛いと騒ぐことは[r]
ないだろうが、むずがゆくて云々はありえる。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なんとなく、隣のみおもおなじことを[r]
思っているような気配を感じる。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……いいだろう。[r]
こうなればガマン比べだ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
先にリアクションをこらえきれなくなった方が[r]
連れ合いに恥ずかしいところを目撃されるのだ！[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
では始めていきますねー、という[r]
施術者さんの声を最後に意識が途切れた。[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="massagi1.png"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
はっ、こ、ここは……！？[p]
[_tb_end_text]

[mioHyoujou hyoujou="normalake1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
起きました？[r]
どうぞ、お水です[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
お疲れだったんですね[r]
すぐにすやすや眠っちゃってましたよ[p]
[_tb_end_text]
[eval exp="f.plaza.stageC.pm.select1 = 0" cond="f.plaza.stageC.pm.select1 == undefined" ]
[if exp="f.plaza.stageC.pm.select1 == 0" ]


[tb_start_text mode=3 ]
#
こんなきれいに寝落ちすることが[r]
あるのか……[p]
[_tb_end_text]

[else]

[tb_start_text mode=3 ]
#
また即寝落ちしてしまったのか……[r]
何回やってもおなじ結果になりそうだな。[p]
[_tb_end_text]

[endif]

[tb_start_text mode=3 ]
#
ヘッドスパ、おそるべし。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生がリフレッシュできてるならよかったです[p]
[_tb_end_text]

[eval exp="f.plaza.today.stageC.pm.select1++" ]
[eval exp="f.plaza.stageC.pm.select1++" ]

[jump target="pre_scene5"]

;以上

*destination_c_pm_2
;----------------
;----------------
;選択肢分岐：セルフエステを利用する
;　ここからさらに細かく分岐します。

[if exp="sf.isTaiken"]
    [cancelForTaikenban]
    [clearstack stack="if"]
    [jump target="destination_c_pm_select"]
[endif]

[eval exp="f.plaza.stageC.pm.select2 = 0" cond="f.plaza.stageC.pm.select2 == undefined" ]
;-----------
;【分岐】ゲーム中ここに来るのがはじめて
[if exp="f.plaza.stageC.pm.select2 == 0" ]

    [tb_start_text mode=3 ]
    #
    そもそもセルフエステとはなんぞや、[r]
    ということになるが――[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    個室と道具を借りたお客さんが[r]
    好きなことをする……ってことみたいですね[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    お肌を引き締める機械を気になる部位に[r]
    好きなだけ当てたりする感じか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    詳しくはないがいろんなマシンがあるらしく、[r]
    なかなかおもしろそうだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おもちゃ屋さんみたいで楽しそうだ。[r]
    やってみよう！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おもちゃ屋さん感覚なんですね……[p]
    [_tb_end_text]
    ;　→次の共通部へ


[else]

    ;-----------
    ;【分岐】それ以外の場合

    [tb_start_text mode=3 ]
    #
    またセルフエステで個室を借りるとしよう。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、わかりました……[p]
    [_tb_end_text]

    ;------------------------
    ;前回のセルフエステ以降の展開でみおが乳首イキしていた場合、この範囲のテキストを追加挿入
    [if exp="f.plaza.stageC.pm.tikubi.lastOrgasm" ]

        [tb_start_text mode=3 ]
        #
        みおはえらく赤い顔をしていた。[r]
        前回、ハプニングがあったからなぁ。[p]
        [_tb_end_text]

    [endif]
    ;------------------------

    ;　→次の共通部へ



[endif]
;-----------
;【共通部】


[tb_start_text mode=3 ]
#
ということで、セルフエステ用の[r]
個室に通してもらうのだった。[p]
[_tb_end_text]


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

;みお台詞は、フルボイス想定なのでボイス指定はいったんナシ。またbk100中なので立ち絵指定もナシ


[tb_start_text mode=3 ]
#
別々の部屋で施術着に着替え、[r]
セルフエステ用の個室でみおと合流した。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
かなり照明がしぼられていて暗い。[r]
よく言えばリラックスできる雰囲気がある。[p]
[_tb_end_text]

;-----------------------------
;プチ分岐

;初めてここに来た時
[if exp="f.plaza.stageC.pm.select2 == 0" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ～[r]
    機械がたくさんです～[p]
    [_tb_end_text]


;上記以外のとき
[else]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    相変わらずいろんな機械がありますね～[p]
    [_tb_end_text]

[endif]
;-----------------------------

[tb_start_text mode=3 ]
#
バーコードリーダーのような機械が[r]
何種類も並んでいる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
区別はつかないが、どれも違った効果があり、[r]
肌にあてて使うものらしい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
椅子や施術台に身体をあずけ、[r]
そのマシンを使う部屋というわけだ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
あてっこしましょうか、先生[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
袖や裾をまくり上げ、[r]
互いの腕や足にマシンをあてていく。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんだか、ぴりぴりします[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
これは振動が　あ゛う゛う゛う゛う゛[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
などなど、わからないなりに[r]
マシンを満喫していく。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
きちんと知識がある人が適切に使えば[r]
すごいもののようだなぁ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

;先生の最大体力+5
[HPMaxUp HP="5"]
[messageON]
[tb_start_text mode=3 ]
#
元気になった気がする……！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そんなこんなで結構遊んだつもりだったが、[r]
まだ利用時間の半分ほど残っている。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0009.mp3"  ]
[tb_start_text mode=3 ]
#みお
はふ……機械がけっこう重たくて[r]
疲れちゃいました……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
と、みおはへろへろになって[r]
施術台の上につっぷしてしまった。[p]
[_tb_end_text]

;先生とみおの体力-10
[calcHP HP="-10"]
[calcMioHP HP="-10"]

[tb_start_text mode=3 ]
#
身体に電気だのなんだの流すわけだから、[r]
それによる疲労もあるだろう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
互いにけっこう服をはだけ、[r]
汗を流している。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
マシンをあてる関係でジェルだかオイルだかも[r]
塗布されて、あちこちヌルヌルもしている。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
これは……オイルマッサージとか言えば[r]
みおの素肌に触り放題なのではないか……？[l]
[_tb_end_text]

;選択肢
;　マッサージを試みる
;　おとなしく休む
[glink_left storage="SundayDate/SundayDate_Plaza.ks" target="destination_c_pm_3" text="マッサージを試みる"]
[glink_right storage="SundayDate/SundayDate_Plaza.ks" target="destination_c_pm_4" text="おとなしく休む"]
[s]


;--------------------------------
;--------------------------------
;【選択肢】おとなしく休む
*destination_c_pm_4

[tb_start_text mode=3 ]
#
まあ、あとはダラダラと休んで[r]
お店を出ることにしよう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="massagi1.png"  ]
[mioHyoujou hyoujou="happy1.png" time="0"]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

;先生とみおの体力+20
[calcHP HP="20"]
[calcMioHP HP="20"]

[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょっと疲れましたけど、[r]
効いてるってことなんですよね[p]
[_tb_end_text]


*destination_c_pm_4_end
;ヘッドスパイベントが終了（元のデートの流れに合流する）
[eval exp="f.plaza.today.stageC.pm.select2++" ]
[eval exp="f.plaza.stageC.pm.select2++" ]
[jump target="pre_scene5"]

;--------------------------------
;--------------------------------
;【選択肢】マッサージを試みる
*destination_c_pm_3
[tb_start_text mode=3 ]
#
よし、やってみるか。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
手にジェルをとり、みおの前腕あたりから[r]
揉みほぐしはじめる。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
マッサージ、してくれるんですか？[r]
ありがとうございます[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
機械もいいですけど、人に揉んでもらうのも[r]
これはこれで～……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
様子を見ながら揉む範囲を広げ、[r]
ついでで服もはだけさせていく――[p]
[_tb_end_text]

[if exp="f.mood > f.MOOD_LOW && (f.love > f.LOVE_LOW && f.loveLevel >= f.LOVE_LEVEL_PLUS.indexOf('高2') ) " ]
    [jump target="*destination_c_pm_3_success" ]
[else]
    [jump target="*destination_c_pm_3_fail" ]
[endif]

[if exp="sf.isDebug" ]

    [glink2 fix="true" color="btn_05_black glink_left" size="20" y="400" target="destination_c_pm_3_success" text="成功" cond="sf.isDebug"]
    [glink2 fix="true" color="btn_05_black glink_right" size="20" y="400" target="destination_c_pm_3_fail" text="失敗" cond="sf.isDebug"]
    [p]
[endif]
;-------------------
;失敗（好感度不足など）
*destination_c_pm_3_fail
[clearfix name="btn_05_black" ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
……っ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、も、もう、だいじょうぶですからっ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
危機を察したのか、みおがいそいそと[r]
施術台から降りてしまった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
もうちょっと仲良くなれていれば[r]
警戒させずに進めたかもしれないな……[p]
[_tb_end_text]

;　→「【選択肢】おとなしく休む」選択後と同じラベルへ移動
[jump target="destination_c_pm_4"]


;-------------------
;成功
*destination_c_pm_3_success
[clearfix name="btn_05_black" ]
;　→同系カードで後日指示する乳首イキシーン本体を発生させる。
;　　その実装が済むまでは、仮テキストで「成功」とだけだしてヘッドスパイベントが終了（元のデートの流れに合流する）
[call storage="Hscene/selfEsthe01.ks" ]
[selfEsthe01]

[jump target="*destination_c_pm_4_end"]


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;以上

[jump target="pre_scene5"]