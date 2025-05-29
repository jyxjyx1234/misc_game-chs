[macro name="dateTekokiHEv01"]
	;＜デート帰り手コキ＞

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;イベント開始

	;ここに来る前にＢＧＭはすでに止まっているので、停止命令は必要なし。
	;シーン回想の場合ここから。立ち絵、BGMなし、背景画面bk100.jpg。
    ;スチル表示用の変数定義
    [if exp="f.cloth == 'sihuku1'" ]
        [eval exp="tf.clothName = 'sihuku01'" ]
    [elsif exp="f.cloth == 'sihuku2'" ]
        ;スチルがそろうまでは01,揃ったら02にする
        [eval exp="tf.clothName = 'sihuku02'" ]
    [else]
        [eval exp="tf.clothName = 'sihuku01'" ]
    [endif]
    [eval exp="f.dateTekokiStill = 'EVcg/toriaezu/dateTekokiHstill/' + tf.clothName + '_'"]
	[messageON]
	[tb_start_text mode=3 ]
	#
	駅を抜けると、後は家まで徒歩。[r]
	いつの間にかみおと手をつないで歩いている。[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	手をつなぐのは、自分たちの関係を[r]
	周囲に喧伝しながら歩くようで少し緊張する。[p]
	[_tb_end_text]


	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0001.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	……[p]
	[_tb_end_text]

	[fadeoutse buf="0" time="6000" ]

	[tb_start_text mode=3 ]
	#
	駅から離れるにつれ、[r]
	少しずつひとけが減っていき――[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0002.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	……先生[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	控えめな握力で、みおが物陰の方へ[r]
	引っ張りこんできた。[p]
	[_tb_end_text]

	;スチル表示【01.png】　※現在衣装に合わせたスチルの末尾01.png（sihuku01_01.png）
    [setDateTekokiCG cg="01" time="1000"]


	[tb_start_text mode=3 ]
	#
	狭い空間だったので、自然と密着状態になる。[r]
	みおの小柄さ、華奢さに改めておどろく。[p]
	[_tb_end_text]


	;ここでシーンの発生事由に合わせて分岐。２つある。

		;【分岐】発生事由
		;　「ラブホに誘わなかった」＆「みおが欲求が溜まって自主的にはじめていた」場合


		;【分岐】発生事由
		;　「先生側がムラムラしていることを主因として発生した」場合


	;------------------------------
	;------------------------------
	;【分岐】このイベントの発生事由が
	;　「ラブホに誘わなかった」＆「みおが欲求が溜まって自主的にはじめていた」場合
    [if exp="f.dateTekokiH.cause == 'mio' && !f.dateTekokiH.isHotel" ]
        [setDateTekokiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        このまま、帰っちゃうんですか？[p]
        [_tb_end_text]
		[setDateTekokiCG cg="01" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたし……[r]
        はしたないかもですけど……[p]
        [_tb_end_text]

		[setDateTekokiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        どこかで休んでいこうって[r]
        誘ってもらえるの、待ってたんですよ？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そう言うみおの表情は、[r]
        おどろくほど紅潮してとろけていた。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        期待させておいてスカしてしまった形のようだ。[r]
        みおも欲求不満になることがあるのだな……[p]
        [_tb_end_text]
		[setDateTekokiCG cg="01" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だから、あの……[p]
        [_tb_end_text]

		[setDateTekokiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ほんとのえっちじゃなくていいから、[r]
        おててにください、先生の……っ[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        手コキで、ということのようだ。[p]
        [_tb_end_text]


        ;　→次の共通部へ

    [else]
        ;------------------------------
        ;------------------------------
        ;【分岐】このイベントの発生事由が
        ;　「先生側が特殊コンディションだった」場合（ラブホに誘ったかどうかの分岐はこの中でさらにちょっと）
		[setDateTekokiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あのう、先生……[r]
        おつらくないですか……？[p]
        [_tb_end_text]
		[setDateTekokiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        その……息遣いとか、歩き方とか……[r]
        わたしを見る目もちょっと怖いですし……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        確かに、欲求不満気味で[r]
        目つきとかギラギラしていたかもしれない。[p]
        [_tb_end_text]


        ;--------------------------------------
        ;【分岐】状況に合う方を１つ表示
        [if exp="!f.dateTekokiH.isHotel" ]

            ;※ラブホに誘っていない場合
			[setDateTekokiCG cg="01" time="300"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0010.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            そんな状態だったのにわたしに気を遣って[r]
            まっすぐ帰ろうとしてくれたんですね[p]
            [_tb_end_text]


        [else]
            ;※ラブホに誘ったが断られた
			[setDateTekokiCG cg="01" time="300"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0011.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            ごめんなさい、そうと気づかずに[r]
            どこかで休もうってお話、断っちゃって[p]
            [_tb_end_text]

        [endif]
        ;--------------------------------------

		[setDateTekokiCG cg="02" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        なので、その……[p]
        [_tb_end_text]

		[setDateTekokiCG cg="03" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おててでよければ、今ここで……[p]
        [_tb_end_text]


	;　→次の共通部へ

    [endif]
	;------------------------------
	;------------------------------
	;【共通部】

	[tb_start_text mode=3 ]
	#
	気持ちはうれしいが……[p]
	[_tb_end_text]

	[tb_start_text mode=4 ]
	#
	そうは言ってもこんなところで[r]
	こそこそやるには手コキがせいぜいだろう。[l]
	[_tb_end_text]

	;選択肢
	;　ぜひお願いします
	;　手コキ“だけ”？

    ;選択肢表示
    [iscript]
        tf.text1 = '手コキ"だけ"？';
    [endscript]
    [glink target="*dateTekokiHEv1_1" addlog="true" text="ぜひお願いします" color="btn_05_black glink_double_left" size="20" x="375" y="400"]
    [glink target="*dateTekokiHEv1_2" addlog="true" text="&tf.text1" color="btn_05_black glink_double_right" size="20" x="375" y="400"]
    [s]

	;-----------------------------------------------------
	;【選択肢】ぜひお願いします
    *dateTekokiHEv1_1
	[setDateTekokiCG cg="04" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0014.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	はい……♡[p]
	[_tb_end_text]

	;　→次の共通部へ
    [jump target="dateTekokiHEv1_3" ]
	;-----------------------------------------------------
	;【選択肢】手コキ“だけ”？
    *dateTekokiHEv1_2
	[setDateTekokiCG cg="01" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0015.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	それは、帰ってからの[r]
	先生しだいと言うか……[p]
	[_tb_end_text]

	[setDateTekokiCG cg="04" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0016.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	そんないじわるなこと言うなら[r]
	やめちゃいますけどぉ[p]
	[_tb_end_text]

	;　→次の共通部へ
    [jump target="dateTekokiHEv1_3" ]
	;-----------------------------------------------------
	;【共通部】
    *dateTekokiHEv1_3
	;スチル切替【02.png】　※現在衣装に合わせたスチルの末尾02.png
    ;[CGSet layer="2" storage="&f.dateTekokiStill+'02.png'" name="still,tekoki2" time="1000"]
    ;[free layer="2" name="tekoki1"]
	;BGM11_temptation.mp3　をＢＧＭとして再生。time6000
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000"]

	[setDateTekokiCG cg="01" time="300"]
	[wait time="&f.WAIT_TIME" ]
	[setDateTekokiCG cg="05" time="300"]
    
	[tb_start_text mode=3 ]
	#
	みおの白くて細い手が、[r]
	膨らんだズボンの前をそっと撫でる。[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	うぅ……[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	こうされてはどのみち理性など[r]
	脆いものだった。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="06" time="300"]
	[wait time="&f.WAIT_TIME" ]
	[setDateTekokiCG cg="07" time="300"]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0017.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	すり、すり、すり……[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	手をつないで帰る――[r]
	それだけであんなに緊張したのに。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="02" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0018.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	そろそろ出してあげますね[r]
	パンパンで苦しそうですから[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	その手が、今は膨らんだズボンの[r]
	ジッパーを下ろしにかかっているのだ。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="01" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0019.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	んっ、中でおっきくなってて[r]
	ちょっと下げるのも……えぇい……[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]
	;スチル切替【03.png】　※現在衣装に合わせたスチルの末尾03.png
    [setDateTekokiCG cg="08" time="300"]
    [free layer="2" name="tekoki2"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0020.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あんっ[p]
	[_tb_end_text]

	[setDateTekokiCG cg="09" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0021.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あ、ぁっ……んんぅ……[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	猫のようにみおが顔を胸元へ擦りつけてくる。[r]
	蠱惑的に腰がくねる。[p]
	[_tb_end_text]


	;スチル切替【04.png】　※現在衣装に合わせたスチルの末尾04.png
    [setDateTekokiCG cg="10" time="300"]
    [free layer="2" name="tekoki3"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0022.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	だめ、だめです――こんな匂い、[r]
	こんなえっちな匂い、溜め込んでたなんて[p]
	[_tb_end_text]

	[setDateTekokiCG cg="11" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0023.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	先生、どういうつもりなんですか[p]
	[_tb_end_text]


	[tb_start_text mode=3 ]
	#
	そう言われましても……と返答に困るのと[r]
	同タイミング、付近を誰かが通り過ぎて行った。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="08" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0024.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	……っ[p]
	[_tb_end_text]

	;スチル切替【05.png】　※現在衣装に合わせたスチルの末尾05.png
    [setDateTekokiCG cg="12" time="300"]
    [free layer="2" name="tekoki4"]
	[tb_start_text mode=3 ]
	#
	びくりとあたりを警戒しつつも、[r]
	みおはしかとペニスを握りしめてきた。[p]
	[_tb_end_text]

	[tb_start_text mode=4 ]
	#
	ここまで来てやめるという考えはないらしい。[l]
	[_tb_end_text]


	;選択肢
	;　早めにイくから……
	;　どきどき変態プレイだ

    [glink target="*dateTekokiHEv1_4" addlog="true" text="早めにイくから……" color="btn_05_black glink_double_left" size="20" x="375" y="400"]
    [glink target="*dateTekokiHEv1_5" addlog="true" text="どきどき変態プレイだ" color="btn_05_black glink_double_right" size="20" x="375" y="400"]
    [s]
	;-----------------------------------------------------
	;【選択肢】早めにイくから……
    *dateTekokiHEv1_4
	[setDateTekokiCG cg="13" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0025.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	それじゃあスッキリできなくないですか？[p]
	[_tb_end_text]

	[setDateTekokiCG cg="14" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0026.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	いっぱい焦らして、感じて、楽しんで……[r]
	それで最後にびゅううぅっって[p]
	[_tb_end_text]

	[setDateTekokiCG cg="13" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0027.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	そういうお射精じゃないと……ね？[p]
	[_tb_end_text]


	;　→次の共通部へ
    [jump target="dateTekokiHEv1_6" ]
	;-----------------------------------------------------
	;【選択肢】どきどき変態プレイだ
    *dateTekokiHEv1_5
	[setDateTekokiCG cg="14" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0028.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	……[p]
	[_tb_end_text]
	[setDateTekokiCG cg="13" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0029.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	変態さんになっちゃってもいいですよ[r]
	……先生といっしょだったら[p]
	[_tb_end_text]

	;　→次の共通部へ
    [jump target="dateTekokiHEv1_6" ]
	;-----------------------------------------------------
	;【共通部】
    *dateTekokiHEv1_6

	[tb_start_text mode=3 ]
	#
	デート帰りだからだろうか。[r]
	みおがそんな殺し文句を言えるとは……[p]
	[_tb_end_text]


	;【BGS】H_TEKOKI.mp3、time6000で再生
    [fadeinse storage="BGS/H_TEKOKI.mp3" buf="0"  time="6000" loop="true" ]
	[setDateTekokiCG cg="15" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0030.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あっ……ふふ、かたくなって[r]
	血管びくびく～ってしてきました[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	大人をこんなにもてあそんだ責任は[r]
	しっかりとってもらわないとな。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="13" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0031.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	わ、わわ、先生の方から腰、動かして[r]
	激し……ふわぁ……っ[p]
	[_tb_end_text]

	[setDateTekokiCG cg="14" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0032.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	そんな音立ててたら[r]
	バレちゃいますよぅ……？[p]
	[_tb_end_text]

	[image layer="3" storage="../bgimage/bk100.jpg" name="bkcg" visible="true" time="500" ]

	[tb_start_text mode=3 ]
	#
	つま先立ちになったみおが[r]
	耳元でふぅっとささやきかけてくる。[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	――……っ！[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0033.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あっ、んんぅっ、ふふ、[r]
	もう止まらないんですね、先生[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0034.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	こんなところ誰かに見つかったら[r]
	勘違いされて逮捕されちゃうかもなのに[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0035.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	おちんちんから白いの出すまで[r]
	もう止まれないんですね[p]
	[_tb_end_text]

	;【BGS】H_TEKOKI_fast.mp3、time6000で再生
    [fadeinse storage="BGS/H_TEKOKI_fast.mp3" buf="0"  time="6000" loop="true" ]

	[tb_start_text mode=3 ]
	#
	背筋がしびれっぱなしだ。[r]
	ばかになって腰を振る。[p]
	[_tb_end_text]

	[setDateTekokiCG cg="15" time="1"]
	[free layer="3" name="bkcg" ]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0036.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	ああ、すごいです……手でシてるだけなのに[r]
	わたしもおなかがキュンキュンするみたい[p]
	[_tb_end_text]

	[setDateTekokiCG cg="13" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0037.mp3"  ]
	[tb_start_text mode=4 ]
	#みお
	先生、先生……っ[l]
	[_tb_end_text]

    [glink target="*dateTekokiHEv1_7" addlog="true" text="みお、イく……！" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]

	;射精演出、BGS停止
	;汁差分が現状無いので変化なし。後日追加予定
    *dateTekokiHEv1_7
    [stopse buf="0" ]
    [setDateTekokiCG cg="16" time="300" syasei="true"]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0038.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	はっ、んんぁ、はぁあぁ～……っ[r]
	熱、熱いのがいっぱいっ[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
	[setDateTekokiCG cg="17" time="300"]
	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0039.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あ、あぁ……すごぉい……[r]
	おててどろどろ……[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	狭い区画にむっとする性臭が充満し、[r]
	ふたりの荒い息がこだまする。[p]
	[_tb_end_text]

	;スチル切替【bk100.jpg】をスチルとして表示
    [image layer="3" storage="../bgimage/bk100.jpg" name="bkcg" time="500" ]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0040.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	ぬちょぬちょ……[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	精液で糊づけされたみたいに、[r]
	みおの手はペニスにみっちりくっついていた。[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0041.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	ちょっと、待っててくださいね[r]
	ん、しょ……[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

	[tb_start_text mode=3 ]
	#
	器用に取り出したティッシュで[r]
	みおが精液を拭きとっていき――[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	服のポケットにしまいこんだ。[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	えっと……[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0042.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	あ、えっと……[r]
	近くにくずかごとかなかったので……[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0043.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	地面に垂らしてくのも[r]
	ティッシュをポイ捨てするのもいけませんし[p]
	[_tb_end_text]

	[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene2_0044.mp3"  ]
	[tb_start_text mode=3 ]
	#みお
	ね？[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	真っ赤な顔でそう言うのだった。[p]
	[_tb_end_text]

	;☆追加テキスト
	[tb_start_text mode=3 ]
	#
	……髪についたぶんの始末は[r]
	なかなか大変だったのだが。[p]
	[_tb_end_text]


	;ＢＧＭ停止。time6000
	;背景をbk100.jpg、立ち絵消去の上でスチルを消去
    [fadeoutbgm2 time="6000" ]
    [chara_hide_all time="1" ]
    [bgChange storage="bk100.jpg" time="1"]
    [free layer="2" name="still" ]
    [free layer="3" name="bkcg" ]
	;先生体力-20、現在時刻+30m（回想シーンでは働かない）
    [if exp="!f.flag_replay"]
        [calcHP HP="-20"]
        [addTime minutes="30"]
    [endif]

	[tb_start_text mode=3 ]
	#
	それから、こそこそと通りに戻って[r]
	なにごともなかったように帰路に着いた。[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	汗ばんだ手を互いに絡ませるようにして。[p]
	[_tb_end_text]


	[tb_start_text mode=3 ]
	#
	…………[p]
	[_tb_end_text]

	[tb_start_text mode=3 ]
	#
	……[p]
	[_tb_end_text]

	;シーン回想からだとここで終了。
    [if exp="!f.flag_replay"]
        ;みお性経験加算
		[calcMioHP HP="-20"]
        [eval exp="f.malerape++"]
        [eval exp="f.sperm++"]
        ;[eval exp="f.bukkakeToday++"]
        [eval exp="f.masochism++"]
        ;ゲーム中の再生ならばさらに下記。
		[eval exp="f.dateTekokiH.today = true" ]
		[eval exp="f.dateTekokiH.count.total++" ]

        ;みお性経験加算
        ;　「みおから迫って」に+1、「露出・調教」+1、「ぶっかけ」+1


        ;。デートからの帰宅パートの元フローに合流。
    [endif]


	[setreplay name="dateTekokiHEv001" storage="replay_select.ks" target="dateTekokiH_select"]
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



[endmacro]