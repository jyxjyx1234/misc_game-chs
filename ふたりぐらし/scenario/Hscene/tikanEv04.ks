[macro name="tikanEv04" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜痴漢ごっこ　段階４＞

    ;対応朝会話ID112

    ;　この朝会話の発生条件、下記をすべて満たすとき、確定で発生（へび、おでん関係の朝会話が起こる場合はそちらを優先）
    ;　　・朝会話「ID111（痴漢ごっこ段階３）」が発生済
    ;　　・前回の朝会話「ID111（痴漢ごっこ段階３）」か、本イベント「朝会話ID112」の同行を断る展開が発生してから
    ;　　　７日以上経過している。
    ;　　・みおが怒っていたり、きげん「低」状態でも、疲労状態でもない。

    ;　※同行を断った場合は、再度条件を満たすとこのイベントが発生。
    ;　※同行を選んでイベントを完走した場合も、他と違ってこのイベントは条件を満たす限り何度でも発生する。

    [if exp="f.flag_replay" ]
        [bgChange storage="eki00.png" time="1"]
        [jump target="tikanEv04_3" ]
    [endif]

    ;---------------------
    ;　上記の通り、朝会話実行からの開始の想定で下記会話

    [mioHyoujouSabun hyoujou="komaru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0001.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あのう、また課外授業があって[r]
    電車に乗るんですが……[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    あれだけ“痴漢ごっこ”をした上での[r]
    この声かけ、これは――[l]
    [_tb_end_text]

    ;選択肢
    ;　ぜひ一緒に行こう
    ;　今日は遠慮しておく
    [glink_left storage="Hscene/tikanEv04.ks" target="tikanEv04_1" text="ぜひ一緒に行こう"]
    [glink_right storage="Hscene/tikanEv04.ks" target="tikanEv04_2" text="今日は遠慮しておく"]
    [s]

    ;--------------------------------
    ;【選択肢分岐】今日は遠慮しておく
    *tikanEv04_2
    [mioHyoujouSabun hyoujou="enryo.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうですよね、先生もお仕事とかありますし[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanaketojime4.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    急な話ですみませんでした[p]
    [_tb_end_text]
    [mioHyoujouSabun hyoujou="happyake1.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene6_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    迷わないよう、がんばってきますね[p]
    [_tb_end_text]


    ;イベント終了。ふつうに朝会話終了後の出発の流れに合流
    ;この日のお仕事中演出のみおドットは、朝study30,昼study31で固定
    [eval exp="f.tikanEv.cancelToday = true" ]
    [jump target="tikanEv04_end" ]
    ;--------------------------------
    ;【選択肢分岐】ぜひ一緒に行こう
    *tikanEv04_1
    [tb_start_text mode=3 ]
    #
    前回同様、仕事のことはどうとでもできる。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="happyake2.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとうございます！[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="doya.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあさっそく支度してきますね[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [eval exp="f.cloth = f.schoolUniform" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [setTime hours=9 minutes=0]
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
    [bgChange time="0"  method="crossfade"  storage="eki00.png"  ]
    [wait  time="500"  ]
    ;適当に時間経過
    [addTime minutes=60]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    *tikanEv04_3
    ;シーン回想の場合、ここからスタート（BG：eki00.png）
    [if exp="f.flag_replay" ]
        [maskEnd]
    [endif]
    [messageON]
    ;BGSとして、train.mp3　を再生。段階によってはピストン音BGSも流すかもしれないので、
    ;train.mp3再生は専用チャンネルを使うか、いっそBGM枠としての再生がよいかと思います。
    [playbgm storage="../sound/BGS/train.mp3" ]

    [mioHyoujou hyoujou="tohoho_red.png"]

    [tb_start_text mode=3 ]
    #
    ということで電車にゆられている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    前にあったような混み具合は[r]
    やはり特例だったようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    他に乗客は無く、貸し切り状態。[p]
    [_tb_end_text]

    ;スチル切替Ａ【21】スカートをまくり、下着越しにおしりを揉む
    [setTikanACG cg="21"]

    [tb_start_text mode=3 ]
    #
    ――手際よく、みおの深くに触れていく。[p]
    [_tb_end_text]


    ;スチル切替Ａ【22】
    [setTikanACG cg="22"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    触る前から濡れていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおもすっかり、この“ごっこ”遊びに
    夢中なのだ。[p]
    [_tb_end_text]


    ;スチル切替Ａ【24】。スカートめくって下着越しのおしりもみ。
    [setTikanACG cg="24"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ……っくぁ……[r]
    や、ぁぁ……[p]
    [_tb_end_text]



    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんぅぅぅ～っ[p]
    [_tb_end_text]


    ;スチル切替Ａ【25】
    [setTikanACG cg="25"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、やぁっ[r]
    だめっ、だめですっ、それだめっ[p]
    [_tb_end_text]



    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……ッ[p]
    [_tb_end_text]

    ;スチル切替Ａ【28】

    [setTikanACG cg="28"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、んっ……く、っひぅぅぅ……っ！！[p]
    [_tb_end_text]

    [setTikanACG cg="29"]
    [tb_start_text mode=3 ]
    #
    痙攣したように腰を震わせ、[r]
    みおは達した。[p]
    [_tb_end_text]

    ;スチル切替Ａ【26】
    [setTikanACG cg="26"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……ふぁぁ……[r]
    うっ、うぅぅ……[p]
    [_tb_end_text]

    ;スチル切替Ａ【27】
    [setTikanACG cg="27"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    酸欠、になりそ……[r]
    くらくらするのぉ……[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】。先生のナマペニスをみおのおしりにすりつける。
    [setTikanACG cg="29"]
    [tb_start_text mode=3 ]
    #
    倒れそうな腰をつかみ止め、[r]
    そのままペニスをすりつける。[p]
    [_tb_end_text]


    ;スチル切替Ａ【30】
    [setTikanACG cg="30"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あふぁ……せんせ、すご……[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】
    [setTikanACG cg="29"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなところでおちんちん出して……[r]
    おしりにこすりつけて来て……[p]
    [_tb_end_text]

    ;スチル切替Ａ【31】

    [setTikanACG cg="31"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    誰かに見つかったら“ごっこ”でしたじゃ[r]
    済まないのに……[p]
    [_tb_end_text]


    ;スチル切替Ａ【32】

    [setTikanACG cg="32"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それでもおちんちん、気持ちよくなりたくて[r]
    一生懸命なんですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    肯定のごとく尻ズリをはじめる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    すでにみおの股間は尻まで届く大洪水だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ペニスを押しつければむわっと[r]
    強い性臭が立ち昇る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抽送のつど、びくりと震えるみおの性感も。[p]
    [_tb_end_text]

    ;スチル切替Ａ【29】
    [setTikanACG cg="29"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せ、んせ……わたし、どきどきで[r]
    ばくはつしそう……[p]
    [_tb_end_text]



    ;;;;;;;;このあとの展開、スチルＢ準拠のため、段階３ができあがったらコピペ



    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今……ここで犯してください……[r]
    痴漢えっち、して欲しいの……[p]
    [_tb_end_text]
    [playse storage="se/train_wind.mp3" buf="1"]
    [tb_start_text mode=3 ]
    #
    揺れるカーブが間近に迫っていた。[r]
    風切り音が耳の中で大きくなる。[p]
    [_tb_end_text]

;★スチルB切替【02_01.png】
    [setTikanBCG cg="02_01"]
    [free layer="2" name="tikan29" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、ぁぁあぁんっ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおをドアに押しつけ、ペニスをねじこんだ。[p]
    [_tb_end_text]


;★スチルB切替【02_02.png】
    [setTikanBCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ、っひぁぁ、がたごと、揺れるのがぁ[r]
    おなかの中でおちんちん暴れてぇっ[p]
    [_tb_end_text]

;★【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0" time="6000" storage="BGS/piston1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    電車の揺れが押し返すように働き、[r]
    それをまたピストンで圧し潰す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膣の中をペニスが暴れ、縦横無尽かつ[r]
    不規則にみおを蹂躙していく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふたりがかりでみおを串刺しにしているような[r]
    奇妙な感覚だ。[p]
    [_tb_end_text]


;★スチルB切替【02_04.png】
    [setTikanBCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いけないこと、きもちいいのぉっ[p]
    [_tb_end_text]

;★スチルB切替【02_05.png】
    [setTikanBCG cg="02_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生にいけないこと教えてもらって、[r]
    きもちいいのがまんできなくなってぇ[p]
    [_tb_end_text]


;★【BGS】piston2.mp3,time6000で再生
    [fadeinse buf="0" time="6000" storage="BGS/piston2fast.mp3"   ]
;★スチルB切替【02_02.png】
    [setTikanBCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すきっ、すきぃっ、先生っ[p]
    [_tb_end_text]

;★スチルB切替【02_04.png】
    [setTikanBCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0045.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    もっと先生にめちゃくちゃにされたいのぉっ[l]
    [_tb_end_text]

    ;一択選択肢　望み通り、痴漢ザーメンくれてやる！
    [glink_center storage="Hscene/tikanEv04.ks" target="tikanEv04_4" text="望み通り、痴漢ザーメンくれてやる！"]
    [s]
    *tikanEv04_4

;★スチルB切替【02_03.png】
    [setTikanBCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……あぁ……♡[p]
    [_tb_end_text]

;★スチルB切替【02_06.png】
    [setTikanBCG cg="02_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい♡　はいぃ♡
    がんばってお精子おむかえしますからっ[p]
    [_tb_end_text]

;★スチルB切替【02_07.png】
    [setTikanBCG cg="02_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0049.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    注いでください、先生の痴漢ザーメン……っ♡[l]
    [_tb_end_text]

    ;一択選択肢　出る……っ！
    [glink_center storage="Hscene/tikanEv04.ks" target="tikanEv04_5" text="出る……っ！"]
    [s]
    *tikanEv04_5

    ;射精演出,;★スチルB切替【02_08.png】,BGS停止
    [stopse buf="0" ]
    [setTikanBCG cg="02_08" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ――あぁぁ――！！[p]
    [_tb_end_text]

;★スチルB切替【02_09.png】
    [setTikanBCG cg="02_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っくぅぅぅん……♡[p]
    [_tb_end_text]


;★スチルB切替【02_10.png】
    [setTikanBCG cg="02_10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごぉい……[r]
    あふれてるの、わかりますぅ[p]
    [_tb_end_text]

;★スチルB切替【02_11.png】
    [setTikanBCG cg="02_11"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    本当に痴漢レイプでおかあさんに[r]
    なっちゃいそう……[p]
    [_tb_end_text]


    ;スチル切替　スチルとしてbk100
    [setBK ]

    [tb_start_text mode=3 ]
    #
    ――電車はちょうど駅に着こうとしていた。[p]
    [_tb_end_text]

    

    [tb_start_text mode=3 ]
    #
    しばし休憩をとってから、みおを課外授業の[r]
    美術館まで送り届けるのだった。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="still" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [chara_hide_all  time="1"  wait="false"  ]
    [wait  time="500"  ]
    [setTime hours=10 minutes=0]
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
    [deleteBK time="1"]
    [bgChange time="0"  method="crossfade"  storage="eki01.jpg"  ]
    [wait  time="500"  ]
    [setTime hours=11 minutes=0]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [mioHyoujou hyoujou="komruake6_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、ありがとうございました[r]
    えへへ……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru1_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m010_scene7_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ええと、それじゃあ、いってきます[p]
    [_tb_end_text]

    [mioLeave]
    [messageON]
    [tb_start_text mode=3 ]
    #
    すっかり、課外授業が痴漢ごっこの[r]
    口実になっちゃったなぁ……[p]
    [_tb_end_text]


    ;シーン回想の場合、ここで終了

    ;みお体力-20（先生体力は射精時に減少）

    [if exp="!f.flag_replay" ]

        ;みお体力-20（先生体力は射精時に減少）
        [calcMioHP HP="-20"]
        [maskStart]
            [chara_hide_all time="1" ]
            [eval exp="f.tikanEv.playToday = true" ]
            [eval exp="f.tikanEv.today = true" ]
            [eval exp="f.tikanEv.total = 3" cond="f.tikanEv.total < 3" ]
            [eval exp="f.tikanEv.total++" ]
        ;暗転し、暗転開けで午後のお仕事演出開始。
        ;昼のお仕事中演出のみおドットをstydu32で固定
            [setreplay name="tikanEv" storage="replay_select.ks" target="tikan_select"]
    [endif]

    *tikanEv04_end
    [eval exp="f.tikanEv.lastDay = f.day" ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[endmacro]