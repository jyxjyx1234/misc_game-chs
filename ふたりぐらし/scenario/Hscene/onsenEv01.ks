[macro name="onsenEv01" ]

    [tb_hide_message_window  ]
    [wait  time="500"  ]
    [maskStart]
    [if exp="f.dayPart == 'morning'" ]
        [bgChange time="0"  method="crossfade"  storage="onsen3_d.png"  ]
    [elsif exp="f.dayPart == 'evening'" ]
        [bgChange time="0"  method="crossfade"  storage="onsen3_y.png"  ]
    [elsif exp="f.dayPart == 'night'" ]
        [bgChange time="0"  method="crossfade"   storage="onsen3_n.png"  ]
    [endif]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [setreplay name="onsenEv" storage="" target=""]
    [tb_start_text mode=3 ]
    #
    休日ということもあり、[r]
    ペア貸し切りの混浴に通された。[p]
    [_tb_end_text]

    ;【分岐】このイベントの発生が初回の時
    [if exp="f.konyokuEv.total == 0" ]

        [tb_start_text mode=3 ]
        #
        そう、混浴だ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        従業員さんが平然と案内するので[r]
        違和感なくここまで来てしまった。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        まあ家族風呂みたいなものと思えば[r]
        おかしくはないが……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        などと考えながら湯に近づく。[p]
        [_tb_end_text]

        ;スチル表示【02】
        [eval exp="f.towel = 'true'" ]
        [setKonyokuCG cg="02" towel="&f.towel"  time="1000"  ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0001.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        あ、先生[r]
        お先にいただいてます[l]
        [_tb_end_text]

        ;一択選択肢　……
        [glink_center storage="Hscene/onsenEv01.ks" target="onsenEv01_1"  text="……"  ]
        [s]
        *onsenEv01_1

        [tb_start_text mode=3 ]
        #
        まあ、さすがにタオルは巻いてるよな。[p]
        [_tb_end_text]

        ;スチル切替【07】
        [setKonyokuCG cg="07" towel="&f.towel"  time="300"  ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……？[p]
        [_tb_end_text]

        ;スチル切替【01】
        [setKonyokuCG cg="01" towel="&f.towel"  time="300"  ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        この温泉、髪にすごくいい効用だそうで[r]
        お湯に髪をつけちゃってくださいって[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        あまり聞かないが、なるほど。[r]
        いろんな試みをしている旅館なのだなぁ。[p]
        [_tb_end_text]

        ;スチル切替【03】
        [setKonyokuCG cg="03" towel="&f.towel"  time="300"  ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0004.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        普段こういうことしないから[r]
        開放的で楽しいです[l]
        [_tb_end_text]

        ;選択肢
        ;　きれいな髪だもんね
        ;　タオルは……
        [glink_left storage="Hscene/onsenEv01.ks" target="onsenEv01_2"  text="きれいな髪だもんね"  ]
        [glink_right storage="Hscene/onsenEv01.ks" target="onsenEv01_3"  text="タオルは……"  ]
        [s]

        ;--------------------
        ;【選択肢分岐】きれいな髪だもんね
        *onsenEv01_2

        ;スチル切替【04】
        [setKonyokuCG cg="04" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ありがとうございます[p]
        [_tb_end_text]


        ;スチル切替【05】
        [setKonyokuCG cg="05" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        なんとなく長くしちゃって[r]
        切る勇気が湧かないだけなんですけど[p]
        [_tb_end_text]


        ;スチル切替【09】
        [setKonyokuCG cg="09" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ただ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ただ……？[p]
        [_tb_end_text]

        ;　→次の共通部へ
        [jump  target="onsenEv01_4"  ]
        ;--------------------
        【選択肢分岐】タオルは……
        *onsenEv01_3
        ;スチル切替【07】
        [setKonyokuCG cg="07" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……さすが先生です[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        なんだかほめられてしまった。[p]
        [_tb_end_text]


        ;スチル切替【09】
        [setKonyokuCG cg="09" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱり、そこが引っかかりますよね[p]
        [_tb_end_text]

        ;　→次の共通部へ
        [jump  target="onsenEv01_4"  ]
        ;--------------------
        【共通部】
        *onsenEv01_4

        ;スチル切替【05】
        [setKonyokuCG cg="05" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        髪はさっき話した通りとしても……[p]
        [_tb_end_text]


        ;スチル切替【09】
        [setKonyokuCG cg="09" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        やっぱりタオルはマナー的によくないですよね[p]
        [_tb_end_text]


        ;スチル切替【06】
        [setKonyokuCG cg="06" towel="&f.towel"  time="300"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        次は……巻かないで入ります……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        なんだか一大決心という感じだった。[p]
        [_tb_end_text]


        ;　→次の全体共通部へ
        [jump  target="onsenEv01_5"  ]
        ;-------------------------
        ;-------------------------
        ;【分岐】このイベントの発生が２回の時
    [elsif exp="f.konyokuEv.total == 1" ]

        [tb_start_text mode=3 ]
        #
        前回、タオルを巻くのはやめると言っていたが――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        どうなることだろうと脱衣所を出て[r]
        湯に近づく。[p]
        [_tb_end_text]
        [eval exp="f.towel = 'false'" ]
        ;スチル表示【02】
        [setKonyokuCG cg="02" towel="&f.towel"  time="1000"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ、先生[r]
        お先にいただいてます[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        タオルを巻くのは諦めたが[r]
        恥ずかしいものは恥ずかしい……という感じだな。[p]
        [_tb_end_text]


        ;　→次の全体共通部へ
        [jump  target="onsenEv01_5"  ]
    [else]
        ;-------------------------
        ;-------------------------
        ;【分岐】このイベントの発生が３回め以降の時
        [eval exp="f.towel = 'false'" ]

        ;スチル表示【01】
        [setKonyokuCG cg="01" towel="&f.towel"  time="1000"  ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日もいい湯加減ですよ[p]
        [_tb_end_text]


        ;　→次の全体共通部へ
        [jump  target="onsenEv01_5"  ]
    [endif]
    ;-------------------------
    ;【全体共通部】
    *onsenEv01_5
    [tb_start_text mode=3 ]
    #
    ともかく、温泉を楽しむこととしよう。[p]
    [_tb_end_text]


    ;スチル切替【03】
    [setKonyokuCG cg="03" towel="&f.towel"  time="300"  ]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    ;スチル切替【04】
    [setKonyokuCG cg="04" towel="&f.towel"  time="300"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぽかぽか～♪[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    広い温泉でゆったりとくつろいだ！[p]
    [_tb_end_text]

    ;平日の温泉入浴時と同じ体力等変動をここで行う
    [addTime minutes=30]
    [calcHP HP=20 rand="false"]
    [calcMioHP HP=20 rand="false"]
    [plusLove loveLevel="middle"]
    [plusMood moodLevel="middle"]

    [tb_start_text mode=3 ]
    #
    休日に温泉でゆったり贅沢……[r]
    今週の疲れが溶けだしていくようだ。[p]
    [_tb_end_text]

    ;スチル切替【09】
    [setKonyokuCG cg="09" towel="&f.towel"  time="300"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今週もいろんなことがありましたねえ[p]
    [_tb_end_text]

    [setKonyokuDebugTalk]

    [tb_start_text mode=3 ]
    #
    そうだなぁ……[p]
    [_tb_end_text]

    [setKonyokuTalk]

    *endKonyoku

[endmacro]

[macro name="setKonyokuDebugTalk" ]
    [if exp="sf.isDebug && !sf.isTaiken" ]
        [glink2 cm="false" fix="true" color="btn_05_black_narrow" storage="Hscene/onsenEv01.ks" target="debugKonyokuTalkNum" text="デバッグ会話指定"  name="debugTalk" x="200" y="340" size="16"]

    [endif]
    [eval exp="f.debugTalk = false" ]

[endmacro]

[macro name="setKonyokuTalk" ]
    [clearfix name="debugTalk" ]
    [cm]
    [getrand min="1" max="10"]
    [eval exp="f.konyokuTalkNum = tf.rand" ]
    [eval exp="tf.target = 'konyokuTalk' + f.konyokuTalkNum" ]
    [call storage="konyokuTalk.ks" target="&tf.target" ]
[endmacro]

[macro name="debugKonyoku" ]
    *debugKonyokuTalk
    [commit]
    [clearfix name="debugTalk" ]
    [cm]
    [eval exp="f.debugTalk = true" ]
    [eval exp="tf.target = 'konyokuTalk' + f.konyokuTalkNum" ]
    [call storage="konyokuTalk.ks" target="&tf.target" ]
    [jump storage="Hscene/onsenEv01.ks" target="endKonyoku" ]
[endmacro]

[return]

*debugKonyokuTalkNum

[clearfix name="debugTalk" ]
[edit  name="f.konyokuTalkNum" left="200" top="280" height="50" width="40"  initial="1" cond="sf.isDebug" ]
[glink2 cm="false" fix="true" color="btn_05_black_narrow" storage="Hscene/onsenEv01.ks" target="debugKonyokuTalk" text="ID指定会話"  name="debugTalk" x="200" y="340" size="16" ]
[s]
