[macro name="hotelBath02" ]
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
    [messageON]
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

    [glink_left text="おちんちんをよく洗って" storage="Hscene/hotelBath02.ks" target="hotelBath02_3"]
    [glink_right text="みおの身体を押しつけて" storage="Hscene/hotelBath02.ks" target="hotelBath02_4"]
    [s]

    ;-----------------------
    ;【選択肢】おちんちんをよく洗って

    ;　※注：ゲーム中、ここに来るのがはじめての場合は、段階１の同選択肢部分へジャンプ
    ;　　段階１の同選択肢内容が既読の上で、再度ここに来た場合の展開は下記（回想再生で段階２指定の場合は↓）
    *hotelBath02_3
    [if exp="f.loveHo.bath.scene1 == 0"]
        [jump storage="Hscene/hotelBath01.ks" target="hotelBath01_6"]
        [jump target="hotelBath02_end"]
    [endif]

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



    ;次の共通部へ
    [jump target="hotelBath02_5" ]

    ;-----------------------
    ;【選択肢】みおの身体を押しつけて

    ;　※注：ゲーム中、ここに来るのがはじめての場合は、段階１の同選択肢部分へジャンプ
    ;　　段階１の同選択肢内容が既読の上で、再度ここに来た場合の展開は下記（回想再生で段階２指定の場合は↓）
    *hotelBath02_4
    [if exp="f.loveHo.bath.scene2 == 0"]
        [jump storage="Hscene/hotelBath01.ks" target="hotelBath01_7"]
        [jump target="hotelBath02_end"]
    [endif]

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


    ;次の共通部へ
    [jump target="hotelBath02_5" ]

    ;-------------------------------------------------
    ;【共通部】

    ;　※段階１の「……潮時だな（略）」に合流するので以下省略。
    ;　　なので、この段階２の範囲では性経験加算などは記載しない（合流先で行うので）
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

    [glink_center text="そろそろ、ベッドに行こうか" storage="Hscene/hotelBath02.ks" target="hotelBath02_9"]
    [s]
    *hotelBath02_9
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

    *hotelBath02_end
[endmacro]