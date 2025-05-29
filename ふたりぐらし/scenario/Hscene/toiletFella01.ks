[macro name="toiletFella01" ]
    *toiletFella01
    ;-------------------------------------------------------------------------------------------
    ;-------------------------------------------------------------------------------------------

    ;シーン回想の場合はここから（頭から再生）。指定の衣装のベーススチル（めくりや放尿なし）＋「kao2.png」
    [if exp="f.flag_replay" ]

        [messageON]
        [setButtonInTalk]
        [eval exp="f.peepTimer = 12" ]
        [toiletNozokiImg]
        [changeToiletKaoCG cg="kao2.png"]
        

        [mask_off]
    [else]
        [setreplay storage="replay_select.ks" target="toilet_select" name="toiletNozoki"]
        [eval exp="tf.storage = 'EVcg/toilet/'" ]
        [eval exp="tf.storage += 'seihuku'" cond="f.cloth == 'schoolwear1'" ]
        [eval exp="tf.storage += 'odekakegi1'" cond=" (f.cloth == 'sihuku1') && (f.nowCloth2 != 'kigae3')" ]
        [eval exp="tf.storage += 'odekakegi2'" cond="((f.cloth == 'sihuku1') && (f.nowCloth2 == 'kigae3') || (f.cloth == 'sihuku2'))" ]
        [eval exp="tf.storage += 'pajyama1'" cond="(f.cloth == 'roomwear1')" ]
        [eval exp="tf.storage += 'pajyama2'" cond="(f.cloth == 'roomwear2')" ]
        [eval exp="tf.storage += 'pajyama3'" cond="(f.cloth == 'roomwear3')" ]
        [eval exp="tf.storage += 'pajyama4'" cond="(f.cloth == 'roomwear4')" ]
        [eval exp="tf.storage += '.png'" ]


        [changeimg storage=&tf.storage name="nozokiMio" ]
    [endif]
    ;本編からの再生の場合は直前にみおトイレスチルが出ているはずなので、
    ;その状態のまま、体部分を「めくりや放尿なし」のベース状態へ変化

    ;-------------------------------------------------------------------------------------------
    ;-------------------------------------------------------------------------------------------
    ;■シーン初回
    [if exp="f.toiletFella.total == 0" ]

        [tb_start_text mode=3 ]
        #
        まずい！　と思ったが、[r]
        みおの反応は意外なものだった。[p]
        [_tb_end_text]

        ;スチル表情切り替え＿kao2_sekimen.png
        [changeToiletKaoCG cg="kao2_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ムラムラしてるなら[r]
        ふつうに誘ってくれたらよかったのに……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        のぞかれていたことに気づいたみおだが、[r]
        怒るどころか慈愛の微笑みを浮かべている。[p]
        [_tb_end_text]

        ;スチル表情切り替え＿kao6_sekimen.png
        [changeToiletKaoCG cg="kao6_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0002.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        せっかくですから、[r]
        ここでスッキリしていきますか？[l]
        [_tb_end_text]

        

        ;一択選択肢
        ;　えっ！？
        ;　なにをしてくれるのかな？
        [glink_left storage="Hscene/toiletFella01.ks" target="toiletFella01_1_1" text="えっ！？"]
        [glink_right storage="Hscene/toiletFella01.ks" target="toiletFella01_1_2" text="なにをしてくれるのかな？"]
        [s]


        ;---------------------------------------
        ;選択肢分岐　えっ！？
        *toiletFella01_1_1

        ;スチル表情切り替え＿kao6.png
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふふ……[p]
        [_tb_end_text]


        ;　→シーン本体へ
        [jump storage="Hscene/toiletFella01.ks" target="toiletFella01_2" ]
        ;---------------------------------------
        ;選択肢分岐　なにをしてくれるのかな？
        *toiletFella01_1_2

        ;スチル表情切り替え＿kao6.png
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それはもちろん――[p]
        [_tb_end_text]


        ;　→シーン本体へ
        [jump storage="Hscene/toiletFella01.ks" target="toiletFella01_2" ]
        ;-------------------------------------------------------------------------------------------
    [elsif exp="f.toiletFella.total > 0 && f.toiletFella.today == 0" ]
        ;-------------------------------------------------------------------------------------------
        ;■シーン２回め以降（同日中２回めではない）
        *toiletFella01_1_3

        ;スチル表情切り替え＿kao3_sekimen.png
        [changeToiletKaoCG cg="kao3_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        のぞきならではの興奮とかが[r]
        ある感じなんですか……？[p]
        [_tb_end_text]


        ;スチル表情切り替え＿kao6_sekimen.png
        [changeToiletKaoCG cg="kao6_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        じゃあその興奮したぶん、[r]
        スッキリしていきましょうね[p]
        [_tb_end_text]


        ;　→シーン本体へ


        ;-------------------------------------------------------------------------------------------
    [else]
        ;-------------------------------------------------------------------------------------------
        ;■シーン２回め以降かつ、同日中２回め以降
        *toiletFella01_1_4
        ;スチル表情切り替え＿kao4_sekimen.png
        [changeToiletKaoCG cg="kao4_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おなじ日にまたのぞくなんて[r]
        先生ってものすごい変態さんなんですね[p]
        [_tb_end_text]


        ;スチル表情切り替え＿kao6_sekimen.png
        [changeToiletKaoCG cg="kao6_sekimen.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そんな変態さんのおちんちん、[r]
        またお世話してあげます[p]
        [_tb_end_text]



        ;　→シーン本体へ
    [endif]
    ;-------------------------------------------------------------------------------------------
    ;-------------------------------------------------------------------------------------------
    ;■シーン本体
    *toiletFella01_2
    ;スチル表情切り替え、ここから別フォルダ「toilet_fella」内のスチルを参照
    [free layer="2" name="nozokiBG2" time="500" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    [tb_start_text mode=3 ]
    #
    みおにうながされ、個室の中に入っていく。[p]
    [_tb_end_text]

    ;スチル切替【01】
    [changeToileFellaCG cg="01"]
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あーん[p]
    [_tb_end_text]

    ;スチル切替【02】
    [changeToileFellaCG cg="02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁい、ほうぞ[p]
    [_tb_end_text]


    ;---------------------------------------
    ;プチ分岐：シーン発生初回
    [if exp="f.toiletFella.total == 0" ]
        *toiletFella01_2_1
        [tb_start_text mode=3 ]
        #
        なんと……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ここでみおがザーメン便所に[r]
        なってくれるということのようだ。[p]
        [_tb_end_text]


        ;　次の共通部へ
    [else]
        *toiletFella01_2_2
        ;---------------------------------------
        ;プチ分岐：シーン発生２回め以降（同日中２回め以降の場合も）

        [tb_start_text mode=3 ]
        #
        では今回もありがたく[r]
        使わせてもらうとしよう。[p]
        [_tb_end_text]


        ;　次の共通部へ
    [endif]
    ;---------------------------------------
    ;共通部
    *toiletFella01_2_3

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]


    [tb_start_text mode=3 ]
    #
    ズボンの中ですでにパンパンに[r]
    膨らんでいたペニスを解き放つ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    むわっとした性臭が狭い室内に立ち込める。[p]
    [_tb_end_text]

    [if exp="f.HP <= f.HP_LOW" ]
        *toiletFella01_2_4
        ;--------------------------------------
        ;先生体力がオレンジライン以下のとき、追加表示

        [tb_start_text mode=3 ]
        #
        体力的にきびしいかと思ったが、[r]
        こんな状況ではさすがに下半身も応えてくれた。[p]
        [_tb_end_text]

        ;--------------------------------------
    [endif]
    *toiletFella01_2_5
    ;スチル切替【03】
    [changeToileFellaCG cg="03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♡[p]
    [_tb_end_text]


    ;------

    ;プチ分岐：下テキストの条件を満たさない時はこちら
    [if exp="f.toiletFella.today == 0 && (!f.osawariToday || (f.osawariToday && !f.todaySyasei))" ]
        *toiletFella01_2_6
        ;スチル切替【04】
        [changeToileFellaCG cg="04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生のおちんちん、[r]
        真っ赤でぷりぷりにふくらんで……[p]
        [_tb_end_text]

    [else]
        ;プチ分岐：この日、このシーン以前にトイレでフェラ抜き発生 or おさわりパートで先生射精が一度以上あった
        *toiletFella01_2_7
        ;スチル切替【04】
        [changeToileFellaCG cg="04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        さっきもシたのにまたこんなに[r]
        大きくなって……[p]
        [_tb_end_text]

        ;------
    [endif]
    *toiletFella01_2_8
    ;スチル切替【05】
    [changeToileFellaCG cg="05"]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    美味しそう――ぁむっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    すでに唾液で満たされていたみおの口が[r]
    むしゃぶりついてくる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    膣でも実現できないほどの熱い汁気が[r]
    ペニスを包み込み、ねぶる。[p]
    [_tb_end_text]


    ;----------------------------------------------------
    ;これがみおの初のキス経験になる場合は下記を追加表示。上掲の初体験テキストも登録
    [if exp="f.firstKiss.image.id == 0" ]

        [tb_start_text mode=3 ]
        #
        キスもまだだったろう唇で[r]
        こんなことをしてくれるなんて……っ！[p]
        [_tb_end_text]
        [eval exp="f.firstKiss = addExperience(f.firstKiss,'2050','トイレの中の精液便所フェラで')" ]
    [endif]
    ;----------------------------------------------------

    ;スチル切替【06】
    [changeToileFellaCG cg="06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……んん～っ[r]
    じゅっ、じゅるるっ、じゅっ[p]
    [_tb_end_text]


    ; スチル切替【05】
    [changeToileFellaCG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    れるる……んぷぁっ、あむぁ……[r]
    ちゅっ、ちゅるる……っ[p]
    [_tb_end_text]


    ; スチル切替【07】
    [changeToileFellaCG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    くちゅちゅ、んぷっ、んんっ、んんむむ～[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    あっという間に射精感がこみ上げ、[r]
    止められそうにないほど精管内で滾っている。[p]
    [_tb_end_text]


    ; スチル切替【07】
    [changeToileFellaCG cg="07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぷぁぁ、んふふ……るる、れるるっ、[r]
    じゅっじゅじゅっ……んふ～……[p]
    [_tb_end_text]


    ; スチル切替【08】
    [changeToileFellaCG cg="08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ずずっ、じゅぽぽっ、じゅるるっ[r]
    ンッ♡　ンンッ♡　へんへっ、はひへっ[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    くっ、もうイく……っ！[l]
    [_tb_end_text]


    ;選択肢
    ;　口内に出す
    ;　顔にかける
    [glink_left storage="Hscene/toiletFella01.ks" target="toiletFella01_3_1" text="口内に出す"]
    [glink_right storage="Hscene/toiletFella01.ks" target="toiletFella01_3_2" text="顔にかける"]
    [s]

    *toiletFella01_3_1

    ;射精演出＋スチル切替。切替先は選択肢により変化。
    ;口内の場合【09】、ぶっかけの場合【11】
    [changeToileFellaCG cg="09" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんん～～っ♡♡[p]
    [_tb_end_text]


    ;--------------------------------
    ;分岐：口内に出した場合

    ;スチル切替【10】
    [changeToileFellaCG cg="10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぷぁ……んぁぁ……[r]
    おふち、いっふぁい……[p]
    [_tb_end_text]

    ;この分岐時のみの性経験加算　口内射精+1
    [eval exp="f.mouthCum++" ]
    ;　次の共通部へ
    [jump storage="Hscene/toiletFella01.ks" target="toiletFella01_4"]
    ;--------------------------------
    ;プチ分岐：顔にかけた場合
    ;射精演出＋スチル切替。切替先は選択肢により変化。
    ;口内の場合【09】、ぶっかけの場合【11】
    *toiletFella01_3_2
    [changeToileFellaCG cg="11" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんん～～っ♡♡[p]
    [_tb_end_text]

    ;スチル切替【12】
    [changeToileFellaCG cg="12"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene2_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごい量……どろどろのねばねば……[r]
    とれないかも……♡[p]
    [_tb_end_text]


    ;この分岐時のみの性経験加算　ぶっかけ+1
    [eval exp="f.sperm++" ]

    ;　次の共通部へ
    [jump storage="Hscene/toiletFella01.ks" target="toiletFella01_4"]
    ;--------------------------------
    ;共通部
    *toiletFella01_4

    ;共通のみお性経験加算
    ;　みおから迫って+1、フェラチオ+1、開発度口+1
    [eval exp="f.malerape++" ]
    [eval exp="f.fellatio++" ]
    [eval exp="f.mouth++" ]
    ;スチルとして【bk100】表示
    [setBK time="500"]

    [addTime minutes=10]
    ;みお体力-10、みお欲求-10
    [calcMioHP HP=-10]
    [calcMuramura muramura=-10]

    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]

        [tb_start_text mode=3 ]
        #
        それから諸々の始末をし、[r]
        そろって居間に戻ったのだった。[p]
        [_tb_end_text]
        [maskStart]
            [deleteBK time="1"]
            [free layer="1" name="nozoki" ]
            [free layer="2" name="nozoki" ]
            [eval exp="f.toiletFella.today++" ]
            [eval exp="f.toiletFella.total++" ]
            [bgcheck]
            [clearstack]
            [jump storage="command.ks" target="back" ]
    [endif]

    ;暗転し、暗転中に[addTime minutes=10]
    ;暗転あけで自由行動パートに。BGMも状況にあったものを再生。


    ;-------------------------------------------------------------------------------------------
    ;-------------------------------------------------------------------------------------------
    ;以上



[endmacro]