[macro name="nantai01" ]



    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜【疑似エロイベント】軟体パンチラ　段階１＞
    *nantai01_1
    [setreplay name="kintore" storage="replay_select.ks" target="kintore_select"]
    [eval exp="f.lastNantaiCG = 'none'"]
    ;回想からの場合、BG自宅日中、みおは指定の衣装で設定し、situmon.pngで表示
    [if exp="!f.flag_replay" ]
        [mioHyoujouSabun hyoujou="situmon.png"]
    [else]
        [maskEnd]
    [endif]
    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっぱり体操とか、軽い運動で[r]
    汗をかくと気持ちよさそうですね[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="metojiake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしも最近はあんまり[r]
    そういうことしてなかったですけど……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と、言いながらみおはおもむろに動き出した。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="okoruake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0003.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    えいっ[l]
    [_tb_end_text]

    ;スチル表示【01】＿その時の私服に合わせたものを表示してください
    [setNantaiCG cg="01"]

    ;一択選択肢「！？」
    [glink_center storage="nonHscene/nantai01.ks" target="nantai01_2" text="！？" ]
    [s]
    *nantai01_2
    ;スチル切替【02】
    [setNantaiCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、できました！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    Ｉ字バランスとかＹ字バランスとか言うやつだ。[r]
    すごい。[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setNantaiCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見てください先生、これ！[r]
    わたしにもまだできました！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    寝転んだ頭のそばでやるものだから[r]
    いろいろなものがばっちり見えている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それにしても大変な喜びようだ。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setNantaiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0006.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    昔挑戦しておぼえたんですけど[r]
    ひさびさでもまだできました[l]
    [_tb_end_text]


    ;選択肢
    ;　そ、そっかー
    ;　ぱ、ぱんつー
    [glink_left storage="nonHscene/nantai01.ks" target="nantai01_3" text="そ、そっかー" ]
    [glink_right storage="nonHscene/nantai01.ks" target="nantai01_4" text="ぱ、ぱんつー" ]
    [s]
    ;----------------
    ;【選択肢】そ、そっかー
    *nantai01_3
    ;スチル切替【03】
    [setNantaiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    自分の身体がたくさん動くのって[r]
    なんだかうれしいです[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setNantaiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっでも先生の位置からだと[r]
    わたしがどうなってるかあんまり見え……[p]
    [_tb_end_text]


    ;スチル切替【04】
    [setNantaiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見え……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="nantai01_5" ]
    ;----------------
    ;【選択肢】ぱ、ぱんつー
    *nantai01_4
    ;スチル切替【04】
    [setNantaiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え？　パンですか？[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setNantaiCG cg="01" time="300"] 
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    身体にいい食べ物とかの話なら[r]
    筋肉にいいのはクエン酸なので、えーと……[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setNantaiCG cg="02" time="300"] 
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    レモンとか梅干しとかですけど[r]
    そういうお話ではなくて……？[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="nantai01_5" ]
    ;----------------
    ;【共通部】
    *nantai01_5
    [tb_start_text mode=3 ]
    #
    などと話しているうちに[r]
    みおがこちらの視線の意味を悟った。[p]
    [_tb_end_text]



    ;スチル切替【05】
    [setNantaiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、あっ[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setNantaiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああっ[p]
    [_tb_end_text]

    ;ウェイトナシでスチル下の立ち絵の表情を　fuanake2_red.png　にしておく
    ;スチルオフ
    [mioHyoujouSabun hyoujou="fuanake2_red.png" time="0"]
    [free layer="2" name="still" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    赤い顔で元の体勢に戻るみおだった。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
    ;みお「□〇△×……」　SEとして扱うので、テキストは無し
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene3_0016.mp3"  ]
    [mioLeave]

    [messageON]

    [tb_start_text mode=3 ]
    #
    そしてなにか口のなかでモゴモゴ言いながら[r]
    照れ隠しに去っていった……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    まあ、だれも悪くない出来事だし、[r]
    後はなにごとも無かったように過ごすべきだろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それにしてもあれは眼福だったな……[p]
    [_tb_end_text]



    ;回想からの場合、ここで終了
    [if exp="!f.flag_replay" ]
        ;みお体力+5
        [calcHP HP="5" ]
        ;みお性経験加算
        ;　露出調教+1
        [eval exp="f.masochism++" ]
        [eval exp="f.weekendAction.training.nantaiEv.total++" ]
        [eval exp="f.weekendAction.training.nantaiEv.today = true" ]

    [endif]
    ;イベント終了


    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]