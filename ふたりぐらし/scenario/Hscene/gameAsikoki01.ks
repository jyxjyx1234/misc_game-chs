
;-------------------------------------------------------------
[macro name="gameAsikoki01"]
    ;シーン回想からの再生の場合、
    ;最初に「再生するシチュエーションを選んでください」のいつものやつを置いて
    ;選ばれたシチュ（段階）から開始

    ;暗転を経て、bk100.jpg背景でスタート
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        [freeimage layer="1" ]
        [freeimage layer="2" ]

        [RESET_CAMERA time="1" ]
        [chara_hide_all  time="1"  wait="false"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    ひょんなことから、頼みこめば足コキを[r]
    やってくれそうな状況になった――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    逃す手はないとみおをベッドに座らせ[r]
    自分はその足元にて体勢を整える。[p]
    [_tb_end_text]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほ、ほんとうにするんですか……？[r]
    とっても失礼な気がするんですけど……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のだいじなところ、[r]
    足で踏んだりしたら痛そう……ですし……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だからこそ、じゃないか。[r]
    それがいいからこんなに興奮しているのだ！[p]
    [_tb_end_text]

    ;スチル表示【01】　※省略しますが、そのときのみおの衣装にあったものの末尾01を表示・変更です。以降も同じ。
    [setGameAsiCG cg="01" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、わぁ……[r]
    腫れてるみたいに真っ赤……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ぐいぐいとペニスを突き上げ、[r]
    ねだりつつ急かす。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setGameAsiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかりました、わかりましたからぁ[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setGameAsiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    足の裏を先生のに押しつければ[r]
    いいんですね……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おっと、そこは見過ごせない。[r]
    正しい言葉遣いをするように訂正を求める。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setGameAsiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、はい……おちんちん、を[r]
    わたしが足で踏み踏みゴシゴシ……するんですね[p]
    [_tb_end_text]


    ;スチル切替【05】足がペニスに触れた状態へ
    [setGameAsiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……ぇぃっ[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setGameAsiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わわぁっ、今びくびくってしましたよぉ[r]
    かーって熱くなってきてますしっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおの足裏は手とは違う張りのあるやわらかさと[r]
    じんわりとしたぬくもりに満ちていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    あわてふためくみじろぎも[r]
    いい具合の刺激となって裏筋をしごき上げる。[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setGameAsiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きもち、いいんですか……？[r]
    あ、はい、このままゴシゴシですね……[p]
    [_tb_end_text]


    ;スチル切替【08】
    [setGameAsiCG cg="08" time="300"]
    [wait time="&f.WAIT_TIME" ]
    ;スチル切替【09】
    [setGameAsiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のさきっぽ、ぬるぬるしてきて……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    足でもおちんちんがガチガチなの、[r]
    わかります……[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setGameAsiCG cg="11" time="300"]
    [wait time=500]
    ;スチル切替【10】
    [setGameAsiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あはぁ……よろこんでもらえてるなら、[r]
    わたしもうれしいです……っ[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    みおもひざをこすり合わせていて、[r]
    おさなげな興奮の様子がこちらをより高ぶらせる。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/gameAsikoki01.ks" target="gameAsikoki01_1" text="そろそろ、イく――"]
    [s]

    *gameAsikoki01_1
    ;スチル切替【08】
    [setGameAsiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はいっ、イくんですね先生のおちんちん、[r]
    でもこれ、わたしどうしたら[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの焦りがつま先に伝わって、[r]
    白い足指が張り詰めた亀頭のくびれをねじりあげた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    く、うぅ――っ――……！[p]
    [_tb_end_text]


    ;射精演出,スチル切替【12】
    [setGameAsiCG cg="12" time="300" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃうぅぅぅっ～！[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setGameAsiCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    足の裏にびゅううぅって来てますぅ[r]
    熱い、ですっ、先生……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……うぶなみおにこんなことを、という背徳で[r]
    なんだかすさまじく興奮していたようだ。[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setGameAsiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさん……[r]
    だいじょうぶ、でしたか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    足コキでこんなに早く射精するとは……[r]
    あるいはみおに才能があったのかもしれないが。[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setGameAsiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっとぉ、あの……わたし、これ動くと大変そうなのですが……[p]
    [_tb_end_text]


    ;スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" name="still,bkcg" time="500" visible="true" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene1_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    拭いてくれますか？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおに自覚はなかったろうが、精液まみれの足先を[r]
    ついと差し出す姿はとんでもなく煽情的だった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    もしまた“次”があったら、[r]
    どうなってしまうことだろう……[p]
    [_tb_end_text]



    ;シーン回想からの再生の場合、ここで終了。
    ;ゲーム本編から発生した場合、自由行動パートに戻る前にさらに下記の流れへ。
    [fadeoutbgm2 time="6000"]
    [if exp="!f.flag_replay" ]
        ;★めじるし
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
            [addTime minutes=60]
            [bgcheck bgm="false"]
            [wait  time="500"  ]
            [chara_hide_all  time="1"  wait="false"  ]

            ;スチル消去
            ;拡大なしの通常ADV画面へ戻る
            [free layer="2" name="still" ]
            [free layer="3" name="still" ]
            [eval exp="f.gameAsikoki.today = true" ]
            [eval exp="f.gameAsikoki.total++" ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;みおと先生の体力-20
        [calcMioHP HP="-20" ]
        [calcHP HP="-20" ]


        [mioHyoujouSabun hyoujou="doya_red.png"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
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
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そうですね[r]
        そうしましょうか[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="raku2.png"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0036.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい、先生[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]
        [eval exp="f.doAsikoki = true" ]
    [endif]
    [setreplay name="gameAsikoki" storage="replay_select.ks" target="gameAsikoki_select"]
[endmacro]
