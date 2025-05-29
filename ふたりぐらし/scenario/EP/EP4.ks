[macro name="EP4Ev" ]

        ;※話者が娘の台詞が多数あります。すべて、EP3で入力した変数が表示されるようにしてください。
        ;　このEP4のシーンは、EP3の閲覧が解禁条件なので、名前の入力が無いということは考えにくいですが、
        ;　文字列がカラだったり一定以上の文字数で長すぎたり、変なスクリプトが突っ込まれている場合は
        ;　自動的に「娘」と表示する、といったセーフティを仕込んでおいてください。
        [iscript]
        if(sf.babyName === undefined) {
            sf.babyName = '';
        }
        f.musumeName = sf.babyName;
        if (f.musumeName.length > 30 || f.musumeName.length === 0 ) {
            f.musumeName = '娘';
        }
        [endscript]
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        [eval exp="f.flag_replay = true" ]
        [bgChange storage="bk100.jpg" time="1"]
        [setButtonInTalk]
    [maskEnd]
    [messageON]

    ;真っ暗画面からスタート。

    [tb_start_text mode=3 ]
    #
    大人になってからの一年は早い。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうそう感動するようなことも無くなって[r]
    毎日が薄められて流れていく、ということだろうか？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    というか大人になるってどういうことだ？[r]
    単に歳を食うだけでなれるのか？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    昔、そんなことを疑問に思ったりもした。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    結果的には歳をとるほど日々があっという間に[r]
    過ぎるようになったのは事実だったけど……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    一日一日は、薄くなるどころか、[r]
    おそろしく濃密だった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    [emb exp="f.musumeName"]――娘が生まれて、無数の手続きをこなして。[p]
    [_tb_end_text]

    ;★下記の指示に対応してください。
    ;↑「03出産直後」で入力した娘の名前。以降の＠＠も同じ。

    [tb_start_text mode=3 ]
    #
    オムツ替えや粉ミルクの作り方を勉強したり[r]
    実践したり、失敗したり。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    幼稚園に通わせる時期をみおと真剣に話し合ったり。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そんなことをしているうちに、[r]
    気がつけば数年が過ぎていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0001.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ぱぱせんせ～[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0002.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    [emb exp="f.musumeName"]おすなばで、あそんでくる！[p]
    [_tb_end_text]

    [fadeinbgm storage="BGM10_EP.mp3" time="6000" ]

    ;★スチルとしてBGの「sky001.png」を表示。下記の仮スチル表示は廃止
    ;このへんでスチル表示。現状仮スチルの01を表示
    ;[setEP4SunabaCG cg="01"]
    [bgChange storage="sky001.png" time="500"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0003.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    できたら呼ぶから、見てて！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかったよ[r]
    パパとママ、すぐ近くに居るからね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あの赤ちゃんも自分の足で立って歩き、[r]
    舌ったらずに話すようになった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ベンチのとなりのみおと[r]
    微笑みながら目配せする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    歩くのも砂遊びするのもおぼつかないが、[r]
    それでも自分がしたいように振る舞えている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まだ小さなこどもだけど、親だからわかる[r]
    大きな変化が無数にあった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    マンガみたいに膨らんだほっぺも[r]
    すっきりした輪郭になってきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分のつむじにも届きそうになかった短い腕も[r]
    しなやかに伸びている。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby00043.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    これをー、こうしてー[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0005.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    んー……？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0006.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    こうかなっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    砂場でなにを作っているのやら。[r]
    完成するまでは見せたくないようだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0003.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ふだんはおうちにいたがるのに、[r]
    たまに出かけるとすごい凝り性……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0004.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    生まれてすぐの時は先生に似てると[r]
    思ってたんですけど……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0005.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    最近はあの子のこと、かなりわたしに[r]
    似てるんじゃないかなって思えてきて[l]
    [_tb_end_text]

    ;選択肢
    ;　そうだよ、みお似だよ
    ;　あの子なりの個性もある
    [glink_left storage="EP/EP4.ks" target="*EP4Ev1_1" text="そうだよ、みお似だよ"]
    [glink_right storage="EP/EP4.ks" target="*EP4Ev1_2" text="あの子なりの個性もある"]
    [s]

    ;-------------------------------------
    ;選択肢分岐：そうだよ、みお似だよ
    *EP4Ev1_1
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうなのかなぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こどもに似てほしくないところ、[r]
    たくさんあるから困っちゃいます[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そそっかしかったり引っ込み思案だったり……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だから先生から良いところを[r]
    いっぱいもらってほしくて[p]
    [_tb_end_text]


    ;　→共通部
    [jump target="EP4Ev1_3" ]
    ;-------------------------------------
    ;選択肢分岐：あの子なりの個性もある
    *EP4Ev1_2
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふとした時の言葉の使い方とか、[r]
    先生ともわたしとも違ってて[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    幼稚園とかおともだちからも[r]
    いろんな影響を受けてるんですよね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だから、あの子はあの子なんだなぁ[p]
    [_tb_end_text]

    ;　→共通部
    [jump target="EP4Ev1_3" ]
    ;-------------------------------------
    ;共通部
    *EP4Ev1_3
    [tb_start_text mode=3 ]
    #
    でもやっぱり全体的には[r]
    みお寄りだよなぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あはは……やっぱり……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生――おとうさんが大好きで、[r]
    おままごとのお料理にも一生懸命で[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    在宅でできるお仕事なんか見つけたら[r]
    おとなになってもずっと家にいるかもですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それはそれで楽しいかもなぁ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0007.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    できた！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0008.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    まま、ぱぱせんせ[r]
    見ていいよ[p]
    [_tb_end_text]

    ;★スチル切替「01.png」
    [setEP4SunabaCG cg="01"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0017.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    なにを作ったのかなぁ、どれどれ～[l]
    [_tb_end_text]

    ;一択選択肢：おっ、これは……
    [glink_center storage="EP/EP4.ks" target="*EP4Ev1_4" text="おっ、これは……"]
    [s]

    *EP4Ev1_4


    ;★スチル切替「02.png」
    [setEP4SunabaCG cg="02"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    サイコロ……じゃなくて、[r]
    おうちかな？[p]
    [_tb_end_text]


    ;★スチル切替「03.png」
    [setEP4SunabaCG cg="03"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0009.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    そ！[p]
    [_tb_end_text]


    ;★スチル切替「04.png」
    [setEP4SunabaCG cg="04"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0010.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    さんにんのおうち！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    てっきりお城とか作ってるものと[r]
    思っていたが……[p]
    [_tb_end_text]

    ;★スチル切替「05.png」
    [setEP4SunabaCG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0011.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ……？[p]
    [_tb_end_text]

    ;★スチル切替「06.png」
    [setEP4SunabaCG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0012.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    おしろよりおうちがいいよ？[p]
    [_tb_end_text]

    ;★スチル切替「07.png」
    [setEP4SunabaCG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ……[p]
    [_tb_end_text]

    ;★スチル切替「08.png」
    [setEP4SunabaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    大好きなものを作ったんだよね[p]
    [_tb_end_text]


    ;★スチル切替「07.png」
    [setEP4SunabaCG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いつかお城に住みたい、とかじゃなくて[r]
    この子は今のおうちを好きでいてくれてるんですよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なるほど。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この子にとってもあの家が安らげる場所であるなら[r]
    この先もそうあり続けるなら、それは喜ばしいことだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……などとじーんと感慨にふけっているヒマはなく。[p]
    [_tb_end_text]

    ;★スチル切替「02.png」
    [setEP4SunabaCG cg="02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0013.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ぱぱせんせ、ぱぱせんせ、こっちだよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手をとられて砂場の方に引っ張りだされる。[p]
    [_tb_end_text]

    ;★スチル切替「04.png」
    [setEP4SunabaCG cg="04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0014.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    おままごと！[p]
    [_tb_end_text]

    ;★スチル切替「06.png」
    [setEP4SunabaCG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0015.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ぱぱせんせはぱぱせんせの役ね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    砂のテーブルの前に着席させられる。[r]
    日向の砂はパラパラに乾いていて温かい。[p]
    [_tb_end_text]

    ;★スチル切替「09.png」
    [setEP4SunabaCG cg="09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0016.mp3"  ]
    [tb_start_text mode=4 ]
    #&f.musumeName
    わたしがおよめさんなの[p]
    [_tb_end_text]

    ;★スチル切替「01.png」
    [setEP4SunabaCG cg="01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0017.mp3"  ]
    [tb_start_text mode=4 ]
    #&f.musumeName
    だから、ごはんつくる！[p]
    [_tb_end_text]

    ;★スチル切替「10.png」
    [setEP4SunabaCG cg="10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0018.mp3"  ]
    [tb_start_text mode=4 ]
    #&f.musumeName
    なににしますか？[r]
    りくえすとしてください[l]
    [_tb_end_text]

    ;選択肢
    ;　ハンバーグ
    ;　チャーハン
    ;　肉じゃが
    [glink_3_left storage="EP/EP4.ks" target="*EP4Ev1_5" text="ハンバーグ" exp="f.menu = 'hamburg'"]
    [glink_3_center storage="EP/EP4.ks" target="*EP4Ev1_6" text="チャーハン" exp="f.menu = 'chahan'"]
    [glink_3_right storage="EP/EP4.ks" target="*EP4Ev1_7" text="肉じゃが" exp="f.menu = 'nikujaga'"]
    [s]

    ;このあと品目名違いの台詞分岐がちょいちょい続く
    *EP4Ev1_5

    ;★スチル切替「08.png」
    [setEP4SunabaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0019.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ハンバーグ！　あいあい！[p]
    [_tb_end_text]

    [jump target="EP4Ev1_8" ]

    *EP4Ev1_6

    ;★スチル切替「08.png」
    [setEP4SunabaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0020.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    チャーハン！　あいあい！[p]
    [_tb_end_text]

    [jump target="EP4Ev1_8" ]

    *EP4Ev1_7

    ;★スチル切替「08.png」
    [setEP4SunabaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0021.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    肉じゃが！　あいあい！[p]
    [_tb_end_text]

    *EP4Ev1_8    

    [tb_start_text mode=3 ]
    #
    敬礼のようなポーズをして、[r]
    砂の台所で包丁の真似をする[emb exp="f.musumeName"]。[p]
    [_tb_end_text]

    ;★スチル切替「05.png」
    [setEP4SunabaCG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0022.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ぉ～……[p]
    [_tb_end_text]

    [if exp="f.menu == 'hamburg'" ]

        ;★スチル切替「10.png」
        [setEP4SunabaCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0023.mp3"  ]
        [tb_start_text mode=3 ]
        #&f.musumeName
        ママ、ハンバーグってこのあとは！？[p]
        [_tb_end_text]

    [elsif exp="f.menu == 'chahan'" ]

        ;★スチル切替「10.png」
        [setEP4SunabaCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0024.mp3"  ]
        [tb_start_text mode=3 ]
        #&f.musumeName
        ママ、チャーハンってこのあとは！？[p]
        [_tb_end_text]

    [elsif exp="f.menu == 'nikujaga'" ]

        ;★スチル切替「10.png」
        [setEP4SunabaCG cg="10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0025.mp3"  ]
        [tb_start_text mode=3 ]
        #&f.musumeName
        ママ、肉じゃがってこのあとは！？[p]
        [_tb_end_text]

    [endif]

    ;★スチル切替「11.png」
    [setEP4SunabaCG cg="11"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいはい、いっしょに作ろっか[p]
    [_tb_end_text]

    ;★スチル切替「08.png」
    [setEP4SunabaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    愛情いっぱいのお料理、[r]
    パパにた～くさん食べてもらおうね[p]
    [_tb_end_text]

    ;★スチル切替「01.png」
    [setEP4SunabaCG cg="01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0026.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    うん！[p]
    [_tb_end_text]

    ;----------ここまでで75クリックぐらい

    ;★スチルとしてBGの「sky001.png」を表示
    [image layer="3" storage="../bgimage/sky001.png" time="500" name="skyBG" visible="true" ]

    [tb_start_text mode=3 ]
    #
    ……昔、疑問だったもうひとつを思い出す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    大人になるって、どういうことだろう？[r]
    その答えは、まだわからない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だって、砂場のおままごとがこんなに楽しい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおとのふたりぐらしがはじまったばかりのころ、[r]
    おままごとみたいな生活だと形容したことがある。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    感覚的にはそれは今も変わっていなくて。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ただこの三人家族の暮らしに[r]
    笑顔があふれていればそれで良いと思うのだ。[p]
    [_tb_end_text]

    ;★スチル切替「01.png」
    [setEP4SunabaCG cg="01" time="1"]
    [free layer="3" name="skyBG" time="500" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_baby0027.mp3"  ]
    [tb_start_text mode=3 ]
    #&f.musumeName
    ごはん、できた！[p]
    [_tb_end_text]

    ;★スチル切替「06.png」
    [setEP4SunabaCG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    アレンジもたくさんしたんだよね[r]
    きっと美味しいよ[p]
    [_tb_end_text]

    ;★スチル切替「10.png」
    [setEP4SunabaCG cg="10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあ、せーの――[p]
    [_tb_end_text]


    ;★スチル切替「11.png」
    [setEP4SunabaCG cg="11"]
    ;みおと娘
    [playse  volume="100"  time="1000"  buf="12"  storage="vo_scene/FT_m009_scene4_baby0028.mp3"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene4_0026.mp3"  ]
    [tb_start_text mode=4 ]
    #ふたり
    めしあがれ[l]
    [_tb_end_text]

    ;一択選択肢：いただきます
    [glink_center storage="EP/EP4.ks" target="*EP4Ev1_9" text="いただきます"]
    [s]

    *EP4Ev1_9
    [messageInvisible]
    [fadeoutbgm2 time="6000" ]

    [maskStart time="6000"]
        [free layer="2" name="still" ]
        [bgChange storage="bk100.jpg" time="1"]
    ;ゆっくり暗転して終了

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]