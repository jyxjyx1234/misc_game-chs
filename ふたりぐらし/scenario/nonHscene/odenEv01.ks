;　・「＜朝会話1/3＞　おでん屋台イベントのフラグが立つ」閲覧済み
;　・「木曜」の散歩で「コンビニ」に寄り道

;　上記の２つの条件を同時に満たすとき、おでんイベントが発生。
;　（元々のその寄り道場所の「初回来訪時」テキストもスキップする）

;　曜日と場所は変更の可能性はあるが、スチルの衣装差分対応による工数を抑える意味で、
;　「夜」の「制服姿のみお」だけで済むようにしたいので曜日が平日なのは固定とする。


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[macro name="odenEv" ]
    [messageON]
    ;■おでんイベントの発生がはじめてのとき
    [if exp="f.odenEv.total == 0" ]
        ;　現在のBGを記憶
        [eval exp="f.beforeBG = f.lastBG" ]

        [tb_start_text mode=3 ]
        #
        寄り道としてコンビニにやってきたが……[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="kira1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あっ、おでん屋さんの屋台ですよ[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="enryo.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ニュースで見たときから[r]
        ずっと食べて見たかったんです[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="okoru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        寄って行きましょう、先生！[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおがこんなにグイグイ引っ張ってくるのは珍しい。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        間食にしてはボリューミーな気もするが、[r]
        この美味そうに匂いには抗えない……[p]
        [_tb_end_text]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        ;★スチルが提出されたらここをスチル表示とおきかえる
        [CGSet layer="2" storage="EVcg/oden/01.png" name="still,oden1" time="1" ]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ] 
        [chara_hide_all  time="1"  wait="false"  ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        [playse  volume="100"  sprite_time="0000-400"  buf="1"  storage="se/syokuji1.mp3"  ]

        [tb_start_text mode=3 ]
        #
        運よく客の切れ目だったようで、[r]
        寡黙な店主がお冷と小鉢を供してくれた。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        このお通し、すっごく美味しい……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        確かに、小鉢の枝豆や漬物からして[r]
        すでに一味違う。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        おでんへの期待がいやがおうにも高まろうというものだ。[p]
        [_tb_end_text]
        [CGSet layer="2" storage="EVcg/oden/02.png" name="still,oden2" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        メニューのおでんもたくさんですね[p]
        [_tb_end_text]
        [CGSet layer="2" storage="EVcg/oden/03.png" name="still,oden3" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        そんなにたくさんはいただけないから[r]
        これだ、っていうのにしぼらないと……[p]
        [_tb_end_text]


        ;　後述の「■おでんイベント本体」へジャンプ
    [else]
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;■おでんイベントの発生が２回目以降のとき（ショートバージョン）

        ;　現在のBGを記憶
        [eval exp="f.beforeBG = f.lastBG" ]

        [tb_start_text mode=3 ]
        #
        寄り道としてコンビニにやってきたが……[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="kira1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あっ、おでん屋さんの屋台ですよ[p]
        [_tb_end_text]

        [mioHyoujouSabun hyoujou="okoru1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        寄って行きましょう、先生！[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        他の客も居ないようだし、[r]
        ちょうどいいな。[p]
        [_tb_end_text]

        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        ;★スチルが提出されたらここをスチル表示とおきかえる
        [free layer="2" name="still" ]
        [CGSet layer="2" storage="EVcg/oden/01.png" name="still,oden1" time="300" ]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ] 
        [chara_hide_all  time="1"  wait="false"  ]
        [wait  time="500"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

        [playse  volume="100"  sprite_time="0000-400"  buf="1"  storage="se/syokuji1.mp3"  ]

        [tb_start_text mode=3 ]
        #
        絶品のお通しをつまみながら[r]
        うきうきでメニュー表を眺めるみおだった。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日はなににしようかな～♪[p]
        [_tb_end_text]



        ;　後述の「■おでんイベント本体」へジャンプ
    [endif]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;■おでんイベント本体（品目決定）

    [tb_start_text mode=4 ]
    #
    豊富なお品書きには変わったおでんと[r]
    その効用説明がびっしり書かれているが……[l]
    [_tb_end_text]

    ;＜品目決定の選択肢1/2＞
    *odenMenuSelect
    [glink color="btn_05_black" addlog="true" storage="" size="20" x="180" y="400" width="200" height="" exp="f.odenMenu = 'daikon',f.odenMenuText = '染み染み巨大根'"  text="染み染み巨大根" _clickable_img="" target="odenMenuConfirm" ]
    [glink color="btn_05_black" addlog="true" storage="" size="20" x="430" y="400" width="200" height="" exp="f.odenMenu = 'tamago',f.odenMenuText = '満々月たまご'"  text="満々月たまご" _clickable_img="" target="odenMenuConfirm" ]
    [glink color="btn_05_black" addlog="true" storage="" size="20" x="680" y="400" width="200" height="" exp="f.odenMenu = 'konbu',f.odenMenuText = 'スルスル結び昆布'"  text="スルスル結び昆布" _clickable_img="" target="odenMenuConfirm" ]
    [glink color="btn_05_black" addlog="true" storage="" size="20" x="930" y="400" width="200" height="" exp="f.odenMenu = 'tako',f.odenMenuText = 'うねりタコ足'"  text="うねりタコ足" _clickable_img="" target="odenMenuConfirm" ]
    [s]

    ;※上記選択肢決定後、
    ;　・品目ごとの効用説明のテキストが出る。これが選択肢テキストになってさらに↓
    ;　・＜品目決定の選択肢2/2＞「これを注文する」「考えなおす」の選択
    ;　　・「考えなおす」場合はテキスト「今回頼むおでんは……」の選択肢前テキストを出し、＜品目決定の選択肢1/2＞へループ。
    ;　　・「これを注文する」場合は、品目ごとのイベントの続きを実行


    ;　・下記、品目ごと分岐で区切ってテキストを書きます。
    ;　　＜品目決定の選択肢2/2＞などの部分は省略しますが、上記の通りにご設定ください。

    *odenMenuConfirm


    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】染み染み巨大根
    [if exp="f.odenMenu == 'daikon'" ]

        ;----------
        ;【効用説明】

        [tb_start_text mode=4 ]
        #染み染み巨大根
        よく煮たでっかい大根で、[r]
        一口かじれば滋養が溢れる……らしい。[l]
        [_tb_end_text]

        ;----------

    ;----------------------------------------------
    ;分岐【選択肢】満々月たまご
    [elsif exp="f.odenMenu == 'tamago'" ]
        ;----------
        ;【効用説明】

        [tb_start_text mode=4 ]
        #満々月たまご
        双子たまごの黄身を２つの満月に見立た[r]
        カップル向きのおしゃれおでんだ。[l]
        [_tb_end_text]

    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】スルスル結び昆布
    [elsif exp="f.odenMenu == 'konbu'" ]
        ;----------
        ;【効用説明】

        [tb_start_text mode=4 ]
        #スルスル結び昆布
        複雑に編まれた結び昆布で[r]
        食物繊維がおなかの調子を整えるそう。[l]
        [_tb_end_text]

    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】うねりタコ足
    [elsif exp="f.odenMenu == 'tako'" ]

        ;----------
        ;【効用説明】

        [tb_start_text mode=4 ]
        #うねりタコ足
        らせんにうねった薄ピンクのタコ足だ。[r]
        媚薬効果があるとかないとか。[l]
        [_tb_end_text]

    [else]



    [endif]



    ;----------------------------------------------
    ;----------------------------------------------
    ;　・＜品目決定の選択肢2/2＞「これを注文する」「考えなおす」の選択
    [glink color="btn_05_black glink_double_left" addlog="true" storage="" size="20" x="610" y="400" width="" height="" exp=""  text="これを注文する" _clickable_img="" target="odenMenuOrder" ]
    [glink color="btn_05_black glink_double_right" addlog="true" storage="" size="20" x="840" y="400" width="" height="" exp=""  text="考えなおす" _clickable_img="" target="odenMenuBack" ]
    [s]

    *odenMenuBack
    #
    今回頼むおでんは……[l]
    [jump target="*odenMenuSelect" ]


    ;【注文決定後の流れ】
    *odenMenuOrder

    [tb_start_text mode=3 ]
    #
    [emb exp="f.odenMenuText" ]を注文して、待つこと少々――[p]
    [_tb_end_text]

    [if exp="f.odenMenu == 'daikon'" ]
        [CGSet layer="2" storage="EVcg/oden/04.png" name="still,oden4" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふつうの大根の倍くらいあるのに[r]
        とってもやわらくていくらでもいけちゃいます[p]
        [_tb_end_text]

        ;ふたりの体力がMAXになる。先生は上限値も5アップ（他のおでんをたべた場合も先生のみおの体力回復は少量行われる）
        [HPMaxUp HP=5]
        [calcHP HP=&f.HPMax]
        [calcMioHP HP=&f.mioMaxHealth]
        [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #
        出汁のよく染みた巨大な大根で[r]
        体力もみなぎってきた。[p]
        [_tb_end_text]


    ;　次の共通部へ

    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】満々月たまご
    [elsif exp="f.odenMenu == 'tamago'" ]
        ;----------
        [CGSet layer="2" storage="EVcg/oden/04.png" name="still,oden4" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0019.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ほんとにお月様みたいにきれいな黄身ですね[r]
        ゆで加減も絶妙で……すごい……[p]
        [_tb_end_text]

        ;みおきげんと好感度が中アップ
        ;先生とみおの体力を+20
        [plusMood moodLevel="middle"]
        [plusLove loveLevel="middle"]
        [calcHP HP="20"]
        [calcMioHP HP="20"]
        [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #
        カップル用のおでんを分け合って食べて[r]
        もっとみおとの仲が深まった気がする。[p]
        [_tb_end_text]


        ;　次の共通部へ


    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】スルスル結び昆布
    [elsif exp="f.odenMenu == 'konbu'" ]
        ;----------
        [CGSet layer="2" storage="EVcg/oden/04.png" name="still,oden4" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        昆布がぷりぷりでじゅわじゅわです～！[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
        [tb_start_text mode=3 ]
        #
        お通じがよくなりそうだし、[r]
        そのおかげで眠りが深くなるかもだな。[p]
        [_tb_end_text]

        ;この日のみおの睡姦開始時のすやすや度+10／みおの尿意+30
        ;先生とみおの体力を+20
        [eval exp="f.suyasuyaGauge += 25" ]
        [eval exp="f.nyoui+=3" ]
        [calcHP HP="20"]
        [calcMioHP HP="20"]
        [messageON]

        ;　次の共通部へ



    ;----------------------------------------------
    ;----------------------------------------------
    ;分岐【選択肢】うねりタコ足
    [elsif exp="f.odenMenu == 'tako'" ]
        [CGSet layer="2" storage="EVcg/oden/04.png" name="still,oden4" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0021.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        生きてるみたいにくちの中でぷるぷるして、[r]
        おなかがポッポッしてきます[p]
        [_tb_end_text]

        ;みおの欲情【中】アップ
        ;先生とみおの体力を+20
        [plusMuramura level="middle"]
        [calcHP HP="20"]
        [calcMioHP HP="20"]
        [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #
        触手が暴れるような未知の触感と[r]
        身体が芯からあたたまってクラクラしてくる。[p]
        [_tb_end_text]

    [endif]
    ;----------


    ;【共通部】




    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="still" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
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

    [bgChange time="0"  method="crossfade"  storage="&f.beforeBG"  ]
    [mioHyoujou hyoujou="doya.png" time="0"]
    [addTime minutes=20]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;-------------------------
    ;【分岐】おでん屋台がはじめての場合
    [if exp="f.odenEv.total == 0" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0022.mp3"  ]
        [mioHyoujouSabun hyoujou="happy1.png"]
        [tb_start_text mode=3 ]
        #みお
        ごちそうさまでした[r]
        評判以上のすごいおでん屋さんでしたね！[p]
        [_tb_end_text]

        ;　→次の共通部へ

    ;-------------------------
    ;【分岐】おでん屋台が２回目以降の場合
    [else]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene6_0023.mp3"  ]
        [mioHyoujouSabun hyoujou="happy2.png"]
        [tb_start_text mode=3 ]
        #みお
        ごちそうさまでした[r]
        また来られてよかったです[p]
        [_tb_end_text]



        ;　→次の共通部へ
    [endif]
    ;-------------------------
    ;【共通部】

    [tb_start_text mode=3 ]
    #
    よし、じゃあ帰るか。[p]
    [_tb_end_text]

    ;　→散歩の既存の帰宅処理に合流（暗転して体力減って自宅玄関に）
    ;　　実際に動作を見て調子を整えるテキストなどを足す。
    [messageInvisible]
    [eval exp="f.odenEv.total++" ]

[endmacro]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;