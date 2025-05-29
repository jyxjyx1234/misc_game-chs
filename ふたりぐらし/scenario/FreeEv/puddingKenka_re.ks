


;・下記すべてみたすときフリーイベントの抽選候補になる。
;　・平日
;　・同イベントの初回ver閲覧済み
;　・前回の同イベント発生（２回めver含む）から14日以上過ぎていること


;※選択肢の結果に応じて、このイベントの選択結果を記憶しておく（次回の再読verでまた参照）
;　・プリンをみおと食べた
;　・自分のぶんのプリンを先に食べた
;　・みおのぶんまでプリンを食べつくした

;※さらに、前回は↑のどれだったかに応じて細部が変化
;　同イベント再発生のたび、これを何度もくりかえす。



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;プリンEv２回め以降

;仕事から帰ってきて、自宅前（BG「genkan_」系）が表示されたところから下記
[macro name="puddingKenka02" ]
    *puddingKenka02 
    [messageON]
    [tb_start_text mode=3 ]
    #
    ただいま、とドアを開けたところで[r]
    配達の人が「お荷物です」と走ってきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおのお母さんが送り主の荷物だ。[r]
    と、いうことは……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    ;[bgChange time="1000"  method="crossfade"  storage="genkan2_d.png"  ]


    [mioHyoujou hyoujou="happyake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、おかえりなさい[r]
    先生[p]
    [_tb_end_text]

    [mioHyoujou hyoujou="happyake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    荷物受け取ってくださったんですね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kiraegao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ママがまたアレを贈ってくれたんですよ！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    大人気でなかなか買えないのを[r]
    なんとかまた勝ちとったとかで！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kira6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    北海道の有名な牧場と……コラボして……[r]
    チーズみたいなクリーミーさとカラメルの……が……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    前にも贈ってもらったことのある[r]
    あのプリンがまた……！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    二個入ってるので[r]
    ごはんの後、いっしょに食べましょう[p]
    [_tb_end_text]

    [messageInvisible]
    [mioJoy]
    [mioLeave]
    [messageON]

    [tb_start_text mode=3 ]
    #
    ……プリンではしゃぐみおを見るのも久しぶりだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    夕食もすぐに始まりそうだし、[r]
    居間に急ごう。[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0059.mp3"  ]
    [addTime minutes=30]
    [maskStart]
    [wait  time="500"  ]
    [bgcheck time="1" bgm="false"]
    [chara_hide_all  time="1"  wait="false"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]
    [mioHyoujou hyoujou="rakuake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0008.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ごちそうさまでした[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="ごちそうさま"  _clickable_img=""  target="puddingKenka02_1"  ]
    [s  ]
    *puddingKenka02_1
    [tb_start_text mode=3 ]
    #
    さて、それじゃあ先ほどのプリンを――[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、さきにお風呂いただいてもいいですか？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoruake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    プリンと向き合うために[r]
    わたし、身を清めておきたいんです[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    うなずく。[r]
    前回の時と同じ流れだ――と思いつつ。[p]
    [_tb_end_text]


    ;--------------------
    ;【分岐】前回行動が「プリンをみおと食べた」の時
    [if exp="f.puddingKenka.lastSelect== 0" ]
        [mioHyoujouSabun hyoujou="enryo.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ありがとうございますっ[p]
        [_tb_end_text]


        ;次の共通部へ

    ;--------------------
    ;【分岐】前回行動が「自分のぶんのプリンを先に食べた」か「みおのぶんまでプリンを食べつくした」の時
    [else]

        [mioHyoujouSabun hyoujou="fuanake.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0053.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……食べないで待っててくださいね[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        前はやってしまったからなぁ……と[r]
        苦笑いを返すのがやっとだった。[p]
        [_tb_end_text]

    ;次の共通部へ
    [endif]
    ;--------------------
    ;共通部

    [mioLeave]
    [messageON]
    ;次に登場する時はパジャマ着用なので、衣装切替および入浴済フラグを立てておく。
    [mioTakeBath]
    [eval exp="f.cloth = f.pajama" ]

    [tb_start_text mode=4 ]
    #
    というわけで――冷蔵庫でよく冷えたプリンと[r]
    お留守番状態になった。[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="……"  _clickable_img=""  target="puddingKenka02_2"  ]
    [s  ]
    *puddingKenka02_2
    [tb_start_text mode=3 ]
    #
    みおがああまで楽しみにするプリン、[r]
    実際以前いただいた時もとびきり美味だった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    さも当然というふうに、[r]
    身体は冷蔵庫の方へ向かっていた。[p]
    [_tb_end_text]


    ;暗転し、SE演出などする。
    [setBK time="300"]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/reizouko_open.mp3"  ]
    [tb_start_text mode=3 ]
    #
    ガチャリ、と。[r]
    冷蔵庫を開け、例のプリンを探し当てる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おぉ――……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    反射的に喉が鳴り、よだれが出ていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    色艶、形状、芳香……[r]
    以前同様、実に魅力的なプリンがそこにある。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが入浴を終えるまでの時間、[r]
    これを味わうことなく待てというのか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抗いがたい誘惑がプリンから[r]
    こんなにも放射され続けているというのに。[p]
    [_tb_end_text]

    [fadeoutbgm time="6000" ]
    [tb_start_text mode=4 ]
    #
    ……[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="みおを待つ"  _clickable_img=""  target="puddingKenka02_3"  ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="先に食べちゃう"  _clickable_img=""  target="puddingKenka02_4"  ]
    [s  ]

    ;以降、ラベルと選択肢の飛び先対応の設定が複雑なのでよくよくご注意ください。

    ;-----------------------------------------
    ;＞「先に食べちゃう」
    *puddingKenka02_4
    [tb_start_text mode=3 ]
    #
    本当に……？[r]
    本当に先にプリンを食べてしまうか？[p]
    [_tb_end_text]


    ;--------------------
    ;【分岐】前回行動が「自分のぶんのプリンを先に食べた」か「みおのぶんまでプリンを食べつくした」の時
    [if exp="f.puddingKenka.lastSelect== 1" ]
        [tb_start_text mode=3 ]
        #
        みおだってプリンの誘惑に抗いつつ[r]
        自分といっしょに食べようと気遣ってくれたのに――[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        前もそうやって欲望に流されて[r]
        みおを悲しませてしまったというのに？[l]
        [_tb_end_text]


        ;　真下の選択肢へジャンプ
    [else]
        ;--------------------
        ;【分岐】上記以外のとき

        [tb_start_text mode=4 ]
        #
        みおだってプリンの誘惑に抗いつつ[r]
        自分といっしょに食べようと気遣ってくれたのに――[l]
        [_tb_end_text]


        ;　真下の選択肢へジャンプ
    [endif]
    ;-----

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="やはりみおを待つ"  _clickable_img=""  target="puddingKenka02_5" exp="f.puddingKenka.select = 0" ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="それでも先に食べちゃう"  _clickable_img=""  target="puddingKenka02_6" exp="f.puddingKenka.select = 1" ]
    [s  ]


    ;-----------------------------------------
    ;＞「やはりみおを待つ」
    *puddingKenka02_5

    [tb_start_text mode=3 ]
    #
    それがいい。[r]
    そうすべきだ。[p]
    [_tb_end_text]

    ;　→フロー「みおを待つ」の“「やはりみおを待つ」からの合流部”にジャンプ（合流）
    [jump target="puddingKenka02_3"  ]

    ;-----------------------------------------
    ;＞「みおを待つ」
    ;（「やはりみおを待つ」からの合流部）
    *puddingKenka02_3
    [playse  volume="100"  time="1000"  buf="1"  storage="se/reizouko_close.mp3"  ]
    [tb_start_text mode=3 ]
    #
    冷蔵庫のドアを閉め、プリンの誘惑を断ち切る。[p]
    [_tb_end_text]

    ;暗転してリビングBG
    [addTime minutes=30]
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]

    [tb_start_text mode=3 ]
    #
    居間に戻り、もくねんとみおを待つこと[r]
    しばらく――……[p]
    [_tb_end_text]

    [mioHyoujou hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お待たせしました、先生[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ではプリンの方、ご用意させていただきます……！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    身を清めてくると言った通り、[r]
    おごそかなみおだった。[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    ;いつもの食事演出SEを再生

    [mask  time="500"  effect="fadeIn"  color="0x000000"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
    [mioHyoujouSabun hyoujou="raku1.png" time="1"]
    [wait  time="500"  ]
    [mask_off  time="500"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    う――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うンまァすぎる！！！！[p]
    [_tb_end_text]


    ;-----------------------------
    ;【分岐】前回の同イベントで、「みおのぶんも食べちゃう」以外の結果だった時（みおもプリンを食べていた時）
    [if exp="f.puddingKenka.lastSelect== 0" ]
        *puddingKenka02_3_1
        [mioHyoujouSabun hyoujou="happy1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0054.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱりおいしぃ～[p]
        [_tb_end_text]

    ;　次の共通部へ
    ;-----------------------------
    ;【分岐】上記以外のとき
    [else] 
        *puddingKenka02_3_2
        [mioHyoujouSabun hyoujou="happy1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おいしぃ～[p]
        [_tb_end_text]

    [endif]
    ;　次の共通部へ
    ;-----------------------------
    ;【共通部】
    *puddingKenka02_3_3

    [tb_start_text mode=4 ]
    #
    美味しいことはわかっていたつもりだが、[r]
    また新鮮な感動がある。[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="510"  y="400"  width=""  height=""  text="ごちそうさま、でした……"  _clickable_img=""  target="puddingKenka02_3_4"  ]
    [s  ]
    *puddingKenka02_3_4
    [mioHyoujouSabun hyoujou="kiraegao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ……先生も[r]
    このプリンのとりこになりましたね……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いつかまたママが贈ってくれますから[r]
    楽しみにしてましょう[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これだけ美味しいプリン、[r]
    みおがソワつくのも当然だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    変な気を起こして先に食べたりしないで[r]
    本当によかったなぁ……[p]
    [_tb_end_text]


    ;--------------------
    ;【追加で表示】前回行動が「自分のぶんのプリンを先に食べた」か「みおのぶんまでプリンを食べつくした」の時
    [if exp="f.puddingKenka.lastSelect!= 0" ]
        *puddingKenka02_3_5
        [mioHyoujouSabun hyoujou="komaru1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0055.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        プリン、今度は[r]
        いっしょに食べられてよかったです[p]
        [_tb_end_text]
    [endif]
    ;--------------------
    *puddingKenka02_3_6
    [mioHyoujouSabun hyoujou="happyake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    美味しいものって[r]
    だれかといっしょだともっと美味しいですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まぶしい笑顔だった。[p]
    [_tb_end_text]

    ;みお、好感度と機嫌が大アップ
    [plusLove loveLevel="high"]
    [plusMood moodLevel="high"]
    ;暗転、暗転明けから自由行動パート開始。
    ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
    ;イベント終了
    [jump target="endPuddingKenka02" ]

    ;-----------------------------------------
    ;＞「それでも先に食べちゃう」
    *puddingKenka02_6

    [tb_start_text mode=3 ]
    #
    一口、一口だけだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だったら、みおだって[r]
    苦笑ぐらいで許してくれるはず――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と思ったのが間違いだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    プリンは、そのあまりの美味さゆえ、[r]
    一口食べたら止まらなかったのだ……！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ウマっ、ウマすぎるぞこれ！[r]
    もう一口、もう一口だけ――……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……気がつけば自分のプリンは[r]
    完食されていた。[p]
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
    おのれ、誰がこんなことを！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分だ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    さらに恐ろしいのが、この身体は[r]
    あれひとつでは満足していない、ということだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あるじゃないか――[r]
    みおのぶんのプリンも食べられるじゃないか――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    悪魔のささやきが耳鳴りのように[r]
    頭蓋にひびく……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    う、うぅ……っ！[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="冷蔵庫を閉める"  _clickable_img=""  target="puddingKenka02_7" exp="f.puddingKenka.select = 1"  ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="みおのぶんも食べちゃう"  _clickable_img=""  target="puddingKenka02_8"  exp="f.puddingKenka.select = 2" ]
    [s  ]

    ;以降、ラベルと選択肢の飛び先対応の設定が複雑なのでよくよくご注意ください。

    ;-----------------------------------------
    ;＞「冷蔵庫を閉める」
    ;（「なんとか冷蔵庫を閉める」からの合流部）
    *puddingKenka02_7

    [playse  volume="100"  time="1000"  buf="1"  storage="se/reizouko_close.mp3"  ]
    [tb_start_text mode=3 ]
    #
    う、うぐぐぐ……と、[r]
    うめき声を上げながら、なんとか冷蔵庫を閉める。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    誘惑を振り切って居間に戻るまで、[r]
    名残惜しさが足かせのように重かった。[p]
    [_tb_end_text]

    ;居間BG
    [addTime minutes=30]
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [mioHyoujou hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お待たせしました、先生[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ではプリンの方、ご用意させていただきます……！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    身を清めてくると言った通り、[r]
    おごそかなみおだった。[p]
    [_tb_end_text]

    [mioLeave]
    [messageON]

    [tb_start_text mode=3 ]
    #
    あっ……[p]
    [_tb_end_text]

    ;※同シーン中の別ボイス「――えぇっ！？」をここでもSE的に再生
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0032.mp3"  ]
    [wse]
    ;みお戻ってくる

    [mioHyoujou hyoujou="metoji.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="komruake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0019.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    プリン、ふたつあったのが[r]
    ひとつだけになってるんですが……[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="450"  y="400"  width=""  height=""  text="自分のぶん先に食べちゃいました……"  _clickable_img=""  target="puddingKenka02_7_1"  ]
    [s  ]
    *puddingKenka02_7_1
    ;--------------------
    ;【分岐】前回行動が「プリンをみおと食べた」の時
    [if exp="f.puddingKenka.lastSelect == 0" ]
        *puddingKenka02_7_1_1
        [mioHyoujouSabun hyoujou="fuan.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そう、ですか……[p]
        [_tb_end_text]

    [else]
        ;--------------------
        ;【分岐】前回行動が「自分のぶんのプリンを先に食べた」か「みおのぶんまでプリンを食べつくした」の時
        *puddingKenka02_7_1_2

        [mioHyoujouSabun hyoujou="fuan.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0056.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        また、ですか……[p]
        [_tb_end_text]

        ;--------------------
    [endif]
    *puddingKenka02_7_2
    [mioHyoujouSabun hyoujou="fuanaketojime.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0022.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    おいしかった、です？[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="はい……"  _clickable_img=""  target="puddingKenka02_7_3"  ]
    [s  ]
    *puddingKenka02_7_3
    [mioHyoujouSabun hyoujou="fuanaketojime2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よかったです[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="normalake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっしょに食べられたもっと美味しいと[r]
    思ったんですけど[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もともと一個は先生のぶんでしたから[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    しょげつつも大人な対応してくれるみおだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    取り乱されるより、こういう反応の方が[r]
    罪悪感が強いかもだ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    では残りの一個は[r]
    わたしがこれからいただきますね！[p]
    [_tb_end_text]

    ;暗転、食器SE
    [mask  time="500"  effect="fadeIn"  color="0x000000"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
    [mioHyoujouSabun hyoujou="raku1.png" time="1"]
    [wait  time="500"  ]
    [mask_off  time="500"  effect="fadeOut"  ]

    [mioHyoujouSabun hyoujou="raku4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う～ん……！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kiraegao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    美味しい……[r]
    甘くて……ふわふわで……[p]
    [_tb_end_text]

    ;-----------------------------
    ;【右の条件を満たすとき、追加挿入】前回の同イベントで、「みおのぶんも食べちゃう」以外の結果だった時（みおもプリンを食べていた時）
    [if exp="f.puddingKenka.lastSelect == 0" ]
        *puddingKenka02_7_4
        [mioHyoujouSabun hyoujou="rakuake5_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0054.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱりおいしぃ～[p]
        [_tb_end_text]
    [endif]
    ;-----------------------------
    *puddingKenka02_7_5
    [tb_start_text mode=3 ]
    #
    本当にうれしそうにプリンを[r]
    食べるみおだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分のぶんを食べちゃうだけで[r]
    踏みとどまれてよかった……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    二個とも平らげてしまっていたら[r]
    いくらみおと言えど許してはくれないだろう……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――などと考えながら、[r]
    甘美なおやつタイムを終えたのだった。[p]
    [_tb_end_text]


    ;みお、機嫌が小ダウン　※ゼロにはならない（このあと怒るイベントにはつながらない）
    [minusMood moodLevel="low" minMood="1"]
    ;暗転、暗転明けから自由行動パート開始。
    ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
    ;イベント終了
    [jump target="endPuddingKenka02" ]

    ;-----------------------------------------
    ;＞「みおのぶんも食べちゃう」
    *puddingKenka02_8
    [tb_start_text mode=4 ]
    #
    だめだ、それはだめだっ！[r]
    絶対にみおを悲しませる！！[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="なんとか冷蔵庫を閉める"  _clickable_img=""  target="puddingKenka02_8_1"  ]
    [glink  color="btn_05_black  glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="みおのプリンも！　食べちゃう！"  _clickable_img=""  target="puddingKenka02_8_2"  ]
    [s  ]



    ;-----------------------------------------
    ;＞「なんとか冷蔵庫を閉める」
    *puddingKenka02_8_1

    [tb_start_text mode=3 ]
    #
    そうだ自分！[r]
    悪魔のささやきに屈するんじゃない――！[p]
    [_tb_end_text]

    ;（「なんとか冷蔵庫を閉める」からの合流部）　へジャンプ
    [jump target="puddingKenka02_7"  ]
    ;-----------------------------------------
    ;＞「みおのプリンも！　食べちゃう！」
    *puddingKenka02_8_2
    [tb_start_text mode=3 ]
    #
    ハムッ……ハフッ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふご……っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    じゅるるる……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;居間BG
    [addTime minutes=30]
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]

    [mioHyoujou hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お待たせしました、先生[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……なぜ正座を？[p]
    [_tb_end_text]

    ;--------------------
    ;【分岐】前回行動が「みおのぶんまでプリンを食べつくした」“以外”の時
    [if exp="f.puddingKenka.lastSelect == 0 || f.puddingKenka.lastSelect == 1 && f.puddingKenka.lastSelect == 0" ]
        *puddingKenka02_8_3
        [mioHyoujouSabun hyoujou="okoru1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0030.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えっと、ともかくプリンの方、[r]
        ご用意させていただきますね……！[p]
        [_tb_end_text]

        [mioLeave]
        [messageON]

        ;↓立ち絵無し台詞
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0031.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ～♪[p]
        [_tb_end_text]

        ;↓立ち絵無し台詞
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0032.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ――えぇっ！？[p]
        [_tb_end_text]


        ;みお戻ってくる　に合流
    [else]
        ;--------------------
        ;【分岐】前回行動が「みおのぶんまでプリンを食べつくした」の時
        *puddingKenka02_8_4
        [mioHyoujouSabun hyoujou="okoru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0057.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あっ、まさかまたっ[p]
        [_tb_end_text]

        [mioLeave]

        [messageON]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ――っ！[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0058.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        もお～！[p]
        [_tb_end_text]

        [mioHyoujou hyoujou="EvKusai1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0059.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        また食べちゃった、んですか[r]
        二個とも……！[p]
        [_tb_end_text]


        ;★特殊分岐の合流部　へジャンプ
        [eval exp="f.puddingKenka.lastSelect2 = 1" ]
        [jump target="puddingKenka02_8_9"  ]
    [endif]
    ;--------------------
    *puddingKenka02_8_5
    [mioHyoujou hyoujou="fuanaketojime4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0034.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    プリン、ふたつあったのが[r]
    ひとつも無くなってるんですが……[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black  glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="食べちゃった、と開きなおる"  _clickable_img=""  target="puddingKenka02_8_6"  exp="f.puddingKenka.select2 = 1"  ]
    [glink  color="btn_05_black  glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="すいませんでした、と謝る"  _clickable_img=""  target="puddingKenka02_8_7"  exp="f.puddingKenka.select2 = 2"  ]
    [s  ]
    ;※この選択肢、どちらを選んだか記憶しておく（後の分岐に関係）

    ;-----------------------------------------
    ;＞「実は……」
    *puddingKenka02_8_6

    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    さっき、わたしがお風呂に入ってるときに……？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、えぇ～っ！[p]
    [_tb_end_text]


    ;「両方食べちゃった共通部」へジャンプ
    [jump target="puddingKenka02_8_8"  ]
    ;-----------------------------------------
    ;＞「すいませんでした」
    *puddingKenka02_8_7
    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すいませんって、なにが……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、え……？[p]
    [_tb_end_text]


    ;「両方食べちゃった共通部」へジャンプ
    [jump target="puddingKenka02_8_8"  ]
    ;-----------------------------------------
    ;両方食べちゃった共通部
    *puddingKenka02_8_8
    ;以下、怒り顔から泣き顔までみおの表情を大きく変えていく

    [mioHyoujouSabun hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べちゃった、んですか……？[r]
    二個とも……？[p]
    [_tb_end_text]

    ;★特殊分岐の合流部
    *puddingKenka02_8_9

    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う……うぅ～……！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="sad3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あっ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanaketojime.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひどいです……[r]
    あんまりです……[p]
    [_tb_end_text]

    ;既存演出流用で、画面ゆれエフェクト１回
    [quake count=10 time=400 hmax=0 vmax=3  wait="false"]

    [mioHyoujouSabun hyoujou="sadake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぇ～ん！[p]
    [_tb_end_text]


    ;このあと、先ほどの選択肢のどちらを選んだかで分岐。
    [if exp="f.puddingKenka.select2 == 1" ]

        ;------------------------
        ;:【分岐】先ほどの選択肢で「実は……」を選んだ。
        *puddingKenka02_8_10
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [chara_hide_all  time="1"  wait="false"  ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        [tb_start_text mode=3 ]
        #
        あのみおがここまで感情を[r]
        あらわにするなんて……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        オロオロしながら、自分がしでかしたことの意味を[r]
        重く受け止めることしかできなかった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        やってしまったことを打ち明けるにしても[r]
        もっと素直に謝るべきだったな……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ――……そして。[p]
        [_tb_end_text]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="★★現在時刻に合わせた室内BGを表示"  ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]


        ;みお、好感度大ダウン。きげんをゼロにして、そのままみおが怒るイベントを発生させる。
        ;→怒るイベントは頭から発生させますが、このルートから起こった場合、
        ;　　「たしかに、みおのきげんを損なう行動には<br>心当たりがある。かなり。」
        ;　の地の文だけは表示されないようにしてください。
        [minusLove loveLevel="high"]
        [calcMood mood="&-f.mood"]
        ;飛び先の怒るイベント終了後、から自由行動パート開始。
        ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
        ;イベント終了
        [jump target="endPuddingKenka02" ]

    [else]
        ;------------------------
        ;:【分岐】先ほどの選択肢で「すいませんでした」を選んだ。
        *puddingKenka02_8_11
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [mioHyoujouSabun hyoujou="tohoho_red.png" time="1"]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        [mioHyoujouSabun hyoujou="sad_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0045.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぐす、ぐす……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="tohoho_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0046.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        泣いたらすっきりしました[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="nemui.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0047.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        よく考えたら[r]
        また食べられるチャンスはありますし[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="komaru2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0048.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生も変に隠したりしないで[r]
        すぐに言ってくれたので――……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="yowaegao_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0049.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えと……[r]
        ゆ、ゆるしてあげます、ね[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        こちらとしては深々と頭を下げるばかりだった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        こちらの軽はずみな行動が[r]
        まさかここまでみおを動揺させるとは……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        次また同じようなことがあったら、[r]
        よく考えて行動しなくてはいけないな。[p]
        [_tb_end_text]

        ;みお、好感度と機嫌が大ダウン　※ゼロにはならない＝怒るイベントは発生しない
        [minusLove loveLevel="high"]
        [minusMood moodLevel="low" minMood="1"]
        ;暗転、暗転明けから自由行動パート開始。
        ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
        ;イベント終了
        [jump target="endPuddingKenka02" ]

    [endif]


    ;---------------------------------------------------------------------------
    ;---------------------------------------------------------------------------
    ;以上
    *endPuddingKenka02
    [eval exp="f.puddingKenka.total++" ]
    [eval exp="f.puddingKenka.today = true" ]
    [eval exp="f.puddingKenka.lastDay = f.day" ]
    [eval exp="f.isEatDinner = true" ]
    [if exp="f.puddingKenka.select2 != 1" ]
        [maskStart  time="300"]
    [endif]

[endmacro]
