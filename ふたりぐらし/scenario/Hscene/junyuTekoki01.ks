[macro name="junyuTekoki01" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜授乳手コキ＞　段階１のみ。

    ;スチル表示。すでに授乳手コキの状態になっている（露出チンポ手コキ、露出乳首しゃぶり）]

    ;-------------
    ;【分岐】このイベントを起こすのがはじめて
    [if exp="f.junyuTekoki.total == 0" ]
        *junyuTekoki01_1
        ;☆スチル表示【01】
        [if exp="!f.flag_replay" ]
            [maskStart time="300" ]
                [free layer="2" name="hizamakura"]
                [setJunyuTekokiCG cg="01" time="1000"]
                [deleteBK time="1"]
            [maskEnd time="600" ]
        [else]
                [setJunyuTekokiCG cg="01" time="1"]
                [deleteBK time="1"]
                [maskEnd]
                [wait time="300" ]
        [endif]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0001.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #みお
        どうしてこうなってるんですかぁ～っ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ひざまくらからなしくずしで[r]
        授乳手コキへと持っていくことに成功だ。[p]
        [_tb_end_text]


        ;→次の共通部へ

    ;-------------
    ;【分岐】上記以外の場合＝２回目以降
    [else]
        *junyuTekoki01_2
        ;☆スチル表示【03】
        [if exp="!f.flag_replay" ]
            [maskStart time="300" ]
                [free layer="2" name="hizamakura"]
                [setJunyuTekokiCG cg="03" time="1000"]
                [deleteBK time="1"]
            [maskEnd time="600" ]
        [else]
                [setJunyuTekokiCG cg="03" time="1"]
                [deleteBK time="1"]
                [maskEnd]
                [wait time="300" ]
        [endif]



        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0002.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #みお
        気づけばまたこの状況に……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおは押しに弱いからなぁ。[p]
        [_tb_end_text]

        ;→次の共通部へ

    [endif]
    ;-------------
    ;【共通部】
    *junyuTekoki01_3
    ;私服１のときだけ、このテキストを表示
    [if exp="f.cloth == 'sihuku1'" ]
        *junyuTekoki01_3_1
        [tb_start_text mode=3 ]
        #
        ワンピースだけに脱がすのに手間取ったが[r]
        それをきれいにたたむのが実にみおらしい。[p]
        [_tb_end_text]

    [endif]

    *junyuTekoki01_3_2

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [tb_start_text mode=3 ]
    #
    豊かな乳房が目の前にある――[r]
    というより、視界を埋めている。[p]
    [_tb_end_text]


    ;☆スチル切替【02】
    [setJunyuTekokiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んん……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおのぬくもりや甘い香りを間近に感じて[r]
    全身でおっぱいに包まれている気分だ。[p]
    [_tb_end_text]

    ;☆スチル切替【03】
    [setJunyuTekokiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああそんなリラックスして[r]
    くてーってなっちゃって……[p]
    [_tb_end_text]

    ;☆スチル切替【04】
    [setJunyuTekokiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むげにできなくなっちゃうじゃないですかぁ……[r]
    ――んぅっ！？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kiss1.mp3"  ]

    ;☆スチル切替【05】
    [setJunyuTekokiCG cg="05" time="300"]
    
    [if exp="f.bonyu1Text && f.isJusei" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0006.mp3" sprite_time="0000-6000"  ]
        [tb_start_text mode=3 ]
        #みお
        ちく、びっ、吸っ……ちゃ……んん～っ[p]
        [_tb_end_text]
    [else]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ちく、びっ、吸っ……ちゃ……んん～っ、[r]
        なに、も出ませんよう……っ[p]
        [_tb_end_text]
    [endif]
    ;☆スチル切替【01】
    [setJunyuTekokiCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁうぅ、手の中のおちんちん[r]
    おっきくしないでくださいぃ～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そんなつもりはない。ただ必死に[r]
    目の前のおっぱいに食らいついているだけだ。[p]
    [_tb_end_text]

    ;☆スチル切替【02】
    [setJunyuTekokiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当に赤ちゃんみたいになって……[p]
    [_tb_end_text]

    ;☆スチル切替【03】
    [setJunyuTekokiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0009.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    えっと、どんなふうにおちんちん[r]
    してもらいたいとかありますか？[l]
    [_tb_end_text]


    [glink_left storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_4" text="ばぶでちゅ"]
    [glink_right storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_5" text="う～　だぅ～"]
    [s]

    ;-------------
    ;【選択肢】ばぶでちゅ
    *junyuTekoki01_4
    ;☆スチル切替【06】
    [setJunyuTekokiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ばぶでちゅかぁ～[p]
    [_tb_end_text]


    ;☆スチル切替【07】
    [setJunyuTekokiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お話もなりきった感じで[r]
    いきたいんですね[p]
    [_tb_end_text]


    ;→次の共通部へ
    [jump target="junyuTekoki01_6" ]
    ;-------------
    ;【選択肢】う～　だぅ～
    *junyuTekoki01_5

    ;☆スチル切替【08】
    [setJunyuTekokiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なりきりとか超えた勢いで[r]
    赤ちゃんになってませんか！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふぇぇ……[p]
    [_tb_end_text]


    ;☆スチル切替【06】
    [setJunyuTekokiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、声おっきくてびっくりしたね[r]
    ごめんねごめんね、よぉしよし～[p]
    [_tb_end_text]

    ;→次の共通部へ
    [jump target="junyuTekoki01_6" ]
    ;-------------
    ;【共通部】
    *junyuTekoki01_6
    ;☆スチル切替【01】
    [setJunyuTekokiCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    結局このおちんちんはどうしたら……[p]
    [_tb_end_text]

    ;☆スチル切替【05】
    [setJunyuTekokiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;☆スチル切替【02】
    [setJunyuTekokiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    相手がおちんちんだったとしても、[r]
    赤ちゃんをあやすつもりで……[p]
    [_tb_end_text]

    ;☆スチル切替【03】
    [setJunyuTekokiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん、っしょ……こうやって[r]
    な～でなで……[p]
    [_tb_end_text]


    ;【BGS】H_TEKOKI.mp3、time6000で再生
    [fadeinse storage="BGS/H_TEKOKI.mp3" buf="0" loop="true"  time="6000" ]


    [tb_start_text mode=3 ]
    #
    最初からずっと片手で頭をなでてくれていたが、[r]
    おなじ調子でいたわりの手コキがはじまった。[p]
    [_tb_end_text]


    ;☆スチル切替【06】
    [setJunyuTekokiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よ～しよし……[r]
    いいこでちゅね……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    やさしくゆるやかなリズムと振動は[r]
    寝かしつけさながらで……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    油断するとたちまちスヤスヤモードだ。[r]
    負けるわけにはいかない。[p]
    [_tb_end_text]

    ;☆スチル切替【02】
    [setJunyuTekokiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    寝ちゃってもぜんぜん構わないんですが……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kiss3.mp3"  ]
    ;☆スチル切替【04】
    [setJunyuTekokiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、やぁっ、そんな吸ったら[r]
    伸びちゃう、うぅぅ～、せんせいってばぁっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    と言いつつ、微細な姿勢の調整で[r]
    いい感じの授乳フォームを崩さないみおだ。[p]
    [_tb_end_text]
    [tb_start_text mode=3 ]
    #
    どこまでもやさしい手つきは[r]
    赤子への慈愛、真なる母性を思わせる。[p]
    [_tb_end_text]

    ;☆スチル切替【05】
    [setJunyuTekokiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぅぅ……[p]
    [_tb_end_text]

    [if exp="f.junyuTekoki.total == 0" ]
        ;-------------
        ;【分岐】このイベントを起こすのがはじめて

        [tb_start_text mode=3 ]
        #
        年の離れた妹や弟がいたとか、[r]
        シッターの経験があったりするのだろうか？[p]
        [_tb_end_text]


        ;☆スチル切替【02】
        [setJunyuTekokiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        え……？[r]
        そういうのは別にないですけど……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        なんと……[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        ということは、みおの母性は[r]
        自分だけに向けられたものなのだ。[l]
        [_tb_end_text]


        ;→次の共通部へ
    [else]
        ;-------------
        ;【分岐】上記以外の場合＝２回目以降

        [tb_start_text mode=3 ]
        #
        実際に小さいこどもを世話したことは無いと[r]
        前に聞いたわけだから――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおが赤子の扱いが上手いのは[r]
        ひとえにこの授乳手コキプレイの経験によるのだ。[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        それはそれで、なんか、いいな……[r]
        みおは自分だけのママなのだ。[l]
        [_tb_end_text]


        ;→次の共通部へ
    [endif]
    ;-------------
    ;【共通部】
    *junyuTekoki01_7

    [glink_left storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_8" text="ちゅばばっ、ずぞぞぞっ" exp="f.junyuTekoki.select++"]
    [glink_right storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_9" text="う～！　ママぁ～！" exp="f.junyuTekoki.select2++"]
    [s]


    ;-------------
    ;【選択肢】ちゅばばっ、ずぞぞぞっ
    *junyuTekoki01_8

    ;☆スチル切替【09】
    [setJunyuTekokiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    や、んんっ、それちょっと……！[p]
    [_tb_end_text]

    ;-----------
    ;プチ分岐。条件に合う方のどちらか１つ表示


    ;☆スチル切替【10】はどちらのテキストについてもおなじ
    [setJunyuTekokiCG cg="10" time="300"]

    [if exp="f.junyuTekoki.select == 1" ]
    ;通常時
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もう、こら……っ！[r]
    だめですよぉ……！[p]
    [_tb_end_text]

    [else]
    ;この選択肢を選ぶのが２回目以降の時の差分台詞
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちくび、ほんとに前よりちょっと[r]
    大きくなっちゃった気がしてて、うぅ……[p]
    [_tb_end_text]

    [endif]

    ;-----------

    ;→次の共通部へ
    [jump target="junyuTekoki01_10" ]
    ;-------------
    ;【選択肢】う～！　ママぁ～！
    *junyuTekoki01_9
    ;☆スチル切替【11】
    [setJunyuTekokiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ママ……？[r]
    先生がわたしをママ、って……？[p]
    [_tb_end_text]

    ;☆スチル切替【05】
    [setJunyuTekokiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]


    ;-----------
    ;プチ分岐。条件に合う方のどちらか１つ表示

    ;☆スチル切替【12】はどちらのテキストについてもおなじ
    [setJunyuTekokiCG cg="12" time="300"]

    [if exp="f.junyuTekoki.select2 == 1" ]
    ;通常時
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……なんだか、わるくない気分ですね[p]
    [_tb_end_text]

    [else]

    ;この選択肢を選ぶのが２回目以降の時の差分台詞
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……何回聞いても[r]
    やっぱりときめくものがありますね[p]
    [_tb_end_text]

    [endif]
    ;-----------

    ;→次の共通部へ

    ;-------------
    ;【共通部】
    *junyuTekoki01_10
    ;BGS停止
    [stopse buf="0" ]

    ;☆スチル切替【13】
    [setJunyuTekokiCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――もう。おっぱいとおちんちん、[r]
    両方で気持ちよくなりたいだなんて[p]
    [_tb_end_text]


    ;☆スチル切替【14】
    [setJunyuTekokiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    とってもわがままな赤ちゃんさんです[p]
    [_tb_end_text]

    ;☆スチル切替【15】
    [setJunyuTekokiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっぱい甘やかしてあげますから[p]
    [_tb_end_text]


    ;☆スチル切替【16】
    [setJunyuTekokiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それでねんねして、起きたら[r]
    赤ちゃんはおしまいですからね？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぎゅううぅっ、と乳房を押しつけられる。[p]
    [_tb_end_text]


    ;☆スチル切替【bk100】
    [setBK]
    [tb_start_text mode=3 ]
    #
    ピンク色の暗闇で視界が埋まり、[r]
    同時にペニスからみおの手が離れる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぬるぬるの方がいいと思うので、[r]
    わたしのヨダレですけど……――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んく、んん……んんぇ……[r]
    えれあぁぁ……んっ、ぷぁぁ……れろぉ……[p]
    [_tb_end_text]

    ;【BGS】H_TEKOKI.mp3、time6000で再生
    [fadeinse storage="BGS/H_TEKOKI.mp3" buf="0" loop="true"  time="6000" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、おててヌルヌルにしたので、[r]
    つづき行きますよ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]


    [tb_start_text mode=3 ]
    #
    と声がして、熱い粘液にまみれたてのひらが[r]
    再びペニスを包み込む。[p]
    [_tb_end_text]


    ;☆スチル切替【10】
    [setJunyuTekokiCG cg="10" time="1"]
    [deleteBK time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、ふっ……くぅん……っ[p]
    [_tb_end_text]


    ;☆スチル切替【15】
    [setJunyuTekokiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせい赤ちゃん、気持ちよくなりながらも[r]
    おっぱいちゅうちゅうは止めない、ですね[p]
    [_tb_end_text]


    ;------
    ;この範囲、場合によっては非表示化も検討。今はふつうに表示

    ;☆スチル切替【16】
    [setJunyuTekokiCG cg="16" time="300"]
    [if exp="f.bonyu1Text && f.isJusei" ]
        *junyuTekoki01_10_1b
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そのまま、いいですよ[r]
        母乳出るって言っても少ないと思いますけど……[p]
        [_tb_end_text]
    [else]
        *junyuTekoki01_10_1a
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そのまま、いいですよ[r]
        わたし、おっぱいは出ませんけど[p]
        [_tb_end_text]
    [endif]
    ;------


    ;☆スチル切替【12】
    [setJunyuTekokiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっしょうけんめい、おちんちん[r]
    にぎにぎシコシコしますからっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    甘ったるいじゃれあいから一転、[r]
    行為は射精を導く情事へと変貌していた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    半勃ちだったペニスは限界まで張り詰め、[r]
    解放の許可を待ちわびている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    舌の上ではみおの乳首がかたく尖っていき、[r]
    いとおしく、噛みつきたいとさえ思う。[p]
    [_tb_end_text]

    ;【BGS】H_TEKOKI_fast.mp3、time6000で再生
    [fadeinse storage="BGS/H_TEKOKI_fast.mp3" buf="0" loop="true"  time="6000" ]
    ;☆スチル切替【10】
    [setJunyuTekokiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、ぅぅっ、おね、がいっ、[r]
    もうイってください……っ、うぅぅ～っ[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    指の筒が、ひときわ強く、巧みに[r]
    ペニスをなぞり上げて射精をせびった――[l]
    [_tb_end_text]


    [glink_left storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_11" text="イ、くぅ……っ！" exp="f.junyuTekoki.nowSelect = 1, f.junyuTekoki.select3++"]
    [glink_right storage="Hscene/junyuTekoki01.ks" target="junyuTekoki01_11" text="ばぶぅぅぅ～っ！" exp="f.junyuTekoki.nowSelect = 2, f.junyuTekoki.select4++"]
    [s]
    ;あとで分岐。いったんそのまま分岐せずに進行
    *junyuTekoki01_11

    ;射精演出,BGS停止,☆スチル切替【17】
    [stopse buf="0" ]
    [setJunyuTekokiCG cg="17" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃううぅぅぅ～っ！？[p]
    [_tb_end_text]

    ;再度射精演出,☆スチル切替【18】
    [setJunyuTekokiCG cg="18" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あうっ、まだ出てる、二回目、さ、三回目、[r]
    び、びくびくがずっと続いてて……――～～っ[p]
    [_tb_end_text]

    ;☆スチル切替【19】
    [setJunyuTekokiCG cg="19" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……はふぅ、止まったぁ[p]
    [_tb_end_text]

    ;-----------------------------------------------------
    ;【先ほどの選択で分岐】：イ、くぅ……っ！
    [if exp="f.junyuTekoki.select == 1" ]
        *junyuTekoki01_11_1
        ;☆スチル切替【20】
        [setJunyuTekokiCG cg="20" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0045.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ちゃんと大人の射精でしたね[r]
        ご立派でしたよ、先生[p]
        [_tb_end_text]


        ;☆スチル切替【21】
        [setJunyuTekokiCG cg="21" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0046.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        イく時はやっぱり大人の男のひとなんだって[r]
        どきどきしました[p]
        [_tb_end_text]


        ;　→次の共通部へ

    [else]
        ;-----------------------------------------------------
        ;【先ほどの選択で分岐】：ばぶぅぅぅ～っ！
        *junyuTekoki01_11_2
        ;☆スチル切替【21】
        [setJunyuTekokiCG cg="21" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0047.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        赤ちゃんなのにこんなに白いおしっこ[r]
        出しちゃって、ふふ……[p]
        [_tb_end_text]


        ;☆スチル切替【20】
        [setJunyuTekokiCG cg="20" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0048.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        きもちよかったでちゅか？[p]
        [_tb_end_text]


        ;　→次の共通部へ

    [endif]
    ;-----------------------------------------------------
    ;【共通部】
    *junyuTekoki01_12

    ;☆スチル切替【22】
    [setJunyuTekokiCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……って、またおっぱい吸ってる[r]
    おめめは眠そうですけど[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うん……[r]
    実際、とても、ねむい……[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]
    ;☆スチル切替【bk100】
    [setBK]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ、もう、たくさん吸われたから[r]
    わたしも乳首だけでちょっと変な感じです[p]
    [_tb_end_text]

    [if exp="f.isJusei && f.bonyu1Text" ]
        *junyuTekoki01_12_b
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしも母乳ぴゅるるってしながら[r]
        感じちゃいました……[p]
        [_tb_end_text]


    [else]
        *junyuTekoki01_12_a
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0051.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        母乳とか出たりしないはずなのに、[r]
        なんだか、ぴりぴり……[p]
        [_tb_end_text]

    [endif]
    [if exp="f.junyuTekoki.total > 0" ]

        [if exp="f.isJusei && f.bonyu1Text" ]
            *junyuTekoki01_12_b2
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0015.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            このままだとおっぱい出すだけでも[r]
            イくようになっちゃうかも……[p]
            [_tb_end_text]

        [else]
            *junyuTekoki01_12_a2
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0052.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            先生に吸われ過ぎて、わたしのおっぱい、[r]
            本当に変わってきちゃったのかも……[p]
            [_tb_end_text]
            ;このイベントの発生が２回目以降のときの追加表示台詞
        [endif]
    [endif]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……？　先生？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    寝ちゃいそうなんですね[r]
    いいですよ、片付けはお任せください[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene1_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おやすみなさい[r]
    わたしのかわいいあかちゃん[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;シーン回想からの場合はここで終了
    [setreplay name="junyutekoki" storage="replay_select.ks" target="junyuTekoki_select"]
    [if exp="!f.flag_replay" ]
        ;みお体力-20
        [calcMioHP HP="-20"]
        ;みお性体験加算
    
        ;　ぶっかけ+1,開発度乳房+1,開発度乳首+1,絶頂数乳首+1,絶頂数乳房+1
        [eval exp="f.sperm++" ]
        [eval exp="f.bust++" ]
        [eval exp="f.tikubi++" ]
        [eval exp="f.tikubiTotalOrgasm++" ]
        [eval exp="f.bustTotalOrgasm++" ]
        [eval exp="f.junyuTekoki.today = true" ]
        [eval exp="f.junyuTekoki.total++" ]


        ;本編スタートの場合は翌朝へ進行する。実際の動作を見てなにかテキストを足したりがあるかもしれない
        [eval exp="f.todayEnd = true" ]
        [clearstack]
        [jump storage="command.ks" target="*hizaItazuraHEv_end" ]
    [endif]



[endmacro]