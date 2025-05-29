[macro name="rennyuBukkake01" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;＜【疑似エロイベント】練乳ぶっかけ＞
    [setreplay name="accident" storage="replay_select.ks" target="rennyu_select"]
    ;シーン回想の場合、再生設定で指定したお店の背景、
    ;再生設定で指定した衣服のみおの立ち絵で表情normal.pngを表示した状態で開始
    [if exp="f.flag_replay" ]
        [if exp="mp.type == 'teashop'" ]
            [bgChange storage="teashop.png" time="1"]
        [else]
            [bgChange storage="coffeeshop.png" time="1"]
        [endif]
        [mioHyoujouSabun hyoujou="normal.png" time="1"]
        [playbgm storage="BGM7_holiday.mp3" loop="true" ]
        [maskEnd]

    [endif]

    ;-------------------------
    ;-------------------------
    ;【ぶっかけイベント発生初回時】
    [messageON]
    [if exp="f.rennyu.teashop.total == 0 && f.rennyu.coffeeshop.total == 0" ]

        [tb_start_text mode=3 ]
        #
        そこでふと、食べ終わってから[r]
        気づいたのだが……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        スペシャルメニューの調味料として[r]
        テーブルの脇に多様な瓶やボトルが並んでいる。[p]
        [_tb_end_text]

        [if exp="mp.type == 'teashop'" ]
            [eval exp="f.rennyu.lastType = '練乳'" ]
            [eval exp="f.rennyu.lastItem = 'rennyu'" ]
        [else]
            [eval exp="f.rennyu.lastType = 'ハチミツ'" ]
            [eval exp="f.rennyu.lastItem = 'honey'" ]
        [endif]

        [tb_start_text mode=4 ]
        #
        手にとって眺めてみようと[r]
        [emb exp="f.rennyu.lastType" ]の容器を掴み上げたところ――[l]
        [_tb_end_text]
        ;↑＠＠＠は文字列を代入。コーヒーショップの場合は「ハチミツ」、ティーショップの場合は「練乳」

        ;一択選択肢　「あっ」
        [glink_center storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_1" text="あっ"]
        [s]
        *rennyuBukkake01_1
        [mioHyoujouSabun hyoujou="odoroki.png"]
        [tb_start_text mode=3 ]
        #みお
        ひゃあっ！？[p]
        [_tb_end_text]


        ;みおにかかった物体のフラグとして、
        ;コーヒーショップの場合はハチミツ、ティーショップの場合は練乳を設定して
        ;【イベント共通部】へジャンプ
        [jump target="rennyuBukkake01_common" ]

    [else]

        ;-------------------------
        ;-------------------------
        ;【ぶっかけイベント発生２回め以降】

        [tb_start_text mode=3 ]
        #
        スペシャルメニューの調味料として[r]
        テーブルの脇に多様な瓶やボトルが並んでいる。[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        以前はみおが大変な目に遭ったが――[l]
        [_tb_end_text]

        [glink_left storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_3" text="今回は大丈夫だろうと特に警戒しない"]
        [glink_right storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_2" text="事故が起こらないよう警戒する"]
        [s]
        ;選択肢
        ;　今回は大丈夫だろうと特に警戒しない
        ;　事故が起こらないよう警戒する

        ;-------
        ;【選択肢分岐】事故が起こらないよう警戒する
        *rennyuBukkake01_2
        [tb_start_text mode=3 ]
        #
        万一なにかが降りかかって来ても[r]
        かばえるように周囲に気を配りつつ過ごした……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #みお
        ……？[p]
        [_tb_end_text]

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
        警戒の甲斐あってか後はなにごとも無く、[r]
        無事に帰路へついたのだった。[p]
        [_tb_end_text]

        ;→【イベント終了部】へジャンプ
        [jump target="renntyBukkake01_end" ]
        ;-------
        ;【選択肢分岐】今回は大丈夫だろうと特に警戒しない
        *rennyuBukkake01_3
        [tb_start_text mode=3 ]
        #
        などと油断した直後。[p]
        [_tb_end_text]

        ;----
        ;下記から１つ抽選して表示（すべて等確率）
        [getrand min="1" max="4"]

        [if exp="tf.rand == 1" ]

            [tb_start_text mode=4 ]
            #
            テーブル脇を走り抜けたこどもが[r]
            ボトルにぶつかって――[l]
            [_tb_end_text]

        [elsif exp="tf.rand == 2" ]
        
            [tb_start_text mode=4 ]
            #
            お冷をとろうとしたみおの[r]
            手元が狂ってしまい――[l]
            [_tb_end_text]
            
        [elsif exp="tf.rand == 3" ]

            [tb_start_text mode=4 ]
            #
            ポルターガイストなのか[r]
            わけもなくボトルが倒れて――[l]
            [_tb_end_text]
            
        [elsif exp="tf.rand == 4" ]
        
            [tb_start_text mode=4 ]
            #
            近くの道路をトラックが走り抜け[r]
            店舗全体がちょっと揺れた拍子に――[l]
            [_tb_end_text]

        [endif]

        ;----

        ;２択の選択肢が出るが、内容はお店によって異なる
        [if exp="mp.type == teashop" ]
            [glink_left storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common" text="練乳が！" exp="f.rennyu.lastItem = 'rennyu',f.rennyu.lastType='練乳'"]
            [glink_right storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common" text="いちごソースが！" exp="f.rennyu.lastItem = 'berry',f.rennyu.lastType='いちごソース'"]
            [s]
        [else]
            [glink_left storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common" text="ハチミツが！" exp="f.rennyu.lastItem = 'honey',f.rennyu.lastType='ハチミツ'"]
            [glink_right storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common" text="ホイップクリームが！" exp="f.rennyu.lastItem = 'cream',f.rennyu.lastType='ホイップクリーム'"]
            [s]
        [endif]


        ;みおにかかった物体のフラグとして、選択肢の内容を設定して
        ;【イベント共通部】へジャンプ

    [endif]

    *rennyuBukkake01_common
    ;【イベント共通部】
    ;　以降、テキスト中の「＠＠＠」はみおにぶっかけられたものとしてフラグ設定をしたものの名称が入ります。


    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;スチルとしてＢＧフォルダの「white100.jpg」を表示
    [image layer="3" storage="../bgimage/white100.jpg" time="1000" name="wtcg" visible="true" ]
    [tb_start_text mode=3 ]
    #みお
    ふえ～！[p]
    [_tb_end_text]

    ;立てたフラグに対応する状態のスチルを表示（処理的にはスチル切替）
    ;現状は、「shopBukkake」フォルダの「01.png」です
    [setBukkakeCG cg="01" time="1"]
    [free layer="3" name="wtcg" time="1000" ]

    [tb_start_text mode=3 ]
    #
    みおが大量の[emb exp="f.rennyu.lastType" ]を浴びてしまった……[p]
    [_tb_end_text]

    [setBukkakeCG cg="02" time="300"]

    [if exp="f.rennyu.teashop.total == 0 && f.rennyu.coffeeshop.total == 0" ]

        [tb_start_text mode=4 ]
        #みお
        なにがどうなってるんですかぁ～！[l]
        [_tb_end_text]

    [else]

        [tb_start_text mode=4 ]
        #みお
        またこれですかぁ～！[l]
        [_tb_end_text]

    [endif]
    [glink_left storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common1" text="美味しそう" exp=""]
    [glink_right storage="nonHscene/rennyuBukkake01.ks" target="rennyuBukkake01_common2" text="動かないでね" exp=""]
    [s]


    ;--------------
    ;【選択肢分岐】美味しそう
    *rennyuBukkake01_common1
    [setBukkakeCG cg="03" time="300"]

    [tb_start_text mode=3 ]
    #みお
    べたべたですけど、たしかにいい匂い……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    人前でなければ[r]
    みおを舐め回していたかもしれない。[p]
    [_tb_end_text]

    [setBukkakeCG cg="02" time="300"]

    [tb_start_text mode=3 ]
    #みお
    先生、なんだか変なこと考えてませんか……？[p]
    [_tb_end_text]



    ;　→次の共通部へ

    [jump target="rennyuBukkake01_common3" ]
    ;--------------
    ;【選択肢分岐】動かないでね
    *rennyuBukkake01_common2
    [setBukkakeCG cg="01" time="300"]
    [tb_start_text mode=3 ]
    #みお
    うぅ、ぬるぬるしますぅ～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    動くと余計ひどくなりかねない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    拭いてあげるからじっとしててね、と[r]
    みおに声をかける。[p]
    [_tb_end_text]

    [setBukkakeCG cg="03" time="300"]
    [tb_start_text mode=3 ]
    #みお
    は、はい[r]
    頼もしいです……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="rennyuBukkake01_common3" ]
    ;--------------
    ;【共通部】
    *rennyuBukkake01_common3
    [tb_start_text mode=3 ]
    #
    そうこうするうちにお店の人が[r]
    濡れタオルなどを持ってきてくれた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
    [tb_start_text mode=3 ]
    #
    借りた道具で丁寧にみおや周囲を[r]
    きれいにしていく。[p]
    [_tb_end_text]


    ;-----------------
    ;【プチ分岐】
    [if exp="(f.rennyu.teashop.total > 0 || f.rennyu.coffeeshop.total > 0) && f.sperm >= 20" ]

        [setBukkakeCG cg="04" time="300"]
        ;初回ではなく、かつ、ぶっかけ経験が20以上の時
        [tb_start_text mode=3 ]
        #みお
        ん……ぬるぬる、なんだか[r]
        きもちいいかも……[p]
        [_tb_end_text]

    [else]
        [setBukkakeCG cg="01" time="300"]
        ;上記以外の場合
        [tb_start_text mode=3 ]
        #みお
        ありがとうございますぅ、[r]
        ひーん……[p]
        [_tb_end_text]
    [endif]
    ;-----------------

    [if exp="f.rennyu.teashop.total == 0 && f.rennyu.coffeeshop.total == 0" ]

        ;↓イベント初回時のみ表示
        [tb_start_text mode=3 ]
        #
        まあ自分の過失で起こったことだし……[r]
        と、謝りながら後始末にあたった。[p]
        [_tb_end_text]

    [endif]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;スチル、立ち絵ともに消去
    [free layer="2" name="still" time="1" ]
    [chara_hide_all time="1" ]
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
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [addTime minutes=10]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    おかげでみおはすっかりきれいになり、[r]
    お店に厚く礼を述べて帰路に着いた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    しかし、[emb exp="f.rennyu.lastType" ]まみれのみおを思うと[r]
    変なドキドキが胸に渦巻くのだった……[p]
    [_tb_end_text]

    ;→【イベント終了部】へジャンプ


    *renntyBukkake01_end

    [if exp="mp.type == 'teashop'" ]
        [eval exp="f.rennyu.teashop.today = true" ]
        [eval exp="f.rennyu.teashop.total++" ]
    [else]
        [eval exp="f.rennyu.coffeeshop.today = true" ]
        [eval exp="f.rennyu.coffeeshop.total++" ]
    [endif]
[endmacro]