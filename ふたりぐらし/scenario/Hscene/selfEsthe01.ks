;本編からの場合はこれまでの流れに合流してここから
[macro name="selfEsthe01" ]
    *selfEsthe01_1
    [if exp="!f.flag_replay" ]

        ;現行BGMを記憶し、BGMをフェードアウト停止
        [eval exp="f.lastBGM = f.nowBGM" ]
        [fadeoutbgm time="6000"  ]

        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

    [else]
        [mask_off]
        [messageON]
    [endif]
    ;シーン回想からの場合はここから。立ち絵なし、背景bk100、BGMなし

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0017.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    せん、せ……[r]
    マッサージ上手……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    実体験やら聞きかじりやらを総動員して[r]
    みおの腕から肩を揉みほぐしてた甲斐があった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ……そこ、凝ってるんですか……？[r]
    こりこりした感じがします[p]
    [_tb_end_text]

    ;プチ分岐：初回時
    [if exp="f.selfEsthe.total == 0" ]
        *selfEsthe01_1_1
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ちから仕事とか全然してないのに……[r]
        んっ、んんぅ……[p]
        [_tb_end_text]
    [else]
    ;プチ分岐：２回め時
        *selfEsthe01_1_2
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        前ほぐしてもらったのに[r]
        またバキバキになっちゃいましたぁ……[p]
        [_tb_end_text]
    [endif]
    *selfEsthe01_1_3
    [tb_start_text mode=3 ]
    #
    みおの肩もなかなか張っている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    日中は学生をして、帰ったら[r]
    家事全般――大変な重労働じゃないか。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    腋のあたりとか、軽く押すだけでも[r]
    かなり痛気持ちい場所があったりする。[l]
    [_tb_end_text]

    ;選択肢
    ;　やさしく押す
    ;　ぐいぐい押す
    [glink_left storage="Hscene/selfEsthe01.ks" target="selfEsthe01_2" text="やさしく押す"]
    [glink_right storage="Hscene/selfEsthe01.ks" target="selfEsthe01_3" text="ぐいぐい押す"]
    [s]
    [s]
    ;------------------------------
    ;【選択肢分岐】やさしく押す
    *selfEsthe01_2

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んん～！　痛いですぅ～！！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これでぜんぜん力入れてないって[r]
    ほんとですかぁっ、あうぅ～っ[p]
    [_tb_end_text]


    ;　→次の共通部まで
    [jump target="selfEsthe01_4" ]
    ;------------------------------
    ;【選択肢分岐】ぐいぐい押す
    *selfEsthe01_3

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～っ！！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    声にならない悲鳴をあげ、[r]
    足先をピンと伸ばすみおだった。[p]
    [_tb_end_text]


    ;　→次の共通部まで

    [jump target="selfEsthe01_4" ]
    ;------------------------------
    ;【共通部】
    *selfEsthe01_4

    [tb_start_text mode=3 ]
    #
    なんだかおもしろくなってきて、[r]
    いろいろな場所を試してみる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふやああ～[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あうあううぅっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    痛くてくすぐったくてなんか変です[r]
    なにかのツボですかぁっ！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    などと反応も多彩なもので、[r]
    いつの間にかきわどい場所に手がかかり――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    乳房をすくいあげるような[r]
    形になっていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――あっ、ふぁぁっ♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それは、楽しげな雰囲気を吹き飛ばす[r]
    蠱惑的な嬌声だった。[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]


    [tb_start_text mode=3 ]
    #
    互いの表情が見づらいぶん、息遣いを読み合う間があり、[r]
    それがかえって肌の接触感を際立たせる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    あるいは親に隠れ、寝室で秘め事に耽る[r]
    きょうだいのような――[p]
    [_tb_end_text]

    ;プチ分岐　初回時
    [if exp="f.selfEsthe.total == 0" ]
        *selfEsthe01_4_1
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0028.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……っ、あ、えと、今のはっ[r]
        ちがくて……[p]
        [_tb_end_text]
    [else]
        ;プチ分岐　２回め以降時
        *selfEsthe01_4_2
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0029.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だからぁ、そこはだめですぅ……[r]
        変な声出ちゃうから……っ[p]
        [_tb_end_text]
    [endif]
    *selfEsthe01_4_3
    [tb_start_text mode=3 ]
    #
    みおの弁解は耳に入らなくなっていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0030.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    だめ……って言ってるのにぃ、っ[r]
    やっ、っくあぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおおっきな手、つかまれたら[r]
    全部さわられちゃ……んんぅ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    上半身へのマッサージはすでに[r]
    乳房への愛撫に変わっている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    やわらかさと張りを兼ね備えたみおの乳房は[r]
    見かけよりも大きく、重い。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    手のひらにおさまりきるかどうかのところで[r]
    柔肉がぷりぷり踊るように揺れる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふー……あぁぅ、んっ、やぁぁ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    潤滑剤のすべらかさがより官能的な[r]
    肌ざわりをもたらすのか、みおの反応も鮮烈だ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    乳房はぷつぷつと粟立ち、熱を帯びていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    グラデーションを描くようにそれは[r]
    乳房の頂に向かって強まっていく。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ――つまり乳首だ。そこはもう燃え立つごとく、[r]
    赤く硬く尖っていた。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    くりくりしない、っでぇ、[r]
    声、お部屋に自分の声がひびくの恥ずかし……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    硬さをはかるように二指で挟む。[r]
    やわらかい肉の中に硬い芯が通っている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    指の腹で転がすほどに、[r]
    その芯はむくむくと膨らんでいく。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしのちくび、こんなおっきくないのに、なんでぇ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_00351.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    へんですぅ、せんせい、わたしのおっぱいを[r]
    どうしちゃったんですかぁぁ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    これは、どこまで大きく育つのだろう？[r]
    そんな疑問が頭を埋め尽くす。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    指を万力として両の乳首をいじめ潰し、[r]
    それと同時に前へ前へと伸ばしていく。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いた……いたい、のに、どうして……[r]
    いたいのがじんじん気持ちいいのぉ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もっと、もっと痛くされたくて、[r]
    おっぱいいじめられるのうれしくってぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    持ち上げられた乳房が水風船そっくりに[r]
    ぶるんぶるんと跳ね回る。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その重量がさらに乳首をさいなむ刺激となって――[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、いく、いくいく[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱいだけなのに、ちくびいじめられてるだけなのに[r]
    わたしどうしてこんなにイきそうに――[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁ――ッ[r]
    ふああああぁつ、んっ、んおおぉッ！！[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は……あぁぁ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふはぁぁ……♡　はぁー……[r]
    あぁあぁ……あっ、あぁ……♡[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    みおは乳首アクメに達したのだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]
    [fadeoutbgm time="6000"  ]
    [messageInvisible]

    ;記憶したBGMを長めのフェードで再生（回想時はBGM7_holiday.mp3）
    [if exp="!f.flag_replay" ]
        ;BGMフェードアウト停止

        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="massagi1.png"  ]
        ;みお立ち絵、ウェイトナシで　fuanaketojime2tear.png　で表示しておく
        [mioHyoujouSabun hyoujou="fuanaketojime2tear.png" time="0" ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]




        [fadeinbgm storage="&f.lastBGM" time="6000" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0043.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……うぅ～[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        諸々を終えて店を出たところで、[r]
        みおがぽかぽかとこちらの胸板に手をあててくる。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        叩く、とも言えない軽い感触だ。[p]
        [_tb_end_text]


        ;【プチ分岐】初回
        [if exp="f.selfEsthe.total == 0" ]


            [mioHyoujouSabun hyoujou="okoru2_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0044.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            お、おでかけ中にあんなことするなんて～[p]
            [_tb_end_text]

        [else]

            ;【プチ分岐】２回め以降
            [mioHyoujouSabun hyoujou="okoru2_red.png"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0045.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            またあんなことしてくるなんて～[p]
            [_tb_end_text]

        [endif]

        [mioHyoujouSabun hyoujou="normal_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0046.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        ほんとに恥ずかしかったんですからね、先生[l]
        [_tb_end_text]


        ;選択肢
        ;　でも気持ちよかったでしょ
        ;　ごめんごめん、気をつけるよ
        [glink_left storage="Hscene/selfEsthe01.ks" target="selfEsthe01_5" text="でも気持ちよかったでしょ"]
        [glink_right storage="Hscene/selfEsthe01.ks" target="selfEsthe01_6" text="ごめんごめん、気をつけるよ"]
        [s]
        [s]
        ;-------------------------------
        ;【選択肢分岐】でも気持ちよかったでしょ
        *selfEsthe01_5

        [mioHyoujouSabun hyoujou="komaru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0047.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そ、それは……[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="metoji_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0048.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい……すごく、びりびりして、[r]
        きゅんきゅんしましたけど……[p]
        [_tb_end_text]


        ;　次の共通部へ
        [jump target="selfEsthe01_7" ]
        ;-------------------------------
        ;【選択肢分岐】ごめんごめん、気をつけるよ
        *selfEsthe01_6
        
        [mioHyoujouSabun hyoujou="okoruake_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene9_0049.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        っ……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        もうしない、とは言わないあたりの[r]
        微妙なニュアンスをみおも理解したらしい。[p]
        [_tb_end_text]




        ;　次の共通部へ
        [jump target="selfEsthe01_7" ]
        ;-------------------------------
        ;【共通部】
        *selfEsthe01_7
        [tb_start_text mode=3 ]
        #
        あとは静かになって、[r]
        真っ赤な顔でついてくるのだった。[p]
        [_tb_end_text]


        ;シーン回想の場合、ここで終了
        [setreplay name="esthe" storage="replay_select.ks" target="select_esthe"]

        ;みお性経験加算
        ;　開発度乳房+1，開発度乳首+1、絶頂数乳首+1
        [eval exp="f.tikubiTotalOrgasm++" ]
        [eval exp="f.tikubi++" ]
        [eval exp="f.bust++" ]
        [eval exp="f.selfEsthe.total++" ]
        [eval exp="f.selfEsthe.today = true" ]
        
    [endif]
    ;本編からの場合、イベント終了して元のデートに合流

[endmacro]