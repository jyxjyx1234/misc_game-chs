[macro name="nantai02" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜【疑似エロイベント】軟体パンチラ　段階２＞
    *nantai02_1
    [setreplay name="kintore" storage="replay_select.ks" target="kintore_select"]
    ;回想からの場合、BG自宅日中、みおは指定の衣装で設定し、situmon.pngで表示
    [eval exp="f.lastNantaiCG = 'none'"]
    [if exp="!f.flag_replay" ]
       [mioHyoujouSabun hyoujou="situmon.png"]
    [else]
        [maskEnd]
    [endif]
    [messageON]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおがうずうずした様子で[r]
    こちらを見ているのに気づいた。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしもまた柔軟体操しようかな、って[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たまに動かさないと筋肉ってかたまって[r]
    動きがにぶくなっちゃうらしいですし[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えーと……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なるほど。[r]
    前のパンチラを思い出して渋っているようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ここはひとつ……[l]
    [_tb_end_text]

    ;選択肢
    ;　目をつぶってるから、その間に
    ;　無理にやらなくても大丈夫だよ
    [glink_left storage="nonHscene/nantai02.ks" target="nantai02_2" text="目をつぶってるから、その間に" ]
    [glink_right storage="nonHscene/nantai02.ks" target="nantai02_3" text="無理にやらなくても大丈夫だよ" ]
    [s]

    ;----------------
    ;【選択肢分岐】無理にやらなくても大丈夫だよ
    *nantai02_3

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですかね……？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ではまたの機会ということで[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……ん？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うまいこと誘導すればまたパンチラが[r]
    拝めたのだろうか、これ？[p]
    [_tb_end_text]



    ;回想からの場合、ここで終了
    ;イベント終了
    [jump target="nantai02_end" ]
    ;----------------
    ;【選択肢分岐】目をつぶってるから、その間に
    *nantai02_2
    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なるほど！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……ほんとに目つぶっててくださいね？[p]
    [_tb_end_text]

    ;スチルとしてbk100表示
    [setBK time="500"]
    [tb_start_text mode=3 ]
    #
    ああ、とうなずき、[r]
    寝転んだ体勢のまま目をつぶる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それでは……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むむむ――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    てやっ[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    そよ風を感じた。みおが[r]
    勢いよく足を振り上げたのだろう。[l]
    [_tb_end_text]

    ;選択肢
    ;　目を開けてのぞく
    ;　目を閉じている
    [glink size="20"  color="btn_05_black_narrow" x="50" y="180" text="のぞく（エロ展開）" target="nantai02_4"  exp="f.debugNantai = true"]
    [glink_left storage="nonHscene/nantai02.ks" target="nantai02_4" text="目を開けてのぞく" exp="f.debugNantai = false"]
    [glink_right storage="nonHscene/nantai02.ks" target="nantai02_5" text="目を閉じている" exp="f.debugNantai = false"]
    [s]

    ;----------------
    ;【選択肢分岐】目を閉じている
    *nantai02_5

    [tb_start_text mode=3 ]
    #
    約束通り、そのまま目をつぶって[r]
    みおの体操が終わるのを待つ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うーんっ、きもちよかったぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、もういいですよ[r]
    ありがとうございました[p]
    [_tb_end_text]

    ;ウェイトナシでみおの表情を　raku1.pngに変更
    ;スチル消去
    [mioHyoujouSabun hyoujou="raku1.png" time="0"]
    [deleteBK time="500"]

    [tb_start_text mode=3 ]
    #
    声をかけられて目を開けると、[r]
    上機嫌でタオルを差し出してくるみおだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お互い良い運動ができましたね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゃあ、タオル片付けて[r]
    お水飲んだりしてきますね[p]
    [_tb_end_text]

    [mioLeave]

    [messageON]
    [tb_start_text mode=3 ]
    #
    うん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    紳士としてふるまったが、[r]
    ちょっと惜しかったような気もする。[p]
    [_tb_end_text]



    ;回想からの場合、ここで終了
    [if exp="!f.flag_replay" ]
    ;みお体力+5
        [calcMioHP HP="5" ]
    ;イベント終了
    [endif]
    [jump target="nantai02_end" ]
    ;----------------
    ;----------------
    *nantai02_4
    ;【選択肢分岐】目を開けてのぞく

    [tb_start_text mode=3 ]
    #
    では、薄目を開けて……と。[p]
    [_tb_end_text]
    [jump target="nantai02_4_1" cond="f.debugNantai"]
    ;----------------
    ;【展開分岐】みおがえっちな場合
    [checkParam]
    [if exp="f.totalParamLv == 'high'" ]
        *nantai02_4_1
        ;スチル表示【02】＿その時の私服に合わせたものを表示してください
        [setNantaiCG cg="02" time="1"]
        [deleteBK time="1000"]
        [tb_start_text mode=3 ]
        #
        すると、みおと目が合った。[p]
        [_tb_end_text]

        ;スチル切替【04】
        [setNantaiCG cg="04" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱりのぞくつもりだったんですね[p]
        [_tb_end_text]

        ;スチル切替【03】
        [setNantaiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0021.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        いたずらな先生です[p]
        [_tb_end_text]

        ;スチル切替【05】
        [setNantaiCG cg="05" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だから、わたしの方からもとっておきの[r]
        いたずら返しですよ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そう言って、みおは股間を見せつけるように[r]
        身体をくねらせるのだった。[p]
        [_tb_end_text]

        ;スチル切替【07】
        [setNantaiCG cg="07" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……♡[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        なッ、なんたる小悪魔……ッ！[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        筋トレで疲れ切ってきて[r]
        身を起こすこともできない男相手にッ！！[p]
        [_tb_end_text]

        ;スチル切替【08】
        [setNantaiCG cg="08" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0024.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        たっぷり眺めてくださいね♡[p]
        [_tb_end_text]


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
        お言葉に甘え、[r]
        たっぷり視姦させてもらったのだった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        あれはみおの方もけっこう[r]
        ドキドキしていたはずだが……[p]
        [_tb_end_text]
        ;スチル切替【bk100】
        [setBK time="500"]
        ;ウェイトナシでみおの立ち絵を消去
        ;スチル消去
        [free name="still" layer="2" ]
        [chara_hide_all time="1" ]


        ;回想からの場合、ここで終了
        [if exp="!f.flag_replay" ]
            ;みお体力+5、みお欲求+10
            [calcMioHP HP="5" ]
            [eval exp="f.muramura += 10" ]
            ;みお性経験加算
            ;　露出調教+1
            [eval exp="f.masochism++" ]
            [deleteBK time="500"]
        [endif]
        ;イベント終了
        [jump target="nantai02_end" ]
    [else]
        ;----------------
        ;----------------
        ;【展開分岐】上記いずれにも該当しない場合
        *nantai02_4_2

        ;スチル表示【01】＿その時の私服に合わせたものを表示してください
        [setNantaiCG cg="01" time="1"]
        [deleteBK time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ～～……っ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおはこちらに気づくことなく[r]
        懸命にバランスを維持している。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        しばしその光景を楽しんでから[r]
        バレないように目を閉じることにした。[p]
        [_tb_end_text]

        [setBK time="1000"]

        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、もういいですよ[r]
        ありがとうございました[p]
        [_tb_end_text]


        ;ウェイトナシでみおの表情を　fuan2_red.png　に変更
        ;スチル消去
        [mioHyoujouSabun hyoujou="fuan_red.png" time="1"]
        [free layer="2" name="still" time="2000"  ]
        [deleteBK time="500"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene4_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あの、本当に目を閉じててくれたんですよね？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        うなずくと、それでその場はおさまった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        視線を感じたような……ぐらいの[r]
        疑惑はあったのかもしれない。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        お互いドキドキ体験だったな。[p]
        [_tb_end_text]



        ;回想からの場合、ここで終了

        [if exp="!f.flag_replay" ]
            ;みお体力+5、みお欲求+3
            [calcMioHP HP="5" ]
            [eval exp="f.muramura += 3" ]

            ;みお性経験加算
            ;　露出調教+1
            [eval exp="f.masochism++" ]
            [eval exp="f.weekendAction.training.nantaiEv.total++" ]
            [eval exp="f.weekendAction.training.nantaiEv.today = true" ]
        [endif]
        [jump target="nantai02_end" ]
    [endif]

    ;イベント終了
    *nantai02_end

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]