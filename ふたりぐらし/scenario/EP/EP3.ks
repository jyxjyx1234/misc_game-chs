[macro name="EP3Ev" ]



    ;----------------------------------------------
    ;イベントの性質上、１シーンに基本絵２枚つかうぐらいのボリューム感のあるものとして
    ;構成した方がよいように思う。

    ;　■03出産直後
    ;　　・ID18_＜非エロスチル＞赤ちゃん生まれたて　病室
    ;　　・ID127　赤ちゃんへの授乳

    ;　　※前２つを同一基本絵の差分で補ってしまって、後半部は母乳シチュの微エロシーンにする？（スチルも？）
    ;　　　→まあ一応リアル授乳シチュの要望が来そうなので検討しておく、という程度だが、
    ;　　　　シーンの流れ的にはおっぱいは吸うけどエロエロアヘアヘな展開をする感じではないなぁ。


    ;　■シーン中の留意事項
    ;　　・台詞アリの登場キャラが「みお」と「みおの娘」の２名になる。
    ;　　　娘はシーンによって年齢感が変化する。
    ;　　　→今回は新生児（あかちゃん）


    ;　■解禁条件（仮）
    ;　　「01結婚式」と「02臨月期」を閲覧する。

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜導入部＞

    ;出産の瞬間はスチルを想定していないので、真っ暗画面とダイジェスト気味なテキストで出産まで駆け抜ける
    [bgChange storage="bk100.jpg" time="1"]
    [maskEnd]
    [messageON]


    [tb_start_text mode=3 ]
    #
    卒業したみおと結婚式を挙げ、[r]
    さらに妊娠がわかった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    将来への期待同様に膨らんでいく[r]
    みおのおなかを見守る日々は幸福でなごやかだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そして、そんなみおとの[r]
    “ふたりぐらし”が終わる日がやってきた。[p]
    [_tb_end_text]

    ;★★室内、昼のBGを表示
    [bgChange storage="room_m_o.png" time="100"]
    ;★★みお衣装設定をマタニティに
    [eval exp="f.cloth = 'matewear'" ]

    ;★★みお立ち絵表示：fuan.png
    [mioHyoujou hyoujou="fuan.png"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生[p]
    [_tb_end_text]

    ;★★みお立ち絵切替：komaruake4_red.png
    [mioHyoujouSabun hyoujou="komaruake4_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    破水、したかも……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    三人目の家族が生まれ出ようとしている。[p]
    [_tb_end_text]

    ;★★みお立ち絵切替：fuanaketojime4tear.png
    [mioHyoujouSabun hyoujou="fuanaketojime4tear.png"]   
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    病院、行か……ないと……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    タクシー、いや救急車？[r]
    自分がそばに居る時でよかった――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    病院にはなにを持参しなくては行けなくて[r]
    周囲への連絡云々は――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    頭の中を無数の言葉が駆け抜ける。[r]
    ありていに言って混乱していた。[p]
    [_tb_end_text]

    ;★★下記追加
    [messageInvisible]
    [wait  time="500"  ]
    [mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]
    ;★★追加はこれ終了

    [tb_start_text mode=3 ]
    #
    気がつくと分娩台の上のみおの手を握っていて。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0001.mp3"  ]

    [tb_start_text mode=3 ]
    #
    わんわんと鼓膜にひびくこの音が[r]
    きっと、みおと自分のこどもの産声で。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……そんな幽体離脱した視界のような現実感のなさで[r]
    我が子の誕生に立ち会っていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっと会えたね、わたしたちのあかちゃん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおのよろこびのにじんだ声だけが[r]
    リアルに感じられた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;＜前半部：赤ちゃん生まれたて 病室＞

    [tb_start_text mode=3 ]
    #
    お産に続く医師のチェックなどがあり、[r]
    その後にようやく分娩台から離れることができた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これから数日を過ごす院内の個室で、[r]
    やっと家族水入らずというやつだ。[p]
    [_tb_end_text]

    [fadeinbgm storage="BGM5_relax.mp3" time="6000" ]
    ;このへんでスチル表示。EP3_babyの【01】
    [setEP3BabyCG cg="01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    愛しい妻と、その妻と自分が成した子。[r]
    しあわせそのものの光景だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と、思う反面、声をかけづらくもある。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    この瞬間を壊したくない、とも思うし、[r]
    単に出産時になにもできなかったという後悔のためだ。[l]
    [_tb_end_text]


    [glink_center storage="EP/EP3.ks" target="EP3_1" text="……"]
    [s]
    *EP3_1
    ;スチル切替【02】
    [setEP3BabyCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生？　ぼーっとしてます[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP3BabyCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0008.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もしかして、なにもできなかったーって[r]
    気まずくて黙ってますか？[l]
    [_tb_end_text]


    [glink_left storage="EP/EP3.ks" target="EP3_2" text="正解です" ]
    [glink_right storage="EP/EP3.ks" target="EP3_3" text="（心が読めるのか！？）" ]
    [s]
    ;----------------------------------------
    ;選択肢分岐：正解です
    *EP3_2

    ;スチル切替【04】
    [setEP3BabyCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やった～[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    赤子を起こさいように、という[r]
    静かなはしゃぎ方だった。[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump storage="EP/EP3.ks" target="EP3_4" ]
    ;----------------------------------------
    ;選択肢分岐：（心が読めるのか！？）
    *EP3_3
    ;スチル切替【02】
    [setEP3BabyCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……？[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP3BabyCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    眉間にしわを作って……[r]
    赤ちゃんの寝顔のまねですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    思念が届いているわけではないようだ。[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump storage="EP/EP3.ks" target="EP3_4" ]
    ;----------------------------------------
    ;共通部
    *EP3_4

    ;スチル切替【04】
    [setEP3BabyCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    フォトウェディングのとき、[r]
    わたしがそうでしたから[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP3BabyCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    全部やってもらって、わたしは[r]
    言われるがままにしてるだけで……[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP3BabyCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うれしいなあ、ありがたいなあって[r]
    思いつつ、自分は見てるだけだったから[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP3BabyCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今の先生がもしかしたら[r]
    似たような気分なのかも、って[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうか、あの時もみおは[r]
    そんなふうに思っていたのか。[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP3BabyCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    合ってたみたいですね[p]
    [_tb_end_text]

    ;スチル切替【01】
    [setEP3BabyCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生がそばに居てくれるだけで[r]
    お産もがんばれました[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP3BabyCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    役に立てなかったなんて[r]
    思わないでくださいね[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP3BabyCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生が居てくれるだけで、[r]
    わたしはそれで救われているんですから[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みお……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0002.mp3"  ]
    ;スチル切替【06】
    [setEP3BabyCG cg="06" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あかちゃん……[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP3BabyCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よしよし、よく寝てたね[r]
    おなか空いて起きちゃったのかな？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    産声をあげた後は不安になるくらい[r]
    おとなしかったが……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    さっきまで眠っていたようで、[r]
    どうものんびりした気質の静かな子のようだ。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setEP3BabyCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっと……[r]
    おっぱいが出たらいいんだけど……[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setEP3BabyCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――わ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが声をあげた理由はすぐにわかった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    病院着の胸元に小さな染みが出来ている。[r]
    少量ながら、母乳が出たようだ。[p]
    [_tb_end_text]

    ;スチル切替【09】
    [setEP3BabyCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ、ひとの身体ってふしぎですね[r]
    こんなになるんだ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    本で読んだ限りでは産後数日して出るのが[r]
    一般的らしいが、みおは早い方かもな。[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setEP3BabyCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    昨日まで、先生がたくさんおっぱい[r]
    吸ってくれたから……でしょうか？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こっ、こどもの前でなんてことを！[p]
    [_tb_end_text]

    ;スチル切替【11】
    [setEP3BabyCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なにがあったか全部聞こえてますよ[r]
    ふふ、ずっとおなかの中に居たんだから[p]
    [_tb_end_text]



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0003.mp3"  ]
    ;スチル切替【12】
    [setEP3BabyCG cg="12" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setEP3BabyCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ごめんね、おっぱい少ないかもだけど[r]
    飲んでみようか[p]
    [_tb_end_text]

    ;※スチルとの整合が怪しいので、このセリフまるごとコメントアウト
    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0029.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;まだ目があいてないけどわかるかな？[r]
    ;――そう、そこをくわえて[p]
    ;[_tb_end_text]

    ;スチル切替【14】
    [setEP3BabyCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setEP3BabyCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふっ、ふふ[r]
    くすぐったくてヘンな感じ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    授乳の光景を眺めながら、[r]
    本当にみおが母親になったのだなと実感する。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自分が人の親になったということも意味するわけだが、[r]
    そっちの実感はまだ湧いてこない。[p]
    [_tb_end_text]



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0004.mp3"  ]
    ;スチル切替【16】
    [setEP3BabyCG cg="16" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……あかちゃん、[r]
    またウトウトしてきましたね[p]
    [_tb_end_text]

    ;スチル切替【15】
    [setEP3BabyCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    母乳、おなかいっぱいは出ないかもだけど、[r]
    吸ってるだけで安心するみたいです[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setEP3BabyCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    かわいいなぁ、[r]
    ほっぺがぷっくり[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setEP3BabyCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    目元なんか先生そっくりです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうかなぁ……[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setEP3BabyCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そういえば、名前ってどうしましょう？[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setEP3BabyCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    エコー検査でお医者さんが言ってた通りで[r]
    女の子でしたけど……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あの親切な女医さんだな。[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setEP3BabyCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    命名は先生に、ってお願いしてましたよね[r]
    考えておいてくれました？[p]
    [_tb_end_text]
    [eval exp="f.preBabyName = ''" ]
    ;☆「考えなおす」からのループ先
    *EP3_5

    [tb_start_text mode=4 ]
    #
    愛娘の名前は……[l]
    [_tb_end_text]


    [edit   name="f.preBabyName"  type="confirm"  initial="&f.preBabyName" left="550" top="400" ]
    [glink text="デフォルトネーム" target=*EP3_5_defaultSet size="20"  x="850" y="365" width="200" preexp="0"  exp="f.preBabyName = 'まな'"  color="btn_05_black_narrow"  clickse="se/s_kettei.mp3" cm="false"]
    [glink text="入力完了" target=*EP3_6 size="20" x="850" y="410" width="200" preexp="0"  exp="color"  color="btn_05_black_narrow"  clickse="se/s_kettei.mp3" cm="false"]
    [s]
    *EP3_5_defaultSet
    [eval exp="$('.text_box').remove()" ]
    [eval exp="$('.glink_button').remove()" ]

    [edit   name="f.preBabyName"  type="confirm"  initial="&f.preBabyName" left="550" top="400" ]
    [glink text="デフォルトネーム" target=*EP3_5_defaultSet size="20"  x="850" y="365" width="200" preexp="0"  exp="f.preBabyName = 'まな'"  color="btn_05_black_narrow"  clickse="se/s_kettei.mp3" cm="false"]
    [glink text="入力完了" target=*EP3_6 size="20" x="850" y="410" width="200" preexp="0"  exp="color"  color="btn_05_black_narrow"  clickse="se/s_kettei.mp3" cm="false"]
    [s]

    ;↑を維持したまま文字入力ウィンドウ展開。必要ならテキストタグ修正。
    ;入力後↓。以降入力テキストを＠＠と仮に書くので適宜置き換え
    *EP3_6

    ;スチル切替【17】
    [commit]
    [cm]
    [iscript]
        const symbolPattern = /[!@#$%^&*()_+={}\[\]:;"'<>,.?\/\\|~`]/g;
        // テキスト内の記号を空文字列に置換
        f.preBabyName = f.preBabyName.replace(symbolPattern, '');
    [endscript]

    [setEP3BabyCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    「[emb exp="f.preBabyName" ]」……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    愛娘の名前は「[emb exp="f.preBabyName" ]」、これでいいかな？[l]
    [_tb_end_text]


    [glink_left storage="EP/EP3.ks" target="EP3_7" text="これで決める" ]
    [glink_right storage="EP/EP3.ks" target="EP3_5" text="考えなおす" ]
    [s]

    *EP3_7
    [eval exp="f.babyName = f.preBabyName" ]
    [eval exp="sf.babyName = f.preBabyName" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0005.mp3"  ]
    ;スチル切替【16】
    [setEP3BabyCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、はしゃいでますよ、先生[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おっぱいをもらいながらとは器用な子だ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    [emb exp="f.babyName" ]のきげんも落ち着いたから、と[r]
    みおが服を直す。[p]
    [_tb_end_text]

    ;スチル切替【19】
    [setEP3BabyCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あかちゃんもお名前、気に入ったみたいです[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setEP3BabyCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんな子になって欲しい――とか、[r]
    そういう願いがこもった名前なんですよね[p]
    [_tb_end_text]

    ;スチル切替【19】
    [setEP3BabyCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    落ち着いたころに、ゆっくり由来とか[r]
    聞かせてくださいね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうだな、今日は潮時かもしれない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    面会に制限はないが、[r]
    出産直後のみおは重傷者同然の状態だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    眠れるうちに寝た方がいいし、こちらはこちらで[r]
    出生届うんぬんの諸手続きに奔走することとなる。[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [setBK]

    [tb_start_text mode=3 ]
    #
    いったん帰り支度をする背後では[r]
    みおが娘にやさしく話しかけていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    [emb exp="f.babyName" ]……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おとうさんとおかあさんが[r]
    あなたにどんなに会いたかったか――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これからいっぱい聞かせてあげるね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おうちに帰れたらおとうさんが作ってくれた[r]
    ベビーベッドとメリーを見せてあげる[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ、楽しみだね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……――ぁ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……？[p]
    [_tb_end_text]


    ;スチル切替【21】
    [setEP3BabyCG cg="21" time="1"]
    [deleteBK]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、わたしたち、[r]
    おとうさんとおかあさんになりましたので……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    はい。[p]
    [_tb_end_text]


    ;スチル切替【22】
    [setEP3BabyCG cg="22" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生はおとうさん先生になるんですね[p]
    [_tb_end_text]


    ;スチル切替【21】
    [setEP3BabyCG cg="21" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0052.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あらためてよろしくお願いします[r]
    おとうさん先生[l]
    [_tb_end_text]


    [glink_center storage="EP/EP3.ks" target="EP3_8" text="ああ、よろしく" ]
    [s]
    *EP3_8
    ;スチル切替【19】
    [setEP3BabyCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0053.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    はい――それじゃあいってらっしゃいませ[l]
    [_tb_end_text]


    [glink_center storage="EP/EP3.ks" target="EP3_9" text="いってきます" ]
    [s]
    *EP3_9

    [tb_start_text mode=3 ]
    #
    笑顔の妻と娘に見送られ、病室を出る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これからの“さんにんぐらし”のため、[r]
    自分は自分のできることをやっていくのだ。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    ;スチル切替【bk100】
    [setBK]
    [free layer="2" name="still" ]

    ;------------
    ;＜後半部＞
    *EP3_10

    ;※みおの母乳を飲ませてもらう微エロシーンをスチル付きで追加？
    ;　無くても成立するので、いったんここでシーンを終えて、後付けすることになったら
    ;　別日とかにシチュエーションを仕切り直して続けて下に書く想定。

    ;★ここからスチルはフォルダ「EP3_baby2」参照

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それから３，４日経ったころ、[r]
    病室を訪れると娘は深く眠っていた。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_baby0001.mp3"  ]

    ;★スチル表示01
    [setEP3Baby2CG cg="01" time="1"]
    [deleteBK time="500"]


    [fadeinbgm storage="BGM1_evening.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今おっぱいをおなかいっぱい飲んで[r]
    眠ったところなんですよ[p]
    [_tb_end_text]

    ;★下記テキスト追加
    [tb_start_text mode=3 ]
    #
    壁際のベビーベッドに寝かされて[r]
    愛娘はすやすやと寝息を立てている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    愛らしい寝顔を取り合えず撮影しておく。[r]
    この数日で何百枚撮ったかわからない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    母子ともに経過は良好で、[r]
    このぶんならそろそろ退院できるそうだ。[p]
    [_tb_end_text]


    ;★スチル切替02
    [setEP3Baby2CG cg="02"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生、疲れたお顔[p]
    [_tb_end_text]


    ;★スチル切替03
    [setEP3Baby2CG cg="03"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    赤ちゃんお迎えできるように、たくさん[r]
    いろんなことしてくれてるんですよね[p]
    [_tb_end_text]


    ;★スチル切替02
    [setEP3Baby2CG cg="02"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0057.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ごはんとか、食べられてますか？[r]
    入院前に日持ちする作り置きはしましたけど[l]
    [_tb_end_text]


    [glink_left storage="EP/EP3.ks" target="EP3_11" text="手続きとか模様替えがちょっと大変ですね" ]
    [glink_right storage="EP/EP3.ks" target="EP3_12" text="ごはんなら美味しくいただいてるよ" ]
    [s]
    ;---------------------------------------
    ;選択肢分岐：手続きとか模様替えがちょっと大変ですね
    *EP3_11


    ;★スチル切替04
    [setEP3Baby2CG cg="04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そういうの全部、いつも[r]
    黙ってやってくれてるんですよね[p]
    [_tb_end_text]


    ;★スチル切替02
    [setEP3Baby2CG cg="02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たぶんわたしが気づいてないだけで[r]
    いろんなことしてもらってて[p]
    [_tb_end_text]


    ;★スチル切替01
    [setEP3Baby2CG cg="01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます[r]
    いままでとこれからの全部……[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump storage="EP/EP3.ks" target="EP3_13" ]
    ;---------------------------------------
    ;選択肢分岐：ごはんなら美味しくいただいてるよ
    *EP3_12


    ;★スチル切替01
    [setEP3Baby2CG cg="01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よかった[p]
    [_tb_end_text]


    ;★スチル切替04
    [setEP3Baby2CG cg="04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしは病院食ですけど、[r]
    先生にはわたしのごはん食べててほしくて[p]
    [_tb_end_text]


    ;★スチル切替02
    [setEP3Baby2CG cg="02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……これって独占欲なんでしょうか？[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump storage="EP/EP3.ks" target="EP3_13" ]
    ;---------------------------------------
    ;共通部
    *EP3_13

    ;★スチル切替05
    [setEP3Baby2CG cg="05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうだ、先生――[p]
    [_tb_end_text]


    ;★SE追加　[playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    ;★スチル切替で、スチルとしてbk100表示
    [playse volume="100" buf="1" storage="se/kinuzure1.mp3"]
    [setBK time="500"]
    [tb_start_text mode=3 ]
    #
    こっちこっちと手招きされ、[r]
    近づくと、甘い香りに包まれた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおがこちらの頭を抱いてくれている。[p]
    [_tb_end_text]

    ;★スチル切替06
    [setEP3Baby2CG cg="06" time="1"]
    [deleteBK time="500"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    よしよし[p]
    [_tb_end_text]


    ;★スチル切替07
    [setEP3Baby2CG cg="07"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    甘い匂いしますよね[r]
    これ、赤ちゃんの匂いですよ[p]
    [_tb_end_text]

    ;★スチル切替06
    [setEP3Baby2CG cg="06"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0067.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ずっと抱いてたからわたしにも[r]
    移っちゃって[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そういえば新生児は愛着形成のために[r]
    独特の良い匂いがすると本にあったなぁ。[p]
    [_tb_end_text]

    ;★スチル切替で、スチルとしてbk100表示
    [setBK time="500"]

    [tb_start_text mode=3 ]
    #
    確かにいい匂いで安心するが……[r]
    また別の甘い香りも漂ってきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    するりとみおが身を離す。[r]
    病院着の胸元が濡れている。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱい、滲んできちゃいました[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0069.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    昨日あたりからすごく出がよくなって[r]
    赤ちゃんのためには良いことなんですけど[p]
    [_tb_end_text]

    ;★下記暗転指示撤回（もうちょっと早いタイミングで画面をbk100にしているので、それをそのまま続ける）
    ;このへんで暗転


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;★スチル切替08
    [setEP3Baby2CG cg="08" time="1"]
    [deleteBK time="500"]

    [tb_start_text mode=3 ]
    #
    気がつけば、胸元を拭こうとはだけられた[r]
    みおの乳首に吸い寄せられていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0070.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わわっ[p]
    [_tb_end_text]


    ;★スチル切替09
    [setEP3Baby2CG cg="09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生もおっぱいちゅいちゅいしたく[r]
    なっちゃいましたか？[p]
    [_tb_end_text]


    ;★スチル切替10
    [setEP3Baby2CG cg="10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いいですよ、飲んじゃっても[r]
    わたしも助かるので[p]
    [_tb_end_text]

    ;★下記撤回
    ;このへんでスチル表示

    [tb_start_text mode=3 ]
    #
    寝かしつけのリズムでみおがトントンと[r]
    背中や頭をさすってくれる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    乳首からじわりじわりと湧いてくる母乳は[r]
    甘く、独特の風味だった。[p]
    [_tb_end_text]


    ;★スチル切替09
    [setEP3Baby2CG cg="09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0073.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うん、えらいえらい[p]
    [_tb_end_text]


    ;★スチル切替11
    [setEP3Baby2CG cg="11"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0074.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    上手に吸ってもらえると[r]
    わたしも助かります[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    赤子というより樹液をすする虫の気分だ。[r]
    人間らしい思考が溶けていくのが心地よい。[p]
    [_tb_end_text]


    ;★スチル切替10
    [setEP3Baby2CG cg="10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0075.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    疲れてたんですよ、先生[p]
    [_tb_end_text]


    ;★スチル切替09
    [setEP3Baby2CG cg="09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0076.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おとうさんにならなくちゃ、って[r]
    きっと知らず知らずに気を張ってたんです[p]
    [_tb_end_text]


    ;★スチル切替08
    [setEP3Baby2CG cg="08"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0077.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしもおなじような感じだったと思いますけど、[r]
    [emb exp="f.babyName"]――あの子が助けてくれました[p]
    [_tb_end_text]


    ;★スチル切替11
    [setEP3Baby2CG cg="11"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0078.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちっちゃくてやわらかくて、かわいくて[p]
    [_tb_end_text]


    ;★スチル切替10
    [setEP3Baby2CG cg="10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0079.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そこに居てくれるだけで[r]
    しあわせな気分になれて……[p]
    [_tb_end_text]


    ;★スチル切替08
    [setEP3Baby2CG cg="08"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0080.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こどもが大きくなったらいつかお手伝いとか[r]
    してくれるのかなって思ってましたけど[p]
    [_tb_end_text]


    ;★スチル切替09
    [setEP3Baby2CG cg="09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0081.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    生まれた時からもう、[r]
    あの子からはパワーをもらっちゃったんです[p]
    [_tb_end_text]


    ;★スチル切替11
    [setEP3Baby2CG cg="11"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0082.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    さんにんだから、みんなで[r]
    そうやって支え合えるんです[p]
    [_tb_end_text]


    ;★スチル切替10
    [setEP3Baby2CG cg="10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0083.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生もひとりで背負い込みすぎないで[r]
    くださいね[p]
    [_tb_end_text]


    ;★スチル切替09
    [setEP3Baby2CG cg="09"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0084.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしが先生に甘えるのとおんなじに、[r]
    先生もいつでも甘えてきてください[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みお……[p]
    [_tb_end_text]


    ;★スチル切替11
    [setEP3Baby2CG cg="11"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0085.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だいじょうぶですよ[p]
    [_tb_end_text]


    ;★スチル切替10
    [setEP3Baby2CG cg="10"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0086.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いろいろ大変なこともあるでしょうけど[r]
    わたしも精一杯がんばります[p]
    [_tb_end_text]


    ;★スチル切替08
    [setEP3Baby2CG cg="08"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0087.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうしたらきっと、楽しい思い出ばっかりで[r]
    いつの間にか何十年って過ぎちゃってるんです[p]
    [_tb_end_text]


    ;★スチル切替11
    [setEP3Baby2CG cg="11"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene3_0088.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしはもうとってもしあわせですけれど[r]
    まだまだしあわせになれますよ、先生[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    じんわりとしたあたたかさを感じながら、[r]
    まぶたがすっと落ちていった。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    ;★スチル切替でスチルとしてbk100
    [setBK time="500"]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


[endmacro]
