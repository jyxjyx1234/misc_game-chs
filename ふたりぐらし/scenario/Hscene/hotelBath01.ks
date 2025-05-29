[macro name="hotelBath01" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    [if exp="f.loveHo.bath.total == 0" ]

        [if exp="f.flag_replay" ]
            [bgChange storage="bk100.jpg" time="500"]
            [messageON]
            [tb_start_text mode=3 ]
            #
            みおを誘い、ラブホの浴室をのぞくことにした。[p]
            [_tb_end_text]

            [jump target="hotelBath01_5" ]
        [endif]

        ;＜ラブホテル（の）お風呂（場での）シャワー（シチュ）＞■段階１
        ;※シーン回想からのスタート地点はもっと下の方にあります
        *hotelBath01_1

        ;「まずはお風呂」選択肢を押下したらここに来る（段階１既読なら段階２に）



        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [takeBath]
        [mioTakeBath]
        [chara_hide_all time="1" ]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        ;スチル瞬間消去（ホテル座りのスチルが表示されているはずなので）
        [free layer="1" name="still" ]
        [free layer="2" name="still" ]
        [free layer="3" name="still" ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;適当な背景素材がないので、まっくら状態で会話を進める

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おぉ～……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こういうところはお風呂場も凝ってて[r]
        こう、カッコイイですね[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        カッコイイとは、[r]
        みおが使うにはかなり珍しい表現だった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まあでも言いたいことはわかる。[r]
        生活感がないというか、未来感があるというか。[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        とにかくなんだか良さげな感じなのだ。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ジャグジーとかライティングとか[r]
        あちこちボタンがたくさんです[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        レジャー施設に来たような気分で、[r]
        情事の前の風情は飛んで行ってしまった。[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        ……と、思いきや。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あれ……？[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0005.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        お風呂がおおきいのはいいですけど、[r]
        お湯が溜まるの、時間かかります……？[l]
        [_tb_end_text]


        [glink_left text="そうかも" storage="Hscene/hotelBath01.ks" target="hotelBath01_2"]
        [glink_right text="ふたりで入るものだから" storage="Hscene/hotelBath01.ks" target="hotelBath01_3"]

        [s]
        ;---------------------------------
        ;【選択肢】そうかも
        *hotelBath01_2
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お湯少ないうちに入っても[r]
        寒いですしね[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        湯舟を使いたければホテルに来てすぐ[r]
        お湯を張りにいくもの――なんだろうか？[p]
        [_tb_end_text]

        ;　次の共通部へ
        [jump target="hotelBath01_4" ]
        ;---------------------------------
        ;【選択肢】ふたりで入るものだから
        *hotelBath01_3
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ、あぁー……[r]
        なるほど[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        人間ふたり入っていれば、その体積のぶん[r]
        お湯は少なめでも浴槽はいっぱいになる。[p]
        [_tb_end_text]

        ;　次の共通部へ
        [jump target="hotelBath01_4" ]
        ;---------------------------------
        ;【共通部】
        *hotelBath01_4
        [tb_start_text mode=3 ]
        #
        浴槽自体の形にも工夫を感じる。[r]
        きっと少ない水量でなみなみになるのだろう。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まあ“行為”の前の入浴なら[r]
        ふつうはシャワーでサッとだな。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そ、そう、なんですね……[r]
        わたし、ふべんきょうなもので……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        不勉強でない方が問題だろうと思いつつ、[r]
        先にシャワーをいただくことにした。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        緊張しているようだったし、[r]
        みおには部屋で待っていてもらうよう告げた。[p]
        [_tb_end_text]


        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        ;bgs/shower.mp3　をSEとして再生
        [playse storage="BGS/shower.mp3" buf="1" ]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
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


        ;シーン回想の場合、ここからスタート。bk100背景、立ち絵なし。
        *hotelBath01_5

        [playse  volume="100"  time="1000"  buf="1"  storage="se/refrig_open.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #
        ……ドアの音？[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お、お邪魔します……っ[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/touch3.mp3"  ]
        ;スチル表示【01.png】
        [hotelBathCG cg="01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あの、あのあのっ[p]
        [_tb_end_text]


        ;スチル切替【02.png】
        [hotelBathCG cg="02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せっかくの休日にデートに誘ってもらって[r]
        こんな場所まで連れてきてもらって[p]
        [_tb_end_text]

        ;スチル切替【03.png】
        [hotelBathCG cg="03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし、先生にいっぱい色々してもらって[p]
        [_tb_end_text]

        ;スチル切替【02.png】
        [hotelBathCG cg="02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ここまで来たんだから、恥ずかしいからって[r]
        受け身じゃ無くてお返ししないとって、思って……[p]
        [_tb_end_text]

        ;スチル切替【04.png】
        [hotelBathCG cg="04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        来ちゃいました……[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        来ちゃったのか。[p]
        [_tb_end_text]



        [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

        ;スチル切替【01.png】
        [hotelBathCG cg="01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0015.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        それで、そのう、ここがかゆいとか[r]
        洗ってほしいところとか……ありますか？[l]
        [_tb_end_text]

        *hotelBath_select
        [glink_left text="おちんちんをよく洗って" storage="Hscene/hotelBath01.ks" target="hotelBath01_6"]
        [glink_right text="みおの身体を押しつけて" storage="Hscene/hotelBath01.ks" target="hotelBath01_7"]
        [s]

    [else]
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;＜ラブホテル（の）お風呂（場での）シャワー（シチュ）＞■段階２
        ;※シーン回想からのスタート地点はもっと下の方にあります
        *hotelBath02_1
        [if exp="f.flag_replay" ]
            [bgChange storage="bk100.jpg" time="500"]
            [jump target="hotelBath02_2" ]
        [endif]

        ;「まずはお風呂」選択肢を押下し、段階１既読なら段階２になる

        ;ホテル座りのスチルが表示されている状態なので、
        ;fuan_redのみお立ち絵を瞬間表示してからスチルをフェード消去
        [mioHyoujouSabun hyoujou="fuan_red.png" time="1"]
        [free layer="1" name="still" time="1000" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0035.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先にシャワー浴びて待っていてもらえますか？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        みおのお願い通り、[r]
        先にシャワーを浴びはじめることとした。[p]
        [_tb_end_text]



        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        ;bgs/shower.mp3　をSEとして再生
        [playse storage="BGS/shower.mp3" buf="1" ]
        [chara_hide_all time="1" ]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
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

        ;シーン回想の場合、ここからスタート。bk100背景、立ち絵なし。
        *hotelBath02_2

        [playse  volume="100"  time="1000"  buf="1"  storage="se/refrig_open.mp3"  ]

        ;スチル表示【04.png】
        [hotelBathCG cg="04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0036.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お邪魔します[r]
        今回も来ちゃいました[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        うん、せっかくのラブホテルだし、[r]
        事前のいちゃいちゃも楽しまなくてはな。[p]
        [_tb_end_text]



        [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

        ;スチル表示【01.png】
        [hotelBathCG cg="01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0037.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        今回はどうしてほしいですか？[l]
        [_tb_end_text]

        [jump target="hotelBath_select" ]
        [s]

    [endif]
    ;-----------------------
    ;【選択肢】おちんちんをよく洗って
    *hotelBath01_6
    [if exp="f.loveHo.bath.scene1 == 0" ]

        ;スチル切替【02.png】
        [hotelBathCG cg="02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おちんち……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        これから触れ合わせることになるだいじな場所だ。[r]
        きれいに洗わなくては――と説明する。[p]
        [_tb_end_text]

        ;スチル切替【01.png】
        [hotelBathCG cg="01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わかりました[r]
        ボディタオルとかは――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そこは慌てて制止して[r]
        泡立てたみおの手でお願い、と告げる。[p]
        [_tb_end_text]

        ;スチル切替【02.png】
        [hotelBathCG cg="02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あわあわとわたしの手だけでするんですね[r]
        そういうものですか[p]
        [_tb_end_text]


        ;スチル切替【05.png】
        [hotelBathCG cg="05"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それでは失礼します[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

        [tb_start_text mode=3 ]
        #
        ……！[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        遠慮がちに巻きつけられたみおの手が[r]
        やさしく腹部を撫でながら股間へ降りてくる。[p]
        [_tb_end_text]


        ;スチル切替【06.png】
        [hotelBathCG cg="06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生お肌すべすべ[r]
        うらやましいぐらいです[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        などと雑談する間に、みおの手が[r]
        半勃ちのペニスに触れる。[p]
        [_tb_end_text]

        ;スチル切替【07.png】
        [hotelBathCG cg="07"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0021.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        っ……こ、これですね……[r]
        あ、洗いますよ[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        自分にない器官、洗い方などわからないだろうに[r]
        細心の注意でもって包み、撫で、揉んでくる。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        得も言われぬ心地よさに腰砕けになりそうだ。[p]
        [_tb_end_text]

        ;スチル切替【06.png】
        [hotelBathCG cg="06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        下の方、こっちからじゃ届かないので[r]
        おしりの方から回り込んで洗いますね？[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]


        [tb_start_text mode=3 ]
        #
        と――みおの白魚のような手が、[r]
        尻から竿までをくぐり抜けていく。[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        みおの無自覚なアナルへの刺激で[r]
        ペニスも一気に最硬度へと張り詰める。[p]
        [_tb_end_text]


        ;スチル切替【08.png】
        [hotelBathCG cg="08"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        びくびく、してますね[r]
        洗ってるだけなのにこんなにして……[p]
        [_tb_end_text]

    [else]

        ;-----------------------
        ;【選択肢】おちんちんをよく洗って

        ;　※注：ゲーム中、ここに来るのがはじめての場合は、段階１の同選択肢部分へジャンプ
        ;　　段階１の同選択肢内容が既読の上で、再度ここに来た場合の展開は下記（回想再生で段階２指定の場合は↓）
        *hotelBath02_3
        ;スチル切替【04.png】
        [hotelBathCG cg="04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0038.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わかりました[p]
        [_tb_end_text]

        ;スチル切替【05.png】
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これからがんばってもらうおちんちんさん、[r]
        きれいきれいしましょうね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

        [tb_start_text mode=3 ]
        #
        委細承知したとばかりに泡立てた手を[r]
        こちらの腹に回してくる。[p]
        [_tb_end_text]


        ;スチル切替【06.png】
        [hotelBathCG cg="06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0040.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        男のひとのからだ……[r]
        骨とか筋肉でがっちりしてますね[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ヌルヌルの十指がゆるゆる降りてきて[r]
        腿の付け根をくすぐり洗う。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        うぅ……っ、たまらん……！[p]
        [_tb_end_text]


        ;スチル切替【08.png】
        [hotelBathCG cg="08"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        起き上がってきたペニスが[r]
        泡の雲からものほしげな顔を出す。[p]
        [_tb_end_text]

        ;スチル切替【06.png】
        [hotelBathCG cg="06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0042.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、たまたまから洗いましょうね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]


        [tb_start_text mode=3 ]
        #
        あえて竿をスルーし、腕は前後に回って[r]
        睾丸やアナルへと触れてくる。[p]
        [_tb_end_text]

        ;スチル切替【08.png】
        [hotelBathCG cg="08"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0043.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぬるぬる、ごしごし[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        焦らされた竿は腹に付きそうなぐらいに[r]
        鋭く勃起を持ち上げていく。[p]
        [_tb_end_text]

        ;スチル切替【06.png】
        [hotelBathCG cg="06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0044.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こっちも、お待たせしました[r]
        にぎにぎ洗っていきましょうね[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        泡まみれの手で作られた肉の輪が[r]
        ペニスを包む。[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        洗っているのか手コキしているのか[r]
        わからない甘美な責め苦だ。[p]
        [_tb_end_text]

        ;スチル切替【07.png】
        [hotelBathCG cg="07"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0045.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        すごい……[r]
        泡まみれなのに熱くてがちがち……[p]
        [_tb_end_text]

    [endif]

    [eval exp="f.loveHo.bath.scene1++" ]
    [eval exp="f.loveHo.bath.scene1Today++" ]
    ;次の共通部へ
    [jump target="hotelBath01_8" ]

    ;-----------------------
    ;【選択肢】みおの身体を押しつけて
    *hotelBath01_7
    [if exp="f.loveHo.bath.scene2 == 0" ]
        ;スチル切替【02.png】
        [hotelBathCG cg="02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0024.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしのからだを、先生にぐりぐり……ですか？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ハテナを浮かべるみおだった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        洗体プレイみたいなお願いなので無理もないと、[r]
        細かく説明をした。[p]
        [_tb_end_text]

        ;スチル切替【09.png】
        [hotelBathCG cg="09"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0025.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ソープをもっと泡立てて……[r]
        じぶんの身体に、ん、んん……っと[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]


        ;スチル切替【10.png】
        [hotelBathCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0026.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        雲に入ったみたいです[p]
        [_tb_end_text]

        ;スチル切替【11.png】
        [hotelBathCG cg="11"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0027.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それじゃあヌルヌルでくっついていきますね[p]
        [_tb_end_text]

        ;スチル切替【10.png】
        [hotelBathCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0028.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぴとっ[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        すべすべのみおの肌が密着して、[r]
        肉や骨の起伏が感じとれるほどだ。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

        [tb_start_text mode=3 ]
        #
        ソープの泡が滑りをよくして、[r]
        ただくっついているだけで動きを生む。[p]
        [_tb_end_text]

        ;スチル切替【12.png】
        [hotelBathCG cg="12"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0029.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        んっ、ふふっ、ぬるぬるですね[p]
        [_tb_end_text]

        ;スチル切替【13.png】
        [hotelBathCG cg="13"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0030.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、きもちいいですか？[p]
        [_tb_end_text]

        ;スチル切替【14.png】
        [hotelBathCG cg="14"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0031.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしもこれ、んっ、ぁぁ……っ[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        背中に感じるみおの乳房がぐにぐにと[r]
        たわんで形を変える。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        押しつぶされて転がされるみおの乳首が[r]
        だんだん硬くなっていくのさえ感じとれる。[p]
        [_tb_end_text]

        ;スチル切替【15.png】
        [hotelBathCG cg="15"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0032.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はぅ、んん……せん、せ……[p]
        [_tb_end_text]

    [else]

        ;【選択肢】みおの身体を押しつけて

        ;　※注：ゲーム中、ここに来るのがはじめての場合は、段階１の同選択肢部分へジャンプ
        ;　　段階１の同選択肢内容が既読の上で、再度ここに来た場合の展開は下記（回想再生で段階２指定の場合は↓）
        *hotelBath02_4

        ;スチル切替【03.png】
        [hotelBathCG cg="03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0038.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わかりました[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]


        ;スチル切替【09.png】
        [hotelBathCG cg="09"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0046.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        まずは自分をあわあわにして――[p]
        [_tb_end_text]

        ;スチル切替【11.png】
        [hotelBathCG cg="11"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0047.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしも身体をきれいにできて[r]
        一石二鳥です[p]
        [_tb_end_text]

        ;スチル切替【10.png】
        [hotelBathCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0048.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それじゃあ、先生に……ぎゅうー……っ[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        小さな女の子の身体が密着してくる。[r]
        あたたかく、やわらかい。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        触れ合う肌の間で[r]
        パチパチと泡の弾ける刺激が心地よい。[p]
        [_tb_end_text]


        ;スチル切替【12.png】
        [hotelBathCG cg="12"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0049.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        背伸びするみたいにこすりつけて……[r]
        ん……んぅっ……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

        ;スチル切替【13.png】
        [hotelBathCG cg="13"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0050.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生のせなか……おっきくて[r]
        わたしじゃ全部とどかない、かも……っ[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        後ろ抱きだからよくは見えないが、[r]
        背中の感覚でみおの身体がよくわかる。[p]
        [_tb_end_text]



        [tb_start_text mode=3 ]
        #
        大きな胸と尖りはじめた乳首の感触、[r]
        下腹部の艶めかしい曲線――[p]
        [_tb_end_text]


        ;スチル切替【12.png】
        [hotelBathCG cg="12"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおのボディラインの美しさが、[r]
        視覚に頼らないからこそ感じとれる。[p]
        [_tb_end_text]


        ;スチル切替【13.png】
        [hotelBathCG cg="13"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0051.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        身体を押し付け合ってるだけなのに[r]
        すっごく、きもちよくて……ふぁぁ……[p]
        [_tb_end_text]


    [endif]
    [eval exp="f.loveHo.bath.scene2++" ]
    [eval exp="f.loveHo.bath.scene2Today++" ]
    ;次の共通部へ
    [jump target="hotelBath01_8" ]

    ;-------------------------------------------------
    ;【共通部】

    ;先生とみお、ともに体力回復+20
    ;bgs/shower.mp3　をSEとして再生
    *hotelBath01_8
    [calcHP HP="20"]
    [calcMioHP HP="20"]
    [playse storage="BGS/shower.mp3" buf="1" ]


    ;スチル切替【16.png】
    [hotelBathCG cg="16"]
    [tb_start_text mode=3 ]
    #
    ……潮時だな、と[r]
    シャワーをまた浴びて泡を落とす。[p]
    [_tb_end_text]



    [tb_start_text mode=4 ]
    #
    みおもノってきたようだし、[r]
    これ以上は暴発の危険もあるし――[l]
    [_tb_end_text]

    [glink_center text="そろそろ、ベッドに行こうか" storage="Hscene/hotelBath01.ks" target="hotelBath01_9"]
    [s]
    *hotelBath01_9
    ;スチル切替【17.png】
    [hotelBathCG cg="17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、はい[p]
    [_tb_end_text]

    ;スチル切替【16.png】
    [hotelBathCG cg="16"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene2_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よろしく、お願いします……[p]
    [_tb_end_text]

    ;シーン回想の場合、ここで終了


    [fadeoutbgm2 time="6000" ]

    ;みお性経験加算
    ;　みおから迫って+1
    [eval exp="f.malerape++" ]

    ;イベント終了。暗転、暗転中に30m経過、暗転解除でハダカ状態のみおがベッドに寝転んでいるおさわりパートを開始。
    [if exp="!f.flag_replay" ]
        [maskStart]
            [free layer="2" name="still" ]
            [addTime minutes="30"]
    [endif]
    [setreplay name="loveho3" storage="replay_select.ks" target="hotelBath_select"]

[endmacro]