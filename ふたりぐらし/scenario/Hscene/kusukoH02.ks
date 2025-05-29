[macro name="cuscoEv2" ]
    [messageON]
    ;＜クスコでおまんこ観察：２回め（ショートver）＞
    *cuscoEv2_1
    ;ゲーム本編からの開始の場合はここから。直前までADVパートの想定

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [chara_hide_all  time="1"  wait="false"  ]
    ;★新★スチル表示【01.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/01.png" name="still,cusco01" time="1000"]
    [RESET_CAMERA time="1" wait="true"]
    [wait time="10" ]
    [CAMERA zoom="2" layer="1" x="0" y="-130" time="1"]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]



    ;★新★シーン回想ここからスタート（回想開始の暗転があけるとスチル【01.png】が表示されている）

    ;BGM11_temptation.mp3　をtime6000でBGMとして再生開始
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [tb_start_text mode=3 ]
    #
    さて、再びのおまんこ観察だ。[p]
    [_tb_end_text]



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ～ん[p]
    [_tb_end_text]
    [RESET_CAMERA layer="1" time="1000" wait="true"]
    [tb_start_text mode=3 ]
    #
    初めてするわけでもあるまいに、と[r]
    軽口をたたいてみるが――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これは何回やっても慣れないですよぅ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それもそうだな。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    さておき、やると決めたからには[r]
    恥ずかしかろうと手は止めないのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;★新★スチル切替【02.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/02.png" name="still,cusco02" time="1000"]
    [free layer="1" name="cusco01" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はい……どう、ぞ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うん。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うーん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なるほどなぁ。[p]
    [_tb_end_text]

    ;★新★スチル切替【03.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/03.png" name="still,cusco03" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……？[p]
    [_tb_end_text]

    ;★新★スチル切替【04.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/04.png" name="still,cusco04" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0005.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    前となにか、違ったりしてますか……？[l]
    [_tb_end_text]


    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="変わりなくきれいだよ"  _clickable_img=""  target="*cuscoEv2_2"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="大人になってきたかも"  _clickable_img=""  target="*cuscoEv2_3"  ]
    [s]
    ;------------------------------
    ;【選択肢】「変わりなくきれいだよ」
    *cuscoEv2_2

    ;★新★スチル切替【03.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/03.png" name="still,cusco03" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ど、どうも……です……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いろいろなことをしたが、[r]
    そうと感じさせないきれいなまんこだ。[p]
    [_tb_end_text]

    ;　→次の共通部へ

    [jump target="*cuscoEv2_4" ]
    ;------------------------------
    ;【選択肢】「大人になってきたかも」
    *cuscoEv2_3

    ;★新★スチル切替【03.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/03.png" name="still,cusco03" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おとな……ですか[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおとえっちなことも積み重ねてきている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    別にわかりやすく着色したり[r]
    陰唇が大きくなったりはしていないが――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分の形にみおが馴染んで来た、[r]
    そうであると嬉しいな、と思ったのだ。[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="*cuscoEv2_4" ]
    ;------------------------------
    ;【共通部】
    ;　すぐに処女状態に関する分岐へ入る
    *cuscoEv2_4

    ;---------------------------
    ;【分岐】みおが処女の場合
    [if exp="f.virgin.image.id == 0" ]

    [tb_start_text mode=3 ]
    #
    純潔の証明である処女膜も健在だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いつか自分がこれを――とは思うと[r]
    ゾクゾク込みあげるものがあるな。[p]
    [_tb_end_text]

    ;★新★スチル切替【04.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/04.png" name="still,cusco04" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふつうじゃないことばっかり[r]
    先に覚えちゃってる気がします……[p]
    [_tb_end_text]

    ;　→次の共通部へ

    [else]
    ;---------------------------
    ;【分岐】みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）

    [tb_start_text mode=3 ]
    #
    当然、みおは自分と経験済みだから[r]
    処女膜も無事ではなかった。[p]
    [_tb_end_text]

    ;★新★スチル切替【04.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/04.png" name="still,cusco04" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん、んんぅ……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    膣口を守っていた薄膜は貫かれた時に[r]
    拡がったまま、その形から戻っていない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    これは、みおの純潔を自分が[r]
    散らしてやったのだという証明だ。[p]
    [_tb_end_text]


    ;破瓜がクスコ挿入初回イベントによるものだった場合のみ、下記１テキストを追加表示
    [if exp="f.cuscoVirginFlag" ]
        [tb_start_text mode=3 ]
        #
        その破瓜もクスコ挿入だからなんとも倒錯的じゃないか。[r]
        思い返すだけでたまらなくなる。[p]
        [_tb_end_text]

    [endif]
    ;　→次の共通部へ
    [endif]
    ;---------------------------
    ;【共通部】


    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
    ;★新★スチル切替【05.png】,↓テキストも調整してます
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/05.png" name="still,cusco05" time="1000"]
    [tb_start_text mode=4 ]
    #
    みおも濡れてきたし、そろそろクスコの出番だ。[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_double_left" addlog="true" exp="f.nowCusco = 1"   storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="大きいクスコを使う"  _clickable_img=""  target="*cuscoEv2_5_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true" exp="f.nowCusco = 2"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="小さいクスコを使う"  _clickable_img=""  target="*cuscoEv2_5_2"  ]
    [s]



    ;　※この先、分岐が入れ子で複雑になります。ご注意ください。
    *cuscoEv2_5_1
    ;------------------------------------------------------
    ;【選択肢】大きいクスコを使う

    ;---------------------------
    ;【分岐】「大きいクスコを使う」ルート中：みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）
    [if exp="f.virgin.image.id !== 0" ]

        [tb_start_text mode=3 ]
        #
        みおもそれなりの経験をしてきたし、[r]
        挿入さえ慎重にやれば問題ないはずだ。[p]
        [_tb_end_text]

    ;★新★スチル切替【11kb.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/11kb.png" name="still,cusco11kb" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        や、やさしく、してくださいね……[p]
        [_tb_end_text]

        ;　→【クスコ挿入パート】へ
        [jump target="cuscoEv2_6" ]
    [else]
        ;---------------------------
        ;【分岐】「大きいクスコを使う」ルート中：みおが処女の場合

        [tb_start_text mode=4 ]
        #
        大きいままだと、みおの初挿入が[r]
        クスコということになりかねないが……[l]
        [_tb_end_text]

        [glink  color="btn_05_black glink_double_left" addlog="true" exp="f.nowCusco = 1" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="それでも大きいクスコを使う"  _clickable_img=""  target="*cuscoEv2_5_1_ok"  ]
        [glink  color="btn_05_black glink_double_right" addlog="true" exp="f.nowCusco = 2" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="やっぱり小さいクスコを使う"  _clickable_img=""  target="*cuscoEv2_5_2"  ]
        [s]


        ;---------------------------
        ;【分岐】「大きいクスコを使う」ルート中：それでも大きいクスコを使う
        *cuscoEv2_5_1_ok
        ;クスコで破瓜フラグを立てておく（他分岐では立たない）
        [eval exp="f.cuscoVirginFlag = true" ]
        [tb_start_text mode=3 ]
        #
        まあ、それもオツだろう。[r]
        みおは自分が好きに染め上げられるのだ。[p]
        [_tb_end_text]

    ;★新★スチル切替【11kb.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/11kb.png" name="still,cusco11kb" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        なんだか、いじわるなこと考えてる[r]
        お顔ですけど……[p]
        [_tb_end_text]
        ;　→【クスコ挿入パート】へ
        [jump target="cuscoEv2_6" ]
    [endif]


    *cuscoEv2_5_2
    ;------------------------------------------------------
    ;【選択肢】小さいクスコを使う

    [tb_start_text mode=3 ]
    #
    小さい方で用意し直した。[r]
    ぱっと見、差はないが口径とかが違うのだろう。[p]
    [_tb_end_text]


    ;---------------------------
    ;【分岐】「小さいクスコを使うルート」みおが処女の場合
    [if exp="f.virgin.image.id == 0" ]
    [tb_start_text mode=3 ]
    #
    みおの処女膜を損なうことなく[r]
    膣内を観察できるだろう。[p]
    [_tb_end_text]

    ;★新★スチル切替【11ks.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/11ks.png" name="still,cusco11ks" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございますぅ……[p]
    [_tb_end_text]


    ;　→【クスコ挿入パート】へ
    [else]
    ;---------------------------
    ;【分岐】「小さいクスコを使うルート」みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）

    [tb_start_text mode=3 ]
    #
    たとえ処女でなくとも、[r]
    器具の挿入は慎重にしたいところだし。[p]
    [_tb_end_text]

    ;　→【クスコ挿入パート】へ
    [endif]
    [jump target="cuscoEv2_6" ]




    ;------------------------------------------------------
    ;------------------------------------------------------
    ;【クスコ挿入パート】
    *cuscoEv2_6

    ;★新★スチル切替【bk100.jpg】
    [image layer="4" storage="../bgimage/bk100.jpg" name="bkcg" time="1000" ]
    [tb_start_text mode=3 ]
    #
    クスコ挿入のためにローションを[r]
    みおの膣口に塗り込んでやらないとな。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    [tb_start_text mode=3 ]
    #
    自分の指に垂らしたどろどろを[r]
    みおの秘部に擦りこむように塗布していく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ、く、ひぁっ[r]
    んん～……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    声、が……っ、あぁっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ヌルヌルになってゆるんだ膣口に[r]
    指が吸い込まれていきそうになる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    指を入れてしまわぬよう意識して、[r]
    あくまで周縁をなぞり続けた。[p]
    [_tb_end_text]

    ;★新★スチル切替【11kb.png】(大クスコの場合)　or　【11ks.png】(小クスコの場合)
    [if exp="f.nowCusco === 1" ]
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/11kb.png" name="still,cusco11" time="1"]
    [else]
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/11ks.png" name="still,cusco11" time="1"]
    [endif]
    [free layer="4" name="bkcg" time="1000" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……んぅ～……そろそろ、[r]
    もう、だいじょうぶだと、思います、うぅっ[p]
    [_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    [tb_start_text mode=4 ]
    #
    指を離し、あらためて手でまんこを広げる。[r]　　
    膣口からよだれのような汁気が垂れる。[l]
    [_tb_end_text]
    ;※このあたりはスチルの実際の差分の構成に合わせて書き換える

    [glink target="*cuscoEv2_7" addlog="true" text="じゃあ入れるよ" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv2_7
    [tb_start_text mode=3 ]
    #
    クスコの先端、鳥のクチバシみたいな部分で[r]
    みおの膣口に狙いをつける。[p]
    [_tb_end_text]


    ;★新★スチル切替【12kb.png】(大クスコの場合)　or　【12ks.png】(小クスコの場合)
    [if exp="f.nowCusco === 1" ]
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/12kb.png" name="still,cusco12" time="1000"]
    [else]
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/12ks.png" name="still,cusco12" time="1000"]
    [endif]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぅ……ぁっ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    先端を浅く中へ。[r]
    つぷりという汁気の多い手ごたえがして――[p]
    [_tb_end_text]

    ;★新★スチル切替【13.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/13.png" name="still,cusco13" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁっ、あああっ！？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    [free layer="1" name="cusco02" ]
    [tb_start_text mode=3 ]
    #
    吸い込まれるように全体が[r]
    みおの中へ飲み込まれてしまった。[p]
    [_tb_end_text]

    ;----------------------------------------
    ;【分岐】クスコで破瓜フラグが立っていないとき
    [if exp="f.nowCusco == 2 || (f.nowCusco = 1 && f.virgin.image.id != 0)" ]

        ;★新★スチル切替【14.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0030.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あぅぁ……っ、あ……？[r]
        あれっ、もうぜんぶ入ったんですか[p]
        [_tb_end_text]

        ;★新★スチル切替【13.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/13.png" name="still,cusco13" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0031.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        痛みとかはない、です[r]
        でもちょっと……冷たい、かも……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        室温になじんでいたはずだが、[r]
        さすがに金属が入ると冷感があるか。[p]
        [_tb_end_text]

        ;　→次の共通部へ

    ;----------------------------------------
    ;【分岐】クスコで破瓜フラグが立っているとき
    [else]

        [tb_start_text mode=3 ]
        #
        みちり、という肉を裂く軽い手ごたえがあった。[p]
        [_tb_end_text]

        ;★新★スチル切替【14.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0032.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        いっ……あぁっ、うぅ……！？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        出血はしていないようだし、膜が裂けると言っても[r]
        ほころんだ程度の変形のようだが――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        しかし、破瓜は破瓜だ。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        みおの一生に一度の出来事を、自分の手によって[r]
        冷たい器具に捧げさせたのだ。[p]
        [_tb_end_text]

        ;★新★スチル切替【15.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/15.png" name="still,cusco15" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0033.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふー……っ、あふぅ……ご心配なく……[r]
        ちょっとひりっとしただけ、なので[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおの自認としてはどうなのだろう。[r]
        処女のままのつもりなのか、そうではないのか。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        特にこちらからは指摘しない。[r]
        みおの懊悩まで含めて、それが愉悦なのだから。[p]
        [_tb_end_text]

        ;　→次の共通部へ
        [eval exp="f.virgin.image.id = 101" ]
    [endif]
    ;----------------------------------------
    ;【共通部】

    [tb_start_text mode=3 ]
    #
    みおの様子を見つつクスコの角度と[r]
    クチバシの開きを調整する。[p]
    [_tb_end_text]

    ;★新★スチル切替【16.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/16.png" name="still,cusco16" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生……ちょっと[r]
    クスコの扱い上手くなってませんか？[p]
    [_tb_end_text]

    ;★新★下記１テキスト、修正してますト
    [tb_start_text mode=3 ]
    #
    ちょっといい気分になりながら[r]
    観察すべくみおの秘部に顔を寄せる。[p]
    [_tb_end_text]

    ;★新★スチル切替【14.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぅ～……うぅぇ……[p]
    [_tb_end_text]

    ;光の差分を付け足すことができる想定。やらないなら地の文は違う感じにして
    ;みお台詞と整合させる（単に顔をぐっと近づけるとか）

    [tb_start_text mode=3 ]
    #
    クスコごしに見えるみおの膣内は[r]
    相変わらず若々しくて健康そうだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ヒダを備えつつもぷるぷると張りがあり、[r]
    少し質感の違う奥の盛り上がりが子宮口だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    照明を受けて、膣液がしっとり艶めきながら[r]
    ひくり、ひくりとゆるやかに震えている。[p]
    [_tb_end_text]

    ;★新★スチル切替【13.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/13.png" name="still,cusco13" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ふ……ふぅぅ……[r]
    はぁ……っ、う……んんっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    徐々にみおが息を荒げているのは[r]
    クスコの圧迫感のためだけではないだろう。[p]
    [_tb_end_text]

    ;★新★スチル切替【14.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生[r]
    ズボン、苦しそうですよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ、下着を突き破らんばかりに[r]
    煮え立ちそうな勃起をしている。[p]
    [_tb_end_text]

    ;★新★スチル切替【16.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/16.png" name="still,cusco16" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きっと、あかちゃんのおしるで[r]
    おちんちんさんぐつぐつしてるんだ……[p]
    [_tb_end_text]

    ;★新★スチル切替【17.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/17.png" name="still,cusco17" time="1000"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    うなずく代わりにズボンを降ろす。[r]
    ぶるんと首を振ったペニスから先走り汁が飛ぶ。[p]
    [_tb_end_text]

    ;【BGS】piston1.mp3,time6000で再生　※手コキと挿入ピストン運動のBGSは分けた方がいいかもだけど、とりま共通素材を使用
    [fadeinse storage="BGS/piston1.mp3" time="6000" loop="true" buf="0" ]

    [tb_start_text mode=3 ]
    #
    みおの期待のまなざしを浴びながら、[r]
    自慰を見せつける。[p]
    [_tb_end_text]

    ;★新★スチル切替【20.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/20.png" name="still,cusco20" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの膣内からの愛液が目に見えて増え、[r]
    尻まで伝い落ちていく。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生　※手コキと挿入ピストン運動のBGSは分けた方がいいかもだけど、とりま共通素材を使用
    [stopse buf="0" ]
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" loop="true" buf="0" ]

    [tb_start_text mode=4 ]
    #
    こちらも先走り汁をしぶかせながら[r]
    急速に絶頂へ近づいていく。[l]
    [_tb_end_text]

    [glink target="*cuscoEv2_8" addlog="true" text="みお、イくぞ" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv2_8
    ;★新★スチル切替【20.png】
    ;[CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/20.png" name="still,cusco20" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene8_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいっ、ください、先生の熱い精液っ、[r]
    わたしのおまんこのいちばん奥に――[p]
    [_tb_end_text]

    ;射精演出,BGS停止
    ;★新★スチル切替【21.png】
    ;※膣内射精はかなり微妙なライン。とりあえず加算しない。
    [stopse buf="0" ]
    [syaseiFlashForStill layer="1" storage="EVcg/kusukoHstill/21.png" name="still,cusco21" count="false"]
    [free layer="1" name="cusco20" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ、ひぅあああ――っ！[p]
    [_tb_end_text]

    ;みおも絶頂演出。いったん画面をホワイトアウトし、スチル切替【k05.png】
    ;★新★みおも絶頂演出。いったん画面をホワイトアウトし、スチル切替【22.png】

    [mask time="300" color="white"  ]
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/22.png" name="still,cusco22" time="1000"]
        [free layer="1" name="cusco21" ]
    [mask_off time="1000" ]

    ;★新★スチル切替【23.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/23.png" name="still,cusco23" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……ふぅぁ……あぁー……[r]
    はあぅ、ううぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分でも信じられないくらい、[r]
    いちどの射精が長く、多く続いた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    魂が抜けるかと思うほどに出し尽くし、[r]
    実際、子宮口が白い海に溺れそうになっている。[p]
    [_tb_end_text]

    ;★新★スチル切替【25.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/25.png" name="still,cusco25" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おなか、いっぱいです……[p]
    [_tb_end_text]

    ;★新★スチル切替【26.png】このセリフはみおが処女のときだけ出すように。今回のクスコ挿入での破瓜の場合も表示
    [if exp="f.cuscoVirginFlag || f.virgin.image.id == 0" ]

        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/26.png" name="still,cusco26" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0054.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えっちもしたことないのに、[r]
        わたし、妊娠しちゃうのかも……[p]
        [_tb_end_text]

    [endif]
    ;※このセリフは適当な条件をかけて出したり出さなかったり


    ;※なんか地の文少しここにあるといいかも?


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="1" name="still" time="1" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;BGM停止。time6000
    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;★新★下記演出追加
    [tb_hide_message_window  ]

    ;シーン回想から再生の場合はここで終了
    [if exp="f.flag_replay!=true"]
        [calcMioHP HP="-20"]
        ;みお性経験加算
        ;　開発度膣+1、絶頂数膣+1
        ;　ぶっかけ+1、露出調教+1
        ;※膣内射精はかなり微妙なライン。とりあえず加算しない。
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm++" ]
        [eval exp="f.sperm++" ]
        [eval exp="f.masochism++" ]
        [eval exp="f.cuscoEv.total++" ]
        [eval exp="f.cuscoEv.today = true" ]
    [endif]
[endmacro]