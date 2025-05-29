
[macro name="tinkasuFella01" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;＜チンカスフェラ＞

    ;みおにお風呂に入ってくれと言われるイベントでえっちな反撃展開の【選択肢】「いいや、ここも頼む！」以降、下記が発生
    ;シーン回想での再生はここから（お風呂場、タオル姿みお。日時や体力は適当な値か非表示。時間帯は夜扱い）
    [if exp="f.flag_replay" ]
        [setTime hours=21 minutes=0]
        [free layer="3" name="dayUI" ]
        [eval exp="f.cloth = 'taoru'" ]
        [mioHyoujou hyoujou="normal.png" time="1"]
        [bgChange storage="bath_n.jpg" time="1"]
        [maskEnd]
    [endif]
    ;シーン直前のお風呂シーン時にBGMは停止しているが、一応記述
    [fadeoutbgm2 time="6000" ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    やにわに立ち上がり、[r]
    みおに股間を見せつける。[p]
    [_tb_end_text]

    ;拡大ADVモードにする
    [CAMERA  zoom="1.5" x="32"  y="75" time="500" wait="true" ]

    [tb_start_text mode=3 ]
    #
    ぶるんと揺れる陰茎からは、[r]
    湿ったチンカスのにおいが立ち昇った。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="EvKusai2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0015_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とまどうみおの表情が[r]
    どうにも嗜虐心をくすぐってくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    行けるところまで行ってやれ――と[r]
    腹が固まった。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0016_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    でもそこは、タオルでごしごしは[r]
    痛いと思いますし……[l]
    [_tb_end_text]

    [glink_center storage="Hscene/tinkasuFella01.ks" target="tinkasuFella01_1" text="だから、もっとやわらかくてあたたかいものを使うんだ"]
    [s]

    *tinkasuFella01_1
    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0017_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あ……あー……手、ですか……？[l]
    [_tb_end_text]

    [glink_center storage="Hscene/tinkasuFella01.ks" target="tinkasuFella01_2" text="もっと別のがあるだろ"]
    [s]
    *tinkasuFella01_2
    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    ;☆スチルとして【bk100】表示
    [image layer="3" storage="../bgimage/bk100.jpg" time="500" visible="true" name="bkcg" ]
    ;拡大モードここで解除
    [reset_camera time="1" ]

    [tb_start_text mode=3 ]
    #
    肩に手をかけ、みおをひざまずかせる。[r]
    その拍子に髪留めやタオルがほどけて落ちる。[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM6_violence.mp3" time="6000" ]

    ;☆スチル切替【01】
    [setTinkasuCG cg="01" time="1"]
    [free layer="3" name="bkcg" time="1000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0018_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ずい、とみおの眼前に臭気漂うペニスを突きつける。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おくちで、きれいにするんだ――[r]
    言外にそう告げている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおみたいな女の子のほほに[r]
    チンカスまみれペニスをなすり付けている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その事実だけで射精しそうなほどに昂る。[p]
    [_tb_end_text]


    ;---------------------------------
    ;【分岐】ここに来るのがはじめての場合
    *tinkasuFella01_3
    [if exp="f.tinkasuFella.total == 0" ]
        ;☆スチル切替【02】
        [setTinkasuCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0019_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        舐めてきれいに、ってことですか……？[r]
        わたしが、これを……[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [else]
        ;---------------------------------
        ;【分岐】上記以外の場合（２回目以降）
        *tinkasuFella01_4
        ;☆スチル切替【02】
        [setTinkasuCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0020_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、まさかまたこれをさせるために[r]
        お風呂断ちを……？[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [endif]
    ;---------------------------------
    ;【共通部】
    *tinkasuFella01_5
    ;☆スチル切替【03】
    [setTinkasuCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0021_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも……わたしがお風呂に入ってって[r]
    頼んだんだから、わたしがやらなきゃ……[p]
    [_tb_end_text]

    ;☆スチル切替【04】
    [setTinkasuCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0022_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……ふぁ……っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおがおずおずと舌先を伸ばし、[r]
    亀頭や竿を軽くなぞっていく。[p]
    [_tb_end_text]

    [eval exp="f.firstKiss = addExperience(f.firstKiss,'2029','チンカスペニスが初めて触れた他人となった')" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;☆スチル切替【05】
    [setTinkasuCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0023_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅ、む……ぁっ、れるる……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    そんなやり方じゃきれいにできない。[r]
    チンカスの溜まったカリ首にも触れてないし。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/tinkasuFella01.ks" target="tinkasuFella01_6" text="こうやるんだよ"]
    [s]
    *tinkasuFella01_6
    ;BGVとして　FT_m001_bgs0037.mp3　再生
    [playse storage="vo_bgv/FT_m001_bgs0037.mp3" loop="true" buf="3" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kiss2.mp3"  ]
    ;☆スチル切替【06】
    [setTinkasuCG cg="06" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0024_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んむぅーっ！？[p]
    [_tb_end_text]

    ;☆スチル切替【07】
    [setTinkasuCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0025_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むっ、むぅぅっ、っ～……！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    汚いとか臭いと言わないのは立派だが、[r]
    臭気への反射ばかりは止められない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    涙を浮かべながら咳きこみかけて――[r]
    ペニスに喉を犯されてるからできずに止まる。[p]
    [_tb_end_text]


    ;☆スチル切替【08】
    [setTinkasuCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0026_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    見かねて鼻で息を吸うんだよ、と教えてやると[r]
    多少はみおも落ち着いたようだった。[p]
    [_tb_end_text]


    ;☆スチル切替【06】
    [setTinkasuCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0027_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぐ……っ、うぅ、あん、むっ……[r]
    ちゅばっ、るる……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    腰を遣って喉を犯す。酸素を求めたあえぎが[r]
    結果的に竿を舐めしゃぶる淫技となっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの桜色の唇や舌が少しずつ、[r]
    溜めに溜めたチンカスをこしとっていく。[p]
    [_tb_end_text]

    ;☆スチル切替【08】
    [setTinkasuCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0028_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふー……んふぅ……あぶっ……く、ぁぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ぶくぶくに溢れたみおの唾液が[r]
    こぼれそうになったところで腰を止める。[l]
    [_tb_end_text]

    ;BGV停止
    ;☆スチル切替【09】
    [stopse buf="3" ]
    [setTinkasuCG cg="09" time="300"]

    [glink_center storage="Hscene/tinkasuFella01.ks" target="tinkasuFella01_7" text="その唾、全部飲むんだよ"]
    [s]

    *tinkasuFella01_7
    [tb_start_text mode=3 ]
    #
    つまり、口の中に溜まったチンカスを[r]
    ぜんぶ飲み干せ、と言っている。[p]
    [_tb_end_text]


    ;☆スチル切替【10】
    [setTinkasuCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0029_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～―……っ[p]
    [_tb_end_text]


    ;☆スチル切替【11】
    [setTinkasuCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0030_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぅ……ん、ん……んぐっ……[r]
    ぐふぁ……ぁ、っ……[p]
    [_tb_end_text]


    ;☆スチル切替【12】
    [setTinkasuCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0031_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んん……の、飲みました……[r]
    先生のに、溜まったもの、ぜんぶ……[p]
    [_tb_end_text]


    ;☆スチル切替【13】
    [setTinkasuCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0032_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁ……や、ぁっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分の言葉で感じきって、[r]
    触れてもいない下腹をわななかせていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    酸欠でトリップしかけているのか、[r]
    はたまた――……[p]
    [_tb_end_text]


    ;☆スチル切替【14】
    [setTinkasuCG cg="14" time="300"]

    [tb_start_text mode=3 ]
    #
    表面をきれいに洗われたペニスは涼し気だが[r]
    その内部では精液の熱がたぎっている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    再びたぎったペニスの中に溜まったものも、[r]
    みおに受け止めてもらわないとな。[p]
    [_tb_end_text]

    ;BGVとして　FT_m001_bgs0038.mp3　再生
    [playse storage="vo_bgv/FT_m001_bgs0038.mp3" loop="true" buf="3" ]
    ;☆スチル切替【15】
    [setTinkasuCG cg="15" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0033_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゅっ、んぶ、んぼぁっ、むぅぅ～っ[p]
    [_tb_end_text]

    ;☆スチル切替【16】
    [setTinkasuCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0034_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むぅ、ぅぅう～……っ、んっ、んん、[r]
    んくぅぅ、るろ、れるっ、ちゅっ……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    イラマチオ同然の行為に、今度のみおは[r]
    しっかりと喉や舌を使って追いついてくる。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/tinkasuFella01.ks" target="tinkasuFella01_8" text="出すぞ、飲むんだ"]
    [s]
    *tinkasuFella01_8
    ;☆スチル切替【17】
    [setTinkasuCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0035_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぅ、ふぁっ、ふぁいっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分の汚い精液やチンカスが、[r]
    みおのような女の子の一部となる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    甘美な想像のまま、自分勝手な射精をした。[p]
    [_tb_end_text]

    ;射精演出。BGVオフ,☆スチル切替【18】
    [stopse buf="3" ]
    [setTinkasuCG cg="18" time="300" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0036_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぐっ、んんぶぁぁ～ッ！？[p]
    [_tb_end_text]

    ;☆スチル切替【19】
    [setTinkasuCG cg="19" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0037_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っぷぁ、はぁう、はぁ……はぁー……っ[r]
    んぇぁ……――んぐっ、うぇぁぁ……あっ、あぁ……[p]
    [_tb_end_text]


    [if exp="f.tinkasuFella.total == 0" ]
        ;---------------------------------
        ;【分岐】ここに来るのがはじめての場合
        *tinkasuFella01_9
        [tb_start_text mode=3 ]
        #
        最後に、みおの耳元でささやいた。[r]
        こういう時のあいさつを。[p]
        [_tb_end_text]


        ;☆スチル切替【20】
        [setTinkasuCG cg="20" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0038_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せ、せんせいの……おちんちんチーズ、[r]
        ごちそうさま、でした……[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [else]
        ;---------------------------------
        ;【分岐】上記以外の場合（２回目以降）
        *tinkasuFella01_10

        ;☆スチル切替【20】
        [setTinkasuCG cg="20" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0038_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せ、せんせいの……おちんちんチーズ、[r]
        ごちそうさま、でした……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        お前に教えたあいさつも[r]
        きちんと憶えていたようだ。[p]
        [_tb_end_text]


        ;　→次の共通部へ
    [endif]
    ;---------------------------------
    ;【共通部】
    *tinkasuFella01_11
    [messageInvisible]
    ;☆スチル切替【bk100】
    [maskStart]
        [free layer="2" name="still" ]
        [bgChange storage="bk100.jpg" time="1"]
        [chara_hide_all time="1" ]
    [maskEnd]
    [fadeoutbgm2 time="6000" ]
    [messageON]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;シーン回想からの再生の場合はここで終わる。
    [if exp="f.flag_replay" ]
        [jump target="tinkasuFella01_end" ]
    [endif]
    ;--------------------------------------------------------------
    ;本編からの場合は下記を経てから自由行動パートに戻る。


    ;みおの体力-40
    [calcMioHP HP="-40"  ]
    ;消耗大きめにしておく

    ;性経験加算
    ;　開発度口+1、フェラチオ+1、口内射精+1、ぶっかけ+1
    [eval exp="f.mouth++" ]
    [eval exp="f.fellatio++" ]
    [eval exp="f.mouthCum++"]
    [eval exp="f.sperm++" ]
    [eval exp="f.tinkasuFella.total++" ]
    *tinkasuFella01_12


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [addTime minutes=60]
        ;　※朝差分もあるので、念のため時間帯に応じて変化するように指定を
        [bgChange time="0"  method="crossfade"  storage="dr_m.jpg"  cond="f.dayPart == 'morning' || f.dayPart == 'evening'" ]
        [bgChange time="0"  method="crossfade"  storage="dr_n.jpg"  cond="f.dayPart == 'night'" ]
        [chara_hide_all  time="1"  wait="false"  ]
        ;スチル消去
        [free layer="2" name="still" time="1" ]
        [mioHyoujou hyoujou="fuanaketojime2tear_red.png" time="1"]
        [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……えっと[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanaketojime4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene3_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いろいろありましたけど、[r]
    先生がお風呂できれいになってよかったです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    どこまでもやさしいみおだった。[p]
    [_tb_end_text]


    ;暗転＆暗転解除で自由行動パートに戻る or 適当なテキストを足して翌日へ
    [maskStart]
        [jump target="tinkasuFella01_end" ]




    *tinkasuFella01_end
    [setreplay name="tinkasfella" storage="replay_select.ks" target="tinkasuFella_select"]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;以上

[endmacro]

