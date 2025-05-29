[macro name="onaganki01" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜シーン：みおのオナニー（＋顔騎）＞

    ;　みおはパジャマ姿を想定。つまり、ほぼほぼ夜で入浴後（プレイングによっては例外もありえるか）
    ;　コミュニケーションパート「ひざまくら」からえっちないたずらをし、
    ;　一定の条件を満たすと発生するイメージ。


    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合ここから背景bk100、立ち絵なしでスタート
    ;本編からの場合はひざまくらイタズラ側の処理が進んできたら再考
    [if exp="f.flag_replay" ]
        [bg storage="bk100.jpg" time="1" ]

    [endif]
    [maskEnd]
    [messageON]
    [if exp="!f.flag_replay" ]
        ;[hizaHyoujouSet storage="komaru_red.png"]
    [endif]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    困りますぅ～……[r]
    これ以上されたらぁ……[p]
    [_tb_end_text]
    [if exp="!f.flag_replay" ]
        ;[hizaHyoujouSet storage="okoru_red.png"]
    [endif]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひざまくらおしまいです、おしまいっ[p]
    [_tb_end_text]
    
    [if exp="!f.flag_replay" ]
        [setBK time="200"]
        [free layer="2" name="hizamakura"]
    [endif]
    [tb_start_text mode=3 ]
    #
    いたずらの攻勢に屈したことは明らかだが、[r]
    体勢の優位をとるみおが最後の抵抗を続ける。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [tb_start_text mode=3 ]
    #
    だが、ひざまくらを止めて逃げ出そうとする[r]
    みおの虚を突き、立ち上がるのを――阻止！！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃあぁ――っ！？[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    ;スチル表示＿末尾【01】
    [if exp="!f.flag_replay" ]
        
        [setGankiCG cg="01" time="1"]
        [deleteBK time="1000"]

    [else]

        [setGankiCG cg="01" time="1000"]

    [endif]
    [deleteBK time="1"]

    ;----------------------------------------
    ;プチ分岐
    [if exp="f.cloth == 'roomwear1' || f.cloth == 'roomwear2'" ]

        ;今回の衣装がズボンなし＿ぶかTシャツ、ネグリジェ
        [tb_start_text mode=3 ]
        #
        ……で、こういう体勢になった。[p]
        [_tb_end_text]

    [else]
        ;今回の衣装がズボンあり＿ピンクのチェック、黒猫パーカー
        [tb_start_text mode=3 ]
        #
        ……で、こういう体勢になった。[r]
        ズボンもどさくさでずり落ちている。[p]
        [_tb_end_text]

    [endif]
    ;----------------------------------------

    [tb_start_text mode=3 ]
    #
    みおをつなぎ留める手はゆるめず、[r]
    この状態で釘付けにする。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替＿末尾【02】
    [setGankiCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぅぅ……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【03】
    [setGankiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見えちゃって、ますよね……[r]
    その、わたしの……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【02】
    [setGankiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おま……が、濡れてるの……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いたずら中からわかっていたことだが、[r]
    なかなか立派な染みができているな。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【03】
    [setGankiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【04】
    [setGankiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふえーん……[p]
    [_tb_end_text]

    ;-------------------------------------------
    ;【分岐】このイベント発生初回時
    [if exp="f.onaganki.total == 0" ]
        *onaganki01_1
        ;スチル切替＿末尾【03】
        [setGankiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ママ、ごめんなさい……[p]
        [_tb_end_text]

        ;スチル切替＿末尾【02】
        [setGankiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        みおは親戚のお兄ちゃんの先生とじゃれて[r]
        変な気分になっちゃう子になりました……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        突然の懺悔だ。[r]
        さすがにこちらもちょっと戸惑う。[p]
        [_tb_end_text]

        ;スチル切替＿末尾【04】
        [setGankiCG cg="04" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それに、それに……[p]
        [_tb_end_text]

        ;スチル切替＿末尾【02】
        [setGankiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こんなポーズで、だいじなところ[r]
        思い切りみられてるのに……[p]
        [_tb_end_text]

        ;スチル切替＿末尾【03】
        [setGankiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし、それでちょっと[r]
        気持ちよくなって……んん……っ[p]
        [_tb_end_text]

        ;　→次の共通部へ

    [else]
        ;-------------------------------------------
        ;【分岐】このイベント発生２回め以降
        *onaganki01_2
        ;スチル切替＿末尾【03】
        [setGankiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        またこうなっちゃうってわかってて[r]
        いじわるしてるんですかぁ、先生～……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        はい。[p]
        [_tb_end_text]

        ;スチル切替＿末尾【02】
        [setGankiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        じゃれあってるだけではしたなく[r]
        おまたぐじゅぐじゅにして[p]
        [_tb_end_text]

        ;スチル切替＿末尾【03】
        [setGankiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それを見られてまた気持ちよくなって[r]
        わたしがそんな子になって楽しいんですかぁ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        どちらかと言えば楽しいな……[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [endif]
    ;-------------------------------------------
    ;【共通部】
    *onaganki01_3
    ;スチル切替＿末尾【04】
    [setGankiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0017.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    だか、らぁ……っ、トイレかどこかに[r]
    こもって落ち着くまでじっとしてないとぉっ[l]
    [_tb_end_text]

    [glink_left storage="Hscene/onaganki01.ks" target="*onaganki01_4" text="どうなるの？"]
    [glink_right storage="Hscene/onaganki01.ks" target="*onaganki01_5" text="じっとするだけ？"]
    [s]

    ;-------------------------------------------
    ;【選択肢】どうなるの？
    *onaganki01_4
    ;スチル切替＿末尾【02】
    [setGankiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どう、って……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【03】
    [setGankiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むずむずして、たまらなくなって……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【04】
    [setGankiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    自分でどうしたらいいかわからなくても、[r]
    それでもいいからって、自分で触っ……――[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="onaganki01_6" ]
    ;-------------------------------------------
    ;【選択肢】じっとするだけ？
    *onaganki01_5
    ;スチル切替＿末尾【03】
    [setGankiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じっとするだけ……[r]
    じゃ……ないです……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【02】
    [setGankiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    声が出ないようにがまん、しながら[r]
    指で、上からカリカリって……――[p]
    [_tb_end_text]



    ;　→次の共通部へ
    [jump target="onaganki01_6" ]
    ;-------------------------------------------
    ;【共通部】
    *onaganki01_6
    [tb_start_text mode=3 ]
    #
    催眠術にでもかかったように、[r]
    みおはぼうっとした様子で手を伸ばし……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

    ;スチル切替＿末尾【05】
    [setGankiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自らを慰めはじめた。[r]
    真下からの視線に構わずに。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【06】
    [setGankiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、見ないでぇ……[r]
    っ、んにゅぅ、ああぁ……んんっ[p]
    [_tb_end_text]

    [if exp="f.onaganki.total == 0" ]

        [tb_start_text mode=3 ]
        #
        自慰と言っても、経験がないのか[r]
        手つきはぎこちない。[p]
        [_tb_end_text]
        ;※プチ分岐
    [else]

        [tb_start_text mode=3 ]
        #
        前回自慰のてほどきはしたが、[r]
        やはりまだまだぎこちない。[p]
        [_tb_end_text]
        ;※プチ分岐

    [endif]

    [tb_start_text mode=3 ]
    #
    布越しに秘部をさするぐらいのものだ。[r]
    これではかえって焦れるばかりだろうに。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【07】
    [setGankiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、はぁ……っく、んんぅ……[r]
    うう～、やり方なんて知らないですもん……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    それでも股間の染みは広がり、[r]
    水音もひびきを強めてきている。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08】
    [setGankiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0026.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ただここが切なくて、[r]
    うずくからさすってるだけ、で……っ[l]
    [_tb_end_text]

    [glink_left storage="Hscene/onaganki01.ks" target="*onaganki01_7" text="教えてあげようか"]
    [glink_right storage="Hscene/onaganki01.ks" target="*onaganki01_8" text="手伝ってあげようか"]
    [s]

    ;----------------------------------------------------
    ;【分岐】教えてあげようか
    *onaganki01_7
    ;スチル切替＿末尾【09】
    [setGankiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほぇぇ……？　やり方、ですか……？[p]
    [_tb_end_text]

    [if exp="f.onaganki.select.oshieru" ]

        ;ここに来るのが２回目以降のとき、追加で表示
        [tb_start_text mode=3 ]
        #
        前も教えたことの復習だが――[p]
        [_tb_end_text]

    [endif]
    [eval exp="f.onaganki.select.oshieru++" ]
    [tb_start_text mode=3 ]
    #
    下着は脱いでじかに触るとか、[r]
    場所もクリトリスや乳首にするとか……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とにかく怖がらないで自分の身体を[r]
    いろいろ楽しんでみればいいのではないか。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【07】
    [setGankiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう言われても、こわいですぅ～……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08】
    [setGankiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おまたこすこすだけで気持ちがいいのに、[r]
    これ以上だなんて――[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="onaganki01_9" ]
    ;----------------------------------------------------
    ;【分岐】手伝ってあげようか
    *onaganki01_8
    ;スチル切替＿末尾【09】
    [eval exp="f.onaganki.select.tetsudau++" ]

    [setGankiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    手伝う、なんてそんな……[r]
    触ったり、ですか？[p]
    [_tb_end_text]

    ;スチル切替＿末尾【08】
    [setGankiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんなの、そんなのだめです[p]
    [_tb_end_text]

    ;スチル切替＿末尾【09】
    [setGankiCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見られてるだけでこんなゾクゾクするのに、[r]
    先生に触られたりなんかしたら――[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="onaganki01_9" ]
    ;----------------------------------------------------
    ;【共通部】
    *onaganki01_9
    ;スチル切替＿末尾【07】
    [setGankiCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、脚が……もう……っ[p]
    [_tb_end_text]


    ;スチル切替＿末尾【10】
    [setGankiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んやあああああぁぁっ！？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure2.mp3"  ]

    [tb_start_text mode=3 ]
    #
    みおが腰砕けになってへたり込み、[r]
    股間はそのままこちらの顔に落ちてきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    女の子の匂いが鼻腔を満たす。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    小鼻のひくつきがかすめただけで[r]
    みおはびくびくと腰を震わせていた。[p]
    [_tb_end_text]


    ;スチル切替＿末尾【11】
    [setGankiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あひぁっ、これ、先生、これぇ……[p]
    [_tb_end_text]


    ;スチル切替＿末尾【12】
    [setGankiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    びりびりしてぇ……先生にまたがって[r]
    押しつけるなんていけないのにぃ……ひぁぁ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    愛液がさらに染みでて、みおの下着は[r]
    濡れた紙同然に貼りついて透け切っていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    桃色の秘部が、その形状や起伏まで含めて[r]
    丸見えになっている。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【13】
    [setGankiCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    息、先生の息が熱くて、[r]
    あぁ、見てる、んですよね、見られて……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【11】
    [setGankiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんん～――……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    軽くイったようだ。脱力した股間が[r]
    ぐーっと顔に圧をかけてくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    息苦しいが、この被虐感もいいものだ。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ……みおもまだ燃え尽きてはいないだろう。[r]
    この後の展開はどう運ぼうか？[l]
    [_tb_end_text]

    [glink_left storage="Hscene/onaganki01.ks" target="*onaganki01_semerareru_1" text="顔面騎乗で責めてもらう"]
    [glink_right storage="Hscene/onaganki01.ks" target="*onaganki01_semeru_1" text="パンツを脱がして責める"]
    [s]
    ;このあと展開が大きく分岐

    ;----------------------------------------------------
    ;----------------------------------------------------
    ;【大分岐】顔面騎乗で責めてもらう
    *onaganki01_semerareru_1

    [tb_start_text mode=3 ]
    #
    顔面騎乗――いわゆる顔騎をやってくれ、と[r]
    みおに頼んでみた。[p]
    [_tb_end_text]
    [eval exp="f.onaganki.todayType = 'semerareru'" ]
    ;-----------------
    ;【分岐】ここに来るのがはじめての場合
    [if exp="f.onaganki.select.semerareru == 0" ]
        *onaganki01_semerareru_2
        ;スチル切替＿末尾【14】
        [setGankiCG cg="14" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ？？？[p]
        [_tb_end_text]

        ;スチル切替＿末尾【11】
        [setGankiCG cg="11" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0040.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今、しているこれは違うんですか？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        これは偶発的に乗っかってるだけで、[r]
        女性上位の顔騎ではないので。[p]
        [_tb_end_text]

        ;スチル切替＿末尾【10】
        [setGankiCG cg="10" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        いじめるつもりでわたしが[r]
        先生のお顔をおまたで潰すんですか！？[p]
        [_tb_end_text]


        ;　→次の共通部へ

    [else]
        ;-----------------
        ;【分岐】ここに来るのが２回目以降の場合
        *onaganki01_semerareru_3
        ;スチル切替＿末尾【14】
        [setGankiCG cg="14" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0042.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        またですか……[p]
        [_tb_end_text]

        ;スチル切替＿末尾【13】
        [setGankiCG cg="13" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0043.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        脱がないでこのままがいいんでしたっけ[p]
        [_tb_end_text]

        ;スチル切替＿末尾【12】
        [setGankiCG cg="12" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0044.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        うぅ～……ん……[p]
        [_tb_end_text]


        ;　→次の共通部へ
    [endif]
    ;-----------------
    ;【共通部】
    *onaganki01_semerareru_4
    ;スチル切替＿末尾【11】
    [setGankiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ――もうそんな顔しないでください[r]
    やりませんとか言ってないですよぅ～[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    根負けする形で承諾するみおだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ずり下がり気味のパンツも[r]
    元の位置に戻しておく。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【13】
    [setGankiCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    てっきり脱がされるのかと……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    シックスナインともクンニとも違うのだ！[r]
    これは、このままがいい！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そしてそのまま窒息させるなり[r]
    椅子にするなりして欲しい！[p]
    [_tb_end_text]

    ;スチル切替＿末尾【14】
    [setGankiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……本当に苦しかったら言ってくださいね？[p]
    [_tb_end_text]

    ;スチル切替＿末尾【12】
    [setGankiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    椅子のつもりで……[r]
    先生がそれがうれしいみたいだから……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    逡巡と自身への言い聞かせを経て――[r]
    みおがぐっと、体重をかけてきた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/touch3.mp3"  ]

    [tb_start_text mode=3 ]
    #
    甘い匂いのする白い塊が目鼻口を押しつぶし[r]
    その白の奥に濡れた肌色が透けてくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    衣擦れ、押し殺したみおの喘ぎを聞きながら[r]
    口では呼吸か犬舐めか定かでない動きをする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    五感すべてがみおの股間に捧げられ、[r]
    自分はそれだけの物体になったのだと感じる。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【14】
    [setGankiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、ほんとにうれしそう……[r]
    ん……っ、お顔に乗られてるのに……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]


    [tb_start_text mode=3 ]
    #
    もぞもぞした動きが偶然にも[r]
    理想的なグラインドとなった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うおお！！！[p]
    [_tb_end_text]

    ;スチル切替＿末尾【14】
    [setGankiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、えっ？[r]
    これ？　この動きを続けるんですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それがいいんだ、ボールみたいにしてくれ！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分がまるで頭だけの無力な存在となって[r]
    翻弄されている感覚、これがいいのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    勢いのまま言葉責めも頼んでしまう。[r]
    内容は――[p]
    [_tb_end_text]

    ;-----------------------------------------------
    ;■ランダム表示

    ;ここに来るのがはじめての時はＡ，Ｂ，Ｃからいずれか１つ抽選して表示
    ;２回目以降はＤ，Ｅ，Ｆからいずれか１つ抽選して表示
    [if exp="f.onaganki.total == 0" ]
        [getrand min="1" max="3" var="f.onaganki.batouType"]
    [else]
        [getrand min="4" max="6" var="f.onaganki.batouType"]
    [endif]
    [if exp="f.onaganki.batouType == 1" ]
        *onaganki01_semerareru_4_A
        ;＜Ａ＞
        ;スチル切替＿末尾【13】
        [setGankiCG cg="13" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0051.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        か、顔に乗られて興奮するなんて、[r]
        まっ、ま、マゾ豚さんですね、このこの[p]
        [_tb_end_text]
        ;※とまどいつつ。かなり下手に。

    [elsif exp="f.onaganki.batouType == 2" ]
        *onaganki01_semerareru_4_B
        ;＜Ｂ＞
        ;スチル切替＿末尾【13】
        [setGankiCG cg="13" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0052.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        こんなのがいいだなんて[r]
        へっ、変態！　変態さんです！[p]
        [_tb_end_text]
        ;※とまどいつつ。かなり下手に。

    [elsif exp="f.onaganki.batouType == 3" ]
        *onaganki01_semerareru_4_C
        ;＜Ｃ＞
        ;スチル切替＿末尾【13】
        [setGankiCG cg="13" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0053.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        椅子は椅子らしくじっとしててください[r]
        わ、わたしが好きにするんですからっ[p]
        [_tb_end_text]
        ;※とまどいつつ。かなり下手に。

    [elsif exp="f.onaganki.batouType == 4" ]
        *onaganki01_semerareru_4_D
        ;＜Ｄ＞
        ;スチル切替＿末尾【15】
        [setGankiCG cg="15" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0054.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        顔に乗られてふごふご鳴くなんて[r]
        本当の豚さんですねえ、ふふ[p]
        [_tb_end_text]
        ;※ちょっと上手いパターン

    [elsif exp="f.onaganki.batouType == 5" ]
        *onaganki01_semerareru_4_E
        ;＜Ｅ＞
        ;スチル切替＿末尾【16】
        [setGankiCG cg="16" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0055.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぐりぐりされて跳ねるだけのボールさん[r]
        こういうのがうれしいんですか？[p]
        [_tb_end_text]
        ;※だいぶ上手いパターン

    [elsif exp="f.onaganki.batouType == 6" ]
        *onaganki01_semerareru_4_F
        ;＜Ｆ＞
        ;スチル切替＿末尾【16】
        [setGankiCG cg="16" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0056.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        顔騎されるのが好きな変態さんなのに[r]
        普段は普通のふり、がんばってるんですね[p]
        [_tb_end_text]
        ;※罵倒というより本気でねぎらう感じ

    [endif]
    ;-----------------------------------------------
    ;■上記みお台詞の結果に合わせた地の文分岐


    ;-----
    [if exp="f.onaganki.batouType <= 4" ]

        ;さきほどの抽選結果がＡ，Ｂ，Ｃ，Ｄの時。下記の２つの地の文のどちらかを抽選して表示
        [getrand min="1" max="2"]

        [if exp="tf.rand == 1" ]
            *onaganki01_semerareru_4_1
            [tb_start_text mode=3 ]
            #
            ……思った感じではないが、[r]
            やってくれただけ良しとしよう。[p]
            [_tb_end_text]

        [else]
            *onaganki01_semerareru_4_2
            [tb_start_text mode=3 ]
            #
            言葉責めには上達は期待でき無さそうだが、[r]
            とはいえ、応えてくれるのがうれしい。[p]
            [_tb_end_text]

        [endif]

    [else]
        *onaganki01_semerareru_4_3
        ;-----
        ;さきほどの抽選結果がＥ，Ｆの時は下記の地の文
        [tb_start_text mode=3 ]
        #
        おっ、いい感じじゃないか。[r]
        頼んだ台詞からアレンジも入っている。[p]
        [_tb_end_text]

    [endif]
    ;-----------------------------------------------

    ;★ランダム台詞によっては次台詞のこちらとの温度差があってつながらないかもなので、
    ;　地の文でみおの方もエロい意味でノってきた、みたいな一文を追加する？
    ;　→プレイ感見て判断
    *onaganki01_semerareru_4_4
    ;スチル切替＿末尾【14】
    [setGankiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、ふぁ……この角度と動き、わたしも……[r]
    先生のお顔で擦れて……んきゅっ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]


    [tb_start_text mode=3 ]
    #
    グラインドを続けるうち、[r]
    みおも行為に没頭しはじめたようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分勝手な動きがこちらの息を圧迫し、[r]
    理想的な顔騎に近づいてきた。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【12】
    [setGankiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、んなああ、いいです、[r]
    先生のお顔、熱くて出っ張りがあって[p]
    [_tb_end_text]

    ;スチル切替＿末尾【17】
    [setGankiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぐりぐり押しつけたら暴れるのも[r]
    わたしのいいところに当たって……あんっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]


    [tb_start_text mode=3 ]
    #
    うむ、うぷぅぅっ……！[r]
    むぐあああっ！！[p]
    [_tb_end_text]

    ;スチル切替＿末尾【15】
    [setGankiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんっ、ん、もっと、もっと強くぅ、[r]
    ぐりぐりして……ああっ[p]
    [_tb_end_text]


    ;スチル切替＿末尾【12】
    [setGankiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いい、きもちいい、自分の指とも[r]
    先生にされるのとも違って、これぇっ[p]
    [_tb_end_text]


    ;スチル切替＿末尾【11】
    [setGankiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0062.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    うぅぅっ、来る、来ちゃう、[r]
    びくびくするの、おっきいのが――[l]
    [_tb_end_text]

    [glink_center storage="Hscene/onaganki01.ks" target="*onaganki01_semerareru_5" text="ンムムーッ！"]
    [s]


    *onaganki01_semerareru_5
    ;☆みお絶頂のピンクフラッシュをしながら下記スチル切替
    ;スチル切替＿末尾【10】
    [setGankiCG cg="10" time="300" zettyou="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ンンっ、んき……ああぁああぁ～っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――っ！　――……ッ！！[p]
    [_tb_end_text]


    ;スチル切替＿末尾【18】
    [setGankiCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あひっ……あ、あぅぁぁ……[r]
    はぁ、はふぅ……ふぃ……[p]
    [_tb_end_text]


    ;スチル切替＿末尾【12】
    [setGankiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぁ……あぁん……[p]
    [_tb_end_text]


    ;スチル切替＿末尾【bk100】
    ;スチル削除で背景に設定しているbk100に切り替える
    [maskStart]
        [free layer="2" name="still" time="1" ]
        [bgChange time="1" storage="bk100.jpg" ]
    [maskEnd]
    [tb_start_text mode=3 ]
    #
    へなへなとみおが崩れ落ち、[r]
    こちらの呼吸も自由になった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    苦しく、そして幸多き時間だった。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むにゃ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    慣れないことをして疲れたのか、[r]
    みおも安らかな寝息を立てていた。[p]
    [_tb_end_text]


    ;性経験加算（顔騎の場合）
    ;　オナニー+1、みおから迫って+1、開発％陰核+1、絶頂数陰核+1
    [eval exp="f.masturbation++" ]
    [eval exp="f.malerape++" ]
    [eval exp="f.clitoris++" ]
    [eval exp="f.clitorisTotalOrgasm++" ]
    [eval exp="f.onaganki.select.semerareru++" ]
    ;【終了部へ合流】（必要に応じていくらか地の文を追加）
    [jump target="onaganki01_end" ]

    ;----------------------------------------------------
    ;----------------------------------------------------
    ;【大分岐】パンツを脱がして責める
    *onaganki01_semeru_1
    ;;;;メモ：分岐前の表示は【12】
    [eval exp="f.onaganki.todayType = 'semeru'" ]
    [tb_start_text mode=3 ]
    #
    軽くみおの腰を浮かせ、さっと下着を引き抜く。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]


    ;スチル切替＿末尾【19】
    [setGankiCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0067.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぁぇぇ……！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    早業というか、みおが虚脱していたからこそ[r]
    できたものではあるが。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    お礼をしてあげる、とつぶやいて[r]
    舌を伸ばしてみおに触れる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替＿末尾【20】
    [setGankiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁ……うぅ……っ、ああ、[r]
    先生のあったかいのが、入り口をぉ……っ[p]
    [_tb_end_text]

    ;-----------------
    ;【分岐】ここに来るのがはじめての場合
    [if exp="f.onaganki.select.semeru == 0" ]
        *onaganki01_semeru_2
        ;スチル切替＿末尾【21】
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0069.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        自分で、するのとぜんぜん違って[r]
        あっ、ぁぅぅ、っくぁぁ……っ[p]
        [_tb_end_text]


        ;　→次の共通部へ
    [else]
        ;-----------------
        ;【分岐】ここに来るのが２回目以降の場合
        *onaganki01_semeru_3
        ;スチル切替＿末尾【21】
        [setGankiCG cg="21" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0070.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生がシてくれたら、わたしのうずうず、[r]
        きっとラクになります……えへへ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まあ、うずうずさせたのもこちらなのだが。[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [endif]
    ;-----------------
    ;【共通部】
    *onaganki01_semeru_4
    ;スチル切替＿末尾【20】
    [setGankiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんおっ、ううぅ～……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]

    [tb_start_text mode=3 ]
    #
    いじめ抜かれたみおのまんこは[r]
    もうなにをされても快感と錯覚してしまう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふだんは痛がりそうな乱暴な責め方でも――[p]
    [_tb_end_text]

    ;スチル切替＿末尾【19】
    [setGankiCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～っ……！[p]
    [_tb_end_text]

    ;スチル切替＿末尾【20】
    [setGankiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0073.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぁぁ……ぁおおっ……[r]
    ふぐぅぅ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    快感にわななき、桃尻がぷるぷるゆれる。[r]
    だがこれもより大きな絶頂の前兆だ。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【19】
    [setGankiCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0074.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁぅぁっ、きもちい、[r]
    せんせいのきもち、いいですぅっ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【21】
    [setGankiCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0075.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ううぅ……？[r]
    あ……？　どうして、やめるんですかぁ[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    離したわけではない。[r]
    動くのを止めただけだ。[l]
    [_tb_end_text]

    [glink_center storage="Hscene/onaganki01.ks" target="*onaganki01_semeru_5" text="オナニーの続きは自分でするんだよ"]
    [s]

    *onaganki01_semeru_5
    ;スチル切替＿末尾【20】
    [setGankiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0076.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う……[p]
    [_tb_end_text]

    ;スチル切替＿末尾【21】
    [setGankiCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0077.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい……わかりました[p]
    [_tb_end_text]

    ;スチル切替＿末尾【22】
    [setGankiCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0078.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせいのお身体お借りして、[r]
    自分勝手なオナニー、させてもらいます……っ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【23】
    [setGankiCG cg="23" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0079.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ、ひぁっ、んんっ[r]
    じんじん、するのが、おっきくなって[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    宣言したものの、もう手足は萎えきって[r]
    懸命の自慰はひどくスローだ。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【24】
    [setGankiCG cg="24" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0080.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ゆっくりなぶん、触った場所が[r]
    熱くなるのがよくわかって、んやぁ、んんっ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【25】
    [setGankiCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0081.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    熱いの、溜まって、それがおなかの奥に[r]
    じんじんひびくのぉ……っ[p]
    [_tb_end_text]

    ;スチル切替＿末尾【24】
    [setGankiCG cg="24" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0082.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ、んっ、んん[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そろそろか、とみおの絶頂に身構える。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【26】
    [setGankiCG cg="26" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0083.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……ぁ……――[p]
    [_tb_end_text]


    ;☆みお絶頂のピンクフラッシュをしながら下記スチル切替
    ;スチル切替＿末尾【27】
    [setGankiCG cg="27" time="300" zettyou="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0084.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ――～～……っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    が、予想とは真逆の、深く静かな絶頂が[r]
    みおを包んだようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    表情や息遣いこそ艶めかしいが、[r]
    丸まって震える姿は眠る子猫を思わせる。[p]
    [_tb_end_text]

    ;スチル切替＿末尾【bk100】
    [maskStart]
        [free layer="2" name="still" time="1" ]
        [bgChange time="1" storage="bk100.jpg" ]
    [maskEnd]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0085.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、はぁ……んんぁぁ……ふぁ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そんな予想外の静けさが、[r]
    かえって生々しかった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    人には決して見せることのない[r]
    秘めごとを覗き見たようで――……[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene3_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むにゃ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    寝てた。[p]
    [_tb_end_text]


    ;性経験加算（ぱんつをぬがして責めるの場合）
    ;　オナニー+2、開発％陰核+2、絶頂数陰核+2、
    [eval exp="f.onaganki.select.semeru++" ]
    [eval exp="f.masturbation+=2" ]
    [eval exp="f.clitoris+=2" ]
    [eval exp="f.clitorisTotalOrgasm+=2" ]
    ;【終了部へ合流】（必要に応じていくらか地の文を追加）
    [jump target="onaganki01_end" ]

    ;-------------------------------------------------------------------------------------
    ;【終了部】
    *onaganki01_end
    ;回想シーンからの再生ならここで終了

    [if  exp="!f.flag_replay" ]
        [tb_start_text mode=3 ]

        #

        眠るみおの世話をしたら[r]
        今日は自分も寝てしまうことにした……[p]
        [_tb_end_text]

        ;みお体力-20
        [calcMioHP HP="-20"]
        [eval exp="f.onaganki.total++" ]
        [eval exp="f.onaganki.today = true" ]
        [eval exp="f.todayEnd = true" ]
        ;実際のゲーム中での発生なら実装後の様子を見て、なにがしかの会話をここに追加。
        ;同じフローで発生する授乳手コキはシーン終了でそのまま寝て次の日になるので
        ;このイベントも同じように。

    [endif]

    [setreplay name="ganmenkijou" storage="replay_select.ks" target="onaganki_select"]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[endmacro]