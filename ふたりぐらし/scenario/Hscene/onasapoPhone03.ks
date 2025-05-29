[macro name="onasapoPhone03" ]
    [messageON]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0041_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかりました[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0042_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    移動してから掛けなおしますね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    委細承知という感じで、ノリノリなみおだった。[p]
    [_tb_end_text]


    ;☆現在BGMを記憶、BGMフェードアウト（回想時は働かない＝もとからBGM無しなので）
    [eval exp="f.beforeBGM = f.nowBGM" cond="!f.flag_replay" ]
    [fadeoutbgm  time="3000"  ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [eval exp="f.beforeBG = f.lastBG" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  sprite_time="0-1000"  buf="1"  storage="se/denwa1.mp3"  ]
    ;ワンコールめで終わるように時間調整

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0043_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お待たせしました♡[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0044_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生の方はいまどんな感じですか？[l]
    [_tb_end_text]

    [glink addlog="true" color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="今トイレの個室に入ったばかり"  _clickable_img=""  target="*onasapoPhone03_1"  ]
    [glink addlog="true" color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もうズボンをおろしてる"  _clickable_img=""  target="*onasapoPhone03_2"  ]
    [s]

    *onasapoPhone03_1
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0045_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあさっそくはじめましょうか[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0046_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    チャックをじじ～って下げてくださいね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0047_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]

    [jump target="onasapoPhone03_3" ]

    *onasapoPhone03_2

    ;選択肢分岐：もうズボンをおろしてる

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0048_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ムラムラしすぎてわたしのこと、[r]
    待てなかったんですか……？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0049_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    悪い先生です[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="onasapoPhone03_3" ]

    *onasapoPhone03_3
    ;----------------------------------------
    ;共通部

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0050_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさんはどうですか？[r]
    もういちばんおっきくなってます？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ。というかもう右手は動き出している。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0056_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    シコ、シコ……シコ……[r]
    ゆっくり気持ちを高めてるんですね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0057_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちょっと速くしてみましょうよ[r]
    わたしの声に合わせてくださいね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0058_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、シコシコ、シコシコ――……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うっ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0060_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    がまんしてくださいね[r]
    時間はまだあるんですから[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0061_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあつづき行きますよ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0062_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    シコ、シコ……シコシコ……[r]
    どうです？　ちょうどいいです？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0063_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    息、荒くなって来ましたね[r]
    水音みたいなのも聞こえますよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    言われて気がつく。[r]
    ガマン汁が泡立ちはじめていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0065_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあ先生の好きな速さで[r]
    シてみてください[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0066_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしに聞こえるように[r]
    じゅぷじゅぷ音を立てて……そう、そう……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0067_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生じょうずですね[r]
    おちんちんいじりがうまくてかっこいいですよぉ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    自分の考えなどとっくに溶けてしまって、[r]
    心地よい声に指示されるがままだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0068_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うん、うん[r]
    えっちな音がよく聞こえます[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0069_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……はい、止めて[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0070_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……[l]
    [_tb_end_text]

    [glink addlog="true" color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="……みお？"  _clickable_img=""  target="*onasapoPhone03_4"  ]
    [s]

    *onasapoPhone03_4
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0071_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    このまま続けたら[r]
    そろそろ射精しちゃうんですよね？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まあ、そうなる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0072_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う～ん……[p]
    [_tb_end_text]


    [eval exp="tf.kanriBasePer = 10 + ((f.ballCount - 6)*15)" ]
    [getrand min="1" max="100"]

    [if exp="(f.flag_replay && f.onasapoSyaseiKanri) ||(!f.flag_replay && tf.kanriBasePer >= tf.rand)" ]
        ;「射精管理」パターン

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0073_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日はこれでおしまいにしましょう[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        えっ。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0074_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        もっとがまんしてたくさんムラムラして、[r]
        それからお射精した方が気持ちいいですよね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0075_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だからここでおしまい、です[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0076_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふふ、たくさんおちんちんイライラさせて[r]
        くださいね、先生[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        言うだけ言ってみおは電話を切ってしまった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        これは……[r]
        いいように遊ばれているな……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        しかし、がまんの末の射精が[r]
        陶酔的なのも確かだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおに従って過ごすのも一興か――[r]
        と自分を納得させ、仕事に戻るのだった。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

        ;みお性経験を適当に加算
        [eval exp="f.syaseiKanri.flag = true" ]
        [eval exp="f.syaseiKanri.type = 'phone'" ]
        [eval exp="f.onasapo.phone.lastDay = f.day" ]
        ;イベント終了。テキストウィンドウを消去し、暗転＆暗転解除で午後のお仕事パートに入る
        [jump target="endPhone03" ]
    [else]

        ;「射精許可」パターン

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0077_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ここでがまんしてもらうのも[r]
        アリかなぁって思ったんですけど――[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0078_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生はもう充分がまんされたみたいですし、[r]
        このまま射精までいっちゃいましょうか[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ほっとするのもつかの間。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0079_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そろそろお昼休みもおしまいですし、[r]
        ほらほら先生、急いでイかないと[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        がぜん慌ただしくなってきた。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0080_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        自分のいいようにシコシコゴシゴシしてくださいね[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        うっ、うぅ……っ！
        [p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0081_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        どうですか？　いけそうですか？[r]
        たまたま切なくなってきましたか？[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0082_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしっこ出そうな熱いが[r]
        おちんちんの根元に溜まってきましたか？[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0083_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしりの穴にもぐぅ～ってちからが入って[r]
        カリのあたりがくすぐったくって――[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0084_r.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        もうイケますよね、先生[l]
        [_tb_end_text]

        [glink addlog="true" color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="あ、ああっ"  _clickable_img=""  target="*onasapoPhone03_5"  ]
        [s]

        *onasapoPhone03_5
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0085_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それじゃあわたしの声に合わせて[r]
        ぴゅっぴゅっしましょうね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0086_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        出して――って言ったら出すんですよ[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0087_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        びっくりしました？　ふふっ[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0088_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生の必死なシコシコ、よく聞こえてますよ[r]
        すっごく速くてはあはぁ喘いでて[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0089_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ――……♡[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0090_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せんせ……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0091_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        電話越しですけど、[r]
        ちゃんと見えてるみたいにわかりますからね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0092_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お仕事が手につかなくなるぐらい溜めた精液、[r]
        ぜぇんぶ、ここで出しちゃいましょうね[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0093_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ――出してください、先生[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0094_r.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        イくんですよ、おちんちん射精して[r]
        ほらほら[l]
        [_tb_end_text]


        [glink addlog="true" color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="み――ぉ――ッ！！"  _clickable_img=""  target="*onasapoPhone03_6"  ]
        [s]

        *onasapoPhone03_6
        ;射精演出（フラッシュ）
        ;先生射精により、ムラムラ状態解除
        [syaseiFlash]

        [eval exp="f.ballCount = 0" ]
        [iconUpdate]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0095_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        っ……♡♡[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0096_r.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……すてきでしたよ[r]
        先生、とってもかわいかったです[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        虚脱感に浸りながら生返事をしているうちに[r]
        みおとの通話は終わっていた。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ムラムラは解消できたが、これはこれで[r]
        消耗は大きくて仕事に障りそうだった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        しかし、すっかりみおにもてあそばれてしまったな……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        …………[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ……[p]
        [_tb_end_text]

        ;みお性経験加算
        ;みおから迫って+1
        [eval exp="f.malerape++" ]
        [eval exp="f.syaseiKanri.flag = false" ]
        [eval exp="f.syaseiKanri.type = 'none'" ]
        [eval exp="f.onasapo.phone.lastDay = f.day" ]
        ;みお欲情+20
        [calcMuramura muramura="20"]

        [jump target="endPhone03" ]

    [endif]




    *endPhone03
    ;イベント終了。テキストウィンドウを消去し、暗転＆暗転解除で背景を元のお仕事場に戻し、午後のお仕事パートに入る
    [setreplay name="onasapo" storage="replay_select.ks" target="onasapoPhone_select"]
    [messageInvisible]
    [maskStart]
    [bgChange storage="&f.beforeBG"]
    [maskEnd]
    ;☆記憶したBGMフェード再生（回想時は働かない）　※不要だったのでコメントアウト
    ;[fadeinbgm  time="3000"  storage="&f.beforeBGM" cond="!f.flag_replay"]
[endmacro]

