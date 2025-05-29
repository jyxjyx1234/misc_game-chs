
;せまるみお【乗】通常派生「バック」・段階２

[macro name="semaruBack02" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;本編からの場合のみ：せまるみお【乗】の「うなずき、みおの手をとる――」「みお：あ……♡　先生……♡」
    ;　　　　　　　　　　からの流れで発生する。
    [eval exp="f.semaruEV.today.type = 'back'" ]
    [eval exp="f.semaruEV.today.isHscene = true" ]
    [eval exp="f.muramura = Math.floor(f.muramura / 2) " ]
    ;シーン回想からの場合、ここから画面真っ暗背景＆立ち絵なしでスタート
    [if exp="f.flag_replay" ]
        [mask_off time="1000" ]
    [else]

    [endif]

    [messageON]
    [tb_start_text mode=3 ]
    #
    のしかかって来ていたみおを、[r]
    体勢を入れ替えるようにベッドに寝かせる。[p]
    [_tb_end_text]


    ;本編からの場合のみ：スチル表示の要領で【bk100.jpg】
    [image layer="2" storage="../bgimage/bk100.jpg" time="1000" name="bkcg" cond="!f.flag_replay" ]
    [chara_hide_all time="1" cond="!f.flag_replay" ]
    [free layer="2" name="makura1" ]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お願いします……[r]
    また、前みたいに激しく、乱暴に……♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    言われなくても、と全身を[r]
    なでさすりながら服を脱がせる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……ふぁ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0005.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生の手、あっつくて……[r]
    手つきもやらしい……[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="みおのとろけ顔もえっちだよ"  _clickable_img=""  target="*semaruBack1"  ]
    [s]

    *semaruBack1

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんぅ……言わないで……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いやいやするようなしぐさで[r]
    みおは枕に顔を隠してしまった。[p]
    [_tb_end_text]

    ;スチル表示【01】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/01.png" name="still,semaruBack01" time="1000"]
    [free layer="2" name="bkcg" cond="!f.flag_replay"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    顔、みちゃヤです……[r]
    たぶん、本当にとろとろでだらしないから……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    恥じらっているふうだが、[r]
    むき出しのまんこはトロトロだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    指示されずとも物欲しげに[r]
    大きなお尻を持ち上げている。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    相当ムラついているのだろうし、[r]
    並のセックスでは到底満足できまい。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/02.png" name="still,semaruBack02" time="1000"]

    [tb_start_text mode=3 ]
    #
    ちんぽで脳みそがいっぱいになって[r]
    戻れなくなるような、そんな犯し方をしてやろう。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/tataku01.mp3"  ]
    ;スチル切替【03】チンポびんた
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/03.png" name="still,semaruBack03" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃんっ[p]
    [_tb_end_text]

    ;スチル切替【02】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/02.png" name="still,semaruBack02" time="1000"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/tataku02.mp3"  ]
    ;スチル切替【03】チンポびんた
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/03.png" name="still,semaruBack03" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    くひぁんんっ！？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁっ、はぁ……[r]
    これ、先生のおちんちん……[p]
    [_tb_end_text]

    ;スチル切替【02】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/02.png" name="still,semaruBack02" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0013.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    おちんちんでわたしのおしり、[r]
    おもいきりビンタされちゃってるんだ……[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="これが欲しかったんだろ？"  _clickable_img=""  target="*semaruBack2"  ]
    [s]
    *semaruBack2
    [playse  volume="100"  time="1000"  buf="1"  storage="se/tataku01.mp3"  ]
    ;スチル切替【03】チンポびんた
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/03.png" name="still,semaruBack03" time="1000"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁんっ、ありがとうございますっ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおちんちんっ、うれしいですぅっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    叩くほどにみおの声は艶めき、[r]
    マン汁も白濁して量を増していく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    小陰唇もほころび始め、[r]
    はやく犯してくれとせびるようだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替【04】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/04.png" name="still,semaruBack04" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁ――[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……[r]
    それ、そこです、そこぉ……っ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の、わたしのなかに欲しいんですぅ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その嘆願を、まずはスカす。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【05】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/05.png" name="still,semaruBack05" time="1000"]

    [tb_start_text mode=3 ]
    #
    膣への挿入ではなく、いきり立ったペニスを[r]
    みおのデカ尻の谷間に滑り込ませる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぇっ……？！[p]
    [_tb_end_text]

    ;スチル切替【06】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/06.png" name="still,semaruBack06" time="1000"]

    [tb_start_text mode=3 ]
    #
    戸惑うみおをよそに、[r]
    腰を動かす――尻ズリだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【05】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/05.png" name="still,semaruBack05" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふっ、んぁ……おしりの間でも先生のおちんちん、[r]
    きもちよくさせられるんですね……んはぁ[p]
    [_tb_end_text]

    ;スチル切替【06】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/06.png" name="still,semaruBack06" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしも腰がじんじん熱くて[r]
    とけちゃいそう……んんっ、ふあぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの方も息を合わせて[r]
    ケツを振りはじめる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【05】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/05.png" name="still,semaruBack05" time="1000"]
    [tb_start_text mode=3 ]
    #
    ムチムチした尻肉に包まれ、[r]
    予想外の速さで射精感がこみ上げる。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/06.png" name="still,semaruBack06" time="1000"]
    [tb_start_text mode=3 ]
    #
    だが、今のみおはオナホ代わり。[r]
    射精ごとき、なにをためらうことがあるだろうか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――そう思った瞬間、精を放っていた。[p]
    [_tb_end_text]

    ;射精。膣内射精ではないことに注意
    ;射精差分スチル切替【07】
    [syaseiFlashForStill layer="2" storage="EVcg/semaruBack/07.png" name="still,semaruBack07" count="false"]
    [free layer="2" name="semaruBack06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁぁっ！？[p]
    [_tb_end_text]

    ;スチル切替【08】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/08.png" name="still,semaruBack08" time="1000"]
    [free layer="2" name="semaruBack07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    背中に今びちゃって……っ、[r]
    あっ、んんっ。熱……これ、って……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、んん～～……っ……[p]
    [_tb_end_text]

    ;スチル切替【09】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/09.png" name="still,semaruBack09" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、はぁふ……ふぅぁ……[r]
    せいえき、かけられただけなのに、わたし……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    軽くイっちゃ――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;スチル切替【10】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/10.png" name="still,semaruBack10" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんあぁぁぁぁ――～～！？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁおおっ、そん、なっ、[r]
    いきなり奥までぇっ[p]
    [_tb_end_text]


    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]

    [tb_start_text mode=3 ]
    #
    尻をきつく掴み上げ、[r]
    もののようにみおの下半身を扱う。[p]
    [_tb_end_text]


    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ！　ッ――～～……！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおは絶頂に震えながらも[r]
    絶叫を枕で押し殺す。[p]
    [_tb_end_text]


    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]

    [tb_start_text mode=3 ]
    #
    うねる背中では先ほどの精液がゆれ動き、[r]
    その刺激にさえみおは快感を覚えている。[p]
    [_tb_end_text]


    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0031.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ひぃっ、ひはぁっ……ああっ[r]
    深いのぉっ、奥まで刺さっててぇ[l]
    [_tb_end_text]



    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height="" exp=""   text="こうして欲しかったんだろ？"  _clickable_img=""  target="*semaruBack3"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もっと腰振ってよ"  _clickable_img=""  target="*semaruBack4" ]
    [s]
    ;------------------------------------------------
    ;分岐【選択肢】こうして欲しかったんだろ？
    *semaruBack3

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうっ、そうですっ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんしか考えられなくなるぐらい[r]
    めちゃくちゃに犯して欲しかったのぉっ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="semaruBack5" ]
    ;------------------------------------------------
    ;分岐【選択肢】もっと腰振ってよ
    *semaruBack4
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    振りますっ、振りますからぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もっと奥ゴツゴツってぇ[r]
    きもちよくして欲しいのぉっ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="semaruBack5" ]

    ;------------------------------------------------
    ;【共通部】
    *semaruBack5

    [fadeinse storage="BGS/piston1.mp3" loop="true" buf="0"  time="6000" ]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]
    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]

    [tb_start_text mode=3 ]
    #
    ベッドがぎしぎし唸るほどの[r]
    激しい突き込み。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひっ、ぐぅんっ[p]
    [_tb_end_text]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]
    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああぉっ、おっ、ふぐぅぅっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    一突きごとにみおは絶頂している。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    枕が表情と声を覆い隠してくれることが[r]
    かえってみおの感度を上げていた。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ――……っ、あっ、あぁぁっ！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    体位のため膣圧も高く、[r]
    込み上げた精液が何度も押し返される。[p]
    [_tb_end_text]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]
    [tb_start_text mode=3 ]
    #
    みおはイきまくっているのに、[r]
    こちらは寸止めをくりかえされている。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁー……っ、あっ、ああっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だがそれもじき終わる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    疲労から膣を締めるちからも弱まり、[r]
    射精圧も防ぎ得ぬほど高まっている。[p]
    [_tb_end_text]


    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]

    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" loop="true" buf="0"  time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    奥っ、んぁぁっ、奥にぐりぐりってぇ[r]
    あぁぁっ、ふぅんん[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    亀頭で子宮口をとらえ、ピストンというより[r]
    竿で膣壁をかき回す動きに変えていく。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    子宮にぴったりおちんちんキスしててぇ[r]
    あぁ……？　せんせい、そろそろですかぁ……？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいですよぉ、おしり、高くあげるからぁ[r]
    注ぎやすくしますからぁ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0043.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    せいえき、先生の白いの、[r]
    おなかに注いでくださいぃっ[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ああ、望み通りにな……ッ"  _clickable_img=""  target="*semaruBack6"  ]
    [s]
    
    *semaruBack6
    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/11.png" name="still,semaruBack11" time="1000"]
    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/12.png" name="still,semaruBack12" time="1000"]

    [tb_start_text mode=3 ]
    #
    最後の一突き、子宮口をすら貫く[r]
    イメージを脳裏に浮かべ渾身の射精を放つ。[p]
    [_tb_end_text]

    ;射精演出,BGS停止
    [stopse buf="0" ]
    ;スチル切替【13】
    [syaseiFlashForStill layer="2" storage="EVcg/semaruBack/13.png" name="still,semaruBack13" count="true"]
    [free layer="2" name="semaruBack12"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んきゃあああぁぁぁぁぁぁッ！！[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああぁ――～～……っ、[r]
    あっ、あぅぅぁ……あっ、おぐぉぁ……♡[p]
    [_tb_end_text]

    ;スチル切替【14】
    [CGSetAndDelete layer="2" storage="EVcg/semaruBack/14.png" name="still,semaruBack14" time="1000"]
    [free layer="2" name="semaruBack13"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これぇっ、この出され方、好きぃ……[r]
    好きなのぉ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおは長い長い絶叫を枕に吸わせ、[r]
    びくりびくりと尻を震わせ続けていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    どれだけ叫んだのか、枕はヨダレを吸って[r]
    ぐっしょりと変色したころ――[p]
    [_tb_end_text]

    ;スチル差分切り替えで精液垂れ

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene8_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……あぅぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ごぼごぼと途方もない精液を垂れ流し[r]
    みおは気絶するかのように眠りに落ちた。[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]

    [setBK]
    ;スチルとして【bk100】表示
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

 
    ;シーン回想からの場合、ここで終了
    [if exp="!f.flag_replay" ]
        ;↓本編からの再生の場合のみ、これも表示（回想からの再生では表示しない）
        [tb_start_text mode=3 ]
        #
        みおの世話をし、今日はこのまま[r]
        自分も眠ることにした……[p]
        [_tb_end_text]


        ;みお性経験加算
        ;　ぶっかけ+1、開発度膣+1、絶頂数膣+3、膣内射精+1
        ;　みおから迫って+1、露出・調教+1


        [calcMioHP HP="-20"]
        [eval exp="f.sperm++"]
        [eval exp="f.cuntTotalOrgasm+=3"]
        [eval exp="f.cunt++"]
        [eval exp="f.malerape++"]
        [eval exp="f.masochism++"]
        
        [eval exp="f.semaruEV.HEv.back = 1" ]
    [endif]
    ;みお体力-20
    [setreplay name="semaruBackEv001" storage="replay_select.ks" target="semaruBack_select"]
    ;※あとは加減を見ながら適当な地の文を追加して翌日へ移動


    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;以上
[endmacro]




