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
[bgChange  time="0"  method="crossfade"  storage="yuuenti1_d.png"  ]
;適当なものが無いor外観という概念がない場所などの場合、とりあえず黒塗りbk100
;暗転中に出しておくのでtime=0
[return]
;===================================================================================================
;内観bg
*dateSpot_interior
[bgChange  time="1000"  method="crossfade"  storage="yuuenti5_d.png"  ]
[return]
;===================================================================================================
;出発時みお反応

*departure

[if exp="f.commandForce" ]

    [goForce spotName=&f.strDateSpot]

;■遊園地に行ったことが無い
[elsif exp="f.land.total == 0"]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0195.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
なるほど……近くの遊園地が[r]
リニューアルオープンしたんですね！[p]
[_tb_end_text]

[elsif exp="f.land.total > 0 && !f.isDateSpotSame"]
;■遊園地に来たことがあり、連続していない（前回お出かけは別の場所）
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0196.mp3"  ]
[messageON]

[tb_start_text mode=3 ]
#みお
先生、あそこがお好きなんですね[r]
わかりました[p]
[_tb_end_text]

[elsif exp="f.land.total > 0 && f.isDateSpotSame && f.favoriteDate !='land'"]
;■遊園地に来たことがあり、連続している（前回お出かけもここ）
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
先生って遊園地がお好きなんですね[r]
わかりました[p]
[_tb_end_text]

[else]
;■遊園地に来たことがあり、連続している（前回お出かけもここ）かつ、水族館がお気に入り
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
――だいすきランド。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そこは、しばし電車にゆられた後、[r]
最寄駅からバスかタクシーでたどりつく。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
開けた平野の中、雄大な山々をバックにしつつ[r]
園内は対照的にカラフルな遊具で溢れている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
冬季は人工降雪機を活用して[r]
小規模なスキー場にもなるそうだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
意外と歴史は古いらしいが改装・改名を重ねて[r]
今なおレジャー施設としての鮮度を保っているとか。[p]
[_tb_end_text]


[return]
;===================================================================================================
;到着時みお反応
*arrival

;■分岐：はじめて来た
[if exp="f.land.total == 0"]

[messageON]
[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
遊園地！　とってもひさびさです！[p]
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
[bgChange time="1000" method="crossfade" storage="yuuenti5_d.png" ]
[eval exp="f.land.total++" ]
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
園内はにぎわっているが、[r]
広くて遊具も多いぶん混雑は感じない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
フリーパスで入場したし、[r]
気ままに歩き回っていける。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
フリーパスでも全部は行けなさそうですね[r]
遊園地っぽいもの何でも揃ってます！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=4 ]
#＜話題選択＞
あれもいいね、これはどうかな、と[r]
わいわい話しながらの散策が続く。[l]
[_tb_end_text]

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
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="陽射しが強い……"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="リニューアル直後だそうで"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="あの着ぐるみは！"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[endif]

;(1-d.ヒーローショーかな)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーパスでよかった"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの観覧車は……"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="メリーゴーランドだ"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

;(2-d.脱出ゲーム……？)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="土産屋があるね"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="すごい園の名前だ"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="顔出しパネルだ"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[endif]

[s]
[s]

;(3-d.スワンボート？)

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

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="おばけ屋敷" exp="f.destination='a'"  _clickable_img=""  target="destination_a_am"  ]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="コーヒーカップ" exp="f.destination='b'"  _clickable_img=""  target="destination_b_am"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="絶叫マシン"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_am"  ]
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

;■この場所でのランチがはじめて
[if exp="f.land.lunch==0"]
[tb_start_text mode=3 ]
#
昼食は……そうだな……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あのホットスナックの屋台はどうだろう。[r]
休憩スペースもすぐそばにあるし。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
いいですね、チュロスも売ってますし[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あれはお菓子じゃないかと思うが、[r]
けっこう腹に溜まるもんなぁ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
などと考えながらドリンクとホットスナックを[r]
買いに行くのだった。[p]
[_tb_end_text]



[else]
;■この場所でのランチ２回目以降
[tb_start_text mode=3 ]
#
ホットスナックの屋台で[r]
お昼代わりを摂ることにした。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
チュロス屋さんです～[p]
[_tb_end_text]


[endif]
[return]
;===================================================================================================
;食事テキスト（ランチ）
*eat_lunch
[messageON]
[tb_start_text mode=3 ]
#
屋外の休憩スペースで[r]
チュロスやフライドポテトを楽しんだ。[p]
[_tb_end_text]

[eval exp="f.land.lunch++" ]

[return]
;===================================================================================================
;　【４】午後行動
*scene4

;午後行動
[if exp="f.dayPart == 'morning'" ]
    [bgChange storage="yuuenti5_d.png" time="1000"]
[elsif exp="f.dayPart == 'evening'" ]
    [bgChange storage="yuuenti5_y.png" time="1000"]
[else]
    [bgChange storage="yuuenti5_n.png" time="1000"]
[endif]

[tb_start_text mode=3 ]
#
――園内をもう少し歩きながら[r]
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

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="リニューアル直後だそうで"  _clickable_img="" exp="f.answer1='a'"  target="answer1_b"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="あの着ぐるみは！"  _clickable_img="" exp="f.answer1='b'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ヒーローショーかな"  _clickable_img="" exp="f.answer1='d'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'b'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="陽射しが強い……"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="あの着ぐるみは！"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ヒーローショーかな"  _clickable_img="" exp="f.answer1='d'"  target="answer1_d"  ]

[endif]

[elsif exp="f.answer1 == 'c'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="陽射しが強い……"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="リニューアル直後だそうで"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="ヒーローショーかな"  _clickable_img="" exp="f.answer1='d'"  target="answer1_d"  ]

[endif]

[else]


[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="陽射しが強い……"  _clickable_img="" exp="f.answer1='a'"  target="answer1_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="リニューアル直後だそうで"  _clickable_img="" exp="f.answer1='b'"  target="answer1_b"  ]
[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="あの着ぐるみは！"  _clickable_img="" exp="f.answer1='c'"  target="answer1_c"  ]

[endif]

[endif]
;(1-d.ヒーローショーかな)


;二択目：ちょっと工夫
[getrand min=0 max=2]

[if exp="f.answer2 == 'a'"]

[if exp="tf.rand ==0"]

[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの観覧車は……"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="メリーゴーランドだ"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="脱出ゲーム……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]

[endif]

[elsif exp="f.answer2 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーパスでよかった"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="メリーゴーランドだ"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="脱出ゲーム……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[elsif exp="f.answer2 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーパスでよかった"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの観覧車は……"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="脱出ゲーム……？"  _clickable_img="" exp="f.answer2='d'"  target="answer2_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="フリーパスでよかった"  _clickable_img="" exp="f.answer2='a'"  target="answer2_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="あの観覧車は……"  _clickable_img="" exp="f.answer2='b'"  target="answer2_b"  ]
[else]
[glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="メリーゴーランドだ"  _clickable_img="" exp="f.answer2='c'"  target="answer2_c"  ]
[endif]

[endif]

;(2-d.脱出ゲーム……？)


;三択目：ボケ系
[getrand min=0 max=2]

[if exp="f.answer3 == 'a'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="すごい園の名前だ"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"   ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="顔出しパネルだ"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="スワンボート？"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'b'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="土産屋があるね"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="顔出しパネルだ"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="スワンボート？"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[elsif exp="f.answer3 == 'c'"]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="土産屋があるね"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="すごい園の名前だ"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="スワンボート？"  _clickable_img="" exp="f.answer3='d'"  target="answer3_d"  ]
[endif]

[else]

[if exp="tf.rand ==0"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="土産屋があるね"  _clickable_img="" exp="f.answer3='a'"  target="answer3_a"  ]
[elsif exp="tf.rand ==1"]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="すごい園の名前だ"  _clickable_img="" exp="f.answer3='b'"  target="answer3_b"  ]
[else]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="顔出しパネルだ"  _clickable_img="" exp="f.answer3='c'"  target="answer3_c"  ]
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
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="コーヒーカップ" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="絶叫マシン"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[elsif exp="f.destination=='b'"]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="おばけ屋敷" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="絶叫マシン"  exp="f.destination='c'"  _clickable_img=""  target="destination_c_pm"  ]

[else]
[glink  color="btn_05_black" align="left" addlog="true"  storage=""  size="20"  x="145"  y="400"  width=""  height=""  text="おばけ屋敷" exp="f.destination='a'"  _clickable_img=""  target="destination_a_pm"  ]
[glink  color="btn_05_black" align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="コーヒーカップ" exp="f.destination='b'"  _clickable_img=""  target="destination_b_pm"  ]

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
[if exp="f.dayPart == 'morning'" ]
    [bgChange time="1000"  method="crossfade"  storage="yuuenti6_d.png"  ]
[elsif exp="f.dayPart == 'evening'" ]
    [bgChange time="1000"  method="crossfade"  storage="yuuenti6_y.png"  ]
[elsif exp="f.dayPart == 'night'" ]
    [bgChange time="1000"  method="crossfade"  storage="yuuenti6_e.png"  ]
[endif]

[if exp="f.land.dinner == 0"]

[tb_start_text mode=3 ]
#
夕食をとりにフードコートにやってきた。[r]
が……――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0212.mp3"  ]
[tb_start_text mode=3 ]
#みお
ランチは軽めだったし、[r]
お夕飯はしっかりめの方がよさそうですけど……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
どのお店も美味しそうで決められなくなっちゃいますね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおもおなじ思いだったようだ。[r]
となれば、大人らしく、大人げない解法をとるとしよう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
ええっ、バイキング方式にするっ！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
１つのお店で腹を満たそうとするから決まらないのだ。[r]
気になるメニュー、気になる店すべて回ればいい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うどん主食にサイドでたこ焼き、[r]
デザートにタイヤキ……みたいなことをしてもいい！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
お、おぉ……！[p]
[_tb_end_text]


[else]
;■この場所でのディナー２回目以降
[tb_start_text mode=3 ]
#
今回もフードコートで気になるメニューを[r]
総取りする贅沢ディナーでもやるか。[p]
[_tb_end_text]


[endif]

[return]
;===================================================================================================
;食事テキスト（ディナー）
*eat_dinner
[messageON]
[tb_start_text mode=3 ]
#
フードコートで気ままなグルメを堪能した……[p]
[_tb_end_text]
[eval exp="f.land.dinner++" ]
[return]
;【雑談の選択肢】回答パターン

;この会話中では、立ち絵の代わりに水族館スチル差分をみおの表情変化として指定

*dateSuccess
        
        [mioHyoujouSabun hyoujou="happy2.png"]

        [tb_start_text mode=3 ]
        #
        遊園地の中をピンクのニットではしゃぐみおは[r]
        花が咲いたようにかわいらしい。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        もう少しこの時間を引き延ばしたくて[r]
        手近なお店にみおを誘った。[p]
        [_tb_end_text]
[return]

;-------------------------------------
;1-a.陽射しが強い……
*answer1_a
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 4" ]
[getrand min=0 max=2]

[if exp="tf.rand ==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500" name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
日焼け止めありますよ[r]
先生にも塗ってあげますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ぬーりぬり[p]
[_tb_end_text]




[elsif exp="tf.rand ==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0162.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　フリーパスのバンド？[r]
腕に巻いてますよ[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0029.mp3"  ]
[tb_start_text mode=3 ]
#みお
あぁ、この形に日焼けするから[r]
気をつけてってね、と……[p]
[_tb_end_text]




[elsif exp="tf.rand ==2"]
;回答３
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
いい天気でよかったですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0094.mp3"  ]
[tb_start_text mode=3 ]
#みお
芝生でお弁当広げてるひとも[r]
居るみたいですし[p]
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
;1-b.リニューアル直後だそうで
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 4 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
だからどこもピカピカなんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ？　おばけ屋敷はあえて[r]
むかしの雰囲気を残してる……？[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
それでにぎわってるんですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
とちゅうの電車のときから[r]
おなじ場所いくのかな～って人も多かったですしね[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういう情報に気づいて[r]
わたしを誘ってくれてありがとうございます[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
すごく気を遣ってもらえてて[r]
恐縮です[p]
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
;1-c.あの着ぐるみは！
[eval exp="f.dateEval++" cond="f.dateSituNum == 4" ]

[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、どこですか？[r]
どこどこ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
……いなくなっちゃった？[r]
そんなぁ……[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0159.mp3"  ]
[tb_start_text mode=3 ]
#みお
それは……あそこの[r]
オブジェみたいな……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
中にどうやって人が入ってるんでしょう[r]
ふしぎな形と動きですね……[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生はああいうのがお好きなんですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　記念写真撮って来る？[p]
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
;1-d.ヒーローショーかな
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 3 || f.dateSituNum == 4 || f.dateSituNum == 5" ]

[getrand min=0 max=2]

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
子供たちがあっちに集まってますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
みんな楽しそうに笑ってて[r]
こっともうれしくなります[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういうヒーローさんも種類がありますよね[r]
ひとりのとか、チームのとか大きいのとか……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0129.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、全部の方々が来てるコラボ回？[r]
なんだかわかりませんがすごそうですね[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
司会のお姉さんの声が聞こえてきますね～
[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、子供たちのお返事もすごく響いてます[p]
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
;2-a.フリーパスでよかった
[getrand min=0 max=2]
[eval exp="f.dateEval++" cond="f.dateSituNum == 2 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
回数券だと管理とか考えながらに[r]
なっちゃいますしね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
前もってきっちり計画立ててるなら[r]
それはそれで楽しいかもです[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happyake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
回数券もかわいい絵柄でしたね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
今度はそっちでもいいかもです[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_4.png" layer="1" time="500"  name="FG003"]

[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
リストバンド型のフリーパス、[r]
かっこいいです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
園にいるうちは破いちゃわないように[r]
気をつけないと……[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 " ]
[getrand min=0 max=2]
;2-b.あの観覧車は……

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
今は乗れないみたいですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0094.mp3"  ]
[tb_start_text mode=3 ]
#みお
昔からあるシンボルだから残してるけど[r]
動かしてはいない、って書いてあります！[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
おっきくてかわいいですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
リニューアルオープンのときに[r]
リペイントしたみたいです[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0160.mp3"  ]
[tb_start_text mode=3 ]
#みお
今は乗れないそうなので[r]
どうしても乗りたいなら……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
町中の方の観覧車に、ですね[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 4 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
;2-c.メリーゴーランドだ

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
メリーゴーランドですねえ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0149.mp3"  ]
[tb_start_text mode=3 ]
#みお
……あっ、もしかして乗りたいってお話でした？[p]
[_tb_end_text]




[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
乗りたいんですか？[r]
え？　乗らずに見てたい……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0159.mp3"  ]
[tb_start_text mode=3 ]
#みお
お馬さん、好きなんですか？[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ファンタジーな感じの[r]
お馬さんが多いですね～[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
ペガサス、ユニコーン、ケルピー、[r]
バイコーン、スレイプニル……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生ってファンタジーお馬さんの博士さんなんですか？[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 3" ]
[getrand min=0 max=2]
;2-d.脱出ゲーム……？

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="rakuake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=3 ]
#みお
クイズを解いて時間内に[r]
セットから出ようってやつですよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0059.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしもやったことはないんですけど……[p]
[_tb_end_text]




[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normal3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
クイズのやつですね[r]
先生はそういうのお好きですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
知識量が問われるのはやっぱり大変ですね[r]
わたしは機転もそんなですし……[p]
[_tb_end_text]




[else]
;回答３
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
人気のマンガとコラボした[r]
脱出ゲームみたいですよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、コスプレの人が多いのって[r]
そういうこと……？[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
;3-a.土産屋があるね

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういうところで[r]
絵ハガキって売ってますよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0064.mp3"  ]
[tb_start_text mode=3 ]
#みお
それを買って人に送るのが[r]
ママの趣味なんです[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0060.mp3"  ]
[tb_start_text mode=3 ]
#みお
見ていかれますか？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　龍のキーホルダー？[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_6.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
観覧車型のクッキーとかおいてますよ[r]
かわいい～[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほら、あののぼりに書いてあります！[p]
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
#
[getrand min=0 max=2]
;3-b.すごい園の名前だ

[if exp="tf.rand ==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="kira1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
だいすきランド！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんかあちこちから聞こえるおうたで[r]
耳に残りますね、だいすき～だいすき～って[p]
[_tb_end_text]

[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
ここまでストレートだと[r]
すぐにおぼえちゃいますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
考えるだけで楽しい名前ですし[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
だいすきランドって名前のことですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
たしかに、ここがだいすきなんだって[r]
気分になってきますしね……！[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 0 || f.dateSituNum == 1 || f.dateSituNum == 2" ]

[getrand min=0 max=2]
;3-c.顔出しパネルだ

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
記念撮影コーナーですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし撮りますから先生いいですよ[p]
[_tb_end_text]



[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_3.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0076.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほんとですね～[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
……えっ、わたしがやるんですか！？[p]
[_tb_end_text]



[else]
;回答３
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふたりで並んで撮ろうとしたら[r]
だれかにカメラを頼まないと……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、そばで自撮り棒が売ってますね[r]
需要と供給ですねっ[p]
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
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[getrand min=0 max=2]
;3-d.スワンボート？

[if exp="tf.rand==0"]
;回答１
;[image storage="EVcg/aquarium/FG003_1.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わ……すごい行列……[r]
人気なんだ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
朝イチから並ばないとムリそうなぐらいですね[p]
[_tb_end_text]


[elsif exp="tf.rand==1"]
;回答２
;[image storage="EVcg/aquarium/FG003_5.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0195.mp3"  ]
[tb_start_text mode=3 ]
#みお
池もあるんですね、この遊園地[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
お水も透き通っててキラキラ光ってます[p]
[_tb_end_text]


[else]
;回答３
;[image storage="EVcg/aquarium/FG003_2.png" layer="1" time="500"  name="FG003"]
[messageON]
[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
アヒルさんのボート、かわいいですよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
漕ぐのは大変そう……？[r]
た、たしかに[p]
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
;【午前】おばけ屋敷
*destination_a_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 4" ]
[eval exp="f.isScare.day = f.day" ]
[eval exp="f.isScare.flag = true" ]
[eval exp="f.isScare.type = 3" ]
[eval exp="f.isScare.num = 4" ]
;-------------------------------------
;【午前】おばけ屋敷
[freeimage layer="1"]
[maskStart]

    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti3_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti3_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti3_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]
[playse  volume="100"  time="1000"  buf="5"  storage="se/obake_yashiki01.mp3"  ]

[mioHyoujouSabun hyoujou="EvKusai1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0200.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひいぃぃ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
おばけ屋敷を前に震えるみおだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも、トロッコに乗ってるだけで[r]
いいみたいなので、なんとか……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分で歩くやつだと、迷ったりビビったりで[r]
動けなくなるかもしれないしなぁ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
勝手に進むトロッコなら、最悪、[r]
目をつぶって耳をふさいでいても終わりが来る。[p]
[_tb_end_text]


;------

;【分岐】このイベントがはじめて
[if exp="f.land.stageA.am == 0" ]

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でもそうならないようにがんばります！[p]
    [_tb_end_text]
[else]

;【分岐】上記以外
    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、ここなら大丈夫そうな気がします！[p]
    [_tb_end_text]

[endif]

;------

[tb_start_text mode=3 ]
#
ということで係員さんの誘導に従って[r]
順番が来るのを待つ。[p]
[_tb_end_text]
[fadeoutbgm2 time="1500" ]
[mioLeave]
[messageON]


[tb_start_text mode=3 ]
#
トロッコは隙間なく乗員を運び、[r]
先行する前の組の悲鳴が聞こえてくる。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
で、では――しゅっぱーつ、です！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="4"  storage="se/obake_yashiki04.mp3"  ]

[tb_start_text mode=3 ]
#
自分たちの乗り込んだトロッコも[r]
ごとごとと進みだした。[p]
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
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="6"  storage="se/obake_yashiki02.mp3"  ]
[tb_start_text mode=3 ]
#
いびつなトンネルを思わせる暗所を[r]
トロッコががたごと進む。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あちこちにお札が貼ってあったり、[r]
不気味な日本人形があったりの和風コンセプトだ。[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="7"  storage="se/obake_yashiki03.mp3"  ]

[tb_start_text mode=3 ]
#
ときおり、不気味な赤の光が閃き、[r]
白煙がブシューと吹き上がる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そのたびに――[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひゃっ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
と、みおは声をあげるが、[r]
こちらに抱き着いて来るとかには至らない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
というのも。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ぎゃー！　首だー！　上から来るぞー！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
といった前を行く他のお客さんたちの悲鳴が[r]
ネタバレになっているためだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
心構えができてしまって、[r]
ドッキリ効果がずいぶん薄れる。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
は、はあ、はぁ……[r]
せんせい、これ、前の人の声があるから……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、助かっています……！[r]
こわがりすぎて失神しないで済むので……！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あ、そういう感じ……？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、あぁっ、ひゃあ～！[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]

[fadeoutse time="100" buf="0"]
[fadeoutse time="100" buf="3"]
[fadeoutse time="100" buf="4"]
[fadeoutse time="100" buf="5"]
[fadeoutse time="100" buf="6"]
[fadeoutse time="100" buf="7"]
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

[fadeinbgm2 storage="&f.beforeBGM" time="1500"]

[tb_start_text mode=3 ]
#
その後もいい具合になったホラー度で、[r]
みおはおばけ屋敷を楽しんでいたようだった。[p]
[_tb_end_text]


[eval exp="f.land.today.stageA.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午前】コーヒーカップ
*destination_b_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 4 || f.dateSituNum == 5" ]

[maskStart]
    [freeimage layer="1" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti2_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti2_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti2_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]


[tb_start_text mode=3 ]
#
コーヒーカップ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
人気も刺激もほどほどで乗りやすく、[r]
休憩も兼ねられる――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とりあえずで選ぶにはうってつけの遊具だろう。[p]
[_tb_end_text]
[eval exp="f.beforeBG = f.lastBG" ]
[bgChange storage="bk100.jpg" wait="false"]
[chara_hide_all time="1000" ]

[playse volume="100" time="1000" sprite_time="00:01-00:08"  buf="1" storage="se/Land_yuugu_cup01.mp3" ]

[tb_start_text mode=3 ]
#
乗り込んだカップが滑るように回りだす……[p]
[_tb_end_text]

[landCupStillSet storage="02.png"]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わー[p]
[_tb_end_text]

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
動いてますねえ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
動いてるなあ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ハンドルで回転速度を上げる遊びも[r]
今はする気が無いが、とすると結構ヒマだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ヒマというと語弊があるが、[r]
することがないというか……[p]
[_tb_end_text]

[landCupStillSet storage="03.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0137.mp3"  ]
[tb_start_text mode=3 ]
#みお
眺めがいいとかでもないですし、[r]
お話もふだんからよくしてますもんね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そういうわけなのだ。[p]
[_tb_end_text]

[if exp="f.land.stageB.am == 0" ]
;---------------------
;【分岐】このイベントがはじめて

[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、先生[r]
わたし気づきました[p]
[_tb_end_text]

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=3 ]
#みお
このコーヒーカップ、実際の銘柄を[r]
もじった感じのつくりになってますね[p]
[_tb_end_text]

;　次の共通部へ

[else]
;【分岐】上記以外

[tb_start_text mode=3 ]
#
そういえば前回は銘柄の話をしていたが、[r]
すっかり忘れてしまった。[p]
[_tb_end_text]

[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
銘柄をもう一回教えて欲しい……？[r]
いいですよ[p]
[_tb_end_text]

;　次の共通部へ

[endif]

;【共通部】

[landCupStillSet storage="03.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0087.mp3"  ]
[tb_start_text mode=3 ]
#みお
まったく同じじゃなくて、細かいところ……[r]
シルエットとか模様の部分部分でオマージュがあるというか[p]
[_tb_end_text]

[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0074.mp3"  ]
[tb_start_text mode=3 ]
#みお
こっちはウェッジウッドのあれで、[r]
となりのやつはたぶんコペンの……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そして、言われてみれば――ぐらいの繊細なオマージュを[r]
見抜くみおの目利きにも舌を巻く思いだ。[p]
[_tb_end_text]

[landCupStillSet storage="04.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0152.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのあたりは具体的じゃないですけど、[r]
雰囲気がティファニーっぽいかも……とかとか[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なるほどなるほど、とうなずいていると[r]
いい感じに時間が経っていたようだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
遊具から降りるころには、[r]
みおはやりすぎた……という顔ではにかんでいた。[p]
[_tb_end_text]

[bgChange storage="&f.beforeBG" time="1"]
[free layer="1" name="still" time="1000" ]

[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あはは……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0133.mp3"  ]
[tb_start_text mode=3 ]
#みお
おもしろいなあって思って自然と[r]
いろいろ覚えちゃってました[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
欲しいとかは全然ないんですけど[r]
喫茶店とかで出てきた時におぉってなれて[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うんうん。それでこういう時は[r]
話のタネにもなるわけだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
人生が豊かになる知識、といった感じだろう。[p]
[_tb_end_text]
[eval exp="f.land.today.stageB.am++" ]
[jump target="pre_scene3"]
;-------------------------------------
;【午前】展示の水槽を順番にめぐってみる
*destination_c_am
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
[maskStart]
    [freeimage layer="1" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti7_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti7_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti7_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
絶叫マシンに乗ろう！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
ど、どきどき……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
一口に絶叫マシンと言っても、[r]
ランド内には多種多様な乗り物がある。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
この時間帯であまり待たずに乗れそうだったのは――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
初心者向けジェットコースターだ！[r]
短めのコースでお手軽に絶叫できる。[p]
[_tb_end_text]

[if exp="f.land.stageC.am == 0" ]
;---------------------
;【分岐】このイベントがはじめて

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
お手軽な絶叫とは……[p]
[_tb_end_text]

[else]
;---------------------
;【分岐】上記以外

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
これでもしっかり絶叫しちゃうんですよね……[p]
[_tb_end_text]

;　次の共通部へ
[endif]

;---------------------
;【共通部】

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade" name="sora" storage="yuugu_ride_sora.png" height="3200" top="-1760" ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
マシンに乗り込み、[r]
シートベルトをきっちりと締める。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride01.mp3"  ]

[tb_start_text mode=3 ]
#
ゆっくりとマシンが進みはじめるが、[r]
まだコースは平坦なのに妙に縦揺れする。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
も、もうこわいです……これ……[p]
[_tb_end_text]

[messageInvisible]
[anim name="sora" top="+=1500" time="2500" effect="easeOutSine" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride02.mp3"  ]

[wa]

[messageON]

[tb_start_text mode=3 ]
#
このガタガタが演出なのかマシンの老朽化なのか[r]
わからないのが本当に怖い。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
などと思っているうち、マシンにぐんと加速がついた。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
速……いけど、これなら……？[p]
[_tb_end_text]
[quake count=10 time=400 hmax=0 vmax=3  wait="false"]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride03.mp3"  ]

[tb_start_text mode=3 ]
#
と思ったところでカーブの横Ｇ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0188.mp3"  ]
[tb_start_text mode=3 ]
#みお
お゛お゛ぉぉ～[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
風の関係か、ふだんのみおからは[r]
聞けない声になっている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
かく言うこちらも――[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ん゛き゛き゛き゛き゛ぃ゛～っ！[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
はたから見るとおとなしげなコースターだったのに[r]
実際に走ってみるとえらい風圧だ。[p]
[_tb_end_text]
[quake count=10 time=400 hmax=0 vmax=3  wait="false"]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride03.mp3"  ]

[tb_start_text mode=3 ]
#
やがてコースは上下の激しい波型となり、[r]
がっこんがっこんの縦Ｇに振り回される。[p]
[_tb_end_text]




[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0187.mp3"  ]
[tb_start_text mode=3 ]
#みお
――～～っ！！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
舌を噛みそうになるから口は開けられず、[r]
しかし歯の隙間から悲鳴がこぼれる。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
それを乗り超えたところで、乗車地点、[r]
つまりコースのスタート地点に戻って来る。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride02.mp3"  ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0106.mp3"  ]
[tb_start_text mode=3 ]
#みお
あぁ、やっと終わりなんで――あれっ？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
マシンはスタート地点の停車線を無視して、[r]
２周目をはじめていた。[p]
[_tb_end_text]
[quake count=10 time=400 hmax=0 vmax=3  wait="false"]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride03.mp3"  ]

[tb_start_text mode=3 ]
#
忘れていたけど、これは２周するタイプの[r]
コースターなのだ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0186.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ～～～れ～～～[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[anim name="sora" time="1" top="0" ]
[wa]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
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

[tb_start_text mode=3 ]
#
２周目を終えてマシンを降りるころには、[r]
お互いにヘロヘロになっているのだった……[p]
[_tb_end_text]


[eval exp="f.land.today.stageC.am++" ]

[jump target="pre_scene3"]
;-------------------------------------
;【午後】おばけ屋敷
*destination_a_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 0 || f.dateSituNum == 4" ]
[eval exp="f.isScare.day = f.day" ]
[eval exp="f.isScare.flag = true" ]
[eval exp="f.isScare.type = 3" ]
[eval exp="f.isScare.num = 4" ]
;【午後】おばけ屋敷
[freeimage layer="1"]
[maskStart]
    [freeimage layer="1" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti3_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti3_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti3_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]
[playse  volume="100"  time="1000"  buf="5"  storage="se/obake_yashiki01.mp3"  ]

[tb_start_text mode=3 ]
#
トロッコ式のおばけ屋敷にやってきた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ちょうど人の入りが途切れたタイミングで、[r]
他のお客も姿が無い。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="EvKusai2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひ、ひぃ～[r]
心構えが～っ！[p]
[_tb_end_text]

[fadeoutbgm2 time="1500" ]
[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all time="0" ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]
[eval exp="f.beforeBGM = f.nowBGM" ]


[tb_start_text mode=3 ]
#
あれよあれよという間に係員さんの案内で[r]
トロッコに乗せられるふたりだった。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="4"  storage="se/obake_yashiki04.mp3"  ]

[tb_start_text mode=3 ]
#
ガタ、ゴト……とトロッコがきしむだけで[r]
もうおっかなびっくりなのに――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
これからおどろおどろしいトンネル、[r]
つまりおばけ屋敷の中に入っていくのだ。[p]
[_tb_end_text]




[if exp="f.land.stageA.pm == 0" ]
    ;---------------------
    ;【分岐】このイベントがはじめて
    ;[mioHyoujouSabun hyoujou="fuanake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああ……もう気が遠くなってきました……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まだなにも起こってない。[p]
    [_tb_end_text]

[else]
    ;---------------------
    ;【分岐】上記以外

    ;[mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああ……前回の記憶がよみがえってきて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    トラウマになってるんだなぁ。[p]
    [_tb_end_text]

    ;　次の共通部へ
[endif]

;---------------------
;【共通部】
[playse  volume="100"  time="1000"  buf="6"  storage="se/obake_yashiki02.mp3"  ]

[tb_start_text mode=3 ]
#
暗い館内はお札や京人形で雰囲気満点、[r]
他のお客がいない静寂も恐怖を煽るようだ。[p]
[_tb_end_text]

;[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひぃぃ……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なにか起きそうな予感にもうみおは耐えかね、[r]
目をつぶりしゃがみ込むが――[p]
[_tb_end_text]

;[messageInvisible]
;[wait  time="500"  ]
;[maskStart]
;[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
;[wait  time="500"  ]
;[chara_hide_all  time="1"  wait="false"  ]
;[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]
[playse  volume="100"  time="1000"  buf="7"  storage="se/obake_yashiki03.mp3"  ]

[tb_start_text mode=3 ]
#
そこを追い打つようにＳＥ付きスモークと冷気の噴射！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひゃあああ！！[r]
おばけに触られましたぁっ！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
目をつぶってしまうとそう感じるのか……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
さらにおどろき飛び上がったみおの鼻先には[r]
天井から垂れ下がる女の生首だ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0018.mp3"  ]
[tb_start_text mode=3 ]
#みお
みゃっ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みゃ……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ふわぁ……という感じで[r]
寄りかかってきたのを受け止める。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおは気絶していた。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0201.mp3"  ]
[tb_start_text mode=3 ]
#みお
うぅぅ……あくりょう、たいさん……[p]
[_tb_end_text]



[tb_start_text mode=3 ]
#
あんまりな寝言だった。[p]
[_tb_end_text]

[messageInvisible]
[wait time="&f.WAIT_TIME" ]
[maskStart]
[bgChange time="0" method="crossfade" storage="bk100.jpg" ]
;ボイス、BGSをのぞくSEの全チャンネルにtime100でフェードアウト停止命令
[wait time="&f.WAIT_TIME" ]
[fadeinbgm2 storage="&f.beforeBGM" time="1500"]
[fadeoutse time="100" buf="0"]
[fadeoutse time="100" buf="3"]
[fadeoutse time="100" buf="4"]
[fadeoutse time="100" buf="5"]
[fadeoutse time="100" buf="6"]
[fadeoutse time="100" buf="7"]
[mask_off time="1000" effect="fadeOut" ]
[messageON]

[tb_start_text mode=3 ]
#
みおが目覚めたのは外に出て[r]
ベンチに５分ほど横たえた後だった。[p]
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
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[eval exp="f.land.today.stageA.pm++" ]
[jump target="pre_scene5"]
;-------------------------------------
;【午後】コーヒーカップ
*destination_b_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 3 || f.dateSituNum == 4 || f.dateSituNum == 5" ]

[maskStart]
    [freeimage layer="1" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti2_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti2_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti2_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]


[tb_start_text mode=3 ]
#
コーヒーカップに乗り込んでいく。[p]
[_tb_end_text]

[eval exp="f.beforeBG = f.lastBG" ]
[bgChange storage="bk100.jpg" time="1000" wait="false"]
[chara_hide_all time="1000" ]

[playse volume="100" time="1000" sprite_time="00:01-00:08"  buf="1" storage="se/Land_yuugu_cup01.mp3" ]

[tb_start_text mode=3 ]
#
すーっと滑るようにカップが回りだす……[p]
[_tb_end_text]

[landCupStillSet storage="02.png"]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わー[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
わー[p]
[_tb_end_text]

[landCupStillSet storage="03.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
酔うと後にひびくので、ハンドルを回して[r]
速度を上げたりはやめようと事前に話していた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とはいえ、そうすると[r]
なにをしていればいいのか悩ましい。[p]
[_tb_end_text]

[if exp="f.land.stageB.pm == 0" ]
;【分岐】このイベントがはじめて

[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
コーヒーカップって一回で[r]
どれぐらい動き続けるんでしょう？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そのあたりに約２分間と書いてあった気がする。[p]
[_tb_end_text]

[else]
;---------------------
;【分岐】上記以外

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0082.mp3"  ]
[tb_start_text mode=3 ]
#みお
コーヒーカップって[r]
一回で２分間動き続けるんでしたっけ？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうだったはず。[p]
[_tb_end_text]
[endif]

;---------------------
;【共通部】

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
こうしてみると２分って長いんだなぁって[r]
思えるからふしぎです[p]
[_tb_end_text]


[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0216.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふだんは１分とか２分って[r]
あっという間に過ぎていくのに[p]
[_tb_end_text]

[landCupStillSet storage="04.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0147.mp3"  ]
[tb_start_text mode=3 ]
#みお
カップラーメンとかで３分待つときも[r]
すっごく長く感じますよね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
１分のスピーチでも原稿は300字必要と聞いた。[r]
２分なら600字、原稿用紙１枚じゃきかない量だ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そう考えると、実りある２分を過ごすのは[r]
けっこう難しいのだなぁ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ともかく、みおが退屈しているわけではないらしい。[r]
そこは一安心だけど……[p]
[_tb_end_text]

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生といっしょだったら[r]
退屈することなんてないですよ[p]
[_tb_end_text]

[landCupStillSet storage="02.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
おうちに泊めてもらってから今日までのこと、[r]
長くも短くも感じられて[p]
[_tb_end_text]

[landCupStillSet storage="01.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0152.mp3"  ]
[tb_start_text mode=3 ]
#みお
それがふしぎだなぁってちょうど考えてたんです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どんな状況でもよかった探しができる――[r]
みおにはそんな美質があるのかもしれないなぁ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そんなことを考えているうちに[r]
コーヒーカップにも終わりの時間がやってきたのだった。[p]
[_tb_end_text]

[bgChange storage="&f.beforeBG" time="1"]
[free layer="1" name="still" time="1000" ]
[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0184.mp3"  ]
[tb_start_text mode=3 ]
#みお
ゆっくり回ってたのにちょっと[r]
ふらふらします～[p]
[_tb_end_text]

[eval exp="f.land.today.stageB.pm++" ]

[jump target="pre_scene5"]
;-------------------------------------
;【午後】展示の水槽を順番にめぐってみる
*destination_c_pm
[deleteDateSitu]
#
[eval exp="f.dateEval++" cond="f.dateSituNum == 1 || f.dateSituNum == 3 || f.dateSituNum == 5" ]
[eval exp="f.dateEval--" cond="f.dateSituNum == 2 || f.dateSituNum == 4" ]
;【午後】展示の水槽を順番にめぐってみる
[maskStart]
    [freeimage layer="1" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="1" storage="yuuenti7_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="1" storage="yuuenti7_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="1" storage="yuuenti7_n.png"]
    [endif]

[mask_off time="1000" effect="fadeOut" ]
;-----------------------------------------------
;-----------------------------------------------
;＜絶叫マシン・午後＞

[tb_start_text mode=3 ]
#
絶叫マシンに乗るぞ！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
お、おー！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
一口に絶叫マシンと言っても、[r]
ランド内には多種多様な乗り物がある。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
この時間帯であまり待たずに乗れそうだったのは――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
急流すべりだ！[r]
ウォーターライドとも言うな。[p]
[_tb_end_text]

[if exp="f.land.stageC.pm == 0" ]
;---------------------
;【分岐】このイベントがはじめて

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
高いところから水場にばしゃーんって[r]
落ちていく乗り物ですね！[p]
[_tb_end_text]

;　次の共通部へ
[else]
;---------------------
;【分岐】上記以外

[mioHyoujouSabun hyoujou="happyake5_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=3 ]
#みお
これ、涼しくて終わった時に[r]
すごく爽快感あるんですよね～[p]
[_tb_end_text]


;　次の共通部へ
[endif]

;【共通部】

[tb_start_text mode=3 ]
#
ということで、丸太のイカダを模したライドに[r]
いそいそと乗り込んでいく。[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride01.mp3"  ]


[tb_start_text mode=3 ]
#
ふつうのジェットコースターとは[r]
また違った乗り心地で乗り物がツイ～と進む。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0124.mp3"  ]
[tb_start_text mode=3 ]
#みお
まわりも水場で涼しいです[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0146.mp3"  ]
[tb_start_text mode=3 ]
#みお
今のところ、ゆっくり動いてて安心ですし……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
その名の通り、コース最後のひときわ高いころから[r]
一挙にすべり降りる「急流」がキモだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そこに行くまではただの待ち時間という感じで[r]
こちらもかなり余裕がある。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
のだが……[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade" name="sora" storage="yuugu_ride_sora.png" height="3200" top="-1760" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride02.mp3"  ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
あー……先生、近づいてきましたね[r]
丸太もゆらゆら傾斜を登りはじめましたよ……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
うむ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
どきどきしてきました[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
わかる……[p]
[_tb_end_text]

[messageInvisible]
[anim name="sora" top="+=1500" time="2500" effect="easeOutSine" ]

[wa]
[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
コースの山のてっぺんにライドが到着し、[r]
もったいをつけるようにピタリと停止した。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
目の前は空。下を向くと、今からすべり落ちる水場だが、[r]
のぞくだけでぞっとするほどの深さを感じる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
落ちるのも怖いし、ここに留め置かれ続けるのもつらい。[r]
そういう数秒間がたっぷりあってから――[p]
[_tb_end_text]



[tb_start_text mode=3 ]
#
ライドが落ちた。[p]
[_tb_end_text]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Yugu_ride03.mp3"  ]
[messageInvisible]
[anim name="sora" top="-=1500" time="600" effect="easeOutSine" ]

[wa]
[messageON]
[quake count=10 time=400 hmax=0 vmax=3  wait="false"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0188.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひょわあああああああああ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/zabuuun1.mp3"  ]
[LAYERMODE color="0x1763e6" mode="unset" name="splash" time="500" wait="false" opacity="255"]
[iscript]
    setTimeout(function(){
    $('.layer_blend_splash').fadeOut(1000,function(){
        $(this).remove();
    });
    },800);

[endscript]


[tb_start_text mode=3 ]
#
ゴォォと風切り音が耳元でひびいて、着水。[r]
盛大に水しぶきをかぶる。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0106.mp3"  ]
[tb_start_text mode=3 ]
#みお
つめたーい！[p]
[_tb_end_text]


[messageInvisible]
[wait  time="500"  ]
[maskStart]
[anim name="sora" top="0" time="1" ]
[wa]
[bgChange time="0"  method="crossfade" top="0" storage="bk100.jpg"  ]
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

[eval exp="tf.bg = 'yuuenti7_d.png'" cond="f.dayPart == 'morning'" ]
[eval exp="tf.bg = 'yuuenti7_y.png'" cond="f.dayPart == 'evening'" ]
[eval exp="tf.bg = 'yuuenti7_n.png'" cond="f.dayPart == 'night'" ]

[bgChange time="1000"  method="crossfade"  storage="&tf.bg"  ]

[mioHyoujou hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
迫力、す、すごかったですね[r]
急流すべり……！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あ、ああ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
でも、タオルは借りられたけど、手近なベンチで[r]
日向ぼっこして服をかわかさなくてはな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
濡れたみおはボディラインが出ていて、[r]
自分の上着で周囲から隠すのもまた大変だった。[p]
[_tb_end_text]
[eval exp="f.land.today.stageC.pm++" ]

[jump target="pre_scene5"]

;以上
