
;フロー
;　【１】出発先の決定～到着
;　【２】午前行動
;　【３】ランチ＆帰宅判定
;　【４】午後行動
;　【５】ディナー＆帰宅判定
;　【６】帰宅中のラブホテル判定
;　【７】帰宅

;===================================================================================================
;【１】休日「出かける」で目的地（〇〇〇）を決定
*scene1
[freeimage layer="2"]


;※選択肢前テキストを何種類かに分岐
[if exp="f.dateSpot=='aquarium'"]
    [trace exp="f.dateSpot"]
    [eval exp="f.strDateSpot ='水族館'"]
    [eval exp="f.dateTotal = f.aquarium.total" ]
    [eval exp="f.isDateSpotSame = f.beforeDate.dateSpot == 'aquarium'" ]
[elsif exp="f.dateSpot == 'plaza'" ]
    [trace exp="f.dateSpot"]
    [eval exp="f.strDateSpot ='駅前プラザ'"]
    [eval exp="f.dateTotal = f.plaza.total" ]
    [eval exp="f.isDateSpotSame = f.beforeDate.dateSpot == 'plaza'" ]

[elsif exp="f.dateSpot == 'land'" ]
    [trace exp="f.dateSpot"]
    [eval exp="f.strDateSpot ='だいすきランド'"]
    [eval exp="f.dateTotal = f.land.total" ]
    [eval exp="f.isDateSpotSame = f.beforeDate.dateSpot == 'land'" ]

[endif]
[eval exp="f.dateToday.spot = f.dateSpot" ]
[if exp="f.dateTotal ==0"]
;■その場所に行ったことが無い
[messageON]
[tb_start_text mode=4 ]
#
[emb exp="f.strDateSpot"]はどうだろう。[r]
そういえば行ったことがなかったな。[l]
[_tb_end_text]

[elsif exp="f.dateTotal > 0 && !f.isDateSpotSame"]
;■過去に行ったことがあり、連続していない（直前のデート先は別の場所）
[messageON]
[tb_start_text mode=4 ]
#
[emb exp="f.strDateSpot"]に行ってみようか。[r]
前もみおは楽しんでくれていたし。[l]
[_tb_end_text]


[else]
;■過去に行ったことがあり、連続している（直前のデート先もこの場所）
[messageON]
[tb_start_text mode=4 ]
#
[emb exp="f.strDateSpot"]に行ってみようか。[r]
……あれ、前のお出かけもここだったっけ？[l]
[_tb_end_text]

[endif]
;■選択肢_ジャンプ先ラベル設定はお任せします
;「〇〇〇に出かける」　→　デート先ごとの固有テキスト「出発時みお反応」を参照した後、下記へ進行
;「考えなおす」　　　　→　休日朝イチの出かけるか家で過ごすかの選択肢に戻る
[eval exp="tf.command=f.strDateSpot + 'に出かける'"]

[glink  color="btn_05_black glink_double_left"  addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="&tf.command" exp="f.beforeDate.dateSpot=f.dateSpot"  _clickable_img=""  target="goto_dateSpot"  ]
[glink  color="btn_05_black glink_double_right" addlog="true"  storage="weekendCommand.ks"   size="20"  x="772"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="outside_pilot"  ]
[s]
[s]





;---移動演出
*goto_dateSpot
[eval exp="f.date += 1" ]
[eval exp="f.dateToday.isGoing = true" ]
[eval exp="f.hobby.odekake += 1" ]



[if exp="f.request == f.STR_REQUEST_3" ]

    [requestOK]

[endif]
[if exp="!f.commandForce"]
    [plusMood moodLevel="middle"]
[endif]

[eval exp="f.beforeDate.day=f.day"]
[eval exp="f.beforeDate.dateSpot=f.dateSpot"]
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="departure" cond="f.dateSpot == 'aquarium'" ]
[call storage="SundayDate/SundayDate_Plaza.ks" target="departure" cond="f.dateSpot == 'plaza'" ]
[call storage="SundayDate/SundayDate_Land.ks" target="departure" cond="f.dateSpot == 'land'" ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[maskStart]

    [bgChange  time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]　
    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [setTime hours=8 minutes=30]
    [eval exp="f.isHouse = false" ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
支度を整えて、[emb exp="f.strDateSpot"]へと出発した。[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]

    [eval exp="f.cloth = f.plainClothes"]
    [chara_hide_all]
    [playse  volume="100"  time="1000"  buf="0"  storage="BGS/OfficeSt.mp3"  loop="true"  clear="true"  fadein="true"  ]
    [wait  time="500"  ]
    [setTime hours=9 minutes=0]
    [tb_hide_message_window  ]
    [calcMioHP HP=-10 rand="false"]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
………………[p]
[_tb_end_text]

[setTime hours=9 minutes=30]
[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[setTime hours=10 minutes=0]
[calcHP HP=-10 minHP=1 rand=true]
[wait  time="500"  ]
[tb_hide_message_window  ]
;
;※↓目的地に合わせた背景（デート先ごとの固有テキスト「外観bg」参照）。適当なものが無い場合はとりあえず黒塗りbk100
[bgChange  time="1000"  method="crossfade"  storage="bk100.jpg"  ]
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="*dateSpot_exterior" cond="f.dateSpot == 'aquarium'" ]
[call storage="SundayDate/SundayDate_Plaza.ks" target="*dateSpot_exterior" cond="f.dateSpot == 'plaza'" ]
[call storage="SundayDate/SundayDate_Land.ks" target="*dateSpot_exterior" cond="f.dateSpot == 'land'" ]

;
[mask_off  time="1000"  effect="fadeOut"  ]

[playbgm2  volume="100"  time="1000"  loop="true"  fadein="true"  storage="BGM7_holiday.mp3"  html5="false"  ]

[messageON]
[tb_start_text mode=3 ]
#
[emb exp="f.strDateSpot"]にやってきた。[p]
[_tb_end_text]



;初めてこの場所に来た場合は、デート先ごとの固有テキスト「初回到着時ウンチク」参照
[if exp="f.dateTotal == 0"]
    [call storage="SundayDate/SundayDate_Aquarium001.ks" target="*trivia" cond="f.dateSpot == 'aquarium'"]
    [call storage="SundayDate/SundayDate_Plaza.ks" target="*trivia" cond="f.dateSpot == 'plaza'" ]
    [call storage="SundayDate/SundayDate_Land.ks" target="*trivia" cond="f.dateSpot == 'land'" ]
[endif]
;デート先ごとの固有テキスト「内観bg」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="dateSpot_interior" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="dateSpot_interior" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="dateSpot_interior" cond="f.dateSpot == 'land'"]
;デート先ごとの固有テキスト「到着時みお反応」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="arrival" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="arrival" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="arrival" cond="f.dateSpot == 'land'"]
;===================================================================================================
;【２】デート先の午前行動
*scene2
[setTime hours=10 minutes=30]

;■状況抽選
[tb_start_text mode=3 ]
#
さて……せっかく休日に遠出してきたんだ。[r]
楽しく過ごせるように意識したい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
今日は……[p]
[_tb_end_text]

[dateSituSet]



;デート先ごとの固有テキスト「午前行動」参照
;（固有テキストの中で10:00～11:30ぐらいの時間経過の想定だけど、
;　とくに固有部では記載なく、こちららの共通部での指定に任せることも多いかも）
[jump storage="SundayDate/SundayDate_Aquarium001.ks" target="scene2" cond="f.dateSpot == 'aquarium'"]
[jump storage="SundayDate/SundayDate_Plaza.ks" target="scene2" cond="f.dateSpot == 'plaza'"]
[jump storage="SundayDate/SundayDate_Land.ks" target="scene2" cond="f.dateSpot == 'land'"]
;===================================================================================================
;【３】ランチ＆帰宅判定
*scene3
;デート先での昼食後、選択肢で切り上げるかまだ遊ぶか選べる
;体力が一定値以下の場合は強制的に帰宅


[wait  time="500"  ]
[maskStart]
[freeimage layer="1"]
[mioHyoujouSabun hyoujou="raku1.png"]
[setTime hours=12 minutes=0]
[tb_hide_message_window  ]
[wait  time="500"  ]
[if exp="f.dateSpot == 'plaza'" ]
    [bgChange storage="plaza1.png" time="1"]
[elsif exp="f.dateSpot == 'aquarium'" ]
    [bgChange  time="1"  method="crossfade"  storage="aquarium2.jpg"  ]
[elsif exp="f.dateSpot == 'land'" ]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange storage="yuuenti5_d.png"]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange storage="yuuenti5_y.png"]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange storage="yuuenti5_n.png"]
    [endif]
[endif]
;暗転を解く前にここでピクチャを消去（あれば）
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
……もうお昼か。[p]
[_tb_end_text]

;デート先ごとの固有テキスト「ランチ」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="scene3" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="scene3" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="scene3" cond="f.dateSpot == 'land'"]
[wait  time="500"  ]
[maskStart]

[playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
[wait  time="&f.dateWait"  ]
[call storage="macro_call.ks" target="dateEatVoice"]
[wait  time="&f.dateWait"  ]
[setTime hours=13 minutes=0]

[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[calcHP HP=15 rand="false"]
[calcMioHP HP=15 rand="false"]
;デート先ごとの固有テキスト「食事テキスト（ランチ）」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="eat_lunch" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="eat_lunch" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="eat_lunch" cond="f.dateSpot == 'land'"]

[eval exp="f.isEatLunch = true"]

[playbgm2  volume="40"  time="6000"  loop="true"  fadein="true"  storage="BGM15_holiday2.mp3"  html5="false" ]
[messageON]
[if exp="f.dateEval <= -1 || f.takeBathCount.count >= 5" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
    [mioHyoujouSabun hyoujou="normal.png"]
    [tb_start_text mode=3 ]
    #みお
    このあとはどうしますか？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    デートは楽しかったし、[r]
    みおもにこやかにしてくれていたが……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うーん、変に気疲れしてしまったな。[r]
    状況に即した行動ができていなかったかもだ。[p]
    [_tb_end_text]

    [if exp="f.takeBathCount.count >= f.bathCount.middle" ]

        [tb_start_text mode=3 ]

        #

        というか、お風呂に入ってくれと言われたのを[r]

        つっぱねたのだからデートが上手くいくわけはないか……[p]
        [_tb_end_text]

    [endif]

    [tb_start_text mode=3 ]
    #
    この反省は次回に活かすとして、[r]
    今日は帰るとしよう。[p]
    [_tb_end_text]
    [eval exp="f.dateToday.end = 'lunch'" ]
    [jump target="scene7"]

[endif]
[messageON]
[tb_start_text mode=3 ]
#
さて、それじゃあ午後からは……[p]
[_tb_end_text]


;■分岐：先生体力が一定値（仮に30）未満
;　→午前で帰宅。【７】帰宅へジャンプ
[if exp="f.HP < f.HP_LOW"]
    [eval exp="f.dateToday.end = 'lunch'" ]
    [jump target="scene7"]

;■分岐：先生体力が一定値（仮に30）以上
;　→デート続行。下テキストへつづく。
[else]

    [jump target="scene4"]
[endif]
;===================================================================================================
;【４】デート先の午後行動
*scene4
[plusLove loveLevel="low"]
[setTime hours=13 minutes=30]
;デート先ごとの固有テキスト「午後行動」参照
;（固有テキストの中で13:00～17:00ぐらいの時間経過の想定だけど、
;　とくに固有部では記載なく、こちららの共通部での指定に任せることも多いかも）
[jump storage="SundayDate/SundayDate_Aquarium001.ks" target="scene4" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="scene4" cond="f.dateSpot == 'plaza'"]
[jump storage="SundayDate/SundayDate_Land.ks" target="scene4" cond="f.dateSpot == 'land'"]

;===================================================================================================
;【4.5】デート大成功イベント判定
*scene4plus


[messageON]
[tb_hide_message_window  ]
[fadeoutbgm2 time="2000" cond="f.destination == 'a' && f.dateSpot == 'aquarium'" ]
[wait  time="500"  ]
[maskStart]
[iscript]
    switch(f.dateSpot){
        case "aquarium":
            f.dateBG = "aquarium2.jpg";
            break;
        
        case "plaza":
            f.dateBG = "plaza1.png";
            break;
        
        case "land":
            if(f.dayPart == "morning"){
                f.dateBG = "yuuenti5_d.png";
            } else if(f.dayPart == "evening"){
                f.dateBG = "yuuenti5_y.png";
            } else {
                f.dateBG = "yuuenti5_n.png";
            }

            break;

        default:
            f.dateBG = "aquarium2.jpg";
    }
[endscript]
[bgChange time="0"  method="crossfade"  storage="&f.dateBG"  ]

[mioHyoujouSabun hyoujou="raku1.png" time="0"]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[fadeinbgm2 storage=&f.bgm time="2000" cond="f.destination == 'a' && f.dateSpot == 'aquarium'" ]
[messageON]


;デート大成功イベントが発生する場合、そのイベントの発生が初回かどうか、
;また、今起ころうとしているイベントに対応の私服かどうか、をみていきます。

;（例）水族館デート中の大成功イベントはパーカーワンピの衣装にのみ対応なので、
;　　　別の衣装（私服：ピンクのニット）で来ている場合は
;　　　「～～を着て来ていれば、ここで～～できたかもなあ」といったテキストを出して
;　　　終了、といった分岐をする。
[eval exp="f.bg = f.lastBG" ]
[eval exp="f.debugFlag = false" ]
[eval exp="f.debugSuccess = false" ]
[eval exp="tf.text1 = '今回の評価点' +f.dateEval +'(大成功は3以上)'" ]
[ptext text=&tf.text1  x="275" y="350" bold="true"  layer="2" color="red" size="20"  name="dateDebug" cond="sf.isDebug" ]
[glink2 cm="true" fix="true" click="true" name="dateSuccess" color="btn_05_black"  storage=""  size="20"  x="275"  y="400"  width=""  height="" exp="f.dateEval = 0"  text="大成功なし"  _clickable_img=""  target="*scene4success1_2" cond="sf.isDebug"  ]
[glink2 cm="true" fix="true" click="true" name="dateSuccess" color="btn_05_black"  storage=""  size="20"  x="590"  y="400"  width=""  height="" exp="f.dateEval = 3,f.debugFlag = true,f.debugSuccess=false"  text="大成功イベ発生(初回)"  _clickable_img=""  target="*scene4success1_2" cond="sf.isDebug"  ]
[glink2 cm="true" fix="true" click="true" name="dateSuccess" color="btn_05_black"  storage=""  size="20"  x="900"  y="400"  width=""  height="" exp="f.dateEval = 3,f.debugFlag = true,f.debugSuccess=true" text="大成功イベ発生(２回目)"  _clickable_img=""  target="*scene4success1_2" cond="sf.isDebug"  ]

*scene4success1
[tb_start_text mode=3 ]
#
午後も楽しく過ごせたな。[p]
[_tb_end_text]


*scene4success1_2
[free layer="2"  name="dateDebug" ]
[clearfix name="dateSuccess" ]


[tb_start_text mode=3 ]
#
今回のデートは……[p]
[_tb_end_text]

[free layer="2"  name="dateDebug" ]
[clearfix name="dateSuccess" ]
[if exp="f.dateEval >= 3" ]
    [plusLove loveLevel="middle"]
    [tb_start_text mode=3 ]
    #
    大成功だ！！[r]
    状況に合わせてうまくエスコートできた。[p]
    [_tb_end_text]


    ;----
    ;★みお衣装判定
    ;　スチル型イベントが発生しますが、みおの衣装にも指定があるので、さらに分岐します。
    ;　水族館の大成功イベントの場合、みお衣装はセーラーワンピを要求。

    ;----
    ;【分岐】みおの衣装がセーラーワンピのとき（水族館の大成功イベントの場合）
    [if exp="((f.nowCloth2.includes('kigae2') && (f.dateSpot == 'aquarium'))|| (f.nowCloth2.includes('kigae3') && (f.dateSpot == 'land'  || f.dateSpot == 'plaza'))) || (f.debugFlag && sf.isDebug)" ]
        [eval exp="f.todayDateSuccess = f.dateSuccess.aquarium" cond="f.dateSpot == 'aquarium'"]
        [eval exp="f.todayDateSuccess = f.dateSuccess.land" cond="f.dateSpot == 'land'" ]
        [eval exp="f.todayDateSuccess = f.dateSuccess.plaza" cond="f.dateSpot == 'plaza'"]
        *scene4success1_2_stillEv
        [call target="dateSuccess" storage="SundayDate/SundayDate_Aquarium001.ks" cond="f.dateSpot == 'aquarium'"  ]
        [call target="dateSuccess" storage="SundayDate/SundayDate_Plaza.ks" cond="f.dateSpot == 'plaza'"  ]
        [call target="dateSuccess" storage="SundayDate/SundayDate_Land.ks" cond="f.dateSpot == 'land'"  ]


        
        [if exp="(f.debugFlag && !f.debugSuccess) || !f.todayDateSuccess" ]
            [call storage="SundayDate/SundayDate_Aquarium002.ks" cond="f.dateSpot == 'aquarium'" ]
            [call storage="SundayDate/SundayDate_Plaza002.ks" cond="f.dateSpot == 'plaza'" ]
            [call storage="SundayDate/SundayDate_Land002.ks" cond="f.dateSpot == 'land'" ]
            [eval exp="f.dateSuccess.aquarium = true" cond="f.dateSpot == 'aquarium'"]
            [eval exp="f.dateSuccess.plaza = true" cond="f.dateSpot == 'plaza'"]
            [eval exp="f.dateSuccess.land = true" cond="f.dateSpot == 'land'" ]
        [else]
            [call storage="SundayDate/SundayDate_Aquarium003.ks" cond="f.dateSpot == 'aquarium'"]
            [call storage="SundayDate/SundayDate_Plaza003.ks" cond="f.dateSpot == 'plaza'"]
            [call storage="SundayDate/SundayDate_Land003.ks" cond="f.dateSpot == 'land'" ]
        [endif]


    ;----
    ;【分岐】みおの衣装がセーラーワンピではないとき（水族館の大成功イベントの場合）
    [else]

        [mioHyoujouSabun hyoujou="happy2.png"]

        [tb_start_text mode=3 ]
        #
        みおが楽しそうにしてくれていて[r]
        自分もうれしい。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……また今度、違った服装でおなじように[r]
        こんなデートをしてみるといいかもな。[p]
        [_tb_end_text]

    [endif]





[else]

    [tb_start_text mode=3 ]
    #
    ふつうに最後まで楽しめた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    もっと状況に即した判断はありえたかもだな。[r]
    次回に活かそう。[p]
    [_tb_end_text]


[endif]

[jump target="*scene5"]
*scene4success2
[free layer="2"  name="dateDebug" ]
[clearfix name="dateSuccess" ]
[eval exp="f.dateSuccess[f.dateSpot] = true" ]
[call storage="SundayDate/SundayDate_Aquarium002.ks" cond="f.dateSpot == 'aquarium'"]
[jump target="*scene5"]
*scene4success3
[free layer="2"  name="dateDebug" ]
[clearfix name="dateSuccess" ]
[eval exp="f.dateSuccess[f.dateSpot] = true" ]
[call storage="SundayDate/SundayDate_Aquarium003.ks" cond="f.dateSpot == 'aquarium'"]
[jump target="*scene5"]
;===================================================================================================
;【５】ディナー＆帰宅判定
*scene5
[wait  time="500"  ]
[maskStart]

[mioHyoujouSabun hyoujou="raku1.png"]
[freeimage layer="1"]
[setTime minutes=00 hours=17]
[iscript]
    switch(f.dateSpot){
        case "aquarium":
            f.dateBG = "aquarium2.jpg";
            break;
        
        case "plaza":
            f.dateBG = "plaza1.png";
            break;
        
        case "land":
            if(f.dayPart == "morning"){
                f.dateBG = "yuuenti5_d.png";
            } else if(f.dayPart == "evening"){
                f.dateBG = "yuuenti5_y.png";
            } else {
                f.dateBG = "yuuenti5_n.png";
            }

            break;

        default:
            f.dateBG = "aquarium2.jpg";
    }
[endscript]
[bgChange time="0"  method="crossfade"  storage="&f.dateBG"  ]
[addTime minutes=30]
[tb_hide_message_window  ]
[wait  time="500"  ]
;暗転を解く前にここでピクチャを消去（あれば）
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
……日も暮れはじめた。[r]
夕食も外で食べていくことにしよう。[p]
[_tb_end_text]

;デート先ごとの固有テキスト「ディナー」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="scene5" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="scene5" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="scene5" cond="f.dateSpot == 'land'"]

[wait  time="500"  ]
[maskStart]

[playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]

[wait  time="&f.dateWait"  ]
[call storage="macro_call.ks" target="dateEatVoice"]
[wait  time="&f.dateWait"  ]
[setTime hours=18 minutes=0]
[mioHyoujouSabun hyoujou="raku1.png"]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[calcHP HP=15 rand="false"]
[calcMioHP HP=15 rand="false"]
[eval exp="f.pmDate++" ]
;デート先ごとの固有テキスト「食事テキスト（ディナー）」参照
[call storage="SundayDate/SundayDate_Aquarium001.ks" target="eat_dinner" cond="f.dateSpot == 'aquarium'"]
[call storage="SundayDate/SundayDate_Plaza.ks" target="eat_dinner" cond="f.dateSpot == 'plaza'"]
[call storage="SundayDate/SundayDate_Land.ks" target="eat_dinner" cond="f.dateSpot == 'land'"]
[eval exp="f.isEatDinner = true"]
[eval exp="f.isEatLunch = true"]

*scene5_select
[playbgm2 volume="40" storage="../bgm/BGM5_relax.mp3" ]
[messageON]

[checkKokuhaku]

[if exp="f.mioKokuhakuFlag && f.kokuhaku.flag && f.day >= 11 && !sf.isTaiken" ]

    [tb_start_text mode=4 ]
    #
    さて、それじゃあ……[p]
    [_tb_end_text]

    *kokuhaku_mio
    [cm]
    [tb_start_text mode=3 ]
    #
    ――と思ったが、[r]
    みおが真剣な顔で切り出してきた。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happy3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今日のおでかけ、とっても楽しかったです[r]
    ありがとうございます[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="normal.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……聞いて欲しいことがあるんです[p]
    [_tb_end_text]

    [if exp="f.kokuhaku.isMio == 0" ]
        ;【分岐】みおからの告白イベント発生がはじめて

        [mioHyoujouSabun hyoujou="tohoho_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ずっと思ってたことがあるんですけど[r]
        伝えるなら今かな、と思って[p]
        [_tb_end_text]

        [if exp="f.kokuhaku.isSensei == 1" ]
            ;☆過去に先生から告白して失敗したことがある場合、いちどだけ挿入

            [mioHyoujouSabun hyoujou="raku1.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0005.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            前に先生、告白してくれましたよね[p]
            [_tb_end_text]

            [mioHyoujouSabun hyoujou="metojiake.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0006.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            あのときはわたしもいろいろあって[r]
            いいお返事をできなかったんですけど[p]
            [_tb_end_text]

            [mioHyoujouSabun hyoujou="komaru2.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0007.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ずっと気になってて、[r]
            わたしもわたしの気持ちがわからなくて[p]
            [_tb_end_text]
        [endif]

        ;------------------

        [mioHyoujouSabun hyoujou="fuanaketojime4.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        考え続けてたんです、自分の気持ち[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="komaru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしは先生のことをどう思ってて、[r]
        先生とどうなりたいのか[p]
        [_tb_end_text]

    [else]

        ;---------------------------------------------------------------
        ;---------------------------------------------------------------
        ;【分岐】みおからの告白イベント発生が２回目以降（つまり最低でも一度はみおからの告白を断っている）

        [mioHyoujouSabun hyoujou="tohoho_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        前といっしょなので、[r]
        もうおわかりかなと思うんですけど[p]
        [_tb_end_text]

        ;------------------
        ;上記の「☆過去に先生から告白して失敗したことがある場合、いちどだけ挿入」をここでも判定。
        ;　※するのもされるのも失敗したことがあるということなので、たぶんほぼ起こらないレアケースだけど...
        ;------------------
        [if exp="f.kokuhaku.isSensei == 1" ]
            ;☆過去に先生から告白して失敗したことがある場合、いちどだけ挿入

            [mioHyoujouSabun hyoujou="raku1.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0005.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            前に先生、告白してくれましたよね[p]
            [_tb_end_text]

            [mioHyoujouSabun hyoujou="metojiake.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0006.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            あのときはわたしもいろいろあって[r]
            いいお返事をできなかったんですけど[p]
            [_tb_end_text]

            [mioHyoujouSabun hyoujou="komaru2.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0007.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ずっと気になってて、[r]
            わたしもわたしの気持ちがわからなくて[p]
            [_tb_end_text]
        [endif]



    [endif]

    [mioHyoujouSabun hyoujou="happyake4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、好きです[r]
    だいすきです[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="raku2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    親戚のお兄さんとしてとか[r]
    頼れる同居人とかの好きもあるんですけど――[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happy3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それ以上に、男性として先生のことが好きなんです[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [if exp="(f.virgin.image.id != 0 || f.analVirgin.image.id != 0) || (f.firstKiss.image.id == 2014 || f.firstKiss.image.id == 2025 || f.firstKiss.image.id == 2029 || f.firstKiss.image.id == 2036 || f.firstKiss.image.id == 2037 || f.firstKiss.image.id == 2038 || f.firstKiss.image.id == 2039)" ]
        ;【A-1】恋人関係になる前にえっちしていた場合１（みおの膣かアナルがすでに自覚ありで破瓜状態の場合、あるいはキス初経験に自覚アリのフェラ系登録がある）
        [mioHyoujouSabun hyoujou="komruake4_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしの身体のいろいろなことは[r]
        さきに先生にあげちゃってますけど[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="normal_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こころの方も、本当の意味で[r]
        先生のものになった……というか……[p]
        [_tb_end_text]

    [elsif exp="f.totalOsawari.wakan != 0 || !f.loveHo.isFirst || (f.gameAsikoki.total + f.sixnine.total + f.junyuTekoki.total + f.onaganki.total + f.dateTekokiH.count.total + f.houshi.tekoki + f.cuscoEv.total + f.pinkRotorEv.tikubi + f.pinkRotorEv.clitoris + f.selfEsthe.total + f.konyokuEv.total + f.flowerBath + f.tikanEv.total + f.parkEv.total) > 0" ]
        ;【A-2】恋人関係になる前にえっちしていた場合２
        ;　A-1に該当しないが、次のいずれかを満たす場合。
        ;　・おさわりパート和姦
        ;　・ラブホ行き
        ;　・手コキだけとかライトなシーンのいずれかを経験済み。
        ;　　→対象
        ;　　　「熱血指導・足コキ」「熱血指導・シックスナイン」「なしくずしの授乳手コキ」「なしくずしの顔面騎乗」「デート帰りの街中で」
        ;　　　「ラブホテルの浴室で」「朝のご奉仕・おてて」「クスコでおまんこ観察」「ローター調教・乳首」「ローター調教・クリトリス」
        ;　　　「ローター散歩」「エロ自撮り」「電話オナサポ」「逆レイプ　パイズリ」
        ;　　　「セルフエステで……」「みおと温泉で（混浴）」「フラワーバスセット入浴」
        ;　　　「ちかんごっこ（段階１，２）」「夜の公園アオカン（段階１，２）」


        [mioHyoujouSabun hyoujou="normalake1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        恋人同士じゃないとしないようなこと、[r]
        もうしちゃってる気はしますけど……[p]
        [_tb_end_text]

    [endif]

    ;------------------------------------

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    とにかく、そういうことなんです[p]
    [_tb_end_text]

    [if exp="f.kokuhaku.isMio != 0" ]

        ;みおの告白イベント２回め以降の時の追加挿入
        [mioHyoujouSabun hyoujou="fuan2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        前もしたお話ですけど――[p]
        [_tb_end_text]

    [endif]

    [mioHyoujouSabun hyoujou="happy1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    気持ちを伝えたかっただけなので[r]
    とくにどうこうして欲しいわけではなくて……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ええと、聞いてもらえてよかったです[r]
    ありがとうございました[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="komruake4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おはなしおわり、です[p]
    [_tb_end_text]

    [if exp="f.kokuhaku.isMio == 0" ]

        ;プチ分岐：みお告白イベントの発生が初回
        [tb_start_text mode=3 ]
        #
        そうか……みおは[r]
        そんなふうに思ってくれていたんだな。[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：みお告白イベントの発生が２回め以降
        [tb_start_text mode=3 ]
        #
        前は色よい返事をできなかったが、[r]
        みおは変わらず自分を想ってくれているようだ。[p]
        [_tb_end_text]

    [endif]

    ;-------

    [tb_start_text mode=3 ]
    #
    みおが勇気を出して話してくれたんだ。[r]
    あいまいな返答で濁すようなことはしたくない。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0022.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生……？[l]
    [_tb_end_text]

    ;選択肢
    ;　告白を受け入れる
    ;　告白は受け入れられない
    [glink_left storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ok" text="告白を受け入れる" ]
    [glink_right storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ng" text="告白は受け入れられない" ]
    [s]
    *kokuhaku_mio_ok
    ;【選択肢分岐】告白を受け入れる

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――はえ？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、あっ、受け入れる……？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="EvKusai2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    受け入れるってことは……えぇっと！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ＯＫをもらえるとは思っていなかったのか、[r]
    すごく混乱するみおだった。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ここはこちらからハッキリと告げるべきだろう。[l]
    [_tb_end_text]

    ;選択肢　※文言が違うだけで展開の分岐はしません
    ;　自分もみおが好きだ
    ;　みおの恋人になりたい
    ;　自分からも頼む、付き合ってください
    [glink_3_left storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ok2" text="自分もみおが好きだ" ]
    [glink_3_center storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ok2" text="みおの恋人になりたい" ]
    [glink_3_right storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ok2" text="自分からも頼む、付き合ってください" ]
    [s]

    *kokuhaku_mio_ok2


    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;「告白する」側イベントとおなじ台詞
    [mioHyoujouSabun hyoujou="happy2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、わたしを先生の恋人にしてください[r]
    ――よろしくお願いします[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/s_up.mp3"  ]
    [tb_start_text mode=3 ]
    #
    みおと恋人になった！[p]
    [_tb_end_text]

    ;「告白する」側イベントとおなじ台詞
    [mioHyoujouSabun hyoujou="kira2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の恋人かぁ……♪[p]
    [_tb_end_text]

    ;「告白する」側イベントとおなじ台詞
    [mioHyoujouSabun hyoujou="rakuake1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    最高のデートになりました[r]
    先生、ありがとうございます[p]
    [_tb_end_text]

    [kokuhakuDiaryEv]

    [tb_start_text mode=4 ]
    #
    さて、せっかく恋人になれたんだ。
    このあとは……[l]
    [_tb_end_text]

    [eval exp="f.kokuhaku.isMio++" ]    
    [eval exp="f.kokuhaku.type = 'mio'" ]
    [eval exp="f.kokuhaku.isSuccess = true" ]

    [eval exp="f.kokuhaku.today = true" ]
    [eval exp="f.kokuhaku.todayArea = 'date'" ]
    [eval exp="f.kokuhaku.todayType = 'mio'" ]
    [eval exp="f.kokuhaku.day = f.day" ]
    [jump storage="SundayDate/commonDate.ks" target="scene5_select_glink" ]

    *kokuhaku_mio_ng
    ;【選択肢分岐】告白は受け入れられない

    [tb_start_text mode=3 ]
    #
    今は気持ちに答えられない。[r]
    すまない――とみおに伝える。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    理由はいろいろあってうまく言葉にできない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    また気持ちが変わることもあるだろうし、[r]
    こちらから告白することもあるかもしれない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ただ、それは今日ではないし、[r]
    自分は今のみおとの関係をだいじにしたい。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="komaru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happy3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、わかりました[r]
    きちんと向き合ってくれてありがとうございます[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんなところも含めて先生で、[r]
    だから好きになったんです[p]
    [_tb_end_text]


    ;[mioHyoujouSabun hyoujou="situmon_red.png"]
    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0025.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
   ;断られたからってそこは変わったりしないので[r]
    ;いつも通りに接してくれたらうれしいです[p]
    ;[_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ――ああ。[p]
    [_tb_end_text]

    [if exp="f.kokuhaku.isMio == 0" ]
        ;【プチ分岐】みおからの告白イベントが初回の場合
        [mioHyoujouSabun hyoujou="fuanake_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0026.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だから、また好きって気持ちがあふれそうだったら[r]
        またおなじお話するかもですけど、聞いてくださいね[p]
        [_tb_end_text]

    [else]
        ;【プチ分岐】みおからの告白イベントが２回めの場合
        [mioHyoujouSabun hyoujou="doya_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0027.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えへへ……先生は断っちゃってきまずいかもですけど、[r]
        好きって伝えるのって、なんだか、気持ちがいいですね[p]
        [_tb_end_text]

    [endif]

    [mioHyoujouSabun hyoujou="happy3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふぅ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="komruake6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0029.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    緊張してちょっと疲れちゃったみたいです[l]
    [_tb_end_text]

    ;一択選択肢「今日はこのまま帰ろうか」
    [glink_center storage="SundayDate/commonDate.ks" target="kokuhaku_mio_ng_2" text="今日はこのまま帰ろうか" ]
    [s]
    *kokuhaku_mio_ng_2
    [mioHyoujouSabun hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、一日ありがとうございました[p]
    [_tb_end_text]

    [eval exp="f.kokuhaku.isMio++" ]
    [eval exp="f.kokuhaku.today = true" ]
    [eval exp="f.kokuhaku.todayType = 'mio'" ]
    [eval exp="f.kokuhaku.todayArea = 'date'" ]
    [jump target="scene6_1" ]

[else]
    *scene5_select_text
    [tb_start_text mode=4 ]
    #
    さて、それじゃあ……[l]
    [_tb_end_text]

    *scene5_select_glink
    [glink  color="btn_05_black_narrow" addlog="true"  storage=""  size="20"  x="50"  y="400"  width=""  height=""  text="みお告白イベント"  _clickable_img=""  target="*kokuhaku_mio" cond="!f.kokuhaku.isSuccess && sf.isDebug"  ]
    ;選択肢。ラベル設定お任せします。
    [glink  color="btn_05_black glink_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="キスしたい"  _clickable_img=""  target="*scene5_1"  ]
    [glink  color="btn_05_black glink_right" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="帰ろうか"  _clickable_img=""  target="*scene6"  ]
    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もっと一緒に……"  _clickable_img=""  target="*scene5_2"  ]
    [setProposeInDate]
    [s]
    [s]

[endif]
*scene5_1
[if exp="f.kokuhaku.isSuccess && f.kokuhaku.today && !f.kokuhaku.kissToday" ]

    ;【選択肢分岐】キスする

    [tb_start_text mode=3 ]
    #
    みおに顔を寄せる――恋人同士の初キスだ。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoruake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……[p]
    [_tb_end_text]


    [kissSuccess type="kokuhaku"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これが、恋人どうしのキス……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happyake3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene11_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [eval exp="f.kissSuccessToday = 1" ]
    [eval exp="f.kokuhaku.kissToday = true" ]
    [jump target="scene5_select" ]

[endif]


[if exp="f.kissSuccessToday >= 1" ]
    [tb_start_text mode=3 ]
    #
    キスはさっきできた。[r]
    あまりしつこくするのもちょっとな……[p]
    [_tb_end_text]
    [jump target="scene5_select" ]
[elsif exp="f.kissSuccessToday <= -1" ]
    [tb_start_text mode=3 ]
    #
    さっき断られてしまった。[r]
    今日はあきらめて、また別の機会に挑戦しよう。[p]
    [_tb_end_text]
    [jump target="scene5_select" ]
[else]
    [tb_start_text mode=3 ]
    #
    ディナーまでいい雰囲気で[r]
    デートを続けられたのだ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    キスをするなら、[r]
    今この瞬間がチャンスなはず。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの肩を抱き、そっと顔を寄せる――[p]
    [_tb_end_text]

    [kissCheck]

    [if exp="f.propose.day == f.day" ]
        ;【選択肢分岐】キスする

        [tb_start_text mode=3 ]
        #
        みおに顔を寄せる――誓いのキスには早いけれど。[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="normalake1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene12_0021.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せん、せ……[p]
        [_tb_end_text]

        ;------------------
        ;キス演出マクロ用を呼び出し、この流れでの再生の場合は、下記の専用台詞とボイスを出すように
        [kissSuccess type="propose"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene12_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        将来、こんなキスを人前でするんですか……？[p]
        [_tb_end_text]

        ;これがみおの初キスの場合は下記を追加
        ;　部位／自覚：キス、自覚アリ
        ;　テキスト　：結婚の約束のキスで


    [elsif exp="f.kissType > 0" ]

        [if exp="f.kokuhaku.todayType == 'sensei' && !f.kokuhaku.isSuccess && !f.kokuhaku.susccessTalk1" ]
            [mioHyoujouSabun hyoujou="fuan_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0035.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            告白は断っちゃいましたけど、それならまあ……[p]
            [_tb_end_text]

            [eval exp="f.kokuhaku.susccessTalk1 = true"]
        [else]

            [mioHyoujouSabun hyoujou="fuanake2_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0119.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ぁ……[p]
            [_tb_end_text]

        [endif]
        [kissSuccess type="dateDinner"]

        [if exp="f.isFirstKiss" ]

            [mioHyoujouSabun hyoujou="komruake4_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0001.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            これが……[r]
            わたしのファーストキス……[p]
            [_tb_end_text]
            [eval exp="f.isFirstKiss = false" ]
            [eval exp="f.firstKissTextFlag = true" ]
        [else]
            [mioHyoujouSabun hyoujou="happy3_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0004.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ロマンチックなデートをありがとうございました[p]
            [_tb_end_text]

        [endif]

    [else]
        [mioHyoujouSabun hyoujou="fuanaketojime.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0156.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今回は、その、ちょっと……[p]
        [_tb_end_text]


        ;「05成否判定に関して.txt」で示す「■失敗時の失敗事由に合わせた表示テキスト」を参照し、
        ;今回のキス失敗に該当する理由を示すテキスト（地の文）１つをここで表示。
        [kissFailure type="dateDinner"]

        [tb_start_text mode=3 ]
        #
        また別の機会に挑戦しよう。[p]
        [_tb_end_text]

    [endif]
    [jump target="scene5_select" ]
[endif]

;ディナー後は「帰宅（＋条件を満たしていると選択肢でラブホテルへ行ってえっちイベント）」
;帰宅だけの時は一択選択肢で「帰ろうか」と表示。
;[glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="帰ろうか"  _clickable_img=""  target="*scene6"  ]
;[s]
;※ラブホテル云々は開発中なので当面は選択肢等々なく、そのまま帰宅イベントへ移動します（【７】帰宅へジャンプ）
;　ラブホ選択肢実装後は、ラブホ行き選択肢を選んだ場合でも体力が少なければ強制的に【７】帰宅へジャンプします。
*scene5_2

[tb_start_text mode=3 ]
#
もっと一緒に居たい――[r]
と言っても、もう閉園閉館の時間だ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
夜にデートを終えて、それでも一緒にというのは[r]
つまり……そういうことだが……[l]
[_tb_end_text]

;選択肢。ラベル設定お任せします。
[glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ラブホテルに誘う"  _clickable_img=""  target="*scene5_3"  ]
[glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="やっぱり帰る"  _clickable_img=""  target="*scene5_4"  ]
[s]
[s]

*scene5_3
[tb_start_text mode=3 ]
#
このあとどうかな、とみおを誘った。[p]
[_tb_end_text]


[glink2 cm="true" fix="true" layer="4" size="24" x="375" y="400" text="成功" name="loveho" color="btn_05_black" click="true" exp=""  storage="SundayDate/commonDate.ks" target="scene5_3_success" cond="sf.isDebug"]
[glink2 cm="true" fix="true" layer="4" size="24" x="772" y="400" text="失敗" name="loveho" color="btn_05_black"  click="true" exp=""  storage="SundayDate/commonDate.ks" target="scene5_3_failed" cond="sf.isDebug"]



[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[clearfix name="loveho" ]

[checkMioOK]

[if exp="tf.flagType == 1 || f.propose.day == f.day" ]
    [jump target="*scene5_3_success" storage="SundayDate/commonDate.ks"]
[else]
    [jump target="*scene5_3_failed" storage="SundayDate/commonDate.ks"]
[endif]

*scene5_3_success
[clearfix name="loveho" ]


[if exp="f.kokuhaku.todayType == 'sensei' && !f.kokuhaku.isSuccess && !f.kokuhaku.susccessTalk1" ]
    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene13_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    告白は断っちゃいましたけど、それならまあ……[p]
    [_tb_end_text]

    [eval exp="f.kokuhaku.susccessTalk1 = true" ]
[else]
    [mioHyoujouSabun hyoujou="raku4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0128.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えと、その……[r]
    わ、わかりました……[p]
    [_tb_end_text]
[endif]

[tb_start_text mode=3 ]
#
ＯＫしてもらえた。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]


[tb_start_text mode=3 ]
#
その場を後にして、暗くなった街へと[r]
ふたりで歩いて行った……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[jump target="*goHotel"]

*scene5_3_failed
[clearfix name="loveho" ]
[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0176.mp3"  ]
[tb_start_text mode=3 ]
#みお
それは、あの、今回はちょっと……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
断られてしまった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
また仲良くなったりきげんをとったりして[r]
再挑戦だな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
今日のところは帰ることにしよう。[p]
[_tb_end_text]
[eval exp="f.dateToday.end = 'dinner'" ]
[eval exp="f.dateTekokiH.isHotel = true" ]
[jump target="scene7_kitaku"]

*scene5_4
[tb_start_text mode=3 ]
#
うん……[r]
今回はそういうのはやめておこう。[p]
[_tb_end_text]
[eval exp="f.dateToday.end = 'dinner'" ]
[eval exp="f.dateTekokiH.isHotel = false" ]
[jump target="*scene6"]


;===================================================================================================
;【６】帰宅中のラブホテル判定
*scene6

;ディナーまで終えて「帰ろうか」選択肢を選んだ場合のみ、ここへ来る。
;他のパターン（体力不足で午前のみで帰った等）は*scene7内のどこかへ直通しているので。
[eval exp="f.dateToday.end = 'dinner'" ]

;---------------------------------------
;□6-1.帰路演出
;「帰ろうか」選択肢直後。
;*scene7の「■分岐：上記以外のケースで【７】に来た」のやりとりをここへ移動。
[messageON]

[tb_start_text mode=3 ]
#
家に帰ろう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
今日は楽しかったな……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[mioHyoujouSabun hyoujou="happyake4.png"]
[tb_start_text mode=3 ]
#みお
はいっ、ありがとうございました[p]
[_tb_end_text]
*scene6_1
#
[position frame="frame_message_toumei.png" ]

[tb_hide_message_window  ]
[stopbgm  time="1500"  fadeout="true"  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[jump target="scene7_kitaku"]





;---------------------------------------
;□6-2.ホテル行き確認（選択肢）



;---------------------------------------
;□6-3.ホテル行き実行
*goHotel
[setTime hours=18 minutes=0]
[eval exp="f.loveHo.cloth = f.cloth" ]
[eval exp="f.loveHo.sitagi = 'sitagi'" ]
;19:30からえっち（表現方法は未定）
;21:30に終わって、23:00に帰宅して即就寝
[eval exp="f.dateToday.end = 'hotel'" ]
[jump  target="*hotelFirst"  cond="f.loveHo.isFirst" ]
[jump  target="*hotelSecond"  cond="!f.loveHo.isFirst"]
[s]
[s]

*goHotel2
;---------
;※設定上、今ラブホの受付～エレベーターだが、アウターありの場合はまだアウターを着続ける。
*hotelFirst
[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all time="1" ]
[fadeoutbgm2 time="2000" ]
[wait  time="500"  ]
[eval exp="f.loveHo.isFirst = false"]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]



;　ラブホ初回時イベントを見たフラグをONにする

;立ち絵ナシ
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=4 ]
#みお
……[l]
[_tb_end_text]

;一択選択肢：ラベル設定お任せします
[glink  color="btn_05_black"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="……"  _clickable_img=""  target="*hotelFirst2"  ]
[s]
[s]
*hotelFirst2
[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[bgChange time="0"  method="crossfade"  storage="lovehotel00.png"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]


[mioHyoujouSabun hyoujou="situmon_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0038.mp3"  ]
[tb_start_text mode=3 ]
#みお
わ……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="okoruake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0039.mp3"  ]
[tb_start_text mode=3 ]
#みお
広い……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ホテルの部屋に着くと、[r]
ふたりの緊張が若干やわらいだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
受付からエレベーターまでの間、[r]
ひと気はなかったが、みおはガチガチだった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
かくいう自分もはじめて来るところだから[r]
堂々とはできてなかったかもだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0040.mp3"  ]
[tb_start_text mode=4 ]
#みお
こうなってるんですね[r]
その、こういう建物、って……[l]
[_tb_end_text]

;選択肢：ラベル設定お任せします
[glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="カラオケとかもあるはず"  _clickable_img=""  target="*hotelFirst3"  ]
[glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="浴室やベッドはもっと広い"  _clickable_img=""  target="*hotelFirst4"  ]
[s]
[s]

;-------------------
;【選択肢】カラオケとかもあるはず
*hotelFirst3
[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0042.mp3"  ]
[tb_start_text mode=3 ]
#みお
ここって歌えるんですか？[r]
えっ、カラオケの機械があるんですか！？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
女の子だけで騒ぐために来ることもあるらしい――[r]
そういうとみおは目を丸くしていた。[p]
[_tb_end_text]


;　→次の共通部へ
[jump target="hotelFirst5" ]
;-------------------
;【選択肢】浴室やベッドはもっと広い
*hotelFirst4
[mioHyoujouSabun hyoujou="normalake6_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0043.mp3"  ]
[tb_start_text mode=3 ]
#みお
あやー……[r]
なんだか、照れますね……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
あまりにうぶな反応で[r]
こちらまでドギマギしてくるようだ。[p]
[_tb_end_text]


;　→次の共通部へ
[jump target="hotelFirst5" ]


*hotelFirst5
;-------------------
;【共通部】

;いちど暗転。アウターありの場合、この暗転中にアウター無しへ切り替えておく。
[maskStart]
[eval exp="f.isHouse" ]
[wait time="&f.WAIT_TIME"]
[mask_off time="1000" effect="fadeOut" ]

[tb_start_text mode=3 ]
#
……なんとなく間取りやアメニティを把握しつつ[r]
荷物を置いた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
当たり前だが、アロマとかローションとか、[r]
家のそういう道具は持ってきてないので使えない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
が、無料のアメニティがけっこう豪華なようだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
コンドームは使い切れないほどあるし、[r]
スーパーエナジードリンクなるものも無料だ。[p]
[_tb_end_text]



[tb_start_text mode=4 ]
#
体力が一時的に増加するドリンクで、[r]
ふたりぶんあるようだが……[l]
[_tb_end_text]


;選択肢：ラベル設定お任せします
[glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="飲んでおく"  _clickable_img=""  target="*hotelFirst6"  ]
[glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="飲まない"  _clickable_img=""  target="*hotelFirst7"  ]
[s]
[s]


*hotelFirst6
;------------------------
;【選択肢】「飲んでおく」

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、はい[r]
飲めばいいんですか？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/gokuri.mp3"  ]
[tb_start_text mode=3 ]
#
みおにも渡して、いっしょに飲み干した。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0164.mp3"  ]
[tb_start_text mode=3 ]
#みお
ごくごく……[p]
[_tb_end_text]

;　みお＆先生ともに、体力にバフ+50（仮値）＆体力全回復（バフ込みの値）
[tempHPMaxUp HP=50]
[calcHP HP=&f.tempHPMax]
[mioHyoujouSabun hyoujou="kiraegao_red.png"]
[eval exp="f.isEnergyDrink = true" ]
[eval exp="f.todayHPBuff = true" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Pup.mp3"  ]
[tempHPTipsCheck]
[messageON]
[tb_start_text mode=3 ]
#
すごい効き目だ……！[r]
みおも身体が火照ってきているようだ。[p]
[_tb_end_text]



;　次の共通部へ

[jump target="hotelFirst8" ]

*hotelFirst7
;------------------------
;【選択肢】「飲まない」

[tb_start_text mode=3 ]
#
今回は飲まなくていいな。[p]
[_tb_end_text]



;　次の共通部へ
[jump target="hotelFirst8" ]


*hotelFirst8
;------------------------
;【共通部】
[eval exp="tf.storageBase = 'EVcg/HoteloSuwari/'" ]
[eval exp="tf.storage = tf.storageBase + 'sihuku1_01.png'" cond="f.cloth != 'sihuku2'" ]
[eval exp="tf.storage = tf.storageBase + 'sihuku2_01.png'" cond="f.cloth == 'siuku2'" ]

[hoteloSuwariCG cg="01" time="3000"]

[tb_start_text mode=4 ]
#
……さて。[l]
[_tb_end_text]

[jump target="hotelCommon" ]

[tb_start_text mode=3 ]
#
本来なら先にシャワーなんだろうけれど――[p]
[_tb_end_text]

[hoteloSuwariCG cg="02"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生……？[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
そんな時間も惜しいくらい、[r]
今この気持ちが大切に思えた。[l]
[_tb_end_text]



[jump target="*hotelStart" ]
*goHotel3
;---------
*hotelSecond
[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[bgChange time="0"  method="crossfade"  storage="lovehotel00.png"  ]
[chara_hide_all time="1" ]
[fadeoutbgm2 time="2000" ]
[eval exp="f.isHouse" ]
[wait  time="500"  ]
;　アウターありの場合も、もうアウターなしのみお立ち絵に切り替えておく。
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]


[tb_start_text mode=3 ]
#
――いつものラブホテルに到着だ。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
いつ来てもドキドキします……[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
無料サービスの栄養ドリンクだが、[r]
今回はどうしようかな。[l]
[_tb_end_text]

;選択肢：ラベル設定お任せします
[glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="飲んでおく"  _clickable_img=""  target="*hotelSecond2"  ]
[glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="飲まない"  _clickable_img=""  target="*hotelSecond3"  ]
[s]
[s]

;------------------------
;【選択肢】「飲んでおく」
*hotelSecond2
[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、はい[r]
飲めばいいんですか？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/gokuri.mp3"  ]
[tb_start_text mode=3 ]
#
みおにも渡して、いっしょに飲み干した。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0164.mp3"  ]
[tb_start_text mode=3 ]
#みお
ごくごく……[p]
[_tb_end_text]

;　みお＆先生ともに、体力にバフ+50（仮値）＆体力全回復（バフ込みの値）
[tempHPMaxUp HP="50"]
[calcHP HP=&f.tempHPMax rand=false]
[mioHyoujouSabun hyoujou="kiraegao_red.png"]
[eval exp="f.isEnergyDrink = true" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/Pup.mp3"  ]
[tempHPTipsCheck]
[messageON]
[tb_start_text mode=3 ]
#
すごい効き目だ……！[r]
みおも身体が火照ってきているようだ。[p]
[_tb_end_text]



;　次の共通部へ
[jump target="hotelSecond4" ]
;------------------------
;【選択肢】「飲まない」
*hotelSecond3
[tb_start_text mode=3 ]
#
今回は飲まなくていいな。[p]
[_tb_end_text]



;　次の共通部へ
[jump target="hotelSecond4" ]

;------------------------
;【共通部】
*hotelSecond4
[hoteloSuwariCG cg="01" time="3000"]

[tb_start_text mode=4 ]
#
さて、それじゃあ……[l]
[_tb_end_text]

[jump target="*hotelCommon" ]


;★他分岐からの合流部
*hotelCommon
[glink  color="btn_05_black glink_left"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="みおを抱く"  _clickable_img=""  target="*hotelCommon1"  ]
[glink  color="btn_05_black glink_center"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="まずはお風呂"  _clickable_img=""  target="*hotelCommon2"  ]
[glink  color="btn_05_black glink_right"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="カラオケして帰る"  _clickable_img=""  target="*hotelCommon3"  ]
[s]


*hotelCommon1
*hotelCommon1_1
[takeBath]
[mioTakeBath]
;[mioHyoujouSabun hyoujou="okoru2_red.png"]
[hoteloSuwariCG cg="03"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0045.mp3"  ]
[tb_start_text mode=4 ]
#みお
は、はい[l]
[_tb_end_text]

;一択選択肢：ラベル設定お任せします
[glink  color="btn_05_black"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="抱くよ"  _clickable_img=""  target="*hotelCommon1_2"  ]
[s]
[s]
*hotelCommon1_2
;[mioHyoujouSabun hyoujou="raku1_red.png"]
[hoteloSuwariCG cg="04"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_oswr/FT_m004_oswr0046.mp3"  ]
[tb_start_text mode=3 ]
#みお
……はい[p]
[_tb_end_text]
#
;　暗転し、暗転あけるとおさわりパート（ラブホ）がはじまる。
[eval exp="f.pajamaChangeFlag = true" ]


;【分岐】上記以外の時
[messageInvisible]
[wait  time="500"  ]
[maskStart]
[free layer="1" name="still" ]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]

[tb_start_text mode=3 ]
#
ベッドまで移動し、みおをシーツの上に[r]
やさしく横たえさせる――[p]
[_tb_end_text]

[messageInvisible]
[wait  time="500"  ]
[maskStart]
;寝そべりスチルを瞬間表示しておく
[free layer="1" name="still" ]
[setHtlNesoberi time="0"]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[messageON]


[tb_start_text mode=3 ]
#
四肢は無防備に投げ出され、[r]
みおが身を委ねてくれているのがわかる。[p]
[_tb_end_text]

;----------------------------------
;下記みお台詞から条件に合うものの中で１つ抽選して表示
;現状は特に条件指定はないので、すべて等しい確率での抽選です。
[getrand min="0" max="3"]

[if exp="tf.rand == 0" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どきどき……[p]
    [_tb_end_text]

[elsif exp="tf.rand == 1" ]
    
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、どうされちゃうんでしょう……[p]
    [_tb_end_text]

[elsif exp="tf.rand == 2" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせ……♡[p]
    [_tb_end_text]

[elsif exp="tf.rand == 3" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]

[endif]
;----------------------------------
;ゲーム中、ここに来るのがはじめての時、この範囲をいちどだけ追加表示
[if exp="f.loveHo.cosplay.total === 0" ]

    [tb_start_text mode=3 ]
    #
    ――さて。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    すぐに行為に入ってもいいが……[r]
    せっかくだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ゆったり話しながら少しずつはだけさせて、の[r]
    前置きを楽しむのもいいだろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    他にもホテルのアメニティやサービスがあるようなら[r]
    そういったものを使うのも悪くない。[p]
    [_tb_end_text]

    ;→つぎの共通部へ

[endif]
;----------------------------------
;【共通部】
[eval exp="f.loveHoNesoberi = {talk:0,dakisime:0,kiss:0,fukuKise:0,fukuNugi:0,sitagiNise:0,sitagiNugi:0,total:0}" ]
*hotelCommon1_2_select
[messageON]

[tb_start_text mode=4 ]
#
それじゃあどうしようかな……[l]
[_tb_end_text]
[messageInvisible]

;既存の「脱がす」「おさわりパートへ」などの選択肢に合流
;また、上記選択肢に「コスプレＨ」の項目を追加してください。この選択肢を押した際の動作は後述の通りです。

#
[messageInvisible]
[jump target="*hotelCommon1_timeup" cond="f.hours >= 18 && f.minutes >= 30" ]
[setGlinkY num="4"]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="900"  y="&tf.glink1Y+50"  width="200"  height=""  text="イチャイチャする"  _clickable_img=""  target="*hotelCommon1_itya" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="900"  y="&tf.glink2Y+50"  width="200"  height=""  text="脱がす/着せる"  _clickable_img=""  target="*hotelCommon1_huku" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="900"  y="&tf.glink3Y+50"  width="200"  height=""  text="コスプレH"  _clickable_img=""  target="*hotelCommon_cosplay" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="900"  y="&tf.glink4Y+50"  width="200"  height=""  text="本番をはじめる"  _clickable_img=""  target="*hotelCommon1_osawariStart" ]
[s]

[glink  color="btn_05_black glink_left"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="脱がす（下着姿へ）"  _clickable_img=""  target="*hotelCommon1_3"  ]
[glink  color="btn_05_black glink_center"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="コスプレＨ"  _clickable_img=""  target="*hotelCommon_cosplay" exp="f.cosplayLabel = 'hotelCommon1_2_select'" ]
[glink  color="btn_05_black glink_right"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おさわりパート開始"  _clickable_img=""  target="*hotelCommon1_osawariStart"  ]
[s]

*hotelCommon1_3
[CGSet layer="1" storage="EVcg/loveHotel/02_3_sitagi.png" time="1000" name="still,loveho03"]
[eval exp="f.cloth = 'sitagi'" ]
[glink  color="btn_05_black glink_left"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="脱がす（全裸へ）"  _clickable_img=""  target="*hotelCommon1_4"  ]
[glink  color="btn_05_black glink_center"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="コスプレＨ"  _clickable_img=""  target="*hotelCommon_cosplay"  exp="f.cosplayLabel = 'hotelCommon1_3'" ]
[glink  color="btn_05_black glink_right"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おさわりパート開始"  _clickable_img=""  target="*hotelCommon1_osawariStart"  ]
[s]


*hotelCommon1_4
[CGSet layer="1" storage="EVcg/loveHotel/02_3_hadaka.png" time="1000" name="still,loveho03"]
[eval exp="f.cloth = 'hadaka'" ]
[glink  color="btn_05_black glink_double_left"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="コスプレＨ"  _clickable_img=""  target="*hotelCommon_cosplay" exp="f.cosplayLabel = 'hotelCommon1_4'" ]
[glink  color="btn_05_black glink_double_right"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おさわりパート開始"  _clickable_img=""  target="*hotelCommon1_osawariStart"  ]
[s]

*hotelCommon1_itya
[messageON]
[tb_start_text mode=4 ]
#
どうやってイチャつこうか？[l]
[_tb_end_text]

;選択肢
;　お話する
;　抱きしめる
;　キスする
;　考えなおす

[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="200"  y="400"  width="200"  height=""  text="お話する"  _clickable_img=""  target="*hotelCommon1_itya_talk" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="430"  y="400"  width="200"  height=""  text="抱きしめる"  _clickable_img=""  target="*hotelCommon1_itya_dakisime" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="660"  y="400"  width="200"  height=""  text="キスする"  _clickable_img=""  target="*hotelCommon1_itya_kiss" ]
[glink color="btn_05_black "  align="" addlog="true" storage=""  size="20"  x="890"  y="400"  width="200"  height=""  text="考えなおす"  _clickable_img=""  target="*hotelCommon1_2_select" ]
[s]

*hotelCommon1_itya_talk

[lovehoMioReaction type="talk" ]
[addTime minutes="5"]
[jump target="*hotelCommon1_2_select" ]
*hotelCommon1_itya_dakisime
[maskStart]
    [lvHoRandDakisimeVoice]
    [wait time="1000" ]
[maskEnd]
[wait time="&f.WAIT_TIME" ]
[lovehoMioReaction type="dakisime" ]
[addTime minutes="5"]
[jump target="*hotelCommon1_2_select" ]

*hotelCommon1_itya_kiss
[maskStart]
    [lvHoRandKissVoice]
    [wait time="1000" ]
[maskEnd]
[wait time="&f.WAIT_TIME" ]
[lovehoMioReaction type="kiss" ]
[eval exp="f.kiss++" ]
[addTime minutes="5"]
[jump target="*hotelCommon1_2_select" ]

*hotelCommon1_huku
[tb_start_text mode=4 ]
#
どうしようか？[l]
[_tb_end_text]

;選択肢
;　服を着せる　or　服を脱がす
;　下着を着せる　or　下着を脱がす
;　考えなおす
[glink color="btn_05_black glink_left"  align="" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="服を着せる"  _clickable_img=""  target="*hotelCommon1_fuku_kise" cond="f.loveHo.cloth == 'none'" ]
[glink color="btn_05_black glink_left"  align="" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="服を脱がす"  _clickable_img=""  target="*hotelCommon1_fuku_nugi" cond="f.loveHo.cloth != 'none'"]
[glink color="btn_05_black glink_center"  align="" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="下着を着せる"  _clickable_img=""  target="*hotelCommon1_sitagi_kise" cond="f.loveHo.sitagi == 'none'" ]
[glink color="btn_05_black glink_center"  align="" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="下着を脱がす"  _clickable_img=""  target="*hotelCommon1_sitagi_nugi" cond="f.loveHo.sitagi != 'none'" ]
[glink color="btn_05_black glink_right"  align="" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="*hotelCommon1_2_select" ]
[s]

*hotelCommon1_fuku_kise

[addTime minutes="5"]
[eval exp="f.loveHo.cloth = f.cloth" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
[setHtlNesoberi]
[lovehoMioReaction type="fukuKise" ]
[jump target="*hotelCommon1_2_select" ]

*hotelCommon1_fuku_nugi

[addTime minutes="5"]
[eval exp="f.loveHo.cloth = 'none'" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
[setHtlNesoberi]
[lovehoMioReaction type="fukuNugi" ]
[jump target="*hotelCommon1_2_select" ]

*hotelCommon1_sitagi_kise

[addTime minutes="5"]
[eval exp="f.loveHo.sitagi = 'sitagi'" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
[setHtlNesoberi]
[lovehoMioReaction type="sitagiKise" ]
[jump target="*hotelCommon1_2_select" ]

*hotelCommon1_sitagi_nugi

[addTime minutes="5"]
[eval exp="f.loveHo.sitagi = 'none'" ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
[setHtlNesoberi]
[lovehoMioReaction type="sitagiNugi" ]
[jump target="*hotelCommon1_2_select" ]


*hotelCommon_cosplay
[call storage="Hscene/hotelCosplay01.ks" ]
[hotelCosplay01]
[eval exp="f.cosH.today = true" ]
[eval exp="f.loveHo.lastDay = f.day " ]
[jump target="scene7_kitaku2" ]

*hotelCommon1_osawariStart
[lovehoMioReaction type="honban" ]
[maskStart]
    [eval exp="f.isHotel = true" ]
    [eval exp="f.isWakan = true" ]
    [eval exp="f.totalOsawari.hotel++" ]
    [eval exp="f.dayOsawari.hotel++" ]
    [eval exp="f.dayOsawari.now = 'hotel'" ]
    [free layer="2" name="still" ]
    [jump storage="osawari.ks"  target="*awakeOsawari" ]

*hotelCommon1_timeup
[cm]
[messageON]
[tb_start_text mode=3 ]
#
おっと、けっこう時間が過ぎたな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
滞在時間にも制限があるし、[r]
そろそろ本番に入るとしよう――[p]
[_tb_end_text]

[jump target="*hotelCommon1_osawariStart" ]

*hotelCommon2

[eval exp="f.pajamaChangeFlag = true" ]
[if exp="sf.isTaiken" ]
    [skipForTaikenban  cg="EVcg/toriaezu/loveHotel/02_2.png" voice="vo_scene/FT_m007_scene2_0023.mp3"]
    [jump storage="SundayDate/commonDate.ks" target="hotelCommon2Skip"]
    *hotelCommon2Skip

        [free layer="1" name="still" ]
        [eval exp="f.cloth = 'hadaka'" ]
        [eval exp="f.totalOsawari.hotel++" ]
        [eval exp="f.dayOsawari.hotel++" ]
        [eval exp="f.dayOsawari.now = 'hotel'" ]
        [jump storage="osawari.ks" target="*awakeOsawari" ]

[endif]

[if exp="f.loveHo.bath.total == 0" ]
    ;--------------------------------
    ;【分岐】ここに来るのがはじめての時

    [tb_start_text mode=3 ]
    #
    みおを誘って浴室をのぞいてみることにした。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    こういうところのお風呂場って[r]
    豪華でおもしろいというし。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    帰りしなの利用じゃあ[r]
    ゆっくり見る余裕もないだろうしな。[p]
    [_tb_end_text]

    ;暗転、暗転中に同送スチル「02の②用」を表示（toriaezuフォルダに適当にリネームして格納）、暗転解除
    [if exp="sf.isTaiken" ]
        [maskStart]
            [takeBath]
            [mioTakeBath]
            [free layer="1" name="still" ]
            [CGSet layer="1" storage="EVcg/HotelBath/02.png" name="still,lovehoBath" time="1" width="1280" height="720"]
        [maskEnd]
        [tb_start_text mode=3 ]
        #
        シーン「ラブホテルのお風呂（シャワー）」[r]
        制作...[p]
        [_tb_end_text]
    [else]
        [call storage="Hscene/hotelBath01.ks" ]
        [hotelBath01]
    [endif]

    ;「ラブホテルのお風呂（シャワー）」イベント初回verを再生後、次の共通部へ
    ;※↑のシーンksはまだ完成させられないので後述②の内容を仮にあてておいてください
[else]
    ;【分岐】ここに来るのが２回目以降の時

    [tb_start_text mode=3 ]
    #
    “行為”の前に、汗を流すことにしよう。[p]
    [_tb_end_text]


    ;[mioHyoujouSabun hyoujou="raku2.png"]
    [hoteloSuwariCG cg="04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい[p]
    [_tb_end_text]

    ;暗転、暗転中に同送スチル「02の②用」を表示（toriaezuフォルダに適当にリネームして格納）、暗転解除
    [if exp="sf.isTaiken" ]
        [maskStart]
            [free layer="1" name="still" ]
            [CGSet layer="1" storage="EVcg/HotelBath/02.png" name="still,lovehoBath" time="1" width="1280" height="720"]
        [maskEnd]
        [tb_start_text mode=3 ]
        #
        シーン「ラブホテルのお風呂（シャワー）」[r]
        制作...[p]
        [_tb_end_text]
    [else]
        [call storage="Hscene/hotelBath02.ks" ]
        [hotelBath02]
    [endif]
    ;「ラブホテルのお風呂（シャワー）」イベント２回目verを再生後、次の共通部へ
    ;※↑のシーンksはまだ完成させられないので後述②の内容を仮にあてておいてください
[endif]

;--------------------------------
;共通部

;暗転し、暗転あけると、みお全裸でのおさわりパート（和姦）を開始
;（シーン側の末尾にも同じ指示を書いていますが）
[maskStart]
    [eval exp="f.isHotel = true" ]
    [eval exp="f.loveHo.bath.total++" ]
    [eval exp="f.isWakan = true" ]
    [eval exp="f.cloth = 'hadaka'" ]
    [eval exp="f.totalOsawari.hotel++" ]
    [eval exp="f.dayOsawari.hotel++" ]
    [eval exp="f.dayOsawari.now = 'hotel'" ]
    [jump storage="osawari.ks" target="*awakeOsawari" ]
;おさわりパート開始後は、既存のおさわりパート（ラブホ）予定だった箇所と同様の
;仮テキストを出しておさわりパートをすぐに強制終了するようにしてください。

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[mask time="1500" effect="fadeIn" ]
[jump target="*hotelCommon4" ]




*hotelCommon3
[if exp="f.ballCount >= f.ballLimit" ]

    [tb_start_text mode=3 ]
    #
    しばらく射精してなくてムラムラしている。[r]
    カラオケなんかしてる場合ではない……！[p]
    [_tb_end_text]

    [jump target="hotelBackSelect" ]

[else]

    [if exp="f.loveHo.karaoke.total == 0" ]
        ;初回時
        [mioHyoujouSabun hyoujou="odoroki_red.png" time="1"]
        [hoteloSuwariCG cg="05"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0011.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        えっ、せっかくここまで来て[r]
        カラオケして帰るんですか……！？[l]
        [_tb_end_text]
    [else]
        ;２回め以降
        [mioHyoujouSabun hyoujou="odoroki_red.png" time="1"]
        [hoteloSuwariCG cg="05"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0012.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        またカラオケですか！？[l]
        [_tb_end_text]
    [endif]

    [glink  color="btn_05_black glink_double_left"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="そうだ！　歌うぞ！"  _clickable_img=""  target="*hotelCommon3_1"  ]
    [glink  color="btn_05_black glink_double_right"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="*hotelBackSelect"  ]
    [s]

    *hotelCommon3_1
    [fadeoutbgm2 time="6000" ]
    ;照明を暗くするイメージで画面全体を薄っすら暗くする
    [free layer="1" name="still" time="1000" ]
    [LAYERMODE color="0x333333" mode="multiply" opacity="120" time="1000"  wait="true"  ]

    [tb_start_text mode=3 ]
    #
    機材セッティングしながら[r]
    みおにもマイクを渡す。[p]
    [_tb_end_text]

    [if exp="f.loveHo.karaoke.total == 0" ]
        ;初回時
        [mioHyoujouSabun hyoujou="okoru2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0013_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        え、と……あーあーっ、[r]
        テス、テス……[p]
        [_tb_end_text]
    [else]
        ;２回め以降
        [mioHyoujouSabun hyoujou="okoru2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0014_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        テス、テス……[r]
        あいうえおかきくけこ……[p]
        [_tb_end_text]
    [endif]

    [messageOFF]

    [maskStart]
        [playbgm2 storage="ME_TCG.mp3" loop="false"]
        [free_layermode time="1" ]
        [chara_hide_all time="1" ]
        [bgChange storage="bk100.jpg" time="1"]
        [wait time="&f.WAIT_TIME" ]
    [maskEnd]

    [messageON]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [messageOFF]

    [maskStart]
        [addTime minutes="120"]
        [mioHyoujou hyoujou="raku1.png" time="1" ]
        [bgChange storage="lovehotel00.png" time="1"]
        [calcMood mood="20"]
        [calcMioHP HP="-20"]
        [calcHP HP="-20"]
        [wait  time="500" ]
    [maskEnd]

    [HPMaxUp HP="5"]
    [messageON]
    [tb_start_text mode=3 ]
    #
    ――みおと長いこと歌い込んだ。[p]
    [_tb_end_text]

    [if exp="f.loveHo.karaoke.total == 0" ]
        ;ここに来るのが初めての時
        [mioHyoujouSabun hyoujou="komruake6_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        た、楽しかった……です[p]
        [_tb_end_text]

    [else]
        [mioHyoujouSabun hyoujou="happyake2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m009_part0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        また歌うのに夢中になっちゃいましたね～[p]
        [_tb_end_text]


    [endif]
    
    [eval exp="f.loveHo.karaoke.total++" ]
    [eval exp="f.loveHo.karaoke.today++" ]
    ;----------------------------

    [tb_start_text mode=3 ]
    #
    よし、じゃあ帰るか。[p]
    [_tb_end_text]
    [eval exp="f.loveHo.lastDay = f.day" ]
    [jump target="scene7_kitaku" ]
    *hotelCommon3_2

[endif]




*hotelCommon4
[playbgm2  volume="40"  time="6000"  loop="true"  fadein="true"  storage="BGM16_holiday3.mp3"  html5="false"  ]

#
[messageON]
[hotelEvStart]
[mask_off time="1500" effect="fadeOut" ]

#
仕様メモ[r]
ラブホでアイテムは無し[p]


[jump target="hotelStart" ]


*hotelStart
[angryEndEvCheck]
[eval exp="f.totalOsawari.hotel++" ]
[eval exp="f.dayOsawari.hotel++" ]
[tb_start_text mode=3 ]
#おさわり（ラブホ）
このバージョンでは未解禁となっています。[r]
自宅へ戻ります。[p]
[_tb_end_text]

[jump target="hotelOsawariEnd" storage="SundayDate/commonDate.ks" ]
[eval exp="f.isHotel = true" ]
[eval exp="f.suyasuya = 0" ]
[eval exp="f.useAloma = 0" ]
[eval exp="f.useLotion = 0" ]
[jump target="*hotelOsawari" storage="osawari.ks" ]

*hotelBackSelect
;★合流地点

[tb_start_text mode=4 ]
#
ということで……[l]
[_tb_end_text]

[jump target="hotelCommon" ]

*hotelOsawariEnd

[setBK time="500"]

[messageON]



[tb_start_text mode=3 ]
#
それからシャワーを浴びたりなんだりで[r]
身支度を整えて帰路についたのだった。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[setHP HP=&f.HPMax]
[eval exp="f.cloth = f.plainClothes"]

[eval exp="f.hotelH.today = true" ]
[eval exp="f.pajamaChangeFlag = true" ]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[addTime minutes=20]
[deleteBK time="1"]
[freeimage layer="2"]
[osawariResetHotel]
[font size="30" ]
[setButtonInTalk]
[messageOFF]
[eval exp="f.loveHo.lastDay = f.day" ]
[jump target="*scene7_kitaku"]

[mask time="500" effect="fadeIn" ]

[free layer="1" name="siru" time="0"]
[free name="tikubi" layer="1" time="0"]
[free layer="3" name="futon" time="0"]
[free layer="2" name="tissue" time="0"  ]
[stopse buf="3" ]
[freeimage layer="0" time="0"]
[cursor storage="default"]
;[clearstack]

[frameReset]

[free_layermode time="0"]
[layopt layer="message2" visible="false"]

[fadeoutbgm2 time="1500"  ]
[freeimage layer="2" ]
#
[messageOFF]
[bgChange storage="bk100.jpg" ]
[setUI]
[mask_off time="500" effect="fadeOut" ]

;[jump target="titleLogo" storage="title_screen.ks" ]


;===================================================================================================
;【７】帰宅
*scene7
[messageON]
;■分岐：体力不足判定で【７】に来た
[if exp="f.HP < f.HP_LOW"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
    [mioHyoujouSabun hyoujou="fuan2.png"]
    [tb_start_text mode=3 ]
    #みお
    先生、だいぶお疲れみたいですよ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
    [mioHyoujouSabun hyoujou="fuanake.png"]
    [tb_start_text mode=3 ]
    #みお
    今日は帰って休みませんか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    たしかに、へとへとかもしれない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    カラ元気で動き続けても
    みおも楽しめないか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……おとなしく引き上げるとしよう。[p]
    [_tb_end_text]

[else]

    ;■分岐：上記以外のケースで【７】に来た

    [tb_start_text mode=3 ]
    #
    家に帰ろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今日は楽しかったな……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
    [mioHyoujouSabun hyoujou="happyake4.png"]
    [tb_start_text mode=3 ]
    #みお
    はいっ、ありがとうございました[p]
    [_tb_end_text]
    #
    [position frame="frame_message_toumei.png" ]

[endif]

;■合流部
;---移動演出
*scene7_kitaku
[chara_hide_all]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[maskStart]
[bgChange  time="0"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]
[wait  time="500"  ]
[addTime minutes=30]
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


[wait  time="500"  ]
[maskStart]
[playse  volume="100"  time="1000"  buf="0"  storage="BGS/OfficeSt.mp3"  loop="true"  clear="true"  fadein="true"  ]
[wait  time="500"  ]
[addTime minutes=30]
[tb_hide_message_window  ]
[calcHP HP=-10 minHP=1 rand=true]
[mask_off  time="1000"  effect="fadeOut"  ]

[if exp="!f.hotelH.today && !f.loveHo.karaoke.today && sf.isDebug && !sf.isTaiken && !(f.kokuhaku.today && !f.kokuhaku.isSuccess)" ]

    [messageON]

    [glink2 cm="true" fix="true" name="debugButton" target="*okDateTekoki" exp="f.dateTekokiH.cause = 'mio'"  text="みおがムラムラして……" color="btn_05_black glink_left" size="20" x="375" y="400"]
    [glink2 cm="true" fix="true" name="debugButton" target="*okDateTekoki" exp="f.dateTekokiH.cause = 'sensei'"  text="先生がムラムラしていたので……" color="btn_05_black glink_center" size="20" x="375" y="400"]
    [glink2 cm="true" fix="true" name="debugButton" target="*noDateTekoki"  text="イベント無し" color="btn_05_black glink_right" size="20" x="375" y="400"]


    [tb_start_text mode=3 ]
    #
    「デート帰り手コキ」デバッグ[r]
    実判定前に結果を操作（送りで通常判定）[p]
    [_tb_end_text]

    [clearfix name="debugButton" ]

    [if exp="f.love > f.LOVE_LOW && f.loveLevel >= f.LOVE_LEVEL_PLUS.indexOf('高2') && f.mood > f.MOOD_LOW && f.mioHealth > f.mioHealthLow && f.HP > f.HP_LOW" ]

        [if exp="f.muramura >= f.muramuraHigh" ]
            [eval exp="f.dateTekokiH.cause = 'mio'" ]
            [jump target="okDateTekoki" ]
        [elsif exp="f.ballCount >= f.ballLimit" ]
            [eval exp="f.dateTekokiH.cause = 'sensei'" ]
            [jump target="okDateTekoki" ]
        [else]
            [jump target="noDateTekoki" ]
        [endif]

    [else]
        [jump target="noDateTekoki" ]
    [endif]

    *okDateTekoki
    ;デート帰り手コキのスチル表示
    ;本来はみおが来ている方の衣装に合わせたスチルを選ぶ仕様にしますが、
    ;今は私服１のスチルしかないので、それを表示します
    [clearfix name="debugButton" ]
    [dateTekokiHEv01]



    *noDateTekoki

[endif]
*scene7_kitaku2
[clearfix name="debugButton" ]
[wait  time="500"  ]
[maskStart]
[deleteBK time="1"]
[free layer="2" name="still" ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[addTime minutes=30]
[calcHP HP=-10 minHP=1 rand=true]
[wait  time="500"  ]
[messageON]
[messageInvisible]

[bgChange  time="1000"  method="crossfade"  storage="genkan2_n_l.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

;一択の選択肢。ジャンプ先タグ設定はお任せします。
[glink  color="btn_05_black"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ただいま"  _clickable_img=""  target="tadaima"  ]
[s]
[s]

*tadaima
[eval exp="f.isHotel = false" ]
[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0046.mp3"  ]
[mioHyoujou hyoujou="doya.png"]
[tb_start_text mode=3 ]
#みお
おかえりなさい[p]
[_tb_end_text]
[tb_hide_message_window  ]


[mioLeave]
[wait  time="500"  ]
;暗い部屋を表示
[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]

[if exp="f.dayPart == 'morning' " ]
    [bgChange storage="room_m_o.png" ]
[elsif exp="f.dayPart == 'evening'" ]
    [bgChange storage="room_e_o.png" ]
[elsif exp="f.dayPart == 'night'" ]
    [bgChange  time="1000"  method="crossfade"  storage="room_n_c_off.png"  ]
[endif]





;※帰宅タイミングに合わせて分岐


;■ランチorディナー後の帰宅
[if exp="!f.hotelH.today && !f.cosH.today" ]
    ;BGM再生。ランチ後ならBGM1_evening.mp3　／　ディナー後ならBGM2_night.mp3
    [if exp="f.isEatLunch && !f.isEatDinner"]

    ;[playbgm2  volume="40"  time="1000"  loop="true"  fadein="true"  storage="BGM1_evening.mp3"  html5="false"  ]

    [else]
    ;[playbgm2  volume="40"  time="1000"  loop="true"  fadein="true"  storage="BGM2_night.mp3"  html5="false"  ]

    [endif]
    ;部屋を明るく
    [wait  time="500"  ]

    [if exp="f.dayPart == 'night'" ]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]
        [bgChange  time="1000"  method="crossfade"  storage="C3_n_c_lit.png" left="-109.5"  top=""  width="1475"  height="720"  ]

    [endif]

    [messageON]
    [mioHyoujou hyoujou="raku1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お出かけ、楽しかったです[r]
    あとはおうちでゆっくり、ですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うん。[r]
    ゆっくりお茶を飲んだり、風呂に入ったりもいいな。[p]
    [_tb_end_text]


    ;以降、現在時刻から寝るまでの間で自由行動
    [jump storage="communication2.ks" target="loopStart"]


;■ホテルでえっちした後
[elsif exp="f.hotelH.today || f.cosH.today" ]
    ;BGMなし＆部屋が暗いまま会話して、即就寝（深夜覚醒＝おさわりパート睡姦もなし）
    [if exp="f.mioHealth < f.HP_LOW || f.hours>=22" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0007.mp3"  ]
        [messageON]
        [mioHyoujouSabun hyoujou="tohoho.png"]
        [tb_start_text mode=3 ]
        #みお
        今日はもう、へろへろ……ですぅ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まったくだ。[r]
        いろんなことをした一日だった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        このまま布団へ飛び込んでしまおう……[p]
        [_tb_end_text]

        ;一択の選択肢。ジャンプ先タグ設定はお任せします。
        [glink  color="btn_05_black"  align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おやすみ"  _clickable_img=""  target="oyasumi"  ]
        [s]
        [s]

    [else]

        ;部屋を明るく
        [wait  time="500"  ]
        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]
        [bgChange  time="1000"  method="crossfade"  storage="C3_n_c_lit.png" left="-109.5"  top=""  width="1475"  height="720"  ]


        [messageON]
        [mioHyoujou hyoujou="enryo_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし、楽な服に着替えさせてもらいますね[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        うん。[r]
        食事も風呂も出先で済ませたわけだしな。[p]
        [_tb_end_text]

        [eval exp="f.cloth = f.pajama" ]
        [eval exp="f.isEatLunch = true"]
        [eval exp="f.isEatDinner = true"]
        [eval exp="f.isHotel = false" ]
        [eval exp="f.nowPajamaChange = true" ]
        [chara_hide_all]
        [jump storage="communication2.ks" target="loopStart"]


    [endif]

[endif]

*oyasumi
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0008.mp3"  ]
[tb_start_text mode=3 ]
[mioHyoujouSabun hyoujou="tohoho_red.png"]
#みお
はい、おやすみなさい……[r]
今日はありがとうございました……[p]
[_tb_end_text]

;就寝して翌日へ
[eval exp="f.nSoineFlag = false" ]

[jump storage="communication2.ks" target="oyasumi"]


*kokuhaku
[messageON]
仮処理　（告白する）[l]
[glink_left storage="SundayDate/commonDate.ks" target="kokuhaku_success" text="成功"]
[glink_right storage="SundayDate/commonDate.ks" target="kokuhaku_fail" text="失敗"]
[s]

*kokuhaku_fail

[messageInvisible]
[jump target="*scene5_select"]

*kokuhaku_success
[eval exp="f.kokuhaku.isSuccess = true" ]
[eval exp="f.kokuhaku.day = f.day" ]
[glink_left storage="SundayDate/commonDate.ks" target="kokuhaku_success_sensei" text="先生からの告白で<br>成功扱い"]
[glink_right storage="SundayDate/commonDate.ks" target="kokuhaku_success_mio" text="みおからの告白で<br>成功扱い"]
[s]

*kokuhaku_success_sensei

[eval exp="f.kokuhaku.type = 'sensei'"]
[jump target="scene5_select"]

*kokuhaku_success_mio

[eval exp="f.kokuhaku.type = 'mio'"]
[jump target="scene5_select"]

*propose
[messageON]
仮処理　（プロポーズする）[l]
[glink_left storage="SundayDate/commonDate.ks" target="propose_success" text="成功"]
[glink_right storage="SundayDate/commonDate.ks" target="propose_fail" text="失敗"]
[s]
[messageInvisible]
[jump target="*scene5_select"]

*propose_success
[eval exp="f.propose.isSuccess = true"]
[eval exp="f.propose.day = f.day"]
[jump target="*scene5_select"]

*propose_fail
[jump target="*scene5_select"]
;以上
