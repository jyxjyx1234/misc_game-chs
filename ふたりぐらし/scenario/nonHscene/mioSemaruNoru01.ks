[macro name="semaruRide" ]

    ;---------------------------------------------
    [stopbgm  time="6000"  fadeout="true"  ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="soine" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [eval exp="f.semaruEV.today.isHappen = true" ]
    [eval exp="f.semaruEV.today.type == 'ride'" ]
    [setreplay name="semaruNoru" storage="" target=""]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]

    [if exp="f.semaruEV.from == 'soine'" ]

        ;【発生事由「添い寝から」】添い寝（夜）イベントで、みおがムラムラしているのに「抱き寄せる」以外の行動をとった
        ;スチル表示【noru01.png】
        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]

        [messageON]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ～……[r]
        そうじゃ、なくて――[p]
        [_tb_end_text]

        [semaruNoruStillSet layer="2" storage="01.png" name="still,noru1" time="1500"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしがどんな気持ちかわかってるのに[r]
        いじわるしてますよね？[p]
        [_tb_end_text]

    [else]

        ;【発生事由「通常就寝から」】上記以外のパターン（添い寝イベント未発生かつみおがムラムラしているとき）
        ;スチル表示【noru01.png】
        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]


        [messageON]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せ～ん、せっ♡[p]
        [_tb_end_text]

        [semaruNoruStillSet layer="2" storage="02.png" name="still,noru1" time="1500"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えへへ～[r]
        のしかかっちゃいました[p]
        [_tb_end_text]

    [endif]
    ;【共通部】
    [if exp="f.semaruEV.ride.soine+f.semaruEV.ride.mio == 0" ]

        ;【追加挿入】ここに来るのがはじめてのとき、一度だけ表示

        [tb_start_text mode=3 ]
        #
        おお、みおが雌猫のように[r]
        腹の上にのっかってくるとは。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        あのはかなげだった少女も[r]
        今では立派な女なのだな……[p]
        [_tb_end_text]

    [endif]

    [tb_start_text mode=3 ]
    #
    ふだんは小柄なみおを見下ろしているだけに[r]
    この体勢で見つめられるのは妙な感興がある。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおは片手でこちらの腹や胸元を[r]
    くすぐりながら話し続ける。[p]
    [_tb_end_text]

    [if exp="f.semaruEV.ride.soine+f.semaruEV.ride.mio == 0" ]

        ;【追加挿入】ここに来るのがはじめてのとき、一度だけ表示
        [semaruNoruStillSet layer="2" storage="03.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        いつもは頼れる先生に[r]
        引っ張ってもらってたから――[p]
        [_tb_end_text]

        [semaruNoruStillSet layer="2" storage="02.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        たまにはわたしから“お誘い”するのも[r]
        新鮮でいいかなぁ、って[p]
        [_tb_end_text]

    [endif]
    [semaruNoruStillSet layer="2" storage="04.png" name="still,noru1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の心臓もどきどきしてるの、[r]
    伝わりますよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    貞淑と淫靡のはざま、そのぎりぎりの妖艶さ――[r]
    これがみおなりのえっちのおねだりなのだ。[p]
    [_tb_end_text]
    [semaruNoruStillSet layer="2" storage="05.png" name="still,noru1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……ね？[p]
    [_tb_end_text]

    [if exp="f.virgin.image.id == 0" ]
        ;みおが処女の場合
        [semaruNoruStillSet layer="2" storage="01.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0010.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        わたしの処女、もらって欲しいんです[l]
        [_tb_end_text]
    [else]
        [semaruNoruStillSet layer="2" storage="03.png" name="still,noru1" time="300"]
        ;上記に該当しない場合
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0009.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        わたしがこんなにしてるんです[r]
        応えてくれませんか、先生……？[l]
        [_tb_end_text]
    [endif]

    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="150"  width=""  height=""  text="お尻もち上げバック１" exp=""  _clickable_img=""  target="debugBack1" cond="sf.isDebug" ]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="180"  width=""  height=""  text="お尻もち上げバック２" exp=""  _clickable_img=""  target="debugBack2" cond="sf.isDebug"]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="210"  width=""  height=""  text="攻めパイズリ１" exp=""  _clickable_img=""  target="debugPaizuri1" cond="sf.isDebug"]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="240"  width=""  height=""  text="攻めパイズリ２" exp=""  _clickable_img=""  target="debugPaizuri2" cond="sf.isDebug"]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="270"  width=""  height=""  text="逆レ騎乗位１" exp=""  _clickable_img=""  target="debugKijoi1" cond="sf.isDebug"]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="300"  width=""  height=""  text="逆レ騎乗位２" exp=""  _clickable_img=""  target="debugKijoi2" cond="sf.isDebug"]

    [glink  color="btn_05_black glink_double_left"  addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="みおを抱く" exp=""  _clickable_img=""  target="semaruRide1_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="抱かずに寝る"  _clickable_img=""  target="semaruRide2_1"  ]
    [s]


    *semaruRide1_1
        [free layer="2" name="debugText"]
        [tb_start_text mode=3 ]
        #
        うなずき、みおの手をとる――[p]
        [_tb_end_text]
        *semaruRide1_2
        [semaruNoruStillSet layer="2" storage="02.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ……♡　先生……♡[p]
        [_tb_end_text]

        [if exp="f.semaruEV.HEv.back == 0" ]
            [semaruBack01]
        [else]
            [semaruBack02]
        [endif]
        ;[eval exp="f.virgin = addExperience(f.virgin,'2047','性欲に耐えかね、逆レイプで処女を散らした')" ]
        [jump target="semaruRideEnd" ]
        ;下記の記述の通りのシーン移行
        ; 　せまるみお（乗）　→　シーン「バック（尻もちあげ）」発生。続きはそちらのシーンテキストにて補完

        ;　※これを選んで「体力不足で実行できない」というのは興ざめなので、
        ;　　せまるみおイベント自体に体力を見て判定を行うか、
        ;　　残体力に関係なく以降のえっちシーンは実行できるように注意。
        ;　　（最悪、みおのおさそいで元気が出た、と一言途中で回復のくだりを足せばいい）
    *semaruRide2_1
        [free layer="1" name="debugText"]
        [tb_start_text mode=3 ]
        #
        据え膳食わぬは……というやつだが。[r]
        だがしかし。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        今夜はしない！[p]
        [_tb_end_text]

        [semaruNoruStillSet layer="2" storage="06.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えぇー……そんなぁ……[p]
        [_tb_end_text]
        [semaruNoruStillSet layer="2" storage="03.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0013.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        わたし、勇気を出して[r]
        こんなことまでしたのに……[l]
        [_tb_end_text]

        [glink  color="btn_05_black glink_double_left"  addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="やっぱり抱く" exp=""  _clickable_img=""  target="semaruRide2_1_1"  ]
        [glink  color="btn_05_black glink_double_right" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="断固抱かずに寝る"  _clickable_img=""  target="semaruRide2_2"  ]
        [s]

    *semaruRide2_1_1
        [tb_start_text mode=3 ]
        #
        思いなおして、みおの手をとることにした――[p]
        [_tb_end_text]

        [jump target="semaruRide1_2" ]

    *semaruRide2_2
        [semaruNoruStillSet layer="2" storage="01.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        む～……[p]
        [_tb_end_text]

        ;　せまるみお（乗）の場合は、条件未詳ながらここでさらに分岐。
        ;　みおがおとなしく引き下がるパターンと逆レイプに発展するパターンの２つ。

        ;　※逆レ発展は条件未設定につき、まずは固定でおとなしく引き下がるパターンへの移行として設定を。
        [eval exp="tf.successPer = 50 + (f.luckyNum*15)" ]
        [getrand min="1" max="100"]
        [if exp="tf.rand <= tf.successPer && f.semaruEV.HEv.kijoi.total == 0" ]

            [semaruKijoi01]
            [jump target="semaruRideEnd"]
        [elsif exp="tf.rand <= tf.successPer && f.semaruEV.HEv.paizuri.total == 0" ]

            [semaruPaizuri01]
            [jump target="semaruRideEnd"]
        [else]
            [getrand min="1" max="2"]
            [if exp="tf.rand == 1" ]
                ;■今回発生するのが「逆レ騎乗位」のとき

                ;つなぎとしてココに後々なにかを書き足すかもしれないので、
                ;枠を用意しておいてください。現状は処理なしです。

                ;　当該シーン発生
                [semaruKijoi02]
                [jump target="semaruRideEnd"]
            [else]
                ;■今回発生するのが「逆レパイズリ」のとき


                ;つなぎとしてココに後々なにかを書き足すかもしれないので、
                ;枠を用意しておいてください。現状は処理なしです。

                ;　当該シーン発生
                [semaruPaizuri02]
                [jump target="semaruRideEnd"]
            [endif]
        [endif]

        ;------
        ;【おとなしく引き下がるパターン】
        [semaruNoruStillSet layer="2" storage="06.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わかりました……[p]
        [_tb_end_text]

        [semaruNoruStillSet layer="2" storage="03.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        またの機会に再チャレンジです……[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        悪いことをしたかな、とも思ったが、[r]
        めげないみおは微笑ましかった。[l]
        [_tb_end_text]

        [glink  color="btn_05_black glink_center" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="ということで、おやすみなさい"  _clickable_img=""  target="semaruRide2_3"  ]
        [s]
        *semaruRide2_3
        [semaruNoruStillSet layer="2" storage="05.png" name="still,noru1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene4_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい……[p]
        [_tb_end_text]
        [eval exp="f.semaruEV.today.isCancel = true" ]
        [jump target="semaruRideEnd" ]


    *debugBack1
    [free layer="2" name="debugText"]
    [semaruBack01]
    [jump target="semaruRideEnd" ]
    *debugBack2
    [free layer="2" name="debugText"]
    [semaruBack02]
    [jump target="semaruRideEnd" ]
    *debugPaizuri1
    [free layer="2" name="debugText"]
    [semaruPaizuri01]
    [jump target="semaruRideEnd" ]
    *debugPaizuri2
    [free layer="2" name="debugText"]
    [semaruPaizuri02]
    [jump target="semaruRideEnd" ]
    *debugKijoi1
    [free layer="2" name="debugText"]
    [semaruKijoi01]
    [jump target="semaruRideEnd" ]
    *debugKijoi2
    [free layer="2" name="debugText"]
    [semaruKijoi02]
    [jump target="semaruRideEnd" ]

    *semaruRideEnd
        [messageInvisible]
        [maskStart]
        [free layer="2" name="still" ]
        [free layer="1" name="still" ]
        [free layer="3" name="still" ]


[endmacro]