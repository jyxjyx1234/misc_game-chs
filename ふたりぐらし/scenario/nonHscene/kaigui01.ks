
[macro name="kaiguiEv01" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;①

    ;★kaerimiti★系BGを現在時刻に合わせた差分で表示
    ;ウェイトナシでみお立ち絵表情　odoroki.png　で表示
    ;帰り道のスチルを消去
    [setKouen2 time="1"]
    [free layer="2" name="still" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ！[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="kira5.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、あそこ[r]
    キッチンカーが来てますよ！[p]
    [_tb_end_text]

    ;クレープ、ケバブ、タコス、チュロス、たこ焼きのいずれかを抽選。
    ;はじめは等確率。２回目以降は起こっていないものの中から抽選し、
    ;すべてのイベントが発生したら再度等確率の抽選となる。
    [if exp="f.kaigui.firstMenu.length > 0" ]
        [if exp="f.kaigui.firstMenu.length != 1" ]
            [getrand min="0" max="&f.kaigui.firstMenu.length-1"]
            [eval exp="f.kaigui.lastMenu = f.kaigui.firstMenu[tf.rand]" ]
            [eval exp="f.kaigui.firstMenu.splice(tf.rand, 1)" ]
        [else]
            [eval exp="f.kaigui.lastMenu = f.kaigui.firstMenu[0]" ]
            [eval exp="f.kaigui.firstMenu = []" ]
        [endif]
    [else]
        [eval exp="tf.menu = ['crape','kebab','tacos','churos','takoyaki']" ]
        [getrand min="0" max="4"]
        [eval exp="f.kaigui.lastMenu = tf.menu[tf.rand]" ]
    [endif]

    

    ;抽選結果に応じたセリフを表示。
    [if exp="f.kaigui.lastMenu == 'crape'"]
        [eval exp="f.kaigui.menuName = f.kaigui.menu[0]" ]
        [mioHyoujouSabun hyoujou="happyake5.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        クレープ屋さんです！[p]
        [_tb_end_text]

    [elsif exp="f.kaigui.lastMenu == 'kebab'"]
        [eval exp="f.kaigui.menuName = f.kaigui.menu[1]" ]
        [mioHyoujouSabun hyoujou="happyake5.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ケバブ屋さんです！[p]
        [_tb_end_text]

    [elsif exp="f.kaigui.lastMenu == 'tacos'"]

        [eval exp="f.kaigui.menuName = f.kaigui.menu[2]" ]
        [mioHyoujouSabun hyoujou="happyake5.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        タコス屋さんです！[p]
        [_tb_end_text]

    [elsif exp="f.kaigui.lastMenu == 'churos'"]
        [eval exp="f.kaigui.menuName = f.kaigui.menu[3]" ]
        [mioHyoujouSabun hyoujou="happyake5.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        チュロス屋さんです！[p]
        [_tb_end_text]

    [elsif exp="f.kaigui.lastMenu == 'takoyaki'"]
        [eval exp="f.kaigui.menuName = f.kaigui.menu[4]" ]
        [mioHyoujouSabun hyoujou="happyake5.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        たこやき屋さんです！[p]
        [_tb_end_text]

    [endif]


    [tb_start_text mode=3 ]
    #
    おお、美味しそうだ。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    しかしこのタイミングで買い食いするなら、[r]
    それが夕食になってしまうな。[l]
    [_tb_end_text]
    [eval exp="tf.text = f.kaigui.menuName +'を食べていく'" ]
    [glink_left storage="nonHscene/kaigui01.ks" target="kaigui02" text="&tf.text" ]
    [glink_right storage="nonHscene/kaigui01.ks" target="kaigui03" text="今日は買い食いしない" ]
    [s]
    ;選択肢
    ;　○○○を食べていく
    ;　今日は買い食いしない

    ;※○○○は抽選結果のテキストを代入

    ;--------------------------
    ;【選択肢分岐】今日は買い食いしない
    *kaigui03
    [tb_start_text mode=3 ]
    #
    [emb exp="f.kaigui.menuName" ]も魅力的だが、[r]
    今はみおの手料理が食べたい気分だ！[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="raku2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そこまで言ってもらえるなら[r]
    がんばって作りますね[p]
    [_tb_end_text]


    [eval exp="f.kaigui.today.isCancel = true" ]
    ;イベント終了。いっしょの帰り道イベントの帰宅部分へ合流
    [jump target="kaiguiCancel" ]
    ;--------------------------
    ;【選択肢分岐】○○○を食べていく
    *kaigui02
    [tb_start_text mode=3 ]
    #
    みおも乗り気なようだし、[r]
    たまにはこういう夕食もいいだろう。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="kira6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ～い[r]
    ごちそうになります[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それでは……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/shop_Register.mp3"  ]


    ;※スチルがついたらここで表示演出など追加

    ;抽選結果に合うセリフを１つ表示


    ;食べてるのがクレープ
    [if exp="f.kaigui.lastMenu == 'crape'" ]

        [mioHyoujouSabun hyoujou="happyake2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        甘くてしあわせ～[p]
        [_tb_end_text]


    ;食べてるのがケバブ
    [elsif exp="f.kaigui.lastMenu == 'kebab'" ]

        [mioHyoujouSabun hyoujou="happyake2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こういうワイルドなお肉の食べ方って[r]
        意外としないんですよね[p]
        [_tb_end_text]


    ;食べてるのがタコス
    [elsif exp="f.kaigui.lastMenu == 'tacos'" ]

        [mioHyoujouSabun hyoujou="happyake2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ピリリって辛いのがふしぎと[r]
        もっと食べたくなるんですよね～[p]
        [_tb_end_text]


    ;食べてるのがチュロス
    [elsif exp="f.kaigui.lastMenu == 'churos'" ]

        [mioHyoujouSabun hyoujou="happyake2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        カリカリなのに中はもちもちで[r]
        バターの風味が、う～ん……っ[p]
        [_tb_end_text]


    ;食べてるのがたこやき
    [elsif exp="f.kaigui.lastMenu == 'takoyaki'" ]

        [mioHyoujouSabun hyoujou="happyake2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はふ、はふ……たこが、ぷりぷりで……[p]
        [_tb_end_text]

    [endif]

    [messageInvisible]
    [wait  time="200"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;みお立ち絵消去
    [chara_hide_all time="1" ]
    [wait  time="200"  ]
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
    [wait  time="200"  ]
    [maskStart]
        [wait  time="200"  ]
        [addTime minutes=20]
        [eval exp="f.kaigui.total++" ]
        [eval exp="f.kaigui.today.isHappen = true" ]
        [eval exp="f.isEatDinner = true" ]
        [setKouen2 time="1"]
        ;みお立ち絵、ウェイトナシ、表情で　happy1.png　表示

        [mioHyoujouSabun hyoujou="happy1.png" time="1"]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;通常の食事と同様の体力回復（先生＆みお）、さらにみおはきげん中アップ
    [calcHP HP="10"]
    [calcMioHP HP="15"]
    [plusMood moodLevel="middle"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――ごちそうさまでした[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene8_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こういう帰り道も楽しいですね[p]
    [_tb_end_text]


    ;↓食べたものがチュロス、クレープの時だけ追加表示
    [if exp="f.kaigui.lastMenu == 'churos' || f.kaigui.lastMenu == 'crape'" ]
        [tb_start_text mode=3 ]
        #
        スイーツだけでしっかりお腹が膨れるものだな。[p]
        [_tb_end_text]
    [endif]



    [tb_start_text mode=3 ]
    #
    よし、じゃあ後は家に帰ってくつろぐだけだ。[p]
    [_tb_end_text]


    ;イベント終了。いっしょの帰り道イベントの帰宅部分へ合流し、帰宅後は食事部分は無く、自由行動パートへ入る。
    [jump target="kaiguiEnd" ]
    *kaiguiEnd

    *kaiguiCancel
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[endmacro]
;以上
