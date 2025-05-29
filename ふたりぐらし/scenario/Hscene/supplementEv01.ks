[macro name="supplementEv01" ]
    *supplementEv01


    [messageON]
    [tb_start_text mode=3 ]
    #
    サプリを飲ませたみおは[r]
    どうなっているだろう。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    姿が見えないが……[p]
    [_tb_end_text]

    ;[mioMinHyoujou hyoujou="fuee_red.png" time="1"]

    [if exp="f.supplementEv.total == 0" ]
        [eval exp="f.cloth = 'hadaka'" ]
        *supplementEv01_1
        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0008.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0001.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="fuee_red.png" left="1280" time="1"]
        [mioRun]
        [wa]
        [tb_start_text mode=3 ]
        #みお
        ふえ～！！[p]
        [_tb_end_text]

        [playbgm2 volume="40"  time="6000"  loop="true"  fadein="true"  storage="BGM14_tohoho.mp3"  html5="false"  ]
        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0009.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0002.mp3"  ]
        [endif]

        [mioMinHyoujou hyoujou="komaru_red.png"]
        [tb_start_text mode=3 ]
        #みお
        せんせえ～、これどうなってるんですかぁ～！[p]
        [_tb_end_text]


        [tb_start_text mode=4 ]
        #
        みおによく似たちいさめの方がおいでになった。[l]
        [_tb_end_text]

        ;選択肢
        ;　どちら様！？
        ;　まさか……みお……？
        [glink_left storage="Hscene/supplementEv01.ks"  target="supplementEv01_1_1"  text="どちら様！？"  ]
        [glink_right storage="Hscene/supplementEv01.ks"  target="supplementEv01_1_2"  text="まさか……みお……？"  ]
        [s]

        *supplementEv01_1_1
        ;---------
        ;【選択肢分岐】どちら様！？

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0010.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0003.mp3"  ]            
        [endif]
        [mioMinHyoujou hyoujou="fuee_red.png"]
        [tb_start_text mode=3 ]
        #みお
        わたしです、みおですっ[p]
        [_tb_end_text]

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0011.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0004.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="komaru_red.png"]
        [tb_start_text mode=3 ]
        #みお
        ちぢんじゃってますけどわたしなんですぅ～っ[p]
        [_tb_end_text]


        ;　共通部Ａへ
        [jump storage="Hscene/supplementEv01.ks"  target="supplementEv01_3"  ]
        ;---------
        ;【選択肢分岐】まさか……みお……？
        *supplementEv01_1_2
        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0012.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0005.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="y_egao_red.png"]
        [tb_start_text mode=3 ]
        #みお
        あ……[r]
        わかってくれるんですね、せんせい[p]
        [_tb_end_text]


        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0013.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0006.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="egao.png"]
        [tb_start_text mode=3 ]
        #みお
        よかったぁ……[p]
        [_tb_end_text]


        ;　共通部Ａへ
        [jump storage="Hscene/supplementEv01.ks"  target="supplementEv01_3"  ]
        ;----------
        ;【共通部Ａ】
        *supplementEv01_3
        [tb_start_text mode=3 ]
        #
        まさか、サプリの意味深な副作用って[r]
        この効果のことだったのか……！？[p]
        [_tb_end_text]



        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0014.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0007.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="normal_red.png"]
        [tb_start_text mode=3 ]
        #みお
        ふえ？？[p]
        [_tb_end_text]


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
        [bgcheck bgm="false"]
        [addTime minutes=10]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]


        [tb_start_text mode=3 ]
        #
        みおがこうなったのは、おそらく[r]
        昨日のサプリのせいだと説明した。[p]
        [_tb_end_text]

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0015.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0008.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="normal.png"]
        [tb_start_text mode=3 ]
        #みお
        そ、そうだったんですね[p]
        [_tb_end_text]

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0016.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0009.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="y_egao.png"]
        [tb_start_text mode=3 ]
        #みお
        起きたら縮んじゃってて、[r]
        まだ夢を見てるのかなって思うくらいでしたけど……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        信じがたいが、現にみおがこうなってるわけだしな。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        とりあえずなにか羽織るものはないかな――と[r]
        家じゅうをひっかき回すことになった。[p]
        [_tb_end_text]


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
        [bgcheck bgm="false"]
        [addTime minutes=30]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        ;【min1,min2共通】縮んだみおの衣装設定を着衣状態に。
        [eval exp="f.cloth = 'tyakui'" ]

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0017.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0010.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="egao.png"]
        [tb_start_text mode=3 ]
        #みお
        ママが間違えて送ってくれた荷物で[r]
        助かっちゃいましたね[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        前に手紙と同時に大量の荷物を寄こした時に[r]
        返しそびれた古着一式等があったようだ。[p]
        [_tb_end_text]


        [fadeoutbgm2 time="6000" ]

        [tb_start_text mode=4 ]
        #
        それにしても……ウン年前のみおは[r]
        こんな感じだったのか。[l]
        [_tb_end_text]

        ;　共通部Ｂへ
        [jump storage="Hscene/supplementEv01.ks"  target="supplementEv01_5"  ]

    [else]
        ;【分岐】みおが縮むのが２回目以降
        *supplementEv01_4

        ;【min1,min2共通】縮んだみおの衣装設定を着衣状態に。
        [eval exp="f.cloth = 'tyakui'" ]

        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0018.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0011.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="egao.png"]
        [tb_start_text mode=3 ]
        #みお
        せんせえ……[p]
        [_tb_end_text]


        [if exp="f.supplementEv.today.mioType == 'min1'" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0019.mp3"  ]
        [else]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0012.mp3"  ]
        [endif]
        [mioMinHyoujou hyoujou="y_egao.png"]
        [tb_start_text mode=3 ]
        #みお
        また、わたしにちいさくなって[r]
        ほしかったんですよね……？[p]
        [_tb_end_text]


        [tb_start_text mode=4 ]
        #
        うむ……[l]
        [_tb_end_text]


        ;　共通部Ｂへ

    [endif]
    *supplementEv01_5
    ;【共通部Ｂ】


    ;一択選択肢　……
    [glink_center storage="Hscene/supplementEv01.ks"  target="supplementEv01_6"  text="……"  ]
    [s]
    *supplementEv01_6
    [if exp="f.supplementEv.today.mioType == 'min1'" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene11_0020.mp3"  ]
    [else]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene3_0013.mp3"  ]
    [endif]
    [mioMinHyoujou hyoujou="normal.png"]
    [tb_start_text mode=3 ]
    #みお
    ……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    縮んだみおはとてもかわいらしい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    見つめていると、庇護欲と同時に、[r]
    それとは真逆の感情すら刺激されるようで――[p]
    [_tb_end_text]

    ;あとで選択肢を作って、えっちシーンに行くか、行かずにいっしょに過ごすかを選べるように
    ;する想定だが、とりあえずのところは選択肢ナシでえっちシーンへ直行する

    ;→ここから【min1】か【min2】かで別シーンになりますが、
    ;　まだ中身が無いので、次の仮テキストを出して、イベント終了、
    ;　翌日へ移行してロリ化が戻った時のイベント（同系カード03の②）を発生させてください。


    ;□えっちシーン本体（背面駅弁）

    [fadeoutbgm2 time="6000" ]
    ;この時点ではまだADV状態。過去作った「たかいたかい」の立ち絵エフェクトをここで再利用してもいいかも。
    [eval exp="tf.name = 'mioMin1'"]
    [eval exp="tf.name = 'mioMin2'" cond="f.supplementEv.today.mioType == 'min2'" ]
    [anim  name="&tf.name"  top="-=200"  time="1250"  ]
    [wa]


    [mioMinHyoujou hyoujou="egao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ～[p]
    [_tb_end_text]

    [mioMinHyoujou hyoujou="y_egao_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ねこちゃんみたいに持ち上げられてます～[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    元々小柄なみおだが、数年ぶん縮んだことで[r]
    よりちいさく、軽くなっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    質量保存の法則などという言葉が[r]
    脳裏をよぎるが、考えても詮無いことだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    30キロあるかも怪しいみおは[r]
    ぬいぐるみ同然に思いのままで――[p]
    [_tb_end_text]

    [mioMinHyoujou hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抱きかかえた手をスライドさせ、[r]
    薄い胸をなでさする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    見かけに反してシンプルな構造らしく、[r]
    手は服の中にもぐりこんでしまった。[p]
    [_tb_end_text]

    [mioMinHyoujou hyoujou="egao_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁ……せんせいの手、[r]
    すごくおっき……ぽかぽかです……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ここから数年であの隠れ巨乳に[r]
    育つのだなぁ……と思うと感慨深い。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そのまま逆の手は支えるていでお尻に添える。[p]
    [_tb_end_text]

    [mioMinHyoujou hyoujou="normal.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;【プチ分岐】このシーン発生が初回
    [mioMinHyoujou hyoujou="y_egao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、もしかして今のわたしで[r]
    えっちな気持ちになってます……？[p]
    [_tb_end_text]


    ;【プチ分岐】このシーン発生が２回め以降
    [mioMinHyoujou hyoujou="y_egao_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0007.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生、興奮してきちゃいました……？[l]
    [_tb_end_text]


    ;選択肢
    ;　まあ、だいぶ
    ;　まだわからない
    [glink_left storage="Hscene/supplementEv01.ks"  target="supplementEv01_7"  text="まあ、だいぶ"  ]
    [glink_right storage="Hscene/supplementEv01.ks"  target="supplementEv01_8"  text="まだわからない"  ]
    [s]

    ;--------------------------
    ;【選択肢分岐】まあ、だいぶ
    *supplementEv01_7
    [mioMinHyoujou hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう、ですか[p]
    [_tb_end_text]


    [mioMinHyoujou hyoujou="y_egao.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0009.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……喜んでいいんでしょうか？[l]
    [_tb_end_text]


    ;　次の共通部へ
    [jump storage="Hscene/supplementEv01.ks"  target="supplementEv01_9"  ]
    ;--------------------------
    ;【選択肢分岐】まだわからない
    *supplementEv01_8
    [mioMinHyoujou hyoujou="komaru_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、手つき……んんっ、[r]
    こんなやらしくて……[p]
    [_tb_end_text]


    [mioMinHyoujou hyoujou="fuee_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0011.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    これで変な気分になってないって[r]
    言うんですかぁ……？[l]
    [_tb_end_text]



    ;　次の共通部へ
    [jump storage="Hscene/supplementEv01.ks"  target="supplementEv01_9"  ]
    ;--------------------------
    ;共通部
    *supplementEv01_9

    ;一択選択肢　確かめてみよう
    [glink_center storage="Hscene/supplementEv01.ks"  target="supplementEv01_10"  text="確かめてみよう"  ]
    [s]
    *supplementEv01_10

    [tb_start_text mode=3 ]
    #
    と、いちどきにみおの服を取り去らう。[p]
    [_tb_end_text]

    ;みお立ち絵ハダカ状態に。
    [eval exp="f.cloth = 'hadaka'"]

    [mioMinHyoujou hyoujou="komaru_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene11_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えうぁっ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そして持ち上げたままのみおの脚をつかみ、[r]
    まんぐり返しの形にする。[p]
    [_tb_end_text]

    [call storage="Hscene/min2HEv01.ks" ]
    [min2HEv01]

[endmacro]