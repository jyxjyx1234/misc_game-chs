;＜おはようえっち：朝フェラ＞
;　「朝か。起きよう」の直後の画面まっしろ状態からスタート
;シーン回想スタートここから（画面まっしろ状態からスタート）
[macro name="asaFellaEv01" ]

    [setreplay name="asaFellaEv001" storage="replay_select.ks" target="asaFella_select"]

    [tb_start_text mode=3 ]
    #
    むむ……なんだか股間に違和感というか、[r]
    快感が……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    ;スチル表示【02.png】
    ;スチル切替【01.png】　※立て続けにスチルを切り替えるので、実装後に間の調整きをつける
    [setAsaFellaCG cg="02" time="1000"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0001.mp3"  ]
    [messageON]
    [tb_start_text mode=4 ]
    #みお
    あむっ、ん……ぁ……[r]
    あ、先生……おはようございます[l]
    [_tb_end_text]

    [glink target="*asaFellaEv1_1" addlog="true" text="おはよう、みお" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]

    *asaFellaEv1_1
    [setAsaFellaCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゃあ続き、しますね[r]
    はむ……っ、ちゅっ、れるぁ……[p]
    [_tb_end_text]

    ;スチル切替【02.png】
    ;vo_bgvのFT_m001_bgs0039.mp3をBGSとして再生（参照の音量設定はボイス）
    [setAsaFellaCG cg="02" time="300"]
    [playse storage="vo_bgv/FT_m001_bgs0039.mp3" buf="3" loop="true"]
    ;　以下、このシーンが今回どのような発生事由だったかで分岐
    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-2.みおがムラムラ状態（欲求が高）によって発生
    [if exp="f.houshi.cause == 'd-2'"]
        [setAsaFellaCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ちゅ、ちゅっ、んん～……れる、んあぁ……[r]
        じゅっ、じゅるるっ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        フェラチオしながら[r]
        布団の中ではふとももをこすり合わせているようだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……みおもだいぶ欲求が溜まっていたようだ。[r]
        それでこんな行動に出たわけだな。[p]
        [_tb_end_text]


        ;　→【次の共通部へ】
        [eval exp="f.firstKiss = addExperience(f.firstKiss,'2036','性欲に駆られ、先生の朝勃ちペニスに口付けた')" ]


    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-1.ご奉仕フラグ（予約）によって発生
    [elsif exp="f.houshi.cause == 'd-1'"]
        [setAsaFellaCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふぁぁ、寝起きなのにおっきくて……はぷぁ、[r]
        おくちから溢れちゃ……言いつけなのに……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        こちらも寝ぼけていたようだ。そうだそうだ、[r]
        こうするように指示したんだったな。[p]
        [_tb_end_text]


        ;　→【次の共通部へ】
        [eval exp="f.firstKiss = addExperience(f.firstKiss,'2037','指示されたままの朝勃ち奉仕が初の口付けに')" ]

    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】d-3.先生がムラムラ状態によって発生
    [elsif exp="f.houshi.cause == 'd-3'"]
        [setAsaFellaCG cg="03" time="300"]
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
        [eval exp="f.firstKiss = addExperience(f.firstKiss,'2038','たくましい朝勃ちに心奪われ初キスを捧げた')" ]

    ;--------------------------------------------
    ;--------------------------------------------
    ;【発生事由により分岐】未使用のプレーンなパターン。ゲーム中登場はしませんが、ソース的には残しておいてください。
    [else]

        [tb_start_text mode=3 ]
        #
        と言って、続きに戻るみおだった。[p]
        [_tb_end_text]

        [setAsaFellaCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ちゅっ、ちゅぅぅ……ん、はぁ……[r]
        あむ、うぅ……れる、れろろ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        行為は淫靡なのに、みおの真剣さは[r]
        無私の奉仕そのものだ。[p]
        [_tb_end_text]

        ;　→【次の共通部へ】
    [endif]


    ;--------------------------------------------
    ;--------------------------------------------
    ;【共通部】


    ;BGM11_temptation.mp3　をtime6000でBGMとして再生開始
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000"]
    [tb_start_text mode=3 ]
    #
    だらだら流れるみおの唾液が睾丸を伝って[r]
    尻の方まで垂れてくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが今日最初に口にしたのが[r]
    自分のペニスだという事実がたまらない。[p]
    [_tb_end_text]

    ;--------------------
    ;このイベントを起こすのが２回目以降の時はこの範囲のテキストを追加挿入
    [if exp="f.houshi.fella > 0"]
        [tb_start_text mode=3 ]
        #
        朝フェラ、何度やらせてもいいものだな……[p]
        [_tb_end_text]
    [endif]
    ;--------------------

    [setAsaFellaCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んぁん……！？[r]
    ……ぷぁぅ、れるぁ……んん……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    より大きくなったペニスが[r]
    のどを突いたようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それでも離すまいとする必死の動きが[r]
    フェラのペースを速めていく。[p]
    [_tb_end_text]


    [setAsaFellaCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、ぐぷぷっ、[r]
    れろろ……んん～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    覚醒間もないせいか踏ん張りが効かない。[r]
    精液がぐんぐん上っていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    半覚醒で布団に転がる心地よさに[r]
    フェラの快感が加わり、得も言われぬ陶酔感だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    登校や出勤で動きはじめた人たちの声が[r]
    外から聞こえてくるのに――[p]
    [_tb_end_text]

    [setAsaFellaCG cg="02" time="300"]
    ;vo_bgvのFT_m001_bgs0040.mp3をBGSとして再生（参照の音量設定はボイス）
    [playse storage="vo_bgv/FT_m001_bgs0040.mp3" buf="3" loop="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぐっ、ぐぽぽっ、じゅるるるっ[r]
    んんん～、んっ、んんぅ、あむぅぅっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みんなが日常をはじめるその時間、[r]
    自分とみおはこんな淫らなことをしている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    唾液でぬるつくペニスは朝日にきらめき、[r]
    根元をおさえるみおの指にちからがこもる。[p]
    [_tb_end_text]

    [setAsaFellaCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――っはぷぁ、んんふ……はぁ、はふ、[r]
    ちゅ、ちゅ……ふぁう……んっ、んっ、ずっずずっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおは布団に隠れた身体を[r]
    半ば無自覚にこちらの足に擦りつけてくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    朝からちんぽをしゃぶり、股を濡らしたみおが[r]
    その後は澄ました顔で登校するのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    沸騰しそうな頭で、[r]
    足を動かしみおの自慰に加担してやる。[p]
    [_tb_end_text]

    [setAsaFellaCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0011.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    んん～っ、んっ、んんっ、ずぞぞぞぞっ[l]
    [_tb_end_text]

    ;一択選択肢「みお、そろそろ出そうだ……！」
    [glink target="*asaFellaEv1_2" addlog="true" text="みお、そろそろ出そうだ……！" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]

    *asaFellaEv1_2
    [setAsaFellaCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    らひてっ、らひてっ、ずっ、ずろろろっ、[r]
    んぷうぅっ、れるるる、じゅっ、じゅるるるっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    返事の代わりに吸いつきが強まった。[r]
    性器同然の口内全体でペニスをしぼってくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――……っ！！[p]
    [_tb_end_text]


    ;射精演出、BGS停止
    ;スチル切替【03.png】
    [stopse buf="3"]
    [syaseiFlashForStill layer="2" storage="EVcg/asaFella/06.png" name="still,asaFella06" count="false"]
    [free layer="2" name="asaFella04"]



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひはぁぁぁっ♡　んんぅぅぅう～っ♡♡[p]
    [_tb_end_text]

    [setAsaFellaCG cg="07" time="300"]
    [free layer="2" name="asaFella06" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんんぅ……あむあぁ……んふふ……[r]
    ふぁぁ……はふぁ……[p]
    [_tb_end_text]

    ;スチル切替【04.png】
    [setAsaFellaCG cg="08" time="300"]
    [free layer="2" name="fella3"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene4_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……んくっ、んん……[r]
    飲めました、えへ……いっぱいでしたね[p]
    [_tb_end_text]


    ;--------------------
    ;【分岐】このイベントを起こすのが２回目以降の時
    [if exp="f.houshi.fella > 0"]
        [tb_start_text mode=3 ]
        #
        これがみおの朝ごはんの代わりというわけだ。[p]
        [_tb_end_text]

        ;　→次の共通部へ
    ;--------------------
    ;【分岐】それ以外のとき（基本的には初回時が該当）
    [else]
        [tb_start_text mode=3 ]
        #
        まだ頭が働かず、うまく言葉が出ないが……[r]
        最高の目覚ましだった。[p]
        [_tb_end_text]

    [endif]
    ;　→次の共通部へ


    ;--------------------
    ;【共通部】


    ;BGM停止。time6000
    [fadeoutbgm2 time="6000" ]

    ;シーン回想からの場合はここで終了

    ;--------------------------------------------
    ;--------------------------------------------
    ;本編からのシーン発生だった場合、下記

    [if exp="!f.flag_replay"]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        ;スチル消去
        [setTime hours=6 minutes=30]
        [free layer="2" name="still"]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]


        ;先生体力-20。
        [calcHP HP="-20"]

        [tb_start_text mode=3 ]
        #
        その後、ぼーっとしている間に[r]
        みおが朝食の支度をしてくれ、食事となった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……みおは「おなか、すいてないので」と[r]
        朝食を抜いたのだった。[p]
        [_tb_end_text]



        ;みお性経験加算
        ;　「みおから迫って」に+1、「口内射精」+1、「フェラチオ」+1、「開発度口」+1
            ; フラグ加算（もし実装するなら）
        [calcMioHP HP="-20"]
        [eval exp="f.malerape++"]
        [eval exp="f.fellatio++"]
        [eval exp="f.fellatioToday++"]
        [eval exp="f.mouthCum++"]
        [eval exp="f.mouthCumToday++"]
        [eval exp="f.mouth++"]
        [eval exp="f.houshi.fella++"]
    
    [endif]

    [setreplay name="asaFellaEv001" storage="replay_select.ks" target="asaFella_select"]
[endmacro]
;暗転して食事演出SE再生。時間を7:00に。室内背景で暗転解除。
;食事の感想の地の文の表示が終わった直後から、朝のいつものフローへ合流

