[macro name="kaerimitiEv01" ]

    ;シーン回想に登録する場合はここからの再生
    [fadeoutse time="500" ]

    ;寄り道しないでまっすぐ帰った場合は夕方の町並みBG表示。下記のみお台詞へジャンプ
    [eval exp="f.cloth = f.schoolUniform" ]
    ;-----------
    ;寄り道でコーヒーショップorティーショップに寄った上で、本イベントが起こった場合、
    ;夜の町並みBGを表示し、この時だけ↓の処理を行う（時間帯差分で未使用を出さないため）
    [if exp="f.yorimiti" ]
        [if exp="f.hours < 19" ]
            [bgChange storage="kaerimiti_n.jpg" time="1000"]
            [setTime hours="19" minutes="0"]
        [elsif exp="f.hours == 19" ]
            [bgChange storage="kaerimiti_n.jpg" time="1000"]

        [else]
            [bgChange storage="kaerimiti_n.jpg" time="1000"]
        [endif]
        ;背景で夜差分適用となる時間まで時間を進める
        [messageON]
        [tb_start_text mode=3 ]
        #
        その後も仕事の電話を受けたりなんだりして、[r]
        思ったより時間が経ってしまった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        すっかり夜だな……[p]
        [_tb_end_text]

    [else]
        [bgChange storage="kaerimiti_e.jpg" time="1"]
    [endif]


    ;-----------

    ;※以降のスチル表示も、時間帯に合わせて夕方差分（e00,e01＝寄り道なし）か、夜差分（n00,n01＝寄り道あり）かを使い分け。
    [setKaerimitiCG cg="04" ude="off" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0001.mp3"  ]
    [messageON]
    ;声のみ
    [tb_start_text mode=3 ]
    #みお
    あっ、先生[p]
    [_tb_end_text]

    [setKaerimitiCG cg="02" ude="off" time="300"]
    ;-------------
    ;【ランダム】下記候補から１つランダムに抽選して表示
    [getrand min="0" max="4"]

    [if exp="tf.rand == 0" ]

        ;[mioHyoujou hyoujou="happy3.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0002.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        食材の買い出し帰りでして[r]
        バッタリ会えちゃいましたね[l]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        ;[mioHyoujou hyoujou="enryo.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0003.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        先生っぽい背中が見えたので[r]
        追いかけてきちゃいました[l]
        [_tb_end_text]

    [elsif exp="tf.rand == 2" ]

        ;[mioHyoujou hyoujou="situmon.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0004.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        学校帰りだったんですけど[r]
        ここで待ってたら会えるかなぁ……って[l]
        [_tb_end_text]

    [elsif exp="tf.rand == 3" ]

        ;[mioHyoujou hyoujou="raku2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0005.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        わあ～、偶然ですね～[l]
        [_tb_end_text]

    [elsif exp="tf.rand == 4" ]

        ;[mioHyoujou hyoujou="kira1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0006.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        早く先生に会いたいなぁって思ってたら[r]
        願いが叶っちゃいました[l]
        [_tb_end_text]

    [endif]
    ;-------------

    [glink target="*kaerimiti1_1" addlog="true" text="それじゃあ、一緒に帰ろうか" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]
    ;-------------
    ;【ランダム】下記候補から１つランダムに抽選して表示
    *kaerimiti1_1
    [getrand min="9" max="2"]
    [setKaerimitiCG cg="05" ude="off" time="300"]
    [if exp="tf.rand == 0" ]

        ;[mioHyoujouSabun hyoujou="happy1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、帰りましょう[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        ;[mioHyoujouSabun hyoujou="raku2.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、ご一緒します[p]
        [_tb_end_text]

    [else]

        ;[mioHyoujouSabun hyoujou="doya.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        はい、ごーごーです[p]
        [_tb_end_text]

    [endif]
    ;-------------

    ;暗転
    ;　・暗転中にスチル表示。まずは腕組みでない状態。kaerimiti_e00.png　／　kaerimiti_n00.png
    ;　・暗転中に15分経過、みお表情をraku1.pngへ瞬間切り替え
    ;　・暗転解除
    [messageInvisible]
    [maskStart]
        [mioHyoujouSabun hyoujou="raku1.png" time="1"]
        [addTime minutes="15"]
        ;[setKaerimitiCG cg="04" ude="off" time="1000"]
    [maskEnd]
    ;SE的なボイスを再生。既存の雑談とかはしゃぐ音声とかが使えるはず（構想のみ。いったん処置ナシ）
    [messageON]
    [tb_start_text mode=3 ]
    #
    ……みおと話しながら帰り道を歩いた。[p]
    [_tb_end_text]

    ;好感度の段階が「高２」未満ならば【終了部】へジャンプ。
    [calcLoveLevel]
    [if exp="(f.love > f.LOVE_LOW && f.loveLevel < f.LOVE_LEVEL_PLUS.indexOf('高2')) || f.love <= f.LOVE_LOW" ]
        [jump target="kaerimitiEnd" ]
    [else]
    ;好感度の段階が「高２」以上なら↓継続

    [endif]
    ;-------------
    ;【ランダム】下記候補から１つランダムに抽選して表示
    [getrand min="0" max="2"]
    [setKaerimitiCG cg="01" ude="off" time="300"]
    [if exp="tf.rand == 0" ]

        ;[mioHyoujouSabun hyoujou="raku1_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        ;[mioHyoujouSabun hyoujou="enryo_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……[p]
        [_tb_end_text]

    [else]

        ;[mioHyoujouSabun hyoujou="fuan_red.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あの、えっと……[p]
        [_tb_end_text]

    [endif]
    ;-------------

    ;スチル切替。腕組み状態へ　kaerimiti_e01.png　／　kaerimiti_n01.png
    [setKaerimitiCG cg="03" ude="on" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    控えめだけど、しっかりと[r]
    みおがこちらの腕に抱きついてきた。[p]
    [_tb_end_text]

    ;-------------
    ;【ランダム】下記候補から１つランダムに抽選して表示
    [getrand min="0" max="4"]
    [setKaerimitiCG cg="05" ude="on" time="300"]
    [if exp="tf.rand == 0" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        荷物、持ってもらっちゃって[r]
        わたしの手が空いてるので……[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 1" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        人に見られちゃうかも……ですか？[r]
        わたしは、それでもいいですけど[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 2" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0016.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日もお仕事がんばった先生の手……[r]
        かっこいいですよ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 3" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0017.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……？　汗臭いかも、ですか？[r]
        気にしませんよ[p]
        [_tb_end_text]

    [elsif exp="tf.rand == 4" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m006_scene5_0018.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        じつはわたしもちょっと恥ずかしくて[r]
        でも……これがいいんです[p]
        [_tb_end_text]  

    [endif]
    ;-------------

    [tb_start_text mode=3 ]
    #
    どきどきの帰り道だったが、[r]
    誇らしくもあった。[p]
    [_tb_end_text]

    ;-------------------------------------------------
    ;【終了部】

    *kaerimitiEnd
    [iscript]
        tf.isDayEv = f.morningScenarioDayList.includes(f.day) || f.workingScenarioDayList.includes(f.day) || f.homingScenarioDayList.includes(f.day) || f.arrivalScenarioDayList.includes(f.day) || f.nightScenarioDayList.includes(f.day)
    [endscript]
    ;※既存の帰宅処理を流用する感じでウェイトなどを設定してください。
    [eval exp="f.kaigui.today.flag = !f.yorimiti && f.kaigui.lastDay+7 <= f.day && !f.todayEatStillFlag && !f.freeEv.flag && !tf.isDayEv" ]
    [getrand min="1" max="100"]
    [eval exp="tf.basePer = 60 + (f.luckyNum * 10)" ]
    [if exp="((f.kaigui.today.flag && tf.rand <= tf.basePer) || f.kaiguiDebug) && sf.isTaiken" ]
        [call storage="nonHscene/kaigui01.ks" ]
        [kaiguiEv01]
    [endif]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]
    [endreplay]
    ;暗転し、暗転下でスチルや立ち絵を消去。暗転があけると自宅前ＢＧ、ドアSE鳴らして玄関とBG移動。
    ;ただいま会話はなく、そのままさらに室内へBGへ切り替えて、エプロンみおのキッチン立ち絵表示で
    ;「ごはん、用意しますね」に合流。

    
    [maskStart]
        [messageInvisible]
        [free layer="2" name="still" ]
        [if exp="f.yorimiti || f.kaigui.today.isHappen || f.kaigui.today.isCancel" ]
            [bgChange  time="1"  method="crossfade"  storage="genkan_n1.png"  ]
        [else]
            [bgChange  time="1"  method="crossfade"  storage="genkan_e1.png"  ]
        [endif]
    [maskEnd]
    [eval exp="f.kaerimitiEV.total++"]
    [eval exp="f.kaerimitiEV.day = f.day"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    [bgChange  time="1000"  method="crossfade"  storage="genkan2_n_l.png"  ]
    [if exp="f.kaigui.today.isHappen"]
        [bgChange  time="1000"  method="crossfade"  storage="C3_n_c_lit.png" left="-109.5"  top=""  width="1475"  height="720"  ]

        [messageON]
        [mioHyoujouSabun hyoujou="raku1.png"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ごはんは済んでますし、あとはゆったりですね[p]
        [_tb_end_text]

        

        [tb_start_text mode=3 ]

        #

        ああ。今日はどうしようかな。[p]
        [_tb_end_text]
        [clearstack]
        [jump storage="command.ks" target="back" cond="f.kaigui.isHappen" ]
    [endif]

    [jump target="tadaima_A" storage="command.ks" ]
    ;つまり、このイベントが発生した場合、
    ;展開に競合する「帰宅時ハグ」「スチル付きごちそうイベント」は起こらない形となります。
    ;（フラグが立ってても折れる。帰り道イベントが発生した場合は、帰り道優先。
    ;　最初の発生条件確認の方で競合が起こらないようにはしていますが）


    [setreplay name="kaerimiti" storage="replay_select.ks" target="kaerimiti_select"]

[endmacro]