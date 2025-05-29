
[macro name="gameAsikoki03" ]
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

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すっかり準備万端ですね、先生[r]
    おちんちんガチガチです[p]
    [_tb_end_text]

    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあ……[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait  time="500"  ]
    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0042.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……[l]
    [_tb_end_text]

    [glink_center storage="Hscene/gameAsikoki03.ks" target="gameAsikoki03_1" text="……っ"]
    [s]
    ;スチル切替【17】
    ;スチル切替【23】
    *gameAsikoki03_1
    [tb_start_text mode=3 ]
    #
    かすかに足先を触れさせては離すという[r]
    フェザータッチがくりかえされる。[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setGameAsiCG cg="16" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    前よりも器用に足を動かせるように[r]
    なってきたんです、わたし[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それはいいけど、しかしこれは生殺しだ……！[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait  time="500"  ]
    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ♪～[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    く、くぅ～……っ[l]
    [_tb_end_text]

    [glink_center storage="Hscene/gameAsikoki03.ks" target="gameAsikoki03_2" text="ふっ、踏んでくれっ" ]
    [s]
    *gameAsikoki03_2
    ;スチル切替【16】
    [setGameAsiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、わかりました[p]
    [_tb_end_text]


    ;スチル切替【23】
    [setGameAsiCG cg="23" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    年下の女の子に頼みこむぐらい、[r]
    おちんちん踏んでほしくてたまらないんですね[p]
    [_tb_end_text]


    ;スチル切替【17】
    [mask time="100" color="pink" ]
        [setGameAsiCG cg="17" time="300"]
    [mask_off time="300" ]
    ;軽いピンクフラッシュ


    [tb_start_text mode=3 ]
    #
    手とは違うぬくもり、圧力。[r]
    待ち望んでいた性感にペニスが打ち震える。[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait  time="500"  ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]
    [wait  time="500"  ]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait  time="500"  ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [tb_start_text mode=3 ]
    #
    だが、これは――このペースは――……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    焦らすみたいになっちゃってすみません[r]
    お詫びに急いでゴシゴシしますね[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]
    [wait  time="500"  ]
    ;スチル切替【11】
    [setGameAsiCG cg="11" time="300"]
    [wait  time="500"  ]
    ;スチル切替【17】
    [setGameAsiCG cg="17" time="300"]
    [wait  time="500"  ]
    ;スチル切替【18】
    [setGameAsiCG cg="18" time="300"]

    [tb_start_text mode=3 ]
    #
    さんざん焦らした後のハイペースなしごき。[r]
    みおはわざとやっているのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    足裏全体でペニスを包み、指先がカリを締める。[r]
    かかとは時折睾丸を転がすように触れては離れる。[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setGameAsiCG cg="16" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こういうのがしたかったんですよね、せんせ？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    出そう、などと言うヒマもなかった。[p]
    [_tb_end_text]

    ;射精演出,スチル切替【24】
    [setGameAsiCG cg="24" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ～……♡[p]
    [_tb_end_text]

    ;スチル切替【25】
    [setGameAsiCG cg="25" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    まだ出ますよね……？[r]
    白いおしっこ……ほら、ぐにぐに……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    足の動きは精液をしぼりとるものに変わり、[r]
    睾丸がこれ以上ないほどに持ち上がっていた。[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setGameAsiCG cg="21" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生の精液でわたしの足、[r]
    こんなにぬるぬるになっちゃって……[p]
    [_tb_end_text]


    ;スチル切替【26】
    [setGameAsiCG cg="26" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もしかして――このまま、またゴシゴシしたら[r]
    気持ちいいんじゃないですか？[p]
    [_tb_end_text]


    ;スチル切替【27】
    [setGameAsiCG cg="27" time="300"]
    [wait  time="500"  ]
    ;スチル切替【26】
    [setGameAsiCG cg="26" time="300"]

    [tb_start_text mode=3 ]
    #
    そう言って、みおは射精直後にペニスに[r]
    さきほど以上の速度で足コキを始めるのだった。[p]
    [_tb_end_text]

    ;スチル切替【27】
    [setGameAsiCG cg="27" time="300"]
    [wait  time="500"  ]
    ;スチル切替【26】
    [setGameAsiCG cg="26" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、先生、すごい顔して腰が跳ねてます[r]
    すっごく気持ちよさそうですよ[p]
    [_tb_end_text]

    ;スチル切替【28】
    [setGameAsiCG cg="28" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これを続けたらどうなっちゃうんです？[r]
    また射精……？　それとも……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    そんな立て続けに二発目なんて――と首を振るが、[r]
    ペニスの内側ではなにかが膨れ上がっている。[p]
    [_tb_end_text]

    ;スチル切替【26】
    [setGameAsiCG cg="26" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0055.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    いいですよ、わたしの前でなにもがまんしなくて[r]
    見せてください、先生の恥ずかしいところっ[l]
    [_tb_end_text]

    ; 一択選択肢「出るっ、なにか、出る……っ！」
    [glink_center storage="Hscene/gameAsikoki03.ks" target="gameAsikoki03_3" text="出るっ、なにか、出る……っ！" ]
    [s]
    *gameAsikoki03_3

    ;射精演出のような白フラ。男の潮吹き。
    ;スチル切替【29】
    [setGameAsiCG cg="29" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃ――っ！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    見えるか見えないかの透明なしぶきが[r]
    ペニスからほとばしっていた。[p]
    [_tb_end_text]

    ;スチル切替【30】
    [setGameAsiCG cg="30" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、先生……今のは……？[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    潮吹きかも、と言おうとしたが、声が出なかった。[r]
    あえぎ過ぎた酸欠でちょっと意識が遠のく……[p]
    [_tb_end_text]



    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" time="500" name="still,bkcg" visible="true"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    や、やりすぎちゃったかも……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも……おもしろかったなぁ、[r]
    おちんちんいじめ……[p]
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