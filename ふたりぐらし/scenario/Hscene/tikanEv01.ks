[macro name="tikanEv01" ]

    ;朝会話から発生、ここから
    [if exp="f.flag_replay" ]
        [bgcheck bgm="false" time="1"]
        [maskEnd]
    [endif]
    ;シーン回想の場合、ここから
    [messageON]
    [tb_start_text mode=3 ]
    #
    ――みおがどうも困り顔でうめいている。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="tohoho.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0149.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    うーんと……[l]
    [_tb_end_text]

    ;一択選択肢　どうかした？
    [glink_center storage="Hscene/tikanEv01.ks" target="tikanEv01_1" text="どうかした？" ]
    [s]
    *tikanEv01_1

    [mioHyoujouSabun hyoujou="normal3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、実は今日の学校は課外授業で、[r]
    ちょっと遠出をしないといけないんです[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それで、そのう……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    美術館に行くんですが、最寄り駅が[r]
    はじめていく場所で道とかが不安で……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生がそのあたりご存知だったら[r]
    道順とか教わりたくて[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――なるほど。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    その駅というのも地元では[r]
    迷いやすいことで有名な難所だ。[l]
    [_tb_end_text]

    ;選択肢
    ;　連れて行ってあげるよ
    ;　偶然、自分も近くに用事が……
    [glink_left storage="Hscene/tikanEv01.ks" target="tikanEv01_2" text="連れて行ってあげるよ" ]
    [glink_right storage="Hscene/tikanEv01.ks" target="tikanEv01_3" text="偶然、自分も近くに用事が……" ]
    [s]

    *tikanEv01_2
    ;【選択肢分岐】連れて行ってあげるよ

    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、いいんですか[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも先生のお仕事とかは……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    近くに用事を作ることはできるから[r]
    仕事とみおの案内は充分両立可能なのだ。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="kira1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほぁ……[r]
    お仕事上手ですてきです……[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump target="tikanEv01_4" ]
    ;----------------------------
    ;【選択肢分岐】偶然、自分も近くに用事が……
    *tikanEv01_3

    [mioHyoujouSabun hyoujou="kira2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、本当ですか！？　すごい偶然！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当に偶然です？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まあ、こちらの仕事もどうとでもなる。[r]
    ふだん真面目に出勤してるから。[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump target="tikanEv01_4" ]
    ;----------------------------
    ;【共通部】
    *tikanEv01_4

    [mioHyoujouSabun hyoujou="fuanaketojime4tear.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そこまでお願いするわけにはいかないかもですけど、[r]
    あの駅すっごく迷うって聞いてて……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあ、いっしょに行ってもらって[r]
    いいですか？　お願いします[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    もちろん、とうなずくのだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    帰りは友達といっしょらしいから[r]
    行きだけ世話すればいいわけだし。[p]
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
    [addTime minutes="60"]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;BGSとして、train.mp3　を再生。段階によってはピストン音BGSも流すかもしれないので、
    ;train.mp3再生は専用チャンネルを使うか、いっそBGM枠としての再生がよいかと思います。
    [playbgm storage="../sound/BGS/train.mp3"]

    [tb_start_text mode=3 ]
    #
    ということで電車にゆられている。[p]
    [_tb_end_text]


    [mioHyoujou hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    思ってたより遠いんですね[r]
    あんまり見ない景色です……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    聞けば美術の科目で、課外授業として[r]
    一日美術館で過ごさせることがあるそうで。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    変わった教師がいるのかもしれないが、[r]
    おもしろそうな授業だとも思う。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、先生あそこあそこ[r]
    かわいい建物がありますよ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    時間帯も行き先も通勤ラッシュとはズレていて、[r]
    乗り合わせた車両は他に誰もいなかった。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happy1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生と遠足してるみたいで楽しいです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    座り放題ではあるが、なんとなく[r]
    みおとふたりドア付近に立って車窓を眺めている。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="normalake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    田園風景を眺めながらの[r]
    自然な無言の時間も気まずくはなくて。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    カタタン、カタタンという静かな電車の走行音が[r]
    なんだか牧歌的な気持ちにもさせてくれる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――と、いうところで。[p]
    [_tb_end_text]

    [playse storage="se/train_wind.mp3" buf="1"]

    [tb_start_text mode=3 ]
    #
    線路が突然の急カーブにさしかかった。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0020.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ひゃあっ[l]
    [_tb_end_text]

    ;スチルＡ表示【01】
    ;女性を背後から見上げるような盗撮っぽいアングル。
    ;男性の手がスカートごしにおしりをわしづかみにしている。
    [setTikanACG cg="01" time="500"]
    ;選択肢
    ;　かなり揺れたね
    ;　大丈夫、みお？
    [glink_left storage="Hscene/tikanEv01.ks" target="tikanEv01_5" text="かなり揺れたね" ]
    [glink_right storage="Hscene/tikanEv01.ks" target="tikanEv01_6" text="大丈夫、みお？" ]
    [s]

    ;---------------------
    ;【選択肢分岐】かなり揺れたね
    *tikanEv01_5

    ;スチルＡ切替【03】
    [setTikanACG cg="03" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はい[p]
    [_tb_end_text]


    ;スチルＡ切替【02】
    [setTikanACG cg="02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    支えてくれてありがとう、ございました……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="tikanEv01_7" ]
    ;---------------------
    ;【選択肢分岐】大丈夫、みお？
    *tikanEv01_6
    ;スチルＡ切替【02】
    [setTikanACG cg="02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だ、だいじょうぶです[p]
    [_tb_end_text]

    ;スチルＡ切替【03】
    [setTikanACG cg="03" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    けど、あの、その……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="tikanEv01_7" ]
    ;---------------------
    ;【共通部】
    *tikanEv01_7
    ;スチルＡ切替【01】
    [setTikanACG cg="01" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それで、えぇと、先生の手が……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うん。[r]
    みおのおしりに触れてしまっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まだ電車がそこそこ揺れているので、[r]
    素知らぬふりで支えるふりを続行する。[p]
    [_tb_end_text]

    ;スチルＡ切替【04】
    [setTikanACG cg="04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぅ……んんぅ……[p]
    [_tb_end_text]

    ;スチルＡ切替【05】

    [setTikanACG cg="05" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    揺れのおかげで尻肉の方が自分から[r]
    手や指の間にみっちり密着してくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    制服姿の美少女のおしりのやわらかさと[r]
    無遠慮にそれをまさぐる背徳感。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分の頭のどこかで[r]
    スイッチが切り替わったのがわかった。[p]
    [_tb_end_text]

    ;スチルＡ切替【06】
    [setTikanACG cg="06" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0028.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    せん、せぇ……これぇ、[r]
    だれかに見られたら……[l]
    [_tb_end_text]

    ;一択選択肢　痴漢だね
    [glink_center storage="Hscene/tikanEv01.ks" target="tikanEv01_8" text="痴漢だね" ]
    [s]
    *tikanEv01_8
    ;スチルＡ切替【07】
    [setTikanACG cg="07" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みか
    ちか……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    はっきり言葉にすることで[r]
    みおの羞恥も燃え上がった。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    後ろから見える耳まで真っ赤になっている。[l]
    [_tb_end_text]

    ;一択選択肢　されたこと、ある？
    [glink_center storage="Hscene/tikanEv01.ks" target="tikanEv01_9" text="されたこと、ある？" ]
    [s]
    *tikanEv01_9
    ;スチルＡ切替【05】
    [setTikanACG cg="05" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ないですよぅ、んんっ[r]
    こんなの、先生がはじめて……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    元は全寮制だし制服で電車に乗ることも[r]
    まあ、無かったか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とはいえ、いつどうなるかわかったものではない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおを守るためにも、痴漢とはいかなるものかを[r]
    今教えこまなくてはならないだろう。[p]
    [_tb_end_text]

    ;スチルＡ切替【08】スカートをまくりあげて、パンツごしにおしりをわしづかみにしている状態。
    [setTikanACG cg="08" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    布を一枚乗り越えて、下着越しの臀部を[r]
    揉みしだく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    スカートの中で蒸された熱気が[r]
    周囲に甘く発散されるようだった。[p]
    [_tb_end_text]

    ;スチルＡ切替【09】
    [setTikanACG cg="09" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0032.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    んっ、んふぅぅ……っ、んん……[l]
    [_tb_end_text]

    ;選択肢
    ;　痴漢なんだよ、抵抗しないと
    ;　痴漢されて感じてるの？
    [glink_left storage="Hscene/tikanEv01.ks" target="tikanEv01_10" text="痴漢なんだよ、抵抗しないと"]
    [glink_right storage="Hscene/tikanEv01.ks" target="tikanEv01_11" text="痴漢されて感じてるの？"]
    [s]
    ;------------------------------------
    ;【選択肢分岐】痴漢なんだよ、抵抗しないと
    *tikanEv01_10
    ;スチルＡ切替【10】
    [setTikanACG cg="10" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だってぇ、せんせい、だからぁ……っ[p]
    [_tb_end_text]

    ;スチルＡ切替【09】
    [setTikanACG cg="09" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひどいことはきっとしない、はず……[r]
    んんぅ、おしりちぎれちゃうぅぅっ[p]
    [_tb_end_text]

    ;スチルＡ切替【08】
    [setTikanACG cg="08" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当のちかんさんだったら、こんなの[r]
    こわくてなにもできな……っ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="tikanEv01_12" ]
    :------------------------------------
    ;【選択肢分岐】痴漢されて感じてるの？
    *tikanEv01_11
    ;スチルＡ切替【09】
    [setTikanACG cg="09" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わから……な……っ……[p]
    [_tb_end_text]

    ;スチルＡ切替【10】
    [setTikanACG cg="10" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たくさん、どきどきはしてて、[r]
    それがなんなのかまでは[p]
    [_tb_end_text]

    ;スチルＡ切替【08】
    [setTikanACG cg="08" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でもおまたが熱くて、触られたところが[r]
    じんじんって――んぅぅぅっ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="tikanEv01_12" ]
    ;------------------------------------
    ;【共通部】
    *tikanEv01_12
    ;スチル切替：手がパンツの中へ
    
    [tb_start_text mode=3 ]
    #
    腰をくねらせる形ばかりの抵抗は、[r]
    慣れてくると御しやすい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とうとう、下着の中にまで[r]
    侵入することができてしまった。[p]
    [_tb_end_text]


    ;スチルＡ切替【11】
    [setTikanACG cg="11" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    尻の谷間を越え、股間の亀裂を目指す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    くちゅりと隠しようもない水音がひびいた。[p]
    [_tb_end_text]


    ;スチルＡ切替【12】
    [setTikanACG cg="12" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ほとんど腰砕けになったみおは[r]
    手すりにもたれ、されるがままだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぴっちり閉じた秘裂をくすぐると[r]
    すぐさまほころび、ヨダレを溢れさせる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    愛液はもうふとももまで垂れ、[r]
    こちらの袖すらびしょびしょに汚している。[p]
    [_tb_end_text]

    ;スチルＡ切替【13】
    [setTikanACG cg="13" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、信じて……[p]
    [_tb_end_text]

    ;スチルＡ切替【14】
    [setTikanACG cg="14" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、ちかんさんになにかされて[r]
    濡らしちゃうような子じゃないんです[p]
    [_tb_end_text]

    ;スチルＡ切替【12】
    [setTikanACG cg="12" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これ……ほんとのちかんじゃないから、[r]
    先生が相手だからでぇ……ふっ、ふぅぅん……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうだっとしても、こんな状況で[r]
    ヨガるなんてとんだ変態じゃないか。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    指先の感覚だけで、尖りきったクリトリスの[r]
    ヒクつきが感じとれる。[l]
    [_tb_end_text]

    ;一択選択肢　叫ばないようにね
    [glink_center storage="Hscene/tikanEv01.ks" target="tikanEv01_13" text="叫ばないようにね" ]
    [s]
    *tikanEv01_13
    ;スチルＡ切替【13】
    [setTikanACG cg="13" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え――？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぎりり、と物欲しげなクリトリスを[r]
    ひねりつぶした。[p]
    [_tb_end_text]

    ;スチルＡ切替【15】
    [setTikanACG cg="15" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    き――ァ――……っ！？[p]
    [_tb_end_text]

    ;みお絶頂表現としてのピンクフラッシュ
    ;スチルＡ切替【11】
    [setTikanACG cg="11" zettyou="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、～～……っ！！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    声なき絶叫の中でみおはガクガクと[r]
    痙攣しながらクリアクメをキメるのだった。[p]
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
    [bgChange time="0"  method="crossfade"  storage="eki01.jpg"  ]
    [setTime hours=11 minutes=0]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [tb_start_text mode=3 ]
    #
    その後、ふらつくみおを支えながら[r]
    駅を出たところで学友らしき一団に出くわした。[p]
    [_tb_end_text]

    [mioHyoujou hyoujou="okoru1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あの……[r]
    それじゃあここでだいじょうぶ、なので[p]
    [_tb_end_text]


    [mioHyoujou hyoujou="rakuake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene5_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとう、ございました[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手を振り別れるころには[r]
    しゃっきりしていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あれならもう大丈夫だろう、と思いつつ、[r]
    自分の用事をこなしながら仕事に向かうのだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……また、こんな授業のお誘いがあるだろうか？[r]
    その時を楽しみに待つとしよう。[p]
    [_tb_end_text]



    ;シーン回想の場合、ここで終了
    [if exp="!f.flag_replay" ]
        
        ;みお体力-20
        [calcMioHP HP="-20"]
        ;みお性経験加算
        ;　露出調教+1、開発度陰核+1、絶頂数陰核+1
        [eval exp="f.masochism++" ]
        [eval exp="f.clitoris++" ]
        [eval exp="f.clitorisTotalOrgasm++" ]
        [maskStart]
            [chara_hide_all time="1" ]
            [eval exp="f.tikanEv.playToday = true" ]
            [eval exp="f.tikanEv.today = true" ]
            [eval exp="f.tikanEv.total = 1" ]
            [eval exp="f.tikanEv.lastDay = f.day" ]
            [setreplay name="tikanEv" storage="replay_select.ks" target="tikan_select"]

            ;暗転し、暗転開けで午後のお仕事演出開始。
            ;このときのみおのドットアニメを「study_33.gif」で固定
    [endif]
[endmacro]