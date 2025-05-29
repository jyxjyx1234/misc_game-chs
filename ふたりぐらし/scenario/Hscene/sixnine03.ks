[macro name="sixnine03" ]


    ;-------------------------------------------------------------

    ;＜【映画から】シックスナイン　３回目＞

    ;シーン回想からの再生の場合、
    ;最初に「再生するシチュエーションを選んでください」のいつものやつを置いて
    ;選ばれたシチュ（段階）から開始

    [if exp="!f.flag_replay" ]

        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
        [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
        [wait  time="500"  ]
        [reset_camera time="1" ]
        [freeimage layer="1" ]
        [freeimage layer="2" ]
        ;スチル表示【01】
        [setSixnineCG cg="01" time="1"]
        [chara_hide_all  time="1"  wait="false"  ]
        [mask_off  time="1000"  effect="fadeOut"  ]
        [messageON]

    [else]
        [setSixnineCG cg="01" time="1"]
        [maskEnd]
        [messageON]
    [endif]
    ;シーン回想の場合はここからスタート。背景bk100、みお立ち絵なし、スチル【01】が表示済みで開始

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    で、では……下げますね、お召し物……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    さすがにこの、お互いの服を脱がす瞬間は[r]
    ちょっと気恥ずかしい。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの秘部と、離れていく布地の間に[r]
    光る糸が一筋走って水音とともに弾けた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    ;スチル切替【25】
    [setSixnineCG cg="25" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁう……聞こえちゃい、ましたよね……[r]
    う～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    脱がす前からトロトロに濡れていた。[r]
    みおも期待していたのだ。[p]
    [_tb_end_text]

    ;スチル切替【26】
    [setSixnineCG cg="26" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そっ、それはともかく、今度こそ[r]
    先生を気持ちよくし通してみせます！[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    競争です、みたいなニュアンスで言われる。[r]
    ときどき生真面目さが変な方向に出るよなぁ。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    そういうシックスナインもあるだろうが、[r]
    発端のえっちな映画では確か――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru1.mp3"  ]
    ;スチル切替【27】
    [setSixnineCG cg="27" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃはぁっ！？[p]
    [_tb_end_text]

    ;スチル切替【28】
    [setSixnineCG cg="28" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしもはじめなきゃ、ん、あぷぁっ[r]
    あぁ、逃げないでくださいぃ～[p]
    [_tb_end_text]

    ;スチル切替【27】
    [setSixnineCG cg="27" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひ、ひあぁ、逃げながら舐めるなんて[r]
    はんそくじゃないですか、んんぅぅ～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおのフェラから逃げながら[r]
    スローなクンニでみおの気勢を削いでいく。[p]
    [_tb_end_text]

    ;スチル切替【29】
    [setSixnineCG cg="29" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――はぷっ[p]
    [_tb_end_text]

    ;スチル切替【30】
    [setSixnineCG cg="30" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっとつかまえ、ましたよぉっ[r]
    ふ、ぁぁ……れる、れろぉ……んんっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ペニスをつかまえるころには、[r]
    みおも半ば出来上がって舌遣いも鈍い。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    狙い通り、ナメクジの交尾のような、[r]
    ねっとりとしたむつみ合いに持ち込めたようだ。[p]
    [_tb_end_text]

    ;スチル切替【31】
    [setSixnineCG cg="31" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぷぁっ、んぽぁ……あ、あれぁ……[r]
    激しくないのに、なんだかとっても……[p]
    [_tb_end_text]


    ;スチル切替【32】
    [setSixnineCG cg="32" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせい、これおなかの奥がじーんってして[r]
    すごく、すごいですぅ……はむっ、ぁんん……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの秘部もすっかり熟れた。[r]
    とろりと熱くほぐれ、汁気も増している。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    絶頂までのもう一押しを互いに引き延ばす[r]
    ゆるやかで熱い交歓――映画の行為はまさにこれだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いつまでも味わっていたいひとときだが――[p]
    [_tb_end_text]

    ;スチル切替【33】
    [setSixnineCG cg="33" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふにゅぅ……んぷ、あんっ、あむぅ、[r]
    ちゅっ、ちゅぅ……ひ、ひぃぁ……っ[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    こうなると先に音を上げるのは[r]
    体力のないみおの方だ。手足が震えてきた。[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine03.ks" target="sixnine03_1" text="終わらせようか" ]
    [s]
    *sixnine03_1
    ;スチル切替【34】
    [setSixnineCG cg="34" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えぁ……？　な、なにを……？[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    酔っぱらったようになっている。[r]
    勝手に進めてしまうことにした。[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine03.ks" target="sixnine03_2" text="イけ、ってことだよ" ]
    [s]
    *sixnine03_2
    [tb_start_text mode=3 ]
    #
    舌でみおの秘部をなぞりあげ、[r]
    手や唇でも同時に性感帯をいじめ抜く。[p]
    [_tb_end_text]


    ;スチル切替【35】
    [setSixnineCG cg="35" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0047.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、やぁっ、ひゃあぁぁあぁ――っ！？[p]
    [_tb_end_text]

    ;フラッシュでみおの絶頂演出
    [flash type="zettyou"]
    ;スチル切替【33】
    [setSixnineCG cg="33" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0048.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁ……っ……うぅっ[p]
    [_tb_end_text]


    [tb_start_text mode=4 ]
    #
    イったようだが……[r]
    恥じらいのためか、浅い絶頂だ。[l]
    [_tb_end_text]


    [glink_center storage="Hscene/sixnine03.ks" target="sixnine03_3" text="もう少しできるはずだよ" ]
    [s]
    *sixnine03_3
    ;スチル切替【34】
    [setSixnineCG cg="34" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、なにを――ふぅぅぅんっ！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    再びのクンニでみおをまた絶頂へ押し上げる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いちどイったことでまんこはトロトロで[r]
    子宮も降りてきているのがわかる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    つまり、やりたい放題できる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/nameru2.mp3"  ]
    ;スチル切替【35】
    [setSixnineCG cg="35" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0050.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふああぁっ、ふああ、やっ、なに、[r]
    先生、なにをしてるんですかぁっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    膣壁とクリトリスを同時にこねくり回し、[r]
    気まぐれにアナルや陰唇にも軽い刺激をくれてやる。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    愛液はいっそう濃く白濁してきて、[r]
    ローション代わりに都合がいい。[p]
    [_tb_end_text]


    ;スチル切替【33】
    [setSixnineCG cg="33" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やああ、やぁ、っ、うぅ～……[r]
    ま、またイく、イっちゃう、いく、いくいくぅ～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    クリトリスを舌で舐めつぶしながら[r]
    子宮口を指でくすぐる。[p]
    [_tb_end_text]


    ;スチル切替【35】
    [setSixnineCG cg="35" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0052.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁぅぅっ、イってる、[r]
    またイってますから、せん、せぇっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    軽い絶頂が何度も続いているようだ。[r]
    でもそれも、法悦に向けた階梯のようなもの。[p]
    [_tb_end_text]



    [tb_start_text mode=3 ]
    #
    あと一押しで、みおは本当の絶頂を[r]
    知ることができるだろう。[p]
    [_tb_end_text]

    ;スチル切替【33】
    [setSixnineCG cg="33" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0053.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あたま、びりびりで、おまた溶けたみた……っ[r]
    わたしどおなってるんですかぁっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ――とどめとばかりに[r]
    みおの秘部に深いキスをする。[p]
    [_tb_end_text]

    ;スチル切替【35】
    [setSixnineCG cg="35" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0054.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ッ――！？[p]
    [_tb_end_text]


    ;スチル切替【36】
    [setSixnineCG cg="36" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0055.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ～……あ、ぁぁ……！[r]
    ふぁぉ……っ、お、っんん……っ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    痙攣じみた絶頂の波がまずあって、[r]
    その後、くってりしなだれかかってくる。[p]
    [_tb_end_text]


    ;スチル切替【37】
    [setSixnineCG cg="37" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0056.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……あっ[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    強い絶頂の反動は深い深い弛緩のようで、[r]
    みおの股間の栓がばかになったようだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    つまり――……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/osikko.mp3"  ]
    ;スチル切替【38】
    [setSixnineCG cg="38" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0057.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    で、出ちゃ……止まらな……[r]
    あぁ……だめぇぇ……[p]
    [_tb_end_text]

    ;射精,BGS停止,スチル切替【39】
    [setSixnineCG cg="39" time="300" syasei="true"]
    [tb_start_text mode=3 ]
    #
    ……胸元にあたたかいものを感じながら[r]
    こちらも精を放つのだった。[p]
    [_tb_end_text]


    ;スチル切替【40】
    [setSixnineCG cg="40" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m005_scene2_0058.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ……んんんっ……♡[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    どうやら今度はちゃんと、[r]
    余さず飲み干せたようだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……余韻が抜けた後は[r]
    シーツ交換の大騒ぎだったのだけれども。[p]
    [_tb_end_text]



    ;シーン回想からの再生の場合、ここで終了。
    ;ゲーム本編から発生した場合、自由行動パートに戻る前にさらに下記の流れへ。



    ;-----------------------
    [if exp="!f.flag_replay" ]
        ;-----------------------
        ;みお性体験加算
        ;　開発％陰核+3,開発％膣+3,フェラチオ+1,絶頂陰核+3,絶頂膣+3,口内射精+1,

        [eval exp="f.clitoris+=3" ]
        [eval exp="f.cunt+=3" ]
        [eval exp="f.fellatio++" ]
        [eval exp="f.clitorisTotalOrgasm+=3" ]
        [eval exp="f.cuntTotalOrgasm+=3" ]
        [eval exp="f.mouthCum++" ]
        ;-----------------------
        ;★めじるし


        [fadeoutbgm2 time="6000" ]
        [messageInvisible]
        [wait  time="500"  ]
        [maskStart]
            [addTime minutes=60]
            [bgcheck]
            [wait  time="500"  ]
            [chara_hide_all  time="1"  wait="false"  ]
            [free layer="2" name="still" ]
            [free layer="3" name="still" ]
            ;スチル消去
            ;拡大なしの通常ADV画面へ戻る
            [eval exp="f.sixnine.today = true" ]
            [eval exp="f.sixnine.total++" ]
        [maskEnd]
        [messageON]

        ;みおと先生の体力-20
        [calcMioHP HP="-20"]
        [calcHP HP="-20"]

        [mioHyoujouSabun hyoujou="fuan_red.png"]
        [tb_start_text mode=3 ]
        #みお
        あ、ありがとうございました……？[r]
        おつかれさま、かな……？[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        気持ちよかったが、そのぶん心地よい虚脱感もある。[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        今日はこのまま寝てしまおうか……[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="enryo.png"]
        [tb_start_text mode=3 ]
        #みお
        そうですね[r]
        そうしましょうか[p]
        [_tb_end_text]


        [mioHyoujouSabun hyoujou="raku2.png"]
        [tb_start_text mode=3 ]
        #みお
        おやすみなさい、先生[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]
    [endif]

    ;以降、シックスナイン01「★めじるし」部分に合流




    ;以上

[endmacro]