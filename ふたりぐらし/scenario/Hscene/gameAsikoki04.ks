[macro name="gameAsikoki04" ]


    ;※メモ：実装時の加減を見て、SEやBGS増量を検討
    ;-------------------------------------------------------------

    ;シーン回想からの再生の場合、
    ;最初に「再生するシチュエーションを選んでください」のいつものやつを置いて
    ;選ばれたシチュ（段階）から開始

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;ここでスチル表示【16】
        [RESET_CAMERA time="1" ]
        [freeimage layer="1" ]
        [freeimage layer="2" ]
        [setGameAsiCG cg="16" time="1"]
        [wait  time="500"  ]
        [chara_hide_all  time="1"  wait="false"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさんこんにちは～[r]
    今回もよろしくお願いしますね[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ、今日も元気にびくびくしてますね[p]
    [_tb_end_text]

    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [tb_start_text mode=3 ]
    #
    みおはすっかり足コキの達人になり、[r]
    余裕綽々といったふうだ。[p]
    [_tb_end_text]

    [if exp="f.cloth == 'roomwear1' || f.cloth == 'roomwear2'" ]

        ;※このテキストは、パジャマ１とパジャマ２の時のみ表示
        [tb_start_text mode=3 ]
        #
        パンツもわかっていて見せつけているのだろう。[r]
        我慢汁がみるみる湧いてくる。[p]
        [_tb_end_text]

    [endif]
    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    乳液とかで滑りをよくした方がいいと思うんですが[r]
    ……先生には要らないですもんね[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あとでお水、いっぱい飲んでくださいね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    どういう意味――[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんからいろんなおツユ、[r]
    い～っぱい出してもらうので[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんな乱暴にされてもかえって腰振っちゃうなんて[r]
    先生、本当に足がお好きなんですね[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【11】
    [setGameAsiCG cg="11" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしも、熱いので足がどろどろになるの[r]
    やみつきになってきたかも[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0067.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    責任とって、たくさんせいえき出してくださいね[l]
    [_tb_end_text]

    [glink_center storage="Hscene/gameAsikoki04.ks" target="gameAsikoki04_1" text="イく――イくイくイく！"]
    [s]

    *gameAsikoki04_1

    ;射精演出
    ;スチル切替【24】
    [setGameAsiCG cg="24" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ♡[p]
    [_tb_end_text]

    ;スチル切替【25】
    [setGameAsiCG cg="25" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0069.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よくできました[r]
    えらいおちんちんでしたよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そう言うみおのまなざしは、まだまだ行為が[r]
    続くことを物語っていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]




    ;シーン回想からの再生の場合、ここで終了。
    ;ゲーム本編から発生した場合、自由行動パートに戻る前にさらに下記の流れへ。

    [fadeoutbgm2 time="6000"]
    ;以降、足コキ01「★めじるし」部分に合流
    [if exp="!f.flag_replay" ]
        ;★めじるし
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
            [addTime minutes=60]
            [bgcheck bgm="false"]
            [wait  time="500"  ]
            [chara_hide_all  time="1"  wait="false"  ]

            ;スチル消去
            ;拡大なしの通常ADV画面へ戻る
            [free layer="2" name="still" ]
            [free layer="3" name="still" ]
            [eval exp="f.gameAsikoki.today = true" ]
            [eval exp="f.gameAsikoki.total++" ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;みおと先生の体力-20
        [calcMioHP HP="-20" ]
        [calcHP HP="-20" ]

        [mioHyoujouSabun hyoujou="doya_red.png"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ、ありがとうございました……？[r]
        おつかれさま、かな……？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        気持ちよかったが、そのぶん心地よい虚脱感もある。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        今日はこのまま寝てしまおうか……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="enryo.png"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そうですね[r]
        そうしましょうか[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="raku2.png"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0036.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい、先生[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]
        [setreplay name="gameAsikoki" storage="replay_select.ks" target="gameAsikoki_select"]
    [endif]


    ;以上

[endmacro]