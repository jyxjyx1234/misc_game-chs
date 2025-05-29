

[macro name="EP2Ev" ]




    ;図書館背景：EPbg_02.png
    ;[setEP2BookCG cg="02"]
    ;[setButtonInTalk]
    ;----------------------------------------------
    ;イベントの性質上、１シーンに基本絵２枚つかうぐらいのボリューム感のあるものとして
    ;構成した方がよいように思う。

    ;　■02臨月期
    ;　　・ID16_＜非エロスチル＞妊娠してておなかの子どもに絵本読んであげる＝＜非エロスチル＞胎教　図書館かどこか
    ;　　・ボテ腹立ち絵の下着とかを描き込んでるようなので、そのへんの使いどころをここにねじ込むか？
    ;　　・ID79　ボテ腹えっち


    ;　■シーン中の留意事項
    ;　　・みおの卒業後の進路の話もここで。
    ;　　・途中の選択肢で、和姦での妊娠なのか睡姦での妊娠なのか会話が分岐。



    ;　■解禁条件（仮）
    ;　　ゲーム中に膣内射精をし、受精判定を成功させる。

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜前半部：胎教読書＞

    ;シーン回想からのみの開始。しばらく真っ暗画面(bk100)
    [setBK time="1"]
    [maskEnd]
    [messageON]
    [tb_start_text mode=3 ]
    #
    ――みおとのふたりぐらしの月日は[r]
    瞬く間に流れていった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あっという間にみおの卒業を迎え、[r]
    少し間をおいて結婚式も行った。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そして、ずっと続くと思われた[r]
    “ふたりぐらし”だったが――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    “ふたり”ではなくなることがわかった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――先生[p]
    [_tb_end_text]
    ;※回想としての台詞。妊娠を告げる

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの、わたし……[p]
    [_tb_end_text]
    ;※回想としての台詞。妊娠を告げる

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    赤ちゃん、できたみたい、で……[p]
    [_tb_end_text]　
    ;※回想としての台詞。妊娠を告げる

    [tb_start_text mode=3 ]
    #
    あの日のおどろきと喜びは今でも[r]
    鮮明に憶えている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    きたる新生活の準備をこなすうち、[r]
    気がつけばみおは臨月を迎えていた。[p]
    [_tb_end_text]

    ;★　[fadeinbgm storage="BGM15_holiday2.mp3" time="6000" ]
    [fadeinbgm storage="BGM15_holiday2.mp3" time="6000" ]

    ;ゆっくりと画面切り替え。
    ;スチル＜図書率的なところで胎教のために本を読むみお（ボテ腹）＞
    ;フォルダ「EP2_book」のスチル表示【01】
    [setEP2BookCG cg="01" time="1"]
    [free layer="3" name="bkcg" time="3000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……――めでたしめでたし[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふふ、おもしろかった？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    何冊めかの絵本を読み終え、[r]
    みおはおなかの中の子に呼びかける。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    臨月期のみおの体調はかなり安定していて、[r]
    日々散歩や日光浴とマメに出かけている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今日は市の図書館にやってきて[r]
    本の読み聞かせだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    胎教、というとおおげさかもだが、[r]
    まあそんなようなものだ。[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0006.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ふぅー……ん、そっかぁ……[l]
    [_tb_end_text]


    [glink_center storage="EP/EP2.ks"  target="EP2Ev_1" text="反応、あるの？" ]
    [s]
    ;スチル切替【04】
    *EP2Ev_1
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありますよ[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だいたいは蹴る感じですけど、[r]
    強い弱いの変化がありますし……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    蹴るとは違って、なんだか動いてる[r]
    みたいだなぁ～ってときも[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    胎動ってやつか。[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0010.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    だから反応の大きい時は[r]
    それが好きなのかなぁって思うんです[l]
    [_tb_end_text]

    [glink_left storage="EP/EP2.ks"  target="EP2Ev_2" text="朗読が上手いからだね" ]
    [glink_right storage="EP/EP2.ks"  target="EP2Ev_3" text="言葉わかってるのかな？" ]
    [s]
    ;---------------------------
    ;選択肢分岐：朗読が上手いからだね
    *EP2Ev_2
    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふつうに読んでるだけですよう[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    意識してないこと急に褒められると[r]
    なんだか変に考えちゃって[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    つぎから緊張しちゃうかも……[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="EP2Ev_4" ]
    ;---------------------------
    ;選択肢分岐：言葉わかってるのかな？
    *EP2Ev_3
    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    言葉はさすがに……[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    まわりでどんな音がしてるのかは[r]
    ある程度わかってると思います[p]
    [_tb_end_text]


    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    パパのただいまーって声が聞こえると[r]
    この子、すっごく動くから[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    生まれる前からパパ大好きなんだよね[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="EP2Ev_4" ]
    ;---------------------------
    ;共通部
    *EP2Ev_4
    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、でもですね[r]
    いいおしらせがあるんです[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いろんな本を試しながら[r]
    反応を見てたので――[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP2BookCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    この子がどんな本が好きか[r]
    わかった気がするんです[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生がお休みの日なのに[r]
    図書館に連れてきてくれたおかげですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いやいや。[r]
    自分にできるのはこのぐらいのものだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    臨月、つまりお産間近まで来ると[r]
    男はやきもきすることしかできない。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    大変なはずのみおの方にこそ[r]
    泰然さを感じることすらあった。[l]
    [_tb_end_text]


    [glink_center storage="EP/EP2.ks"  target="EP2Ev_5" text="それで、どの本が好きだったの？" ]
    [s]
    *EP2Ev_5
    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい[r]
    それがなんと……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なんと……？[p]
    [_tb_end_text]


    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お料理の本、なんです[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    読んであげるのとは別に[r]
    わたしが読みたいだけの本だったんですが……[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ちょっとめくって独り言を漏らしたら[r]
    すっごく反応がよくって[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なるほど。[r]
    それはある意味、みおの子らしいが――[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP2BookCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べるのが好きでも、お料理するのが好きでも[r]
    どっちでも楽しみですね[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    料理はもう半分お仕事にしちゃったから、[r]
    美味しくないって言われたら泣いちゃいますけど[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうなのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    学校を卒業した後、[r]
    みおは料理の道に進んだのだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    それも、在宅でできるような種類のもので[r]
    わかりやすく言えば料理研究家に近い。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    美味しい美味しいって食べてくれた[r]
    先生のおかげなんですよ[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしの得意なこと、もしかしたら[r]
    お料理なのかなって教えてくれたから[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お仕事って言っても未だに[r]
    ちょっとふしぎな感じなんですけどね[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしが考えてるのは、先生にもっと[r]
    美味しくて栄養あるごはんを、ってだけだから[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    全部、ありがとうございます[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今のわたしがあるのも、この子を授かったのも[r]
    ぜんぶぜーんぶ先生のおかげだから[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    寮の火事は怖かったけど、[r]
    もしあれがなかったら……ってたまに考えます[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0036.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    先生に再会できずに学校を卒業したら[r]
    わたし、きっとなにもできなかったから[l]
    [_tb_end_text]


    [glink_left storage="EP/EP2.ks"  target="EP2Ev_6" text="必ず出会えたはずだよ" ]
    [glink_right storage="EP/EP2.ks"  target="EP2Ev_7" text="みおは立派な女性だよ" ]
    [s]
    ;---------------------------
    ;選択肢分岐：必ず出会えたはずだよ
    *EP2Ev_6

    ;スチル切替【08】
    [setEP2BookCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ……[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え、えと……照れますね、[r]
    どうも……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の方から会いに来てくれる可能性も[r]
    あったのかもですね、ふふ[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="EP2Ev_8" ]
    ;---------------------------
    ;選択肢分岐：みおは立派な女性だよ
    *EP2Ev_7
    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    買いかぶりですよぅ[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも、そう思ってもらえるから[r]
    背伸びして、少しずつ成長するのかも[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のとなりにいられる[r]
    わたしであるように、って……[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="EP2Ev_8" ]
    ;---------------------------
    ;共通部
    *EP2Ev_8

    ;スチル切替【08】
    [setEP2BookCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、どんどん蹴ってきた[p]
    [_tb_end_text]

    ;------------
    ;※先生がみおのおなかに耳をあてる、みたいな差分を作った場合はこのくだりを挿入

    ;スチル差分の表示

    [tb_start_text mode=3 ]
    #
    ふと、興味のままにみおのおなかに[r]
    耳をあててみた。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setEP2BookCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生？[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setEP2BookCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いったん蹴るのはやんだみたいですけど……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なにか聞こえます？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うーん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    わかるようなわからないような、[r]
    ふしぎな感じだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    鼓動のようなものが聞こえるような[r]
    気もするし、気のせいのような気もするし。[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP2BookCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なんだか、いいですね[r]
    こういうの[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    家族って感じがします[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    顔を離すとみおは再び[r]
    胎児にむかって話しかけはじめた。[p]
    [_tb_end_text]

    ;スチル差分の消去
    ;------------

    ;スチル切替【01】
    [setEP2BookCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    退屈してきた？[r]
    またご本にする？[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setEP2BookCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べものがたくさん出てくる[r]
    お歌とかがいいかな[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BookCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    読み聞かせの本、[r]
    先生もいっしょに探してくれますか？[p]
    [_tb_end_text]

    ;スチル切替【08】
    [setEP2BookCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    というか……次はパパに[r]
    読んでもらうのもいいですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    パパかぁ……[r]
    お父さん呼びも捨てがたいが……[p]
    [_tb_end_text]

    ;スチル切替【07】
    [setEP2BookCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    さ、行きましょう、先生[p]
    [_tb_end_text]
    #
    ;★　[fadeoutbgm2 time="6000" ]
    [fadeoutbgm2 time="6000" ]
    ;ゆっくり暗転
    [maskStart time="3000"]
        [free layer="2" name="still" ]
        ;後半部分用スチルの作成が間に合わなかったから、いったんここでシーンを終了にしてもいい。

        ;------ここまでで65クリックぐらい


        ;＜中間部：ADVパート。セックス前会話＞

        ;中間部なしで後半部に入ってもいいのだが、せっかくボテ腹立ち絵を描いてるようなので
        ;その出番を作る意味でADVパートをおく。

        ;まあ立ち絵の具合に合わせておおまかな内容は変化するので、
        ;対応できるようにこのへんのみお台詞はやや少なめか、状況に影響されない内容で。


        ;ゆっくり照明オフの室内背景を表示
        [bgChange storage="room_n_c_off.png" time="1"]

    [maskEnd time="3000"]

    [tb_start_text mode=3 ]
    #
    ――その夜。[p]
    [_tb_end_text]

    ;★★下記SE追加
    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [tb_start_text mode=3 ]
    #
    みおといっしょに早めに床についたが、[r]
    ごそごそいう物音で目が覚めた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    臨月のおなかでは仰向けになれない。[p]
    [_tb_end_text]

    ;★下記選択肢前テキスト設定へ変更
    [tb_start_text mode=4 ]
    #
    みおはこちらに背を向けた横倒しの形で[r]
    丸まっているが――[l]
    [_tb_end_text]


    ;照明onSE
    [playse storage="se/roomlamp.mp3" buf="1"  ]
    [bgChange storage="room_n_c_lit.png" time="1"]

    [glink_center storage="EP/EP2.ks"  target="EP2Ev_9" text="みお……？" ]
    [s]
    ;立ち絵なし
    *EP2Ev_9



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    ;★★みお衣装をマタニティに設定
    [eval exp="f.cloth = 'matewear'" ]
    ;★★立ち絵表示：fuan_red.png
    [mioHyoujou hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    起こしちゃい、ましたか……[r]
    すみません……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    大きなおなかでは着替えも一苦労だし、[r]
    楽な服装もほぼ決まっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おなじマタニティウェアを複数用意し、[r]
    その一部を寝間着に使っているのだった。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    そのマタニティウェアの股間のあたりを[r]
    隠すようにみおはもじもじと赤い顔だ。[l]
    [_tb_end_text]

    [glink_center storage="EP/EP2.ks"  target="EP2Ev_10" text="また、“アレ”？" ]
    [s]

    *EP2Ev_10

    ;★★立ち絵切替：fuanaketojime4tear_red.png
    [mioHyoujouSabun hyoujou="fuanaketojime4tear_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……はい[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    言ってくれればいいのに――[r]
    そう言いながら、みおを優しく押し倒す。[p]
    [_tb_end_text]

    ;★★下記追加テキスト
    [tb_start_text mode=3 ]
    #
    おっと、部屋のあかりも消さないとな。[p]
    [_tb_end_text]


    ;★★右記SEを鳴らして、室内背景を証明オフへ[playse storage="se/roomlamp.mp3" buf="1"  ]
    [playse storage="se/roomlamp.mp3" buf="1"  ]
    [bgChange storage="room_n_c_off.png" time="1"]

    ;★　[fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    ;ここからのスチルはボテ腹えっち「EP2_boteH」。【01】を表示
    [setEP2BoteHCG cg="01" time="1000"]
    ;＜後半部：ボテ腹えっち＞

    ;★★スチル表示の下でみお立ち絵は消して置く。★★追加ここで終了
    [chara_hide_all time="1"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    服を脱がせてやっただけなのに[r]
    みおの身体はすっかり仕上がっていた。[p]
    [_tb_end_text]

    ;スチル切替【02】
    [setEP2BoteHCG cg="02" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もうすぐおかあさんになるのに、[r]
    わたし、最近おかしくて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いつからみおが“こう”だったかは[r]
    わからない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、どうやらみおは妊娠で[r]
    性欲が高まる方だったようで。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    安定期に入ってからはほぼ毎日、[r]
    みおから求められて行為に入っていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    もちろん、自分の方もうれしいばかりで[r]
    まったく苦ではない。[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setEP2BoteHCG cg="01" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おまた、きっとぐしょぐしょですよね[r]
    恥ずかしい……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    巨乳は足元が見えないというが……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    臨月のおなかにさえぎられて、[r]
    みおは自分の秘部の状況さえ把握できていない。[p]
    [_tb_end_text]

    ;水音SE
    ;★　[playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替【03】
    [setEP2BoteHCG cg="03" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やぁぁ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    端的に言って、大洪水だった。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setEP2BoteHCG cg="04" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0062.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もうぬるぬる、ですよね……[r]
    あの、すぐ入れちゃって大丈夫なので……[p]
    [_tb_end_text]

    ;挿入
    ;★　[playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;スチル切替【05】
    [setEP2BoteHCG cg="05" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――ぁっ、ふぁぁ！？[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setEP2BoteHCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0064.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、先生の……おっきぃぃ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    孕んだみおの身体は美しかった。[r]
    こちらの怒張も最初から限界の硬度にある。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この体型だと必然的に横向きの寝バック……[r]
    というか側位になる。[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setEP2BoteHCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぁ、あは……ごめんね、[r]
    ちょっとの間、がまんしててね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    胎動があったようだ。[r]
    みおが赤子に話しかけている。[p]
    [_tb_end_text]

    ;★　【BGS】piston1.mp3,time6000で再生
    [fadeinse storage="BGS/piston1.mp3" buf="0" time="6000"]

    [tb_start_text mode=3 ]
    #
    そちらには障らないよう、[r]
    慎重なピストン運動をくりかえす。[p]
    [_tb_end_text]


    ;スチル切替【08】
    [setEP2BoteHCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0066.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、んんぅ……トントン、って[r]
    やさしいえっち、好きぃ……[p]
    [_tb_end_text]


    ;スチル切替【09】
    [setEP2BoteHCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0067.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ……来る、来ちゃうっ[p]
    [_tb_end_text]

    ;★　BGS停止
    [stopse buf="0" ]

    ;スチル切替【10】
    [setEP2BoteHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0068.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん、っくひ――っ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぷしゃっと音がして、薄い潮がしぶく。[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setEP2BoteHCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0069.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふぁ……あぁん……[r]
    いい気持ち……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    妊娠は、母体を作り替えると言っていいほどの[r]
    激烈な変化をもたらす。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膨らんだ子宮に押されて内臓は上にずれ、[r]
    骨盤が広がっていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膀胱も同様に圧迫されるから[r]
    ――要するに漏らしやすくなる。[p]
    [_tb_end_text]


    ;スチル切替【12】
    [setEP2BoteHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0070.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……あ、いいきもち、じゃなかったですね[r]
    お漏らしちゃってごめんなさい……[p]
    [_tb_end_text]


    ;スチル切替【13】
    [setEP2BoteHCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0071.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そのう、防水シーツとか整えてくれて[r]
    ありがとうございます[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの場合は、簡単に潮吹きするようになった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    防水シーツはもともと育児のために[r]
    備えるべき道具だったし、苦でも何でもない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおもいつもの奥ゆかしさは残しつつ、[r]
    性に関してやや開放的になったように思う。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と、みおの視線が下方へ動いた。[r]
    潮吹きのはずみで抜けたペニスを見ている。[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setEP2BoteHCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0072.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせ……っ、もっと深くまで[r]
    動いて、だいじょう、だから……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    欲情も潮吹きも妊娠に伴う変化なのだから[r]
    みおに非はないし、歓迎すべきなのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    妊娠している以上、中出しへの懸念もひとつ減り、[r]
    交わりは必然ゆるやかな陸み合いになる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そういうわけで――[p]
    [_tb_end_text]


    ;スチル切替【15】
    [setEP2BoteHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0073.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ♡　んんぅっ♡[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setEP2BoteHCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0074.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちん、ぬちゅぬちゅってするのぉ、[r]
    す……きぃ……んんっ[p]
    [_tb_end_text]

    ;スチル切替【17】
    [setEP2BoteHCG cg="17" time="300"]
    [tb_start_text mode=3 ]
    #
    声も無く潮吹き。[p]
    [_tb_end_text]


    ;スチル切替【15】
    [setEP2BoteHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0075.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はぁぅぁ……びしゃびしゃ……[r]
    脱水になっちゃいますぅ……[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [setBK]
    [tb_start_text mode=3 ]
    #
    ベッドサイドのペットボトルを口に含み、[r]
    みおにキスで飲ませてやる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0076.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……ちゅっ、ちゅ、ん……[r]
    んく……んぷぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0077.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ごちそうさまです[r]
    そのまま、べろちゅーしてくださ……んむっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0078.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    じゅっ、じゅるるっ、んぱぁ……[r]
    れるる……はむぅん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    淑女のようにみおは乱れる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    矛盾するようだが、[r]
    そうとしか言い表せない。[p]
    [_tb_end_text]

    ;スチル切替【16】
    [setEP2BoteHCG cg="16" time="1"]
    [deleteBK]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0079.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おくちも、おまんこもせんせいでいっぱい……[r]
    きもちよすぎておかしくなっちゃいますぅ[p]
    [_tb_end_text]

    ;スチル切替【18】
    [setEP2BoteHCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0080.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの……おっぱいも、[r]
    さわってもらえませんか……？[p]
    [_tb_end_text]


    ;スチル切替【19】
    [setEP2BoteHCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0081.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たぶん、母乳を出す準備だと思うんですけど[r]
    最近なんだかジンジンしてて[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    であれば――[p]
    [_tb_end_text]

    ;水音SE
    ;スチル切替【20】
    [setEP2BoteHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0082.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……♡　っ、くぅ……ッ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの反応を見ながら[r]
    慎重に加減はするが――[p]
    [_tb_end_text]

    ;スチル切替【21】
    [setEP2BoteHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0083.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きもち、いい……っていうより、[r]
    こう……[p]
    [_tb_end_text]

    ;スチル切替【22】
    [setEP2BoteHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0084.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    しあわせぇ、ってかんじですぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ホルモンバランスの変化か、[r]
    人体はふしぎなものだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    けれど、みおという女の子の本質は[r]
    少しも変わらずにいて、そこに安堵もする。[p]
    [_tb_end_text]

    ;スチル切替【23】
    [setEP2BoteHCG cg="23" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0085.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます[r]
    いろんなモヤモヤ、すっきりできました[p]
    [_tb_end_text]

    ;スチル切替【24】
    [setEP2BoteHCG cg="24" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0086.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    つぎは先生がスッキリする番、ですね[p]
    [_tb_end_text]


    ;スチル切替【19】
    [setEP2BoteHCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0087.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あの、もう少し強く突いても[r]
    だいじょうぶそう、なので……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それは助かる。[p]
    [_tb_end_text]

    ;★　【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" buf="0" time="6000"]

    ;スチル切替【25】
    [setEP2BoteHCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0088.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ……♡　ッ♡♡[p]
    [_tb_end_text]

    ;スチル切替【26】
    [setEP2BoteHCG cg="26" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0089.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふっ、ひはぁっ、おちんちん、カタくて大きくて、ぇっ[p]
    [_tb_end_text]


    ;スチル切替【25】
    [setEP2BoteHCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0090.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなに変わっっちゃったわたしでも[r]
    きもちよくなってもらえて、うれしっ、くぁぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの膣はやわらかくほぐれ、[r]
    以前とは違った性感を与えてくれる。[p]
    [_tb_end_text]

    ;★下記、選択肢前テキストへ設定を変更
    [tb_start_text mode=4 ]
    #
    なにより、自分の子を孕み育てている[r]
    母体を再度犯すという精神的なたかぶりが強い。[l]
    [_tb_end_text]


    [glink_center storage="EP/EP2.ks"  target="EP2Ev_11" text="みお、そろそろ……！" ]
    [s]
    ;スチル切替【19】
    *EP2Ev_11
    [setEP2BoteHCG cg="19" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0091.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    はい、わたしはだいじょうぶ、だからっ[r]
    先生の好きなように……っ[l]
    [_tb_end_text]


    [glink_left storage="EP/EP2.ks"  target="EP2Ev_12" text="中に出す" exp="f.EP2Select = 1"]
    [glink_right storage="EP/EP2.ks"  target="EP2Ev_12" text="外に出す" exp="f.EP2Select = 2"]
    [s]

    ;妊娠中セックスなので、まあこのシーンぐらいはちょっと差分用意して
    ;射精位置選ぶぐらいはできてよいかと。無理そうなら中出しルートのみ残す。

    ;射精演出。先ほどの選択肢によって切替スチルが異なる。遅れてテキスト分岐もアリ。
    ;　【中に出す】スチル切替【27】　／　【外に出す】スチル切替【37】
    *EP2Ev_12
    [stopse buf="0" ]
    [if exp="f.EP2Select == 1" ]
        [setEP2BoteHCG cg="27" time="300" syasei="true"]
    [else]
        [setEP2BoteHCG cg="37" time="300" syasei="true"]
    [endif]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0092.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁぁぁんん――っ♡♡[p]
    [_tb_end_text]

    ;　【中に出す】スチル切替【28】　／　【外に出す】スチル切替【38】
    [if exp="f.EP2Select == 1" ]
        [setEP2BoteHCG cg="28" time="300"]
    [else]
        [setEP2BoteHCG cg="38" time="300"]
    [endif]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0093.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあぁ、んっ……んむ……[r]
    あぅぁぁ……っ、うぅぅ……[p]
    [_tb_end_text]

    ;　【中に出す】スチル切替【29】　／　【外に出す】スチル切替【39】
    [if exp="f.EP2Select == 1" ]
        [setEP2BoteHCG cg="29" time="300"]
    [else]
        [setEP2BoteHCG cg="39" time="300"]
    [endif]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0094.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……潮吹き、ながら……[r]
    イっちゃいましたぁ……[p]
    [_tb_end_text]

    ;----------------------------------
    ;選択肢分岐：中に出す
    [if exp="f.EP2Select == 1" ]
        *EP2Ev_13
        [tb_start_text mode=3 ]
        #
        膣からあふれ出てくる精液が[r]
        ごぽごぽを音を立てている。[p]
        [_tb_end_text]


        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0095.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あったかい……[p]
        [_tb_end_text]


        ;スチル切替【31】
        [setEP2BoteHCG cg="31" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0096.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これで新しい命が本当にできるんですね[r]
        神秘的です[p]
        [_tb_end_text]


        ;　→次の共通部へ

    ;----------------------------------
    ;選択肢分岐；外に出す
    [else]
        *EP2Ev_14
        [tb_start_text mode=3 ]
        #
        みおのおなかや尻にかかった精液が[r]
        ぬらぬらと光っている。[p]
        [_tb_end_text]

        ;★下記テキスト追加
        [tb_start_text mode=3 ]
        #
        慎重に身を離すと、みおがぽつりとつぶやいた。[p]
        [_tb_end_text]

        ;スチル切替【40】
        [setEP2BoteHCG cg="40" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0097.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ナカでも、よかったのに……[p]
        [_tb_end_text]


        ;スチル切替【41】
        [setEP2BoteHCG cg="41" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0098.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        でもありがとうございます[r]
        気を遣ってくれたんですよね[p]
        [_tb_end_text]

        ;　→次の共通部へ
    [endif]
    ;----------------------------------
    ;共通部
    *EP2Ev_15
    
    ;★　[fadeoutbgm2 time="6000" ]
    [fadeoutbgm2 time="6000" ]
    ;スチル切替【bk100】
    [setBK]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0099.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、また胎動……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0100.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    騒いじゃってごめんね[r]
    よぉしよし[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene2_0101.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もうすぐだよ[r]
    もうすぐ会えるからね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まどろみはじめながらも、[r]
    みおはおなかの子にやさしく話しかけていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    出産予定日までもう間もなく。[r]
    いつ陣痛が来てお産になってもおかしくない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    その時が、とても楽しみだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;ゆっくり暗転してシーン終了
    [maskStart time="3000"]
[endmacro]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;以上










