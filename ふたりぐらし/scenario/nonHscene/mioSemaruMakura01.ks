[macro name="semaruMakura" ]
    ;---------------------------------------------
    [stopbgm  time="6000"  fadeout="true"  ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [free layer="2" name="soine" ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [eval exp="f.semaruEV.today.isHappen = true" ]
    [eval exp="f.semaruEV.today.type == 'makura'" ]
    [setreplay name="semaruMakura" storage="" target=""]






;----------------------

    [if exp="f.semaruEV.from == 'soine'" ]

        ;----------------------
        ;【発生事由「添い寝から」】添い寝（夜）イベントで、みおがムラムラしているのに「抱き寄せる」以外の行動をとった
        ;スチル表示【makura01.png】
        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]


        [messageON]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あのぅ、先生……[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="01.png" width="1280" height="720" name="still,makura1" time="1500"]

        [tb_start_text mode=3 ]
        #
        点け直した蛍光灯のあかりの下で、[r]
        みおは緊張気味に枕を抱きしめていた。[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        大丈夫ですか？[r]
        その、なにもしなくて……[p]
        [_tb_end_text]

        ;---------------------------
        ;初回時のみの表示部分
        [if exp="f.semaruEV.soine == 0" ]

            [tb_start_text mode=3 ]
            #
            それは、どういう意味だ……？[p]
            [_tb_end_text]

            [semaruMakuraStillSet layer="2" storage="03.png" width="1280" height="720" name="still,makura1" time="300"]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0003.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            このところ、苦しそうだったので……[p]
            [_tb_end_text]
        [endif]
        ;---------------------------
        [semaruMakuraStillSet layer="2" storage="01.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えっちな気持ちとかを無理して[r]
        抑え込んでるじゃないかなぁって[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="04.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0005.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        それで、心配で……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ムラムラしてるのが[r]
        バレてしまったようだ……[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        いい、ですよ[p]
        [_tb_end_text]
        
        [semaruMakuraStillSet layer="2" storage="05.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0007.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        そのムラムラ、わたしにぶつけて[r]
        すっきりできるなら……どうぞ……[l]
        [_tb_end_text]

        ;　→<2>選択肢へジャンプ


    [else]

        ;----------------------
        ;【発生事由「通常就寝から」】上記以外のパターン：みおと性的な意味も兼ねた付き合いが長いのにまだ処女を奪っていない
        ;スチル表示【makura01.png】
        [playse  volume="100"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0008.mp3"  ]
        [messageON]
        [tb_start_text mode=3 ]
        #みお
        先生[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="1500"]

        [tb_start_text mode=3 ]
        #
        点け直した蛍光灯のあかりの下で、[r]
        みおは緊張気味に枕を抱きしめていた。[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="01.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お願いが、あります[p]
        [_tb_end_text]

        ;-------------------------
        ;【プチ分岐】状況に合う方ひとつを表示


        ;ここに来るのがはじめて
        [if exp="f.semaruEV.makura.mio == 0" ]
        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしを抱いてください[p]
        [_tb_end_text]

        [else]
        ;上記以外の場合
        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日こそ、わたしを抱いてください[p]
        [_tb_end_text]
        [endif]
        ;-------------------------

        [semaruMakuraStillSet layer="2" storage="03.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生がわたしをだいじにしてくれてるのは[r]
        わかります[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="04.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        でももう、こんなに好き合って[r]
        長い時間いっしょに居て――[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="01.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0014.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしももうそろそろ、[r]
        きちんと先生とつながりたくて[p]
        [_tb_end_text]

        [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0015.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        だから、わたしの処女、[r]
        もらってほしいんです[l]
        [_tb_end_text]



        ;　→<2>選択肢へジャンプ
    [endif]
    ;【共通部】
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="150"  width=""  height=""  text="手つなぎ正常位１" exp=""  _clickable_img=""  target="debugSeijoui1" cond="sf.isDebug" ]
    [glink color="btn_05_black_narrow"  size="16"  x="10"  y="180"  width=""  height=""  text="手つなぎ正常位２" exp=""  _clickable_img=""  target="debugSeijoui2" cond="sf.isDebug" ]
    [glink  color="btn_05_black glink_double_left"  addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="みおを抱く" exp=""  _clickable_img=""  target="semaruMakura1_1"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="抱かずに寝る"  _clickable_img=""  target="semaruMakura2_1"  ]
    [s]
    *semaruMakura1_1
    ;----------------------
    ;----------------------
    ;分岐【選択肢】みおを抱く

    [tb_start_text mode=3 ]
    #
    うなずき、みおの手をとる――[p]
    [_tb_end_text]

    [semaruMakuraStillSet layer="2" storage="03.png" width="1280" height="720" name="still,makura1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……[p]
    [_tb_end_text]

    ;※本来は下記のシーン移行をおこなうが、現状では「仮テキスト：シーン発生（現状未設定）」という
    ;　仮テキストを出して、暗転、暗転中にスチル消去をし、朝演出へ飛ばしてください。
    [if exp="f.semaruEV.HEv.seijoui.total == 0" ]
        [semaruSeijoui01]
    [else]
        [semaruSeijoui02]
    [endif]
    
    [jump target="semaruMakuraEnd" ]
    ;下記の記述の通りのシーン移行

    ;　せまるみお（枕）　→　シーン「手つなぎ正常位」発生。続きはそちらのシーンテキストにて補完

    ;　※これを選んで「体力不足で実行できない」というのは興ざめなので、
    ;　　せまるみおイベント自体に体力を見て判定を行うか、
    ;　　残体力に関係なく以降のえっちシーンは実行できるように注意。
    ;　　（最悪、みおのおさそいで元気が出た、と一言途中で回復のくだりを足せばいい）


    *semaruMakura2_1
    ;----------------------
    ;分岐【選択肢】抱かずに寝る　※【乗】パターンと違って逆レ発展はなし

    [tb_start_text mode=3 ]
    #
    据え膳食わぬは……というやつだが。[r]
    だがしかし。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今夜はしない！[p]
    [_tb_end_text]
    [semaruMakuraStillSet layer="2" storage="02.png" width="1280" height="720" name="still,makura1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0017.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    そう、ですか……[l]
    [_tb_end_text]

    ;選択肢
    ;　やっぱり抱く		→　分岐【選択肢】みおを抱く　へジャンプ
    ;　断固抱かずに寝る	→　下記処理
    [glink  color="btn_05_black glink_double_left"  addlog="true"  size="20"  x="375"  y="400"  width=""  height=""  text="やっぱり抱く" exp=""  _clickable_img=""  target="semaruMakura2_1_2"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="抱かずに寝る"  _clickable_img=""  target="semaruMakura2_2"  ]
    [s]

    *semaruMakura2_1_2
    [tb_start_text mode=3 ]
    #
    思いなおして、みおの手をとることにした――[p]
    [_tb_end_text]
    [semaruMakuraStillSet layer="2" storage="03.png" width="1280" height="720" name="still,makura1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……[p]
    [_tb_end_text]
    [if exp="f.semaruEV.HEv.seijoui.total == 0" ]
        [semaruSeijoui01]
    [else]
        [semaruSeijoui02]
    [endif]
    
    [jump target="semaruMakuraEnd" ]

    *semaruMakura2_2

    [semaruMakuraStillSet layer="2" storage="03.png" width="1280" height="720" name="still,makura1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    気が変わったら、[r]
    いつでも言ってくださいね？[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    悪いことをしたかな、とも思ったが、[r]
    みおの気遣いで胸が温まったようだった。[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true"  size="20"  x="772"  y="400"  width=""  height=""  text="ということで、おやすみなさい"  _clickable_img=""  target="semaruMakura2_3"  ]
    [s]
    *semaruMakura2_3
    [semaruMakuraStillSet layer="2" storage="05.png" width="1280" height="720" name="still,makura1" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene5_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おやすみなさい……[p]
    [_tb_end_text]
    [eval exp="f.semaruEV.today.isCancel = true" ] 
    [jump target="*semaruMakuraEnd" ]

    *debugSeijoui1
    [free layer="2" name="debugText"]
    [call storage="Hscene/semaruSeijoui01.ks" ]
    [call storage="Hscene/semaruSeijoui02.ks" ]    
    [semaruSeijoui01]
    [jump target="semaruMakuraEnd" ]
    *debugSeijoui2
    [free layer="2" name="debugText"]
    [call storage="Hscene/semaruSeijoui01.ks" ]
    [call storage="Hscene/semaruSeijoui02.ks" ]    
    [semaruSeijoui02]
    [jump target="semaruMakuraEnd" ]
    ;イベント終了。暗転、暗転中にスチル消去をし、朝演出へ移行（途中の夜這いパートはなし）

    *semaruMakuraEnd
    [eval exp="f.semaruEV[f.semaruEV.type][f.semaruEV.from]++" ]
    [messageInvisible]
    [maskStart]
    [free layer="2" name="still" ]
[endmacro]
