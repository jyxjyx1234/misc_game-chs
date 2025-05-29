[macro name="mioFever01" ]
    ;＜看病する＞
    ;起床直後	平日＆休日　に発生。
    ;「朝だ、起きよう」を送って室内BGを表示した直後に割り込み（みおが出てくる＆BGM再生の前）

    ;FreeEv047の、先生がみおに看病してもらう方のイベントが
    ;既読状態でなければ発生しない。
    [setreplay storage="replay_select.ks" target="mioFever_select" name="fever"]



    ;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる想定だが、
    ;いったん考えない。

    ;おかゆスチルもつくかもだが、これも同様にいったん無いものとして。



    ;-----------------------------------------------
    [messageON]
    ;みおの衣装設定をパジャマに変更。
    [eval exp="f.cloth = f.pajama" ]

    ;下記しばらく立ち絵なし台詞
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……うぅ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふ……うぅ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今になって気がついた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    真っ赤な顔をしたみおがベッドの中で[r]
    苦しそうにしていることに。[p]
    [_tb_end_text]


    [mioHyoujou hyoujou="fuanaketojime_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ひたいに触れてみる。[r]
    熱い。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、冷た……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0006.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    わたしこれ……[r]
    風邪ですか？[l]
    [_tb_end_text]

    [glink_left  storage="nonHscene/mioFever01.ks"  size="20"  x="375"  y="400"  width=""  height=""  text="風邪だねえ"  _clickable_img=""  target="*s1_1"  ]
    [glink_right  storage="nonHscene/mioFever01.ks"  size="20"  x="772"  y="400"  width=""  height=""  text="医者を呼ぼう"  _clickable_img=""  target="*s1_2"  ]
    [s  ]
    ;-------------------------------------------
    *s1_1

    [mioHyoujouSabun hyoujou="EvKusai2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あー……[r]
    やっちゃいましたかぁ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ご迷惑をおかけしないように[r]
    しないといけなかったのに[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanaketojime2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すみません……[p]
    [_tb_end_text]


    [jump  target="*s1next"  ]

    ;-------------------------------------------
    *s1_2

    [mioHyoujouSabun hyoujou="odoroki_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わわ、そんなしなくて大丈夫です[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せめて一日おうちで[r]
    寝かせてくださいっ[p]
    [_tb_end_text]

    [jump  target="*s1next"  ]

    ;-------------------------------------------
    *s1next

    [tb_start_text mode=3 ]
    #
    みおをなだめて、[r]
    今日は家で休むことにした。[p]
    [_tb_end_text]

    [setTime hours=7 minutes=0]

    [tb_start_text mode=3 ]
    #
    ――というわけでみおの学校と[r]
    自分の勤め先への電話を済ませる。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="normalake3_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もしかして先生も[r]
    おうちに居てくれるんですか……？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    うん、とうなずく。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    いつだか、みおが看病してくれた時と[r]
    真逆の状況だった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    気持ち的には、してくれたこと以上の[r]
    お返しをしたいと思っている。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="normal_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happy1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そばにいてくれるだけで[r]
    あんしん、できます、から……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="nemui_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;立ち絵フェード消去
    [chara_hide_all time="1000" ]


    [tb_start_text mode=3 ]
    #
    ……寝てしまった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    さあて、それじゃあやるかぁ。[p]
    [_tb_end_text]




    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [setTime hours=8 minutes=0]
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
    [bgcheck time="0" bgm="false"]
    [wait  time="500"  ]
    [setTime hours=9 minutes=0]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    ;BGM5_relax.mp3　をフェード再生
    [fadeinbgm storage="BGM5_relax.mp3" time="6000"  ]

    [tb_start_text mode=3 ]
    #
    換気に片付け、濡れタオルなんかの用意。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    必要最低限の買い込みを[r]
    短時間でこなして帰宅。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ネットでレシピを見ながら[r]
    介護食づくり。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    というと大げさだが、要するにおかゆとか[r]
    カットフルーツを準備するぐらいだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そんなこんなで時間は[r]
    あっという間に過ぎていった。[p]
    [_tb_end_text]



    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [setTime hours=11 minutes=0]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]


    ;時間帯を昼にする
    [setTime hours=12 minutes=0]

    [bgcheck time="2000" bgm="false"]
    ;↑の完了を待つので、上記タグに手入れか、次行にウェイトを挿入

    [messageON]

    [mioHyoujou hyoujou="nemui.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おなか、すいた……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……？[r]
    このにおい……[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    間に合わなかったか……[r]
    やはりみおのようにはいかない。[l]
    [_tb_end_text]

    [glink_center  color="btn_05_black"  storage="nonHscene/mioFever01.ks"  size="20"  x="510"  y="400"  width=""  height=""  text="このおかゆは焦げちゃって"  _clickable_img=""  target="*s2next"  ]
    [s  ]
    *s2next

    [tb_start_text mode=3 ]
    #
    レトルトのおかゆを別に温めようと[r]
    思っていたところなのだった。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="odoroki.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生が作ってくださったんですか！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    と、みおには出すつもりのなかった[r]
    焦げおかゆの方に視線が注がれる。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="normalake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    食べたいです、それがいいです[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そ、そんなに言うなら……[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    ;背景とかは変えず、黒マスクをして外すだけ。おかゆスチルが追加された場合はここで表示
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [mioHyoujouSabun hyoujou="happyake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0020.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    いただきます[l]
    [_tb_end_text]

    [glink_center  color="btn_05_black"  storage="nonHscene/mioFever01.ks"  size="20"  x="540"  y="400"  width=""  height=""  text="いただきます……"  _clickable_img=""  target="*s3next"  ]
    [s  ]
    *s3next

    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]


    [tb_start_text mode=3 ]
    #
    せめてものとばかりに、[r]
    焦げたとこはできるだけ自分のによそう。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happyake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……♪[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おいしいですよ、[r]
    不安そうにしないでください[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおの性格なら[r]
    そう言ってくれるだろうけど……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お夕飯もおかゆ、[r]
    再挑戦してくれますか？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    うなずく。[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="raku3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――よかった[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="raku4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    風邪、だいぶよくなったんですけど[r]
    今日は先生に甘えちゃいますね[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metoji.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    前に先生が風邪をひいて看病した時……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="komruake6.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こう……[r]
    頼られて、うれしかったんです[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="metojiake.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だからわたしも理由のある時は[r]
    おもいきり先生に甘えてもいいのかなって[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="komaru2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    自分がお役に立ててるか、[r]
    頼ってもらえるかばかり気にしてて……[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="komruake4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でも頼られるってうれしいな、って[r]
    わかったから[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="enryo_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしも、ときどきは[r]
    先生に頼っちゃおうって[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happyake3.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……[r]
    ごちそうさまでした[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="happyake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    浮かれちゃったかな、[r]
    ぽかぽかしてきました[p]
    [_tb_end_text]


    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    軽く歯を磨いたら[r]
    もうちょっと寝ますね[p]
    [_tb_end_text]

    [mioLeave]

    [messageON]

    [tb_start_text mode=3 ]
    #
    宣言通りにあれこれしたら、[r]
    みおはすぐに寝息を立てはじめたのだった。[p]
    [_tb_end_text]


    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [setTime hours=12 minutes=0]
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
    ;BG夕方ラインとなる時刻に変更
    [setTime hours="17" minutes="0"]
    [bgcheck time="1" bgm="false"]
    ;ウェイトナシで、みお立ち絵を表示しておく。表情は　raku1.png
    [mioHyoujou hyoujou="raku1.png" time="1"]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [tb_start_text mode=3 ]
    #
    夕方、再挑戦のおかゆは首尾よく仕上がり、[r]
    みおもほくほくで頬ばっていた。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    さて、これで夕食も終わったわけだが……[l]
    [_tb_end_text]

    ;選択肢
    ;　着替え、どうする？
    ;　お風呂、どうする？
    [glink_left storage="nonHscene/mioFever01.ks"  target="*s4_1" text="着替え、どうする？"  ]
    [glink_right storage="nonHscene/mioFever01.ks"  target="*s4_2" text="お風呂、どうする？"  ]
    [s  ]

    ;-----------------------------------------
    ;＞「着替え、どうする？」
    *s4_1

    [mioHyoujouSabun hyoujou="fuan2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、できれば……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0037.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あっ、着替えるなら、からだもきれいにしたくて[l]
    [_tb_end_text]

    ;次の共通部へ
    [jump  target="*s4next"  ]
    ;-----------------------------------------
    ;＞「お風呂、どうする？」
    *s4_2

    [mioHyoujouSabun hyoujou="metoji.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    入りたい……ですけど、[r]
    入れないです……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0039.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    からだ拭くぐらいはしないと[l]
    [_tb_end_text]


    ;次の共通部へ
    [jump  target="*s4next"  ]
    ;-----------------------------------------
    ;共通部
    *s4next

    ;一択選択肢「わかった」
    [glink_center storage="nonHscene/mioFever01.ks"  target="*s4next2" text="わかった"  ]
    [s]

    *s4next2

    [mioHyoujouSabun hyoujou="situmon.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……？[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/curtain1.mp3"  ]

    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/mizu1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    濡れタオル等々を用意して戻ってきて、[r]
    みおの華奢な身体を抱き起した。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、これって……[p]
    [_tb_end_text]

    ;スチル表示【01】
    [setMioFeverCG cg="01"]
    [tb_start_text mode=3 ]
    #
    だって、自分じゃあ満足に拭けないだろうし。[p]
    [_tb_end_text]


    ;スチル切替【02】
    [setMioFeverCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う～……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [setMioFeverCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい、おっしゃるとおりです……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    よろしい――と、腕まくりして[r]
    みおの背中を拭いてやる。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setMioFeverCG cg="04" time="300"]
    [tb_start_text mode=3 ]
    #
    肌の白さに目を奪われもするが、[r]
    今は世話する楽しさが勝って邪心も湧かない。[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setMioFeverCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【06】
    [setMioFeverCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……[p]
    [_tb_end_text]

    ;スチル切替【05】
    [setMioFeverCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん、せ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ――よし、終わった。[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setMioFeverCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、は、はいっ[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setMioFeverCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おかげさまでさっぱりしました[p]
    [_tb_end_text]


    ;スチル切替【08】
    [setMioFeverCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すーって、きもちいいです……[p]
    [_tb_end_text]


    ;スチル切替【07】
    [setMioFeverCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……[r]
    また、助けられちゃいました[p]
    [_tb_end_text]

    [addTime minutes=30]
    ;スチル消去
    [free layer="2" name="still" time="500" ]
    [tb_start_text mode=3 ]
    #
    ついでに寝具も整えられるだけ整えて、[r]
    みおを再び横にならせたのだった。[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [addTime minutes=60]


    [tb_start_text mode=3 ]
    #
    それから、どんな話をしただろうか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    とりとめのない歓談を子守唄代わりに[r]
    みおを寝かしつけようとする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうして、いつの間にか自分もいっしょになって[r]
    眠りに落ちたのだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もう一日くらい風邪もいいかな……[r]
    えへへ、治っちゃったのがもったいないです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    その言葉が、印象に残っている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    [eval exp="f.todayEnd = true" ]
    [eval exp="f.feverEv.mio.today = true" ]
    [eval exp="f.feverEv.mio.total++" ]

    ;早寝フラグは立てずに翌日へ。
    ;朝演出の回復込みで、翌日のみおの体力は最大値の半分になっているように設定。


    ;------------------------
    ;いったん下記は無いものとして無視

    ;■２回目のshot ver


    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0053.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;すみません……[p]
    ;[_tb_end_text]


    ;[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_scene3_0054.mp3"  ]
    ;[tb_start_text mode=3 ]
    ;#みお
    ;お世話になります……[p]
    ;[_tb_end_text]

[endmacro]









