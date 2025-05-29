[macro name="cosHChina00" ]
    [if exp="f.flag_replay" ]
        [CGSet layer="1" storage="EVcg/loveHotel/02_3_sitagi.png" time="1" name="still,loveho03"]
        [maskEnd]
    [endif]

    [messageON]


    ;------------------------------------------------------------
    ;------------------------------------------------------------

    ;本編からの場合はラブホ寝そべりスチルのなにがしかの状態でここに来る。すでにBGMもオフになっている。

    ;シーン回想の場合、ここから発生。
    ;　→立ち絵なし、BGMオフ。ラブホ寝そべりスチルの「02_3_sitagi.png」を表示。



    [tb_start_text mode=3 ]
    #
    今回はチャイナ服を着てもらおう！[p]
    [_tb_end_text]

    [if exp="f.cosH.china.total == 0" ]
        ;プチ分岐：初回
        ;★寝そべりスチルの表情【f08_red】
        [setLoveHotelHyoujou cg="f08_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おぉ～、これがうわさに聞く……[p]
        [_tb_end_text]
    [else]
        ;プチ分岐：２回め以降
        ;★寝そべりスチルの表情【f03_red】
        [setLoveHotelHyoujou cg="f03_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        アオザイとかチーパオとは[r]
        違うんでしょうか……？[p]
        [_tb_end_text]
    [endif]
    ;スチルとして【bk100】表示
    ;下でみお立ち絵は消去しておく
    [setBK time="500"]
    [bgChange storage="bk100.jpg" time="1" ]
    [chara_hide_all time="1" ]
    [free layer="1" name="still" ]
    [free layer="2" name="still" ]
    [free layer="3" name="&f.lastLoveHotelCG" ]

    [tb_start_text mode=3 ]
    #
    着替えを見られるのは恥ずかしいそうで、[r]
    廊下で待機することになった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わあ……背中、[r]
    ぱっくり開いてる……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    スリットも深い～……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ええと……ここから、こうして着て……[r]
    胸元……おさまるかな……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せっかくだから髪もあげて、と……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    切れ切れに聞こえてくるみおのつぶやきだけで[r]
    すでに興奮は限界近くまで高まっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    コスプレＨ、独特の感興があるな――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    というかコチラはすでに全裸でバキバキだ。[p]
    [_tb_end_text]

    [if exp="f.cosH.china.total == 0" ]
        ;プチ分岐：初回
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、も、もういいですよ[p]
        [_tb_end_text]
    [else]
        ;プチ分岐：２回め以降
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生、いいですよ～[r]
        さすがに２回めなので上手にできました[p]
        [_tb_end_text]
    [endif]
    [addTime minutes=10]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    [tb_start_text mode=3 ]
    #
    声をかけられて、部屋に戻る。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]
    [tb_start_text mode=3 ]
    #
    着替え終わったみおを見るなり、[r]
    辛抱たまらず襲いかかった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、先生――ひゃあっ[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [if exp="f.cosH.china.total == 0" ]
        ;プチ分岐：初回
        ;★スチル表示【00_01.png】
        [setCosHCG cg="00_01" time="1"]
        [deleteBK ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わっ、乱暴……♡[p]
        [_tb_end_text]
    [else]

        ;プチ分岐：２回め以降
        ;★スチル表示【00_02.png】
        [setCosHCG cg="00_02" time="1"]
        [deleteBK ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        押し倒されちゃいました……♡[p]
        [_tb_end_text]

    [endif]
    [tb_start_text mode=3 ]
    #
    持ち上げたみおを自分の膝上に乗せ、[r]
    股間を擦りつけるかっこうになる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    タイトなチャイナドレスが[r]
    身体のシルエットを妖艶に際立たせていた。[p]
    [_tb_end_text]

    ;★スチル切替【00_03.png】
    [setCosHCG cg="00_03" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしりにあたってるおちんちん、[r]
    とってもカチコチ……♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    衣装にあてられたか、みおもこころなしか[r]
    淫蕩な雰囲気を放っていて――[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    肉の薄い背中に浮かんだ骨格が美しく、[r]
    反面、隠されたままの股間が視線を吸い寄せる。[l]
    [_tb_end_text]


    ;選択肢
    ;　股間の布をめくりあげる
    ;　このままセックスする
    [glink_left storage="Hscene/cosH_china00.ks" target="cosHChina00_1" text="股間の布をめくりあげる"]
    [glink_right storage="Hscene/cosH_china00.ks" target="cosHChina00_2" text="このままセックスする"]
    [s]

    ;--------------------------------------------
    ;--------------------------------------------
    ;■股間の布をめくりあげる
    *cosHChina00_1
    ;★スチル切替【00_04.png】
    [setCosHCG cg="00_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、それは――[p]
    [_tb_end_text]

    ;★SE再生　[playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    [tb_start_text mode=3 ]
    #
    ぺろりと邪魔な布を払い去る。[p]
    [_tb_end_text]


    ;★スチル切替【01_01.png】

    [setCosHCG cg="00_01" ]
    ;-----------
    ;分岐：ここに来るのがはじめて
    [if exp="f.cosH.china.select1.total == 0" ]
        *cosHChina00_1_1
        [tb_start_text mode=3 ]
        #
        なんと、ドレスの下はノーパンだった。[p]
        [_tb_end_text]


        ;★スチル切替【01_02.png】
        [setCosHCG cg="01_02" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        だってぇ……スリット深くて[r]
        そういうデザインの服だったから……[p]
        [_tb_end_text]


        ;　次の共通部へ
    [else]
        ;-----------
        ;分岐：ここに来るのが２回目以降
        *cosHChina00_1_2
        [tb_start_text mode=3 ]
        #
        やっぱり今回も下はノーパンだ。[p]
        [_tb_end_text]


        ;★スチル切替【01_03.png】
        [setCosHCG cg="01_03" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふふ……興奮、してますか？[r]
        わたしもです[p]
        [_tb_end_text]

        ;　次の共通部へ
    [endif]
    ;-----------
    ;共通部
    *cosHChina00_1_3
    [tb_start_text mode=3 ]
    #
    赤と金の派手なデザインが曲線美を彩り、[r]
    胸から腰、股間がいちどきに見てとれる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    なんと贅沢な楽しみ方だろう。[p]
    [_tb_end_text]


    ;★スチル切替【01_04.png】
    [setCosHCG cg="01_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、ぁ……っ[p]
    [_tb_end_text]


    ;★スチル切替【01_02.png】
    [setCosHCG cg="01_02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    着るだけでもドキドキしたのに……[r]
    先生に見られてると、もっとドキドキして……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    腰の上でみおの尻が物欲しげに[r]
    くねくねとゆれ動く。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    上半身が深くしなだれかかってくると[r]
    脛のあたりで乳房が潰れるのがわかる。[p]
    [_tb_end_text]


    ;★スチル切替【01_03.png】
    [setCosHCG cg="01_03" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしぃ、腰、動いちゃってますぅ[r]
    んんっ♡　あはぁぁ……[p]
    [_tb_end_text]


    ;★スチル切替【01_04.png】
    [setCosHCG cg="01_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせっ、せんせいも動いて[r]
    おまんことおちんちん、こすり合わせてぇっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    誘われるままにこちらも腰を動かす。[p]
    [_tb_end_text]


    ;★スチル切替【01_02.png】
    [setCosHCG cg="01_02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、くちゅくちゅ、きもちぃ……っ[r]
    でも、でもぉっ[p]
    [_tb_end_text]


    ;★スチル切替【01_05.png】
    [setCosHCG cg="01_05" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こすり合わせるだけじゃなくて[r]
    おちんちん、突き刺すつもりで狙ってほしいの[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    互いの律動は徐々に大きく、息が揃いはじめていた。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ペニスの裏筋が陰唇にこすれるだけだったものが、[r]
    次第に、亀頭がクリトリスを、膣口をとらえている。[p]
    [_tb_end_text]


    ;★スチル切替【01_04.png】
    [setCosHCG cg="01_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひぁ――[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    幾度めかのランデブーを経て、[r]
    ついにペニスにぬちゃりという手ごたえを得た。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そのまま突きこむ。[p]
    [_tb_end_text]

    ;挿入
    ;★SE再生　[playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;★スチル切替【01_06.png】
    [setCosHCG cg="01_06" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    き、ったぁぁぁ……――ッ♡[p]
    [_tb_end_text]

    ;------------------------
    ;これがみおの自覚上の初体験の時、追加で挿入
    [if exp="f.virgin.image.id == 0" ]
        ;★スチル切替【01_07.png】
        [setCosHCG cg="01_07" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：チャイナ服のコスプレＨで
        [eval exp="f.virgin = addExperience(f.virgin,'2057','チャイナ服のコスプレＨで')" ]

        ;------------------------
    [endif]
    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston2fast.mp3"  ]


    [tb_start_text mode=3 ]
    #
    ピストンはのっけからトップスピードだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    叩きつけ合う肉と肉の間では[r]
    白く粘った体液がネチャネチャと糸を引く。[p]
    [_tb_end_text]

    ;★スチル切替【01_08.png】
    [setCosHCG cg="01_08" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あふぁっ、すごい、すごいのぉっ[r]
    どっちが動いてるかわからないぐらい激しくてぇっ[p]
    [_tb_end_text]

    ;★スチル切替【01_07.png】
    [setCosHCG cg="01_07" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしりもぉ、おまんこもぉっ、恥ずかしいところ[r]
    ぜんぶ見せつけながらえっちに夢中になっちゃうのぉっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    美しくひるがえる赤いドレスで[r]
    みおの白い尻肉がいっそう映える。[p]
    [_tb_end_text]


    ;★スチル切替【01_06.png】
    [setCosHCG cg="01_06" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせぇっ♡　せんせぇっ♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    膣壁のひだが亀頭を削らんばかりに[r]
    ペニスを締め付けながら上下する。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    もう、耐えられそうになかった。[p]
    [_tb_end_text]


    ;★スチル切替【01_08.png】
    [setCosHCG cg="01_08" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イきそうですか？　いつでもイっていいですよぉ[p]
    [_tb_end_text]


    ;★スチル切替【01_09.png】
    [setCosHCG cg="01_09" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    上から、こうやって、おまんことふとももで[r]
    ぎゅううぅって締めてあげるからぁっ[p]
    [_tb_end_text]


    ;★スチル切替【01_07.png】
    [setCosHCG cg="01_07" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0026.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    コスプレＨでぇ、たっぷり中出ししてぇっ[l]
    [_tb_end_text]

    ;一択選択肢：出る――ッ
    [glink_center storage="Hscene/cosH_china00.ks" target="cosHChina00_1_4" text="出る――ッ"]
    [s]
    *cosHChina00_1_4
    ;射精演出、ＢＧＳ停止,★スチル切替【01_10.png】
    [stopse buf="0" ]
    [setCosHCG cg="01_10" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁぁぁ～～――っ♡♡[p]
    [_tb_end_text]


    ;★スチル切替【01_11.png】
    [setCosHCG cg="01_11" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……っくぅ、あぁ……[r]
    すてきぃ……[p]
    [_tb_end_text]


    ;★スチル切替【01_12.png】
    [setCosHCG cg="01_12" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っぁん……[r]
    おちんちん、抜けちゃった……[p]
    [_tb_end_text]


    ;★スチル切替【01_13.png】
    [setCosHCG cg="01_13" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たぁくさん、出ましたね……♡[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合、ここで終了


    [if exp="!f.flag_replay" ]
        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm+=2" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.creampie++" ]
        [eval exp="f.creampieToday++" ]
        [eval exp="f.cosH.china.select1.total++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

        ;　「■終了時の共通部」へジャンプ（別のコスプレＨの終了部と共通なので割愛）

    [endif]
    [jump target="cosHChina00_end" ]
    ;--------------------------------------------
    ;--------------------------------------------
    ;■このままセックスする  
    *cosHChina00_2

    [tb_start_text mode=3 ]
    #
    性器を隠す薄布は[r]
    そのままにしておくことにした。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    その状態で勃起しきったペニスを擦りつける。[p]
    [_tb_end_text]


    ;★スチル切替【00_01.png】
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    く、ぅん……っはぁ♡　っはぁ♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ペニスの裏筋に感じる熱さと湿度――[r]
    この感じ、きっとみおはノーパンだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    だが、あえてそれを確かめないままで[r]
    行為を進めるのもオツなものだろう。[p]
    [_tb_end_text]


    ;★スチル切替【00_04.png】
    [setCosHCG cg="00_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の上に乗っかってだらしなく[r]
    おまた広げちゃってるぅ……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    この布の奥で、まんこはトロトロに濡れ、[r]
    アナルはヒクついているはず。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    見えないからこその想像は[r]
    鮮烈なビジョンを脳裏に結ぶ。[p]
    [_tb_end_text]


    ;★スチル切替【00_02.png】
    [setCosHCG cg="00_02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おようふくごしに……おちんちん、[r]
    ごりごりされるの、好きかも……♡[p]
    [_tb_end_text]


    ;★スチル切替【00_01.png】
    [setCosHCG cg="00_01" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁぅ～……うぅ、んんぅ～……[r]
    っ、んぁぅっ[p]
    [_tb_end_text]


    ;★スチル切替【00_04.png】
    [setCosHCG cg="00_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0035.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    せんせぇおねがい……[r]
    おちんぽ、ください……[l]
    [_tb_end_text]

    ;一択選択肢：好きな方の穴に自分で挿れてごらん
    [glink_center storage="Hscene/cosH_china00.ks" target="cosHChina00_2_1" text="好きな方の穴に自分で挿れてごらん"]
    [s]

    *cosHChina00_2_1
    [if exp="f.cosH.china.select2.total == 0" ]
        *cosHChina00_2_1_1
        ;プチ分岐：初回
        ;★スチル切替【00_01.png】
        [setCosHCG cg="00_01" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0036.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        好きな方、って……[l]
        [_tb_end_text]

    [else]
        *cosHChina00_2_1_2
        ;プチ分岐：２回め以降
        ;★スチル切替【00_02.png】
        [setCosHCG cg="00_02" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0037.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        先生も好きですね、そのクイズ♡[l]
        [_tb_end_text]
    [endif]
    ;選択肢
    ;　マンコかな？
    ;　それともアナル？
    [glink_left storage="Hscene/cosH_china00.ks" target="cosHChina00_2_2" text="マンコかな？" exp="f.cosH.china.quiz.answer = 'manko'"]
    [glink_right storage="Hscene/cosH_china00.ks" target="cosHChina00_2_2" text="それともアナル？"  exp="f.cosH.china.quiz.answer = 'anal'"]
    [s]

    ;※このあと「膣」と「肛門」で絶頂数の高い方に挿入する展開になります。同数の場合は膣優先。
    ;　上記の２択はフレーバーですが、けっこう細かい分岐を用意します。
    ;　このあとどちらに挿入するかも考慮して分岐をするので、選択肢の前の段階で挿入先判定は済ませておいた方が
    ;　良いかと思います。
    *cosHChina00_2_2
    [if exp="f.flag_replay" ]
        [if exp="f.virgin.image.id == 0 && f.analVirgin.image.id == 0" ]
            [getrand min="1" max="100"]
            [if exp="tf.rand <= 50" ]
                [eval exp="f.cosH.china.quiz.result = 'manko'"]
            [else]
                [eval exp="f.cosH.china.quiz.result = 'anal'"]
            [endif]
        [elsif exp="f.virgin.image.id == 0 && f.analVirgin.image.id != 0" ]
            [eval exp="f.cosH.china.quiz.result = 'manko'"]
        [elsif exp="f.virgin.image.id != 0 && f.analVirgin.image.id == 0" ]
            [eval exp="f.cosH.china.quiz.result = 'anal'"]
        [else]
            [getrand min="1" max="100"]
            [if exp="tf.rand <= 50" ]
                [eval exp="f.cosH.china.quiz.result = 'manko'"]
            [else]
                [eval exp="f.cosH.china.quiz.result = 'anal'"]
            [endif]
        [endif]
    [else]

        [if exp="f.cuntTotalOrgasm >= f.anusTotalOrgasm" ]
            ;膣の方が絶頂数が多い場合
            [eval exp="f.cosH.china.quiz.result = 'manko'"]
        [else]
            ;アナルの方が絶頂数が多い場合
            [eval exp="f.cosH.china.quiz.result = 'anal'"]
        [endif]
    
    [endif]
    ;---------------------------
    ;選択肢押下後はどちらにしても、事前に決めていたみおの挿入先を
    ;その選択肢で言い当てられたかどうか、で分岐します。

    ;正解の時（今回の挿入先と、選択肢の結果が一致する）
    [if exp="f.cosH.china.quiz.answer == f.cosH.china.quiz.result" ]
        ;★スチル切替【00_03.png】
        *cosHChina00_2_2_1
        [setCosHCG cg="00_03" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0038.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        さすが先生、わたしの好みは[r]
        ぜんぶわかっちゃうんですね♡[p]
        [_tb_end_text]

    [else]
        *cosHChina00_2_2_2
        ;不正解の時（今回の挿入先と、選択肢の結果が一致しない）
        ;★スチル切替【00_02.png】
        [setCosHCG cg="00_02" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0039.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        う～ん……[r]
        どうしようかなぁ……[p]
        [_tb_end_text]

    [endif]
    ;---------------------------
    ;【共通部】
    *cosHChina00_2_2_3
    [tb_start_text mode=3 ]
    #
    じゃあ――とペニスを差し出す。[r]
    好きに使ってね、と。[p]
    [_tb_end_text]


    ;★スチル切替【00_01.png】
    [setCosHCG cg="00_01" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ありがとう、ございます――ぅっ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    持ち上がったみおの性器が、[r]
    ためらいなくペニスを布越しに呑み込んだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;★スチル切替【02_01.png】
    [setCosHCG cg="02_01" ]
    ;----------------------------------
    ;----------------------------------
    ;【分岐】挿入先が膣
    [if exp="f.cosH.china.quiz.result == 'manko'" ]
        ;★スチル切替【02_02.png】
        *cosHChina00_2_2_4
        [setCosHCG cg="02_02" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0041.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        お゛っ♡　ん゛ん゛ぁっ♡[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ひだひだがペニス全体を締めつけ、[r]
        亀頭はコリコリした感触に触れている――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        これは……マンコの方だな！[p]
        [_tb_end_text]

        
        ;------------------------
        ;これがみおの自覚上のマンコ初体験の時、追加で挿入
        *cosHChina00_2_2_5
        ;★スチル切替【02_03.png】
        [setCosHCG cg="02_03" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：チャイナ服のコスプレで自分から
        [eval exp="f.virgin = addExperience(f.virgin,'2057','チャイナ服のコスプレで自分から')" ]
        ;------------------------
    [else]
        ;----------------------------------
        ;----------------------------------
        ;【分岐】挿入先がアナル
        *cosHChina00_2_2_6
        ;★スチル切替【02_02.png】
        [setCosHCG cg="02_02" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0042.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ぐっ……ん゛ぁひっ♡[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        根元の方がキツく、天井らしき[r]
        “奥”が無さそうな肉の洞――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        これは……アナルの方だな！[p]
        [_tb_end_text]



        ;------------------------
        ;これがみおの自覚上のアナル初体験の時、追加で挿入
        [if exp="f.analVirgin.image.id == 0" ]
            *cosHChina00_2_2_7
            ;★スチル切替【02_03.png】
            [setCosHCG cg="02_03" ]
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m012_part0009.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            おしりでえっち……しちゃったぁ……[p]
            [_tb_end_text]


            ;※これが初体験として登録される場合のテキストと設定

            ;部位：アナル
            ;自覚：アリ
            ;文章：チャイナ服のコスプレで自分から
            [eval exp="f.analVirgin = addExperience(f.analVirgin,'2057','チャイナ服のコスプレで自分から')" ]

            ;------------------------  
        [endif] 
    [endif]
    ;----------------------------------
    ;----------------------------------
    ;共通部
    *cosHChina00_2_2_8
    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston1.mp3"  ]

    ;★スチル切替【02_04.png】
    [setCosHCG cg="02_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、ふふ……[r]
    どっちに入ってるかわかりますかぁ？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抽送と共に妖艶な流し目で[r]
    みおが語りかけてくる。[p]
    [_tb_end_text]

    ;★スチル切替【02_03.png】
    [setCosHCG cg="02_03" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、くぁ……当たってると、いいですね♡[p]
    [_tb_end_text]

    ;★スチル切替【02_05.png】
    [setCosHCG cg="02_05" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさん、勘違いしたままの[r]
    お射精だったらかわいそぅぅ、だからぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ドレスをめくって確かめたい――とは思うものの、[r]
    未確定だからこそのおもしろさもあるだろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおにとってもっとも絶頂できた穴を[r]
    使っての肉棒オナニー。特等席での鑑賞だ。[p]
    [_tb_end_text]

    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston2fast.mp3"  ]

    ;★スチル切替【02_02.png】
    [setCosHCG cg="02_02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はっ、はふぁぁぁっ、じぶん、っでぇ[r]
    好きなように動くの、これぇっ[p]
    [_tb_end_text]

    ;★スチル切替【02_04.png】
    [setCosHCG cg="02_04" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イっちゃういそうなの、すぐ来て、[r]
    がまんできな……っ[p]
    [_tb_end_text]

    ;★スチル切替【02_01.png】
    [setCosHCG cg="02_01" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせぇ、ください、せいえき出してぇっ[p]
    [_tb_end_text]

    ;★スチル切替【02_02.png】
    [setCosHCG cg="02_02" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0049.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    えっちな穴にせんせいの精液ごくごくして[r]
    イきたいからぁっ、おねがいぃぃっ[l]
    [_tb_end_text]

    ;一択選択肢：イくっ！！！
    [glink_center storage="Hscene/cosH_china00.ks" target="cosHChina00_2_3" text="イくっ！！！"]
    [s]
    *cosHChina00_2_3
    ;射精、BGS停止,★スチル切替【02_06.png】
    [stopse buf="0" ]
    [setCosHCG cg="02_06" syasei="true"]
    ;----------------------
    ;分岐：膣挿入のとき
    [if exp="f.cosH.china.quiz.result == 'manko'" ]
        *cosHChina00_2_3_1
        ;★スチル切替【02_07.png】
        [setCosHCG cg="02_07" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0050.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        んあぁぁぁぁ♡♡[r]
        おまんこ、精液きてるぅぅぅ♡♡[p]
        [_tb_end_text]

        ;★スチル切替【02_06.png】
        [setCosHCG cg="02_06" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0051.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしっ、中出しされてイってるのぉ――っ♡♡[p]
        [_tb_end_text]


        ;★スチル切替【02_08.png】
        [setCosHCG cg="02_08" ]
        [tb_start_text mode=3 ]
        #
        絶頂の痙攣で抜けてしまったペニスが[r]
        精液を吹きながらびたんとみおの尻を打つ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        正解を自分で白状してしまったことに[r]
        みおは気づいていないようだった。[p]
        [_tb_end_text]

        ;★スチル切替【02_09.png】
        
        [setCosHCG cg="02_09" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0052.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        あ……あぁ……[r]
        せんせえ、は……きもちよかったですか……？[p]
        [_tb_end_text]



        [fadeoutbgm2 time="6000" ]

        ;シーン回想の場合、ここで終了


        [if exp="!f.flag_replay" ]
            ;みお性経験加算
            ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
            ;みおから迫って+1
            [eval exp="f.cunt++" ]
            [eval exp="f.cuntTotalOrgasm+=2" ]
            [eval exp="f.sexTotal++" ]
            [eval exp="f.creampie++" ]
            [eval exp="f.creampieToday++" ]

        [endif]
        ;　「■終了時の共通部」へジャンプ（別のコスプレＨの終了部と共通なので割愛）

    [else]
        ;----------------------
        ;分岐：アナル挿入のとき
        *cosHChina00_2_3_2
        ;★スチル切替【02_07.png】
        [setCosHCG cg="02_07"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0053.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        んあぁぁぁぁ♡♡[r]
        おしりに精液きてるぅぅぅ♡♡[p]
        [_tb_end_text]

        ;★スチル切替【02_06.png】
        [setCosHCG cg="02_06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0054.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ほんとうはっ、えっちなことに使う場所じゃないのにっ[r]
        いけない場所でイってるのぉ♡♡[p]
        [_tb_end_text]

        ;★スチル切替【02_08.png】
        [setCosHCG cg="02_08" ]
        [tb_start_text mode=3 ]
        #
        絶頂の痙攣で抜けてしまったペニスが[r]
        精液を吹きながらびたんとみおの尻を打つ。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        正解を自分で白状してしまったことに[r]
        みおは気づいていないようだった。[p]
        [_tb_end_text]

        ;★スチル切替【02_09.png】
        [setCosHCG cg="02_09" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m012_scene2_0055.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        おしり……ふさがらなくてぇ、精液で熱くて、[r]
        空気でスースーしてぇ……あへぁ……[p]
        [_tb_end_text]




        [fadeoutbgm2 time="6000" ]

        ;シーン回想の場合、ここで終了
        [if exp="!f.flag_replay" ]
            ;みお性経験加算
            ;開発度アナル+1、絶頂数アナル+2、アナルセックス+1、肛内射精+1
            ;みおから迫って+1
            [eval exp="f.anus++" ]
            [eval exp="f.anusTotalOrgasm++" ]
            [eval exp="f.analsexTotal++" ]
            [eval exp="f.analCum++" ]
            [eval exp="f.analCumToday++" ]
        [endif]
        ;　「■終了時の共通部」へジャンプ（別のコスプレＨの終了部と共通なので割愛）

    [endif]
    ;------------------------------------------------------------
    ;以上

    *cosHChina00_end
    [eval exp="f.cosH.total++" ]
    [eval exp="f.cosH.china.total++" ]
    [setreplay name="cosplayH" storage="replay_select.ks" target="cosH_select"]

[endmacro]