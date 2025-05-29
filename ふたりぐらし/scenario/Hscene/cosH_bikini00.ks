[macro name="cosHBikini00" ]
    [if exp="f.flag_replay" ]
        [CGSet layer="1" storage="EVcg/loveHotel/02_3_sitagi.png" time="1" name="still,loveho03"]
        [maskEnd]
    [endif]
    ;本編からの場合はラブホ寝そべりスチルのなにがしかの状態でここに来る。すでにBGMもオフになっている。
    
    ;シーン回想の場合、ここから発生。
    ;　→立ち絵なし、BGMオフ。ラブホ寝そべりスチルの「02_3_sitagi.png」を表示。
    [messageON]

    [tb_start_text mode=3 ]
    #
    今回はマイクロビキニを着てもらおう！[p]
    [_tb_end_text]


    ;この後本来は寝そべりスチルの表情変化があるけど、今はいったん後回し
    [if exp="f.cosH.bikini.total == 0" ]
        ;プチ分岐：初回
        [setLoveHotelHyoujou cg="f08_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ビキニっていうか、これヒモ……[p]
        [_tb_end_text]

    [else]
        ;プチ分岐：２回め以降
        [setLoveHotelHyoujou cg="f03_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]

    [endif]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    ;スチルとして【bk100】表示
    ;下で寝そべりスチルはすべて消去しておく（実際にはベースと表情で複数レイヤー食っている想定で）
    [setBK time="500"]
    [free layer="1" name="still" ]
    [free layer="2" name="still" ]
    [free layer="3" name="&f.lastLoveHotelCG" ]
    [tb_start_text mode=3 ]
    #
    着替えを見られるのは恥ずかしいそうで、[r]
    廊下で待機することになった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅーん……[r]
    どっちが上下かもわかんない……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こっちが上で……[r]
    自分で結んで調整する、てこと……？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    何回やっても迷いそう……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    隠れてないよぉ～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    切れ切れに聞こえてくるみおのつぶやきだけで[r]
    すでに興奮は限界近くまで高まっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    コスプレＨ、独特の感興があるな――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    というかコチラはすでに全裸でバキバキだ。[p]
    [_tb_end_text]

    [if exp="f.cosH.bikini.total == 0" ]

        ;プチ分岐：初回
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、も、もういいですよ[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：２回め以降
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、いいですよ～[r]
        さすがに２回めなので上手にできました[p]
        [_tb_end_text]

    [endif]
    [addTime minutes=10]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    [tb_start_text mode=3 ]
    #
    声をかけられて、部屋に戻る。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]
    [tb_start_text mode=3 ]
    #
    着替え終わったみおを見るなり、[r]
    辛抱たまらず襲いかかった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、先生――ひゃあっ[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    ;■仮スチルとして【01】表示
    [setCosHCG cg="00_01" time="1"]
    [deleteBK time="500"]


    [if exp="f.cosH.bikini.total == 0" ]
        ;プチ分岐：初回
        [setCosHCG cg="00_02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そう、ですよね……こんなかっこうしてたら[r]
        すぐ押し倒されちゃっても……[p]
        [_tb_end_text]
    [else]
        ;プチ分岐：２回め以降
        [setCosHCG cg="00_03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これ着ると先生とっても激しくて……♡[p]
        [_tb_end_text]
    [endif]
    [tb_start_text mode=3 ]
    #
    股間を隠すというより食い込んで強調するだけの[r]
    ビキニの股布にペニスを押しつける。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    張りのある陰唇がぷにぷにと突き出てきて[r]
    押し返す感触がたまらない。[p]
    [_tb_end_text]

    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんな、こすりつけたら……っ[r]
    せっかく着たのにズレちゃいます……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    わずかな布地でさえ、恥部を隠しきれていない[r]
    ふざけた衣装――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だからこそ、女体の痴が強調され、[r]
    そんな服を着させた征服感に震えがくる。[p]
    [_tb_end_text]
    [setCosHCG cg="00_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んやぁぁ……うぅ……[r]
    せん、せぇ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおも首輪をかけられたがごとく従順で、[r]
    奉仕したくてたまらないという顔だ。[p]
    [_tb_end_text]
    [setCosHCG cg="00_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちん、かちこちですよ……？[r]
    シてほしいこと、なにかないですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    股布はしぼれば滴りそうなほど濡れて、[r]
    素股だけでじゅぽじゅぽ激しい水音が立っている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    対面座位のかたちで性器をこすり合わせるうち、[r]
    額どうしが触れそうに近づき、目が合う。[p]
    [_tb_end_text]
    [setCosHCG cg="00_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……ちゅ、ちゅぷ……[p]
    [_tb_end_text]

    [setBK time="500"]
    [tb_start_text mode=3 ]
    #
    自然とディープキスになる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゅ、じゅるるっ、んぱぁ……[r]
    はむぁ、んん……れるぇ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んばぁ……っ、あぷぁ……[p]
    [_tb_end_text]

    [if exp="f.firstKiss.image.id == 0" ]
        ;------------------------------
        ;初キスだった場合、台詞と初体験テキストを追加

        ;初体験テキスト（部位キス、自覚アリ）
        ;素股をしながら卑猥なディープキスをした
        [eval exp="f.firstKiss = addExperience(f.firstKiss,2059,'素股をしながら卑猥なディープキスをした')" ]

        ;追加のみお台詞

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        初キス、だったのに[r]
        こんなえっちなちゅう、しちゃいましたぁ♡[p]
        [_tb_end_text]
    [endif]
    ;------------------------------

    [tb_start_text mode=3 ]
    #
    卑猥な衣装が魔法をかけた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    人が変わったように乱れるみおを[r]
    かき抱いて、全身をなでさする。[p]
    [_tb_end_text]

    [setCosHCG cg="00_04" time="1"]
    [deleteBK time="500"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あんぁっ♡[r]
    ぎゅううってされるの、すきぃ……[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    背中や尻に回した手がビキニの紐に触れている。[r]
    するりと引けば、たちまちみおは全裸になるだろう――[l]
    [_tb_end_text]

    ;選択肢
    ;　ビキニを着せたままプレイを続ける
    ;　ビキニを脱がせ、犯す
    [glink_left storage="Hscene/cosH_bikini00.ks" target="cosHBikini00_1" text="ビキニを着せたままプレイを続ける"]
    [glink_right storage="Hscene/cosH_bikini00.ks" target="cosHBikini00_2" text="ビキニを脱がせ、犯す"]
    [s]

    *cosHBikini00_1
    ;--------------------------------------------
    ;■展開分岐：ビキニを着せたままプレイを続ける

    [tb_start_text mode=3 ]
    #
    せっかく着てもらったんだし、[r]
    脱がすべきではないな。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こんな紐ならば、素股をするうちに[r]
    横へズレらして挿入できてしまうだろう――[p]
    [_tb_end_text]

    ;★下記SE追加
    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    ;★スチル切替【00_02.png】
    [setCosHCG cg="00_02"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、あうんっ[p]
    [_tb_end_text]
    [setCosHCG cg="00_01"]  
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    さきっぽ、押しつけられてますぅ……♡[p]
    [_tb_end_text]
    [setCosHCG cg="00_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおちんちんさんがナカに[r]
    入りたいようってぐりぐりしてきてぇ[p]
    [_tb_end_text]
    ;★下記SE追加
    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    ;★スチル切替【00_04.png】
    [setCosHCG cg="00_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あう、うぅんっ、はふぁぁ……っ[p]
    [_tb_end_text]

    [setBK time="500"]
    [tb_start_text mode=3 ]
    #
    執拗な素股のかたわら、さきほどのように[r]
    またキスをさしはさむ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅ……んむぅ……っぷあ……[r]
    んちゅ……っ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っむ……♡[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おまたもおむねも……[r]
    衣装がスレてじんじんします……[p]
    [_tb_end_text]



    ;★↓タグミス修正してます
    [tb_start_text mode=3 ]
    #
    ビキニの下でみおの乳首が[r]
    かたく尖って、布地を突き破らんばかりだ。[p]
    [_tb_end_text]

    ;★↓タグミス修正してます
    [tb_start_text mode=3 ]
    #
    ふぅーっと湿った息を吹きかける。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあぁぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    着てないようなかっこうなのに、[r]
    かんじんのとこだけ隠れてて……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生からの刺激も布一枚ぶん、[r]
    遠いから、へんなおあずけされてるみたいで……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせぇ、わたし……[r]
    もっと気持ちよくなりたいのぉ……[p]
    [_tb_end_text]

    [setCosHCG cg="00_01" time="1"]
    [deleteBK time="500"]


    [tb_start_text mode=3 ]
    #
    そう言って、みずから股布をずらし、[r]
    みおは濡れそぼった性器をあらわにする。[p]
    [_tb_end_text]


    ;★下記テキスト修正してます
    [tb_start_text mode=3 ]
    #
    たまらず、挿入する。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;★スチル切替【01_02.png】→【01_03.png】
    [setCosHCG cg="01_02" time="300"]
    [wait time="&f.WAIT_TIME" ]
    [setCosHCG cg="01_03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    来た――……ぁ……っ♡[p]
    [_tb_end_text]


    [if exp="f.virgin.image.id == 0" ]
        ;------------------------
        ;これがみおの自覚上の初体験の時、追加で挿入
        [setCosHCG cg="01_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：マイクロビキニ姿のえっちで
        [eval exp="f.virgin = addExperience(f.virgin,2059,'マイクロビキニ姿のえっちで')" ]
        ;------------------------
    [endif]

    [setCosHCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちん、ナカに入ってるの[r]
    はっきり見えます[p]
    [_tb_end_text]
    [setCosHCG cg="01_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごぉい、こんなおっきなおちんちん[r]
    わたしのおまたにおさまっちゃって[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse storage="BGS/piston1.mp3" time="6000" buf="0" loop="true"  ]
    [setCosHCG cg="01_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ずぷずぷって出たり入ったり……あっ、ふぁぁっ[r]
    どんどん速くなるのがっ、びりびりひびいてぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    見ていて不安になるほどみおの腹が[r]
    痙攣しながらペニスを締め付ける。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぐりりりり、と天井あたりに亀頭を押しつけると[r]
    下腹部にくっきりとペニスの形が浮かび上がった。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" buf="0" loop="true"  ]
    [setCosHCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁぁぅ、奥に、ぐりぐりされるともっともっとって[r]
    頭の中ハートだらけになるスイッチがある、みたいっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    奥のスイッチ――精液を注ぎ込むべき子宮口に、[r]
    ペニスの先端が触れているのだ。[p]
    [_tb_end_text]

    [setCosHCG cg="01_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そこ、そこですよぉ、わたしの赤ちゃんのお部屋、[r]
    出しちゃうんですかぁ、先生の白いのぴゅっぴゅっってぇ[p]
    [_tb_end_text]



    [tb_start_text mode=4 ]
    #
    そうだ。それももう、[r]
    次の瞬間には放たれてしまいそうなほどで――[l]
    [_tb_end_text]


    ;一択選択肢　イ――くッ！！
    [glink_center storage="Hscene/cosH_bikini00.ks" target="cosHBikini00_1_1" text="イ――くッ！！"]
    [s]

    *cosHBikini00_1_1
    ;射精演出,ピストンBGS停止
    [stopse buf="0"]
    [setCosHCG cg="01_07" syasei="true"]
    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    来てっ、せいえき、中にたくさん出してぇぇぇぇっ！！[r]
    きゃはああぁぁぁ――っ！[p]
    [_tb_end_text]
    [setCosHCG cg="01_08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……っ、あっ、ふぅぁ……っ、[r]
    どくどく、まだ出続けてますぅ……えへへ……[p]
    [_tb_end_text]

    ;★下記SE追加
    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    ;★スチル切替【01_09.png】
    [setCosHCG cg="01_09"]
    ;★下記テキスト追加してます
    [tb_start_text mode=3 ]
    #
    ……引き抜かれたペニスとその射精量を眺め、[r]
    みおは誇らしそうにするのだった。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]

        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        ;キス+3、開発度口+1、露出調教+1
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm+=2" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.creampie++" ]
        [eval exp="f.creampieToday = true" ]
        [eval exp="f.kiss += 3" ]
        [eval exp="f.mouth++" ]
        [eval exp="f.masochism++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

        ;　→「■終了時の共通部」へジャンプ（ナース服の方に記載）
    [endif]
    [jump storage="Hscene/cosH_bikini00.ks" target="cosHBikini00_end" ]
    ;--------------------------------------------
    ;■展開分岐：ビキニを脱がせ、犯す
    *cosHBikini00_2

    [tb_start_text mode=3 ]
    #
    背面でうごめく指先の意図に、[r]
    みおも気づいた。[p]
    [_tb_end_text]
    [setCosHCG cg="00_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せっかく着せたのに脱がしちゃうんですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    責める調子ではなく、蠱惑的で挑発的に[r]
    みおは問いかけてくる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    うなずくや一気に紐を引き抜いた。[p]
    [_tb_end_text]

    [setCosHCG cg="02_01"]
    [tb_start_text mode=3 ]
    #
    はらりとビキニはほどけ、一糸まとわぬ姿のみおが現れる。[p]
    [_tb_end_text]
    [setCosHCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あーぁ……♡[r]
    とられちゃいました……♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    脱がせる前からわかっていたのに――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ビキニの下からあらわれた勃起乳首と、[r]
    本気汁で濡れたマンコに視線が吸い寄せられた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    紅く尖った乳首やクリトリスのそばには、[r]
    うっすらとビキニの紐跡が見てとれる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それすらも、いやらしくも神々しいもののように、[r]
    輝いて感じられるのだ。[p]
    [_tb_end_text]

    [setCosHCG cg="02_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごい……先生がわたしの身体、[r]
    こんな必死になって見つめてる……[p]
    [_tb_end_text]

    [setCosHCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですよぉ……えっちなビキニ着せられて[r]
    ハダカになるより興奮しちゃったんです[p]
    [_tb_end_text]

    [setCosHCG cg="02_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっちしたくて、おちんちん欲しくて[r]
    たまらなくなっちゃって――[p]
    [_tb_end_text]
    [setCosHCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    乳首もおまんこも、こんなにやらしく[r]
    反応させて待ってるんです[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    耳元に口寄せて、みおはとどめをささやいた。[p]
    [_tb_end_text]
    [setCosHCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――先生がおまんこズッポリ犯してくれるのを[p]
    [_tb_end_text]

    ;挿入演出
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    [setCosHCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふきゅうぅぅぅうっ！？[p]
    [_tb_end_text]
    [setCosHCG cg="02_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、お願いしたら本当におちんちん[r]
    ずぼずぼってぇ、ありがとうっ、ございますぅっ[p]
    [_tb_end_text]

    [if exp="f.virgin.image.id == 0" ]
        ;------------------------
        ;これがみおの自覚上の初体験の時、追加で挿入
        [setCosHCG cg="02_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：マイクロビキニ姿の淫語えっちで
        [eval exp="f.virgin = addExperience(f.virgin,2059,'マイクロビキニ姿の淫語えっちで')" ]

        ;------------------------
    [endif]

    [setCosHCG cg="02_06"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうっ、そうなのぉっ[p]
    [_tb_end_text]

    [setCosHCG cg="02_07"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    着替えてる時から想像してぇ、興奮しててぇっ[r]
    こうしてほしかったんですぅっ[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse storage="BGS/piston1.mp3" time="6000" buf="0" loop="true"  ]

    [tb_start_text mode=3 ]
    #
    濁ったあえぎを放つみおとは対照的に、[r]
    こちらは話すヒマさえほしいと夢中で腰を振る。[p]
    [_tb_end_text]
    [setCosHCG cg="02_04"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、あふぁぁっ、おまんこ押しつぶされてますぅ[r]
    ごりごり子宮に届いててぇっ、ああぅっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_05"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ずんっ、ずんっ、って、だめ、だめぇっ[r]
    子宮、おちんちん入らないからぁっ、ねじこまないでぇっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_06"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    壊されそうなセックス、きもちよすぎるのぉぉっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_04"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やだぁ♡　おまんこ壊されたくないぃ♡[r]
    壊されたら先生とセックスできなくなちゃうからぁっ♡[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" buf="0" loop="true"  ]

    [tb_start_text mode=3 ]
    #
    うねった膣壁がいっせいにわななき、[r]
    ペニスを甘噛みする。痙攣じみた収縮だ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    射精感がにわかに高まる。[p]
    [_tb_end_text]
    [setCosHCG cg="02_07"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たまたま持ち上がってきゅうきゅうしてます[r]
    先生、イくんですか？[p]
    [_tb_end_text]
    [setCosHCG cg="02_06"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいんですよ、がまんしないで[r]
    イくのおさえないで出してください[p]
    [_tb_end_text]
    [setCosHCG cg="02_05"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0053.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    いつでもっ、どこでもぉっ[r]
    先生のせいえき、ぜんぶわたしが受け止めるからぁっ[l]
    [_tb_end_text]

    ;一択選択肢　くっ……出すぞ、飲み込めっ！
    [glink_center storage="Hscene/cosH_bikini00.ks" target="cosHBikini00_2_1" text="くっ……出すぞ、飲み込めっ！"]
    [s]
    *cosHBikini00_2_1
    ;射精演出,ピストンBGS停止
    [stopse buf="0"]
    [setCosHCG cg="02_08" syasei="true"]

    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ――はぁ――……っ♡♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    喉鳴り同然の長い嬌声がいつまでも響き、[r]
    みおの下肢は断続的にわななき続けていた。[p]
    [_tb_end_text]
    [setCosHCG cg="02_09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せいえき、出すぎですよぉ……♡[r]
    あったかくてしあわせですけど……♡[p]
    [_tb_end_text]
    [setCosHCG cg="02_10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene9_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなに出して、先生のおちんちんも[r]
    壊れちゃったのかもしれませんね……えへっ[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]

        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        ;キス+3、開発度口+1、露出調教+1
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm+=2" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.creampie++" ]
        [eval  exp="f.creampieToday = true" ]
        [eval exp="f.kiss+=3" ]
        [eval exp="f.mouth++" ]
        [eval exp="f.masochism++" ]
        [eval exp="f.cosH.bikini.select2.total++" ]    
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない
    [endif]
    ;　→「■終了時の共通部」へジャンプ（ナース服の方に記載）

    ;--------------------------------------------
    ;以上


    *cosHBikini00_end
    [eval exp="f.cosH.bikini.total++" ]
    [setreplay name="cosplayH" storage="replay_select.ks" target="cosH_select"]


[endmacro]