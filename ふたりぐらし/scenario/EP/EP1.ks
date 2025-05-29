

;残タスク
;　BGM
;　SE
;　BGV／BGS
;　射精時演出
;　画面効果など

;　回想スタート設定項目


;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0001.mp3"  ]


;結婚式場背景：EPbg_01.png

;式場の鐘の音：kekkon_kane01


;----------------------------------------------


;イベントの性質上、１シーンに基本絵２枚つかうぐらいのボリューム感のあるものとして
;構成した方がよいように思う。

;　■01結婚式
;　　・ID94_＜非エロスチル＞結婚式
;　　　→立ち絵のウェディングドレスも用意するので、スチルになる部分は「誓いのキス」を想定する。

;　　・ID無_ウェディングドレス姿のエッチ
;　　　→これはまあ濡れ場に入ったらずっとこの絡みスチルが出っぱなし、という具合だろう。
;　　　　回想のみのシーンなので、途中で出てくる選択肢でみおがこの時点で処女かどうかを改めて選ぶ。


;　参考資料：キリスト教の神前式の流れ
;　　https://zexy.net/mar/manual/kiso_style/chapter1.html


;　新郎衣装をタキシードと書いているが、厳密にはいろいろある模様
;　　https://www.withawish.jp/column/detail.html?pg=805


;　■解禁条件（仮）
;　　好感度が一定以上（けっこう高い）かつED到達
;　　※ED到達後に好感度が必要値に達する、必要値ある状態でEDを発生させる、どちらでもOK

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;＜前半部：結婚式＞
[macro name="EP1Ev" ]
    ;シーン回想からのみの開始。
    ;★下記SE追加
    [playse storage="se/kekkon_kane01.mp3" buf="1" ]
    ;シーン回想→シーン切り替えのための暗転がゆっくりあけると、
    ;セピア色のフィルターをかけたオフィス街BG（kaisya_m.jpg）
    [bgChange storage="kaisya_m.jpg" time=1]
    [filter layer="base" sepia="100" ]
    [setButtonInTalk]
    [maskEnd time="1000"]

    [messageON]
    [tb_start_text mode=3 ]
    #
    自宅と職場を往復するだけの日々――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    不幸というほど欠けてもいないが、[r]
    とくに生の実感もない自動的な毎日。[p]
    [_tb_end_text]


    ;出会いスチルを使った適当な演出
    [image layer="1" name="still" storage="EVcg/deai01.png" time="1000" y="-200"]

    [tb_start_text mode=3 ]
    #
    そんなくすんだ生活を[r]
    輝かしく塗り替える出会いがあった。[p]
    [_tb_end_text]


    ;ジェットコースターのときのように　yuugu_ride_sora.png　の下部を表示し、一気に上方へカメラ移動
    [image layer="1"  time="300"  method="crossfade" name="sora" storage="../bgimage/yuugu_ride_sora.png" height="3200" top="-1760" ]
    [free_filter]
    [anim name="sora" top="+=1500" time="1500" effect="easeOutSine" ]
    [WAIT]
    [tb_start_text mode=3 ]
    #
    それからのふたりぐらしの日々は[r]
    明るく、楽しく、あっという間に過ぎていった。[p]
    [_tb_end_text]
    [wa]
    [WAIT]

    ;カメラ(青空画面)が下に移動しつつフェード切り替えで教会（結婚式場）のBGに。
    [anim name="sora" top="-=1500" time="2000" effect="easeOutSine" ]
    [WAIT]
    [image layer="2" storage="../bgimage/EPbg_01.png" time="1500" ]
    [freeimage layer="1" ]
    [bgChange storage="EPbg_01.png" time=1]
    [freeimage layer="2" ]


    [tb_start_text mode=3 ]
    #
    そして今日だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この日の自分が、人生でいちばん――[r]
    いや、世界でいちばん幸せだと確信できる。[p]
    [_tb_end_text]


    ;SE再生　kekkon_kane01
    [playse storage="se/kekkon_kane01.mp3" buf="1"  ]

    [tb_start_text mode=3 ]
    #
    式場スタッフが「そろそろですよ」と[r]
    遠くからしぐさで伝えてくる。[p]
    [_tb_end_text]


    ;ごくりSE、BGをbk100.jpgへ
    [playse storage="se/gokuri.mp3" buf="1"  ]
    [bgChange storage="bk100.jpg" time=300]

    [tb_start_text mode=3 ]
    #
    目を閉じ、冷静になるんだと[r]
    自身に言い聞かせる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    だって鼓動が早すぎる。[r]
    死んでしまいそうだ。[p]
    [_tb_end_text]


    ;ドアSE
    [playse storage="se/door_akesime.mp3" buf="1"  ]

    [tb_start_text mode=3 ]
    #
    ゆったりとドアの開く音がホールに響き、[r]
    あるかなきかの小さな足音が近づいてくる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]
    ;★　[fadeinbgm storage="BGM13_love.mp3" time="6000" ]
    [fadeinbgm storage="BGM13_love.mp3" time="6000" ]
    ;みおウェディングドレス姿立ち絵で表示。素材が無いので、まず立ち絵ナシ状態で設定
    [eval exp="f.cloth = 'weddingdress'" ]
    ;☆立ち絵【3】
    ;[mioHyoujou hyoujou="1.png"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――先生[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ッ……！[p]
    [_tb_end_text]

    ;☆スチルとしてbk100表示し、いったん画面を隠す
    [setBK time="200"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ヘアメイクとかいろいろしてもらって[r]
    時間かかっちゃいました[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、そのおかげでとっても[r]
    すてきにしてもらえたんですよ[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0004.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……？[r]
    目、閉じてるんですか？[l]
    [_tb_end_text]



    [glink_left storage="EP/EP1.ks" target="EP1Ev_1" text="なんか、もったいなくて"]
    [glink_right storage="EP/EP1.ks" target="EP1Ev_2" text="だって、緊張がすごくて"]
    [s]
    ;---------------------------------------------
    ;選択肢分岐：なんか、もったいなくて
    *EP1Ev_1

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ……どんなに見たってわたしは[r]
    居なくなったりしませんよ？[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_3" ]
    ;---------------------------------------------
    ;選択肢分岐：だって、緊張がすごくて
    *EP1Ev_2

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それはわたしもおなじ気持ちなので[r]
    よくわかりますけども……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_3" ]
    ;---------------------------------------------
    ;共通部
    *EP1Ev_3

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ね、先生[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしが人生でいちばんきれいなところ、[r]
    きちんと見てください[p]
    [_tb_end_text]

    ;☆下記、maskではなく、スチル扱いのbk100消去で対応。その前にみお立ち絵を【4】へ瞬間切り替えしておく
    ;暗転し、ゆっくり暗転解除すると式場BGにウェディングドレス姿のみお立ち絵
    [mioHyoujou hyoujou="4.png" time="1"]
    [bgChange storage="EPbg_01.png" time=1]
    [deleteBK time="2000"]
    [tb_start_text mode=3 ]
    #
    ウェディングドレス姿のみおがそこに居た。[p]
    [_tb_end_text]

    ;☆立ち絵【3_red】
    [mioHyoujouSabun hyoujou="3_red.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0009.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……[l]
    [_tb_end_text]



    [glink_left storage="EP/EP1.ks" target="EP1Ev_4" text="きれいだよ"]
    [glink_right storage="EP/EP1.ks" target="EP1Ev_5" text="かわいいよ"]
    [s]
    ;---------------------------------------------
    ;選択肢分岐：きれいだよ
    *EP1Ev_4

    ;☆立ち絵【4】
    [mioHyoujouSabun hyoujou="6.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます[p]
    [_tb_end_text]

    ;☆立ち絵【7】
    [mioHyoujouSabun hyoujou="7.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生も白いタキシード姿、[r]
    とってもかっこいいですよ[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_6" ]
    ;---------------------------------------------
    ;選択肢分岐：かわいいよ
    *EP1Ev_5

    ;☆立ち絵【17】
    [mioHyoujouSabun hyoujou="17.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きれいなわたしを見てください、[r]
    って言ったのに……むぅ……[p]
    [_tb_end_text]


    ;☆立ち絵【2】
    [mioHyoujouSabun hyoujou="2.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    まだわたしのことこどもだと[r]
    思ってますか？[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_6" ]
    ;---------------------------------------------
    ;共通部
    *EP1Ev_6

    ;☆立ち絵【8】
    [mioHyoujouSabun hyoujou="8.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――ふふっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    じゃれあうような軽口で[r]
    緊張がやっと抜けてきた気がする。[p]
    [_tb_end_text]


    ;☆立ち絵【4】
    [mioHyoujouSabun hyoujou="6.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    頼んでよかったですね、フォトウェディング[p]
    [_tb_end_text]


    ;☆立ち絵【9】
    [mioHyoujouSabun hyoujou="9.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生も忙しかったはずなのに[r]
    手配とか全部やってくれてありがとうございます[p]
    [_tb_end_text]


    ;☆立ち絵【14】
    [mioHyoujouSabun hyoujou="14.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    学校卒業してすぐ籍だけ入れちゃって[r]
    式とかしないまま来ちゃって――[p]
    [_tb_end_text]


    ;☆立ち絵【15】
    [mioHyoujouSabun hyoujou="15.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それでもぜんぜんよかったんですけど[p]
    [_tb_end_text]


    ;☆立ち絵【16_red】
    [mioHyoujouSabun hyoujou="16_red.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなお姫様みたいなドレス、[r]
    わたしが着られるなんて思いませんでした[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……うん。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおにとっての一時しのぎのようなふたりぐらしを[r]
    “ずっと”続くものとして。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ごく自然な流れで、みおの卒業と同時に[r]
    入籍だけは済ませていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおの卒業後の進路どうこうでの[r]
    バタバタなんかが続き――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ずいぶん待たせてしまったが、[r]
    フォトウェディングという形で式を叶えたのだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    自分たちらしいいつもの姿を、との要望どおり[r]
    自然体で居るところをカメラマンが撮影している。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その間、新郎新婦である我々は[r]
    参列者なしのままごとのような挙式を行うのだ。[p]
    [_tb_end_text]


    ;☆立ち絵【18】
    [mioHyoujouSabun hyoujou="18.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    指輪……[p]
    [_tb_end_text]

    ;☆立ち絵【17】
    [mioHyoujouSabun hyoujou="17.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もらってから外したことなかったから、[r]
    スース―します[p]
    [_tb_end_text]


    ;☆立ち絵【16】
    [mioHyoujouSabun hyoujou="16.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    薬指がさみしいなぁって[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    結婚指輪は入籍してすぐ贈ってあって、[r]
    以来ずっと左手の薬指を飾っていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それを挙式のためにいったん外して[r]
    預けているのだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおの言うとおり、なんだか心もとない。[p]
    [_tb_end_text]


    ;☆立ち絵【11_red】
    [mioHyoujouSabun hyoujou="11_red.png" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁ……――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    話しているうちに老神父が到着したようだった。[p]
    [_tb_end_text]


    ;スチル表示。EP1_wedding【01】誓いの口上ウンヌンの様子
    ;☆スチル下の立ち絵消去しておく。今回の追加分ここまで
    [setEP1WeddingCG cg="01" ]
    [chara_hide_all time="1" ]

    [tb_start_text mode=3 ]
    #
    ……神父が前口上を述べはじめる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    イメージ通りのいかにものやつで、[r]
    なんだか感動すら覚える。[p]
    [_tb_end_text]

    ;プレイヤーネームについて
    ;セーブデータごとの管理のため、現在の処理では参照できない
    ;ED到達時にプレイヤーネームをシステム変数に更新するのが丸い？要確認
    ;また、名字のみ設定していて、名前が未設定の場合どうするかなども確認が必要
    [if exp="sf.playerName == undefined" ]
        [eval exp="tf.playerName = ''" ]
    [else]
        [eval exp="tf.playerName = sf.playerName" ]
    [endif]

    [tb_start_text mode=3 ]
    #
    新郎[emb exp="tf.playerName" ]――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    病めるときも健やかなるときも――[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    彼女への変わらぬ愛を誓いますか？[l]
    [_tb_end_text]


    [glink_center storage="EP/EP1.ks" target="EP1Ev_7" text="誓います" ]
    [s]

    *EP1Ev_7
    [tb_start_text mode=3 ]
    #
    新婦みお――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    病めるときも健やかなるときも――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    彼への変わらぬ愛を誓いますか？[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP1WeddingCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、誓います[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setEP1WeddingCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    神父にうながされ、指輪の交換に。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    こちらからみおに指輪をはめ、[r]
    それからみおが指輪をこちらにはめてくれる。[p]
    [_tb_end_text]



    ;スチル切替【04】
    [setEP1WeddingCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おかえり[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおは自身の手に戻った指輪を[r]
    いつくしむように撫でながら小さくこぼした。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そんなみおの様子を目にすると、[r]
    いとおしさが一挙にあふれ出てくる。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    次に控えるのはウエディングキスで、[r]
    人前じゃ恥ずかしいとかいう気持ちも吹き飛んだ。[l]
    [_tb_end_text]


    [glink_center storage="EP/EP1.ks" target="EP1Ev_8" text="みお" ]
    [s]

    *EP1Ev_8
    [tb_start_text mode=3 ]
    #
    抱きつくように距離を詰める。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    段取りを逸脱していたが、[r]
    神父も黙って下がっていった。[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setEP1WeddingCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの……[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setEP1WeddingCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしにとって先生は先生だから、[r]
    ずっと先生呼び、でしたけど……[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setEP1WeddingCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0029.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    こういう時ぐらいは[r]
    それらしい言い方のほうがいい、ですか？[l]
    [_tb_end_text]


    [glink target="EP1_9" text="“あなた”と呼んで" x="100" y="400" width="250" size="20" color="btn_05_black" exp="tf.select = 1" ]
    [glink target="EP1_10" text="“旦那様”と呼んで" x="370" y="400" width="250" size="20" color="btn_05_black" exp="tf.select = 2"]
    [glink target="EP1_11" text="“ご主人様”と呼んで" x="640" y="400" width="250" size="20" color="btn_05_black" exp="tf.select = 3"]
    [glink target="EP1_12" text="“先生”のままでいい" x="910" y="400" width="250" size="20" color="btn_05_black" exp="tf.select = 4"]
    [s]

    ;スチル切替【04】
    ;下記、選んだ選択肢に対応するテキスト１つを表示

    *EP1_9
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0030.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――はい、あなた[l]
    [_tb_end_text]
    [jump storage="EP/EP1.ks" target="EP1_13" ]
    *EP1_10
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0031.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――はい、旦那様[l]
    [_tb_end_text]
    [jump storage="EP/EP1.ks" target="EP1_13" ]
    *EP1_11
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0032.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――はい、ご主人様[l]
    [_tb_end_text]
    [jump storage="EP/EP1.ks" target="EP1_13" ]
    *EP1_12
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0033.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ――はい、先生[l]
    [_tb_end_text]
    [jump storage="EP/EP1.ks" target="EP1_13" ]

    *EP1_13
    [glink_center storage="EP/EP1.ks" target="EP1Ev_14" text="ウエディングキスをする" ]
    [s]
    *EP1Ev_14
    ;スチル切替【bk100】
    [setBK time="500"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setEP1WeddingCG cg="03" time="1"]
    [deleteBK time="500"]
    [WAIT]
    ;スチル切替【01】
    [setEP1WeddingCG cg="01" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……[r]
    ありがとうございます[p]
    [_tb_end_text]


    ;スチル切替【04】
    [setEP1WeddingCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これでわたしたち、[r]
    本当に本当の夫婦になったんですね[p]
    [_tb_end_text]



    ;スチル切替【06】
    [setEP1WeddingCG cg="06" time="300"]
    ;下記、選んだ選択肢に対応するテキスト１つを表示

    [if exp="tf.select == 1" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0038.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        愛してます、あなた[r]
        ずっと、ずぅっと……[p]
        [_tb_end_text]

    [elsif exp="tf.select == 2" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        愛してます、旦那様[r]
        ずっと、ずぅっと……[p]
        [_tb_end_text]

    [elsif exp="tf.select == 3" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0040.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        愛してます、ご主人様[r]
        ずっと、ずぅっと……[p]
        [_tb_end_text]

    [elsif exp="tf.select == 4" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        愛してます、先生[r]
        ずっと、ずぅっと……[p]
        [_tb_end_text]

    ;ゆっくり暗転
    [endif]
    ;★　[fadeoutbgm2 time="6000" ]
    [fadeoutbgm2 time="6000" ]
    [maskStart time="2000"]

        ;＜後半部：ウェディングドレスえっち＞

        ;ゆっくり暗転があけるとbk100のBGで立ち絵も消去された真っ黒画面
        ;これ以降のスチル表示はEP1_dressHのスチルを指します。
        [free layer="2" name="still" ]
        [bgChange storage="bk100.jpg" time=1]
        [WAIT]
    [maskEnd time="1000"]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;SE再生　kekkon_kane01
    [playse storage="se/kekkon_kane01.mp3" buf="1" ]

    [tb_start_text mode=3 ]
    #
    挙式が終わり、新郎新婦で[r]
    おなじ控室に通された。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そこでがまんできなくなったと言うべきか、[r]
    そこまでよく耐えたと言うべきか。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……ぁ、ぁ……[r]
    せん、せ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁっ[p]
    [_tb_end_text]
    ;★　[fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    ;スチル表示【01】
    ;スカートをはだけてる立ちバックっぽい形がいちばん構造をごまかしながら
    ;それらしく描けるのではないかと思う。
    [setEP1DressHCG cg="01" time="1000"]

    [tb_start_text mode=3 ]
    #
    ふたりきりになるなり、[r]
    花嫁姿のみおを押し倒したのだった。[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setEP1DressHCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――みおも濡れている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    このドレスをはだけさせるのだって[r]
    みおの方が抵抗していたら不可能だった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおも、この行為を望んでいるのだ。[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP1DressHCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だ、だって……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP1DressHCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    誓いのキス、あんなにえっちに[r]
    されるなんて思わなかったし……[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP1DressHCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    神様の前でするキスなのに、[r]
    あんな、あんな……はずかしい……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP1DressHCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それで先生がすごく興奮してるのが[r]
    わたしにまで伝わってきちゃって[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP1DressHCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0049.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あんなことされたら[r]
    わたしだって、こうなっちゃいますよぅ[l]
    [_tb_end_text]

    [glink_center storage="EP/EP1.ks" target="EP1Ev_15" text="みお――" ]
    [s]
    *EP1Ev_15
    ;スチル切替【bk100】
    [setBK time="500"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生……んっ、んんぅ、[r]
    んぁぁ……ふ、っくぅぁ……ぁむぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの顔じゅうに何度も何度もキスをする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    神様の前ではできない[r]
    もっともっと淫靡なキスを。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP1DressHCG cg="04" time="1"]
    [deleteBK time="500"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……っ……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP1DressHCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    キス、だけなのに、[r]
    ぜんしん、ぞわぞわってぇ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    口付けしながら行為の“先”へ[r]
    進めようと手を這わせる。[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP1DressHCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んん～――ッ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが目だけで「本当に？」と[r]
    訴えかけてくるのがわかった。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ここは休憩用に通された控え室で、[r]
    互いの衣装はレンタル品――当然の心配だ。[l]
    [_tb_end_text]


    [glink_left storage="EP/EP1.ks" target="EP1Ev_16" text="いいよ、ドレスは買い取る" ]
    [glink_right storage="EP/EP1.ks" target="EP1Ev_17" text="スタッフの様子的に大丈夫" ]
    [s]
    ;-----------------------------------
    ;選択肢分岐：いいよ、ドレスは買い取る
    *EP1Ev_16
    ;スチル切替【03】
    [setEP1DressHCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    買い取る、って……[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP1DressHCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなすてきなドレス、[r]
    すごいお値段するんじゃあ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だいじな思い出の品なのだ。[r]
    いくら出したって惜しくはない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    元々、みおとの思い出づくりのためにしか[r]
    出費は無いような生活だったし。[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_18" ]
    ;-----------------------------------
    ;選択肢分岐：スタッフの様子的に大丈夫
    *EP1Ev_17

    ;スチル切替【03】
    [setEP1DressHCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だいじょうぶって……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だって、わざわざ「１時間はだれもこないので！」[r]
    みたいなことを言って去ったし。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    褒められたことではないのかもしれないが[r]
    理解あるスタッフが便宜をはかってくれたと思う。[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_18" ]
    ;-----------------------------------
    ;共通部
    *EP1Ev_18

    ;スチル切替【04】
    [setEP1DressHCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そういうことだとしても[r]
    皆さんにご迷惑がかからないようにですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ――慎重に、しかし、[r]
    やることはしっかりやるぞ。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setEP1DressHCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうじゃなくてぇぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とはいうものの、[r]
    みおに本気で抵抗する気はない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    手足はちからなく委ねられているし、[r]
    下着の染みはさらに広がっている。[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP1DressHCG cg="07" time="300"]
    [tb_start_text mode=3 ]
    #
    引き抜くと、びっくりするほどの[r]
    熱気と水音が解き放された。[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setEP1DressHCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP1DressHCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう、です……わたしだって興奮してて……[r]
    すごく、シたくて……[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setEP1DressHCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だめなのに、だめだって思うほど[r]
    止まらなくて[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP1DressHCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だめな理由いっぱい考えてみても、[r]
    でも今先生に抱いてもらうことが大事に思えて[p]
    [_tb_end_text]

    ;スチル切替【09】
    [setEP1DressHCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だから、どうしていいかわからないのに[r]
    おまたはこんなになっちゃって[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setEP1DressHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0064.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    せっかくのお嫁さんが[r]
    こんなわたしでいいんでしょうか……？[l]
    [_tb_end_text]



    [glink_left storage="EP/EP1.ks" target="EP1Ev_19" text="今ここで、みおの処女が欲しい"]
    [glink_right storage="EP/EP1.ks" target="EP1Ev_20" text="今までしたどんなえっちよりもすてきだよ"]
    [s]
    ;------------------------
    ;選択肢分岐：今ここで、みおの処女が欲しい
    *EP1Ev_19
    [eval exp="f.virginFlag = true" ]
    ;こっちの選択肢を選んだ場合、みおの処女フラグを立てる。
    ;あとで処女時の追加テキストがある。

    ;スチル切替【11】
    [setEP1DressHCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……[r]
    そっか、このときのためだったんですね……[p]
    [_tb_end_text]

    ;スチル切替【12】
    [setEP1DressHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だいじにしてもらってるのはわかっても[r]
    卒業した後も、そういうことがなくて[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setEP1DressHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0067.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    少し不安に思うこともあったんですけど[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setEP1DressHCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    式の後にわたしのはじめてを[r]
    もらってくれるつもりだったんですね[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_21" ]
    ;------------------------
    ;選択肢分岐：今までしたどんなえっちよりもすてきだよ
    *EP1Ev_20
    [eval exp="f.virginFlag = false" ]
    ;スチル切替【10】
    [setEP1DressHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0069.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    質問の答えにはなってないような……[r]
    気もしますけど……[p]
    [_tb_end_text]

    ;スチル切替【13】
    [setEP1DressHCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0070.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、ありがとうございます[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setEP1DressHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしにとっては全部だいじな思い出で[r]
    なにが一番とかはないんですが――[p]
    [_tb_end_text]


    ;スチル切替【10】
    [setEP1DressHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これは本当に人生でいちどしか[r]
    チャンスがないような[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setEP1DressHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0073.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    とびきりいけなくて、[r]
    とびきりロマンチックなことだなぁ、って[p]
    [_tb_end_text]


    ;　次の共通部へ
    [jump storage="EP/EP1.ks" target="EP1Ev_21" ]
    ;------------------------
    ;共通部
    *EP1Ev_21

    ;ジッパーSE
    [playse storage="se/zipper01.mp3" buf="1" ]
    ;スチル切替【11】
    [setEP1DressHCG cg="11" time="300"]
    [WAIT]
    ;スチル切替【14】
    [setEP1DressHCG cg="14" time="300"]

    [tb_start_text mode=3 ]
    #
    張り詰めていたペニスを[r]
    ズボンから解放してやる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    衣装の純白から突き出した[r]
    赤黒い肉はいつにも増してグロテスクだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    広げたスカートの中でヒクつく陰唇に[r]
    誘われるまま、ペニスを近づけ――[p]
    [_tb_end_text]

    ;スチル切替【15】  
    [setEP1DressHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0074.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ、ぁ……あぁ……っ！[p]
    [_tb_end_text]

    ;★下記SE追加
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;★分岐で処女扱いの場合は赤フラッシュも追加
    [if exp="f.virginFlag == true" ]
        [flash type="virgin" layer="2" storage="EVcg/EP1_dressH/16.png" name="dressH16"]
        [free layer="2" name="&f.lastDressHCG" cond="f.lastDressHCG != undefined && f.lastDressHCG != tf.name2" ]
        [eval exp="f.lastDressHCG = 'dressH16'" ]
    [else]
        ;スチル切替【16】
        [setEP1DressHCG cg="16" time="300"]
    [endif]


    [tb_start_text mode=3 ]
    #
    最初からひとつだったものがつながるような、[r]
    そんな自然さでみおとひとつになった。[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setEP1DressHCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0075.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    しちゃい、ましたね……[r]
    ウェディングドレスでのえっち……[p]
    [_tb_end_text]

    ;---------
    ;処女フラグが立っている場合の追加台詞
    [if exp="f.virginFlag == true" ]

        ;スチル切替【18】
        [setEP1DressHCG cg="18" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0076.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        しかもこれがはじめてのえっちだなんて[p]
        [_tb_end_text]

        ;スチル切替【17】
        [setEP1DressHCG cg="17" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0077.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        神様もきっとびっくりしてます[p]
        [_tb_end_text]

    [endif]
    ;---------

    [tb_start_text mode=4 ]
    #
    けなげに微笑みながら珠の汗を流すみおは[r]
    とても美しく思えた。[l]
    [_tb_end_text]
    ;★　【BGS】piston1.mp3,time6000で再生
    [fadeinse storage="BGS/piston1.mp3" time="6000" buf="0" ]
    [glink_center storage="EP/EP1.ks" target="EP1Ev_22" text="ッ……！" ]
    [s]
    *EP1Ev_22
    ;スチル切替【18】
    [setEP1DressHCG cg="18" time="300"]
    [WAIT]
    ;スチル切替【19】
    [setEP1DressHCG cg="19" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0078.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃうっ、あっ、ふぁぁぁんっ[p]
    [_tb_end_text]


    ;スチル切替【20】
    [setEP1DressHCG cg="20" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0079.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせっ、いきなり激し――[r]
    声、出ちゃ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    下肢をわななかせながらも[r]
    尻の位置は高さを保っている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    本能的に、みおがもっとも良い位置に[r]
    ペニスが当たるように動いているのだ。[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setEP1DressHCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0080.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁ……ふやっ、んん～っ[r]
    なか、なかでゴリゴリってぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    良い位置――ただ気持ちがいいだけでなく、[r]
    ペニスがもっとも深く子宮に触れる角度。[p]
    [_tb_end_text]

    ;-----後半部だけでここまでで68クリックぐらいか

    ;鐘の音SE
    [playse storage="se/kekkon_kane01.mp3" buf="1" ]

    [tb_start_text mode=3 ]
    #
    どこからか鳴る鐘の音は思いのほか大きい。[r]
    喘ぎ声を聞きつけられる心配もなさそうだ。[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setEP1DressHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0081.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんぅぅっ、はっ、[r]
    あぁふぅぅ……う、っくぁ……[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setEP1DressHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0082.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……すき、すきぃ……[r]
    だいすきです、せんせい……[p]
    [_tb_end_text]


    ;スチル切替【22】
    [setEP1DressHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0083.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっきな身体でぎゅっとしてもらうのも、[r]
    長い指であちこち触ってもらうのも、んんぁっ[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setEP1DressHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0084.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっきぃおちんちんもぉっ、すき、すきなのぉ[r]
    んはぁぁ、んやぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    美しい花嫁を犯し貫く征服感で[r]
    腰が砕けそうになる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    射精感と共に高まる内圧が[r]
    ペニスをぶくりと一回り膨らませる。[p]
    [_tb_end_text]
    ;★　【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" buf="0"  ]
    ;スチル切替【22】
    [setEP1DressHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0085.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    はぁっ、はぁぁ……[r]
    イク……？　せんせぇ、イクのぉ……？[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setEP1DressHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0086.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それ、ならぁ……っ、ふぁぁ、[r]
    んくっ、おねがい、です……っ[p]
    [_tb_end_text]

    ;スチル切替【20】
    [setEP1DressHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0087.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんぅ、ドレス、汚しちゃいけないから、ぁっ[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setEP1DressHCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0088.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、は、はぁぁ……ナカ、[r]
    ナカに出して、くださ……っ、んぁぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こんなふうに中出しをねだられて、[r]
    断れるはずもなかった。[p]
    [_tb_end_text]

    ;スチル切替【22】
    [setEP1DressHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0089.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    せん、せぇっ[l]
    [_tb_end_text]


    [glink_center storage="EP/EP1.ks" target="EP1Ev_23" text="イく……ッ！" ]
    [s]
    *EP1Ev_23
    ;★下記射精演出と同時にBGS停止
    ;射精演出,スチル切替【23】
    [stopse buf="0"]
    [setEP1DressHCG cg="23" time="300" syasei="true"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0090.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃうぅぅぅぅんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    一瞬、すさまじい寒気に襲われるほど[r]
    多量の熱と精を放った。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの腹の中でごぽごぽと[r]
    重たい粘液のゆれる音がする。[p]
    [_tb_end_text]

    ;スチル切替【24】
    [setEP1DressHCG cg="24" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0091.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……終わり、ました……？[r]
    いっぱい、びくびくしながら出しましたね[p]
    [_tb_end_text]


    ;スチル切替【25】
    [setEP1DressHCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0092.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せいえき、すごぉい……[p]
    [_tb_end_text]

    ;スチル切替【26】
    [setEP1DressHCG cg="26" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0093.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おなかのなか……入りきらなくて[r]
    あふれちゃました……[p]
    [_tb_end_text]

    ;スチル切替【27】
    [setEP1DressHCG cg="27" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0094.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぅ、ふぁぁ……ああぁぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――みおの膣内から多量の精液が垂れてくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ドレスと精液、ふたつの白に彩られ、[r]
    みおは美しくわなないていた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0095.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、うぅ……熱……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0096.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これ、すごい量なんじゃぁ……[r]
    床とか汚しちゃう前に拭かないと……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    身体にちからの入らないみおに代わり、[r]
    そのあたりの後始末も引き受ける。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    拭いても拭いても精液はあふれ続けた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0097.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    結婚式のとくべつな日に、[r]
    こんなたくさん注がれて……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene1_0098.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ああ、先生[r]
    わたし、きっと――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うわごとのようなつぶやきの続きは[r]
    かぼそく、聞き取れなかった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、言いたいことはわかる気がする。[p]
    [_tb_end_text]

    ;-------------------------------------
    ;分岐：みおの処女フラグが立っていた
    [if exp="f.virginFlag == true" ]
        *EP1Ev_24
        [tb_start_text mode=3 ]
        #
        処女喪失が挙式直後にした[r]
        ドレス姿でのセックスで――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        その初体験で身ごもるのだとしたら、[r]
        それはとても運命的なことだ。[p]
        [_tb_end_text]


        ;　次の共通部へ
    [else]
        *EP1Ev_25
        ;-------------------------------------
        ;分岐：みおの処女フラグが立っていない

        [tb_start_text mode=3 ]
        #
        今までもいろいろな形で[r]
        みおと交わってきた。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        気づいていないだけで過去の行為で[r]
        みおにはもう新たな命が宿っているかもしれないが。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        もしそうではなかったとしても、[r]
        このセックスがきっとそこへ至るだろう――[p]
        [_tb_end_text]

        ;　次の共通部へ
    [endif]
    ;-------------------------------------
    ;共通部
    *EP1Ev_26
    ;★　[fadeoutbgm2 time="6000" ]
    [fadeoutbgm2 time="6000" ]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;ゆっくり暗転してシーン終了
    [messageInvisible]
    [maskStart time="1000"]



[endmacro]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;以上