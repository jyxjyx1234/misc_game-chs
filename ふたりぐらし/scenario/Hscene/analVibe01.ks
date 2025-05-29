[macro name="analVibe01" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜アナルバイブ：初回＞

    ;※開始パターンの指定が一応ありますが、現状パターン１しか発生しません。
    ;　パターン２側は未使用ですが、一応設定して残しておくものとなります。


    [fadeoutbgm2 time="6000" ]

    ;回想スタートの場合、ここから。背景bk100,立ち絵なし
    [if exp="f.flag_replay" ]
        [bgChange storage="bk100.jpg" time="1"]
        [maskEnd]
    [endif]

    ;--------------------------------------------------
    ;■開始パターン１：通常（先生が頼みこんで）
    [if exp="mp.type == 'normal' || mp.type==undefined" ]

        
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0007.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #みお
        あ、あうぅ～……[p]
        [_tb_end_text]

        [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
        ;スチル表示【01】パンツをずり下げアナルを露出した状態で、ベッドに突っ伏したみお。
        [setAnalVibeCG cg="01" time="1000"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        すごいかっこう……[p]
        [_tb_end_text]

        ;スチル切替【02】
        [setAnalVibeCG cg="02" time="1000"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしりの穴、見ないでくださいぃ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        おしりの穴どころではない状態だが。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        それに、みおがバイブを[r]
        おしりに入れるのを見せてもらう約束だし。[p]
        [_tb_end_text]

        ;スチル切替【01】
        [setAnalVibeCG cg="01" time="1000"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えっ、わ、わたしが自分で入れるんですか！？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そういえばそのあたりの細かいところは[r]
        確認していなかったっけ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みお自身にやらせるのが醍醐味なので[r]
        そこは譲れないが……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まあ、事前の“ほぐし”ぐらいは[r]
        してやってもいいだろう。[p]
        [_tb_end_text]



        ;　→本編へ
    [else]
        ;---------------------------------------
        ;■開始パターン２：睡眠薬などで、みおが寝てはいないけど意識がはっきりしない状態になり、なしくずしに


        [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
        ;スチル表示の設定もいったんナシで進行

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        準備できましたよぉ、せんせぇ[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……おしり、スース―します[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        じゃあ早速、とアナルバイブを[r]
        渡そうとする。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぶー[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生がしてくれないんですかぁ……？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そうだな、意識がハッキリしてくる前に[r]
        多少ヨガらせておいた方が良さそうだ。[p]
        [_tb_end_text]


        ;　→本編へ

    [endif]
    ;---------------------------------------
    ;■本編
    *analVibe01_1

    [tb_start_text mode=3 ]
    #
    バイブの挿入でなくとも――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru2.mp3"  ]
    ;スチル切替【03】先生の手によるアナル指入れの差分を表示
    [setAnalVibeCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひあっ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    つぷりという手ごたえと共に[r]
    指はアナルの中へ沈んでいく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今日までじっくり開発してきたからな。[r]
    指ぐらいは美味そうに飲み込んでくれるのだ。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setAnalVibeCG cg="04" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあぁ……先生の指、太いぃ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これぐらいでそんな感想を漏らすようでは[r]
    まだまだだな。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
    [wait time="600"]
    [playse volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
    ;↑2回続けて再生するように

    ;スチル切替【03】
    [setAnalVibeCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁっ、急に激しっ、んんんぅぅっ[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setAnalVibeCG cg="04" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしり、きもちいぃっ、[r]
    きもちいいですっ、んああぁぅっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これから、もっと太いものを入れるのだ。[r]
    存分にほぐしてやらなくてはいけない。[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setAnalVibeCG cg="05" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしりっ、違うのにぃっ[r]
    えっちなことする場所じゃないのにぃっ[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setAnalVibeCG cg="06" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～っ！　っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    浅い絶頂があったようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    括約筋がぎゅうぎゅうと[r]
    こちらの指を甘噛みしてくる。[p]
    [_tb_end_text]

    ;スチル切替【07】：先生の手オフ。アナルがぽっかり差分に。
    [setAnalVibeCG cg="07" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぅっ、おぉ……んっ、んぐぅぅ……っ[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setAnalVibeCG cg="08" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふああぁ……あぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――充分だな。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの片手をとり、支度をしてやる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kiss2.mp3"  ]

    ;スチル切替【09】：みおが自身でアナルバイブを挿入しようと構えた状態
    [setAnalVibeCG cg="09" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、ふぁぁ……冷た……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setAnalVibeCG cg="10" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほんとに入れるんですか、[r]
    こんな大きなものを、お、おしりに……[p]
    [_tb_end_text]

    ;--------------------------------
    ;【分岐】みおがアナル処女だったとき
    [if exp="f.analVirgin.image.id == 0"]
        *analVibe01_3
        [tb_start_text mode=3 ]
        #
        無理もない。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        これまでも指などでほぐしはしてきたが、[r]
        それ以上のものは未経験。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        アナル処女をバイブに捧げさせる――[r]
        これは、そういうシチュエーションなのだ。[p]
        [_tb_end_text]

        ;スチル切替【11】

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0025.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅぅ～……[p]
        [_tb_end_text]

        ;スチル切替【12】

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0026.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せんせいってひどいへんたいさんです……[p]
        [_tb_end_text]


        ;次の共通部へ
    [else]
        ;--------------------------------
        ;【分岐】上記以外のとき（おさわりパートなどで先生チンポは挿入経験ありのとき）
        *analVibe01_4
        [tb_start_text mode=3 ]
        #
        ……？[r]
        今更ためらうこともあるまいに。[p]
        [_tb_end_text]

        ;スチル切替【11】
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0027.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そ、それは、たしかに……[p]
        [_tb_end_text]

        ;スチル切替【09】

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0028.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おもちゃより先生のおちんちんの方が[r]
        おっきいかもです、けど……[p]
        [_tb_end_text]

        ;次の共通部へ
    [endif]
    ;--------------------------------
    ;【共通部】
    *analVibe01_5

    ;スチル切替【10】
    [setAnalVibeCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    話しているうちにみおもノってきたのか、[r]
    バイブを握る手にちからが入った。[p]
    [_tb_end_text]


    ;スチル切替【13】
    [setAnalVibeCG cg="13" time="300"]
    [tb_start_text mode=3 ]
    #
    黒い張り型が、尻穴をかき分け、押し広げながら[r]
    徐々に徐々にと直腸へ入り込んでいく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    ;スチル切替【14】
    [setAnalVibeCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は――ぁ――……んんっ[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setAnalVibeCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    苦し……っ[r]
    んぅ、まだ終わらないのぉ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    ;スチル切替【14】
    [setAnalVibeCG cg="14" time="300"]
    [wait time="&f.WAIT_TIME"]
    ;スチル切替【11】
    [setAnalVibeCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぅ、あぅぅ……ふぅぁ……おしり、締めたら[r]
    押し戻しちゃ……んんんっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    バイブは先端から根本へ向けて太くなる。[r]
    進むほど圧迫感は増していくつくりだ。[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setAnalVibeCG cg="13" time="300"]
    [tb_start_text mode=3 ]
    #
    一進一退ながらも、みおのアナルは[r]
    少しずつバイブを受け入れていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ただの排泄器官が性器に変わっていく瞬間だ。[r]
    それを間近で眺める興奮たるや。[p]
    [_tb_end_text]


    ;スチル切替【15】
    [setAnalVibeCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁん……せん、せ……[r]
    おちんちん、おっきくなってる……[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setAnalVibeCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    興奮してるんですか……？[r]
    わたしの、これ……でぇ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ、とうなずく。すでに[r]
    みおの痴態をオカズに手淫をはじめている。[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setAnalVibeCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見せ合いっこ、なんですね……んぅっ[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setAnalVibeCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁぁ――んっ、[r]
    くひっ……あぁぁ……～～っ！！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    ;スチル切替【16】
    [setAnalVibeCG cg="16" time="300"]
    [wait time="&f.WAIT_TIME"]
    ;スチル切替【17】
    [setAnalVibeCG cg="17" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はっ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    ;スチル切替【18】
    [setAnalVibeCG cg="18" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0038.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    入り、ましたか……？　ぜんぶぅ……っ[l]
    [_tb_end_text]

    [glink_center storage="Hscene/analVibe01.ks" target="analVibe01_6" text="ああ、えらいぞ"]
    [s]
    *analVibe01_6
    ;-------------------------------------------------------
    ;【分岐】みおが処女（前）の時の追加テキスト
    [if exp="f.virgin.image.id == 0"]
        *analVibe01_7
        [tb_start_text mode=3 ]
        #
        おまんこでは処女のくせに[r]
        立派なケツ穴好きになったものだ。[p]
        [_tb_end_text]


        ;-------------------------------------------------------

        ;スチル切替【19】
        [setAnalVibeCG cg="19" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えへ、へへ……[r]
        ほめられちゃった……[p]
        [_tb_end_text]

        
    [endif]
    ;--------------------------------
    ;【分岐】みおがアナル処女だったとき
    [if exp="f.analVirgin.image.id == 0"]
        *analVibe01_8
        [tb_start_text mode=3 ]
        #
        アナル処女喪失おめでとう、と[r]
        みおに告げる。[p]
        [_tb_end_text]

        ;スチル切替【18】
        [setAnalVibeCG cg="18" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0040.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ――……[p]
        [_tb_end_text]

        ;スチル切替【20】
        [setAnalVibeCG cg="20" time="300"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そっか、これ、そういうことに[r]
        なるんですね……[p]
        [_tb_end_text]

        ;スチル切替【18】
        [setAnalVibeCG cg="18" time="300"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0042.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        失くすなら、先生にもらって[r]
        ほしかったんですけど――……[p]
        [_tb_end_text]


        ;スチル切替【19】
        [setAnalVibeCG cg="19" time="300"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0043.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        でもこれは先生のお願い通りだから、[r]
        先生はこんなわたしがいいんですよね……？[p]
        [_tb_end_text]

        [eval exp="f.analVirgin = addExperience(f.analVirgin,'2038','先生の指示でアナル処女をバイブに捧げた')" ]
        ;次の共通部へ
    [else]
        ;--------------------------------
        ;【分岐】上記以外のとき（おさわりパートなどで先生チンポは挿入経験ありのとき）
        *analVibe01_9
        [tb_start_text mode=3 ]
        #
        自分のペニスとはどう感触が違うのか、[r]
        みおに訊いてみる。[p]
        [_tb_end_text]


        ;スチル切替【20】
        [setAnalVibeCG cg="20" time="300"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0044.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そ、その……うぅん……[p]
        [_tb_end_text]

        ;スチル切替【18】
        [setAnalVibeCG cg="18" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0045.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生のは硬くても人肌のしなりがあるから、[r]
        コッチは、そうじゃなくて[p]
        [_tb_end_text]

        ;スチル切替【20】
        [setAnalVibeCG cg="20" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0046.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        本当に突き刺されちゃってる感じで、[r]
        わたしまでモノ扱いされてるような……[p]
        [_tb_end_text]

        ;スチル切替【18】
        [setAnalVibeCG cg="18" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0047.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あぅ……どうしよう、これ、[r]
        すごくえっちなんじゃあ……[p]
        [_tb_end_text]

        ;次の共通部へ
    [endif]

    ;--------------------------------
    ;【共通部】
    *analVibe01_10

    [tb_start_text mode=3 ]
    #
    ……バイブをすっかりくわえ込んだ尻が[r]
    淫靡にふりふりとゆれている。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    どこかぎこちない、かばうような動きで[r]
    胎内に埋まった杭の形が透けて見えるようだ。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/analVibe01.ks" target="analVibe01_11" text="それじゃあ仕上げだ"]
    [s]
    ;スチル切替【21】
    *analVibe01_11
    [setAnalVibeCG cg="21" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え――？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    バイブの底面にあるボタンを押す。[r]
    振動開始。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]


    ;スチル切替【22】
    [setAnalVibeCG cg="22" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、きゃぅぅぅあっ[r]
    そんなっ、こんなのっ、聞いてない[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だいぶディルドっぽい見た目だが、[r]
    振動機能もある以上、使わねば。[p]
    [_tb_end_text]


    ;スチル切替【23】
    [setAnalVibeCG cg="23" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああっ、やだっ、おしりの中ぶるぶるってぇ、[r]
    おかしくなっちゃ……ッ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    バイブと背骨がつながっているかのように[r]
    みおの背中が激しく打ち震え、暴れる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そのさまを網膜に焼きつけながら[r]
    懸命に自分でペニスをこすり上げる。[p]
    [_tb_end_text]

    ;【BGS】H_TEKOKI.mp3、time6000で再生
    [fadeinse buf="0" storage="BGS/H_TEKOKI.mp3" loop="true"  time="6000"]

    ;スチル切替【24】
    [setAnalVibeCG cg="24" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぐっ、あうぅぁっ、こわれる、[r]
    おしり、こわれちゃいますぅぅうっ[p]
    [_tb_end_text]


    ;スチル切替【25】
    [setAnalVibeCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あうぅ、ぐっ、ふぐぅぅぁ、[r]
    や、やぁっ、なんか、なにかヘンにぃ[p]
    [_tb_end_text]


    ;スチル切替【23】
    [setAnalVibeCG cg="23" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああっ、だめ、だめぇっ、[r]
    わたしおしりなのに、おしりでっ[p]
    [_tb_end_text]


    ;スチル切替【24】
    [setAnalVibeCG cg="24" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イっ――……ッ[p]
    [_tb_end_text]
    *analVibe01_12_select
    [tb_start_text mode=4 ]
    #
    ぐっ、こっちもイく……！[l]
    [_tb_end_text]


    [glink_left storage="Hscene/analVibe01.ks" target="analVibe01_13" text="みおの尻にぶっかける"]
    [glink_right storage="Hscene/analVibe01.ks" target="analVibe01_14" text="みおの口内に射精する" ] 
    [s]
    ;射精演出,BGS停止,
    ;　スチル切替：ルートみおの尻にぶっかける【50】
    ;　スチル切替：ルートみおの口内に射精する【60】
    *analVibe01_13
    [stopse buf="0" ]
    [setAnalVibeCG cg="50" time="300" zettyou="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぁあああぁあぁ――……～～っ！！[p]
    [_tb_end_text]


    ;　スチル切替：ルートみおの尻にぶっかける【51】
    ;　スチル切替：ルートみおの口内に射精する【61】
    [setAnalVibeCG cg="51" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ、あ……あっ、うぅぁ……[p]
    [_tb_end_text]

    ;いったん画面をホワイトアウト（白でmask）させ下記スチル切替ののち、暗転をはずす。
    ;　スチル切替：ルートみおの尻にぶっかける【52】
    ;　スチル切替：ルートみおの口内に射精する【62】
    [mask color="white" time="500"]
        [setAnalVibeCG cg="52" time="300"]
    [mask_off time="500"]
    [tb_start_text mode=3 ]
    #
    ……絶頂の拍子に抜け落ちたアナルバイブが[r]
    床でがたがたと震え続けていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの呼吸に合わせ、ぽっかりあいたアナルも[r]
    ぱくぱくとうごめいている。[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [setBK]

    ;------------------------------------
    ;【選択肢】みおの尻にぶっかける　をさきほど選んでいた場合

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の精液、とっても熱くて……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    垂れてきたのが、んっ、んん……[r]
    おしりの穴、にぃ、入って……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁぁ……これ、なんだか、すごく、[r]
    やらしいことに思えて……っ[p]
    [_tb_end_text]


    ;　次の共通部へ
    [eval exp="f.sperm++" ]
    [jump target="analVibe01_15" ]
    *analVibe01_14
    [stopse buf="0" ]
    ;射精演出,BGS停止,
    ;　スチル切替：ルートみおの尻にぶっかける【50】
    ;　スチル切替：ルートみおの口内に射精する【60】
    [setAnalVibeCG cg="60" time="300" zettyou="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぁあああぁあぁ――……～～っ！！[p]
    [_tb_end_text]


    ;　スチル切替：ルートみおの尻にぶっかける【51】
    ;　スチル切替：ルートみおの口内に射精する【61】
    [setAnalVibeCG cg="61" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ、あ……あっ、うぅぁ……[p]
    [_tb_end_text]

    ;いったん画面をホワイトアウト（白でmask）させ下記スチル切替ののち、暗転をはずす。
    ;　スチル切替：ルートみおの尻にぶっかける【52】
    ;　スチル切替：ルートみおの口内に射精する【62】
    [mask color="white" time="500"]
        [setAnalVibeCG cg="62" time="300"]
    [mask_off time="500"]
    [tb_start_text mode=3 ]
    #
    ……絶頂の拍子に抜け落ちたアナルバイブが[r]
    床でがたがたと震え続けていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの呼吸に合わせ、ぽっかりあいたアナルも[r]
    ぱくぱくとうごめいている。[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [setBK]
    ;------------------------------------
    ;【選択肢】みおの口内に射精す　をさきほど選んでいた場合

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……んく、んん……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぷぁぅ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene4_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おくちも、おしりも、先生に[r]
    えっちな穴に変えられちゃいました……[p]
    [_tb_end_text]
    [eval exp="f.mouthCum++" ]
    [eval exp="f.fellatio++" ]
    [eval exp="f.mouth++" ]
    ;　次の共通部へ
    [jump target="analVibe01_15" ]
    ;------------------------------------
    ;【共通部】
    *analVibe01_15
    [tb_start_text mode=3 ]
    #
    あえぐようにして、[r]
    みおは熱っぽい息を続けている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    部屋には甘いような酸っぱいような[r]
    独特の淫臭が満ちていた。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;シーン回想から再生の場合はここで終了

    [if exp="!f.flag_replay" ]


        [tb_start_text mode=3 ]

        #

        疲れ果てたみおは眠り込んでしまったのだった。[p]
        [_tb_end_text]

        

        [tb_start_text mode=3 ]

        #

        自分もみおの世話を済ませたら[r]
        眠ってしまうことにした……[p]
        [_tb_end_text]

        ;みお体力-20
            [calcMioHP HP="-20"]

        ;-------------

        ;みお性経験加算：ベース
        ;　アナルセックス+1、オナニー+1、露出調教+1、開発度アナル+3、絶頂アナル+2
            [eval exp="f.analsexTotal++" ]
            [eval exp="f.masturbation++" ]
            [eval exp="f.masochism++" ]
            [eval exp="f.anus += 3" ]
            [eval exp="f.anusTotalOrgasm+=3" ]
        ;みお性経験加算：選択肢「みおの尻にぶっかける」を選んでいた場合、さらに下記を加算
        ;　ぶっかけ+1、

        ;みお性経験加算：選択肢「みおの口内に射精する」を選んでいた場合、さらに下記を加算
        ;　フェラチオ+1,口内射精+1、開発度口+1

        ;みお性経験加算：段階２だった場合、さらに下記を加算
        ;　開発度アナル+3、絶頂アナル+3

        ;-------------
        [eval exp="f.todayEnd = true" ]
    [endif]

    ;そのまま一日終了。翌日へ。
    ;実装後の流れを見て少しテキストを足したりを検討。
    [setreplay name="analVibe" storage="replay_select.ks" target="analVibe_select"]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[endmacro]