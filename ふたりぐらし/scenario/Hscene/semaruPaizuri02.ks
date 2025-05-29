
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;攻めパイズリ段階２

;せまるみお【乗】のみお台詞「む～」からの流れで発生。
;シーン回想からの場合、ここから画面真っ暗背景＆立ち絵なしでスタート
[macro name="semaruPaizuri02" ]
    [eval exp="f.muramura = Math.floor(f.muramura / 2) " ]
    [eval exp="f.semaruEV.today.type = 'paizuri'" ]
    [eval exp="f.semaruEV.today.isHscene = true" ]
    [setreplay name="semaruPaizuri" storage="replay_select.ks" target="semaruPaizuri_select"]
    ;本編からの場合、ここはまだ「せまる【乗】スチル」が出ている。表情05へ変更（回想からの場合は処理しない）
    [if exp="!f.flag_replay" ]

        [semaruNoruStillSet layer="2" storage="05.png" name="still,noru5" time="1500"]
    [else]
        [maskEnd]
    [endif]
    [messageON]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生はそういう気分じゃないかもですけど[r]
    わたしはシないとおさまらなくて……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/touch4.mp3"  ]

    ;bk100をスチル代わりに表示し、いちど画面を真っ暗に
    [image layer="3" storage="../bgimage/bk100.jpg" time="1000" name="bkcg" ]
    [free layer="2" name="still" ]
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    ;スチル表示【01】　※ここから攻めパイズリスチルの指定
    [setPaizuriCG cg="01" time="1000"]
    [free layer="3" name="bkcg" time="1000" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えいっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    早業でハダカ同然になったみおの巨乳が、[r]
    ぽふっと股間の上に落ちてきた。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ……♡[r]
    おちんちん、ムクムクしてきましたよ？[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setPaizuriCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっぱりおっぱい乗せられると[r]
    おちんちんは素直に反応しちゃいますね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うぅ……[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱいの下でこんなギンギンになってる[r]
    おちんちん感じちゃったら、わたし、もう……[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setPaizuriCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    精液おっぱいにかけてもらうまで[r]
    おさまらないです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あれよあれよとい間に服をはぎとられ、[r]
    ペニスは巨乳に吞み込まれてしまった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【04】
    ;スチル切替【05】
    [setPaizuriCG cg="04" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="05" time="300"]

    [tb_start_text mode=3 ]
    #
    すぐさま、みおの獰猛なパイズリが始まった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【04】
    ;スチル切替【05】
    [setPaizuriCG cg="04" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="05" time="300"]
    [tb_start_text mode=3 ]
    #
    ずちゅん、ずちゅん。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    水風船を打ちつけるような[r]
    激しい肉の音が部屋中に響き渡る。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setPaizuriCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぅっ、ふぅっ……はぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    反面、ペニスに感じる圧力は[r]
    キツいのにやわらかく、搾るのに包み込む。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    相反する複雑な感触が密着する乳肉から[r]
    与えられ続けている。[p]

    [_tb_end_text]


    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、きもちいいんですねぇ[r]
    とってもいいお顔してます[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setPaizuriCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のかわいい反応が見られたら[r]
    わたしとってもうれしくなれるから――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【04】
    ;スチル切替【05】
    [setPaizuriCG cg="04" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0015.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    もっともぉっと、おっぱいで[r]
    おちんちん気持ちよくしてあげますね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うぅぅ……ッ！[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0016.mp3"  ]
    

    [tb_start_text mode=3 ]
    #みお
    あはっ、先生も動いちゃってますね[r]
    腰がくがくしてますよ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【07】
    ;スチル切替【02】
    [setPaizuriCG cg="07" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0019.mp3"  ][tb_start_text mode=3 ]
    #みお
    はぁい、おっぱいで受け止めてあげますから[r]
    いっぱい、好きなだけ突いてくださいね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【07】
    ;スチル切替【02】
    [setPaizuriCG cg="07" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="02" time="300"]
    [tb_start_text mode=3 ]
    #
    通常の性交であれば深いピストンは子宮口を[r]
    とらえ、相手も平然とはしていられないが……[p]
    [_tb_end_text]
    [tb_start_text mode=3 ]
    #
    ことパイズリにおいては圧倒的に
    みお側の優位だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    乳肉の洞に行き止まりは無く、[r]
    みおの構え方次第で抽送の勢いは好きにいなせる。[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setPaizuriCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んふっ、んふふっ[r]
    せんせ……かわい……♡[p]
    [_tb_end_text]
    [tb_start_text mode=3 ]
    #
    突けば突くほど、こちらが疲弊するばかりなのに[r]
    それでも腰を止められないのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【08】
    ;スチル切替【03】
    [setPaizuriCG cg="08" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んあぁんっ、やぁっ、ふふっ[p]
    [_tb_end_text]

    ;スチル切替【01】
    [setPaizuriCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさん、ここをおまんこだと[r]
    勘違いしちゃってるんですね[p]
    [_tb_end_text]



    ;スチル切替【03】
    [setPaizuriCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    この中に精液びゅうぅぅってしたいよぉって[r]
    先っぽからヨダレ垂れちゃってます[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ね？　先生[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    しっとりと密着してくる乳肉は甘美なもので、[r]
    一突きごとにペニスが輪郭を失い溶けていくようだ。[p]
    [_tb_end_text]



    ;スチル切替【03】
    [setPaizuriCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生ももう限界なんじゃないですか？[p]
    [_tb_end_text]



    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……おねだり、ちゃんとできたら[r]
    射精させてあげますよ？[p]
    [_tb_end_text]

    ;スチル切替【01】
    [setPaizuriCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もしかして、またこうやっていじめられたくて[r]
    わざとひねくれた反応したんですか？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    う、うぅぅ～……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【08】
    ;スチル切替【03】
    [setPaizuriCG cg="08" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わっ、わわ、んぅぅ[r]
    腰、もっと激しく……っ[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setPaizuriCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でもだめですよぉ[r]
    激しくしたってイかせてあげません[p]
    [_tb_end_text]
    [tb_start_text mode=3 ]
    #
    言葉通りだった。[r]
    乱暴なピストンでは絶頂に近づけない。 [p]
   
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおに受け入れてもらわなければ[r]
    生殺しの弱い快楽だけが続いてしまう。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    くぅぅ……っ[l]
    [_tb_end_text]

    [glink_center storage="Hscene/semaruPaizuri02.ks" target="semaruPaizuri02_1" text="おね……い……しま……"]
    [s]

    *semaruPaizuri02_1
    ;スチル切替【05】
    [setPaizuriCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0030.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    聞こえませんよ～[l]
    [_tb_end_text]

    [glink_center storage="Hscene/semaruPaizuri02.ks" target="semaruPaizuri02_2" text="お願いしますっ、イかせてくださいっ"]
    [s]

    *semaruPaizuri02_2
    ;スチル切替【02】
    [setPaizuriCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁい、よくできました[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【07】
    ;スチル切替【02】
    [setPaizuriCG cg="07" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んはぁっ、んんっ、イっていいですよ～[r]
    ほうら、おっぱい気持ちいいですよねっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru3.mp3"  ]
    ;スチル切替【07】
    ;スチル切替【02】
    [setPaizuriCG cg="07" time="300"]
    [wait time="500" ]
    [setPaizuriCG cg="02" time="300"]


    [tb_start_text mode=3 ]
    #
    ――～～……っ！[p]
    [_tb_end_text]


    ;射精演出、BGS停止、スチル切替【09】
    [stopse]
    [syaseiFlashForStill layer="1" storage="EVcg/semaruPaizuri/09.png" name="still,paizuri09" count="false"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃはあああっ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁぁぁ……っ！[p]
    [_tb_end_text]


    ;スチル切替【10】
    [setPaizuriCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せいえき、たくさぁん……[r]
    すっごく熱くて臭いですよぉ……[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setPaizuriCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱいが中も外もべとべとで[r]
    火傷しちゃうかと思いました……♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    精魂尽き果てた感のあるこちらと違い、[r]
    みおは一層艶めいて輝くようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    精力を吸い取られたんじゃないかと[r]
    思うほどの対比っぷりだった。[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setPaizuriCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0037.mp3"  ][tb_start_text mode=3 ]
    #みお
    ん～……っ、満足できました[r]
    ありがとうございます、先生[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setPaizuriCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene6_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今回もわたしのおっぱいに[r]
    敵わなかったですね♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    がくがくとうなずく他なかった。[p]
    [_tb_end_text]


        [fadeoutbgm2 time="6000" ]

    ;☆スチル切替【bk100】
    [setBK]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そして、この日はそのまま眠りに落ちたのだった……[p]
    [_tb_end_text]


        ;シーン回想からの場合、ここで終了

    ;性経験加算
    ;　開発度乳房+1、ぶっかけ+1、みおから迫って+1

        ;みお体力-20
    [if exp="!f.flag_replay" ]
        [eval exp="f.bust++" ]
        [eval exp="f.sperm++" ]
        [eval exp="f.malerape++" ]
        [eval exp="f.semaruEV.HEv.paizuri++" ]
        [calcMioHP HP="-20"]
        [maskStart]
            [free layer="1" name="still" ]

    [endif]
        ;※あとは加減を見ながら適当な地の文を追加して翌日へ移動

[endmacro]






