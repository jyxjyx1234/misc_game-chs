[macro name="rotorCli01" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;＜ピンクローター（クリ）：初回＞
    ;開始パターン１・２とありますが、現状では１の導線しか存在しません。
    ;パターン２も一応消さずに残しつつ、処理の流れとしてはパターン１を通って共通部に進むルートのみ
    ;設定しておいてください。


    ;まずはADVパート画面を維持してそのまま進行
    ;シーン回想からスタートの場合、開始地点はもっと下の方。
    [messageON]
    [if exp="f.flag_replay" ]
        [jump target="rotorCli01_4" ]
    [endif]
    ;---------------------------------------
    ;■開始パターン１：通常（先生が頼みこんで）
    [if exp="parseInt(mp.type) == 1 || mp.type == undefined" ]
        *rotorCli01_1
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あのう、そのう……[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        ロータークリ責めを承諾したみおだったが、[r]
        その後も歯切れ悪そうにしていた。[l]
        [_tb_end_text]

        [glink_center storage="Hscene/rotorCli01.ks" target="rotorCli01_2" text="なにか気になることとか？"]
        [s]
        *rotorCli01_2

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱりいやです、ってわけではないんですけど、[r]
        あのー……[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし、えっちなこととか、[r]
        ぜんぶ先生がはじめてで……[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生が触ってくれるうちにその場所で[r]
        どんどん感じられるようになるわけなんですが[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        うんうん。開発とはそういうものだな。[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        クリ……トリスは、あの、最初から[r]
        敏感なほう、だったと思うので[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        女の子の身体はみんなそういうものだと[r]
        思ったけれど……？[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だからそのぉ……ローターのぶるぶる、[r]
        わたしでもすぐにイっちゃうと思うんです[p]
        [_tb_end_text]


        ;　→本編へ
        [jump target="rotorCli01_4" ]
    ;---------------------------------------
    ;■開始パターン２：睡眠薬などで、みおが寝てはいないけど意識がはっきりしない状態になり、なしくずしに
    [elsif exp="parseInt(mp.type) == 2" ]
        *rotorCli01_3

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あのう～、せんせぇ～[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そのおもちゃでわたしがイくのが[r]
        見たいんだと思うんですが[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        意識がハッキリしてくるのが比較的早いのか[r]
        わりといつもの様子に近いみおだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        その上で、なにか不安がっているようだが……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        クリトリスは敏感なので[r]
        わたしイきそうなのがまんとか多分むりで[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それで、あのぉ……[p]
        [_tb_end_text]

        ;　→本編へ

    [endif]
    ;---------------------------------------
    ;■本編
    *rotorCli01_4
    [tb_start_text mode=3 ]
    #
    なるほど――見えてきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ローターでイくところを見せて欲しい、[r]
    みたいなプレイだとすぐに終わってしまうのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおはそれを心配というか、[r]
    こちらがそれでよいのか確認しているわけだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    確かにそうだなぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    せっかく口説き落として得た機会、[r]
    なにか考えなくてはおもしろくないな。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/rotorCli01.ks" target="rotorCli01_5" text="わかった、工夫しよう"]
    [s]
    *rotorCli01_5

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、ありがとうございます[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……工夫？[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all time="1" ]
    [image layer="3" storage="../bgimage/bk100.jpg" time="1" name="bkcg" visible="true" ]
    ;立ち絵消去
    ;スチルとしても【bk100】を表示しておく
    [wait  time="500"  ]
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
    [wait  time="500"  ]
    [maskStart]
        ;[addTime minutes=30]
        ;現在時刻に合わせた居間背景（シーン回想の場合は夜）
        [bgcheck bgm="false"]
        [free layer="3" name="bkcg" ]
        [wait  time="500"  ]
    [maskEnd]
    [messageON]

    ;ローターが震えるＢＧＳがうっすら鳴り続けている

    [tb_start_text mode=3 ]
    #
    ――そろそろ30分ぐらい経つ。[r]
    仕上がったころだろうか。[p]
    [_tb_end_text]


    [bgChange time="1000"  method="crossfade"  storage="dr_m.jpg"  cond="f.dayPart == 'morning' || f.dayPart == 'evening'" ]
    [bgChange time="1000"  method="crossfade"  storage="dr_n.jpg"  cond="f.dayPart == 'night'" ]
    ;↓のボイスをテキストなしでＳＥ的に再生

    ;みお
    ;（ループはしないがＢＧＳ的なボイスとして、
    ;　ガムテープで口をふさがれてロータークリ責め放置プレイをされて
    ;　うめいている長めの苦悶のあえぎ声）※口枷ありとナシの２バージョンを用意

    [glink_center storage="Hscene/rotorCli01.ks" target="rotorCli01_6" text="みお～"]
    [s]

    *rotorCli01_6
    [playse  volume="100"  time="1000"  buf="1"  storage="se/huroake.mp3"  ]


    [fadeinbgm storage="BGM6_violence.mp3" time="6000" ]

    ;スチル切替【01】全裸でガムテ拘束の上、クリにローターを固定されているみお。口もガムテ、目はアイマスク。
    [setRotorCliCG cg="01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0018_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ！　っ！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0019_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今外すからね、と声をかけながら[r]
    目と口の拘束を解いてやる。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setRotorCliCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0020_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――っはぁ、はっ、はぁ[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setRotorCliCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0021_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あ゛っ、おおぁっ、せんっ、せ、[r]
    これ、こっちも外して……くださ……[l]
    [_tb_end_text]

    [glink_left storage="Hscene/rotorCli01.ks" target="rotorCli01_7" text="イった回数、ちゃんと数えてた？" ]
    [glink_right storage="Hscene/rotorCli01.ks" target="rotorCli01_8" text="ワガママ言える立場だっけ？" ]
    [s]

    ;---------------------------------
    ;分岐【選択肢】イった回数、ちゃんと数えてた？
    *rotorCli01_7
    ;スチル切替【02】
    [setRotorCliCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0022_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そん、なのっ、わかんないくらい、[r]
    何回も、ずっと……んんっ[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setRotorCliCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0023_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    また、ああっ、またイっ……[r]
    外して、外してくださいっ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="rotorCli01_9" ]
    ;---------------------------------
    ;分岐【選択肢】ワガママ言える立場だっけ？
    *rotorCli01_8
    [tb_start_text mode=3 ]
    #
    自分がしたのは放置している間、[r]
    クリイキの回数を数えなさい、という命令だ。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setRotorCliCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0024_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そっ、それは……ごめんな、さ……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setRotorCliCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0025_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でもこんなのっ、イくたびに頭まっしろで[r]
    数えてなんかいられなっ、あっ、また、あぁっ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="rotorCli01_9" ]
    ;---------------------------------
    ;【共通部】
    *rotorCli01_9
    ;スチル切替【05】
    [setRotorCliCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0026_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ――～～……っ！　っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    人が話してる途中でクリイキするなんて[r]
    いくらなんでも失礼すぎる。[l]
    [_tb_end_text]


    ;スチル切替【01】
    [setRotorCliCG cg="01" time="300"]

    [glink_center storage="Hscene/rotorCli01.ks" target="rotorCli01_10" text="また来るから、数えなおしてね" ]
    [s]
    *rotorCli01_10
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0027_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ンム～～っ！　ムググーっ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    足音を立て、室内からは出ずに[r]
    音高く扉を閉める。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0028_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ、っ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0029_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、ううぅ、うっ……うぐぐぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおはまたひとりで放置されたものと[r]
    思い込んでくれたようだ。[p]
    [_tb_end_text]

    ;最初のみおボイスを適宜SEかBGVとして再生しつつ進行

    [tb_start_text mode=3 ]
    #
    目や口の覆いにじわじわと涙やよだれの[r]
    染みが広がっていく。[p]
    [_tb_end_text]
    ;※表現はスチルの仕上がりに合わせて調整


    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" time="500" name="bkcg" visible="true" ]

    [tb_start_text mode=3 ]
    #
    ……みおのことはだいじに思っているし、[r]
    自分にさほどのＳＭ趣味はないと考えていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが――……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――こ、こんなことまでするんですか？[p]
    [_tb_end_text]
    ;（回想としての台詞）

    [tb_start_text mode=3 ]
    #
    ――みおがローターだと暴れたり[r]
    叫んだりしちゃうかも、って言うからさ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……そんなやりとりをし、ふざけ半分で[r]
    ガムテープを持ち出した時。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    頭の奥の方がかーっと熱くなって、[r]
    未知の感情のまま、みおを“こう”していた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いとおしく思うからこその嗜虐であり、[r]
    涙ながらに喘ぐみおは美しかった。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setRotorCliCG cg="06" time="1"]
    [free layer="3" name="bkcg" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0031_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぅ……うぁうぅ～……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0032_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、んんっ、んあああぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    大きな身もだえがあり、[r]
    みおはぐったりと虚脱した。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それから、ちろちろ音がする。[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setRotorCliCG cg="07" time="300"]

    [tb_start_text mode=3 ]
    #
    みおはクリアクメをキメながら[r]
    失禁していたのだった。[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setRotorCliCG cg="08" time="300"]

    [tb_start_text mode=3 ]
    #
    暴れた拍子に目隠しなどは剥がれ落ち、[r]
    みおもこちらに気づく。[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setRotorCliCG cg="09" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0033_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……せん、せ……[r]
    ごめんな、さ……[p]
    [_tb_end_text]


    ;スチル切替【10】
    [setRotorCliCG cg="10" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0034_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、お風呂でおもらし、しちゃ……[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setRotorCliCG cg="11" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0035_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もうこどもじゃないのに、おまた、[r]
    ばかになっちゃってごめんなさいぃ……[l]
    [_tb_end_text]

    [glink_left storage="Hscene/rotorCli01.ks" target="rotorCli01_12" text="罰としてもう少し放置する" ]
    [glink_right storage="Hscene/rotorCli01.ks" target="rotorCli01_13" text="最後の仕上げにかかる" ]
    [s]
    ;　※「もう少し放置」で展開がちょっと長くなり、そっから「仕上げ」の途中へ合流する


    ;-----------------------------------------
    ;分岐【選択肢】罰としてもう少し放置する
    *rotorCli01_12

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0036_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっ、やだぁ、いかないでっ、[r]
    せんせいっ、おいてかないでぇっ[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setRotorCliCG cg="08" time="300"]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/hurosime.mp3"  ]
    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" time="300" name="bkcg" visible="true" ]

    ;口枷なしverのBGV的あえぎをSEとして再生

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        ;スチルもいちど全消去し、改めてスチルとして【bk100】をおいておく
        [addTime minutes=30]
        [free layer="2" name="still" ]
        [free layer="3" name="bkcg" ]
        [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/huroake.mp3"  ]
    ;スチル切替【11】
    [setRotorCliCG cg="11" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0037_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、あぁ、あおっ、んんっ……[r]
    んんー……っ、あぅぁぁ……[p]
    [_tb_end_text]

    ;ボイスの加減次第では口の覆いが取れちゃってるとか書き足す


    ;　★合流部　へジャンプ
    [jump target="rotorCli01_13" ]

    ;-----------------------------------------
    ;分岐【選択肢】最後の仕上げにかかる
    *rotorCli01_13
    ;★合流部

    [tb_start_text mode=3 ]
    #
    ……そうだな、もういいだろう。[p]
    [_tb_end_text]

    ;いちど暗転＆暗転解除。暗転中にスチルを瞬間切り替え【12】
    [maskStart]
        [wait  time="500"  ]
        [setRotorCliCG cg="12" time="1"]
    [maskEnd]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0038_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setRotorCliCG cg="13" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0039_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……せん、せ……[r]
    せんせいだぁ……[p]
    [_tb_end_text]

    ;スチル切替【12】
    [setRotorCliCG cg="12" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0040_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、ぁぅ……せんせい、[r]
    わたし、わかったんです……[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setRotorCliCG cg="13" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0041_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせいがとってもやさしい、ってこと[r]
    あっ、イく……ずっとイってる、んぁんっ……[p]
    [_tb_end_text]

    ;スチル切替【09】
    [setRotorCliCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0042_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んん、おぐぁ……先生が、[r]
    その気になればいつでもこう、できるのに[p]
    [_tb_end_text]


    ;スチル切替【13】
    [setRotorCliCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0043_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    普段はそんなこと、しないじゃないですか[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setRotorCliCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0044_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それは、んぁぅ、とっても……[r]
    やさしいことだったんだな、って……えへへ……[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setRotorCliCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0045_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁっ……う、うぅふ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    返事の代わりに[r]
    膣へ手指をぶちこんでやる。[p]
    [_tb_end_text]


    ;スチル切替【14】
    [setRotorCliCG cg="14" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0046_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は――ぇ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いきなりトップスピードで[r]
    膣壁をこそぎ上げる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手のひらでは恥丘を押しつぶし、[r]
    クリがローターにより密着するように。[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setRotorCliCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0047_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    クリトリスっ、つぶれてっ、[r]
    ひぃっ、つぶされながらしびれてぇっ[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setRotorCliCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0048_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぶるぶる、してるのがぁっ、[r]
    おなかの奥までひびくのっ[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setRotorCliCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0049_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひっ、ひぃぁっ、あぁあぁ、また、[r]
    ごめっ、なさ……っ、んひぁぁぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手のひらに熱い感触――[r]
    また失禁をしているようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    出し尽くせとばかりに膀胱のあたりを[r]
    指の腹で撫で潰す。[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setRotorCliCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0050_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やぁっ、んやぁっ、イってる、[r]
    イってるのぉっ[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setRotorCliCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0051_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これぇっ、このままじゃあ出ちゃう、[r]
    イきながらおしっこ出しちゃっててぇっ[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setRotorCliCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0052_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    クリもおまんこもおかしくなってする[r]
    おしっこきもちいいのぉっ、んあああっ[l]
    [_tb_end_text]

    ;一択選択肢：もっと出せっ、出し尽くせっ
    [glink_center storage="Hscene/rotorCli01.ks" target="rotorCli01_14" text="もっと出せっ、出し尽くせっ"]
    [s]
    *rotorCli01_14
    ;絶頂演出、
    ;スチル切替【19】
    [setRotorCliCG cg="19" time="300" zettyou="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0053_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいっ、はいぃぃっ、[r]
    んやあああぁぁあぁ～～――っ！！[p]
    [_tb_end_text]


    ;スチル切替【20】
    [setRotorCliCG cg="20" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0054_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あおぁぁ……っ、[r]
    お、おおぅぅ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0055_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ま、またおもらし……こんなに、[r]
    たくさぁん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    浴室の天井にさえ届きそうなほどの噴射。[r]
    溜めに溜めた潮吹きだった。[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setRotorCliCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0056_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……うっ、おおっ、ぁ……[p]
    [_tb_end_text]


    ;スチル切替【22】
    [setRotorCliCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0057_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お、おしおき……[r]
    ありがとう、ございました……[p]
    [_tb_end_text]


    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" time="300" name="bkcg" visible="true" ]

    [tb_start_text mode=3 ]
    #
    こちらの服までびしゃびしゃだ。[r]
    着替えついでに軽くシャワーを浴びなくては。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……みおの拘束を解くのは[r]
    その後でいいだろう。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    ;暗転していくなかで例のボイスをまたＳＥ的に使い続ける
    [messageOFF]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [free layer="2" name="still" ]
    [free layer="3" name="bkcg" ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]




    ;シーン回想の場合、ここで終了
    [if exp="!f.flag_replay" ]

        ;性経験加算
        ;　露出調教+1、絶頂数陰核+5、開発度陰核+5
        [eval exp="f.masochism++" ]
        [eval exp="f.cuntTotalOrgasm+=5" ]
        [eval exp="f.cunt+=5" ]

        ;みお体力-40
        [calcMioHP HP="-40"]

        ;後は適当なテキストをつけて一日終了
        [eval exp="f.todayEnd = true" ]
    [endif]


    [setreplay name="pinkrotorCli001" storage="replay_select.ks" target="rotorCli_select"]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[endmacro]