[macro name="cosHNurse00" ]
    [if exp="f.flag_replay" ]
        [CGSet layer="1" storage="EVcg/loveHotel/02_3_sitagi.png" time="1" name="still,loveho03"]
        [maskEnd]
    [endif]

    [messageON]
    ;本編からの場合はラブホ寝そべりスチルのなにがしかの状態でここに来る。すでにBGMもオフになっている。

    ;シーン回想の場合、ここから発生。
    ;　→立ち絵なし、BGMオフ。ラブホ寝そべりスチルの「02_3_sitagi.png」を表示。

    [tb_start_text mode=3 ]
    #
    今回はナース服を着てもらおう！[p]
    [_tb_end_text]

    ;この後本来は寝そべりスチルの表情変化があるけど、今はいったん後回し

    [if exp="f.cosH.nurse.total == 0" ]
        [setLoveHotelHyoujou cg="f08_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0001.mp3"  ]
        ;プチ分岐：初回
        [tb_start_text mode=3 ]
        #みお
        本物の看護師さんのにくらべると[r]
        だいぶきわどい感じですね……[p]
        [_tb_end_text]

    [else]
        [setLoveHotelHyoujou cg="f03_red" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0002.mp3"  ]
        ;プチ分岐：２回め以降
        [tb_start_text mode=3 ]
        #みお
        先生も白衣とか着たら[r]
        もっと雰囲気出るんじゃないですか？[p]
        [_tb_end_text]

    [endif]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
    ;スチルとして【bk100】表示
    ;下で寝そべりスチルはすべて消去しておく（実際にはベースと表情で複数レイヤー食っている想定で）
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

    [playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ、わわ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    かわいいけど、生地が薄い……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん～っ……しょ、と[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしりのあたりちょっとキツいけど……[r]
    これでいいかな……[p]
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

    [if exp="f.cosH.nurse.total == 0" ]

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


    [if exp="f.cosH.nurse.total == 0" ]
        [setCosHCG cg="00_01" time="1"]
        [deleteBK time="500"]
        ;プチ分岐：初回
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        せっかく着たのにいきなりですかぁ～っ[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：２回め以降
        ;★スチル表示「00_02.png」
        [setCosHCG cg="00_02" time="1"]
        [deleteBK time="500"]
        ;★下記テキスト、タグミスを修正しています
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0011.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふふ……[r]
        今度はどんな設定ですか、先生？[p]
        [_tb_end_text]

    [endif]

    [tb_start_text mode=3 ]
    #
    持ち上げたみおを自分の膝上に乗せ、[r]
    股間を擦りつけるかっこうになる。[p]
    [_tb_end_text]

    ;このへんの地の文は提出されたスチルの具合を見て調整
    [tb_start_text mode=3 ]
    #
    いきおいで邪魔な薄布も取り払ってしまった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    清潔感あるナース服だが、腰のくびれから[r]
    せり出したヒップが強調され、後ろ姿が実にエロい。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    本当の病院であればおとなしく従うべき相手だが、[r]
    今この看護師さんは自分の意のままで――[l]
    [_tb_end_text]

    ;選択肢
    ;　患者になりきって看護師さんのお手当をせびる
    ;　変態医師になりきって看護師をいじめる
    [glink_left storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_1" text="患者になりきって看護師さんのお手当をせびる"]
    [glink_right storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_2" text="変態医師になりきって看護師をいじめる"]
    [s]

    ;--------------------------------------------
    ;■展開分岐：患者になりきって看護師さんのお手当をせびる
    *cosHNurse00_1
    [eval exp="f.cosH.nurse.select1.today = true" ]
    [tb_start_text mode=3 ]
    #
    では――ゴホン。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あぁ～っ、おちんちんが腫れちゃって苦しいよぉ～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    看護師さん、なんとかしてぇ～っ！[p]
    [_tb_end_text]

    [if exp="f.cosH.nurse.select1.total == 0" ]
        ;プチ分岐：初回
        ;★スチル切替「00_03.png」
        [setCosHCG cg="00_03"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0012.mp3"  ]

        [tb_start_text mode=3 ]
        #みお
        え……？　あっ、あぁ、[r]
        そういうごっこの感じで……[p]
        [_tb_end_text]

    [else]

        ;プチ分岐：２回め以降
        ;★スチル切替「00_04.png」
        [setCosHCG cg="00_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0013.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ふふ……前しっかり治してあげたはずなのに[r]
        再発しちゃったんですか[p]
        [_tb_end_text]

    [endif]

    [tb_start_text mode=3 ]
    #
    思いはしっかりとみおに届いたようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こういうのは怖気づいてはいけない。[r]
    恥をかき捨てて気持ちよくなれるなら捨て身でいい！[p]
    [_tb_end_text]

    ;★スチル切替「00_01.png」
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0014.mp3"  cond="f.cosH.nurse.select1.total == 0" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0014_B.mp3"  cond="f.cosH.nurse.select1.total != 0" ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんが腫れちゃったんですね[r]
    かわいそう……[p]
    [_tb_end_text]
    ;★スチル切替「00_02.png”
    [setCosHCG cg="00_02"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0015.mp3" cond="f.cosH.nurse.select1.total == 0"  ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0015_B.mp3" cond="f.cosH.nurse.select1.total != 0"  ]
    [tb_start_text mode=3 ]
    #みお
    お熱は出てますか？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うまいことみおもお芝居モードに[r]
    入っていくことができたようだ。[p]
    [_tb_end_text]
    ;★スチル切替「00_04.png”
    [setCosHCG cg="00_04"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今は体温計がないから[r]
    わたしのおしりで計りましょうね――んっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    衣装のせいか、いつもより大きく見えるお尻が[r]
    ずりずりとペニスを圧迫してくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    尻から太ももにつながる筋肉がきゅうきゅう動き、[r]
    こちらの下腹全体を甘い振動を与えてくる。[p]
    [_tb_end_text]
    ;★スチル切替「00_01.png」
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わぁ……とっても熱い……[r]
    おちんちん、燃えてるみたい……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    肉感によってペニスはさらに燃え立ち、[r]
    巨尻の脂肪がひんやりと冷たくて心地良い。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ヒップの布地がぱんぱんに張り詰めて[r]
    下手なハダカよりもいやらしい。[p]
    [_tb_end_text]
    ;★スチル切替「00_03.png」
    [setCosHCG cg="00_03"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わ……まだお熱があがるんですか……？[r]
    腫れもひどくなってきた？[p]
    [_tb_end_text]
    ;★スチル切替「00_05.png」
    [setCosHCG cg="00_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    冷たいおツユで冷やさないと……[r]
    んっ、んんぅっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    水音がひびく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが腰遣いを変え、秘裂が竿にかすめた音だ。[p]
    [_tb_end_text]
    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、んんぅっ……おツユ、出すぎちゃ……[r]
    はぅぅ……く、っふぅ……っ[p]
    [_tb_end_text]
    ;★スチル切替「00_07.png」
    [setCosHCG cg="00_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どうです……？[r]
    冷えてラクになりました……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    くちゅくちゅという控えめは水音は、[r]
    すでにじゅぽじゅぽ淫らに濁って泡を吹いている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおも興奮してマン汁をまき散らしているのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    これ以上ないほど勃起したペニスは[r]
    みおの本気汁で白っぽく濡れて光っている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――興奮の熱量は当然、おさまるどころか高まる一方で。[p]
    [_tb_end_text]
    ;★スチル切替「00_05.png」
    [setCosHCG cg="00_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ……んんっ、くぅ……[r]
    がちがちなの、おしりに当たってるぅ……[p]
    [_tb_end_text]
    ;★スチル切替「00_07.png」
    [setCosHCG cg="00_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    濡らすだけじゃあ治らないんですね[p]
    [_tb_end_text]
    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0024.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    しゅじゅつ、しないと……[l]
    [_tb_end_text]

    ;一択選択肢　手術？
    [glink_center storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_1_1" text="手術？"]
    [s]
    *cosHNurse00_1_1
    ;★スチル切替「00_07.png」
    [setCosHCG cg="00_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    手術って聞くと怖いかもしれないですけど[r]
    がんばって乗り越えてくださいね？[p]
    [_tb_end_text]
    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんを治すため、だから……[p]
    [_tb_end_text]
    ;★スチル切替「00_08.png」
    [setCosHCG cg="00_08"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……ね？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そう言って、みおはひときわ高く尻を持ち上げ――[r]
    振り下ろした。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    どちゅんっと、ゆるみきったみおの秘裂が[r]
    燃えた杭同然のペニスを呑み込む。[p]
    [_tb_end_text]


    ;このへんで挿入演出
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;★スチル切替「00_09.png」
    [setCosHCG cg="00_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぅぅぅぅんんっ♡[p]
    [_tb_end_text]

    ;------------------------
    ;これがみおの自覚上の初体験の時、追加で挿入
    [if exp="f.virgin.image.id == 0" ]
        ;★スチル切替「00_11.png」
        [setCosHCG cg="00_11"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：コスプレＨのおちんちん治療で
        [eval exp="f.virgin = addExperience(f.virgin,'2059','コスプレＨのおちんちん治療で')" ]
    [endif]
    ;------------------------

    [tb_start_text mode=3 ]
    #
    あまりの刺激に腰が勝手に反応し、[r]
    射精そっくりに痙攣する。[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse  volume="100"  time="1000"  buf="0"  storage="BGS/piston1.mp3" loop="true"  ]
    ;★スチル切替「00_10.png」
    [setCosHCG cg="00_10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やんっ、跳ねてるっ、激し……っ[r]
    ひあぁんっ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、まだ精液は放たれていない。[r]
    ペニスの根元で煮えたぎっている。[p]
    [_tb_end_text]
    ;★スチル切替「00_11.png」
    [setCosHCG cg="00_11"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ど、どう……？　これが手術……[p]
    [_tb_end_text]
    ;★スチル切替「00_12.png」
    [setCosHCG cg="00_12"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    最後まで、がんばれそうかな……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こくりとうなずくと、みおは珠の汗を流しながら[r]
    満面の笑みを返してくれた。[p]
    [_tb_end_text]
    ;★スチル切替「00_13.png」
    [setCosHCG cg="00_13"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    とってもえらいよぉ[r]
    かっこいいね[p]
    [_tb_end_text]

    ;★スチル切替「00_14.png」
    [setCosHCG cg="00_14"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしもがんばるから、[r]
    いっしょにおちんちん治そうね[p]
    [_tb_end_text]

    ;★スチル切替「00_15.png」
    [setCosHCG cg="00_15"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それじゃあ手術のつづき、いくよぉ……[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston2fast.mp3" loop="true"  ]

    [tb_start_text mode=3 ]
    #
    音高く、巨尻を打ちつけるハードなピストンがはじまった。[p]
    [_tb_end_text]

    ;★スチル切替「00_16.png」
    [setCosHCG cg="00_16"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、っはぁっ、ふぅんっ♡[r]
    おちんちん、どうっ？　もっと熱くなってきた？[p]
    [_tb_end_text]

    ;★スチル切替「00_15.png」
    [setCosHCG cg="00_15"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    熱くて硬くて痛いの治すには、限界までがちがちにぃっ、[r]
    しないといけないからっ[p]
    [_tb_end_text]

    ;★スチル切替「00_16.png」
    [setCosHCG cg="00_16"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こうやってわたしのおまんこで[r]
    おちんちん、ごしごしするんだよぉ、んぁぁっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの身体からも甘い熱気が放たれ、[r]
    五感をフルに刺激するセックスにペニスは――[p]
    [_tb_end_text]

    ;★スチル切替「00_14.png」
    [setCosHCG cg="00_14"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    びくびく、してきたね、もうおちんちん、[r]
    爆発しそうかな？　それでいいんだよぉ、こわいくないからねえ[p]
    [_tb_end_text]

    ;★スチル切替「00_15.png」
    [setCosHCG cg="00_15"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いつでも、いいからねぇっ、ひっ、はぁぅ、[r]
    わたしはもうさっきから、イってるからぁっ、あぁぁあっ[p]
    [_tb_end_text]

    ;★スチル切替「00_17.png」
    [setCosHCG cg="00_17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0040.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    いいよぉっ、出してっ、おちんちんから[r]
    悪いもの全部吐き出してぇぇぇっ[l]
    [_tb_end_text]

    ;一択選択肢　イく――ッ！
    [glink_center storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_1_2" text="イく――ッ！"]
    [s]

    *cosHNurse00_1_2


    ;射精演出,ピストンBGS停止,★スチル切替「00_18.png」
    [stopse buf="0" ]
    [setCosHCG cg="00_18" syasei="true"]
    [calcHP HP="-20"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁあ――～～っ！！[p]
    [_tb_end_text]

    ;★スチル切替「00_19.png」
    [setCosHCG cg="00_19"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    たくさんぴゅっぴゅっできた？[r]
    がんばったね……♡[p]
    [_tb_end_text]

    ;★スチル切替「00_20.png」
    [setCosHCG cg="00_20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    これできっと、おちんちんもよくなるから……[p]
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
        [eval exp="f.cosH.nurse.select1.total++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

    [endif]
    ;　「■終了時の共通部」へジャンプ
    [jump target="cosHNurse00_end" ]
    ;--------------------------------------------
    ;■展開分岐：変態医師になりきって看護師をいじめる
    *cosHNurse00_2
    [eval exp="f.cosH.nurse.select2.today = true" ]
    [tb_start_text mode=3 ]
    #
    困るよぉ、みおくん……[r]
    今月だけで何回ミスをする気なんだい？[p]
    [_tb_end_text]

    [if exp="f.cosH.nurse.select2.total == 0" ]
        ;プチ分岐：初回
        ;※こちらは別分岐の方と同じボイスを使用
        ;★スチル切替「00_06.png」
        [setCosHCG cg="00_06"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0012.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        え……？　あっ、あぁ、[r]
        そういうごっこの感じで……[p]
        [_tb_end_text]

    [else]
        ;プチ分岐：２回め以降
        ;★スチル切替「00_04.png」
        [setCosHCG cg="00_04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0044.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        今日は先生は先生でも[r]
        お医者さんの方の先生なんですね♡[p]
        [_tb_end_text]

    [endif]
    [tb_start_text mode=3 ]
    #
    そう、今の自分は悪徳変体医師――[r]
    ドジっ子看護師を手籠めにしようとしている。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    重大なミスをする前に、ここで[r]
    しっかりしつけてやるのが君のためなのだ！[p]
    [_tb_end_text]
    ;★スチル切替「00_05.png」
    [setCosHCG cg="00_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいぃ、ご指導ありがとうございますぅ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/tataku01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ぴしゃり、と尻を打つ。[p]
    [_tb_end_text]
    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひぅんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    きっとこいつは、このデカ尻で[r]
    いつも患者を誘惑しているのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/tataku01.mp3"  ]

    [tb_start_text mode=3 ]
    #
    ドジばかりの上に、院内の風紀を乱すとは――[r]
    許せん！[p]
    [_tb_end_text]

    ;★スチル切替「00_01.png」
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そんなことしてませんぅ[r]
    先生、先生だけです……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ほう……？[r]
    だったら、お願いしてみせたまえ。[p]
    [_tb_end_text]

    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    ;★スチル切替「00_07.png」
    [setCosHCG cg="00_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は……い……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    おずおずと、みおの尻がペニスに[r]
    こすりつけられはじめた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    何度も叩かれた尻は熱を持ち、[r]
    秘裂からよだれを垂らしているのがわかる。[p]
    [_tb_end_text]

    ;★スチル切替「00_06.png」
    [setCosHCG cg="00_06"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……おっき……[p]
    [_tb_end_text]

    ;★スチル切替「00_05.png」
    [setCosHCG cg="00_05"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしのおしりを触っていいのは[r]
    先生だけ、でぇ……[p]
    [_tb_end_text]

    ;★スチル切替「00_01.png」
    [setCosHCG cg="00_01"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の……先生のたくましいおちんちんしか[r]
    ほしくないんですぅ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    やはりみお本来の気質はマゾ寄りなのか、[r]
    指示がなくともおねだりはエスカレートしていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおは自分の言葉に酔い、乱れているのだ。[p]
    [_tb_end_text]
    ;★スチル切替「00_07.png」
    [setCosHCG cg="00_07"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0053.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    わたしのドジが治るように[r]
    先生の立派なお注射でおくすり出して欲しいんですぅ[l]
    [_tb_end_text]

    ;一択選択肢　いいだろう
    [glink_center storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_2_1" text="いいだろう"]
    [s]

    *cosHNurse00_2_1
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;挿入
    ;★スチル切替「00_09.png」
    [setCosHCG cg="00_09"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んみゅうううぅぅっ♡[p]
    [_tb_end_text]

    ;------------------------
    ;これがみおの自覚上の初体験の時、追加で挿入
    [if exp="f.virgin.image.id == 0" ]
        ;★スチル切替「00_10.png」
        [setCosHCG cg="00_10"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0020.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        ;※これが初体験として登録される場合のテキストと設定

        ;部位：膣
        ;自覚：アリ
        ;文章：コスプレＨの変体医師お仕置きプレイで
        [eval exp="f.virgin = addExperience(f.virgin,'2059','コスプレＨの変体医師お仕置きプレイで')" ]
    [endif]
    ;------------------------

    ;★スチル切替「00_10.png」
    [setCosHCG cg="00_10"]
    [tb_start_text mode=3 ]
    #
    お注射の練習だぞ、とみおを叱咤し[r]
    休ませない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    上手におくすりが出してもらえるように[r]
    腰を振るんだ。[p]
    [_tb_end_text]
        
    ;★スチル切替「00_10.png」
    [setCosHCG cg="00_10"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかり、ましたぁっ、[r]
    んんぅぅっ、がんばりますぅっ[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston1.mp3" loop="true"  ]


    [tb_start_text mode=3 ]
    #
    背面騎乗位の形でみおは器用に腰を振る。[r]
    デカ尻の上下運動がダイナミックに視界を埋める。[p]
    [_tb_end_text]
    ;★スチル切替「00_16.png」
    [setCosHCG cg="00_16"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、おぅぁっ、んみゅうっ[p]
    [_tb_end_text]

    ;★スチル切替「00_16b.png」
    [setCosHCG cg="00_16b"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    後ろ向きで自分で動くのっ、[r]
    おちんちん深くまで入ってきすぎてぇっ[p]
    [_tb_end_text]
    ;★スチル切替「00_17.png」
    [setCosHCG cg="00_17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うっ、うぅ～……っ、よすぎてこわい、[r]
    きもちよすぎてこれ、だめ、だめなのぉっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    セックスだけは上手だなぁとケツを叩くたび[r]
    うれしそうに愛液がじゅわっと溢れる。[p]
    [_tb_end_text]
    ;★スチル切替「00_16b.png」
    [setCosHCG cg="00_16b"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0059.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁぁ……っ、あっ、あぁ～……[r]
    うっ、ぐぅ、っふぁぁ、っひぐぅ……[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse  volume="100"  time="6000"  buf="0"  storage="BGS/piston2fast.mp3" loop="true"  ]
    ;★スチル切替「00_16c.png」
    [setCosHCG cg="00_16c"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0060.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    らめっ、らめぇ、よだれ、おくちからもおまんこからも[r]
    垂れ流しなのとめられなくへぇっ[p]
    [_tb_end_text]
    ;★スチル切替「00_17.png」
    [setCosHCG cg="00_17"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0061.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もうイくっ、イくのぉっ、せんせぇ[r]
    イく許可くらはいぃぃ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    こっちもそろそろ、だから……っ！[p]
    [_tb_end_text]

    ;★スチル切替「00_17b.png」
    [setCosHCG cg="00_17b"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0062.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    はいっ、はいぃぃっ、お注射されてイきたいのぉっ[l]
    [_tb_end_text]

    ;一択選択肢　そらッ、お注射だッ！
    [glink_center storage="Hscene/cosH_nurse00.ks" target="cosHNurse00_2_2" text="そらッ、お注射だッ！"]
    [s]

    *cosHNurse00_2_2

    ;射精演出,ピストンBGS停止,★スチル切替「00_18.png」

    [stopse buf="0" ]
    [setCosHCG cg="00_18" syasei="true"]
    [calcHP HP="-20"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0063.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃはあぁあぁぁあぁっ♡[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0064.mp3"  ]

    ;★スチル切替「00_19.png」
    [setCosHCG cg="00_19"]
    [tb_start_text mode=3 ]
    #みお
    あっ、あうぅぅ～……♡　どぷどぷって[r]
    ドジまんこにお注射来てますぅぅ[p]
    [_tb_end_text]


    [fadeoutbgm2 time="6000" ]
    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay" ]


        ;みお性経験加算
        ;開発度膣+1、絶頂数膣+2、セックス+1、膣内射精+1
        [eval exp="f.cunt++"]
        [eval exp="f.cuntTotalOrgasm++" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.creampie++" ]
        [eval exp="f.cosH.nurse.select2.total++" ]
        ;※みおの体力減少は終了時の共通部で行うので、ここでは触らない

    [endif]
    ;　「■終了時の共通部」へジャンプ
    [jump target="cosHNurse00_end" ]


    *cosHNurse00_end
    [eval exp="f.cosH.total++" ]
    [eval exp="f.cosH.nurse.total++" ]
    [setreplay name="cosplayH" storage="replay_select.ks" target="cosH_select"]
    ;------------------------------------------------------------
[endmacro]