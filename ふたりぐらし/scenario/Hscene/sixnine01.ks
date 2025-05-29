[macro name="sixnine01" ]
    ;-------------------------------------------------------------

    ;＜【映画から】シックスナイン　１回目＞

    ;本編からの場合はここから。
    [if exp="!f.flag_replay" ]

        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        [chara_hide_all  time="1"  wait="false"  ]
        [freeimage layer="1" ]
        [freeimage layer="2" ]
        [reset_camera time="1" ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]
    [else]
        [maskEnd]
        [messageON]
    [endif]
    ;シーン回想の場合はここからスタート。背景bk100、みお立ち絵なし


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほあ……[r]
    シックスナイン……ですか……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    えっちな映画ではカメラアングルの工夫で[r]
    決定的な部位は映さないようにしていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    実際にはどんな体勢・行為なのかを[r]
    実践で教えてみると――[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
    ;スチル表示【01】＿パジャマ差分があるので末尾のみ記載。
    [setSixnineCG cg="01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えぇええぇっ！？[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    やるだけやってからおどろくのも律儀だな……[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine01.ks"  target="sixnine01_1" text="じゃあ次はパンツを脱いで" ]
    [s]

    *sixnine01_1
    ;スチル切替【02】
    [setSixnineCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    できません～！[p]
    [_tb_end_text]

    ;スチル切替【01】
    [setSixnineCG cg="01" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こ、これっ、お互いに舐め……[r]
    そういうことなんですねっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    はい。[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setSixnineCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のお顔に押しつけるなんて、わたし……[r]
    お部屋も明るいし……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    うーん……いい雰囲気からせっかく[r]
    この状況になれたわけだし、中座も悲しい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なにより、このハミ出た肉厚のマンコを前に[r]
    引き下がれるはずもないのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/touch3.mp3"  ]
    ;スチル切替【04】。先生の手や舌の差分がみおの臀部や局部に触れる
    [setSixnineCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あひっ！？　あっ、えぁっ、先生！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    元々みおを気持ちよくするつもりだったし[r]
    パンツがあるならあるで構うまい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    汗と、甘酸っぱい別の香りにさそわれ[r]
    舌を伸ばす。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru1.mp3"  ]
    ;スチル切替【05】
    [setSixnineCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、や、あっ、んん……っ[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setSixnineCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    布ごしなのに、先生の舌がうねうねして[r]
    んんんぅっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    パンツはすぐびしょびしょになった。[r]
    よだれだけのせいではないだろう。[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setSixnineCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    嬌声をかみ殺す息遣いすら艶めかしく、[r]
    くねる腰も逃げたいのか押しつけたいのかあいまいだ。[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setSixnineCG cg="07" time="300"]
    [tb_start_text mode=3 ]
    #
    こちらも、ズボンの中はパンパンに張り詰めて[r]
    先走り汁がにじんでいる。[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setSixnineCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、うぅ……うぅ～……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    もがいていたみおの手が偶然に[r]
    ズボンごしでペニスをつかんだ。[p]
    [_tb_end_text]


    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁ、う、そっか……[r]
    お互いに、でしたもんね……[p]
    [_tb_end_text]

    ;スチル切替【11】
    [setSixnineCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしも、さすさす、[r]
    がんばらないと……っ……[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setSixnineCG cg="12" time="300"]
    [wait time="500"]
    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]
    [wait time="500"]
    ;スチル切替【12】
    [setSixnineCG cg="12" time="300"]
    [wait time="500"]
    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]

    [tb_start_text mode=4 ]
    #
    視覚と嗅覚がみおでいっぱいだ。[r]
    それで張り詰めたペニスをじかに触られたら――[l]
    [_tb_end_text]

    [glink_center storage="Hscene/sixnine01.ks"  target="sixnine01_2" text="みお、そろそろ……！" ]
    [s]
    *sixnine01_2
    ;スチル切替【12】
    [setSixnineCG cg="12" time="300"]
    [wait time="500"]
    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]
    [wait time="500"]
    ;スチル切替【12】
    [setSixnineCG cg="12" time="300"]
    [wait time="500"]
    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0013.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あぇ……？　いいですよ[r]
    よく、わかりませんけど、いいですよぉっ[l]
    [_tb_end_text]

    [glink_center storage="Hscene/sixnine01.ks"  target="sixnine01_3" text="イクっ！" ]
    [s]
    *sixnine01_3
    ;射精演出,BGS停止,スチル切替【07】
    [setSixnineCG cg="07" time="300" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    く、うぅぅん――……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    漏らすようなじっとりとした射精だった。[r]
    ズボンの中がどろどろになっている。[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setSixnineCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふぅ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおはどうだったのだろう？[r]
    軽くイったような気はしたが……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setSixnineCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当のシックスナインじゃないかもですけど[r]
    これでも、すごかったです……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    次があれば、そのときこそ本当のシックスナインが[r]
    できるかもしれないな……[p]
    [_tb_end_text]



    ;シーン回想からの再生の場合、ここで終了。
    ;ゲーム本編から発生した場合、自由行動パートに戻る前にさらに下記の流れへ。
    [if exp="!f.flag_replay" ]
        ;-----------------------
        ;みお性体験加算
        ;　開発％陰核+1,開発％膣+1,

        ;-----------------------
        [eval exp="f.clitoris++" ]
        [eval exp="f.cunt++" ]
        ;★めじるし


        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
            [addTime minutes=60]
            [bgcheck]
            [wait  time="500"  ]
            [chara_hide_all  time="1"  wait="false"  ]
            [free layer="2" name="still" ]
            ;スチル消去
            ;拡大なしの通常ADV画面へ戻る
            [eval exp="f.sixnine.today = true" ]
            [eval exp="f.sixnine.total++" ]

        [maskEnd]
        [messageON]

        ;みおと先生の体力-20
        [calcMioHP HP="-20"]
        [calcHP HP="-20"]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
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
        [tb_start_text mode=3 ]
        #みお
        そうですね[r]
        そうしましょうか[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="raku2.png"]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい、先生[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]
    [endif]

[endmacro]


;以上