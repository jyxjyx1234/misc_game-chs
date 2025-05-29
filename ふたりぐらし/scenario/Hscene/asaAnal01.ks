[macro name="asaAnalEv01" ]
    *asaAnalEv01_1
    [if exp="f.flag_replay" ]
        [bgChange  time="1"  method="crossfade"  storage="white100.jpg"  ]
        [maskEnd]
    [endif]
    [setreplay storage="replay_select.ks" target="asaAnal_select" name="asaAnalEv001" ]
    [setBK]
    [messageON]

    [tb_start_text mode=3 ]
    #
    目を開けると、真っ暗だった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そして股間の方はスースーした涼しさと、[r]
    湿った熱さを同時に感じる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    えっ、なになに、こわい。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅ、ちゅるる……ん～……[r]
    るろろっ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0002.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――……あ、先生[r]
    起きたみたいですね[l]
    [_tb_end_text]

    ;選択肢
    ;　おはよう、みお
    ;　なにがどうなっていますか？
    [glink_left storage="Hscene/asaAnal01.ks" target="asaAnalEv01_2" text="おはよう、みお" ]
    [glink_right storage="Hscene/asaAnal01.ks" target="asaAnalEv01_3" text="なにがどうなっていますか？" ]
    [s]
    ;-----------------------------------
    ;【選択肢分岐】おはよう、みお
    *asaAnalEv01_2
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んぷぁ……おはようございます[p]
    [_tb_end_text]



    ;　つぎの共通部へ
    [jump target="asaAnalEv01_4" ]
    ;-----------------------------------
    ;【選択肢分岐】なにがどうなっていますか？
    *asaAnalEv01_3
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んぷぁ……ふふ……[r]
    どうなってると思います？[p]
    [_tb_end_text]



    ;　つぎの共通部へ
    [jump target="asaAnalEv01_4" ]
    ;-----------------------------------
    ;共通部
    *asaAnalEv01_4
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生はいま目隠しされて、[r]
    おしりの穴をわたしに舐められています♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なんてことだ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そんなプレイ、頼んだ覚えはないぞ！？[p]
    [_tb_end_text]

    ;-----------------------------------
    ;このシーン初回時
    [if exp="f.asaAnalEv.total == 0" ]
        *asaAnalEv01_4_1

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい……でも、先生がおしりの気持ちよさを[r]
        わたしに教えてくれたから[p]
        [_tb_end_text]

        ;初回時
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お返しに……と、思いまして♡[p]
        [_tb_end_text]


        ;次の共通部へ

    [else]
        *asaAnalEv01_4_2
        ;-----------------------------------
        ;このシーン２回目以降
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし、おしりで悶えるかわいい先生が[r]
        また見たくなっちゃったんです♡[p]
        [_tb_end_text]

        ;次の共通部へ
    [endif]
    ;--------------------------------

    ;共通部
    *asaAnalEv01_4_3
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だ・か・らぁ――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぅぅ～……っ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    熱い息が肛門に吹きかけられ、[r]
    びくりと背骨ごと腰が跳ねてしまう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うっ、うぉぉ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    びくびく、しちゃいますよね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0012.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    “前”と似てるようでぜんぜん違う“後ろ”の感覚、[r]
    先生も楽しみましょう？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    話しながら小さな爪の先がくるくると[r]
    肛門の外側で円を描く。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    やがてそれは肛門のシワをひっかくようにして[r]
    中心に近づき――[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    れぇぷ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    出し抜けに、燃えるように熱い舌がアヌスを貫いた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……ッ！！！[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんんっ、逃げないで[r]
    こわくないですよぉ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅっ、ちゅるるっ、んふふ……[r]
    おなかの奥、震えちゃいますよねぇ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    切なくて逃げたくなるのにやめてほしくなくて[r]
    ほら、このあたり、レロレロされたら……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    噛み殺したつもりの、情けない悲鳴が[r]
    歯の隙間から染み出ていく。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ――先生、女の子みたいに鳴いちゃったぁ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    姿が見えないぶん、声や手つき、[r]
    舌のねぶりに込められた意図や感情が伝わってくる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    見えなくてもわかる。今のみおが、[r]
    どんないやらしい笑顔を浮かべているのかが。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしり、熱いですよね[r]
    むずむずしますよね[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちから込めて閉めてるつもりなのに、[r]
    どうしてかだらしなくユルんじゃって[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    真っ赤な内臓の色が見られちゃって[r]
    死ぬほど恥ずかしいのに、それがうれしくて[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    自身のアナル開発の思い出を重ね、[r]
    みおもまたこの状況に感情移入し、感じている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    奇妙な連帯感がふたりの間に存在していた。[p]
    [_tb_end_text]

    [if exp="f.asaAnalEv.total == 0" ]
        ;--------------
        ;初回時
        *asaAnalEv01_4_4

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0022.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしりとおちんちんの気持ちいいのって[r]
        いっしょにはならないんですかね……？[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしりはずぅっと気持ちよさそうなのに、[r]
        おちんちんは膨らんだりしぼんだり――[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0024.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おちんちんもずっと握っててあげたら[r]
        どっちもずっと気持ちいいですよね[p]
        [_tb_end_text]


        ;次の共通部へ
        
    [else]
    *asaAnalEv01_4_5
        ;--------------
        ;２回め以降


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0023.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしりはずぅっと気持ちよさそうなのに、[r]
        おちんちんは膨らんだりしぼんだり――[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0025.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱり先生が好きなアレじゃないとですね[p]
        [_tb_end_text]


        ;次の共通部へ

    [endif]
    ;--------------
    ;共通部
    *asaAnalEv01_4_6
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それ、じゃあ、と♪[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それ、は――と抗う間もなく、[r]
    アナル舐め手コキの状態になってしまう。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おひり、なへながらしこしこひゅましょうへ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    アニリングスと同時に話しかけられるものだから、[r]
    ささやきのくすぐったさまでが直腸にひびく。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゅっ、じゅるるっ、んれぁ……んぷっ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちゅ、ちゅるるっ、るろろ[r]
    っぷあぁ……ふふっ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんのさきっぽ、じゅわって[r]
    なにかにじんで来てますよ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    年下の女の子におしり舐められて、[r]
    先生、イキそうなんですか？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    別に縛られたりしてないのに、おしり、[r]
    きもちいだけで手足がへにゃってなっちゃって[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    かわいい先生……[r]
    おねだり、してみてくれますか[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そしたらきもちよく精液、[r]
    どぷどぷって出させてあげます[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0035.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……ね？[l]
    [_tb_end_text]


    ;選択肢
    ;　イ……イきたいぃ……
    ;　……っ
    [glink_left storage="Hscene/asaAnal01.ks" target="asaAnalEv01_5" text="イ……イきたいぃ……"]
    [glink_right storage="Hscene/asaAnal01.ks" target="asaAnalEv01_6" text="……っ" ]
    [s]


    ;-----------------------------
    ;【選択肢分岐】イ……イきたいぃ……
    *asaAnalEv01_5
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    感激したような気配というか、息遣いというか、[r]
    とにかくみおが総毛立つのがわかった。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、わたしも先生のイくところが[r]
    今すぐ見たくなりました♡[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump target="asaAnalEv01_7" ]
    ;-----------------------------
    ;【選択肢分岐】……っ
    *asaAnalEv01_6
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う～ん……[r]
    男性のプライド、みたいな感じでしょうか[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    次こそきちんとおねだりしてほしいところですけど……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    意地っ張りでもかわいいのでよしとします[p]
    [_tb_end_text]



    ;　次の共通部へ
    [jump target="asaAnalEv01_7" ]
    ;-----------------------------
    ;【共通部】
    *asaAnalEv01_7

    ;【BGS】H_TEKOKI.mp3、time6000で再生
    [fadeinse buf="0"  storage="BGS/H_TEKOKI.mp3" time="6000" loop="true" ]
    [tb_start_text mode=3 ]
    #
    みおの両手が竿と玉をやさしく包み、[r]
    舌先が肛門をねぶりながらの手コキがはじまった。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んむっ、んふぁっ、っぷあぁ[r]
    ひこひこ♡　ひ～こひこ♡[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひもひいい？　ひもひいいですよねっ[r]
    あぷぁ、るろぉ……ぐぷぁ、べるぁぁ……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしりの穴、犯されて女の子みたいに[r]
    いやいやおしり振って――先生、かわいい♡[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0045.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もうお射精、がまんできませんよね？[r]
    いいですよぉ、ほら、シコシコ限界まではやくしますよぉっ[l]
    [_tb_end_text]


    ;一択選択肢：イくっ、イっちゃうぅぅっ！
    [glink_center storage="Hscene/asaAnal01.ks" target="asaAnalEv01_8" text="イくっ、イっちゃうぅぅっ！" ]
    [s]
    ;射精演出,BGS停止
    *asaAnalEv01_8
    [stopse buf="0" ]
    [flash type="white"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふはぁ――～～……♡[r]
    はい、どぷどぷ～♡[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    女の子の気持ちになってするお射精、[r]
    どうでしたかぁ？　よかったですよねぇ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せいえきも、こんなにたくさん……[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene4_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んく――……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    視界はいまだ闇の中だというのに、[r]
    目の奥でちかちかまばゆい光が散っていた。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    [if exp="!f.flag_replay" ]


        ;みお体力-20
        [calcMioHP HP="-20" ]
        ;みお性経験加算
        ;みおから迫って+1,キス+1
        [eval exp="f.malerape++" ]
        [eval exp="f.kiss++" ]
        [eval exp="f.firstKiss = addExperience(f.firstKiss,'2040','先生のアナル舐めに初体験を捧げた')" ]

        [eval exp="f.asaAnalEv.today = true"]
        [eval exp="f.asaAnalEv.lastDay = f.day" ]
        [eval exp="f.asaAnalEv.total++" ]
        [setreplay storage="replay_select.ks" target="asaAnal_select" name="asaAnalEv001" ]
        [tb_start_text mode=3 ]
        #
        その後、ぼーっとしている間に[r]
        みおが朝食の支度をしてくれ、食事となった。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        ……みおは、おなかすいてないので、と[r]
        朝食を抜いたのだった。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        さっき出した精液の行方を考えながら[r]
        朝餉をいただくのだった。[p]
        [_tb_end_text]

        [maskStart]
            [deleteBK time="1"]
        
    [endif]
[endmacro]