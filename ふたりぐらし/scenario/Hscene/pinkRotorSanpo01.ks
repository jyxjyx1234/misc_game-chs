
[macro name="pinkRotorSanpo01" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;【1】出発前会話

    ;　なにをするのかの会話と成否判定はすでに終わっているものとして
    ;　続く会話が下記

    ;-----------------------------
    ;【初回時】
    [if exp="f.pinkRotorEv.sanpo.total == 0" ]
        *pinkRotorSanpo01_1_1
        [tb_start_text mode=3 ]
        #
        みおも承諾してくれたし、と[r]
        ウキウキで支度にかかりはじめる。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        やはりローターと言えばお散歩プレイだよな。[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        本当に……それをつけて[r]
        お散歩するだけ、なんですよね？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        もちろんだ。[r]
        それは約束する。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        手持ちのローターは遠隔操作できないし、[r]
        本当に付けたまま外に出て歩くだけだ。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ……それだけのことでも、[r]
        大変な思いをするだろうが。[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="fuanaketojime4tear_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あの、ちゃんと守ってくださいね[p]
        [_tb_end_text]


        ;　→【2】へ


    ;-----------------------------
    ;【２回め以降】
    [else]
        *pinkRotorSanpo01_1_2
        [tb_start_text mode=3 ]
        #
        特別なお散歩のはじまりだ、と[r]
        ウキウキで支度にかかりはじめる。[p]
        [_tb_end_text]

        [checkParam]
        [eval exp="tf.isInran = tf.totalParam >= f.H_PARAM_LV.MIDDLE && f.masochism >= 10" ]

        [if exp="!tf.isInran" ]
            *pinkRotorSanpo01_1_3
            ;【プチ分岐】平常時
            [mioHyoujouSabun hyoujou="fuanaketojime4tear_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0003.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            うぅ～……[p]
            [_tb_end_text]

        [else]
            *pinkRotorSanpo01_1_4
            ;【プチ分岐】総性経験が中以上、かつ、露出調教10以上
            [mioHyoujouSabun hyoujou="normal2_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0004.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            これにどきどきしてるわたしって、[r]
            おかしいんでしょうか[p]
            [_tb_end_text]

        [endif]

        ;　→【2】へ
    [endif]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    *pinkRotorSanpo01_2
    ;【2】出発
    ;　上記【1】からそのままの流れで進行。
    ;　暗転して、暗転が明けると自宅外に立っている。


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [image layer="1" storage="../bgimage/bk100.jpg" time="1000" name="bkcg" ]
        [RESET_CAMERA time="1" ]
        [chara_hide_all time="1" ]
        [bgChange time="1"  method="crossfade"  storage="bk100.jpg"  ]
        [free layer="1" name="bkcg" ]
        [fadeoutbgm2 time="6000" ]
        [setGenkan time="0"]
        [wait  time="500"  ]
        [chara_hide_all  time="1"  wait="false"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]



    [tb_start_text mode=3 ]
    #
    よし、出発だ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [mioHyoujou hyoujou="metoji_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は……い……っ[p]
    [_tb_end_text]

    ;★
    *pinkRotor01_goodsStart
    [tb_start_text mode=4 ]
    #
    今回、ローターを仕込んで開発することにしたのは……[l]
    [_tb_end_text]

    ;選択肢
    ;　膣内だ
    ;　クリトリスだ
    ;　アナルだ
    [glink_3_left  storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_cunt" text="膣内だ" exp="f.pinkRotorEv.sanpo.part = 'cunt'"]
    [glink_3_center storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_clitoris" text="クリトリスだ" exp="f.pinkRotorEv.sanpo.part = 'clitoris'"]
    [glink_3_right storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_anal" text="アナルだ" exp="f.pinkRotorEv.sanpo.part = 'anus'"]
    [s]
    ;-----------------------------
    ;選択肢分岐：膣内だ
    *pinkRotorSanpo01_cunt

    ;プチ分岐：みおが処女
    [if exp="f.virgin.real.id == 0"]

        [tb_start_text mode=3 ]
        #
        処女ながらに膣の開発度をあげるべく、[r]
        膣内の浅いところローターをあてがっている。[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：みおが非処女
        [tb_start_text mode=3 ]
        #
        膣の開発度をあげるべく、[r]
        膣内にローターを深く挿入させた。[p]
        [_tb_end_text]

    [endif]

    ;追加の★部分終了。既存の展開に合流
    [jump target="*pinkRotor01_goodsEnd"]
    ;-----------------------------
    ;選択肢分岐：クリトリスだ
    *pinkRotorSanpo01_clitoris

    [tb_start_text mode=3 ]
    #
    クリトリスを開発すべく、下着の中のいい位置に[r]
    ローターをうまいこと固定させている。[p]
    [_tb_end_text]


    ;追加の★部分終了。既存の展開に合流
    [jump target="*pinkRotor01_goodsEnd"]

    ;-----------------------------
    ;選択肢分岐：アナルだ
    *pinkRotorSanpo01_anal

    ;プチ分岐：みおがアナル非処女
    [if exp="f.analVirgin.real.id == 0"]

        [tb_start_text mode=3 ]
        #
        アナル処女ながらに開発度をあげるべく、[r]
        肛門にローターを押し当てている。[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：みおがアナル非処女
        [tb_start_text mode=3 ]
        #
        アナルの開発度をあげるべく、[r]
        直腸の深くにローターを挿入させた。[p]
        [_tb_end_text]

    [endif]

    ;追加の★部分終了。既存の展開に合流
    *pinkRotor01_goodsEnd

    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んぅ……[r]
    一歩、歩くだけで……こすれて、んんっ……[p]
    [_tb_end_text]

    [mioLeave time="2100"]


    [messageON]
    [tb_start_text mode=3 ]
    #
    みおを先行させ、少し離れて追いかける。[p]
    [_tb_end_text]

    ;スチルとしてbk100表示
    [setBK time="200"]
    [chara_hide_all  time="1"  wait="false"  ]

    ;【1/3】体力およそ10減少、10m経過
    [calcMioHP HP="-10"]
    [addTime minutes="10"  ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ～～……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    立ち止まり、よろめきながらも[r]
    みおはよたよたと歩き続ける。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ、っくぁ……んゃぁ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ローターはつけっぱなしで[r]
    下着の中に仕込んである。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    バイブ音は聞こえたとしてもわずかで、[r]
    周囲もローターとは気づくまい。[p]
    [_tb_end_text]

    ;【2/3】体力およそ10減少、10m経過
    [calcMioHP HP="-10"]
    [addTime minutes="10"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    人とすれ違う際には秘密を悟られまいと[r]
    気丈に背を伸ばして歩くみおだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それでもどこか腰つきはいやらしく、[r]
    背後からその尻を眺めるのはひどく興奮する。[p]
    [_tb_end_text]

    ;【3/3】体力およそ10減少、10m経過
    [calcMioHP HP="-10"]
    [addTime minutes="10"  ]
    [setKouen3 time="0"]
    [deleteBK time="1000"]

    ;---------------------------
    ;ラストのみお台詞、下記の出現条件を満たすものから１つ抽選
    [checkParam]
    [eval exp="tf.sanpoReactions = []" ]
    [eval exp="tf.sanpoReactions.push(1,2)" cond="tf.totalParam >= f.H_PARAM_LV.MIDDLE && f.masochism >= 10" ]
    [eval exp="tf.sanpoReactions.push(3,4)" cond="!(tf.totalParam >= f.H_PARAM_LV.MIDDLE && f.masochism >= 10)" ]
    [getrand min="0" max="&tf.sanpoReactions.length-1" ]
    [eval exp="tf.select = tf.sanpoReactions[tf.rand]" ]
    [if exp="tf.select == 1" ]
        ;【出現条件】総性経験が中以上、かつ、露出調教10以上
        *pinkRotorSanpo01_2_1
        [mioHyoujou hyoujou="raku1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]

    [elsif exp="tf.select == 2" ]
        ;【出現条件】総性経験が中以上、かつ、露出調教10以上
        *pinkRotorSanpo01_2_2
        [mioHyoujou hyoujou="okoru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        軽く、イったかも……[p]
        [_tb_end_text]

    [elsif exp="tf.select == 3" ]
        ;【出現条件】右記に“該当しない”　総性経験が中以上、かつ、露出調教10以上
        *pinkRotorSanpo01_2_3
        [mioHyoujou hyoujou="fuanaketojime_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ、ひぁ……ふぅぅ……[p]
        [_tb_end_text]

    [elsif exp="tf.select == 4" ]
        ;【出現条件】右記に“該当しない”　総性経験が中以上、かつ、露出調教10以上
        *pinkRotorSanpo01_2_4
        [mioHyoujou hyoujou="sad3_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        どうして……こんなことに……[r]
        ぐすっ、ぐすっ[p]
        [_tb_end_text]

    [endif]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;【3】中間部の行動選択
    *pinkRotorSanpo01_3
    ;　上記【2】からそのままの流れで進行。とりあえず仮テキストを出して終わる
    ;【3】中間部の行動選択


    [tb_start_text mode=3 ]
    #
    さて、とりあえずの目的地まで[r]
    歩いたが……[p]
    [_tb_end_text]


    ;---------------------------------------------------
    ;---------------------------------------------------
    ;【分岐】ガイドブックを持っていない
    [if exp="!f.guideBook"]

        [tb_start_text mode=3 ]
        #
        帰るか。[p]
        [_tb_end_text]

        [getrand min="0" max="2"]
        ;-------------------------
        ;【帰宅時のみお反応】下記から１つ抽選or条件分岐で設定

        [if exp="tf.rand == 0" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0018.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            は、はいぃ[p]
            [_tb_end_text]
        [elsif exp="tf.rand == 1" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0019.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ほっ……[p]
            [_tb_end_text]
        [elsif exp="tf.rand == 2" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0020.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            え、もう……？[p]
            [_tb_end_text]
        [endif]

        ;-------------------------


        [tb_start_text mode=3 ]
        #
        裏道や近道を知っていればもっと大胆に[r]
        動けたかもしれないが……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        地元のガイドブックでも手に入れれば[r]
        そういうのがわかるだろうか。[p]
        [_tb_end_text]


        ;　【3】部終了。【4】部へジャンプ
        [eval exp="f.pinkRotorEv.sanpo.yorimiti = 'home'" ]
        [jump target="*pinkRotorSanpo01_4"]
    [else]
        ;---------------------------------------------------
        ;---------------------------------------------------
        ;【分岐】ガイドブックを持っている


        [tb_start_text mode=4 ]
        #
        ガイドブックもあることだし、[r]
        寄り道・遠回りしても大丈夫そうだが……[l]
        [_tb_end_text]

        ;選択肢
        ;　コンビニ
        ;　本屋さん
        ;　砂浜
        ;　家に帰る
        [glink x="200" y="400" size="20" width="150" color="btn_05_black" target="pinkRotorSanpo01_conveni" text="コンビニ" addlog="maybe" exp="f.pinkRotorEv.sanpo.yorimiti = 'conveni'" ]
        [glink x="420" y="400" size="20" width="150" color="btn_05_black" target="pinkRotorSanpo01_bookstore" text="本屋さん" addlog="maybe" exp="f.pinkRotorEv.sanpo.yorimiti = 'bookstore'"]
        [glink x="640" y="400" size="20" width="150" color="btn_05_black" target="pinkRotorSanpo01_beach" text="砂浜" addlog="maybe" exp="f.pinkRotorEv.sanpo.yorimiti = 'beach'"]
        [glink x="860" y="400" size="20" width="150" color="btn_05_black" target="pinkRotorSanpo01_home" text="家に帰る" addlog="maybe" exp="f.pinkRotorEv.sanpo.yorimiti = 'home'"]



        [s]
        ;家に帰る以外の選択肢は、押下後、暗転して暗転中に10m経過し、対応BGに背景を変更して暗転解除し、
        ;後述のそれぞれに展開を行うようにしてください。
    [endif]
    ;---------------------------------------
    ;【分岐】家に帰る
    *pinkRotorSanpo01_home

    [tb_start_text mode=3 ]
    #
    帰るか。[p]
    [_tb_end_text]

    ;上述の【帰宅時のみお反応】から１つ台詞表示
    [getrand min="0" max="2"]
    ;-------------------------
    ;【帰宅時のみお反応】下記から１つ抽選or条件分岐で設定

    [if exp="tf.rand == 0" ]

        [mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        は、はいぃ[p]
        [_tb_end_text]
    [elsif exp="tf.rand == 1" ]

        [mioHyoujouSabun hyoujou="fuanaketojime2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ほっ……[p]
        [_tb_end_text]
    [elsif exp="tf.rand == 2" ]


        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        え、もう……？[p]
        [_tb_end_text]
    [endif]

    ;　【3】部終了。【4】部へジャンプ
    [jump target="*pinkRotorSanpo01_4"]
    ;---------------------------------------
    ;【分岐】コンビニ

    *pinkRotorSanpo01_conveni
    [mioHyoujouSabun hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
    [setConvenimaeBG time="1000"]
    [wait time="&f.WAIT_TIME" ]
    [bgChange storage="conveni_tennai.jpg" time="1000" method="crossfade" ]
    [tb_start_text mode=3 ]
    #
    コンビニに到着だ。[p]
    [_tb_end_text]


    ;----------------------------------
    ;☆移動直後のみお反応：下記から等確率でひとつ抽選
    [getrand min="0" max="3"]

    [if exp="tf.rand == 0" ]

        [mioHyoujouSabun hyoujou="metoji_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ……[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        [mioHyoujouSabun hyoujou="metoji_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ～……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 2" ]

        [mioHyoujouSabun hyoujou="situmon_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ、ひとが居ますよぅ……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 3" ]

        [mioHyoujouSabun hyoujou="fuanaketojime4_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ～ん……[p]
        [_tb_end_text]

    [endif]

    ;----------------------------------

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=4 ]
    #
    さて、なにをさせようかな？[l]
    [_tb_end_text]

    ;選択肢
    ;　お茶菓子を買わせる
    ;　コンドームを買わせる

    [glink_left storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_conveni_1" text="お茶菓子を買わせる" exp="f.pinkRotorEv.sanpo.conveni.item = 'snack',tf.text = 'お茶菓子',f.pinkRotorEv.sanpo.today.select1 = true"]
    [glink_right storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_conveni_2" text="コンドームを買わせる" exp="f.pinkRotorEv.sanpo.conveni.item = 'condom',tf.text = 'コンドーム',f.pinkRotorEv.sanpo.today.select2 = true" ]
    [s]
    
    *pinkRotorSanpo01_conveni_1
    *pinkRotorSanpo01_conveni_2
    [if exp="f.pinkRotorEv.sanpo.conveni.item == 'snack'" ]
        [iscript]
            // 候補アイテムの英語名・日本語名の配列を初期化
            f.conveniItemList = ['coffee', 'tea', 'herbtea', 'greentea', 'potato', 'berry', 'pudding', 'manju'];
            f.conveniItemNameList = ['コーヒー', '紅茶', 'ハーブティー', '緑茶', 'ポテトフライ', 'ベリー盛り', 'ラッキープリン', '忍びまんじゅう'];

            // 英語のキー配列（両配列は同じ順番で対応）
            var keys = ['coffee', 'tea', 'herbtea', 'greentea', 'potato', 'berry', 'pudding', 'manju'];

            // 在庫が MAX 以上のアイテムを除外（各配列とも同じ条件でフィルター）
            f.conveniItemList = f.conveniItemList.filter(function(item, idx) {
                var key = keys[idx];
                return ( key === 'coffee'   ? f.coffee   < f.itemMax :
                        key === 'tea'      ? f.tea      < f.itemMax :
                        key === 'herbtea'  ? f.herbtea  < f.itemMax :
                        key === 'greentea' ? f.greentea < f.itemMax :
                        key === 'potato'   ? f.potato   < f.itemMax :
                        key === 'berry'    ? f.berry    < f.itemMax :
                        key === 'pudding'  ? f.pudding  < f.itemMax :
                        key === 'manju'    ? f.manju    < f.itemMax : true );
            });

            f.conveniItemNameList = f.conveniItemNameList.filter(function(name, idx) {
                var key = keys[idx];
                return ( key === 'coffee'   ? f.coffee   < f.itemMax :
                        key === 'tea'      ? f.tea      < f.itemMax :
                        key === 'herbtea'  ? f.herbtea  < f.itemMax :
                        key === 'greentea' ? f.greentea < f.itemMax :
                        key === 'potato'   ? f.potato   < f.itemMax :
                        key === 'berry'    ? f.berry    < f.itemMax :
                        key === 'pudding'  ? f.pudding  < f.itemMax :
                        key === 'manju'    ? f.manju    < f.itemMax : true );
            });

            // フィルター後の配列が空の場合、全候補を再設定
            if (f.conveniItemList.length === 0) {
                f.conveniItemList = ['coffee', 'tea', 'herbtea', 'greentea', 'potato', 'berry', 'pudding', 'manju'];
            }
            if (f.conveniItemNameList.length === 0) {
                f.conveniItemNameList = ['コーヒー', '紅茶', 'ハーブティー', '緑茶', 'ポテトフライ', 'ベリー盛り', 'ラッキープリン', '忍びまんじゅう'];
            }
        [endscript]

        [getrand min="0" max="&f.conveniItemList.length-1"]
        [eval exp="f.pinkRotorEv.sanpo.conveni.itemName = f.conveniItemNameList[tf.rand]"]
        [eval exp="f.pinkRotorEv.sanpo.conveni.lastSnack = f.conveniItemList[tf.rand]"]

    [else]
        [eval exp="f.pinkRotorEv.sanpo.conveni.itemName = 'コンドーム'"]
        [eval exp="f.mioCondom = 1" ]
    [endif]
    ;---------------------------------------
    ;---------------------------------------
    ;■コンビニ選択肢「お茶菓子を買わせる」「コンドームを買わせる」
    ;　どちらの場合も大枠の流れは共通。


    ;お茶菓子を買わせるの場合は、ここで軽食のお茶＆お菓子の中から所持数MAXでないものを１つ抽選。
    ;すべての品目をMAX所持している場合は、全品目から１つ抽選。

    [tb_start_text mode=3 ]
    #
    お金を渡し、みおに[emb exp="f.pinkRotorEv.sanpo.conveni.itemName" ]を買わせることにした。[p]
    [_tb_end_text]

    ;↑の＠＠＠には、購入するお茶菓子の名前（コーヒーとか）orコンドームのテキストを代入


    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかり、ました……[p]
    [_tb_end_text]

    [mioLeave]

    [messageON]

    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あの……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene8_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これ……ください……[p]
    [_tb_end_text]


    [addTime minutes=5]


    ;--------------------------------------------
    [call storage="macro_call.ks"  target="rotorSanpoRandReact" ]
    ;--------------------------------------------


    [playse  volume="100"  time="1000"  buf="1"  storage="se/shop_Register.mp3"  ]

    ;対応の品目の所持数+1。すでに所持数増減いっぱいの場合は加算なし。

    [tb_start_text mode=3 ]
    #
    [emb exp="f.pinkRotorEv.sanpo.conveni.itemName" ]を買ってもらった！[p]
    [_tb_end_text]
    [if exp="f.pinkRotorEv.sanpo.conveni.item == 'snack'"]
        [eval exp="tf.item = f.pinkRotorEv.sanpo.conveni.lastSnack"]
    [else]
        [eval exp="tf.item = f.pinkRotorEv.sanpo.conveni.item"]
    [endif]

    [plusItem item="&tf.item"  num="1"  ]

    ;↑の＠＠＠には、購入するお茶菓子の名前（コーヒーとか）orコンドームのテキストを代入

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]


    [tb_start_text mode=3 ]
    #
    疲れ気味の店員さんに気づいた様子はないが、[r]
    恥じらうみおの姿をたっぷりと眺めることができた。[p]
    [_tb_end_text]




    ;　【3】部終了。【4】部へジャンプ

    [jump target="*pinkRotorSanpo01_3_5"]
    ;---------------------------------------
    ;【分岐】本屋さん
    *pinkRotorSanpo01_bookstore
    [mioHyoujouSabun hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
    [bgChange storage="honyasan.jpg"]
    [tb_start_text mode=3 ]
    #
    立ち読み歓迎の本屋さんに到着だ。[p]
    [_tb_end_text]


    ;----------------------------------
    ;☆移動直後のみお反応：下記から等確率でひとつ抽選
    [getrand min="0" max="3"]

    [if exp="tf.rand == 0" ]

        [mioHyoujouSabun hyoujou="metoji_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ……[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        [mioHyoujouSabun hyoujou="komaru2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ～……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 2" ]

        [mioHyoujouSabun hyoujou="situmon_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ、ひとが居ますよぅ……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 3" ]

        [mioHyoujouSabun hyoujou="fuanaketojime4_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ～ん……[p]
        [_tb_end_text]

    [endif]

    ;----------------------------------

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=4 ]
    #
    さて、なにをさせようかな？[l]
    [_tb_end_text]

    ;選択肢
    ;　自分の好きな本を立ち読みする
    ;　みおにエロ本の立ち読みをさせる

    [glink_left storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_bookstore_1" text="自分の好きな本を立ち読みする" exp="f.pinkRotorEv.sanpo.bookstore.item = 'favoriteBook',tf.text = '好きな本'"]
    [glink_right storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_bookstore_2" text="みおにエロ本の立ち読みをさせる" exp="f.pinkRotorEv.sanpo.bookstore.item = 'adultBook',tf.text = 'エロ本'"]
    [s]
    *pinkRotorSanpo01_bookstore_1
    ;■本屋さん選択肢「自分の好きな本を立ち読みする」後の仮テキスト

    [tb_start_text mode=3 ]
    #
    ちょっと読みたい本があるから[r]
    そばで待っててね、とみおに告げた。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えぇ……？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/mekuru_kami.mp3"  ]

    [tb_start_text mode=3 ]
    #
    もちろん、立ち読みは“フリ”に過ぎない。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]


    [tb_start_text mode=3 ]
    #
    ローターを仕込まれたまま、じっとそこで[r]
    待機するみおを眺めて楽しむのが真の狙いだ。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="metoji_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanaketojime4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="fuanaketojime2tear_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ……[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はぁう……ふぅ……[p]
    [_tb_end_text]



    [addTime minutes=5]

    ;先述＜＜下記から１つランダムで抽選して表示＞＞ここでも実行
    [call storage="macro_call.ks" target="rotorSanpoRandReact" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/mekuru_kami.mp3"  ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/mekuru_kami.mp3"  ]

    [tb_start_text mode=3 ]
    #
    そろそろか……と、本を棚に戻した。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="rakuake3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お、終わったんですね[r]
    いきましょう[p]
    [_tb_end_text]

    [eval exp="f.pinkRotorEv.sanpo.bookstore.select1++" ]
    [jump target="*pinkRotorSanpo01_bookstore_end" ]

    *pinkRotorSanpo01_bookstore_2
    ;■本屋さん選択肢「みおにエロ本の立ち読みをさせる」後の仮テキスト

    [tb_start_text mode=3 ]
    #
    エロ本の棚まで移動し、[r]
    みおに好きな本を読んでね、と告げた。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="okoru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    好きな本、って……[p]
    [_tb_end_text]


    ;----------

    ;プチ分岐：ここに来るのがはじめて
    [if exp="f.pinkRotorEv.sanpo.bookstore.select2 == 0" ]

        [mioHyoujouSabun hyoujou="okoruake_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぜんぶえっちな本じゃないですか……[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：ここに来るのが２回目以降
        [mioHyoujouSabun hyoujou="okoruake_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        またえっちな本の棚……[p]
        [_tb_end_text]
    
    [endif]

    ;----------

    [tb_start_text mode=3 ]
    #
    だから読んでもらいたいんじゃないか。[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ～……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanaketojime2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかり、ました……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/mekuru_kami.mp3"  ]


    [tb_start_text mode=3 ]
    #
    みおが適当に選んだのだろうエロ本は、[r]
    古いが状態のいいモノだった。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    今よりおおらかな時代のエロ本は[r]
    モザイクやぼかしも抑えめで――要するに過激だ。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="EvKusai2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、わわぅ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/mekuru_kami.mp3"  ]


    [tb_start_text mode=3 ]
    #
    根が真面目なみおは読めと言われれば[r]
    すなおに紙面を隅々まで眺め渡す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    きわどい性行為の写真も、[r]
    あられもない下品な惹句も、すべてだ。[p]
    [_tb_end_text]


    ;先述＜＜下記から１つランダムで抽選して表示＞＞ここでも実行
    [call storage="macro_call.ks" target="rotorSanpoRandReact" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [addTime minutes=5]


    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――終わり、ました[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    よし。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    えらいぞ、と頭をなでて店を出ることにした。[p]
    [_tb_end_text]


    ;「☆本屋ラストの共通部」へ
    [jump target="pinkRotorSanpo01_bookstore_end" ]

    ;☆本屋ラストの共通部
    *pinkRotorSanpo01_bookstore_end
    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    みおが立っていた場所には、[r]
    白く濁った水滴がいくつも散らばっていた……[p]
    [_tb_end_text]

    ;　【3】部終了。【4】部へジャンプ
    [jump target="pinkRotorSanpo01_3_5"]

    ;---------------------------------------
    ;【分岐】砂浜
    *pinkRotorSanpo01_beach
    [mioHyoujouSabun hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
    [fadeoutbgm2 time="6000"]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange storage="beach_d.jpg"]    
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange storage="beach_y.jpg"]
    [else]
        [bgChange storage="beach_n.jpg"]
    [endif]

    [playse storage="BGS/sunahama.mp3" buf="0" loop="true" ]
    

    [tb_start_text mode=3 ]
    #
    砂浜に到着だ。[p]
    [_tb_end_text]


    ;----------------------------------
    ;☆移動直後のみお反応：下記から等確率でひとつ抽選
    [getrand min="0" max="3"]

    [if exp="tf.rand == 0" ]

        [mioHyoujouSabun hyoujou="metoji_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ……[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        [mioHyoujouSabun hyoujou="komaru2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ～……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 2" ]

        [mioHyoujouSabun hyoujou="situmon_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ、ひとが居ますよぅ……っ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 3" ]

        [mioHyoujouSabun hyoujou="fuanaketojime4_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひ～ん……[p]
        [_tb_end_text]

    [endif]

    ;----------------------------------

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=4 ]
    #
    さて、なにをさせようかな？[l]
    [_tb_end_text]


    ;選択肢
    ;　ぶらつく
    ;　砂のお城をつくる

    [glink_left storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_beach_1" text="ぶらつく" exp="f.pinkRotorEv.sanpo.beach.item = 'walk',tf.text = 'ぶらつく'"]
    [glink_right storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_beach_2" text="砂のお城をつくる" exp="f.pinkRotorEv.sanpo.beach.item = 'castle',tf.text = '砂のお城'"]

    [s]
    *pinkRotorSanpo01_beach_1

    [tb_start_text mode=3 ]
    #
    砂浜をぶらついてから帰ろうか、とみおに告げた。[p]
    [_tb_end_text]


    ;---------------------
    ;【プチ分岐】ここに来るのがはじめて
    [if exp="f.pinkRotorEv.sanpo.beach.select1 == 0" ]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ……は、はい……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ふしぎそうな顔をするみおだった。[p]
        [_tb_end_text]


        ;---------------------
        ;【プチ分岐】ここに来るのが２回目以降
    [else]

        [mioHyoujouSabun hyoujou="doya_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        “前回”のことを思い出し、頬を染めるみおだった。[r]
        砂浜を歩くだけでも深イキしてたものなぁ。[p]
        [_tb_end_text]

    [endif]

    ;---------------------

    [tb_start_text mode=3 ]
    #
    連れ立って砂地を歩きはじめる。[r]
    踏みしめるたび、濡れた砂に靴が浅く沈む。[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanaketojime2_red.png"]
    [tb_start_text mode=3 ]
    #みお
    はぁ……ふぅ……[r]
    へんに、りきんじゃ……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="EvKusai1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ～ん……[p]
    [_tb_end_text]



    [addTime minutes=5]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    アスファルトと違い、濡れた砂地は[r]
    歩く時に少し踏ん張らなくてはならない。[p]
    [_tb_end_text]



    ;先述＜＜下記から１つランダムで抽選して表示＞＞ここでも実行
    [call storage="macro_call.ks" target="rotorSanpoRandReact" ]

    [tb_start_text mode=3 ]
    #
    それが、ローターを仕込まれたみおには[r]
    たまらない刺激となっていたようだった。[p]
    [_tb_end_text]

    [eval exp="f.pinkRotorEv.sanpo.beach.select1++" ]
    [jump target="*pinkRotorSanpo01_beach_end" ]   
    *pinkRotorSanpo01_beach_2

    ;■砂浜選択肢「砂のお城をつくる」後の仮テキスト


    [tb_start_text mode=3 ]
    #
    砂のお城を作って遊ぶぞ！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [tb_start_text mode=3 ]
    #みお
    ふつうのお出かけだったら[r]
    すなおに楽しめたのに～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そのへんの貝殻などをショベル代わりに[r]
    無心に砂を持っては削るをくりかえした。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    [addTime minutes=5]


    [mioHyoujouSabun hyoujou="enryo_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おぉ～[r]
    りきさくになりましたね[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    こどもらしい遊びに興じる一方で、[r]
    みおの顔は蠱惑的なまでに赤らんでいる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    それに、かがみ込んでいた砂地は、[r]
    海水とは違うもので濡れて変色していた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その様子に満足し、手近な水場で手を洗って[r]
    帰ることにした。[p]
    [_tb_end_text]

    ;上述の「☆【3】終了時の共通部」へ
    [eval exp="f.pinkRotorEv.sanpo.beach.select2++" ]
    [jump target="*pinkRotorSanpo01_beach_end" ]

    *pinkRotorSanpo01_beach_end
    [fadeoutse buf="0" time="2000"]
    
    ;　【3】部終了。【4】部へジャンプ
    [jump target="*pinkRotorSanpo01_3_5"]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;【3.5】ローター時のお姫様だっこ判定
    ;【3】直後なので、【4】への遷移のために画面が暗転しているならば
    ;立ち絵消去、BGをbk100とした状態にして下記
    *pinkRotorSanpo01_3_5
    ;-----☆【3】終了時の共通部-----

    [tb_start_text mode=3 ]
    #
    それじゃあ帰るか……[p]
    [_tb_end_text]

    [messageInvisible]
    [mask time="1000"  effect="fadeIn"  color="0x000000"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    寄り道までさせ、たっぷりローター散歩プレイを楽しんだ。[r]
    当然、みおはヘロヘロになっている……[p]
    [_tb_end_text]


    ;■お姫様だっこ成立判定
    ;先生体力の現在体力が150を超えている場合、お姫様だっこ成立
    ;それ以外の場合、お姫様だっこ不成立

        ;　※通常散歩の判定と同じなので、後々数値設定の変更があることを考えると
        ;　　マクロ化して共通化しておくといいかもしれません。

    [if exp="f.HP < f.HP_OHIMESAMADAKKO" ]
        ;-----------------------------------
        ;-----------------------------------
        ;■姫様だっこ不成立

        [tb_start_text mode=3 ]
        #
        ここでお姫様だっこで[r]
        疲れたみおを運べたらカッコいいのだが――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        体力が足りていないから[r]
        ふつうに歩いて帰るしかない。[p]
        [_tb_end_text]

        ;---------------------------------------
        ;下記、プチ分岐＿条件に合うどちらか片方を表示
        [if exp="f.HPMax >= f.HP_OHIMESAMADAKKO" ]
            ;先生の最大体力自体は150以上あるが、現在体力が150未満だった
            [tb_start_text mode=3 ]
            #
            疲れてさえいなければ……[r]
            残念だ。[p]
            [_tb_end_text]

        [else]
            ;最大体力も現在体力も150未満
            [tb_start_text mode=3 ]
            #
            もっと鍛えて最大体力をつけないと[r]
            ダメそうだな……[p]
            [_tb_end_text]

        [endif]

        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

        ;元フローに合流（暗転、暗転解除で帰宅して「ただいま」選択肢。スチル消去わすれずに）


        [jump target="*pinkRotorSanpo01_4"]
        ;-----------------------------------
        ;-----------------------------------
    ;■姫様だっこ成立
    [else]

        [tb_start_text mode=3 ]
        #
        みおも疲れているようだし、[r]
        今の体力ならばアレができそうだ――[p]
        [_tb_end_text]

        [tb_hide_message_window  ]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
        ;立ち絵消去、とりあえず通常散歩と同じように以降、お姫様だっこスチルを表示
        [setOhimesamaDakkoCG cg="01" time="300" ]
        [chara_hide_all  time="1"  wait="false"  ]

        [messageON]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひゃっ、先生！？[p]
        [_tb_end_text]

        ;※下記の「お姫様だっこされるのがはじめてかどうか」は、通常散歩での方とフラグを共有します
        ;　ローター散歩中にお姫様だっこを経験した場合、通常散歩でお姫様だっこが起こっても経験済（台詞「またお姫様だっこ」）の方に
        ;　分岐する、ということですね。合わせて通常散歩の方の同イベントにも手入れをお願いします。

        ;-------------
        ;【分岐】お姫様だっこされるのがはじめてのとき
        [if exp="f.ohimesamaDakko == 0" ]

            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            こ、これっ……お姫様だっこ……！？[p]
            [_tb_end_text]


            [tb_start_text mode=3 ]
            #
            みおのやわらかさや香りが間近に感じられ、[r]
            変な意味でなくとも心地よい。[p]
            [_tb_end_text]

            [tb_start_text mode=3 ]
            #
            体力をつけてよかったなぁ……[p]
            [_tb_end_text]

            ;次の共通部へ

        ;-------------
        ;【分岐】上記以外
        [else]

            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0036.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            またお姫様だっこ……[p]
            [_tb_end_text]

            [tb_start_text mode=3 ]
            #
            また抱き上げてみたいなぁと[r]
            口実をうかがっていたので、丁度よいのだ。[p]
            [_tb_end_text]

        [endif]
        ;次の共通部へ
        [eval exp="f.ohimesamaDakko++" ]
        [eval exp="f.pinkRotorEv.today.ohimesamaDakko = true" ]
        ;-------------
        ;共通部
        ;スチルの表情【03】に切替
        [setOhimesamaDakkoCG cg="03" time="300" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うれしい、ですけど……[p]
        [_tb_end_text]

        ;スチルの表情【02】に切替
        [setOhimesamaDakkoCG cg="02" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今先生に触られると……っ[p]
        [_tb_end_text]

        ;スチルの表情【05】に切替　※現時点では表情は04までしかありませんが、別カードで追加書き出しして実装してもらうスチルです
        [setOhimesamaDakkoCG cg="05" time="300" zettyou="true" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene10_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ンン――～～……っ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        腕の中で静かに悶えるみおを抱え、[r]
        帰路につくのだった。[p]
        [_tb_end_text]


        ;先生体力-10
        ;みおきげん+3
        [calcHP HP="-10"]
        [calcMood mood="3" ]

        ;★終了時の共通部

        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

        ;元フローに合流（暗転、暗転解除で帰宅して「ただいま」選択肢。スチル消去わすれずに）
        [jump target="*pinkRotorSanpo01_4"]
    [endif]




    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;【4】リザルト／帰宅

    ;　【3】が終わると通常の散歩の帰宅と近い演出で帰宅。
    ;　その合間で【0】で録ったBGVを流している。30m
    *pinkRotorSanpo01_4


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [free layer="2" name="still" ]

    [deleteBK time="1"]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]
    [calcRotorSanpoParam]
    [glink2 color="btn_05_black_narrow" size="16" fix="true" target="pinkRotor01_debug" name="debugBtn" x="10" y="150" text="振り向き、絶頂数操作" cond="sf.isDebug"]


    [tb_start_text mode=3 ]
    #
    今回のローターお散歩の結果だが……[p]
    [_tb_end_text]

    *pinkRotorSanpo01_4_debug

    [clearfix name="debugBtn" ]
    [eval exp="f.rotorText = 'まんこローター'" cond="f.pinkRotorEv.sanpo.part == 'cunt'" ]
    [eval exp="f.rotorText = 'クリローター'" cond="f.pinkRotorEv.sanpo.part == 'clitoris'" ]
    [eval exp="f.rotorText = 'アナルローター'" cond="f.pinkRotorEv.sanpo.part == 'anus'" ]

    [if exp="f.rotorSanpo == 0 && f.mioClimax == 0" ]
        [tb_start_text mode=3 ]
        #
        特筆するようなこともなく、みおは散歩を完遂したのだった……[p]
        [_tb_end_text]
    [elsif exp="f.rotorSanpo != 0 && f.mioClimax == 0" ]
        [tb_start_text mode=3 ]
        #
        [emb exp="f.rotorSanpo" ]人がみおの方を振り向いていた！[p]
        [_tb_end_text]
    [elsif exp="f.mioClimax != 0 && f.rotorSanpo == 0" ]
        [tb_start_text mode=3 ]
        #
        みおは[emb exp="f.mioClimax"]回[emb exp="f.rotorText" ]で絶頂した！[p]
        [_tb_end_text]
    [else]

        [tb_start_text mode=3 ]
        #
        [emb exp="f.rotorSanpo" ]人が振り向き、みおは[emb exp="f.mioClimax" ]回[emb exp="f.rotorText" ]で絶頂した！[p]
        [_tb_end_text]

    [endif]
    ;↑○の中には変数が入る。計算方法は別カードで対応するので、今は本当に○を表示。


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [setGenkan2]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    [messageON]

    ;一択選択肢：ただいま
    [glink_center storage="Hscene/pinkRotorSanpo01.ks" target="*pinkRotorSanpo01_4_1" text="ただいま" ]
    [s]
    *pinkRotorSanpo01_4_1
    ;リザルトに合わせたみお台詞とステ変動（基本的には欲求あがる）を行うが、
    ;【3】の行動結果なども踏まえて判定や分岐を行うため、ここも下記の下記テキストを出すだけにしておく
    ;（後の同系カードで再度調整）
    [eval exp="f.pinkRotorEv.sanpo.total++" ]
    [checkParam]
    [call storage="macro_call.ks" target="rotorSanpoEndReact"]
    [jump target="pinkRotor01_end" ]
    ;暗転、暗転が明けると自由行動パートに戻る
    *pinkRotor01_debug
    [clearfix name="debugBtn" ]
    [ptext text="振り向き操作" layer="1" x="600" y="370" size="22" name="debugText" ]
    [edit name="tf.rotorSanpo" left="600" top="400" width="40" ]
    [glink cm="false" target="pinkRotor01_debug_2" text="決定" x="660" y="400" size="20" color="btn_05_black" ]
    [s]

    *pinkRotor01_debug_2
    [commit]
    [eval exp="f.rotorSanpo = parseInt(tf.rotorSanpo)" ]
    [cm]
    [free layer="1" name="debugText" ]
    [ptext text="絶頂数操作" layer="1" x="600" y="370" size="22" name="debugText" ]
    [edit name="tf.mioClimax" left="600" top="400" width="40" ]
    [glink cm="false" target="pinkRotor01_debug_3" text="決定" x="660" y="400" size="20" color="btn_05_black" ]
    [s]

    *pinkRotor01_debug_3
    [commit]
    [eval exp="f.mioClimax = parseInt(tf.mioClimax)" ]
    [cm]
    [free layer="1" name="debugText" ]
    [clearstack stack="call" ]
    [jump target="pinkRotorSanpo01_4_debug"  ]

    *pinkRotor01_end

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]




    
    ;■振り向き人数
    ;　・変数の上下限0～30
    ;　・変数0をスタート値と、下記の条件ごとに下限を行い、最終的に値を決定。
    ;　　・無条件で0～2の範囲の値を加算
    ;　　・寄り道を決定した時点で行き先やその後の選択を問わず1～3の範囲の値を加算
    ;　　・寄り道中の行動選択が「コンビニ、ゴム購入」「コンビニ、立ち読みする」だと、さらに1～3の範囲の値を加算（上項目と両立する）
    ;　　・みお総性経験評価が中以上だと0～2の範囲の値を加算
    ;　　・みお総性経験評価が高以上だと、当該変数に×nして、それを1/2。n=２～４ランダム（上項目と両立する）



    ;■みお絶頂数
    ;　・変数の上下限0～30
    ;　・変数0をスタート値と、下記の条件ごとに下限を行い、最終的に値を決定。

    ;　・ローター散歩プレイ時に装着対象を「膣」「陰核」「肛門」か選べるようにするので、
    ;　　以降の絶頂数や開発％の参照や代入は適宜選択した部位となるように。
    ;　　※当該部位の開発％が、おさわりパート中の絶頂可能％に達していなくても、ローター散歩中の絶頂OK

    ;　・上記の部位の開発％を元に、「開発％関数１」と「開発％関数２」を設定
    ;　　・開発％関数１：開発％が高いほど最低保証の絶頂数を大きめにする
    ;　　　　　　　　　　計算方法→　（開発％÷10）×2　　※下限0

    ;　　・開発％関数２：開発％が高いほど倍率をあげる
    ;　　　　　　　　　　計算方法→　開発％÷10　※下限1

    ;　　　※現状１，２と分ける必要も無さそうな式ですが、微調整で細かくいじる可能性があるので、別々に計算して保持するようにしておいてください。


    ;　・ローター散歩実行で、＜（開発％関数１＋乱数0～3）×開発％関数２＞を加算
    ;　・寄り道した場合、さらにまた＜（開発％関数１＋乱数0～3）×開発％関数２＞を加算
    ;　・寄り道で砂浜を選んだ場合はその後の選択肢に関係なく、+1（上項目と両立する）
    ;　・寄り道で砂浜で、さらにぶらつくを選んだ場合は、+1（上項目と両立する）
    ;　・お姫様だっこが発生した場合は+1

    ;※リザルトのみお絶頂数は上記テキスト表示後にそのままみおの性経験の対応部位の絶頂数に加算

    ;　同時に固定値として下記も加算
    ;　　・露出調教　+1
    ;　　・対応部位の開発度+5
    ;　　・みお欲求+10
[macro name="calcRotorSanpoParam" ]
    
    [iscript]

        // ■振り向き人数の計算
        f.rotorSanpo = 0;
        // 無条件で0～2の範囲の値を加算
        f.rotorSanpo += Math.floor(Math.random() * 3);
        // 寄り道の場合は1～3を加算
        if(f.pinkRotorEv.sanpo.yorimiti !== 'home'){
            f.rotorSanpo += Math.floor(Math.random() * 3) + 1;
        }
        // 寄り道中の行動選択が「コンビニ、ゴム購入」または「コンビニ、立ち読みする」の場合
        if( (f.pinkRotorEv.sanpo.yorimiti === 'conveni' && f.pinkRotorEv.sanpo.bookstore.item === 'condom') ||
            (f.pinkRotorEv.sanpo.yorimiti === 'bookstore' && f.pinkRotorEv.sanpo.bookstore.item === 'adultBook') ){
            f.rotorSanpo += Math.floor(Math.random() * 3) + 1;
        }
        // みお総性経験評価が中以上の場合は0～2を加算
        if(f.totalParamLv === 'middle' || f.totalParamLv === 'high'){
            f.rotorSanpo += Math.floor(Math.random() * 3);
        }
        // みお総性経験評価が高以上の場合は、×nして1/2（n=2～4ランダム）
        if(f.totalParamLv === 'high'){
            var n = Math.floor(Math.random() * 3) + 2; // 2～4の値
            f.rotorSanpo = Math.floor(f.rotorSanpo * n / 2);
        }
        if(f.rotorSanpo > 30){
            f.rotorSanpo = 30;
        }
        
        // ■みお絶頂数の計算
        f.mioClimax = 0;
        // f.pinkRotorEv.sanpoやpartがnullでないかチェック
        var part = (f.pinkRotorEv && f.pinkRotorEv.sanpo && f.pinkRotorEv.sanpo.part) ? f.pinkRotorEv.sanpo.part : null;
        var baseValue = part && f[part] != null ? f[part] : 0;
        f.developmentPercent = parseInt(baseValue);
        if(isNaN(f.developmentPercent)){
            f.developmentPercent = 0;
        }
        var devFunc1 = Math.floor(f.developmentPercent / 10) * 2;
        var devFunc2 = Math.max(Math.floor(f.developmentPercent / 10), 1);
        var randAdd = Math.floor(Math.random() * 4); // 乱数 0～3
        f.mioClimax += (devFunc1 + randAdd) * devFunc2;
        
        // 寄り道した場合、さらに加算
        if(f.pinkRotorEv.sanpo.yorimiti !== 'home'){
            randAdd = Math.floor(Math.random() * 4);
            f.mioClimax += (devFunc1 + randAdd) * devFunc2;
        }
        // 寄り道で砂浜を選んだ場合は+1、さらにぶらつくなら+1
        if(f.pinkRotorEv.sanpo.yorimiti == 'beach'){
            f.mioClimax += 1;
            if(f.pinkRotorEv.sanpo.beach.item == 'walk'){
                f.mioClimax += 1;
            }
        }
        // お姫様だっこが発生した場合は+1
        if(f.pinkRotorEv.today.ohimesamaDakko){
            f.mioClimax += 1;
        }
        
        // 固定値として、露出調教 +1、対応部位の開発度 +5、みお欲求 +10 を加算
        f.masochism += 1;
        f[f.pinkRotorEv.sanpo.part] += 5;
        f.muramura += 10;
        if(f.mioClimax > 30){
            f.mioClimax = 30;
        }

    [endscript]
[endmacro]

