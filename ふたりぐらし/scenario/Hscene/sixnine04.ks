[macro name="sixnine04" ]

    ;-------------------------------------------------------------

    ;＜【映画から】シックスナイン　03ショートバージョン（４回目）＞

    ;本編からの場合はここから。
    [if exp="!f.flag_replay" ]

        [fadeoutbgm2 time="6000" ]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        ;スチル表示【01】
        [setSixnineCG cg="01" time="1"]
        [reset_camera time="1" ]
        [freeimage layer="1" ]
        [freeimage layer="2" ]
        [chara_hide_all  time="1"  wait="false"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

    [else]
        [setSixnineCG cg="01" time="1"]
        [maskEnd]
        [messageON]
    [endif]
    ;シーン回想の場合はここからスタート。背景bk100、みお立ち絵なし、スチル【01】が表示済みで開始

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あのぉ～……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    シックスナインの体勢になるまではよかったが、[r]
    そこでみおが硬直してしまった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    また秘部を見せることに抵抗が……？[r]
    と思いつつ、構わず舐めはじめる。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setSixnineCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あうぅぅっ、したぎっ、ぐしょぐしょに[r]
    なっちゃいますぅぅっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    なら脱げばいい。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    ;スチル切替【25】
    [setSixnineCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅぅ～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    脱がしたショーツは、ちょっとびっくりするくらい[r]
    もう濡れに濡れていた。[p]
    [_tb_end_text]

    ;スチル切替【41】
    [setSixnineCG cg="41" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これ、変なんですぅ……[p]
    [_tb_end_text]

    ;スチル切替【25】
    [setSixnineCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の顔が見えないからなのか[r]
    感じすぎちゃって、すぐイきそうになっちゃって[p]
    [_tb_end_text]

    ;スチル切替【41】
    [setSixnineCG cg="41" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    気持ち良すぎて怖いんですぅ～っ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru1.mp3"  ]
    ;スチル切替【27】
    [setSixnineCG cg="27" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――っ[p]
    [_tb_end_text]

    ;スチル切替【28】
    [setSixnineCG cg="28" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だめ、だめですっ、んんん……っ……！[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    軽くイったようだ。[r]
    前回と同様に絶頂できそうだ。[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine04.ks" target="sixnine04_1" text="ついちゃったねえ、イキ癖" ]
    [s]
    *sixnine04_1
    ;スチル切替【27】
    [setSixnineCG cg="27" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0067.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    言わ、ないでぇっ、ふぅぁんっ、あううぅ[r]
    声、声出ちゃ……[p]
    [_tb_end_text]

    ;スチル切替【31】
    [setSixnineCG cg="31" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    声、ご近所迷惑だからっ[r]
    くち、おちんちんでふさがなきゃ、んんっ[p]
    [_tb_end_text]

    ;スチル切替【30】
    [setSixnineCG cg="30" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0069.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんん～っ……ん、んんっ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    くわえただけでまたイったようだ。[r]
    大声の心配もなくなり、遠慮なく攻め立てる。[p]
    [_tb_end_text]


    ;スチル切替【32】
    [setSixnineCG cg="32" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃっ……んぁ、んっ、[r]
    じゅっ、んむぅ、ぷぁぅっ……[p]
    [_tb_end_text]

    ;スチル切替【33】
    [setSixnineCG cg="33" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、むぅ……んん～、ふぅぁ、じゅっ、[r]
    ちゅうぅっ、やっ、ん、れろ、るる……っ[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    一舐めごとに桃尻が絶頂じみてびくりと跳ねる。[r]
    やがて、総毛立つような大波がみおを震わせはじめた。[p]
    [_tb_end_text]


    ;スチル切替【32】
    [setSixnineCG cg="32" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っぷぁ、はぁ、はふ、んっ、ずっずずっ、[r]
    ひぁっ……んん、ちゅ、ちゅ……ふぁう……んっ、るろろぉっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    渾身の舌遣いで、[r]
    怖がるみおを最大の絶頂へ押し上げる――[p]
    [_tb_end_text]


    ;スチル切替【35】
    [setSixnineCG cg="35" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0073.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ッ、ッ……んんっ、[r]
    ふあぁううぅうぅ――～……っ[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine04.ks" target="sixnine04_2" text="イくッ" ]
    [s]
    *sixnine04_2
    ;フラッシュでみおの絶頂演出、
    [flash type="zettyou"]
    ;続けて射精演出,BGS停止,スチル切替【42】
    [setSixnineCG cg="42" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……んんんっ……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    イきながら、こちらの出したものも[r]
    美味しそうに飲み干すみおだった。[p]
    [_tb_end_text]


    ;シーン回想からの再生の場合、ここで終了。
    ;ゲーム本編から発生した場合、自由行動パートに戻る前にさらに下記の流れへ。

    ;-----------------------
    ;みお性体験加算
    ;　開発％陰核+2,開発％膣+2,フェラチオ+1,絶頂陰核+2,絶頂膣+2,口内射精+1,

    ;-----------------------
    [if exp="!f.flag_replay" ]
        ;-----------------------
        ;みお性体験加算
        ;　開発％陰核+2,開発％膣+2,フェラチオ+1,絶頂陰核+2,絶頂膣+2,口内射精+1,

        [eval exp="f.clitoris+=2" ]
        [eval exp="f.cunt+=2" ]
        [eval exp="f.fellatio++" ]
        [eval exp="f.clitorisTotalOrgasm+=2" ]
        [eval exp="f.cuntTotalOrgasm+=2" ]
        [eval exp="f.mouthCum++" ]
        ;-----------------------
        ;★めじるし


        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
            [addTime minutes=60]
            [bgcheck]
            [wait  time="500"  ]
            [chara_hide_all  time="1"  wait="false"  ]
            [free layer="2" name="still" ]
            [free layer="3" name="still" ]
            ;スチル消去
            ;拡大なしの通常ADV画面へ戻る
            [eval exp="f.sixnine.today = true" ]
            [eval exp="f.sixnine.total++" ]
        [maskEnd]
        [messageON]

        ;みおと先生の体力-20
        [calcMioHP HP="-20"]
        [calcHP HP="-20"]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [tb_start_text mode=3 ]
        #みお
        あ、ありがとうございました……？[r]
        おつかれさま、かな……？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        気持ちよかったが、そのぶん心地よい虚脱感もある。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        今日はこのまま寝てしまおうか……[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="enryo.png"]
        [tb_start_text mode=3 ]
        #みお
        そうですね[r]
        そうしましょうか[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="raku2.png"]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい、先生[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]
    [endif]


    ;以降、シックスナイン01「★めじるし」部分に合流



    ;以上

[endmacro]