[macro name="senseiFever01" ]
    ;＜看病してもらう＞
    ;起床直後	平日＆休日　に発生。
    ;「朝だ、起きよう」を送って室内BGを表示した直後に割り込み（みおが出てくる＆BGM再生の前）


    ;※
    ;　・Ev47-48は見落とされないように50日めまでに一通り発生するようにしておきたい。
    ;　　→なので、初回発生時は固定イベントに近い性質のものとなる。
    ;　　→フリーイベントとしてのReもやるかどうか後で検討。今はいったんそういったものナシで。

    ;　・食事シーンはごちそうスチルのおかゆverを用意する構想もあったが、いったん無いものとして進行。


    ;--------------------------------------------------
    [messageON]

    [tb_start_text mode=3 ]
    #
    ……お？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おぉぉ……？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]
    [tb_start_text mode=3 ]
    #
    上半身にちからが入らず、[r]
    起き上がりかけて布団に落ちた。[p]
    [_tb_end_text]

    [bgChange time="1000"  method="crossfade"  storage="sky001.png"  ]

    ;先生体力をオレンジラインぴったりまで減少させる
    [if exp="f.HP >= f.HP_LOW" ]

        [setHP HP="&f.HP_LOW"]

    [endif]
    [tb_start_text mode=3 ]
    #
    ……窓越しの空が青い。[r]
    それ以外のことはうまく考えられない。[p]
    [_tb_end_text]

    ;声だけ、立ち絵なし
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、朝ですよ[p]
    [_tb_end_text]

    ;声だけ、立ち絵なし
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生？[p]
    [_tb_end_text]


    [bgChange time="1000"  method="crossfade"  storage="room_m_o.png"  ]

    [mioHyoujou hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、目は覚めてるんですね[r]
    おはようござ――[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、お顔が真っ赤[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そうなのか。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanaketojime.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おでこも……だいぶ熱いですね[r]
    風邪です[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    風邪なのか。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今日はお仕事お休みしましょう[r]
    お勤め先には連絡しておきますから[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    職場には親戚の子をあずかることは[r]
    伝えてある。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    連絡をみおに任せても[r]
    問題はないだろう。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="komruake6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    身の回りのもの、[r]
    いろいろ用意してきますから[p]
    [_tb_end_text]

    [mioLeave]

    [messageON]
    [tb_start_text mode=3 ]
    #
    てきぱきと看病してくれるみおを[r]
    頼もしいなぁ……と思いつつ、目を閉じた。[p]
    [_tb_end_text]




    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [chara_hide_all  time="1"  wait="false"  ]
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
    [bgChange time="0"  method="crossfade"  storage="room_e_o2.png"  ]
    [wait  time="500"  ]
    [setTime hours=17 minutes=0]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;先生体力回復+15
    [calcHP HP="15"]

    [glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ん……"  _clickable_img=""  target="*s1next"  ]
    [s  ]
    *s1next

    [tb_start_text mode=3 ]
    #
    手近な時計をみると、[r]
    ５時を指していた。[p]
    [_tb_end_text]

    ;みお立ち絵を拡大状態で表示するので、立ち絵表示に合わせて背景もズーム。

    [mioHyoujou hyoujou="happy1.png" wait="false"]
    [CAMERA  layer="0" zoom="1.5" x="32"  y="75" time="1000" wait="false" ]
    [CAMERA  layer="base" zoom="1.5" x="32"  y="75" time="1000" wait="true" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……[r]
    お目覚めですか、先生[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    すぐそばにみおが居た。[r]
    看病の合間に仮眠していた、というふうだ。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0009.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    調子はどうですか？[r]
    顔色はかなりよくなりましたけど……[l]
    [_tb_end_text]



    [glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="24時間寝てた？"  _clickable_img=""  target="*s2_1"  ]
    [glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="みお、学校は？"  _clickable_img=""  target="*s2_2"  ]
    [s  ]

    ;-------------------------------------------
    *s2_1


    ;＞「24時間寝てた？」

    [mioHyoujouSabun hyoujou="komruake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    へ……？[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、５時だからですか[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happyake3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いっぱい寝ると[r]
    感覚おかしくなっちゃいますよね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ５時は５時でも夕方の５時ですよ[p]
    [_tb_end_text]



    [jump  target="*s2next"  ]

    ;-------------------------------------------
    *s2_2

    ;＞「みお、学校は？」

    [mioHyoujouSabun hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それがですね……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生が心配だったので休んじゃいました[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これもサボりになるんでしょうか[r]
    ちょっとドキドキしましたね、えへへ[p]
    [_tb_end_text]


    [jump  target="*s2next"  ]

    ;-------------------------------------------
    *s2next

    ;＞共通部

    [mioHyoujouSabun hyoujou="fuanake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お昼にも先生ちょっと起きて[r]
    スポーツドリンクだけ飲んだんですけど……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    覚えていない。[r]
    もうろうとしていたらしい。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="normal2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    一食抜いちゃってますし[r]
    お腹すいてますよね[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="raku3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おかゆ、いつでも食べられますよ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/onakaguu_sensei01.mp3"  ]
    [tb_start_text mode=3 ]
    #
    見計らったように腹の虫が大鳴きだ。[p]
    [_tb_end_text]

    ;BGM5_relax.mp3　をフェード再生
    [fadeinbgm2 storage="BGM5_relax.mp3" time="6000" ]

    [mioHyoujouSabun hyoujou="happy4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あはは、それじゃあお夕飯にしましょうか[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    ;いちど暗転を挟むが、背景や立ち絵はそのまま
    [wait  time="500"  ]
    [setTime hours=17 minutes=30]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;一択選択肢「いただきます」
    [glink_center storage="nonHscene/senseiFever01.ks" target="*s2next2" text="いただきます"  ]
    [s]

    *s2next2

    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]


    [tb_start_text mode=3 ]
    #
    ……！[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べられそうですか？[r]
    むりしなくても[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="fuanake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの、先生……？[p]
    [_tb_end_text]


    ;先生体力回復+20
    [calcHP HP="20"]

    [tb_start_text mode=3 ]
    #
    おいしいよ、と返事をする。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おいしいというか、ありがたい。[r]
    うれしい。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うれしい……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ひとりぐらしの時は[r]
    動けるようになるまで寝込むだけだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    だれかが家事をやってくれたり、[r]
    まして食事をつくってくれるなんて……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それはとてもとても[r]
    ありがたいことのように思えた。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="komaru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metoji.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうだったんですね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、なんだかんだ[r]
    ひとりぐらしってしたことなくて[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの、こんなのでよければ[r]
    いくらでもしますから[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metoji.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生が具合が悪いのに[r]
    ふきんしんですけど――[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0029.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    お役に立ててるって思えて、[r]
    わたしもうれしいです[l]
    [_tb_end_text]


    [glink_center  color="btn_05_black"  storage="nonHscene/senseiFever01.ks"  size="20"  x="528"  y="400"  width=""  height=""  text="それじゃあ、おかわり"  _clickable_img=""  target="*s3next"  ]
    [s  ]
    *s3next

    [mioHyoujouSabun hyoujou="happy4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    元気、でてきたみたいですね[r]
    よかった[p]
    [_tb_end_text]


    ;先生体力回復+20
    [calcHP HP="20"]

    [tb_start_text mode=3 ]
    #
    ――その後、鍋いっぱいのおかゆを[r]
    平らげそうなほど食が進んだのだった。[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
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
    ;拡大状態解除しておく
    [RESET_CAMERA time="1"]
    [bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
    [setTime hours=21 minutes=0]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [tb_start_text mode=3 ]
    #
    夕飯を終え、食休みのお茶を味わい、[r]
    着替えも済ませると、９時になっていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    気分的にはほぼ全快しているのだが……[p]
    [_tb_end_text]


    [mioHyoujou hyoujou="okoru1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう見えますけど、[r]
    今日だけは早く休んでくださいね[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおにしては珍しく[r]
    強い語調で迫られてはたまらない。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おとなしく床に就くのだった。[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0032.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生、おやすみなさい[r]
    明日にはきっと元気になっていますよ[l]
    [_tb_end_text]

    ;一択選択肢：おやすみ
    [glink_center storage="nonHscene/senseiFever01.ks" target="*s3next2" text="おやすみ"  ]
    [s]

    *s3next2

    [tb_start_text mode=3 ]
    #
    これだけのことをしてもらったんだ。[r]
    ただの風邪なんか吹き飛んだに決まっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;※早寝フラグは立たない状態で翌日へ。次の朝演出で先生体力全回復
    [eval exp="f.todayEnd = true" ]
    
    [eval exp="f.feverEv.sensei.today = true" ]
    [eval exp="f.feverEv.sensei.total++" ]
    [eval exp="f.freeEv.flag = false" ]
    [eval exp="f.freeEv.num = 0" ]
    [eval exp="f.freeEv.today = true" ]
    [setDayEndPlusHP]
    ;------------------------

    ;■２回目のshot ver構想／いったんこれ以降は無いものとして扱う


    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0033.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;だいじょうぶですよ[p]
    ;[_tb_end_text]


    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene2_0034.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;何度だって、わたしに甘えてくださいね[p]
    ;[_tb_end_text]


[endmacro]





