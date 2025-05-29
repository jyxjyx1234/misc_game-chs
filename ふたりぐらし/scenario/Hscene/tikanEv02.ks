[macro name="tikanEv02" ]
    [if exp="f.flag_replay" ]
        [bgChange storage="eki00.png"  ]
        [jump target="tikanEv02_05" ]
    [endif]
    ;　上記の通り、朝会話実行からの開始の想定で下記会話

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0001.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生、前に課外授業で[r]
    遠くの駅まで送ってもらいましたよね[l]
    [_tb_end_text]

    ;選択肢
    ;　美術館の課外授業の時だね
    ;　痴漢ごっこをした時だね
    [glink_left storage="Hscene/tikanEv02.ks" target="tikanEv02_1" text="美術館の課外授業の時だね"]
    [glink_right storage="Hscene/tikanEv02.ks" target="tikanEv02_2" text="痴漢ごっこをした時だね"]
    [s]
    ;---------------------------------
    ;【選択肢分岐】美術館の課外授業の時だね
    　
    *tikanEv02_1

    [mioHyoujouSabun hyoujou="happyake3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、あのときは本当に助かりました[p]
    [_tb_end_text]

    [jump storage="Hscene/tikanEv02.ks" target="tikanEv02_3" ]
    ;---------------------------------
    ;【選択肢分岐】痴漢ごっこをした時だね
    *tikanEv02_2

    [mioHyoujouSabun hyoujou="EvKusai2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そ、それもありましたけど[r]
    美術館の課外授業のためだったんですぅ[p]
    [_tb_end_text]

    [jump storage="Hscene/tikanEv02.ks" target="tikanEv02_3" ]
    ;---------------------------------
    ;【共通部】
    *tikanEv02_3

    [mioHyoujouSabun hyoujou="komaru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今日も実はそういう授業の日でして[r]
    よければまたご一緒しませんか？[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0005.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    道はなんとなくわかると思うんですけど、[r]
    前のが先生と遠足みたいで楽しくて[l]
    [_tb_end_text]

    ;選択肢
    ;　ぜひ一緒に行こう
    ;　今日は遠慮しておく
    [glink_left storage="Hscene/tikanEv02.ks" target="tikanEv02_4" text="ぜひ一緒に行こう"]
    [glink_right storage="Hscene/tikanEv02.ks" target="tikanEv02_5" text="今日は遠慮しておく"]
    [s]
    ;--------------------------------
    ;【選択肢分岐】今日は遠慮しておく
    *tikanEv02_5

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
    [jump storage="Hscene/tikanEv02.ks" target="tikanEv02_end" ]
    ;--------------------------------
    ;【選択肢分岐】ぜひ一緒に行こう
    *tikanEv02_4


    [tb_start_text mode=3 ]
    #
    前回同様、仕事のことはどうとでもできる。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happyake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます！[p]
    [_tb_end_text]



    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0010.mp3"  ]
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
    *tikanEv02_05

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



    [mioHyoujou hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0011.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ほあー……[r]
    この電車、いっつも空いてますね[l]
    [_tb_end_text]

    ;選択肢　そうだねえ
    [glink_center storage="Hscene/tikanEv02.ks" target="tikanEv02_6" text="そうだねえ"]
    [s]

    *tikanEv02_6

    [mioHyoujou hyoujou="komaru1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    さすがにもう車窓からの景色に[r]
    新鮮味もないが、前回同様ドア付近に立っている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    もちろんそれは……[p]
    [_tb_end_text]

    ;スチルＡ表示【01】。スカート越しにおしりを揉む
    [setTikanACG cg="01" time="500"]
    [tb_start_text mode=3 ]
    #
    このためだ。[p]
    [_tb_end_text]

    ;スチルＡ切替【04】
    [setTikanACG cg="04"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    当たり前みたいに揉まれてます……[p]
    [_tb_end_text]


    ;スチルＡ切替【05】
    [setTikanACG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    く、ぅ……っん……[p]
    [_tb_end_text]


    ;スチルＡ切替【06】

    [setTikanACG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    見えないからか、先生の指、[r]
    すごく長くて太く感じます……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    振り返ったところで、実際に臀部で[r]
    なにが起きているかまでは視界に入らないのだ。[p]
    [_tb_end_text]

    ;スチルＡ切替【07】
    [setTikanACG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生が痴漢に気をつけろ、みたいに言うから[r]
    なんだか変に考えちゃって[p]
    [_tb_end_text]


    ;スチルＡ切替【06】
    [setTikanACG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0017.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もう先生といっしょじゃないと[r]
    電車に乗れないですぅ[l]
    [_tb_end_text]

    ;選択肢
    ;　怖がらせすぎちゃったか
    ;　じゃあ先生が痴漢をするね
    [glink_left storage="Hscene/tikanEv02.ks" target="tikanEv02_7" text="怖がらせすぎちゃったか"]
    [glink_right storage="Hscene/tikanEv02.ks" target="tikanEv02_8" text="じゃあ先生が痴漢をするね"]
    [s]
    ;---------------------------------
    ;【選択肢分岐】怖がらせすぎちゃったか
    *tikanEv02_7

    ;スチルＡ切替【04】
    [setTikanACG cg="04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もともと電車はめったに乗らないので[r]
    困ってはないんですが[p]
    [_tb_end_text]

    ;スチルＡ切替【07】
    [setTikanACG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    知らないひとのことを疑って過ごすのも[r]
    やりたくないですし……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump storage="Hscene/tikanEv02.ks" target="tikanEv02_9" ]
    ;---------------------------------
    ;【選択肢分岐】じゃあ先生が痴漢をするね
    *tikanEv02_8

    ;スチルＡ切替【07】
    [setTikanACG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふつうにいっしょに[r]
    乗っててくれたらいいんですけども……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump storage="Hscene/tikanEv02.ks" target="tikanEv02_9" ]
    ;---------------------------------
    ;【共通部】
    *tikanEv02_9


    [tb_start_text mode=3 ]
    #
    そもそもこんなミニスカートで[r]
    美味そうなナマ足を出しているのが問題だ。[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    スカートごしでも触ってくれと言わんばかりの[r]
    尻の丸みが男を誘惑している。[p]
    [_tb_end_text]


    ;スチルＡ切替【05】
    [setTikanACG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0021.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生、以外の人にこんな触らせ方なんか[r]
    させません……っ、んやぁ、くにくにしないでぇ……[l]
    [_tb_end_text]

    ;一択選択肢　甘いぞ、みお
    [glink_center storage="Hscene/tikanEv02.ks" target="tikanEv02_10" text="甘いぞ、みお"]
    [s]

    *tikanEv02_10
    [tb_start_text mode=3 ]
    #
    本当の痴漢はこんなわかりやすく[r]
    行為をはじめては来ない。[p]
    [_tb_end_text]


    ;スチルＡ切替【07】
    [setTikanACG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁ、ぅぅ……なにを言って……[p]
    [_tb_end_text]

    ;スチルＡ切替【16】。手オフ、勃起したズボンの前をみおのおしりに押しつける。
    [setTikanACG cg="16"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0023.mp3"  ]

    [tb_start_text mode=3 ]
    #みお
    熱……っ[p]
    [_tb_end_text]

    ;スチルＡ切替【17】

    [setTikanACG cg="17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こ、これ……おち……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    たとえば満員電車で[r]
    股間が押しつけられたとして。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    すし詰めでぎゅうぎゅうの中、[r]
    不可抗力でこうなっているかもしれない。[p]
    [_tb_end_text]


    ;スチルＡ切替【18】
    [setTikanACG cg="18"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、んっ……たし、かに……？[p]
    [_tb_end_text]


    ;スチルＡ切替【17】
    [setTikanACG cg="17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、おしりの谷間にカタいのが[r]
    ぐりぐりってぇ……ふぁぁ……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    故意かどうか測りかねているうちに[r]
    痴漢がどんどんと図に乗って来るだろう。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    抵抗できない子と思われたが最後――[p]
    [_tb_end_text]

    ;スチルＡ切替【19】。スカートめくり、下着アリのおしりにナマチンポをぐりぐり
    [setTikanACG cg="19"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、きゃあっ……そ、そんなことっ[p]
    [_tb_end_text]

    ;スチルＡ切替【20】
    [setTikanACG cg="20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなことされたら、叫んで[r]
    まわりに助けてもら――んむぅっ！？[p]
    [_tb_end_text]

    ;スチル切替、スチルとしてbk100
    [setBK time="300"]
    [tb_start_text mode=3 ]
    #
    みおの口をおさえる。もちろん、[r]
    “ごっこ”の延長とわかる強さで。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そしてささやく。[r]
    ――これが本当の満員電車だったなら。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    小柄なみおは周囲の人垣に埋もれてしまうのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こうやって押さえつけられたら、[r]
    なにをされても誰にも気づいてもらえない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    まわりを囲む大人たちが全員グルということもありえる。[r]
    電車の中なのに、密室が作り出されてしまう。[p]
    [_tb_end_text]


    ;スチルＡ切替【20】
    [setTikanACG cg="20" time="1"]
    [deleteBK time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うぁぁ……そんな、そんなふうにされたら、[r]
    わたし……うぅぁ……[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    やわらかな尻肉は、穴もないのに[r]
    ペニスを受け入れるようにやさしくへこむ。[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    ガマン汁を擦りつけながら腰を振る。[p]
    [_tb_end_text]


    ;スチルＡ切替【19】
    [setTikanACG cg="19"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちん……どんどん熱く、カタく……[r]
    すご、ぃ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    当然、痴漢はあってはならない犯罪行為だ。[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    今しているのはコスプレ遊びにも似た[r]
    合意の上のシチュエーションプレイ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおは今、“痴漢ごっこ”として[r]
    電車の中で己の痴態をひた隠しにしている。[p]
    [_tb_end_text]



    ;スチルＡ切替【20】
    [setTikanACG cg="20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    逃げられ、ない……このまま、わたし、[r]
    んっ、先生にされるがままで……くぁぁ……[p]
    [_tb_end_text]

    [playse storage="se/train_wind.mp3" buf="1"]

    [tb_start_text mode=3 ]
    #
    件の急カーブで電車が大きく揺れる。[r]
    その勢いのまま、みおをドアに押しつけた。[p]
    [_tb_end_text]



;★スチルB切替【01_01.png】スマタを01_01 / 挿入を02_01　特別
    [setTikanBCG cg="01_01"]
    [free layer="2" name="tikanA20" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やあぁぁぁっ[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    みおはガラスに両手をつき、[r]
    こちらに尻を突き出している。[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    いわゆる立ちバックの体勢だ。[r]
    細い腰をつかんで、そのまま素股をはじめる。[p]
    [_tb_end_text]

;★スチルB切替【01_02.png】
    [setTikanBCG cg="01_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁっ！？[p]
    [_tb_end_text]


;★テキスト変更してます
    [tb_start_text mode=3 ]
    #
    押しつけた際の勢いで胸も股間も[r]
　　すっかりはだけてしまっていた。[p]
    [_tb_end_text]


;★【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0" time="6000" storage="BGS/piston1.mp3" ]
;★テキスト変更してます
    [tb_start_text mode=3 ]
    #
    みおの秘裂を[r]
    燃えるような怒張でなぞりあげる。[p]
    [_tb_end_text]


;★スチルB切替【01_03.png】
    [setTikanBCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんっ、んやあぁっ[p]
    [_tb_end_text]

;★スチルB切替【01_02.png】
    [setTikanBCG cg="01_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせ、はげしっ、あはぁっ……んっ、ううぅ[p]
    [_tb_end_text]

;★スチルB切替【01_04.png】
    [setTikanBCG cg="01_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    外から見えちゃう、見えちゃうからぁ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    構うものか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    電車の中で制服美少女を犯すという状況、[r]
    すでに興奮は引き下がれない域に達している。[p]
    [_tb_end_text]

;★スチルB切替【01_02.png】
    [setTikanBCG cg="01_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぅぅぅ～っ、はいっちゃう、[r]
    はいっちゃ……うっ、うあぁぁ[p]
    [_tb_end_text]


;★テキスト変更してます
    [tb_start_text mode=3 ]
    #
    そのまま犯すつもりで腰を突き、[r]
    亀頭が布地で滑って陰核を叩いて戻る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そんな、レイプの出来損ないの素股で[r]
    みおの股間はじゅくじゅくに熟れていく。[p]
    [_tb_end_text]


;★【BGS】piston2.mp3,time6000で再生

    [fadeinse buf="0" time="6000" storage="BGS/piston2fast.mp3" ]

;★スチルB切替【01_03.png】
    [setTikanBCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……もうっ、だめ……っ[p]
    [_tb_end_text]

;★スチルB切替【01_04.png】
    [setTikanBCG cg="01_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0039.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    駅、ついちゃう、みつかっちゃ――うふぅぅっ[l]
    [_tb_end_text]

    ;一択選択肢　みんなに犯されてるところ見られたいんだろ？
    [glink_center storage="Hscene/tikanEv02.ks" target="tikanEv02_11" text="みんなに犯されてるところ見られたいんだろ？"]
    [s]

    *tikanEv02_11

;★スチルB切替【01_01.png】
    [setTikanBCG cg="01_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0040.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ち、ちがっ、わたしそんな子じゃっ[l]
    [_tb_end_text]

    ;一択選択肢　だったらどうする！？
    [glink_center storage="Hscene/tikanEv02.ks" target="tikanEv02_12" text="だったらどうする！？"]
    [s]

    *tikanEv02_12

;★スチルB切替【01_02.png】
    [setTikanBCG cg="01_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はやく、はやくイってくださいっ[p]
    [_tb_end_text]

;★スチルB切替【01_05.png】
    [setTikanBCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お願いしますっ、駅に着く前に射精してっ[p]
    [_tb_end_text]

;★スチルB切替【01_06.png】
    [setTikanBCG cg="01_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0043.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    スカートの中ぐちゃぐちゃにしていいから[r]
    射精してぇぇっ[l]
    [_tb_end_text]

    ;一択選択肢　――ッ！！
    [glink_center storage="Hscene/tikanEv02.ks" target="tikanEv02_13" text="――ッ！！"]
    [s]

    *tikanEv02_13


;★射精演出で、スチルB切替【01_07.png】、BGS停止
    [stopse buf="0" ]
    [setTikanBCG cg="01_07" syasei="true"]
    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんんぅぅぅぅっ……！！[p]
    [_tb_end_text]


;★スチルB切替【01_08.png】
    [setTikanBCG cg="01_08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁぅ……どぷどぷ出てる……[r]
    スカートいっぱいに先生のが……[p]
    [_tb_end_text]


;★スチルB切替【01_09.png】 
    [setTikanBCG cg="01_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    痴漢の先生に……まっしろに染められちゃいました……[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="still" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
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
    [bgChange time="0"  method="crossfade"  storage="eki01.jpg"  ]
    [wait  time="500"  ]
    [setTime hours=11 minutes=0]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]



    [tb_start_text mode=3 ]
    #
    その後は無事に駅を抜け、[r]
    みおを美術館まで送り届けたのだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    もちろんみおは美術館のトイレに[r]
    身支度のため駆け込んでいったのだが。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    学友に行為がバレないかどうか赤い顔で過ごす[r]
    みおを想像しながら、自分も仕事に向かうことにした。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    次があれば、今度は最後まで――……[p]
    [_tb_end_text]

    ;シーン回想の場合、ここで終了
    [if exp="!f.flag_replay" ]

        ;みお体力-20（先生体力は射精時に減少）
        [calcMioHP HP="-20"]
        [maskStart]
            [chara_hide_all time="1" ]
            [eval exp="f.tikanEv.playToday = true" ]
            [eval exp="f.tikanEv.today = true" ]
            [eval exp="f.tikanEv.total = 2" ]
        ;暗転し、暗転開けで午後のお仕事演出開始。
        ;昼のお仕事中演出のみおドットをstydu33で固定
            [setreplay name="tikanEv" storage="replay_select.ks" target="tikan_select"]
    [endif]

    *tikanEv02_end
    [eval exp="f.tikanEv.lastDay = f.day" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上




[endmacro]