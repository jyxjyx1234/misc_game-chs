[macro name="semaruKijoi01" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;せまるみお【乗】派生：逆レ騎乗位＿段階１
    [eval exp="f.semaruEV.today.type = 'kijoui'" ]
    [eval exp="f.semaruEV.today.isHscene = true" ]
    [eval exp="f.muramura = Math.floor(f.muramura / 2) " ]
    ;　せまるみお【乗】のみお台詞「む～」からの流れで発生。
    ;　＜せまるみお【乗】のスチル01＞が表示されている状態

    ;シーン回想の場合、ここから。背景bk100、立ち絵なし。
    [if exp="f.flag_replay" ]
        [bgChange storage="bk100.jpg" time="1"]
        [maskEnd]
    [endif ]
    [fadeoutbgm2 time="6000" ]


    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【03.png】　※回想からの場合は表示
    [semaruNoruStillSet layer="2" storage="03.png" name="still,noru3" time="300"]
    [messageON]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【01.png】
    [semaruNoruStillSet layer="2" storage="01.png" name="still,noru1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、先生だっておまた、[r]
    膨らんでますよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    言われてみれば、確かに半勃ちだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、みおにこんな迫られ方をすれば[r]
    そうならない方がおかしい。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【02.png】
    [semaruNoruStillSet layer="2" storage="02.png" name="still,noru2" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほら、こぉんなに……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    っ！[p]
    [_tb_end_text]

    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【04.png】
    [semaruNoruStillSet layer="2" storage="04.png" name="still,noru4" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ、触ってないですよぉ[p]
    [_tb_end_text]

    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【01.png】
    [semaruNoruStillSet layer="2" storage="01.png" name="still,noru1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    上の方を撫でただけでしたけど[r]
    またちょっと大きくなっちゃいましたね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なし崩しに行為に入ってしまう算段だな。[r]
    我慢我慢……[p]
    [_tb_end_text]

    ;＜せまるみお【乗】のスチル01＞スチル切替＿末尾【02.png】
    [semaruNoruStillSet layer="2" storage="02.png" name="still,noru2" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしだってすごく興奮してるんです[r]
    ほら、見てください――……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure2.mp3"  ]

    ;＜ここから逆レスチル＞スチル表示＿末尾【01.png】
    [setKijoiCG cg="01" time="1000"]
    [free layer="2" name="noru1" ]
    [free layer="2" name="noru2" ]
    [free layer="2" name="noru3" ]
    [free layer="2" name="noru4" ]
    [free layer="2" name="noru5" ]
    [free layer="2" name="noru6" ]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [tb_start_text mode=3 ]
    #
    するりと下を脱ぎ去って、[r]
    みおは騎乗位の体勢で覆いかぶさってきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あらわになった秘部で[r]
    白っぽい液が光っている。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【02.png】
    [setKijoiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ね……？　先生、見て[p]
    [_tb_end_text]



    ;スチル切替＿末尾【03.png】
    [setKijoiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしのおまんこ、こんなに[r]
    さみしいよぉって泣いてるんです[p]
    [_tb_end_text]

    ;スチル切替＿末尾【01.png】
    [setKijoiCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおちんちんさんに会いたいよぉ……って[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    耐えられるわけがなかった。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【04.png】
    [setKijoiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っあは♡[p]
    [_tb_end_text]

    ;スチル切替＿末尾【05.png】
    [setKijoiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさんもやる気ばっちりですよ[r]
    先生[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおの腰がゆるく動きはじめる。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【06.png】
    ;スチル切替＿末尾【05.png】
    [setKijoiCG cg="06" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="05" time="300"]

    [tb_start_text mode=3 ]
    #
    尻肉は腿にあたって音を立て、[r]
    陰裂が亀頭を触れぬぎりぎりでかすめていく。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【06.png】
    ;スチル切替＿末尾【05.png】
    [setKijoiCG cg="06" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="05" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    ;スチル切替＿末尾【07.png】
    [setKijoiCG cg="07" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もうちょっと腰を下ろすだけで[r]
    えっちになっちゃいますね、先生[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08.png】
    [setKijoiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0015.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ね……？　本当は先生だって[r]
    えっち、したいんですよね？[l]
    [_tb_end_text]


    [glink_left text="えっちしたいと頼む" storage="Hscene/semaruKijoi01.ks" target="semaruKijoi01_1"]
    [glink_right text="やせ我慢を続ける" storage="Hscene/semaruKijoi01.ks" target="semaruKijoi01_2"]

    [s]

    ;選択肢
    ;　えっちしたいと頼む
    ;　やせ我慢を続ける

    ;※やせ我慢は遠回りになので、最終的にはセックス展開と合流


    ;--------------------------------------------
    ;【分岐】やせ我慢を続ける
    *semaruKijoi01_2
    [tb_start_text mode=3 ]
    #
    えっちしたいです――と[r]
    言いたいのをぐっとこらえる。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【09.png】
    [setKijoiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、手足はしおれきって[r]
    みおを振り払うようなちからも無い。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおがその気になれば、いつでも[r]
    自分はこの少女にレイプされてしまうのだ。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【07.png】
    [setKijoiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いやいやしてるわりには[r]
    おちんちん元気なままですね[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08.png】
    [setKijoiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……焦らして焦らして、[r]
    最後に気持ちよくなりたいってことですか？[p]
    [_tb_end_text]

    ;スチル切替＿末尾【07.png】
    [setKijoiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいですよ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08.png】
    [setKijoiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしの下のお口が、先生のおちんちんと[r]
    キスするかしないかのところ――[p]
    [_tb_end_text]

    ;スチル切替＿末尾【09.png】
    ;スチル切替＿末尾【10.png】
    ;スチル切替＿末尾【09.png】
    [setKijoiCG cg="09" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="10" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こうやって何回でもコスコス～って[r]
    焦らしてあげます[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]


    [tb_start_text mode=3 ]
    #
    ……ああ、なんと甘美な拷問だろう。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【09.png】
    ;スチル切替＿末尾【10.png】
    ;スチル切替＿末尾【09.png】
    [setKijoiCG cg="09" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="10" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="09" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ♡　んんっ♡[p]
    [_tb_end_text]

    ;　→★合流部へジャンプ
    [eval exp="f.semaruEV.HEv.kijoi.gaman++" ]
    [jump target="semaruKijoi01_3" ]
    ;--------------------------------------------
    ;【分岐】セックスしたいと頼む
    *semaruKijoi01_1
    ;スチル切替＿末尾【07.png】
        [setKijoiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん～……？[p]
    [_tb_end_text]

    ;スチル切替＿末尾【11.png】
    [setKijoiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どんなえっちですか？[r]
    はっきり言ってくれないとわからないです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおはそらとぼけて、[r]
    いやいやするような素股で甘殺しにかかる。[p]
    [_tb_end_text]


    ;　→★合流部へジャンプ
    [jump target="semaruKijoi01_3" ]
    ;--------------------------------------------
    ;★合流部
    *semaruKijoi01_3
    [tb_start_text mode=4 ]
    #
    もう、こんなもの、耐えられない――[l]
    [_tb_end_text]

    [glink_center storage="Hscene/semaruKijoi01.ks" target="semaruKijoi01_4" text="頼むから犯してくれっ！！"]
    [s]
    ;一択選択肢：頼むから犯してくれっ！！

    *semaruKijoi01_4
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

    ;スチル切替＿末尾【12.png】
    ;スチル切替＿末尾【13.png】
    ;スチル切替＿末尾【14.png】
    [setKijoiCG cg="12" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="13" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――はぁい[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……ッ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    挿入と同時に射精感がこみ上げる。[p]
    [_tb_end_text]


    ;射精演出、スチル切替＿末尾【15.png】
    [setKijoiCG cg="15"  syasei="true"] 


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんんんッ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膣肉の感覚もさることながら、[r]
    女の子に犯されたという事実に脳が焼ける。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【16.png】
    ;スチル切替＿末尾【17.png】
    [setKijoiCG cg="16" time="300"]
    [free layer="2"  name="kijoi15" ]
    [wait time="500" ]
    [setKijoiCG cg="17" time="300"]
    [wait time="500" ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru2.mp3"  ]
    ;スチル切替＿末尾【18.png】
    [setKijoiCG cg="18" time="300"]
    ;-------------------------------------
    ;分岐【みおが処女でない場合】
    [if exp="f.virgin.image.id != 0" ]

        ;表情は直前の切り替えスチルを使う
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0028.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生を犯しちゃったぁ……[p]
        [_tb_end_text]

        ;次の共通部へ
    [else]
        ;-------------------------------------
        ;分岐【みおが処女だった場合】

        ;表情は直前の切り替えスチルを使う
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0029.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生……処女だった女の子に[r]
        犯されちゃいましたね[p]
        [_tb_end_text]


        ;射精演出、スチル切替＿末尾【19.png】
        [setKijoiCG cg="19"  syasei="true"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0030.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ん、ふ……っ、思ったよりは[r]
        痛く、なくて……[p]
        [_tb_end_text]

        ;スチル切替＿末尾【20.png】
        [setKijoiCG cg="20" time="300"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0031.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生にわたしのだいじなものを[r]
        あげられたってうれしくて胸がいっぱいです[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        目じりに光る涙は、確かに[r]
        痛みによるものだけではないようだった。[p]
        [_tb_end_text]
        ;次の共通部へ
        [eval exp="f.virgin = addExperience(f.virgin,'2046','自ら求め、獣のように荒々しい交わりをした')" ]
    [endif]
    ;-------------------------------------
    ;【共通部】

    ;射精演出、スチル切替＿末尾【19.png】
    [setKijoiCG cg="19"  syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はぁー……っ、ふぅぁぁ……んんっ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【20.png】
    [setKijoiCG cg="20" time="300"]
    [free layer="2"  name="kijoi19" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    まだおちんちん硬くしててくださいね[p]
    [_tb_end_text]

    ;スチル切替＿末尾【18.png】
    [setKijoiCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、まだぜんぜんっ、[r]
    満足してないのでぇっ、んんっ[p]
    [_tb_end_text]

    ;スチル切替＿【bk100.jpg】
    ;スチル切替【all40.png】
    ;ここからみおは全裸になるので、衣装差分ナシで全共通スチルへ。
    ;ここまでで衣装別は末尾20のカウント。間が増えるバッファを担保する意味で、
    ;全裸になった文頭「all」は40からのカウントとします。
    [eval exp="f.cloth = 'hadaka'" ]
    [image layer="3" name="bkcg" storage="../bgimage/bk100.jpg" time="300" visible="true" ]
    [wait time="500" ]
    [setKijoiCG cg="40" time="300"]
    [free layer="3" name="bkcg" time="1000" ]

    [tb_start_text mode=3 ]
    #
    言うなり、みおは残った服を脱ぎ去って[r]
    そのまま再度の挿入にかかる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru2.mp3"  ]

    ;スチル切替【all41.png】
    ;スチル切替【all42.png】
    [setKijoiCG cg="41" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="42" time="300"]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

    ;スチル切替【all43.png】
    ;スチル切替【all44.png】
    [setKijoiCG cg="43" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="44" time="300"]

    [fadeinse storage="BGS/piston1.mp3" time="6000" buf="0" loop="true" ]
    ;【BGS】piston1.mp3,time6000で再生

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はぁっ、きもちいいっ[r]
    先生のおちんちん、いいところに来てるぅっ[p]
    [_tb_end_text]

    ;スチル切替【all43.png】
    ;スチル切替【all44.png】
    [setKijoiCG cg="43" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="44" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    自分で動くから自分の良いところに[r]
    おちんちんゴリゴリ当たって[p]
    [_tb_end_text]

    ;スチル切替【all43.png】
    ;スチル切替【all44.png】
    [setKijoiCG cg="43" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="44" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0037.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    っふぁっ、ああぁぁんっ[l]
    [_tb_end_text]

    [glink_center storage="Hscene/semaruKijoi01.ks" target="semaruKijoi01_5" text="待っ、またイ――……"]
    [s]
    ;一択選択肢：待っ、またイ――……
    *semaruKijoi01_5
    ;スチル切替【all43.png】
    ;スチル切替【all45.png】
    [setKijoiCG cg="43" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="45" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    待ちませんっ♡[p]
    [_tb_end_text]


    ;射精演出,スチル切替【all46.png】
    [setKijoiCG cg="46"  syasei="true"]

    [tb_start_text mode=3 ]
    #
    うぐっ、また出してしまった……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    射精するというより[r]
    搾りとられるというような状態だ。[p]
    [_tb_end_text]

    ;スチル切替【all47.png】
    ;スチル切替【all48.png】
    [setKijoiCG cg="47" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="48" time="300"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしっ、好きにおちんちん借りますからっ[r]
    先生は勝手に出してていいですよぉっ[p]
    [_tb_end_text]

    ;スチル切替【all47.png】
    ;スチル切替【all48.png】
    [setKijoiCG cg="47" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="48" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あふっ、精液、熱いのでヌルヌルになって[r]
    おまんこもっと気持ち、いいっ[p]
    [_tb_end_text]

    ;スチル切替【all47.png】
    ;スチル切替【all48.png】
    [setKijoiCG cg="47" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="48" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生っ、先生っ[p]
    [_tb_end_text]

    [fadeinse storage="BGS/piston2fast.mp3" time="6000" buf="0" loop="true" ]
    ;【BGS】piston2.mp3,time6000で再生

    ;スチル切替【all49.png】
    ;スチル切替【all50.png】
    [setKijoiCG cg="49" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="50" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    さっきから小さくイってて、[r]
    でももっともっとって腰止まんなくて[p]
    [_tb_end_text]


    ;スチル切替【all47.png】
    ;スチル切替【all48.png】
    [setKijoiCG cg="47" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="48" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁっ、ああぁぁぁあっ[p]
    [_tb_end_text]


    ;スチル切替【all49.png】
    ;スチル切替【all50.png】
    [setKijoiCG cg="49" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="50" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おおきいのっ、おおきいのくるのっ[r]
    もっと奥に欲しくてっ、ゴリゴリってぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの杭打ちピストンがペースを上げる。[r]
    バイブ代わりのこちらも最後の射精が近い――[p]
    [_tb_end_text]


    ;スチル切替【all49.png】
    ;スチル切替【all50.png】
    [setKijoiCG cg="49" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="50" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イく、イくの、イクイク――……[p]
    [_tb_end_text]


    ;スチル切替【all47.png】
    ;スチル切替【all48.png】
    [setKijoiCG cg="47" time="300"]
    [wait time="500" ]
    [setKijoiCG cg="48" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんあああぁぁああぁぁぁあ――～～っ！！！[p]
    [_tb_end_text]


    ;射精演出,BGS停止,スチル切替【all51.png】
    [stopse buf="0" ]
    [setKijoiCG cg="51" time="300" syasei="true"]
    [free layer="2" name="kijoi48"  ]

    [tb_start_text mode=3 ]
    #
    ペニスをちぎりとりそうなほどの[r]
    膣肉の最後の収縮、こちらも同時に絶頂していた。[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [image layer="3" name="still,bkcg" storage="../bgimage/bk100.jpg" time="1000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ……ふはぁぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁー……おまんこ、[r]
    まだびりびりしてるみたいです……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    とってもきもちよくて、[r]
    もっとはやくこうしてればよかったです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ベッドに沈み込んだままのこちらを、[r]
    先に立ち上がったみおが見下ろしてきて。[p]
    [_tb_end_text]

    ;☆スチル切替【all52.png】
    [setKijoiCG cg="52" time="1"]
    [free layer="3" name="bkcg" time="1000" ]

    [tb_start_text mode=3 ]
    #
    その股間からはどろどろと白い粘液が垂れていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    またムラムラしたら、[r]
    おちんちん、貸してくださいね♡[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合ここで終了

    [tb_start_text mode=3 ]

    #

    …………[p]
    [_tb_end_text]

    

    [tb_start_text mode=3 ]

    #

    ……[p]
    [_tb_end_text]

    
    [if exp="!f.flag_replay || f.flag_replay == undefined" ]
        ;↓本編からの再生の場合のみ、これも表示（回想からの再生では表示しない）
        [tb_start_text mode=3 ]

        #

        精魂尽きはて、そのまま眠り込んでしまった……[p]
        [_tb_end_text]



        [calcMioHP HP="-20"]
        [eval exp="f.malerape++" ]
        [eval exp="f.sex++" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.cunt+=3" ]
        [eval exp="f.cuntTotalOrgasm+=6" ]
        [eval exp="f.semaruEV.HEv.kijoi.total++" ]
    ;みお体力-20
    ;みお性経験加算
    ;　みおから迫って+1、セックス+1、開発％膣+3、膣内射精+3、絶頂数膣+6


    ;本編は適当に書き足して就寝

    [endif]



    [setreplay name="semaruKijyoui" storage="replay_select.ks" target="semaruKijoi_select"]


[endmacro]