[macro name="rotorCli02" ]


    ;残タスク
    ;　SE
    ;　BGV／BGS

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;＜ピンクローター（クリ）：２回め以降＞
    ;開始パターン１・２とありますが、現状では１の導線しか存在しません。
    ;パターン２も一応消さずに残しつつ、処理の流れとしてはパターン１を通って共通部に進むルートのみ
    ;設定しておいてください。
    [messageON]



    ;まずはADVパート画面を維持してそのまま進行
    ;シーン回想からスタートの場合、開始地点はもっと下の方。
    [if exp="f.flag_replay" ]
        [jump storage="Hscene/rotorCli02.ks" target="rotorCli02_1_1" ]
    [endif]

    *rotorCli02_1
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……わかりました[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっぱいしつけて、[r]
    わたしをいい子にしてくださいね[p]
    [_tb_end_text]
    *rotorCli02_1_1
    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;立ち絵消去
    [chara_hide_all time="1" ]
    ;スチルとしても【bk100】を表示しておく
    [image layer="3" storage="../bgimage/bk100.jpg" time="1" name="bkcg" ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    ;[addTime minutes=30]
    ;現在時刻に合わせた居間背景（シーン回想の場合は夜）
    [free layer="3" name="bkcg" time="1" ]
    [bgcheck bgm="false"]
    [wait  time="500"  ]
    [maskEnd]
    [messageON]

    ;ローターが震えるＢＧＳがうっすら鳴り続けている


    [tb_start_text mode=3 ]
    #
    ――そろそろ30分ぐらい経つ。[r]
    仕上がったころだろうか。[p]
    [_tb_end_text]


    [bgChange time="1000"  method="crossfade"  storage="dr_m.jpg"  cond="f.dayPart == 'morning' || f.dayPart == 'evening'" ]
    [bgChange time="1000"  method="crossfade"  storage="dr_n.jpg"  cond="f.dayPart == 'night'" ]
    ;↓のボイスをテキストなしでＳＥ的に再生

    ;【収録不要】みお
    ;（ループはしないがＢＧＳ的なボイスとして、
    ;　ガムテープで口をふさがれてロータークリ責め放置プレイをされて
    ;　うめいている長めの苦悶のあえぎ声）


    [glink_center storage="Hscene/rotorCli02.ks" target="rotorCli02_2" text="みお～" ]
    [s]

    *rotorCli02_2
    [playse  volume="100"  time="1000"  buf="1"  storage="se/huroake.mp3"  ]


    [fadeinbgm storage="BGM6_violence.mp3" time="6000" ]

    ;スチル切替【01】全裸でガムテ拘束の上、クリにローターを固定されているみお。口もガムテ、目はアイマスク。
    [setRotorCliCG cg="01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0018_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ！　っ！[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0019_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今外すからね、と声をかけながら[r]
    目と口の拘束を解いてやる。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setRotorCliCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0020_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――っはぁ、はっ、はぁ[l]
    [_tb_end_text]


    [glink_left storage="Hscene/rotorCli02.ks" target="rotorCli02_3" text="イった回数、ちゃんと数えてた？"]
    [glink_right storage="Hscene/rotorCli02.ks" target="rotorCli02_4" text="いい表情だぞ"]
    [s]

    ;---------------------------------
    ;分岐【選択肢】イった回数、ちゃんと数えてた？
    *rotorCli02_3
    ;スチル切替【04】
    [setRotorCliCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0060_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それは……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setRotorCliCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0061_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たくさんイきすぎて、[r]
    わかりませんでした……♡[p]
    [_tb_end_text]

    ;　→次の共通部へ

    [jump target="rotorCli02_5" ]

    ;---------------------------------
    ;分岐【選択肢】いい表情だぞ
    *rotorCli02_4
    ;スチル切替【04】
    [setRotorCliCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0062_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はへぁ……♡[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setRotorCliCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0063_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    縛られたままイきすぎて、ちから入らなくて[r]
    くらげさんになった気分ですぅ[p]
    [_tb_end_text]



    ;　→次の共通部へ
    [jump target="rotorCli02_5" ]
    ;---------------------------------
    ;【共通部】
    *rotorCli02_5

    ;スチル切替【05】
    [setRotorCliCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0064_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――ぁ[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setRotorCliCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0026_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ――～～……っ！　っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    人が話してる途中でまた勝手にクリイキか。[l]
    [_tb_end_text]

    ;スチル切替【01】
    [setRotorCliCG cg="01" time="300"]

    [glink_center storage="Hscene/rotorCli02.ks" target="rotorCli02_6" text="お仕置き続行だ"]
    [s]
    *rotorCli02_6
    ;適当な画面やSEの演出

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0027_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ンム～～っ！　ムググーっ！！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0028_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ、っ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0029_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、ううぅ、うっ……うぐぐぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;スチルもいちど全消去し、改めてスチルとして【bk100】をおいておく
    [free layer="2" name="still" ]
    [image layer="3" storage="../bgimage/bk100.jpg" time="1" name="bkcg" ]
    [addTime minutes=30]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/huroake.mp3"  ]
    ;スチル切替【08】
    [setRotorCliCG cg="08" time="1"]
    [free layer="3" name="bkcg" time="1000" ]
    [tb_start_text mode=3 ]
    #
    再び名前を呼びながら浴室に戻る。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0031_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぅ……うぁうぅ～……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0037_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、あぁ、あおっ、んんっ……[r]
    んんー……っ、あぅぁぁ……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    漏らすぐらいには追加のお仕置きは[r]
    よかったらしかった。[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setRotorCliCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0038_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setRotorCliCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0039_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……せん、せ……[r]
    せんせいだぁ……[p]
    [_tb_end_text]

    ;スチル切替【12】
    [setRotorCliCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0045_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁっ……う、うぅふ……[p]
    [_tb_end_text]

    ;スチル：手マン
    ;スチル切替【14】
    [setRotorCliCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0046_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は――ぇ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いきなりトップスピードで[r]
    膣壁をこそぎ上げる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手のひらでは恥丘を押しつぶし、[r]
    クリがローターにより密着するように。[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setRotorCliCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0047_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    クリトリスっ、つぶれてっ、[r]
    ひぃっ、つぶされながらしびれてぇっ[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setRotorCliCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0048_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぶるぶる、してるのがぁっ、[r]
    おなかの奥までひびくのっ[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setRotorCliCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0049_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひっ、ひぃぁっ、あぁあぁ、また、[r]
    ごめっ、なさ……っ、んひぁぁぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手のひらに熱い感触――[r]
    また失禁をしているようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    出し尽くせとばかりに膀胱のあたりを[r]
    指の腹で撫で潰す。[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setRotorCliCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0050_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やぁっ、んやぁっ、イってる、[r]
    イってるのぉっ[p]
    [_tb_end_text]


    ;スチル切替【18】
    [setRotorCliCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0051_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これぇっ、このままじゃあ出ちゃう、[r]
    イきながらおしっこ出しちゃっててぇっ[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setRotorCliCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0052_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    クリもおまんこもおかしくなってする[r]
    おしっこきもちいいのぉっ、んあああっ[l]
    [_tb_end_text]

    ;一択選択肢：もっと出せっ、出し尽くせっ
    [glink_center storage="Hscene/rotorCli02.ks" target="rotorCli02_7" text="もっと出せっ、出し尽くせっ" ]
    [s]
    *rotorCli02_7
    ;絶頂演出、潮吹き表現のスチルへ
    ;スチル切替【19】
    [setRotorCliCG cg="19" time="300" zettyou="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0065_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イグっ、イグイグイグぅぅぅっ[p]
    [_tb_end_text]


    ;スチル切替【20】
    [setRotorCliCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0053_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいっ、はいぃぃっ、[r]
    んやあああぁぁあぁ～～――っ！！[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setRotorCliCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0054_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あおぁぁ……っ、[r]
    お、おおぅぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    浴室の天井にさえ届きそうなほどの噴射。[r]
    溜めに溜めた潮吹きだった。[p]
    [_tb_end_text]

    ;スチル切替【22】
    [setRotorCliCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0056_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……うっ、おおっ、ぁ……[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setRotorCliCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene7_0057_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お、おしおき……[r]
    ありがとう、ございました……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こちらの服までびしゃびしゃだ。[r]
    着替えついでに軽くシャワーを浴びなくては。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……みおの拘束を解くのは[r]
    その後でいいだろう。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    ;暗転していくなかで例のボイスをまたＳＥ的に使い続ける
    [messageOFF]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [free layer="2" name="still" ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]



    ;シーン回想の場合、ここで終了
    [if exp="!f.flag_replay" ]
        ;性経験加算
        ;　露出調教+1、絶頂数陰核+5、開発度陰核+5
        [eval exp="f.masochism++" ]
        [eval exp="f.clitorisTotalOrgasm+=5" ]
        [eval exp="f.clitoris+=5" ]
        ;みお体力-40
        [calcMioHP HP="-40"]

        ;後は適当なテキストをつけて一日終了
    [endif]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]