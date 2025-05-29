


;------------------------------------------------------------------------
;------------------------------------------------------------------------

;平日夜、自由行動パートからお散歩を選び、神社の境内あたりに来ており、
;このイベントの発生条件を満たしたものとする。
;すでに【BG】jinjya_n.jpg　となっている想定。
[macro name="snakeEv" ]

    [if exp="f.flag_replay==true"]
        [setButtonInTalk]
        [frameReset]
        [bgChange storage="jinjya_n.jpg"]
        [mask_off time="500" effect="fadeOut" ]

        [messageON]
    [endif]

    [stopbgm  time="2000"  fadeout="true"  ]

    [mioHyoujouSabun hyoujou="fuan.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なんだかこう……[r]
    雰囲気がすごいですね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なにか出そうな感じで――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……！？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、い、今なにか、物音が……[r]
    あっちの草むらの方から……[p]
    [_tb_end_text]

    [if exp="f.snakeStopFlag == 1" ]

        [tb_start_text mode=3 ]
        #
        まただ。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        以前も平日の夜にここを訪れ、[r]
        おなじ物音を聞いた。[p]
        [_tb_end_text]


        [tb_start_text mode=4 ]
        #
        やはりここにウワサの脱走ペットが潜んでいる。[r]
        なんの動物だったかだけ思い出せないが……[l]
        [_tb_end_text]

    [else]

        [tb_start_text mode=3 ]
        #
        幽霊……が物音を立てるわけもないし、[r]
        なにかの動物だろうけど。[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="normal.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        動物……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="normalake2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そういえばニュースで、この近くのおうちから[r]
        なにかのペットが逃げたとか言ってませんでしたっけ？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そうだった気がする。[r]
        テレビで見たけど、うろ覚えだ。[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        ニュースになるような動物というと[r]
        限られてくるが……[l]
        [_tb_end_text]

    [endif]

    *s1
    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="気のせいだ、帰ろう"  _clickable_img=""  target="*s1_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="確かめに行こうか"  _clickable_img=""  target="*s1_2"  ]
    [s]
    [s]

    ;---------------------------------------
    *s1_1

    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え、えぇ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    気のせいですませていいのかな……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    でも本当にニュース絡みなら[r]
    一般人の手に負えない話になってくる。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    た、たしかに[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    後ろ髪を引かれる思いもありつつ、[r]
    みおと帰路についた。[p]
    [_tb_end_text]

    [addTime minutes=30]


    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [endreplay]
    [eval exp="tf.snakeEnd = 1" ]
    ;イベントここで終了。既存の「★帰宅処理」に合流。
    ;別の日にあらためて発生条件を満たすと、再度おなじイベントが起こる。
    [jump target="cancelSnake" ]
    ;---------------------------------------
    *s1_2

    [tb_start_text mode=3 ]
    #
    本当に逃げた動物だったら[r]
    飼い主も探しているはずだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ご近所の平和にもつながるし、[r]
    貢献したい。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happy1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですね、人助けです[p]
    [_tb_end_text]

    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [addTime minutes=30]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    というわけで、順路を外れて[r]
    草むらの中へ分け入ることとなった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    獣道……というほどでもないが、[r]
    なにか通った形に草が倒れている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    辿っていくうち、[r]
    あたりはすっかり森の中になった。[p]
    [_tb_end_text]

    [bgChange time="0"  method="crossfade"  storage="mori_n.jpg"  ]

    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    近くにこんな場所があったんですね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    夜だと怖いですけど、[r]
    森林浴とかによさそうな感じ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
    [tb_start_text mode=3 ]
    #
    ――むむ。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="se/m_hebi0001.mp3"  ]
    [mioHyoujouSabun hyoujou="fuan.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    い、いますね、やっぱり……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    動物……動物……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    メスのマリーちゃんと呼ばれてたのはおぼえている。[r]
    が、肝心の何の動物だったかが出てこない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    逃げたらニュースになって、[r]
    場所的にもワニとかではない……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    となれば、答えは決まってくる。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="odoroki_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃあっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    その時だった。[r]
    足元を俊敏になにかが駆け抜けた。[p]
    [_tb_end_text]

    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    みおの悲鳴を耳にしながらすっころぶ。[r]
    尻餅の痛みに悶絶していると――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃ、ひゃあああああ！！[p]
    [_tb_end_text]

    [playbgm  volume="40"  time="6000"  loop="true"  fadein="true"  storage="BGM6_violence.mp3"  html5="false"  ]
    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]


    ;スチル表示＜大蛇に巻き付かれてうめくみお＞
    [CGSet storage="EVcg/snakeEv/00.png" layer="2" name="snake" ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [tb_show_message_window]
    [messageInvisible]
    [mask_off  time="1000"  effect="fadeOut"  ]



    [playse  volume="100"  time="1000"  buf="2"  storage="se/m_hebi0002.mp3"  ]

    *s2
    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="みおーーー！？"  _clickable_img=""  target="*s2_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="へびーーー！？"  _clickable_img=""  target="*s2_2"  ]
    [s]
    [s]
    ;この選択肢はピンクのテキストウィンドウやテキスト本文ナシの状態で表示

    ;---------------------------------------------------------------
    *s2_1


    [messageON]

    [tb_start_text mode=3 ]
    #
    みおがでっかいヘビに巻き付かれていた。[r]
    あまりの光景に我が目を疑う。[p]
    [_tb_end_text]


    [jump  target="*s2next"  ]
    ;---------------------------------------------------------------
    *s2_2


    [messageON]

    [tb_start_text mode=3 ]
    #
    あれはビルマニシキヘビだな。[r]
    大きくなる種類だが、それにしてもデカい。[p]
    [_tb_end_text]

    [jump  target="*s2next"  ]
    ;---------------------------------------------------------------
    *s2next


    [tb_start_text mode=3 ]
    #
    これがマリーちゃんか……！？[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/01.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぅぅ……[p]
    [_tb_end_text]



    [CGSet storage="EVcg/snakeEv/02.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0017.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    くっ、くるしぃですぅ……[r]
    せんせぇ……っ[l]
    [_tb_end_text]

    *s3
    [glink  color="btn_05_black" align="center" addlog="true"  storage=""  size="20"  x="500"  y="400"  width=""  height=""  text="だ、だいじょうぶか、みおっ"  _clickable_img=""  target="*s3next"  ]
    [s]
    [s]
    *s3next

    [CGSet storage="EVcg/snakeEv/01.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    この子、こわい感じはしないんです、けど[r]
    息は苦しい、ですっ、あうぅ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    たしかに、ヘビに害意があればみおなど[r]
    ひとたまりも無いだろう。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    本来やさしい性格の個体が[r]
    すがるようにみおに巻き付いているのか……？[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/00.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はあ、はあ……[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/03.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はなし、てぇ……おねがい、[r]
    怒らないからぁ……っ[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/01.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、うぅ～……[r]
    ひぅ、うぁぁ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    いかん、いくらヘビが加減しても[r]
    きゃしゃなみおでは保たない。[p]
    [_tb_end_text]



    [tb_start_text mode=4 ]
    #
    助け出さねば――[l]
    [_tb_end_text]
    *s4
    [glink  color="btn_05_black"  align="left" addlog="true"  storage=""  size="20"  x="275"  y="400"  width=""  height=""  text="大声を出して威嚇する"  _clickable_img=""  target="*s4_1"  ]
    [glink  color="btn_05_black"  align="center" addlog="true"  storage=""  size="20"  x="590"  y="400"  width=""  height=""  text="ヘビに体当たりする"  _clickable_img=""  target="*s4_2"  ]
    [glink  color="btn_05_black"  align="right" addlog="true"  storage=""  size="20"  x="900"  y="400"  width=""  height=""  text="みおを引っ張り出す"  _clickable_img=""  target="*s4_3"  ]
    [s]
    [s]

    ;--------------------------------------------------------------
    *s4_1

    [tb_start_text mode=3 ]
    #
    う、うあああ――！[p]
    [_tb_end_text]



    [CGSet storage="EVcg/snakeEv/02.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ヘビと戦おうにも下手な衝撃を加えれば[r]
    みおへのダメージにもなってしまう。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    まずは威嚇で様子を見るしかない、と[r]
    考えた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    どうだ――……！？[p]
    [_tb_end_text]



    [CGSet storage="EVcg/snakeEv/03.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……うっ、うぅぅッ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    締め上げるちからはゆるんでいない。[r]
    だめなのか……！[p]
    [_tb_end_text]



    [jump  target="*s4next"  ]
    ;--------------------------------------------------------------
    *s4_2

    [tb_start_text mode=3 ]
    #
    う、うおおお――！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    猛然と駆け寄って[r]
    ヘビにタックルを仕掛ける。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおにも衝撃はあるだろうが、[r]
    一秒でも早く拘束を解くべきと思ったのだ。[p]
    [_tb_end_text]



    [flash type="white"]

    [CGSet storage="EVcg/snakeEv/03.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生っ！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    硬い風船に似た感触がして、[r]
    こともなげに押し返されてしまった。[p]
    [_tb_end_text]

    [jump  target="*s4next"  ]

    ;--------------------------------------------------------------
    *s4_3

    [tb_start_text mode=3 ]
    #
    みおっ、手を――！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    助けてを求めてこちらへ伸びたみおの手を[r]
    つかまずにはいられなかった。[p]
    [_tb_end_text]



    [CGSet storage="EVcg/snakeEv/00.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せい――っ[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/03.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぁぁっ[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/00.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    い、いた……い、けど……[r]
    やめない、で……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    渾身のちからでみおを引っ張っても[r]
    ヘビの胴体の中でびくともしない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおが痛がるばかりで、[r]
    とうとう、握った手を離してしまった。[p]
    [_tb_end_text]


    [jump  target="*s4next"  ]
    ;--------------------------------------------------------------
    *s4next

    [calcHP HP=-15 minHP=1]

    [CGSet storage="EVcg/snakeEv/04.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、ぅぁあぁ……ッ[r]
    ――く、ぅぅ[p]
    [_tb_end_text]

    [CGSet storage="EVcg/snakeEv/05.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、う……うぅ……っ[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    打つ手なしなのか……！？[r]
    なにか、別の考えを……！[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/04.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はぁ……っ、うっ、うぅぅ……[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/06.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～……っ、ひ、ぅぁ……んんっ[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/07.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ふっと、ヘビの巨体から[r]
    ちからが抜けるのがわかった。[p]
    [_tb_end_text]


    [CGSet storage="EVcg/snakeEv/05.png" layer="2" name="snake" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [stopbgm  time="2000"  fadeout="true"  ]
    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="se/m_hebi0001.mp3"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;スチル消去
    [free layer="2" name="snake" ]
    [chara_hide_all  time="1"  wait="false"  ]
    [addTime minutes=10]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    へびさん、[r]
    降ろして、くれた……？[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    シュッと舌先を鳴らして[r]
    ヘビは草場へ溶けるように消えてしまった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    あの巨体を一瞬で見失ってしまうとは……[r]
    夜の森は怖いものだ。[p]
    [_tb_end_text]

    [bgChange time="1000"  method="crossfade"  storage="mori_n.jpg"  ]

    [mioHyoujouSabun hyoujou="sad_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、せんせぇ～！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ひし、とみおが抱き着いてきて、[r]
    胸がじんわりあたかく濡れていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    遅れて来た恐怖で[r]
    涙があふれているのだろう。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="sad3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ、ひん……[r]
    え、えぇ～んっ！[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="sadake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、あ、ありがっ、[r]
    ありがとうございますっ[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="sadake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    命の恩人です！[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="sad_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    このご恩は一生忘れませんからぁ～！[p]
    [_tb_end_text]


    ;みおの好感度が爆上がりする
    ;好感度　特大アップ
    [plusLove loveLevel="veryhigh"]

    [mioHyoujouSabun hyoujou="sad3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、うっ、ぐす……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="sad2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの、もう少し……[r]
    しばらくこのまま……いいですか？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    安いものだ、と胸を貸したのだった。[p]
    [_tb_end_text]


    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [addTime minutes=60]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    …………その後。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なんとか落ち着いたみおを家に連れ戻し、[r]
    なだめながら横にならせた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    その間、捜索中のヘビの目撃情報として[r]
    匿名での電話も入れる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが巻き付かれた、ということは[r]
    みおの強い要望で伏せることにした。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    へびさんが人を傷つけたって[r]
    怒られることになったら、かわいそうだから[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――ということで。[p]
    [_tb_end_text]

    ;☆添い寝スチルをフェード表示。今は仮スチルとして適当なありものを表示。
    [eval exp="f.soineStorage = 'EVcg/soine/night/'+f.schoolUniform +'/1.png'" ]
    [image layer="2" storage="&f.soineStorage" time="500" visible="true" name="soine" wait="false" ]
    [eval exp="f.hyoujouStorage = 'EVcg/soine/night/face/' +1 +'.png'" ]
    [image layer="2" storage="&f.hyoujouStorage" visible="true" time="500" name="soine,soineFace1" wait="true"  ]

    [tb_start_text mode=3 ]
    #
    電話が終わるとみおもようやく安心できたのか、[r]
    すっと深い眠りに落ちていったのだった。[p]
    [_tb_end_text]

    [calcHP HP=-10 minHP=1]

    [tb_start_text mode=3 ]
    #
    ……どっと疲れが来た。[r]
    自分もこのまま眠ってしまおう。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene1_0043.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……[l]
    [_tb_end_text]

    *s5
    [glink  color="btn_05_black"  align="center" addlog="true"  storage=""  size="20"  x="550"  y="400"  width=""  height=""  text="おやすみ、みお"  _clickable_img=""  target="*s5next"  ]
    [s]
    [s]
    *s5next


    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="soine" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [addTime minutes=20]
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
    後日談となるが――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あのヘビは無事に発見・保護されて[r]
    飼い主のもとへ戻ることができたそうだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおもあんなことをされたというのに[r]
    心の底から喜んでいたのだった。[p]
    [_tb_end_text]

    [eval exp="tf.snakeEnd = 2" ]
    [eval exp="f.snakeFlag = 2" ]
    [setreplay name="snakeEv" storage="replay_select.ks" target="snakeEv_start"]

    [if exp="f.flag_replay!=true"]
        [calcMioHP HP="-20"]
    [endif]
    *cancelSnake
[endmacro]
;---------
;発生タイミングが作者側では読めないイベントなので
;若干メタ的な語りになってしまうが後日談要素はこういう形で
;入れるしかないか
;---------

;暗転し、そのまま就寝。夜這いフラグも立たない（立ってる場合もoffにする）

;おわり（朝演出をはさんで翌日へ）
