;＜クスコでおまんこ観察：初回＞
;　初回イベント閲覧済の場合は2回目verの方を再生するように。
[macro name="cuscoEv1" ]
    [eval exp="tf.type = parseInt(mp.type) || 0" ]
    ;■開始パターン１：先生がクスコを購入し、みおのまんこを見たいと頼みこんだ
    ;ゲーム本編からの開始の場合はここから。直前までADVパートの想定
    [if exp="tf.type == 0" ]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [chara_hide_all  time="1"  wait="false"  ]
        [RESET_CAMERA time="1" wait="true"]
        [wait time="10" ]
        [CAMERA zoom="2" layer="1" x="0" y="-130" time="1"]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;シーン回想ここからスタート（回想開始の暗転があけると bk100.jpg が表示されている）

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そんなに頼みこむほど、でしたら……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        学術的興味だから！　見るだけだから！　と[r]
        無理筋ながらも頼みこんでみるもので――[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
        ;★新★スチル表示【01.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/01.png" name="still,cusco01" time="1000"]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        健康診断みたいなもの……[r]
        健康診断みたいなものだから……[p]
        [_tb_end_text]


        [RESET_CAMERA layer="1" time="1000" wait="true"]
        [tb_start_text mode=3 ]
        #
        勢いあまって全裸になっているみおだった。[r]
        特に指摘しないでおくが。[p]
        [_tb_end_text]


    [else]
        ;■開始パターン２：睡眠薬などで、みおが寝てはいないけど意識がはっきりしない状態になり、なしくずしに
        ;フニチェックではこのパターンがいちばんよい、とのことだった。


        ;ゲーム本編からの開始の場合はここから。直前までADVパートの想定

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [chara_hide_all  time="1"  wait="false"  ]
        ;★新★スチル表示【b01.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/b01.png" name="still,cuscob01" time="1000"]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;シーン回想ここからスタート（回想開始の暗転があけるとスチル【k01.png】が表示されている）


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せんせぇ、これでいいんですかぁ……？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        みおがいかなる状態にあるのか、[r]
        怖いぐらい簡単に言うことを聞いてくれる。[p]
        [_tb_end_text]

        ;★新★スチル切替【b02.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/b02.png" name="still,cuscob02" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おいしゃさんごっこ……？[r]
        せんせいって、おいしゃさんの先生なんですねえ[p]
        [_tb_end_text]

        ;★新★スチル切替【b01.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/b01.png" name="still,cuscob01" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えへへ～……[p]
        [_tb_end_text]

        ;★新★スチル切替【b03.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/b03.png" name="still,cuscob03" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        う……うぅ……？[r]
        でもこれって、恥ずかしい、ような……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        だんだん意識がハッキリしてきたようだ。[r]
        先を急いだ方がいいだろう。[p]
        [_tb_end_text]

        ;　→■共通部へ
    [endif]

    ;■共通部

    ;BGM11_temptation.mp3　をtime6000でBGMとして再生開始
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [messageON]
    [tb_start_text mode=3 ]
    #
    さて、とにもかくにもおまんこ観察だ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    クスコを用意したはいいが、[r]
    これは膣内や子宮口を見るためのもの[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ふつうに「まんこ」と言った時にイメージする[r]
    女性器の外側は、クスコを入れると隠れてしまう。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    要するに、まずは手で外陰部を広げて[r]
    器具なしで確認しなくてはならない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおに指示して、ぴったり閉じたすじを[r]
    広げさせる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

    ;★新★スチル切替【02.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/02.png" name="still,cusco02" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はいぃ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おぉ……[r]
    実にみおらしいおまんこだ。[p]
    [_tb_end_text]

    ;★新★スチル切替【03.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/03.png" name="still,cusco03" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そ、それってどういう……[r]
    なにか変なんでしょうか……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    全体的にちいさく控えめで、拡げても慎ましい。[r]
    ほぼ左右対称で均整がとれている。[p]
    [_tb_end_text]

    ;★新★スチル切替【04.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/04.png" name="still,cusco04" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほめられ、て……るんですね[r]
    なるほど……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    天然パイパンはちょっと珍しい体質と思うが[r]
    欠点などでは断じてない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    桃色のきれいな粘膜が呼吸に合わせて[r]
    小さく震えている。[p]
    [_tb_end_text]


    ;★新★スチル切替【02.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/02.png" name="still,cusco02" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……まじまじ見られて、[r]
    なんだか、頭がぼうっとしてきました[p]
    [_tb_end_text]

    ;★新★スチル切替【05.png】↓テキストも修正してます
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/05.png" name="still,cusco05" time="1000"]
    [tb_start_text mode=3 ]
    #
    どろっとした愛液が漏れてきた。[r]
    この状況で濡らすとはな……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    拡げる手に動きがなくとも、濡れたまんこが[r]
    花のようにひとりでにほぐれてゆるむ。[p]
    [_tb_end_text]

    ;★新★下記テキスト１つコメントアウト
    ;[tb_start_text mode=3 ]
    ;#
    ;小陰唇が花開き、尿道口や膣口までもが[r]
    ;眼前にさらされたのだ。[p]
    ;[_tb_end_text]

    ;★新★スチル切替【06.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/06.png" name="still,cusco06" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあぁ、先生、お顔、近いですぅ……っ[r]
    息、あったかくて湿ってるのが、んんぅっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    小ぶりなクリトリスの少し下に[r]
    点のような尿道口があり――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ぐっとアナル寄りに視線を下げたところで[r]
    出てくるのが膣口だ。[p]
    [_tb_end_text]

    ;★新★スチル切替【05.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/05.png" name="still,cusco05" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あううぅ～……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    さすがに膣口近くなると粘膜の桃色も[r]
    色味を強めてグラデーションを描く。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    内臓、みおの内側の色なのだ、と思うと[r]
    すごいものを見ているという感慨が高まってくる。[p]
    [_tb_end_text]

    ;★新★スチル切替【06.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/06.png" name="still,cusco06" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見られてる……すごく真剣な顔の先生に[r]
    こんなところ、見せちゃってる……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そして、膣口を覆うように備わっているのが[r]
    処女膜だが――[p]
    [_tb_end_text]

    [if exp="f.virgin.image.id == 0" ]
        ;【分岐】みおが処女の場合

        [tb_start_text mode=3 ]
        #
        膣口をきゅっとすぼめるこの薄膜が[r]
        きっとみおの処女膜だ。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        これがみおの純潔の証明――[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        と同時に、そんな女の子に足を開かせ[r]
        その証を眺めている異常さが脳を焼く。[p]
        [_tb_end_text]

        ;★新★スチル切替【05.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/05.png" name="still,cusco05" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ん、んんぅ……っ[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ……膜と言うが、体液は通すように[r]
        小さな穴は開いているものらしい。[p]
        [_tb_end_text]


        [tb_start_text mode=4 ]
        #
        この膣口を犯し貫けば、[r]
        その形に処女膜が拡がって変形するわけだ。[l]
        [_tb_end_text]
        ;この次が選択肢なので、mode4,末尾l



        ;　→次の共通部へ


    [else]
        ;【分岐】みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）

        [tb_start_text mode=3 ]
        #
        当然、みおは自分と経験済みだから[r]
        処女膜も無事ではなかった。[p]
        [_tb_end_text]

        ;★新★スチル切替【05.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/05.png" name="still,cusco05" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ん、んんぅ……っ　[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        膣口を守っていた薄膜は貫かれた時に[r]
        拡がったまま、その形から戻っていない。[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        これは、みおの純潔を自分が[r]
        散らしてやったのだという証明だ。[l]
        [_tb_end_text]

        ;この次が選択肢なので、mode4,末尾l


        ;　→次の共通部へ


    [endif]

    ;【共通部】

    [glink target="*cuscoEv1_1" addlog="true" text="さて、それじゃあ……" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv1_1
    ;★新★スチル切替【07.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/07.png" name="still,cusco07" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    手、もういいんですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ。[r]
    なぜなら、いよいよクスコの出番だからだ。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [tb_start_text mode=3 ]
    #
    金属製のクスコを、滅菌個包装の[r]
    袋からバリバリと取り出す。[p]
    [_tb_end_text]

    ;★新★スチル切替【08.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/08.png" name="still,cusco08" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃ……っ[p]
    [_tb_end_text]

    ;★新★スチル切替【09.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/09.png" name="still,cusco09" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんなおっきなものが[r]
    入っちゃうんですか……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    たしかに大きめかもしれない。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    サイズ違いがいくつかあるセットを買ったから、[r]
    挿入するクスコの大小は選べるが……[l]
    [_tb_end_text]
    

    [glink  color="btn_05_black glink_double_left" addlog="true" exp="f.nowCusco = 1"   storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="大きいクスコを使う"  _clickable_img=""  target="*cuscoEv1_2_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true" exp="f.nowCusco = 2"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="小さいクスコを使う"  _clickable_img=""  target="*cuscoEv1_3_1"  ]
    [s]

    *cuscoEv1_2_1
    [if exp="f.virgin.image.id == 0" ]
        ;【分岐】「大きいクスコを使う」ルート中：みおが処女の場合

        [tb_start_text mode=4 ]
        #
        大きいままだと、みおの初挿入が[r]
        クスコということになりかねないが……[l]
        [_tb_end_text]

        [glink  color="btn_05_black glink_double_left" addlog="true" exp="f.nowCusco = 1" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="それでも大きいクスコを使う"  _clickable_img=""  target="*cuscoEv1_2_2"  ]
        [glink  color="btn_05_black glink_double_right" addlog="true" exp="f.nowCusco = 2" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="やっぱり小さいクスコを使う"  _clickable_img=""  target="*cuscoEv1_3_1"  ]
        [s]

        *cuscoEv1_2_2
        ;【分岐】「大きいクスコを使う」ルート中：それでも大きいクスコを使う

        ;クスコで破瓜フラグを立てておく（他分岐では立たない）
        [eval exp="f.cuscoVirginFlag = true" ]
        [tb_start_text mode=3 ]
        #
        まあ、それもオツだろう。[r]
        みおは自分が好きに染め上げられるのだ。[p]
        [_tb_end_text]

        ;★新★スチル切替【10.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/10.png" name="still,cusco10" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        なんだか、いじわるなこと考えてる[r]
        お顔ですけど……[p]
        [_tb_end_text]



        ;　→【クスコ挿入パート】へ
        [jump target="*cuscoEv1_4" ]
    [else]
        ;【分岐】「大きいクスコを使う」ルート中：みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）

        [tb_start_text mode=3 ]
        #
        みおもそれなりの経験をしてきたし、[r]
        挿入さえ慎重にやれば問題ないはずだ。[p]
        [_tb_end_text]

        ;★新★スチル切替【10.png】
        [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/10.png" name="still,cusco10" time="1000"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        や、やさしく、してくださいね……[p]
        [_tb_end_text]


        ;　→【クスコ挿入パート】へ
        [jump target="*cuscoEv1_4" ]
    [endif]

    *cuscoEv1_3_1
    ;【選択肢】小さいクスコを使う

    [tb_start_text mode=3 ]
    #
    小さい方で用意し直した。[r]
    ぱっと見、差はないが口径とかが違うのだろう。[p]
    [_tb_end_text]

    ;★新★スチル切替【10.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/10.png" name="still,cusco10" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございますぅ……[p]
    [_tb_end_text]

    [if exp="f.virgin.image.id == 0" ]
        ;【分岐】「小さいクスコを使うルート」みおが処女の場合

        [tb_start_text mode=3 ]
        #
        みおの処女膜を損なうことなく[r]
        膣内を観察できるだろう。[p]
        [_tb_end_text]


        ;　→【クスコ挿入パート】へ
        [jump target="*cuscoEv1_4" ]
    [else]
        ;【分岐】「小さいクスコを使うルート」みおが処女ではない場合（挿入経験有無より、専用にこれをしたら破瓜というフラグを用意した方がいいかも）

        [tb_start_text mode=3 ]
        #
        たとえ処女でなくとも、[r]
        器具の挿入は慎重にしたいところだし。[p]
        [_tb_end_text]


        ;　→【クスコ挿入パート】へ
        [jump target="*cuscoEv1_4" ]
    [endif]

    *cuscoEv1_4
    ;【クスコ挿入パート】

    [tb_start_text mode=3 ]
    #
    クスコ挿入のためには他にも道具が必要だ。[p]
    [_tb_end_text]

    ;★新★スチル切替【bk100.jpg】
    [image layer="4" storage="../bgimage/bk100.jpg" name="bkcg" ]
    [tb_start_text mode=3 ]
    #
    まずはローション。クスコにも塗るが、[r]
    みおの膣口にもよく塗り込んでやらないと。[p]
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


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゅんび、なんですよね[r]
    準備だから、えっちなことじゃないのに[p]
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
    [tb_start_text mode=4 ]
    #みお
    っ……んぅ～……そろそろ、[r]
    もう、だいじょうぶだと、思います、うぅっ[l]
    [_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    ;[tb_start_text mode=4 ]
    ;#
    ;指を離し、あらためて手でまんこを広げる。[r]　　
    ;膣口からよだれのような汁気が垂れる。[l]
    ;[_tb_end_text]


    
    [glink target="*cuscoEv1_5" addlog="true" text="じゃあ入れるよ" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv1_5
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

    [tb_start_text mode=3 ]
    #
    吸い込まれるように全体が[r]
    みおの中へ飲み込まれてしまった。[p]
    [_tb_end_text]

    [if exp="f.cuscoVirginFlag" ]
        ;【分岐】クスコで破瓜フラグが立っているとき

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

        [eval exp="f.virgin = addExperience(f.virgin,'1037','無造作なクスコ挿入で散華した')" ]
        ;　→次の共通部へ

    [else]

        ;【分岐】クスコで破瓜フラグが立っていないとき

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
    [endif]

    ;【共通部】

    [tb_start_text mode=3 ]
    #
    みおの様子を見つつクスコの角度と[r]
    クチバシの開きを調整する。[p]
    [_tb_end_text]

    ;★新★スチル切替【16.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/16.png" name="still,cusco16" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほんとに診察してるみたいな感じ……[r]
    いえ、こういうのはしたことないんですが[p]
    [_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    ;[tb_start_text mode=3 ]
    ;#
    ;最後に、いい具合の位置に懐中電灯を置いて[r]
    ;みおの膣内を照らしてやる。[p]
    ;[_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0035.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;えっ、えぇっ[p]
    ;[_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    ;[tb_start_text mode=3 ]
    ;#
    ;だってこうしないと見えないし。[p]
    ;[_tb_end_text]

    ;★新★下記１テキスト、コメントアウト
    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0036.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;だからってぇっ[p]
    ;[_tb_end_text]


    ;光の差分を付け足すことができる想定。やらないなら地の文は違う感じにして
    ;みお台詞と整合させる（単に顔をぐっと近づけるとか）

    ;★新★下記１テキスト、コメントアウト
    ;[tb_start_text mode=3 ]
    ;#
    ;そして広がる肉色の光景に目を奪われる。[p]
    ;[_tb_end_text]


    ;★新★下記１テキスト、修正してます
    [tb_start_text mode=3 ]
    #
    クスコ挿入は精密器具を扱うような緊張があったが、[r]
    あとはただただ好奇心のままに観察できる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今まで心臓が止まっていたんじゃないかという感じに[r]
    急にバクバクと自分の動悸が聞こえはじめた。[p]
    [_tb_end_text]

    ;★新★スチル切替【14.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、せんせえ、見てるんですかぁ[r]
    わたしのナカ……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    神秘的な光景だった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    普通にしていればまず見ることのない[r]
    人間の内側、それもみおの内部――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぬらぬらと粘液に濡れたピンク色のひだが[r]
    やわらかそうに蠕動している。[p]
    [_tb_end_text]


    ;★新★スチル切替【13.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/13.png" name="still,cusco13" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん、ふぁ……はぁ……ふぅぅ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    圧迫感のためかみおの呼吸は苦しそうに深いが、[r]
    それに合わせて震えているのが子宮の先端だろう。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    膣壁よりも少し硬そうな張りがあって、[r]
    切れ込みのような穴が開いている。[l]
    [_tb_end_text]


    [glink target="*cuscoEv1_6" addlog="true" text="これが……子宮口……" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv1_6

    ;★新★スチル切替【14.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんなところまでわかっちゃうんですか[r]
    う、ひぅぅ……っ、あぅ～[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    動物としてのセックスならば[r]
    ここ目掛けて射精するのが目的なのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この子宮を精液で染め上げて妊娠させることが……[p]
    [_tb_end_text]

    ;★新★スチル切替【16.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/16.png" name="still,cusco16" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしのあかちゃんのおへや、[r]
    先生が見てるんだ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおのうわごとがとどめになった。[p]
    [_tb_end_text]

    ;★新★スチル切替【14.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/14.png" name="still,cusco14" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]
    ;スチル切替で先生ペニス表示（ある場合）
    ;★新★スチル切替【17.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/17.png" name="still,cusco17" time="1000"]
    [tb_start_text mode=3 ]
    #
    ズボンをずり下げ、これ以上なく[r]
    怒張したペニスをしごき出す。[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生　※手コキと挿入ピストン運動のBGSは分けた方がいいかもだけど、とりま共通素材を使用
    [fadeinse storage="BGS/piston1.mp3" time="6000" loop="true" buf="0" ]
    [tb_start_text mode=3 ]
    #
    爆発しそうなのを握力で抑え込んでいる――[r]
    そんな錯覚を覚えるほどに熱い自慰。[p]
    [_tb_end_text]

    ;★新★スチル切替【18.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/18.png" name="still,cusco18" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のおちんちん……真っ赤っか、です……[r]
    さきっぽもおツユで濡れて、ぱくぱく開いて……[p]
    [_tb_end_text]

    ;★新★スチル切替【19.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/19.png" name="still,cusco19" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0043.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    そ、それ……どうしちゃうんですか……？[r]
    わたしになにをしちゃうんですか……？[l]
    [_tb_end_text]


    [glink target="*cuscoEv1_7" addlog="true" text="みおの子宮にぶっかけるんだ" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv1_7
    ;★新★スチル切替【18.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/18.png" name="still,cusco18" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ふつうのセックスじゃあ中に出しても[r]
    膣のどこに精液がかかった知る術はない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    でもこの状況なら、クスコでこじ開けた膣内へと、[r]
    子宮口へと目掛けた射精ができる。[p]
    [_tb_end_text]

    ;★新★スチル切替【19.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/19.png" name="still,cusco19" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あかちゃん、作りたいってことですか？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ああ。[p]
    [_tb_end_text]

    ;★新★スチル切替【17.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/17.png" name="still,cusco17" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしを妊娠させちゃってもいいって、[r]
    思ってくれてるんですか、先生……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そうだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    細かいことなんか抜きにして、[r]
    ただ一匹の雄として、この雌を孕ませたいのだ。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生　※手コキと挿入ピストン運動のBGSは分けた方がいいかもだけど、とりま共通素材を使用
    [stopse buf="0" ]
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" loop="true" buf="0" ]

    [tb_start_text mode=3 ]
    #
    自分だけのものだと印付けしたいのだ。[p]
    [_tb_end_text]

    ;★新★スチル切替【19.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/19.png" name="still,cusco19" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁ……お、おねがい、します……[p]
    [_tb_end_text]

    ;★新★スチル切替【20.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/20.png" name="still,cusco20" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0048.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    わたしのこれ以上ないくらい深いところ、[r]
    先生のしるしでたぽたぽにして、ください……[l]
    [_tb_end_text]


    [glink target="*cuscoEv1_8" addlog="true" text="出る……っ！" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *cuscoEv1_8
    ;射精演出,BGS停止
    ;スチル切替【k04.png】
    ;※膣内射精はかなり微妙なライン。とりあえず加算しない。
    ;★新★スチル切替【21.png】
    

    [stopse buf="0" ]
    [syaseiFlashForStill layer="1" storage="EVcg/kusukoHstill/21.png" name="still,cusc21"  count="false"]
    [free layer="1" name="cusco20" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ぁあぁーっ、熱い、熱いのわかりますっ[r]
    先生のせいえき、どろどろで熱いのがかかってるぅっ[p]
    [_tb_end_text]

    ;★新★スチル切替【22.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/22.png" name="still,cusco22" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ、ひぅあああ――っ！[p]
    [_tb_end_text]

    ;★新★みおも絶頂演出。いったん画面をホワイトアウトし、スチル切替【23.png】
    [mask time="300" color="white"  ]
        [CGSet layer="1" storage="EVcg/kusukoHstill/23.png" name="still,cusco23" time="500" ]
        [free layer="1" name="cusco04" time="1" ]
    [mask_off time="1000" ]
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

    ;★新★スチル切替【24.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/24.png" name="still,cusco24" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おなか、いっぱいです……[p]
    [_tb_end_text]

    ;★新★スチル切替【25.png】
    [CGSetAndDelete layer="1" storage="EVcg/kusukoHstill/25.png" name="still,cusco25" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene7_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    このナカ……ぜぇんぶ、[r]
    先生のものになっちゃいましたね[p]
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

    [tb_start_text mode=3 ]
    #
    これで妊娠するかどうかはわからないが、[r]
    征服欲はすでに充分満たされた思いだった。[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="1" name="still" ]
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

    [setreplay name="cuscoEv001" storage="replay_select.ks" target="cusco_select"]
[endmacro]

