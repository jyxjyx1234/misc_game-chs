[macro name="puddingKenka01"]
    ;★
    ;・分岐が複雑なので、図でフローをつくっておく
    ;・きげんや好感度の変動が大きいイベントなので、先にそっちの仕様をかためてから本件をやる

    ;---

    ;１回目は日数固定の発生とする
    ;　→40日めを想定。終盤のイベントがすかすかなのと、このイベントは好感度を大きく操作できるので
    ;　　エンディングぎりぎりでの駆け込み好感度上げなどにもちょうどよいと思う。

    ;２回目以降はフリーイベントとして発生→前回どんな行動をとったか記憶してテキスト差分もちょろちょろと。


    ;※選択肢の結果に応じて、このイベントの選択結果を記憶しておく（再読verで参照）
    ;　・プリンをみおと食べた
    ;　・自分のぶんのプリンを先に食べた
    ;　・みおのぶんまでプリンを食べつくした


    ;---------------------------------------------------------------------------
    ;---------------------------------------------------------------------------
    ;プリンEv初回

    ;仕事から帰ってきて、自宅前（BG「genkan_」系）が表示されたところから下記
    [messageON]

    [tb_start_text mode=3 ]
    #
    ただいま、とドアを開けたところで[r]
    配達の人が「お荷物です」と走ってきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    受けとった荷物は……[r]
    みおのお母さんが送り主だが……？[p]
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

    [tb_start_text mode=3 ]
    #
    受けとった荷物をみおに手渡す。[r]
    冷蔵の品のようだ。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kiraegao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ママがわたしの大好きなプリンを[r]
    贈ってくれたんです[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    大人気でなかなか買えないのが[r]
    手に入ったとかで[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なるほど、プリン……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kira6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    北海道の限定生産の品で……[r]
    予約待ちが……で……その……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metojiake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    チーズみたいなクリーミーさと……[r]
    容器のビンも……工房さんが……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なんだかいろいろなウンチクを[r]
    まくし立てられている。すごそうだ。[p]
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
    ……あんなにはしゃぐみおも珍しい。[r]
    よほど好きなようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    夕食もすぐに始まりそうだし、[r]
    居間に急ごう。[p]
    [_tb_end_text]

    [messageInvisible]

    [bgcheck time="500" bgm="false"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0059.mp3"  ]
    [addTime minutes=30]
    [maskStart]
    [wait  time="500"  ]
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
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="ごちそうさま"  _clickable_img=""  target="puddingKenka01_1"  ]
    [s  ]
    *puddingKenka01_1
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
    ……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    よくわからないが、うなずいておいた。[r]
    大事なことなのだろう。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございますっ[p]
    [_tb_end_text]

    [mioLeave]
    [messageON]
    ;次に登場する時はパジャマ着用なので、衣装切替および入浴済フラグを立てておく。
    [mioTakeBath]
    [eval exp="f.cloth = f.pajama"]

    [tb_start_text mode=4 ]
    #
    というわけで――冷蔵庫でよく冷えたプリンと[r]
    お留守番状態になった。[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="……"  _clickable_img=""  target="puddingKenka01_2"  ]
    [s  ]
    *puddingKenka01_2
    [tb_start_text mode=3 ]
    #
    みおがそこまで楽しみにするプリンだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ちょっと冷蔵庫で様子を見るぐらいは[r]
    許されるだろう。[p]
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
    どれをとっても一級品のプリンとわかる。[p]
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
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="みおを待つ"  _clickable_img=""  target="*puddingKenka01_4"  exp="f.puddingKenka.select = 0" ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="先に食べちゃう"  _clickable_img=""  target="*puddingKenka01_3 "  ]
    [s  ]

    ;以降、ラベルと選択肢の飛び先対応の設定が複雑なのでよくよくご注意ください。

    ;-----------------------------------------
    ;＞「先に食べちゃう」
    *puddingKenka01_3
    [tb_start_text mode=3 ]
    #
    本当に……？[r]
    本当に先にプリンを食べてしまうか？[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    みおだってプリンの誘惑に抗いつつ[r]
    自分といっしょに食べようと気遣ってくれたのに――[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="やはりみおを待つ"  _clickable_img=""  target="puddingKenka01_3_wait"  exp="f.puddingKenka.select = 0"]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="それでも先に食べちゃう"  _clickable_img=""  target="*puddingKenka01_5" exp="f.puddingKenka.select = 1" ]
    [s  ]


    ;-----------------------------------------
    ;＞「やはりみおを待つ」
    *puddingKenka01_3_wait
    [tb_start_text mode=3 ]
    #
    それがいい。[r]
    そうすべきだ。[p]
    [_tb_end_text]
    [eval exp="f.puddingKenka.select = 0" ]
    ;　→フロー「みおを待つ」の“「やはりみおを待つ」からの合流部”にジャンプ（合流）
    [jump target="puddingKenka01_4"  ]

    ;-----------------------------------------
    ;＞「みおを待つ」
    ;（「やはりみおを待つ」からの合流部）
    *puddingKenka01_4
    [playse  volume="100"  time="1000"  buf="1"  storage="se/reizouko_close.mp3"  ]
    [tb_start_text mode=3 ]
    #
    冷蔵庫のドアを閉め、プリンの誘惑を断ち切る。[p]
    [_tb_end_text]

    ;暗転してリビングBG
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]
    [addTime minutes=30]

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
    [mioHyoujouSabun hyoujou="raku1.png" time="1"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
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

    [mioHyoujouSabun hyoujou="happy1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おいしぃ～[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    な、なんだこのプリンは……！？[r]
    なんなんだこのプリンは！？[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    あまりのおいしさに体感ひとくちで[r]
    食べきってしまった。[l]
    [_tb_end_text]

    ;一択選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="510"  y="400"  width=""  height=""  text="ごちそうさま、でした……"  _clickable_img=""  target="*puddingKenka01_4_1"  ]
    [s  ]
    *puddingKenka01_4_1
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
    [eval exp="f.isEatDinner = true" ]
    [eval exp="f.puddingKenka.together++" ]
    ;暗転、暗転明けから自由行動パート開始。
    ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
    ;イベント終了
    [jump target="endPuddingKenka01" ]
    ;-----------------------------------------
    ;＞「それでも先に食べちゃう」
    *puddingKenka01_5
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
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="冷蔵庫を閉める"  _clickable_img=""  target="*puddingKenka01_5_1"  exp="f.puddingKenka.lastSelect2 = 0" ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="みおのぶんも食べちゃう"  _clickable_img=""  target="*puddingKenka01_5_2"  ]
    [s  ]

    ;以降、ラベルと選択肢の飛び先対応の設定が複雑なのでよくよくご注意ください。

    ;-----------------------------------------
    ;＞「冷蔵庫を閉める」
    ;（「なんとか冷蔵庫を閉める」からの合流部）
    *puddingKenka01_5_1

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
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]
    [addTime minutes=30]

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
    [wait time="1000" ]
    [mioHyoujouSabun hyoujou="metoji.png"]
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
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="450"  y="400"  width=""  height=""  text="自分のぶん先に食べちゃいました……"  _clickable_img=""  target="*puddingKenka01_5_1_1"  ]
    [s  ]
    *puddingKenka01_5_1_1
    [mioHyoujouSabun hyoujou="fuan.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう、ですか……[p]
    [_tb_end_text]

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
    [glink  color="btn_05_black glink_center"  storage="" addlog="true"  size="20"  x="600"  y="400"  width=""  height=""  text="はい……"  _clickable_img=""  target="*puddingKenka01_5_1_2"  ]
    [s  ]
    *puddingKenka01_5_1_2
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

    [messageInvisible]
    ;暗転、食器SE
    [mask  time="500"  effect="fadeIn"  color="0x000000"  ]
        [mioHyoujouSabun hyoujou="raku1.png" time="1"]
        [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
        [wait  time="500"  ]
    [mask_off  time="500"  effect="fadeOut"  ]
    [messageON]


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
    [eval exp="f.isEatDinner = true" ]
    [eval exp="f.puddingKenka.single++" ]
    ;イベント終了
    [jump target="endPuddingKenka01" ]
    ;-----------------------------------------
    ;＞「みおのぶんも食べちゃう」
    *puddingKenka01_5_2
    [tb_start_text mode=4 ]
    #
    だめだ、それはだめだっ！[r]
    絶対にみおを悲しませる！！[l]
    [_tb_end_text]

    ;選択肢：ラベル設定お任せします
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="なんとか冷蔵庫を閉める"  _clickable_img=""  target="*puddingKenka01_5_2_1" exp="f.puddingKenka.lastSelect2 = 0" ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="みおのプリンも！　食べちゃう！"  _clickable_img=""  target="*puddingKenka01_5_2_2"  ]
    [s  ]



    ;-----------------------------------------
    ;＞「なんとか冷蔵庫を閉める」
    *puddingKenka01_5_2_1
    [tb_start_text mode=3 ]
    #
    そうだ自分！[r]
    悪魔のささやきに屈するんじゃない――！[p]
    [_tb_end_text]

    ;（「なんとか冷蔵庫を閉める」からの合流部）　へジャンプ
    [jump target="puddingKenka01_5_1"  ]
    ;-----------------------------------------
    ;＞「みおのプリンも！　食べちゃう！」
    *puddingKenka01_5_2_2
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
    [bgcheck time="1" bgm="false"]
    [deleteBK time="300"]
    [addTime minutes=30]

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
    [glink  color="btn_05_black glink_left"  storage="" addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="食べちゃった、と開きなおる"  _clickable_img=""  target="*puddingKenka01_5_2_3" exp="f.puddingKenka.select2 = 1"  ]
    [glink  color="btn_05_black glink_right"  storage="" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="すいませんでした、と謝る"  _clickable_img=""  target="*puddingKenka01_5_2_4" exp="f.puddingKenka.select2 = 2"  ]
    [s  ]
    ;※この選択肢、どちらを選んだか記憶しておく（後の分岐に関係）

    ;-----------------------------------------
    ;＞「実は……」
    *puddingKenka01_5_2_3
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
    [jump target="puddingKenka01_5_2_5"  ]
    ;-----------------------------------------
    ;＞「すいませんでした」
    *puddingKenka01_5_2_4
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
    [jump target="puddingKenka01_5_2_5"  ]
    ;-----------------------------------------
    ;両方食べちゃった共通部
    *puddingKenka01_5_2_5
    ;以下、怒り顔から泣き顔までみおの表情を大きく変えていく

    [mioHyoujouSabun hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m004_scene2_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べちゃった、んですか……？[r]
    二個とも……？[p]
    [_tb_end_text]

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
    [eval exp="f.puddingKenka.double++" ]
    [jump target="puddingKenka01_5_2_6" cond="f.puddingKenka.select2 == 1" ]
    [jump target="puddingKenka01_5_2_7" cond="f.puddingKenka.select2 == 2" ]
    ;------------------------
    ;:【分岐】先ほどの選択肢で「実は……」を選んだ。
    *puddingKenka01_5_2_6
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
    [mask  time="500"  effect="fadeIn"  color="0x000000"  ]
    [bgcheck time="1" bgm="false"]
    [wait  time="500"  ]
    [mask_off  time="500"  effect="fadeOut"  ]
    [messageON]


    ;みお、好感度大ダウン。きげんをゼロにして、そのままみおが怒るイベントを発生させる。
    ;→怒るイベントは頭から発生させますが、このルートから起こった場合、
    ;　　「たしかに、みおのきげんを損なう行動には<br>心当たりがある。かなり。」
    ;　の地の文だけは表示されないようにしてください。
    [minusLove loveLevel="high"]
    [calcMood mood="&-f.mood"]
    [eval exp="f.isEatDinner = true" ]
    ;飛び先の怒るイベント終了後、から自由行動パート開始。
    ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
    ;イベント終了
    [jump target="endPuddingKenka01" ]


    ;------------------------
    ;:【分岐】先ほどの選択肢で「すいませんでした」を選んだ。
    *puddingKenka01_5_2_7
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
    [minusMood moodLevel="high" minMood="1"]
    ;暗転、暗転明けから自由行動パート開始。
    ;夕食とお風呂は済んだものとして扱う（フラグ管理を）
    ;イベント終了
    [jump target="endPuddingKenka01" ]

    ;---------------------------------------------------------------------------
    ;---------------------------------------------------------------------------
    *endPuddingKenka01
    ;実は…からの分岐以外はここで暗転
    [eval exp="f.puddingKenka.total++" ]
    [eval exp="f.puddingKenka.today = true" ]
    [eval exp="f.puddingKenka.lastDay = f.day" ]
    [if exp="f.puddingKenka.select2 != 1" ]
        [maskStart  time="300"]
    [endif]
[endmacro]
;以上


