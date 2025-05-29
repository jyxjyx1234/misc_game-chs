[macro name="tikanEv03" ]

    ;　上記の通り、朝会話実行からの開始の想定で下記会話
    [if exp="f.flag_replay" ]
        [bgChange storage="eki00.png" time="1" ]
        [jump target="tikanEv03_3" ]
    [endif]


    [mioHyoujouSabun hyoujou="komaru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あのう、また課外授業があって[r]
    電車に乗るんですが……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    あれだけ“痴漢ごっこ”をした上での[r]
    この声かけ、これは――[l]
    [_tb_end_text]

    ;選択肢
    ;　ぜひ一緒に行こう
    ;　今日は遠慮しておく
    [glink color="btn_05_black glink_double_left" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_1" text="ぜひ一緒に行こう"]
    [glink color="btn_05_black glink_double_right" size="20"  x="375" y="400"  target="tikanEv03_2" text="今日は遠慮しておく"]
    [s]


    ;--------------------------------
    ;【選択肢分岐】今日は遠慮しておく
    *tikanEv03_2
    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですよね、先生もお仕事とかありますし[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanaketojime4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    急な話ですみませんでした[p]
    [_tb_end_text]
    [mioHyoujouSabun hyoujou="happyake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    迷わないよう、がんばってきますね[p]
    [_tb_end_text]


    ;イベント終了。ふつうに朝会話終了後の出発の流れに合流
    ;この日のお仕事中演出のみおドットは、朝study30,昼study31で固定
    [eval exp="f.tikanEv.cancelToday = true" ]
    [jump target="tikanEv03_end" ]
    ;--------------------------------
    ;【選択肢分岐】ぜひ一緒に行こう
    *tikanEv03_1

    [tb_start_text mode=3 ]
    #
    前回同様、仕事のことはどうとでもできる。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happyake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあさっそく支度してきますね[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [eval exp="f.cloth = f.schoolUniform" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [setTime hours=9 minutes=0]
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
    [bgChange time="0"  method="crossfade"  storage="eki00.png"  ]
    [wait  time="500"  ]
    ;適当に時間経過
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;シーン回想の場合、ここからスタート（BG：eki00.png）
    *tikanEv03_3
    [if exp="f.flag_replay" ]
        [maskEnd]
    [endif]
    [messageON]
    ;BGSとして、train.mp3　を再生。段階によってはピストン音BGSも流すかもしれないので、
    ;train.mp3再生は専用チャンネルを使うか、いっそBGM枠としての再生がよいかと思います。
    [playbgm  volume="100"  loop="true"  storage="../sound/BGS/train.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ということで電車にゆられている。[p]
    [_tb_end_text]

    ;※以降、基本的には周囲にはばかっての小声

    [mioHyoujou hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0007.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……先生[l]
    [_tb_end_text]

    ;一択選択肢　うん
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_4" text="うん"]
    [s]

    *tikanEv03_4

    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0008.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    この前までとおなじ時間帯、[r]
    おなじ電車なんですが……[l]
    [_tb_end_text]

    ;一択選択肢　うん
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_5" text="うん"]
    [s]

    *tikanEv03_5

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0009.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    今日に限ってどうしてこんなに[r]
    混んでるんでしょう？[l]
    [_tb_end_text]

    ;一択選択肢　なんで混んでるんだろうなぁ……
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_6" text="なんで混んでるんだろうなぁ……"]
    [s]

    *tikanEv03_6

    [tb_start_text mode=3 ]
    #
    満員電車というほどではないが、[r]
    それなりに人が多くて騒がしい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    出鼻をくじかれた気分ではあるが――[p]
    [_tb_end_text]

    ;スチル表示Ａ【03】。スカート越しにおしりを揉む
    [setTikanACG cg="03"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ！？[p]
    [_tb_end_text]

    ;スチル切替Ａ【04】
    [setTikanACG cg="04"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちょ……っ、先生、[r]
    ひとがいるんですよ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    やらしいことする気マンマンだったのだ。[r]
    これぐらいの逆境には負けられない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    幸い、音楽家や登山家かという面々の[r]
    巨大な大荷物が死角を作ってくれている。[p]
    [_tb_end_text]

    ;スチル切替Ａ【21】スカートをまくり、下着越しにおしりを揉む
    [setTikanACG cg="21"]

    [tb_start_text mode=3 ]
    #
    手際よく、みおの深くに触れていく。[p]
    [_tb_end_text]


    ;スチル切替Ａ【22】
    [setTikanACG cg="22"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    触る前から濡れていた。[l]
    [_tb_end_text]

    [glink color="btn_05_black glink_double_left" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_7" text="これはなに？"]
    [glink color="btn_05_black glink_double_right" size="20"  x="375" y="400" target="tikanEv03_8" text="期待してた？"]
    [s]

    ;--------------------------
    ;【選択肢】これはなに？
    *tikanEv03_7


    ;スチル切替Ａ【23】
    [setTikanACG cg="23"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そ、その……わ、わたしが……[r]
    わたしのおまたが濡れちゃったもの、です……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="tikanEv03_9" ]
    ;--------------------------
    ;【選択肢】期待してた？ 
    *tikanEv03_8

    ;スチル切替Ａ【21】
    [setTikanACG cg="21"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は……い……[r]
    そう、です……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="tikanEv03_9" ]
    ;--------------------------
    ;【共通部】
    *tikanEv03_9
    [tb_start_text mode=3 ]
    #
    みおもすっかり、この“ごっこ”遊びに
    夢中なのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    人の多さはイレギュラーな事態だが、[r]
    すでに行為のスパイスに変わっている。[p]
    [_tb_end_text]

    ;スチル切替Ａ【24】。スカートめくって下着越しのおしりもみ。
    [setTikanACG cg="24"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ……っくぁ……[r]
    や、ぁぁ……[p]
    [_tb_end_text]

    ;スチル切替Ａ【25】
    [setTikanACG cg="25"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっちな音、立てないでくださいぃ……[r]
    まわりに聞こえちゃ……っ[p]
    [_tb_end_text]

    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんぅぅぅ～っ[p]
    [_tb_end_text]


    ;スチル切替Ａ【24】
    [setTikanACG cg="24"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生どうして黙ってるんですかぁ[r]
    怖いですよぅ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    痴漢は無言でやるものだろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    言葉の代わりに、手マンで答える。[p]
    [_tb_end_text]

    ;スチル切替Ａ【25】
    [setTikanACG cg="25"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、やぁっ[r]
    だめっ、だめですっ、それだめっ[p]
    [_tb_end_text]


    ;スチル切替Ａ【27】
    [setTikanACG cg="27"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イっちゃう、まわりに知らない人が[r]
    いっぱいいるのに、イ――[p]
    [_tb_end_text]


    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……ッ[p]
    [_tb_end_text]

    ;スチル切替Ａ【28】

    [setTikanACG cg="28"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、んっ……く、っひぅぅぅ……っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    痙攣したように腰を震わせ、[r]
    みおは達した。[p]
    [_tb_end_text]

    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……ふぁぁ……[r]
    うっ、うぅぅ……[p]
    [_tb_end_text]

    ;スチル切替Ａ【27】
    [setTikanACG cg="27"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    酸欠、になりそ……[r]
    くらくらするのぉ……[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】。先生のナマペニスをみおのおしりにすりつける。
    [setTikanACG cg="29"]
    [tb_start_text mode=3 ]
    #
    倒れそうな腰をつかみ止め、[r]
    そのままペニスをすりつける。[p]
    [_tb_end_text]

    ;スチル切替Ａ【30】
    [setTikanACG cg="30"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あふぁ……せんせ、すご……[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】
    [setTikanACG cg="29"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなところでおちんちん出して……[r]
    おしりにこすりつけて来て……[p]
    [_tb_end_text]


    ;スチル切替Ａ【31】
    [setTikanACG cg="31"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    誰かに見つかったら“ごっこ”でしたじゃ[r]
    済まないのに……[p]
    [_tb_end_text]


    ;スチル切替Ａ【32】
    [setTikanACG cg="32"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それでもおちんちん、気持ちよくなりたくて[r]
    一生懸命なんですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    肯定のごとく尻ズリをはじめる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    すでにみおの股間は尻まで届く大洪水だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ペニスを押しつければむわっと[r]
    強い性臭が立ち昇る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抽送のつど、びくりと震えるみおの性感も。[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】
    [setTikanACG cg="29"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、んせ……わたし、どきどきで[r]
    ばくはつしそう……[p]
    [_tb_end_text]


    ;スチル切替Ａ【30】
    [setTikanACG cg="30"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あの、いつでもイって、いいですから……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――と、そのときだ。[p]
    [_tb_end_text]

    ;スチル切替、スチルとしてbk100
    [setBK time="500"]
    [tb_start_text mode=3 ]
    #
    乗客のひとりが座席をみつくろうように[r]
    近くを通り過ぎようとしていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    はだけた股間を隠すため、[r]
    ぐぐっと強く密着して通行人をやり過ごす。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ぁぅぅ～……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のが、密着して熱いのが[r]
    おなかの中にあるみたいに感じられて……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、あふぁぁ……あぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    乗客が充分離れていくころには、[r]
    みおの股間は雌の匂いを立ち昇らせていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    スリルと背徳の暗い情欲に[r]
    脳も子宮も焼かれてしまったのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    電車の走行音に紛れそうなみおの声だが、[r]
    続く言葉は予知のようにわかった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今……ここで犯してください……[r]
    痴漢えっち、して欲しいの……[p]
    [_tb_end_text]
    [playse storage="se/train_wind.mp3" buf="1"]
    [tb_start_text mode=3 ]
    #
    揺れるカーブが間近に迫っていた。[r]
    風切り音が耳の中で大きくなる。[p]
    [_tb_end_text]

;★スチルB切替【02_01.png】
    [setTikanBCG cg="02_01" time="1"]
    [deleteBK time="500"]
    [free layer="2" name="tikanA30" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、ぁぁあぁんっ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    揺れたふりを装い、みおをドアに押しつけ[r]
    ペニスをねじこんだ。[p]
    [_tb_end_text]

    ;----------------------
    ;これが処女喪失だった場合、この範囲の記述を実行
    [if exp="f.virgin.image.id == 0" ]
        ;エッチステータスで、過去登録済みの初体験テキストを登録
        *tikanEv03_10


;★スチルB切替【02_03.png】
        [setTikanBCG cg="02_03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        痴漢の先生にわたしのはじめて、[r]
        あげちゃったぁ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        周囲に他人もいる中で[r]
        処女のくせに自分から股を開いて――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおをそんなふうに変えたことに[r]
        震えるほどの歓喜を覚える。[p]
        [_tb_end_text]
        
        [eval exp="f.virgin = addExperience(f.virgin,'2060','混み合う電車で先生の痴漢ペニスを受け入れた')" ]
    [endif]
    ;----------------------
    *tikanEv03_11


;★スチルB切替【02_02.png】
    [setTikanBCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ、っひぁぁ、がたごと、揺れるのがぁ[r]
    おなかの中でおちんちん暴れてぇっ[p]
    [_tb_end_text]

;★【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0" time="6000" storage="BGS/piston1.mp3" ]
    [tb_start_text mode=3 ]
    #
    電車の揺れが押し返すように働き、[r]
    それをまたピストンで圧し潰す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膣の中をペニスが暴れ、縦横無尽かつ[r]
    不規則にみおを蹂躙していく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふたりがかりでみおを串刺しにしているような[r]
    奇妙な感覚だ。[p]
    [_tb_end_text]

;★スチルB切替【02_03.png】
    [setTikanBCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すぐ近くにっ、しらないひと居るのにぃ、[r]
    いけない、ことなのにっ[p]
    [_tb_end_text]

;★スチルB切替【02_04.png】
    [setTikanBCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いけないこと、きもちいいのぉっ[p]
    [_tb_end_text]


;★スチルB切替【02_05.png】
    [setTikanBCG cg="02_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生にいけないこと教えてもらって、[r]
    きもちいいのがまんできなくなってぇ[p]
    [_tb_end_text]


;★【BGS】piston2.mp3,time6000で再生
    
    [fadeinse buf="0" time="6000" storage="BGS/piston2fast.mp3" ]
;★スチルB切替【02_02.png】
    [setTikanBCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すきっ、すきぃっ、先生っ[p]
    [_tb_end_text]

;★スチルB切替【02_04.png】
    [setTikanBCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0045.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もっと先生にめちゃくちゃにされたいのぉっ[l]
    [_tb_end_text]

    ;一択選択肢　お望み通りにしてあげるよ
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_12" text="お望み通りにしてあげるよ"]
    [s]

    *tikanEv03_12

;★スチルB切替【02_01.png】
    [setTikanBCG cg="02_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0046.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    えぁぁ……？[l]
    [_tb_end_text]

    ;一択選択肢　痴漢ザーメン、孕むつもりで受け止めるんだ
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_13" text="痴漢ザーメン、孕むつもりで受け止めるんだ"]
    [s]

    *tikanEv03_13

;★スチルB切替【02_03.png】
    [setTikanBCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……あぁ……♡[p]
    [_tb_end_text]

;★スチルB切替【02_06.png】
    [setTikanBCG cg="02_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい♡　はいぃ♡
    がんばってお精子おむかえしますからっ[p]
    [_tb_end_text]

;★スチルB切替【02_07.png】
    [setTikanBCG cg="02_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0049.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    注いでください、先生の痴漢ザーメン……っ♡[l]
    [_tb_end_text]

    ;一択選択肢　出る……っ！
    [glink color="btn_05_black glink_center" size="20"  x="375" y="400" addlog="true"  target="tikanEv03_14" text="出る……っ！"]
    [s]

    *tikanEv03_14
    ;射精演出,;★スチルB切替【02_08.png】,BGS停止
    [stopse buf="0" ]
    [setTikanBCG cg="02_08" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ――あぁぁ――！！[p]
    [_tb_end_text]

;★スチルB切替【02_09.png】
    [setTikanBCG cg="02_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っくぅぅぅん……♡[p]
    [_tb_end_text]

;★スチルB切替【02_10.png】
    [setTikanBCG cg="02_10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごぉい……[r]
    あふれてるの、わかりますぅ[p]
    [_tb_end_text]

;★スチルB切替【02_11.png】
    [setTikanBCG cg="02_11"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当に痴漢レイプでおかあさんに[r]
    なっちゃいそう……[p]
    [_tb_end_text]

    ;スチル切替　スチルとしてbk100
    [setBK time="500"]

    [tb_start_text mode=3 ]
    #
    おそろしく淫らなことを口走りながら[r]
    みおはへなへなと座り込んでしまった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――電車はちょうど駅に着こうとしていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    気分が悪くなってしまった連れの介抱です、[r]
    という顔をして後のことを誤魔化し、移動する。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [free layer="2" name="still" ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [setTime hours=10 minutes=0]
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
    [deleteBK time="1"]
    [bgChange time="0"  method="crossfade"  storage="eki01.jpg"  ]
    [wait  time="500"  ]
    [setTime hours=11 minutes=0]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    しばし休憩をとってから、みおを課外授業の[r]
    美術館まで送り届けるのだった。[p]
    [_tb_end_text]

    [mioHyoujou hyoujou="komruake6_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ありがとうございました[r]
    えへへ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metoji_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、興奮しすぎて[r]
    おかしなこと言ってたかもですけど……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happyake3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    全部おぼえてるし、全部ほんとうの気持ち、[r]
    だったので[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ええと、それじゃあ、いってきます[p]
    [_tb_end_text]

    [mioLeave]
    [messageON]
    [tb_start_text mode=3 ]
    #
    去り際にそんなことを言っていくみおが[r]
    たまらなく愛らしかった。[p]
    [_tb_end_text]

    ;シーン回想の場合、ここで終了
    [if exp="!f.flag_replay" ]

        ;みお体力-20（先生体力は射精時に減少）
        [calcMioHP HP="-20"]
        [maskStart]
            [chara_hide_all time="1" ]
            [eval exp="f.tikanEv.playToday = true" ]
            [eval exp="f.tikanEv.today = true" ]
            [eval exp="f.tikanEv.total = 3" ]
        ;暗転し、暗転開けで午後のお仕事演出開始。
        ;昼のお仕事中演出のみおドットをstydu32で固定
            [setreplay name="tikanEv" storage="replay_select.ks" target="tikan_select"]
    [endif]

    *tikanEv03_end
    [eval exp="f.tikanEv.lastDay = f.day" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[endmacro]