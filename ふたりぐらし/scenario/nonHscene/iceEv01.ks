;＜棒アイスで疑似フェラ＞

;本編から／シーン回想ともにここから。
;シーン回想の場合は、みお私服立ち絵表示（situmon）、背景gamcen.jpg
[macro name="iceEv01" ]

    *iceEv01_1
    ;--------------
    ;【プチ分岐】

    [if exp="f.flag_replay" ]
        [mioHyoujouSabun hyoujou="situmon.png" time="1"]
        [bgChange storage="gamcen.jpg" time="1" ]
        [maskEnd]
    [endif]

    [eval exp="f.beforeBG = f.lastBG" ]
    [messageON]
    ;イベント初回
    [if exp="f.iceEv.total == 0" ]

        [mioHyoujouSabun hyoujou="odoroki.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わ～！　先生すごいです！[p]
        [_tb_end_text]

    [else]
        ;イベント２回め以降
        [mioHyoujouSabun hyoujou="odoroki.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わ～！　また当てたんですね！[p]
        [_tb_end_text]

    [endif]
    ;--------------

    [tb_start_text mode=3 ]
    #
    ちょうど、２本で１セットになっている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    手近なベンチに腰掛け、[r]
    みおと分け合って食べることにした。[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;立ち絵消去
    [chara_hide_all time="1" ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ……先生、[r]
    これすごくカタいです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    がっつり冷凍されていたようで[r]
    舐めてやわらかくする必要がありそうだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちょっとはしたないかもですけど、[r]
    そういうアイスなんですよね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    では……[p]
    [_tb_end_text]

    ;☆スチル表示【01】※現在の衣装を反映
    [setIceFellaCG cg="01" time="1000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん～、ちゅっ……[p]
    [_tb_end_text]

    ;☆スチル切替【02】
    [setIceFellaCG cg="02" time="300" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふぁ……れるる……じゅっ、あぷ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;☆スチル切替【03】
    [setIceFellaCG cg="03" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んるるる～[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これは……[p]
    [_tb_end_text]

    ;☆スチル切替【02】
    [setIceFellaCG cg="02" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あむ……はむはむ……っちゅ[p]
    [_tb_end_text]


    ;☆スチル切替【04】
    [setIceFellaCG cg="04" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……ちょっと溶けて[r]
    おツユが出てきましたね……ふふっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なんか……[r]
    妙な想像をしてしまいそうな雰囲気だぞ……[p]
    [_tb_end_text]

    ;☆スチル切替【05】
    [setIceFellaCG cg="05" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅ、ちゅるるっ……[r]
    おいし……んんっ[p]
    [_tb_end_text]

    ;----------------------
    ;【追加挿入】みおがえっちなとき、フェラが得意な時とかの追加差分
    [eval exp="f.totalParam = Number(f.cunt) + Number(f.clitoris) + Number(f.bust) + Number(f.tikubi) + Number(f.mouth) + Number(f.hip) + Number(f.anus) + Number(f.kiss) + Number(f.sperm) + Number(f.masturbation) + Number(f.fellatio) + Number(f.masochism) + parseInt(f.sexTotal) + parseInt(f.analsex) + parseInt(f.malerape) + parseInt(f.creampie) + parseInt(f.analCum) +parseInt(f.mouthCum) + (parseInt(f.mouthTotalOrgasm) +parseInt(f.bustTotalOrgasm) +parseInt(f.clitorisTotalOrgasm) +parseInt(f.cuntTotalOrgasm) +parseInt(f.hipTotalOrgasm) +parseInt(f.anusTotalOrgasm))" ]
    [if exp="f.totalParam >= 50 && f.fellatio >= 20" ]
        [eval exp="f.iceEv.fellaToday = true" ]
        [eval exp="f.iceEv.fellaTotal++" ]


        ;☆スチル切替【04】
        [setIceFellaCG cg="04" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、見ててくださいね[p]
        [_tb_end_text]

        ;☆スチル切替【05】
        [setIceFellaCG cg="05" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        じゅっ、じゅるるっ、んぷあぁ[p]
        [_tb_end_text]

        ;☆スチル連続して切替【04】【05】
        [setIceFellaCG cg="04" time="300" ]
        [WAIT]
        [setIceFellaCG cg="05" time="300" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ～む……ふふっ……[r]
        れろろろ……んぷぁっ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        完全にわざとやってるぞ、これは！[p]
        [_tb_end_text]
    [endif]

    ;----------------------

    ;☆スチル切替【04】
    [setIceFellaCG cg="04" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    舐めた形に溶けてきて……[r]
    いい感じにやわらかくなって……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    う、うぅ……[p]
    [_tb_end_text]

    ;☆スチル切替【06】
    [setIceFellaCG cg="06" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いただきます――あむっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あぁ――っ！！[r]
    かじられてさきっぽが！！[p]
    [_tb_end_text]

    ;-------------------------------
    ;☆下記の２テキスト、条件に合う方のどちらかのみの表示

    ;下記テキストの表示条件を満たさない時
    [if exp="!(f.totalParam >= 50 && f.fellatio >= 20)" ]

        ;☆スチル切替【07】
        [setIceFellaCG cg="07" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……？[p]
        [_tb_end_text]

        ;みおがえっちなとき、フェラが得意な時
    [else]
        ;☆スチル切替【08】
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]
    [endif]
    ;-------------------------------

    ;ここでスチルを消去して通常ＡＤＶ画面へ
    ;スチル消去前にみお立ち絵を瞬間切り替えで　situmon.png　へ
    [bgChange storage="&f.beforeBG" time="1"]
    [mioHyoujouSabun hyoujou="situmon.png" time="1"]
    [free layer="2" name="still" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0019.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    どうしました？[r]
    先生アイス食べないんですか？[l]
    [_tb_end_text]

    [glink_left text="いい食べっぷりだったよ" storage="nonHscene/iceEv01.ks" target="iceEv01_2"]
    [glink_right text="このアイス、美味しいね" storage="nonHscene/iceEv01.ks" target="iceEv01_3"]

    [s]
    ;選択肢
    ;　いい食べっぷりだったよ
    ;　このアイス、美味しいね

    ;----------------------------
    ;【選択肢分岐】いい食べっぷりだったよ
    *iceEv01_2
    
    [eval exp="console.log(tf.totalParam)" ]
    ;【プチ分岐】みおの総性経験50以上 かつ フェラチオ経験20以上（回想の場合はフェラが得意を選んでいることが条件）
    [if exp="f.totalParam >= 50 && f.fellatio >= 20" ]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0021.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        想像……しちゃいました？[p]
        [_tb_end_text]

    [else]
        ;【プチ分岐】上記以外の場合
        [mioHyoujouSabun hyoujou="fuan.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        アイスの食べ方にいいとかあるんですか……？[p]
        [_tb_end_text]

    [endif]
    ;　→次の共通部へ
    [jump target="iceEv01_4" ]
    ;----------------------------
    ;【選択肢分岐】このアイス、美味しいね

    *iceEv01_3


    ;【プチ分岐】みおの総性経験50以上 かつ フェラチオ経験20以上（回想の場合はフェラが得意を選んでいることが条件）
    [if exp="f.totalParam >= 50 && f.fellatio >= 20" ]
        [mioHyoujouSabun hyoujou="raku2_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、とっても美味しくて[r]
        たくさんペロペロしちゃいました[p]
        [_tb_end_text]

    [else]
        ;【プチ分岐】上記以外の場合
        [mioHyoujouSabun hyoujou="raku2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene1_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、とっても！[r]
        ゲットしてくれてありがとうございました[p]
        [_tb_end_text]
    [endif]
    ;　→次の共通部へ
    [jump target="iceEv01_4" ]
    ;----------------------------
    ;【共通部】
    *iceEv01_4
    ;下記、シーン回想からの場合は実行しない
    ;　・時間経過10分
    ;　・先生とみおの体力を20回復
    [if exp="!tf.flag_replay" ]
        [addTime minutes="10"]
        [calcHP HP="20"]
        [calcMioHP HP="20"]
        [eval exp="f.iceEv.total++" ]
        [eval exp="f.iceEv.today = true" ]
    [endif]

    [tb_start_text mode=3 ]
    #
    いいものが見れたな……[r]
    と思いつつ、ゲーセンを後にした。[p]
    [_tb_end_text]


    ;☆上記のみおがエッチだった場合の追加表示が行われていない場合、下記を追加挿入
    [if exp="!(f.totalParam >= 50 && f.fellatio >= 20)" ]

        [tb_start_text mode=3 ]
        #
        みおが性経験豊富だったら翻弄されていたかもだ。[p]
        [_tb_end_text]

    [endif]

    ;シーン回想の場合ここで終了
    [setreplay name="iceFella" storage="replay_select.ks" target="iceEv_select"]
[endmacro]
;イベント終了。ショッピングモールいきさき選択画面へ戻る
;（「よし、用事は済んだな（略）」を表示しない）