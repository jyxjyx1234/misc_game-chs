[macro name="cosHSwim00" ]
    [if exp="f.flag_replay" ]
        [CGSet layer="1" storage="EVcg/loveHotel/02_3_sitagi.png" time="1" name="still,loveho03"]
        [maskEnd]
    [endif]


    ;------------------------------------------------------------
    ;------------------------------------------------------------


    ;本編からの場合はラブホ寝そべりスチルのなにがしかの状態でここに来る。すでにBGMもオフになっている。

    ;シーン回想の場合、ここから発生。
    ;　→立ち絵なし、BGMオフ。ラブホ寝そべりスチルの「02_3_sitagi.png」を表示。
    [messageON]

    [tb_start_text mode=3 ]
    #
    今回はスクール水着を着てもらおう！[p]
    [_tb_end_text]


    ;この後本来は寝そべりスチルの表情変化があるけど、今はいったん後回し
    [if exp="f.cosH.swim.total == 0" ]
        ;プチ分岐：初回
        [setLoveHotelHyoujou cg="f08_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        なんだか、本物よりツルツルのような[p]
        [_tb_end_text]
    [else]
        ;プチ分岐：２回め以降
        [setLoveHotelHyoujou cg="f03_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これ、ちょっと小さめで食い込むんですが……[p]
        [_tb_end_text]
    [endif]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    ;スチルとして【bk100】表示
    ;下で寝そべりスチルはすべて消去しておく（実際にはベースと表情で複数レイヤー食っている想定で）
    [setBK time="500"]
    [free layer="1" name="still" ]
    [free layer="2" name="still" ]
    [free layer="3" name="&f.lastLoveHotelCG" ]

    [tb_start_text mode=3 ]
    #
    着替えを見られるのは恥ずかしいそうで、[r]
    廊下で待機することになった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おぉー……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    むかし着たのと似てるけど[r]
    やっぱりなんだか違うなぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    プールじゃない場所で着るの、[r]
    へんな感じ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    く、食い込む……というか、[r]
    ちょっと角度が……[p]
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

    [if exp="f.cosH.swim.total == 0" ]

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
    ;■仮スチルとして【01】表示
    [setCosHCG cg="00_01" time="1"]
    [deleteBK ]

    [if exp="f.cosH.swim.total == 0" ]
        ;プチ分岐：初回
        [setCosHCG cg="00_02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生のおちんちん、もうこんなに……っ[p]
        [_tb_end_text]
    [else]
        ;プチ分岐：２回め以降
        [setCosHCG cg="00_03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        水着だからどんなにびしょびしょになっても[r]
        平気ですからね、先生[p]
        [_tb_end_text]
    [endif]
    [tb_start_text mode=3 ]
    #
    みおをベッドサイドに座らせ、[r]
    そこに怒張をこすりつける。[p]
    [_tb_end_text]
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    スクール水着のツルツルした感触の奥に[r]
    秘裂の熱をじんわりと感じる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    紺色の生地が女体の起伏を強調するように[r]
    独特の光沢で男を誘惑している。[p]
    [_tb_end_text]
    [setCosHCG cg="00_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おまたとおまた、こすり合わせて……[r]
    水着の生地が吸いつくみたい……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    行為としては素股だが、[r]
    スク水状態だとまた違った味わいだ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    けっして薄い材質ではないが、股間に張り付き、[r]
    みおのすじをくっきり浮かび上がらせている。[p]
    [_tb_end_text]
    [setCosHCG cg="00_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    濡れてきちゃ……水着の色が[r]
    変わるの、恥ずかしいぃ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    濃紺の水着が黒っぽく濡れはじめている。[r]
    言うまでも無く、みおの秘部の形に合わせて、だ。[p]
    [_tb_end_text]
    [setCosHCG cg="00_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……っ[r]
    先生もさきっぽ、じんわりおつゆが……[p]
    [_tb_end_text]
    [setCosHCG cg="00_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんもよだれを流してて[r]
    すごくえっち……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    先走り汁が尿道口で球形に膨らんで、[r]
    水着に触れては小さな染みを作っている。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    スクール水着、コスプレＨの定番ながら[r]
    この衣装でのプレイはかなり変態的だ……[p]
    [_tb_end_text]
    [setCosHCG cg="00_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふ……うっ、うぅん……[r]
    せん、せぇ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    みおのあえぎも一層艶を帯びていき、[r]
    腰つきは物欲しげに浅ましい。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    このまま素股を続けていても[r]
    自然と挿入に至ることはないだろう。[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    ここは……[l]
    [_tb_end_text]

    ;選択肢
    ;　股間の布地をずらして挿入する
    ;　水着を切り抜いてからセックス
    [glink_left storage="Hscene/cosH_swim00.ks" target="cosHSwim00_1" text="股間の布地をずらして挿入する"]
    [glink_right storage="Hscene/cosH_swim00.ks" target="cosHSwim00_2" text="水着を切り抜いてからセックス"]
    [s]

    *cosHSwim00_1
    ;--------------------------------------------
    ;■展開分岐：股間の布地をずらして挿入する
    [eval exp="f.cosH.swim.select1.today = true" ]
    ;スチル都合に合わせていったん暗転するなどしておく

    [tb_start_text mode=3 ]
    #
    股布をぐいっと横にずらし、[r]
    みおの股間を露出する。[p]
    [_tb_end_text]
    [setCosHCG cg="01_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    [tb_start_text mode=3 ]
    #
    みおの秘部に張り付いていた生地が[r]
    にちゃりと白い粘液の橋をかけた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ローションでも塗ったくったのかというくらい、[r]
    粘った愛液でびしょびしょになっていたのだ。[p]
    [_tb_end_text]
    [setCosHCG cg="01_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だって……すごく、興奮した、から……[r]
    おまたコスコスも気持ちよくって……[p]
    [_tb_end_text]
    [setCosHCG cg="01_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    真っ赤になるみおがかわいらしくて、[r]
    そのまま抱きしめるように挿入した。[p]
    [_tb_end_text]

    ;このへんで挿入演出
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]

    [setCosHCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、ずぷぅっって一気にぃ、うぅ……んんっ[p]
    [_tb_end_text]

    ;------------------------
    ;これがみおの自覚上の初体験の時、追加で挿入
    [if exp="f.virgin.image.id == 0" ]
        [setCosHCG cg="01_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;部位：膣
        ;自覚：アリ
        ;文章：コスプレＨのスクール水着姿で
        [eval exp="f.virgin = addExperience(f.virgin,2059,'コスプレＨのスクール水着姿で')" ]
    [endif]
    ;------------------------

    [setCosHCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    この体勢、深いところまで入って……[r]
    うぅぁ――～～……♡[p]
    [_tb_end_text]
    [setCosHCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はあぁ……ふぅぅぁ……[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0"  storage="BGS/piston1.mp3" time="6000" loop="true" ]

    [tb_start_text mode=3 ]
    #
    湯気が出そうなほど、みおは全身を上気させ、[r]
    汗で水着がさらに貼りつく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    へそのくぼみも、乳首のとがりも、[r]
    隠しようもなく見てとれる。[p]
    [_tb_end_text]
    [setCosHCG cg="01_04"]
    ;※なおしたはずだけどボイス内容との相違に注意
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    授業で着たことのある水着でぇっ、[r]
    こんなやらしいえっちしちゃっててぇ、はうんっ[p]
    [_tb_end_text]
    [setCosHCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしの学校の思い出、先生とのえっちで[r]
    上書きされちゃってますぅぅ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そんなことを言われては、[r]
    こちらもヒートアップしようというもので。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse buf="0"  storage="BGS/piston2fast.mp3" time="6000" loop="true" ]
    [setCosHCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁっ、おちんちん、[r]
    わたしのなかでずんずんって動いてぇっ[p]
    [_tb_end_text]
    [setCosHCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    汗でプールみたいにびしゃびしゃになりながら[r]
    抱き合ってセックスしてるのぉっ[p]
    [_tb_end_text]
    [setCosHCG cg="01_06"]
    ;※なおしたはずだけどボイス内容との相違に注意
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなっ、えっちなこと、知らなかったときの[r]
    水着で、んやぁっ、えっちなことしちゃってますぅっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    プールの授業を受けていた当時のみおの元に[r]
    タイムスリップして犯しはじめたような錯覚――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの過去も未来も自分一色で染め上げたい。[r]
    そんな渇望が精液を何倍にもたぎらせる。[p]
    [_tb_end_text]
    [setCosHCG cg="01_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あんっ、あうぅっ、見えます、[r]
    せんせいのたまたま、ぶくっ持ち上がってるの[p]
    [_tb_end_text]
    [setCosHCG cg="01_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    しゃせいの準備、なんですね[r]
    もう出そうなんですよねっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    涸れることなくあふれ続ける愛液で[r]
    互いの股間は境目なくドロドロに溶けあっている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    このまま果ててしまえたら、[r]
    どんなに心地よいだろうか――[p]
    [_tb_end_text]
    [setCosHCG cg="01_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0028.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ください、もうわたしもイきそうだからぁっ[r]
    いっしょにぃ……っ[l]
    [_tb_end_text]

    ;一択選択肢　みお、出る……っ！
    [glink_center storage="Hscene/cosH_swim00.ks" target="cosHSwim00_1_1" text="みお、出る……っ！"]
    [s]

    *cosHSwim00_1_1
    ;射精演出,ピストンBGS停止
    [stopse buf="0" ]
    [setCosHCG cg="01_07" syasei="true"]
    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひううぅぅっ♡[r]
    びゅるるって来てますぅぅぅっ♡[p]
    [_tb_end_text]
    [setCosHCG cg="01_08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふはぁー……あぁー……っ、[r]
    んっ、あぁ……たくさぁん……[p]
    [_tb_end_text]
    [setCosHCG cg="01_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いま、せんせいのせいし……[r]
    わたしのなかで泳いでるんだぁ……[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]

        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm += 2" ]
        [eval exp="f.sex++" ]
        [eval exp="f.creampie++" ]
        [eval exp="f.creampieToday = true" ]
        [eval exp="f.cosH.swim.select1.total++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

    [endif]
    ;　→「■終了時の共通部」へジャンプ（ナース服の方に記載）
    [jump target="cosHSwim00_end" ]
    ;--------------------------------------------
    ;■展開分岐：水着を切り抜いてからセックス
    *cosHSwim00_2
    [eval exp="f.cosH.swim.select2.today = true" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ベッドの引き出しから安全ハサミを取り出す。[p]
    [_tb_end_text]

    [if exp="f.cosH.swim.select2.total == 0" ]
        ;------------
        ;分岐：ここに来るのがはじめて
        [setCosHCG cg="00_01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0032.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ひやぁっ！？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        巻いた包帯を切って外したりするための[r]
        こわくないハサミだ。[p]
        [_tb_end_text]
        [setCosHCG cg="00_02"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0033.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        でもレンタルですよ[r]
        き、切っちゃだめなんじゃあ――[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        ほらここ、と貸衣装の案内をみおに見せる。[r]
        “買取も可”という旨の部分を。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        備品としてハサミも置いているのだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        “そういう需要”があり、[r]
        それに応えているホテルなのだろう。[p]
        [_tb_end_text]
        [setCosHCG cg="00_01"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0034.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        え、えぇ……[p]
        [_tb_end_text]

        ;　→つぎの共通部へ
    [else]
        ;------------
        ;分岐：ここに来るのが２回目以降
        [setCosHCG cg="00_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0035.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        また水着穴だらけにするんですね……♡[p]
        [_tb_end_text]

        ;　→つぎの共通部へ
    [endif]
    ;------------
    ;共通部

    ;いちどスチルbk100
    [setBK time="500"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/hasami01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ということで、慎重に慎重にと[r]
    スクール水着にハサミを入れていく――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    う、うあぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    身体のそばをはさみがかすめるたび、[r]
    みおは鳥肌を浮かべてひくひく震える。[p]
    [_tb_end_text]

    ;スチルを再表示すると穴あき水着になっていて、股間や乳首が露出している。
    [setCosHCG cg="02_01" time="1"]
    [deleteBK time="500"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひーん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    傑作が仕上がった。[p]
    [_tb_end_text]
    [setCosHCG cg="02_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱいもおまたも丸出しですぅ……[p]
    [_tb_end_text]
    [setCosHCG cg="02_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    だいじなところ、全部出ちゃってるのに[r]
    他のところは水着で隠れてて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    紺色の布地から、恥丘や乳房がしぼりだされるように[r]
    ぷっくりと突き出して――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    誘われるがまま、勃起しきったペニスを突き込んだ。[p]
    [_tb_end_text]

    ;このへんで挿入演出
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    [setCosHCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……ッ！？[p]
    [_tb_end_text]

    [if exp="f.virgin.image.id == 0" ]
        ;------------------------
        ;これがみおの自覚上の初体験の時、追加で挿入
        [setCosHCG cg="02_05"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;部位：膣
        ;自覚：アリ
        ;文章：コスプレＨの切り抜きスク水で
        [eval exp="f.virgin = addExperience(f.virgin,2059,'コスプレＨの切り抜きスク水で')" ]

        ;------------------------
    [endif]
    [setCosHCG cg="02_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぐ……っひ、っうう……っ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    少しおどろくほど、みおが膣をわななかせ、[r]
    強烈な快感に打ち震えているようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    着たままの服を切り抜かれるなんて、[r]
    まずしない経験だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あまりの非日常に誤作動を起こした脳が、[r]
    快楽物質を垂れ流している。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そして、それは自分もおなじで。[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse buf="0"  storage="BGS/piston1.mp3" time="6000" loop="true" ]
    [setCosHCG cg="02_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ンっ、ンンぅっ、はげしっ、ふやあっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んぐっ、あぅぅんっ、っはぁ、あふぁっ[r]
    はぁぁぁ、ひくぁっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぐりぐり、こじあけられてるのぉっ、[r]
    あたまのなかでおちんちん暴れてるみたいでぇぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    今度はみおの膣を大きな穴にしかねないほどの[r]
    力任せの乱暴なピストン。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    はたからこの光景を見ればまるきりレイプだが、[r]
    みおのまんこはうれしそうにそれを受け入れる。[p]
    [_tb_end_text]
    [setCosHCG cg="02_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きもちいいっ、きもちいのぉっ[r]
    もっと、もっとしてくださいぃっ[p]
    [_tb_end_text]
    [setCosHCG cg="02_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしっ、服もおまんこもぐちゃぐちゃにされて[r]
    きもちよくなっちゃうへんたいなんですぅ、ふぅぁぁっ[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse buf="0"  storage="BGS/piston2fast.mp3" time="6000" loop="true" ]

    [tb_start_text mode=3 ]
    #
    ペース配分もなにもない粗雑なセックス。[r]
    それが理性を灼くほど心地よい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    このまま、欲望をぶちまけるためだけの[r]
    モノ扱いの射精をくれてやる。[p]
    [_tb_end_text]
    [setCosHCG cg="02_08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0047.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    はいっ♡　それでいいからっ、モノでいいから[r]
    ザーメンくださいっ♡[l]
    [_tb_end_text]

    ;一択選択肢　中出しッ、するぞッ！
    [glink_center storage="Hscene/cosH_swim00.ks" target="cosHSwim00_2_1" text="中出しッ、するぞッ！"]
    [s]

    *cosHSwim00_2_1

    ;射精演出,ピストンBGS停止
    [stopse buf="0" ]
    [setCosHCG cg="02_09" syasei="true"]
    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あッ――あああぁぁぁ――～～……っ！！[p]
    [_tb_end_text]
    [setCosHCG cg="02_10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……っ、うぅ……っふ、くぅぁ……[p]
    [_tb_end_text]
    [setCosHCG cg="02_11"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene7_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなえっち、知っちゃったら、[r]
    わたし、もう……♡[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]

        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        ;露出調教+1
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm+=2" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.creampie++" ]
        [eval exp="f.creampieToday++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

    [endif]

    ;　→「■終了時の共通部」へジャンプ（ナース服の方に記載）
    *cosHSwim00_end
    [eval exp="f.cosH.total++" ]
    [eval exp="f.cosH.swim.total++" ]
    [setreplay name="cosplayH" storage="replay_select.ks" target="cosH_select"]
    ;------------------------------------------------------------
[endmacro]