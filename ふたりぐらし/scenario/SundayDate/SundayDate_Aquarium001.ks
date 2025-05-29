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
[bgChange  time="0"  method="crossfade"  storage="bk100.jpg"  ]
;適当なものが無いor外観という概念がない場所などの場合、とりあえず黒塗りbk100
;暗転中に出しておくのでtime=0
[return]
;===================================================================================================
;内観bg
*dateSpot_interior
[bgChange  time="1000"  method="crossfade"  storage="aquarium2.jpg"  ]
[return]
;===================================================================================================
;出発時みお反応

*departure

[if exp="f.commandForce" ]

    [goForce spotName=&f.strDateSpot]

;■水族館に行ったことが無い
[elsif exp="f.aquarium.total == 0"]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
あ、あの水族館ですよね[r]
いちど行ってみたかったんです[p]
[_tb_end_text]

[elsif exp="f.aquarium.total > 0 && !f.isDateSpotSame"]
;■水族館に来たことがあり、連続していない（前回お出かけは別の場所）
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0214.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
はいっ[r]
前お出かけした時も楽しかったですよね[p]
[_tb_end_text]


[elsif exp="f.aquarium.total > 0 && f.isDateSpotSame && f.favoriteDate !='aquarium'"]
;■水族館に来たことがあり、連続している（前回お出かけもここ）
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
先生って水族館がお好きなんですね[r]
わかりました[p]
[_tb_end_text]

[else]
;■水族館に来たことがあり、連続している（前回お出かけもここ）かつ、水族館がお気に入り
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
――移動中に調べたところによると[r]
かなり大きな水族館だったみたいだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
イルカショーはもちろん、[r]
海中体験ができるドーム型通路も目玉らしい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
一、二度来たぐらいじゃ[r]
回りきれないかもしれないほど広い。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
全体的におしゃれな雰囲気で[r]
子連れの家族よりも、デートの二人組みが多かった。[p]
[_tb_end_text]

[return]
;===================================================================================================
;到着時みお反応
*arrival

;■分岐：はじめて来た
[if exp="f.aquarium.total == 0"]

[messageON]
[mioHyoujou hyoujou="kiraegao_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0198.mp3"  ]
[tb_start_text mode=3 ]
#みお
わぁー……きれい……[p]
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
[eval exp="f.aquarium.total++" ]
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
まずは順路にそって館内を進んでいく。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
エントランス部分を通るだけでも、たくさんの水槽や[r]
目を惹く展示、売店とにぎやかだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[setTime hours=10 minutes=30]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


;[tb_hide_message_window  ]
;★1500ミリ秒程度でスチル表示　水族館デート用スチルFG003_1.png
;[wait  time="500"  ]
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="1500" name="FG003"]
;スチル表示中なので立ち絵指定なし
;[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
先生、こっちこっち！[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=4 ]
#＜話題選択＞
こちらの手を引いて[r]
みおは楽しそうに先へ先へ進んでいく。[l]
[_tb_end_text]

[setDateSitu]
[debugDateBtn]
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

;一択目：安直な話題ふり
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black"  align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="どこに興味がある？"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="好きな海の生き物は？"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="水族館でよかった？"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[endif]

;(1-d.疲れてない？)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="売店とか寄っていく？"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="はぐれないようにしないと"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

;(2-d.もう半日経ったのか……)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="薄暗い屋内で落ち着く"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="あの魚、美味しそう"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="実は泳げなくて"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[endif]

[s]
[s]

;(3-d.お腹すいてきた)

;↑選択肢のみお回答を表示した後、↓に合流。


;■2.施設内の移動先
*scene2_2

[setTime hours=11 minutes=0]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
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

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="イルカショーを見に行く" exp="f.destination='a'"  _clickable_img=""  target="destination_a_am"  ]
[glink  color="btn_05_black" align="center" addlog="true" storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="ドーム型通路で海中体験に" exp="f.destination='b'"  _clickable_img=""  target="destination_b_am"  ]
[glink  color="btn_05_black" align="right" addlog="true" storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="展示の水槽をめぐってみる"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_am"  ]
[s]
[s]


;↑選択肢のみお回答を表示した後、共通部【３】ランチに合流。


;選択肢座標目安
;２択時
;[glink  color="btn_05_black" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="〇〇〇に出かける"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="■■■"  ]
;[s]

;３択時
;[glink  color="btn_05_black" addlog="true"  storage=""  size="20"  x="275"  y="400"  width=""  height=""  text="ハンバーグ"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black" addlog="true"  storage=""  size="20"  x="590"  y="400"  width=""  height=""  text="チャーハン"  _clickable_img=""  target="■■■"  ]
;[glink  color="btn_05_black" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="肉じゃが"  _clickable_img=""  target="■■■"  ]
;[s]


;===================================================================================================
*pre_scene3
;[freeimage layer="1"]
[jump storage="SundayDate/commonDate.ks" target="scene3"]


;　【３】ランチ＆帰宅判定

*scene3
;ランチ

;■この場所でのランチがはじめて
[if exp="f.aquarium.lunch==0"]
[tb_start_text mode=3 ]
#
水族館の中にレストランがあるらしい。[r]
そこでランチにしよう。[p]
[_tb_end_text]


[bgChange  time="1000"  method="crossfade"  storage="aquarium4.png"  ]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
わあ～……水槽を見ながら[r]
ごはんが食べられるんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
メニューはイタリアン寄りなのかな[r]
楽しみですね、えへへ[p]
[_tb_end_text]



[else]
;■この場所でのランチ２回目以降
[tb_start_text mode=3 ]
#
水族館の中のレストランで[r]
ランチを食べて行こう。[p]
[_tb_end_text]

[bgChange  time="1000"  method="crossfade"  storage="aquarium4.png"  ]

[mioHyoujouSabun hyoujou="happyake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
今回はなににしようかなぁ[p]
[_tb_end_text]
[endif]
[return]
;===================================================================================================
;食事テキスト（ランチ）
*eat_lunch
[messageON]
[tb_start_text mode=3 ]
#
美味しいイタリアンの魚介コースを平らげた。[p]
[_tb_end_text]
[eval exp="f.aquarium.lunch++" ]

[return]
;===================================================================================================
;　【４】午後行動
*scene4

;午後行動
[bgChange storage="aquarium2.jpg" time="1000"]

[tb_start_text mode=3 ]
#
――館内をもう少し歩きながら[r]
午後のプランを考えることになった。[p]
[_tb_end_text]


;■1.午前と同じ雑談選択肢。詳細は午前側。



[setTime hours=13 minutes=30]

;[tb_hide_message_window  ]
;★1500ミリ秒程度でスチル表示　水族館デート用スチルFG003_1.png
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="1500" name="FG003"]
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

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="好きな海の生き物は？"  _clickable_img="" exp="f.answer1='a'"  target="answer1_b"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="水族館でよかった？"  _clickable_img="" exp="f.answer1='b'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="疲れてない？"  _clickable_img="" exp="f.answer1='c'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'b'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="どこに興味がある？"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="水族館でよかった？"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="疲れてない？"  _clickable_img="" exp="f.answer1='c'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'c'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="どこに興味がある？"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="好きな海の生き物は？"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="疲れてない？"  _clickable_img="" exp="f.answer1='d'"  target="answer1_d"  ]

[endif]

[else]


[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="どこに興味がある？"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="好きな海の生き物は？"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="水族館でよかった？"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]

[endif]

[endif]
;(1-d.疲れてない？)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="f.answer2 == 'a'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="はぐれないようにしないと"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="もう半日経ったのか……"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]

[endif]

[elsif exp="f.answer2 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="売店とか寄っていく？"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="もう半日経ったのか……"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[elsif exp="f.answer2 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="売店とか寄っていく？"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="はぐれないようにしないと"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="もう半日経ったのか……"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="売店とか寄っていく？"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="はぐれないようにしないと"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="二人連れが多いね"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

[endif]

;(2-d.もう半日経ったのか……)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="f.answer3 == 'a'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="あの魚、美味しそう"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="実は泳げなくて"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="お腹すいてきた"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="薄暗い屋内で落ち着く"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="実は泳げなくて"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="お腹すいてきた"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="薄暗い屋内で落ち着く"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="あの魚、美味しそう"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="お腹すいてきた"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="薄暗い屋内で落ち着く"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="あの魚、美味しそう"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="実は泳げなくて"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[endif]

[endif]

[s]
[s]


*scene4_2
;■2.午前と同じ施設内の移動先。詳細は午前側。
[setTime hours=14 minutes=0]
[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=4 ]
#＜行きさき選択＞
さて、それじゃあ[r]
午後はどこに行ってみようかな[l]
[_tb_end_text]

[setDateSitu]

;※選択肢表示
[if exp="f.destination=='a'"]
[glink  color="btn_05_black" align="left"  addlog="true" storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ドーム型通路で海中体験に" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]
[glink  color="btn_05_black" align="right"  addlog="true" storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="展示の水槽をめぐってみる"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[elsif exp="f.destination=='b'"]
[glink  color="btn_05_black" align="left"  addlog="true" storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="イルカショーを見に行く" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right"  addlog="true" storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="展示の水槽をめぐってみる"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[else]
[glink  color="btn_05_black" align="left" addlog="true" storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="イルカショーを見に行く" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true" storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="ドーム型通路で海中体験に" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]

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
;■この場所でのディナーがはじめて
[if exp="f.aquarium.dinner==0"]

[tb_start_text mode=3 ]
#
ランチと同じレストランだけど、[r]
夜はだいぶ違った雰囲気でディナーをやっているらしい。[p]
[_tb_end_text]

;ちょっと薄暗い差分にする？
[bgChange  time="1000"  method="crossfade"  storage="aquarium4_n.png"  ]

[mioHyoujouSabun hyoujou="rakuake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ぜんぜん違うお店みたいですね[r]
大人な雰囲気[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
ディナー用にワインとか合いそうなメニューですね[r]
わたしは飲めませんけど……[p]
[_tb_end_text]



[else]
;■この場所でのディナー２回目以降
[tb_start_text mode=3 ]
#
館内のレストランでやってる[r]
ディナーを食べて行こう。[p]
[_tb_end_text]

;ちょっと薄暗い差分にする？
[bgChange  time="1000"  method="crossfade"  storage="aquarium4_n.png"  ]

[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
ここのディナー、実はとっても楽しみでした[r]
えへへ……[p]
[_tb_end_text]

[endif]

[return]
;===================================================================================================
;食事テキスト（ディナー）
*eat_dinner
[messageON]
[tb_start_text mode=3 ]
#
ロマンチックなひとときを過ごした……[p]
[_tb_end_text]
[eval exp="f.aquarium.dinner++" ]
[return]
;【雑談の選択肢】回答パターン

;この会話中では、立ち絵の代わりに水族館スチル差分をみおの表情変化として指定

*dateSuccess
        
        [mioHyoujouSabun hyoujou="happy2.png"]

        [tb_start_text mode=3 ]
        #
        楽しそうにしているみおの白のワンピースが[r]
        周囲の青い照り返しを受けてまばゆいばかりだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ほほえましく眺めていると、[r]
        はしゃぐみおがこちらの手を取って――……[p]
        [_tb_end_text]
[return]

;-------------------------------------
;1-a.どこに興味がある？
*answer1_a
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
[deleteDateSitu]
[if exp="tf.rand ==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500" name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0167.mp3"  ]
[tb_start_text mode=3 ]
#みお
どこにと言いますか……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0161.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生が水族館のどんなところに[r]
興味を持つのか、がわたしには気になります[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふだんと違うところが見られたら[r]
うれしいなあ、って[p]
[_tb_end_text]



[elsif exp="tf.rand ==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっと、そうですね……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
今日はドーム通路とかイルカのショーとかの気分です[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0160.mp3"  ]
[tb_start_text mode=3 ]
#みお
あれ、でもイルカのショーって[r]
水しぶきとかで濡れるんでしたっけ[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
危なくなったらかばってくださいね[r]
……なんて[p]
[_tb_end_text]




[elsif exp="tf.rand ==2"]
;回答３
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
せっかくですし全部回っていきたいんですけど[r]
すごく大きな水族館みたいですね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
時間が決まってる出し物もあるみたいだし……[r]
最初に回るところ決めないとアワアワしちゃいそうですね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも、そうなったら[r]
また遊びに来ましょうね[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]

;-------------------------------------
*answer1_b
#
;1-b.好きな海の生き物は？
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 4" ]
[getrand min=0 max=2]
[deleteDateSitu]
[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
サケって、海の生き物でいいんでしょうか？[r]
川にもいるし……[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういう場所で詳しいお話を聞くと[r]
なんでもそうなんだーって気に入っちゃうんですよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
見てておもしろいのはおっきなお魚かな[r]
マンボウとか、いいですね[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0158.mp3"  ]
[tb_start_text mode=3 ]
#みお
カメさんも好きですし[r]
クラゲもかわいいなって[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku5_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
あと、ペンギンとかカワウソって[r]
動物園でも水族館でも見られてうれしいです[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer1_c
#
;1-c.水族館でよかった？
[eval exp="f.dateEval++" cond="f.dateSituNum == 1" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0" ]
[deleteDateSitu]
[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、もちろんです[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="EvKusai1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
動物園も好きなんですけど、[r]
吠えられたりなんだったりがあるので……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
水族館の方が、なんというか、[r]
安心していられるというか[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0058.mp3"  ]
[tb_start_text mode=3 ]
#みお
どんな場所でも連れ出してもらえるだけで[r]
とってもうれしいです[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
近くにあるのは知ってても[r]
ひとりじゃなかなか行けなかったから[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[r]
先生が水族館が好きで来たんじゃないんですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0112.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生が楽しめる場所だったら[r]
わたしも楽しいですよ[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer1_d
#
;1-d.疲れてない？
[eval exp="f.dateEval++" cond="f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[deleteDateSitu]
[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、お昼も美味しかったですし[r]
元気いっぱいです[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも食後ですし、どこかで座って[r]
お話して休んでいくのもいいですね[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
実は……元気なつもりで、自分が疲れてるかどうか[r]
気づきづらいところがあって[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0200.mp3"  ]
[tb_start_text mode=3 ]
#みお
こどもの時とか、遠足で思いきりはしゃいで[r]
次の日に熱出して寝込んだり、よくありました[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしの様子がヘンだったら教えてくださいね[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
これは、勇気を出した冗談なんですけど……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0205.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあわたしが疲れて歩けなくなっちゃったら、[r]
先生、おんぶしてくれますか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんちゃって……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、冗談、冗談ですってばぁっ[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_a
#
;2-a.売店とか寄っていく？
[getrand min=0 max=2]
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[deleteDateSitu]
[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0199.mp3"  ]
[tb_start_text mode=3 ]
#みお
なつかしいです[r]
小さいころ水族館のお土産をいろいろもらってて[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normalake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=3 ]
#みお
水鉄砲とか、ぷるぷるのカラフルなお水が落ちてく[r]
砂時計みたいなおもちゃとか[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
あれって今もあるのかな[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0102.mp3"  ]
[tb_start_text mode=3 ]
#みお
どなたかにお土産とか買っていきますか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
お店に行けばきっといろいろありそうですけど[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
寄るのは帰りにしないと[r]
大荷物で歩き回ることになってしまいます……[p]
[_tb_end_text]

[else]
;回答３
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
ぬいぐるみがたくさんありますね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0018.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　買ってくれる……？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0058.mp3"  ]
[tb_start_text mode=3 ]
#みお
どれもかわいいので、ひとつお迎えしたら[r]
次も次もって止まらなくなっちゃいますよ[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_b
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 5" ]
[deleteDateSitu]
[getrand min=0 max=2]
;2-b.はぐれないようにしないと

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
それは確かに心配かも……？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、でもよく考えたら[r]
電話で連絡とりあえば済みますよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0134.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　水族館ってお水に囲まれてるから[r]
圏外になりやすいんですか？[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
迷子にならないか心配ですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうなったら館内放送で呼びかけてもらったり[r]
職員さんに背格好とか服装を伝えたりするんでしたっけ[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
今のうちに写真を撮っておけば説明するのに便利ですね[r]
記念にもなりますし[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
大丈夫ですよ[r]
こうして手をつないでるんですし[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
手を……つないで……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
意識したら急に恥ずかしくなってきました[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_c
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
[deleteDateSitu]
[getrand min=0 max=2]
;2-c.二人連れが多いね

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、どのあたりですか？[r]
あっちの水槽？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
……水槽じゃない？[r]
人間さんの方の話……でしたか[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
あはは……[r]
お魚を見るのに夢中になってました[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0059.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしたちも周りからはデートに来た[r]
恋人同士に見えてるのかな[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normalake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0146.mp3"  ]
[tb_start_text mode=3 ]
#みお
きっと、見かけはおなじ二人組でも[r]
それぞれみんな違った関係や事情があるんですよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0152.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんだかそれってふしぎでおもしろいです[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
そうですね～[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
…………[r]
……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0158.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひょっとして水族館って[r]
デートスポットなんでしょうか？[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer2_d
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 4 || f.dateSituNum == 5" ]
[deleteDateSitu]
[getrand min=0 max=2]
;2-d.もう半日経ったのか……

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0085.mp3"  ]
[tb_start_text mode=3 ]
#みお
水族館って時間を意識しないというか[r]
雰囲気が独特だから、時間の流れ方が違うみたい[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0151.mp3"  ]
[tb_start_text mode=3 ]
#みお
竜宮城もきっとそんな場所だったんですね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0200.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、おゆうぎかいで乙姫さまやったんですよ[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
お疲れですか……？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
せっかくのお休みなのに[r]
お構いいただいてありがとうございます[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0235.mp3"  ]
[tb_start_text mode=3 ]
#みお
おうちに帰ったら今日はゆっくりお風呂に入って、[r]
たっぷり眠ってくださいね[p]
[_tb_end_text]




[else]
;回答３
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっという間でしたね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0085.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも全然回れてないみたいです[r]
この水族館すっごく広くて[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、ほら先生、[r]
あそこのカメさんもかわいいですよ！[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_a
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1" ]
[deleteDateSitu]
[getrand min=0 max=2]
;3-a.薄暗い屋内で落ち着く

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
たしかに……[r]
ベンチで寝てるひと見かけますよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="rakuake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0168.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしたちもお昼寝していきます？[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
水槽の青いぼんやり光とか泡がぶくぶくしてるのって[r]
ずっと眺めてられますよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
焚き火の火を見てぼーっとする気持ちよさと[r]
似てる気がします[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
わかります[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="metoji.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0234.mp3"  ]
[tb_start_text mode=3 ]
#みお
お部屋がこういう感じにできたらなぁ……って[r]
考えたりしますよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="kira5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
でもきっと今のおうちのままが一番ですよ[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_b
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0" ]
[deleteDateSitu]
#
[getrand min=0 max=2]
;3-b.あの魚、美味しそう

[if exp="tf.rand ==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0059.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしもサンマとかマグロとか、泳いでるの見ると[r]
ちょっとふしぎな感じします[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0202.mp3"  ]
[tb_start_text mode=3 ]
#みお
明日のごはん、ムニエルかなにか[r]
お魚の料理にしましょか？[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
どのお魚ですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっと……あそこの、深海魚？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="EvKusai1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0149.mp3"  ]
[tb_start_text mode=3 ]
#みお
……三枚おろしでいいなら、なんとか[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="metoji.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0167.mp3"  ]
[tb_start_text mode=3 ]
#みお
熱帯魚って味はそんなに……[r]
って言いますけど、本当なんでしょうか[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0140.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういうのを出してくれる[r]
水族館みたいなレストランもあるらしいですね[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_c
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 2 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0" ]
[deleteDateSitu]
[getrand min=0 max=2]
;3-c.実は泳げなくて……

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
水族館ってそういうところじゃないですよね！？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
からかわないでくださいよぉ[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
イルカさんといっしょに泳いだりできたら[r]
楽しそうですよね[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0187.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、でもそうなると[r]
ダイビングになっちゃうのかな[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0206.mp3"  ]
[tb_start_text mode=3 ]
#みお
いつか海に遊びに行くのもいいですね[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
謙遜して実はけっこう泳げたり……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
え、わたしの方は泳げるのか、ですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="normal_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
うーん……[r]
ふふ、ないしょです[p]
[_tb_end_text]

[endif]

[if exp="f.hours >= 13"]
[jump target="scene4_2"]
[else]
[jump target="scene2_2"]
[endif]
;-------------------------------------
*answer3_d
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4 || f.dateSituNum == 5" ]
[deleteDateSitu]
[getrand min=0 max=2]
;3-d.お腹すいてきた

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0213.mp3"  ]
[tb_start_text mode=3 ]
#みお
さっきお昼食べたばかりですよ！？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
……でも、ちょっとわかるかも[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
ごはんの後でも屋台のアイスなんか見ると[r]
食べたいなーって思っちゃいますよね[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふふっ、もう晩ごはんのこと考えてるんですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0168.mp3"  ]
[tb_start_text mode=3 ]
#みお
どうしましょうね[r]
一日ずっと外食なんて贅沢は申し訳ないですし……[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
さっきのランチ、先生も遠慮されてたんですか？[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0134.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……先生も、っていうのは[r]
えっと……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="metoji_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょっと恥ずかしくて、わたしも食べすぎたり[r]
あれこれ注文しすぎないようにしてて……[p]
[_tb_end_text]

;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="raku5_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
いっしょ、ですね[r]
えへへ……[p]
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
;【午前】イルカショーを見に行く
*destination_a_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 2" ]
;-------------------------------------
;【午前】イルカショーを見に行く
[freeimage layer="1"]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょうど始まる時間みたいですね[r]
ぜひ行きましょう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="aquarium3_d.jpg"  ]
[playse storage="BGS/Shoppingmall.mp3" buf="0" ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
……スタジアムは満員になっていて、[r]
立ち見の人もいるほどだった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
前の方の席に座れてよかったですね[p]
[_tb_end_text]

;------
;「イルカショー（午前）」初回のとき表示
[tb_start_text mode=3 ]
#
どうやらこのイルカのショーが[r]
水族館で一番人気の催しらしい。[p]
[_tb_end_text]

;「イルカショー（午前）」初回のとき表示
[if exp="f.aquarium.stageA.am == 0" ]

    [tb_start_text mode=3 ]
    #
    えーと、プログラムは……[p]
    [_tb_end_text]

[else]

    ;「イルカショー（午前）」初回のとき表示かつ、「イルカショー（午後）」閲覧済みの場合はこちらに分岐
    [tb_start_text mode=3 ]
    #
    えーと、プログラムは……[r]
    午後のショーとはまた違った内容みたいだ。[p]
    [_tb_end_text]

[endif]

;------

[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、はじまりますよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0198.mp3"  ]
[tb_start_text mode=3 ]
#みお
わあーっ、先生！　白いイルカさん！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
花形らしいシロイルカがダイバーとの見事な遊泳で[r]
会場を沸かせる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
演目のなか、徐々にイルカたちが増えていき――[p]
[_tb_end_text]

[playse storage="se/zabuuun1.mp3" buf="0" ]

[tb_start_text mode=3 ]
#
客席ぎりぎりに水しぶきを上げながら泳ぐ大回転。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
つめたっ、わわぁっ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
一頭また一頭と立て続けの浮き輪くぐり。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komruake4_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0018.mp3"  ]
[tb_start_text mode=3 ]
#みお
きゃぁっ！？[p]
[_tb_end_text]

[playse storage="se/zabuuun2.mp3" buf="1" ]

[tb_start_text mode=3 ]
#
極めつけに天井に届きそうなハイジャンプ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoruake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
みゃあーーー！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……いずれも派手なスプラッシュが続いて、[r]
前方に居た自分たちはずいぶんと水を浴びた。[p]
[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[tb_start_text mode=3 ]
#
タオルが配られているし、会場内はあたたかいから[r]
服はすぐに乾くだろうけれど……[p]
[_tb_end_text]

[if exp="f.aquarium.stageA.am == 0" ]

    ;「イルカショー（午前）」初回の場合
    [mioHyoujouSabun hyoujou="situmon_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0129.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こ、こんなに濡れるとは思いませんでした……[p]
    [_tb_end_text]

[else]

    ;「イルカショー（午前）」２回め以降の場合
    [mioHyoujouSabun hyoujou="situmon_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0129.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今回もびしょびしょになっちゃいましたね[p]
    [_tb_end_text]

[endif]

[tb_start_text mode=3 ]
#
……濡れ髪に身体の線が浮いたみおの姿を[r]
直視してはいけない気がする。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、先生、そこちゃんと拭けてませんよ[r]
じっとして……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そう言って、みおが自分のタオルで[r]
こちらの首筋や胸のあたりを拭いてくる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、これで大丈夫[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
今日いちばんドキドキしたかもしれない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……しかし、近くの他の客はここまで濡れていない。[r]
イルカが自分たちばかり狙って水をかけてきた気さえする。[p]
[_tb_end_text]

[if exp="f.aquarium.stageA.am == 0" ]

    ;「イルカショー（午前）」初回の場合
    [tb_start_text mode=3 ]
    #
    例のシロイルカがこちらを眺めて[r]
    ニヤニヤしているように見えた。[p]
    [_tb_end_text]

[else]

    ;「イルカショー（午前）」２回め以降の場合
    [tb_start_text mode=3 ]
    #
    やっぱりあのシロイルカは[r]
    こっちをじっと眺めて大きく口を開けていた。[p]
    [_tb_end_text]

[endif]

[eval exp="f.aquarium.today.stageA.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午前】ドーム型通路で海中体験に
*destination_b_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[freeimage layer="1"]

[mioHyoujouSabun hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふつうの展示よりも[r]
お魚さんを近くに感じられそうですよね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="aquarium1.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]
[tb_start_text mode=3 ]
#
薄暗い廊下のゆるいスロープを降っていくと、[r]
やがてパッと視野が開けた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
おぉ～……[p]
[_tb_end_text]


;「ドーム型通路（午前）」２回目以降
;[mioHyoujouSabun hyoujou="noramalake1_Red.png"]
;[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
;[tb_start_text mode=3 ]
;#みお
;何回来てもこの瞬間は声が出ちゃいます[p]
;[_tb_end_text]

[tb_start_text mode=3 ]
#
触れこみ通り、海の中そのものの景色だ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
トンネル型の通路では独特の反響があって、[r]
五感全体が非日常の感覚に包まれている。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanaketojime2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
すー……はー……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あの、いえ……[r]
吸える時に息を吸った方がいいかな、って……[p]
[_tb_end_text]


;「ドーム型通路（午前）」２回目以降
;[tb_start_text mode=3 ]
;#
;既視感のあるやりとりだった。[p]
;[_tb_end_text]

[tb_start_text mode=3 ]
#
でもたしかに臨場感というか、[r]
地上に居ることを忘れそうな瞬間はある。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
水槽の中で大きな魚影がゆらめくと[r]
つい身をかわしそうになる。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふふっ、先生だって今の[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そんなやりとりをしていると[r]
周囲でわっと声があがった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0076.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、先生！[r]
ペンギンさんが泳いでます！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0094.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほら、真上ですよ真上[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
朝日にきらめく水中で[r]
独特のまるっこいシルエットが飛び交っている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
よちよち歩きのペンギンも[r]
水の中ではあんなにも自由に動けるのだなぁ……[p]
[_tb_end_text]

[mioJump]
[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
かわいい～[r]
はやいはやい～[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……ふむ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[r]
どうしました？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なんでもない。[r]
と、ごまかしておいた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……言えない。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
今のみおのかっこうがペンギンに似ていると[r]
思ってしまったなんて。[p]
[_tb_end_text]


;「ドーム型通路（午前）」２回目以降に追加
;[mioHyoujouSabun hyoujou="okoru2_red.png"]
;[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
;[tb_start_text mode=3 ]
;#みお
;前もごまかしてたじゃないですか[r]
;教えてくださいよ～[p]
;[_tb_end_text]

;同上
;[tb_start_text mode=3 ]
;#
;ぷりぷり怒るとますます似ていた。[p]
;[_tb_end_text]

[jump target="pre_scene3"]
;-------------------------------------
;【午前】展示の水槽を順番にめぐってみる
*destination_c_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 3" ]

[freeimage layer="1"]


[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうしましょうか[r]
案内のやじるしの通りに進んでいけばいいんですよね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
案内通りにテクテク歩いた。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="aquarium2.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[mioHyoujouSabun hyoujou="kira2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほんとにたくさんのお魚がいるんですね[r]
きれいだなぁ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
有名どころやコミカルな魚の水槽は[r]
こどもたちが大勢居て、チラ見の通過になった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういう時、次でいいかなぁって遠慮しちゃって[r]
なかなか近づけないんですよね、えへへ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
気持ちはわかる。[r]
中は広いし、無理せず別の場所へ行けばいい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
――……という感じで流れに流れた結果。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kira2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0198.mp3"  ]
[tb_start_text mode=3 ]
#みお
サメさん！[p]
[_tb_end_text]

;「展示の水槽（午前）」初回
[tb_start_text mode=3 ]
#
サメエリアにやってきた。[p]
[_tb_end_text]

;「展示の水槽（午前）」２回目以降
[tb_start_text mode=3 ]
;#
;サメエリアにやってきた。[r]
;……前もこうじゃなかったっけ？[p]
;[_tb_end_text]

[mioHyoujouSabun hyoujou="kira5_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
うわあ、おっきぃ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、ちらっとお口の中みえましたよ[r]
ほんとに歯がびっしり[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
大変楽しんでいた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0191.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生！[r]
水槽のガラスごしなら怖くありませんよ！[p]
[_tb_end_text]

;「展示の水槽（午前）」２回目以降
;[tb_start_text mode=3 ]
;#
;前も聞いたそれ。[p]
;[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのぅ、サメの怖い映画みてからしばらくプールでも[r]
怖くなっちゃってた時期があるので……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
水族館なら平気なんだってわかると[r]
こくふくしたぞ！　ってうれしくなります！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0098.mp3"  ]
[tb_start_text mode=3 ]
#みお
さっ、次のサメさんを見に行きましょう！[r]
まだ何種類も居ますよ！[p]
[_tb_end_text]


;「展示の水槽（午前）」初回
[tb_start_text mode=3 ]
#
これなら何回サメを見に来ても[r]
大喜びしてくれそうだ。[p]
[_tb_end_text]



[jump target="pre_scene3"]
;-------------------------------------
;【午後】イルカショーを見に行く
*destination_a_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 2" ]
;【午後】イルカショーを見に行く
[freeimage layer="1"]

[mioHyoujouSabun hyoujou="happyake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
実はスタジアムの方がライトアップされてて[r]
きれいだなぁって思ってたんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0126.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生がよければいっしょに行きましょう？[p]
[_tb_end_text]
[tb_hide_message_window  ]

[wait  time="500"  ]
[maskStart]
[eval exp="f.bgm = f.beforeBGM" ]
[fadeoutbgm2 time="2000" ]
[bgChange  time="0"  method="crossfade"  storage="aquarium3_n.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
夕方からのイルカのショーは[r]
日中とはずいぶんと雰囲気が違うようだ。
[fadeinbgm2 storage="../bgm/BGM11_temptation.mp3" time="2000" ]
[p]
[_tb_end_text]
[mask color="0x8a2be2" time="750" ]
;（適当な色のフラッシュ（かなりゆっくり））
[mask_off time="750"]

[tb_start_text mode=3 ]
#
窓を閉め切った暗いスタジアムは[r]
鮮やかにライトアップされている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ショーのない時間も憩いの場として解放されており、[r]
何組かの人影がまばらに腰を落ち着けていた。[p]
[_tb_end_text]

;「イルカショー（午前）」を見たことがある場合は追加

[if exp="f.aquarium.stageA.am >= 1" ]

    [tb_start_text mode=3 ]
    #
    日中のショーは家族連れ向けだったけど、[r]
    日暮れからはデート用の雰囲気に切り替わるようだ。[p]
    [_tb_end_text]

[endif]

[mioHyoujouSabun hyoujou="rakuake1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]
[mask color="0x00ffff" time="750"]
;（適当な色のフラッシュ（かなりゆっくり））
[mask_off time="750"]

[tb_start_text mode=3 ]
#
心地よい疲労感にひたりながら[r]
しずかに、カラフルに輝く水面を眺めている。[p]
[_tb_end_text]

;（適当な色のフラッシュ（ここは他よりはやめ））
[mask color="00ffff" time="400"]
[mask_off time="400"]

[tb_start_text mode=3 ]
#
ときおり、噴水のようにレーザーライトが[r]
天井まで伸びて、自然と視線も上を向く。[p]
[_tb_end_text]


;（適当な色のフラッシュ（ここは他よりはやめ））
[mask color="0xdda0dd" time="750"]
[mask_off time="750"]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……あ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
同時に視線をあげて、同時に気づいた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生……まわりの人たちって……[r]
その……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
薄暗くて影のようにしか見えないが、[r]
どんな動きをしているかはわかる。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
キスやらなにやらして、要するにいちゃついていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いい雰囲気だったのに[r]
急に気まずくなってしまった。[p]
[_tb_end_text]

[if exp="f.aquarium.am >= 1" ]

    ;「イルカショー（午後）」２回め以降の場合
    [tb_start_text mode=3 ]
    #
    前回だけかと思ったのに、[r]
    ここはいつもこうなのか……！[p]
    [_tb_end_text]

[endif]

[mioHyoujouSabun hyoujou="komruake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
……あ、イルカさん[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どうやら次のショーの時間が近いらしい。[r]
数頭のイルカがプールに姿を現していた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
折よくはじまったショーはフィギュアスケートのような[r]
優雅な演目でしめやかに進んでいった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
その間、頭にあったのは、いつの間にか握り合っていた[r]
お互いの手のぬくもりばかりだったのだけれども。[p]
[_tb_end_text]



;「イルカショー（午後）」２回め以降の場合
;[tb_start_text mode=3 ]
;#
;……何度来ても[r]
;この展開には慣れそうになかった。[p]
;[_tb_end_text]


[jump target="pre_scene5"]
;-------------------------------------
;【午後】ドーム型通路で海中体験に
*destination_b_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 4" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2" ]
[freeimage layer="1"]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
人も減ってきましたし、[r]
今がいいタイミングかもですね[p]
[_tb_end_text]
[tb_hide_message_window  ]

[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="aquarium1.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
薄暗い廊下のゆるいスロープを降っていくと、[r]
やがてパッと視野が開けた。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
この感じ、映画館に入る時みたいですよね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
触れこみ通り、海の中そのものの景色だ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
午後は自然光が弱まっているせいか、[r]
もっと深い海の底に来たような感じがする。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
深海って、宇宙に似てる気がします[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、イメージですよ[r]
行ったことはないので……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
あったらおおごとだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……みおの感性に影響されたのか。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ちょうど側方をよぎった小魚の群れが[r]
夜空の星のようにも、天の川のようにも見えた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……しかし、なるほど。[r]
みおの言う通りかもしれない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
宇宙も深海もおなじもの――すべてはつながっている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どこかから聞こえてくる規則的な[r]
泡の音で精神が解放されていくのを感じる。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
……先生？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そう、すべてはつながっているのだ……[r]
宇宙の真理とは……生命とは……[p]
[_tb_end_text]

;「ドーム型通路（午後）」初回の場合
[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生っ、せんせーっ！？[p]
[_tb_end_text]

;「ドーム型通路（午後）」２回目以降の場合
;[mioHyoujouSabun hyoujou="situmon_red.png"]
;[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0188.mp3"  ]
;[tb_start_text mode=3 ]
;#みお
;またですか先生っ、せんせーっ！？[p]
;[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[tb_start_text mode=3 ]
#
はっ、自分はなにを……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="yowaegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
よかった……いつもの先生だ……[r]
さっきまでお地蔵さんみたいな顔になってたんですよ[p]
[_tb_end_text]

;「ドーム型通路（午後）」２回目以降に追加
;[mioHyoujouSabun hyoujou="fuan_red.png"]
;[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0006.mp3"  ]
;[tb_start_text mode=3 ]
;#みお
;あの悟りそうなお顔、[r]
;何回見てもびっくりします……[p]
;[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
呼び戻していいか迷うぐらい[r]
うっとりした様子だったんですから……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうなのか。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
よく覚えてないのだけど、[r]
遠慮なく呼び戻してほしいと伝えた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
わかりました[r]
お任せください！[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……その後はなにごともなく[r]
カメやマンボウを鑑賞しながら通路を抜けたのだった。[p]
[_tb_end_text]
[jump target="pre_scene5"]
;-------------------------------------
;【午後】展示の水槽を順番にめぐってみる
*destination_c_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 3" ]
;【午後】展示の水槽を順番にめぐってみる
[freeimage layer="1"]

[mioHyoujouSabun hyoujou="happy4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい[r]
それじゃあ、このまま順路を進む感じですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いろんなコーナーに寄り道するから[r]
意外に展示を回りきっていなかったことだし。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="aquarium2.jpg"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]

;「展示の水槽（午前）」初回を見たことがあり、「展示の水槽（午後）」は初回
;[tb_start_text mode=3 ]
;#
;同じ順路でも時間帯によって人の入りや込み具合も違って[r]
;じっくり見られる水槽も変わって来る。[p]
;[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの足が止まったのはコミカルでユーモラスな[r]
生き物のコーナーだった。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
カエルだったり、ナポレオンフィッシュや[r]
フグやらハリセンボンだったり、そういう感じの。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、ここ見ていってもいいですか……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
と言うそばから、みおは水槽やその脇の解説文を[r]
熱心に見つめている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
分類上はフグとハリセンボンが同じフグ目なのはわかるけど[r]
マンボウも意外と近い区分にいるらしい――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……などなど、ウンチクを知るだけでも[r]
思った以上に時間をつぶせそうだ。[p]
[_tb_end_text]

;「展示の水槽（午後）」２回目以降の追加
;[tb_start_text mode=3 ]
;#
;来るたびにこうも解説文を読み込んでいたら[r]
;お魚博士になれてしまいそうだ。[p]
;[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、ちいさい時に買ってもらった絵本がだいすきで[r]
ボロボロになるまでめくって遊んでたんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0076.mp3"  ]
[tb_start_text mode=3 ]
#みお
動物でもお花でも食べ物でもなんでも載ってるようなの、[r]
あるじゃないですか[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komruake6_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0153.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういう図鑑でしか見ない生き物に囲まれてると[r]
自分が図鑑のなかに入っちゃったみたいで楽しいんです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ハリセンボンみたいなのは特に図鑑では[r]
膨らんだ方ばっかりで、小さい姿は新鮮に感じる。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、そうなんですよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0089.mp3"  ]
[tb_start_text mode=3 ]
#みお
だからほら、水族館の人も体験コーナーみたいなの[r]
つくってくれてるみたいで[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの指す方には、ハリセンボンの骨格標本の展示や、[r]
水槽に近付いてにらめっこできる場所が設けられていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
にらめっこ……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、どうですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、わ、わたしはしませんよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanaketojime2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生の前でへんな顔なんてできませんよぅ……[p]
[_tb_end_text]

;「展示の水槽（午後）」２回目以降の追加
;[tb_start_text mode=3 ]
;#
;今回こそは、と思っていたが、
;やっぱり恥ずかしさが勝るものらしかった。[p]
;[_tb_end_text]

[jump target="pre_scene5"]

;以上
