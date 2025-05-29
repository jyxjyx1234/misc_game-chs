[macro name="asaTekokiEv01" ]
    ;＜おはようえっち：手コキ＞

    ;ゲーム本編から開始の場合は、「朝か。起きよう」の直後の画面まっしろ状態からスタート
    ;シーン回想スタートここから（画面まっしろ状態からスタート）
    [setreplay name="asaTekokiEv001" storage="replay_select.ks" target="asaTekoki_select"]

    ;H_TEKOKI.mp3を、ここではまずSEとして再生
    [playse storage="BGS/H_TEKOKI.mp3" buf="1" ]
    ;スチル表示【01.png】
    [CGSet layer="2" storage="EVcg/asaTekoki/01.png" name="still,tekoki1" time="300" ]
    [messageON]
    [tb_start_text mode=4 ]
    #
    目を開けると、みおがのしかかっていた。[r]
    ついでに手コキされていた。[l]
    [_tb_end_text]

    [glink target="*asaTekokiEv1_1" addlog="true" text="おはよう、みお" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]
    *asaTekokiEv1_1
    [CGSet layer="2" storage="EVcg/asaTekoki/02.png" name="still,tekoki2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、おはようございます[r]
    いつ起きるかなぁってどきどきしてました[p]
    [_tb_end_text]


    ;　以下、このシーンが今回どのような発生事由だったかで分岐

    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-2.みおがムラムラ状態（欲求が高）によって発生
    [if exp="f.houshi.cause == 'd-2'" ]
        [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おっきくなってたから……ちょっとだけ、[r]
        ちょっと見るだけ、ってしてたら……[p]
        [_tb_end_text]

        [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        がまんできなくて、つい……[r]
        にぎにぎと……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ……みおもだいぶ欲求が溜まっていたようだ。[r]
        それでこんな行動に出たわけだな。　[p]
        [_tb_end_text]


        ;　→【次の共通部へ】


    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-1.ご奉仕フラグ（予約）によって発生
    [elsif exp="f.houshi.cause == 'd-1'" ]
        [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生にこうしなさいって言われてたから[r]
        起こした方がいいのかなぁって迷ってて……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        気づかないまま射精とかしちゃったら[r]
        夢精したかと思っちゃうもんなぁ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおが言いつけを守ってくれたのなら[r]
        こちらもしっかり起きて手コキされなくてはな。[p]
        [_tb_end_text]


        ;　→【次の共通部へ】


    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-3.先生がムラムラ状態によって発生
    [elsif exp="f.houshi.cause == 'd-3'" ]
        [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そのう……ふとん越しにもわかるぐらい[r]
        先生のがパンパンで……おつらいのかな、と……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そうか……爆発させまいと[r]
        しずめてくれようとしていたのか……[p]
        [_tb_end_text]

        ;　→【次の共通部へ】


        ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】未使用のプレーンなパターン。ゲーム中登場はしませんが、ソース的には残しておいてください。
    [else]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    と言って、続きに戻るみおだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まあ、ありがたいサプライズだし[r]
    別に文句とか抵抗の必要はないな……[p]
    [_tb_end_text]

    ;　→【次の共通部へ】


    [endif]
    ;--------------------------------------------
    ;--------------------------------------------
    ;【共通部】

    ;BGM11_temptation.mp3　をtime6000でBGMとして再生開始
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [tb_start_text mode=3 ]
    #
    目覚める前からだいぶシゴかれていたようで[r]
    先走り汁はダダ漏れ、先端では泡になっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    密着した制服姿のみおがこんなことを――[r]
    もしかして、まだ夢の中なのではないだろうか。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/01.png" name="still,tekoki1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    起きてからも気持ちよさそうにしてくれて[r]
    とってもうれしいです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    起きてからも……？　と訝るなり、[r]
    絶妙な指さばきに悶絶させられる。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/02.png" name="still,tekoki2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    寝てる間におちんちん、[r]
    たくさんにぎにぎしたので[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    
    [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どこをどう刺激したら腰が動くのか、とか[r]
    いろいろ研究できました[p]
    [_tb_end_text]

    ;--------------------
    ;【分岐】このイベントを起こすのが２回目以降の時
    [if exp="f.houshi.tekoki > 0" ]

    [tb_start_text mode=3 ]
    #
    前回もおなじようなことを言っていたが、[r]
    あの研究はまだ続いていたというのか……！[p]
    [_tb_end_text]

    ;　→次の共通部へ

    ;--------------------
    ;【分岐】それ以外のとき（基本的には初回時が該当）
    [else]

        [tb_start_text mode=3 ]
        #
        それはいい研究だね。[r]
        補助金もたくさん出るはずだ。[p]
        [_tb_end_text]

        ;　→次の共通部へ

    [endif]
    ;--------------------
    ;【共通部】
    [CGSet layer="2" storage="EVcg/asaTekoki/02.png" name="still,tekoki2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへー[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はじめのころはかちかちで石みたいに
    思ってたんですけど……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    触ってるとやっぱり人のからだで、[r]
    血が集まってこうなるんだなぁって[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おもしろくなっちゃったわけだ。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/05.png" name="still,tekoki5" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほんとはまだ怖いですけど、先生のですから[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしの手の中で大きくなったり[r]
    かたくなったり、いろいろしてほしくて[p]
    [_tb_end_text]


    ;【BGS】H_TEKOKI.mp3,time6000で再生
    [fadeinse storage="BGS/H_TEKOKI.mp3" time="6000" buf="0" loop="true" ]

    [tb_start_text mode=3 ]
    #
    絶え間ない手コキの刺激もさることながら[r]
    耳元での甘い言葉の数々でくらくらする。[p]
    [_tb_end_text]


    ;--------------------
    ;【分岐】このイベントを起こすのが２回目以降の時
    [if exp="f.houshi.tekoki > 0" ]

    [CGSet layer="2" storage="EVcg/asaTekoki/07.png" name="still,tekoki7" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、また乳首おっきくなってきましたよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なぜだかペニスに言及されるよりも[r]
    ずっとずっと恥ずかしい。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/02.png" name="still,tekoki2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっぱり、お好きなんですね[p]
    [_tb_end_text]

    ;　→次の共通部へ

    ;--------------------
    ;【分岐】それ以外のとき（基本的には初回時が該当）
    [else]

    [CGSet layer="2" storage="EVcg/asaTekoki/06.png" name="still,tekoki6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほあ……[r]
    先生の胸元、なんだか……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/07.png" name="still,tekoki7" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちくび、勃ってきました？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    えっ？？？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こちらが返答に窮しているうちに、[r]
    みおが指を伸ばし、胸元に触れてきた。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほらここ……[p]
    [_tb_end_text]

    ;適当なフラッシュ演出
    [mask time="500" color="white" ]
    [mask_off time="500" ]

    [tb_start_text mode=3 ]
    #
    ――っ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    乳首にみおの小さな爪が触れた途端、[r]
    感電したように身体が跳ねた。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいみたいですね[r]
    だったらもっとしっかりと……[p]
    [_tb_end_text]

    ;　→次の共通部へ

    [endif]
    ;--------------------
    ;【共通部】
    [CGSet layer="2" storage="EVcg/asaTekoki/02.png" name="still,tekoki2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    くりくり……する前に、[r]
    よだれでよく濡らそうかな……[p]
    [_tb_end_text]


    [CGSet layer="2" storage="EVcg/asaTekoki/08.png" name="still,tekoki8" time="300" ]
    [free layer="2" name="tekoki1" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……んば……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……ふふ、このまま舐める方がいいですか？[r]
    それとも指で？　両方？[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/03.png" name="still,tekoki3" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちくびさん、おっきいだけじゃなくて[r]
    こりこりに硬くなってきましたよぉ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    [CGSet layer="2" storage="EVcg/asaTekoki/08.png" name="still,tekoki8" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0023.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    このまま続けたら女の子みたいに[r]
    おっきなまんまになったりしちゃって……[l]
    [_tb_end_text]

    [glink target="*asaTekokiEv1_2" addlog="true" text="ちょっと、そろそろまずい" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *asaTekokiEv1_2
    ;スチル切替【01.png】
    [CGSet layer="2" storage="EVcg/asaTekoki/04.png" name="still,tekoki4" time="300" ]
    [free layer="2" name="tekoki2" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい……♡[p]
    [_tb_end_text]


    ;【BGS】H_TEKOKI_fast_.mp3,time6000で再生
    [fadeinse storage="BGS/H_TEKOKI_fast.mp3" time="6000" loop="true" buf="0" ]
    [CGSet layer="2" storage="EVcg/asaTekoki/08.png" name="still,tekoki8" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっぱい精液出しちゃってください[r]
    すっきりした気持ちで一日はじめましょうね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ゆったりしたささやき声と、[r]
    それとは真逆の激しい手コキ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    矛盾した情報で脳がぐちゃぐちゃになるような[r]
    甘い酩酊感が意識を満たし、白く弾けた。[p]
    [_tb_end_text]

    ;射精演出、BGS停止
    ;スチル切替【03.png】
    [stopse buf="0" ]
    [syaseiFlashForStill layer="2" storage="../fgimage/EVcg/asaTekoki/09.png" name="still,tekoki3" count="false"]
    [free layer="2" name="tekoki2" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わぁっ♡[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/asaTekoki/10.png" name="still,tekoki10" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごいすごい、ぴゅって飛びましたよっ[r]
    見えました？[p]
    [_tb_end_text]


    ;--------------------
    ;【分岐】このイベントを起こすのが２回目以降の時
    [if exp="f.houshi.tekoki > 0" ]

    [CGSet layer="2" storage="EVcg/asaTekoki/11.png" name="still,tekoki11" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    前よりも飛んだ気がします！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    記録、つけているのか……？[p]
    [_tb_end_text]

    ;　→次の共通部へ

    ;--------------------
    ;【分岐】それ以外のとき（基本的には初回時が該当）
    [else]
    [CGSet layer="2" storage="EVcg/asaTekoki/11.png" name="still,tekoki11" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene5_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    水鉄砲みたいでおもしろいです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが上手にしてくれたからこその[r]
    量と飛距離だよ、と伝えたらうれしそうだった。[p]
    [_tb_end_text]

    ;　→次の共通部へ

    [endif]
    ;--------------------
    ;【共通部】

    ;BGM停止。time6000
    [fadeoutbgm2 time="6000" ]
    [CGSet layer="2" storage="../bgimage/bk100.jpg" name="still,bkcg" time="1000" ]

    [tb_start_text mode=3 ]
    #
    疲れはしたが、爽快な目覚めとなった。[p]
    [_tb_end_text]

    [if exp="!f.flag_replay" ]

        ;シーン回想からの場合はここで終了
        ;--------------------------------------------
        ;--------------------------------------------
        ;本編からのシーン発生だった場合、下記

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        [free layer="2" name="still" ]
        ;スチル消去
        [setTime hours=6 minutes=30]

        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]


        ;先生体力-20。
        [calcHP HP="-20"]

        [tb_start_text mode=3 ]
        #
        その後、ぼーっとしている間に[r]
        みおが朝食の支度をしてくれ、食事となった。[p]
        [_tb_end_text]



        ;みお性経験加算
        ;　「みおから迫って」に+1、「ぶっかけ」+1
        [calcMioHP HP="-20"]
        [eval exp="f.malerape++" ]
        [eval exp="f.sperm++" ]
        [eval exp="f.houshi.tekoki++"]

        ;暗転して食事演出SE再生。時間を7:00に。室内背景で暗転解除。
        ;食事の感想の地の文の表示が終わった直後から、朝のいつものフローへ合流
    [endif]
    [setreplay name="asaTekokiEv001" storage="replay_select.ks" target="asaTekoki_select"]
[endmacro]