[macro name="parkEv4" ]
    ;ゲーム本編からの開始の場合は直前の画面でそのままADV展開

    ;BGM停止。time6000
    [fadeoutbgm2 time="6000" ]
    ;シーン回想からの場合はここから開始。みお立ち絵なし、背景はbk100

    [messageON]
    [tb_start_text mode=3 ]
    #
    制服姿のくせに大人を誘惑するような[r]
    動きをするみおの肩をつかみ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    物陰のあたりに連れこむ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0070.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]

    [messageInvisible]

    ;BGM11_temptation.mp3　をtime6000でBGMとして再生開始
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]
    ;【01.png】表示
    [CGSet layer="2" storage="EVcg/koenHstill01/02.png" name="still,park1" time="1000" ]
    
    [messageON]

    [tb_start_text mode=3 ]
    #
    待ってましたとばかりに、みおは自分から[r]
    スカートを持ち上げるのだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    恥じらいの勝る表情だが、[r]
    それ以上の期待と欲情が滲んでいる。[p]
    [_tb_end_text]


    ;【01b.png】切替
    [CGSet layer="2" storage="EVcg/koenHstill01/07.png" name="still,park1b" time="300" ]
    [free layer="2" name="park1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱいの奥、すごくどきどきしてます[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/05.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    夜の公園でこんなことするの[r]
    いけないのに、忘れられなくて[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/07.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0073.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、学校の制服なんですよ[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/06.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0074.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    このかっこうでのえっち、誰かに見られたら[r]
    どこの生徒かなんてすぐわかっちゃうのに[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/07.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0075.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、胸がどきどきして[r]
    おなかがうずくのが止められないんです[p]
    [_tb_end_text]

    ;【02b.png】切替
    [CGSet layer="2" storage="EVcg/koenHstill01/08.png" name="still,park2b" time="300" ]
    [free layer="2" name="park1b" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0076.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ……ふぁ……[r]
    ね？　もう、こんなにどろどろです[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/11.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0077.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    公園に来るだけで期待しちゃうんです[r]
    あっ、あぁんっ、んやあああっ[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/12.png" name="still,park1b" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0078.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もう、いつでも先生のおちんち――……[p]
    [_tb_end_text]
    ;;;;;;;;;;;;;;;★このあたりからスチル的には後半の挿入パートへ


    ;★後半スチル切替【05】,直下の旧指示と入れ替え
    ;【03.png】切替
    [setKoen2CG cg="05" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0079.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あはぁぁんっ！？[r]
    すっ、すごい、乱暴で、気持ちいいのぉっ[p]
    [_tb_end_text]

    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0" storage="BGS/piston1.mp3" time="6000" ]

    [tb_start_text mode=3 ]
    #
    みおの独白でとっくに理性は飛んでいた。[r]
    犯すように剛直をねじ込み、突く。[p]
    [_tb_end_text]

    ;★後半スチル切替【08】
    [setKoen2CG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぐぅっ、ふぁぁんんっ、おなかっ、[r]
    つぶれちゃ……あぁっ、いい、いいのぉっ[p]
    [_tb_end_text]

    ;★後半スチル切替【06】
    [setKoen2CG cg="06" time="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もっと、もっとぉ、ゴリゴリしてくださいぃぃ、[r]
    先生のおちんちんでめちゃくちゃにぃぃっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ほぐしの足りない膣内を徐々に[r]
    突き崩して広げていく感覚が心地よい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    雌を犯す雄の征服感、[r]
    月下の交わりは狼のようだ。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse buf="0" storage="BGS/piston2fast.mp3" time="6000" ]
    ;★後半スチル切替【07】
    [setKoen2CG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、おちんちん、さきっぽがぶくって[r]
    膨らんできてますよ、んんっ、あぁっ[p]
    [_tb_end_text]

    ;★後半スチル切替【06】
    [setKoen2CG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0080.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どちゅどちゅわたしの奥を叩いて[r]
    入ってこようとしてて、やっ、ああぁんんっ[p]
    [_tb_end_text]

    ;★後半スチル切替【08】
    [setKoen2CG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イきそう、なんですよね[r]
    せいえきでもうおちんちん、パンパンで[p]
    [_tb_end_text]


    ;★後半スチル切替【09】
    [setKoen2CG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0081.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    いいですよ、シちゃいましょ……？[r]
    外なのに、動物みたいな射精、どぴゅってぇ[l]
    [_tb_end_text]

    [glink target="*parkEv4_1" addlog="true" text="中でイくぞ、まんこ締めろッ！" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *parkEv4_1
    ;★後半スチル切替【08】
    [setKoen2CG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0082.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいっ、締めます、締めますから[r]
    ごほうび、熱いのくださいぃぃっ！！[p]
    [_tb_end_text]

    ;射精、膣内射精+1、BGS停止
    ;【04.png】切替　→★後半スチル【10】切り替えへ変更
    [stopse buf="0" ]
    [setKoen2CG cg="10" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0083.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁあぁっ！[r]
    ナカっ、ナカに先生のどぷどぷってぇ……っ！[p]
    [_tb_end_text]



    ;★後半スチル切替【11】、直下の旧い切り替え指示と入れ替え
    ;スチルとしてbk100.jpgを最前面に表示して画面を真っ暗化
    [setKoen2CG cg="11" time="300"]
    [tb_start_text mode=3 ]
    #
    獣のようなまぐわいだった。[r]
    外に出すなんて考えもしなかった。[p]
    [_tb_end_text]

    ;★SE再生追加、[playse  volume="100"  time="1000"  buf="1"  storage="se/kiss2.mp3"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/kiss2.mp3"  ]
    ;★後半スチル切替【13】
    [setKoen2CG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ……ふ、あぁぁっ……んんぅ……っ[r]
    熱い、熱いよぉ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    飛び起きた理性にせっつかれて[r]
    後始末をせかせかと急ぐ。[p]
    [_tb_end_text]


    ;★スチルとして【bk100】へ切り替え
    [setBK time="300"]
    [free layer="2" name="still"]
    [tb_start_text mode=3 ]
    #
    こう何度も公園でコトに及んでいたら[r]
    いつか本当に目撃されるかもしれないな。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうしないようにはするけれども、[r]
    その想像は得も言われぬ興奮をもたらした。[p]
    [_tb_end_text]


    ;BGM停止。time6000
    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [tb_hide_message_window  ]
    ;シーン回想からの場合はここで終了。
    [if exp="f.flag_replay!=true"]
        [calcMioHP HP="-20"]
        ;みお性経験加算
        ;　「露出・調教」に+1、開発度膣+1、開発度陰核+1、開発度乳房+1、絶頂数膣+1、セックス+1、
        ;　※膣内射精は射精演出時に加算している
        [eval exp="f.masochism++" ]
        [eval exp="f.cunt++" ]
        [eval exp="f.clitoris++" ]
        [eval exp="f.bust++" ]
        [eval exp="f.cuntTotalOrgasm++" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.parkHNow = true" ]
        ;ゲーム本編からの場合は、このあとADVパートのやりとりを経て帰宅する。

        [eval exp="f.parkEv = 4" ]
    [endif]
[endmacro]