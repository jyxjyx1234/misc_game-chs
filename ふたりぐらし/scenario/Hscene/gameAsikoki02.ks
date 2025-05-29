[macro name="gameAsikoki02" ]



    ;※メモ：実装時の加減を見て、SEやBGS増量を検討

    ;-------------------------------------------------------------

    ;シーン回想からの再生の場合、
    ;最初に「再生するシチュエーションを選んでください」のいつものやつを置いて
    ;選ばれたシチュ（段階）から開始

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [RESET_CAMERA time="1" ]
        ;ここでスチル表示【02】
        [freeimage layer="1" ]
        [freeimage layer="2" ]
        [setGameAsiCG cg="02" time="1"]
        [wait  time="500"  ]
        [chara_hide_all  time="1"  wait="false"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今回もおちんちんさん、元気そうですね[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setGameAsiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおまたを足でぐりぐりするなんて[r]
    悪いことかも、って不安でしたけど――[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setGameAsiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごく喜んでくれて、今日もまた頼まれて[r]
    なんだか自信がついちゃいました[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    話しながら右へ左へ動く足裏を[r]
    追いかけて腰を振ってしまう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    またあの甘美な足コキを味わいたくて[r]
    こちらも必死だった。[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setGameAsiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]


    ;スチル切替【17】足コキ状態に
    [setGameAsiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、ぴと～っです[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setGameAsiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    びくびくしてますよ[r]
    気持ちいいってことなんですよね[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setGameAsiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じんわりあったかくて、[r]
    わたしもくすぐったいのがきもちよくて……[p]
    [_tb_end_text]


    ;スチル切替【08】
    [setGameAsiCG cg="08" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【09】
    [setGameAsiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんっておもしろいです[r]
    もっといろんな反応見てみたい……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんの先っぽ、おしっこが出るところ、[r]
    くにくにするとパクパク開いてかわいいな、とか[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    前回の予感は正しかったようだ。[r]
    みおはこの手のプレイに意外な適性がある。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの戸惑う姿を楽しむはずが、[r]
    気づけばこちらが呑まれてしまっていた。[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setGameAsiCG cg="11" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生がはあはあって腰動かして、[r]
    わたしもそれがうれしくって[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もっと気持ちよくなってもらいたくて[r]
    どうしたらいいかなぁっていろいろ試して[p]
    [_tb_end_text]


    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ごしごし、くにゅくにゅ……[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setGameAsiCG cg="16" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……あ、前はこのくびれてるところを[r]
    足の指ではさむのがよかったんでしたっけ[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" name="still,bkcg" time="500" visible="true" ]

    [tb_start_text mode=3 ]
    #
    先走り汁でねとつく足指がうごめいて[r]
    開いた指の輪がカリ首をとらえる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    声にならないうめきが漏れた。[r]
    ペニスの付け根が燃えるように熱い。[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="1"]
    [free layer="3" name="bkcg" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、逃げちゃやです[r]
    もっと気持ちよくなって欲しいんですっ[p]
    [_tb_end_text]


    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [tb_start_text mode=3 ]
    #
    逃がすまいとした動きが、ペニスから睾丸を[r]
    踏みしだくかっこうとなった。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    ぐりゅっ、と水っぽい感触がして、[r]
    目の奥がちかちかと明滅した。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/gameAsikoki02.ks" target="gameAsikoki02_1" text="あ、出……っ" ]
    [s]

    *gameAsikoki02_1
    ;スチル切替【06】
    [setGameAsiCG cg="06" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、わっ、わあぁっ[p]
    [_tb_end_text]


    ;射精演出,スチル切替【12】
    [setGameAsiCG cg="12" time="300" syasei="true"]
    ;以降適宜白フラッシュやＳＥをくりかえす？（実装後の加減を見て決める）


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、おちんちん踏まれて[r]
    射精しちゃってるんですかぁっ[p]
    [_tb_end_text]

    ;スチル切替【19】
    [setGameAsiCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わぁぁ……[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setGameAsiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっぱい、出しましたね[r]
    気持ちよかったんですね[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setGameAsiCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    踏んづけちゃったから謝ろうとしたら[r]
    そのままおしゃせい、しちゃいましたね[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setGameAsiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    かかとのところ、先生のたまたまが[r]
    きゅうぅぅって震えてるのがわかりました[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    射精後の虚脱感が激しくて、[r]
    言葉を返すこともおぼつかない。[p]
    [_tb_end_text]


    ;スチル切替【22】
    [setGameAsiCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほら……先生の白いのがこぉんなに……[r]
    靴下履いてるみたいです[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ただ、突きつけられたみおの足が[r]
    とても美しいと思った。[p]
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