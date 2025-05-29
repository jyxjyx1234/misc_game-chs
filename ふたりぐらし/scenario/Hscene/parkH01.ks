;＜概要＞
;　段階１。虫がついてるよ、とだましてスカートめくりをさせた状態で
;　パンツを眺めてちょと触ったりをする。
[macro name="parkEv1" ]
    ;直前までの流れのADV状態から開始

    ;シーン回想からの場合はここから開始なので、暗転あけの前に夜の公園BG、制服姿のみお表情normalake2.pngを描画しておく
    [messageON]
    [tb_start_text mode=4 ]
    #
    みおー、と声をかける。[l]
    [_tb_end_text]

    [glink target="*parkEv1_1" addlog="true" text="おっきな虫がついてるよ！" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]
    *parkEv1_1
    [bgChange time="1000"  method="crossfade"  storage="kouen_n.jpg"  ]
    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0005.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    えっ、えっ、どこですか！？[l]
    [_tb_end_text]

    [if exp="sf.isTaiken" ]
        [cm]
        [clearstack]
        [skipForTaikenban  cg="EVcg/koenHstill01/01b.png" voice="vo_scene/FT_m006_scene4_0058.mp3"]
        [jump storage="weekendCommand.ks" target="*endStroll"]

    [endif]

    [glink target="*parkEv1_2" addlog="true" text="スカートの中に入っちゃった！" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]
    *parkEv1_2
    [mioHyoujouSabun hyoujou="EvKusai1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃあああっ[p]
    [_tb_end_text]

    [messageInvisible]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]
    ;【01.png】表示
    [CGSet layer="2" storage="EVcg/koenHstill01/01.png" name="still,park1" time="1000" ]

    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どこですかっ、先生、[r]
    虫さんは！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おお……いたずら作戦が[r]
    あまりにも見事に決まって感動だ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    まだいたずらとバレてないようで[r]
    みおは制服のスカートをばさばさしている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……これなら、もうちょっと大胆に[r]
    アプローチできそうだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今とるから動かないでね、と[r]
    説明しながらにじり寄る。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/koenHstill01/02.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    刺す虫さんとかじゃ、ないですよね？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    真剣そのものを装い、まずは間近に寄って[r]
    みおのパンツをまじまじと眺める。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/koenHstill01/01.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    居ましたかぁ……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まだわからない。[r]
    奥の方に回り込んでしまったのかも――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/touch4.mp3"  ]
    [CGSet layer="2" storage="EVcg/koenHstill01/02.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    探すふりであちこちの感触を確かめる。[r]
    弾力あるやわらかさと、甘いぬくみ。[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/03.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の指、さわさわしてくるのが、[r]
    じっとしてられなっ、うっ、ううぅ～っ[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/04.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……んきゅ……っ、[r]
    う、はぁ……んんもうぅ～っ[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/01.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――あっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と声がして、ふたりして見上げた先で[r]
    元気よく羽虫が飛び去ろうとしていた。[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/koenHstill01/03.png" name="still,park1" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    虫さん、出てってくれたんですね[r]
    よかったぁ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    別虫がウソをマコトにしてくれたようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    よ、よかったね……と[r]
    言いながらみおから離れる。[p]
    [_tb_end_text]

    ;スチルオフでADV画面に戻る。スチルを消す前にみお立ち絵をokoru1_red.pngにしておく
    [mioHyoujouSabun hyoujou="okoru1_red.png" time="1"]
    [free layer="2" name="still" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0015.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene4_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当に、今の虫さんがもぐりこんでた……[r]
    んですよね、先生？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    無念さが顔に出ていたのか、[r]
    ちょっと疑惑を持たれてしまったようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    しかし離れる間際、見間違いでなければ――[r]
    みおのパンツは少し濡れていた。[p]
    [_tb_end_text]


    ;シーン回想からの場合はここで終了。
    [if exp="f.flag_replay!=true"]
        [calcMioHP HP="-20"]

        ;みお性経験加算
        ;　「露出・調教」に+1
        [eval exp="f.masochism++" ]
        ;ゲーム本編からの場合は、散歩終了の帰宅処理に合流（実装後の挙動を見て必要であればテキスト追加など行う）
        [eval exp="f.parkHNow = true" ]


        [eval exp="f.parkEv = 1" ]
    [endif]

    [setreplay name="parkEv001" storage="replay_select.ks" target="park_select"]
[endmacro]