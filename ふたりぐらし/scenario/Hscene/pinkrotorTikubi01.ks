
;アダルトグッズ系 >　ローター > 乳首責め　段階１

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[macro name="pinkrotorTikubi01" ]

    ;シーン回想の場合、真っ黒背景＆立ち絵なし状態でスタート
    [messageON]

    [tb_start_text mode=3 ]
    #
    おっぱい――というより[r]
    乳首をローターで開発しよう！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……とのお願いが通ったので、[r]
    みおには上半身ハダカになってもらう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    当のみおは、少々浮かない顔だ。[p]
    [_tb_end_text]


    ;※発生事由により開始パターンの分岐がありますが、
    ;　クスコ同様、パターン２は用意するだけで今のところ発生させられないものです。
    ;　シーン発生時はひとまずパターン１固定としてください。

    ;---------------------------------------
    ;■開始パターン１：通常（先生が頼みこんで）
    [if exp="Number(mp.type) === 1" ]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0001.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0002.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしが自分でローターをあてるのを[r]
        見たい、ってことなんですよね？[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        そういうことになる。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0003.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        う～ん……[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0004.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        前に乳首でイけたのは……[r]
        その、先生がシてくれたからで……[p]
        [_tb_end_text]

        [if exp="f.tikubiTotalOrgasm != 0" ]
            ;プチ分岐。乳首絶頂経験アリのとき
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0005.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            先生がシてくれるなら[r]
            気持ちよくなれると思うんですけど[p]
            [_tb_end_text]

        [else]
            ;プチ分岐。上記以外
            [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0006.mp3"  ]
            [tb_start_text mode=3 ]
            #みお
            自分で、おもちゃで……だと……[p]
            [_tb_end_text]

        [endif]

        [tb_start_text mode=3 ]
        #
        さすがに自慰での乳首イキは自信がない、と。[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0007.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        はい……[l]
        [_tb_end_text]

        ;　次の共通部へ
        [jump target="pinkrotor" ]
    ;---------------------------------------
    ;■開始パターン２：睡眠薬などで、みおが寝てはいないけど意識がはっきりしない状態になり、なしくずしに
    ;みおが酔っ払い適菜状況の時の
    [else]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        う～ん～[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        先生がローターをあてて[r]
        きもちよくしてくれると思ったんですが[p]
        [_tb_end_text]

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしが自分でやっても[r]
        きもちよくなれない気がしてえ～[p]
        [_tb_end_text]

        [tb_start_text mode=4 ]
        #
        ぼんやりした状態にあるかと思ったが、[r]
        案外頭はしっかり動いている様子。[l]
        [_tb_end_text]

        ;　次の共通部へ
        [jump target="pinkrotor" ]

    [endif]
    ;---------------------------------------------
    ;【共通部】
    *pinkrotor
    ;一択選択肢：ならば――
    [glink target="*pinkrotor1" addlog="true" text="ならば――" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]
    ;暗転し、間の演出。まっくら状態で下記台詞
    *pinkrotor1
    [messageOFF]
    [maskStart]
        [chara_hide_all time="1" ]
        [bgChange storage="bk100.jpg" time="1"]
    [mask_off time="1000" ]
    [messageON]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……あっ、ふぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/touch3.mp3"  ]
    ;スチル表示【01】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/01.png" name="still,rotor01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0012.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんぅ……先生～……[p]
    [_tb_end_text]

    ;スチル切替【02】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/02.png" name="still,rotor02" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0013.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    これはどういう状況なんですかぁ～[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ローターを構えたみおのおっぱいを揉んでいます。[p]
    [_tb_end_text]

    ;スチル切替【01】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/01.png" name="still,rotor01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0014.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    それはそうですけど[r]
    これじゃあ、ローターの意味……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そう、乳首にローターをあてるかどうかは[r]
    みおに委ねている。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    みおがシたくなっていないので、[r]
    今は振動もオフのままというわけだ。[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height="" exp=""   text="みおのおっぱい、すごいよ"  _clickable_img=""  target="*pinkrotor2"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="ローター、使わないの？"  _clickable_img=""  target="*pinkrotor3" ]
    [s]
    ;----------------------------
    ;分岐【選択肢】みおのおっぱい、すごいよ
    *pinkrotor2
    [tb_start_text mode=3 ]
    #
    ふわふわなのに弾力もあって、[r]
    もちもちであたたかくて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    いつまでも揉んでいられる……[p]
    [_tb_end_text]

    ;スチル切替【03】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/03.png" name="still,rotor03" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0015.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あ、ありがとうございます……[r]
    んっ、んんぅ……っ[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="pinkrotor4" ]
    ;----------------------------
    ;分岐【選択肢】ローター、使わないの？
    *pinkrotor3

    ;スチル切替【02】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/02.png" name="still,rotor02" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0016.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    使うかどうか、わたしの自由なら[r]
    いまは使いたいとは……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まあ、そうだろうな。[p]
    [_tb_end_text]


    ;スチル切替【03】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/03.png" name="still,rotor03" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0017.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    先生、手つきが……[r]
    っ、んん……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="pinkrotor4" ]
    ;----------------------------
    ;【共通部】
    *pinkrotor4
    [tb_start_text mode=3 ]
    #
    乳房周辺でもみおは充分に[r]
    感じられる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ローターオナや乳首イキの可否も[r]
    みおの“したい”気持ちにかかっている。[p]
    [_tb_end_text]

    ;スチル切替【04】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/04.png" name="still,rotor04" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0018.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、はふぁ……[p]
    [_tb_end_text]

    ;スチル切替【05】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/05.png" name="still,rotor05" time="1000"]

    [tb_start_text mode=3 ]
    #
    みおの乳首も尖ってきた。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/06.png" name="still,rotor06" time="1000"]

    [tb_start_text mode=3 ]
    #
    だが、言葉でも指でも触れないまま[r]
    愛撫を続ける。[p]
    [_tb_end_text]

    ;スチル切替【07】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/07.png" name="still,rotor07" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0019.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ[r]
    や、ぁぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおも感じている。[r]
    気持ちよくなりたいのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    引っかかっているのは[r]
    “自分でする”という部分のみ。[p]
    [_tb_end_text]


    ;スチル切替【08】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/08.png" name="still,rotor08" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0020.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    感じながら、みおはときおり身をよじる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    あわよくばと、それでこちらの手が[r]
    乳首に触れることを期待するかのように。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、それも許さない。[r]
    勃起しきった乳首はさびしいままだ。[p]
    [_tb_end_text]

    ;スチル切替【07】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/07.png" name="still,rotor07" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0021.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    うぅぅ～……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……やがて、しびれを切らしたように[r]
    みおがぼそりとつぶやいた。[p]
    [_tb_end_text]

    ;スチル切替【06】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/06.png" name="still,rotor06" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0022.mp3" ]
    [tb_start_text mode=4 ]
    #みお
    っ、ふぁ……んく、っ……[r]
    先生が、シてくれたら早いのに……[l]
    [_tb_end_text]

    [glink target="*pinkrotor5" addlog="true" text="いいよ" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]
    *pinkrotor5
    ;スチル切替【05】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/05.png" name="still,rotor05" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0023.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    え――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]
    ;スチル切替【09】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/09.png" name="still,rotor09" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0024.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ……[p]
    [_tb_end_text]

    ;スチル切替【10】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/10.png" name="still,rotor10" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0025.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    オモチャのスイッチを[r]
    入れただけじゃないですか……[p]
    [_tb_end_text]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/11.png" name="still,rotor11" time="1000"]

    [tb_start_text mode=3 ]
    #
    こちらはまた乳房の愛撫に戻るが、[r]
    乳首だけは決して触れない。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0026.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ふ……ぅぁ……[r]
    ふー……っ、うぅぅ～……[p]
    [_tb_end_text]

    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/12.png" name="still,rotor12" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0027.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    オモチャのぶるぶる、すごくて[r]
    持ってるだけの指がじんじんって……[p]
    [_tb_end_text]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/11.png" name="still,rotor11" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0028.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    こんなの、敏感なところに[r]
    くっついたら……大変な、ことに……[p]
    [_tb_end_text]

    ;スチル切替【12】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/12.png" name="still,rotor12" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0029.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    たいへんな……――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    お……これは……[p]
    [_tb_end_text]

    ;スチル切替【bk100.jpg】
    [CGSetAndDelete layer="2" storage="../bgimage/bk100.jpg" name="still,bkcg" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0030.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの手がゆらめき、[r]
    ローターを乳首に近づけ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    途中でそれをやめた。[p]
    [_tb_end_text]

    ;スチル切替【11】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/11.png" name="still,rotor11" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0031.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、だめだめだめ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおのしとやかさ、恥じらいの心は[r]
    美質だが、こういう場面では手ごわいな。[p]
    [_tb_end_text]

    ;スチル切替【13】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/13.png" name="still,rotor13" time="1000"]

    [tb_start_text mode=3 ]
    #
    まああと一押しだ。[r]
    ズルをしてしまおう。[p]
    [_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替【14】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/14.png" name="still,rotor14" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0032.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ひあああぁぅっ！？[p]
    [_tb_end_text]

    ;スチル切替【13】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/13.png" name="still,rotor13" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0033.mp3" ]
    [tb_start_text mode=4 ]
    #みお
    えぁっ、いま、先生わたしのおっぱい舐め……っ[l]
    [_tb_end_text]


    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height="" exp=""   text="乳首不干渉というルールはないので"  _clickable_img=""  target="*pinkrotor6"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="コリコリに勃起してたよ"  _clickable_img=""  target="*pinkrotor7" ]
    [s]
    ;-------------------------------------
    ;分岐【選択肢】乳首不干渉というルールはないので
    *pinkrotor6
    [tb_start_text mode=3 ]
    #
    そんな雰囲気になってただけで、[r]
    乳首に触れたら負けという話でもない。[p]
    [_tb_end_text]


    ;スチル切替【15】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/15.png" name="still,rotor15" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0034.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    なんだか丸め込まれてる気がします～[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="pinkrotor8" ]
    ;-------------------------------------
    ;分岐【選択肢】コリコリに勃起してたよ
    *pinkrotor7
    ;スチル切替【09】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/09.png" name="still,rotor09" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0035.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ぼ、ぼっ……[p]
    [_tb_end_text]


    ;スチル切替【15】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/15.png" name="still,rotor15" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0036.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    わたしの乳首は[r]
    おちんちんじゃないですぅ……[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="pinkrotor8" ]

    ;-------------------------------------
    ;【共通部】
    *pinkrotor8
    [tb_start_text mode=3 ]
    #
    接触は一瞬、乳首を舌で責めたというより、[r]
    たっぷり唾液をまぶしてきた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だから当然――[p]
    [_tb_end_text]

    ;スチル切替【13】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/13.png" name="still,rotor13" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0037.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あ……あぁぁ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの息が加速度的に粗くなっていく。[p]
    [_tb_end_text]

    ;スチル切替【15】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/15.png" name="still,rotor15" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0038.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ちく、び……熱……[r]
    濡れたせいで空気でも気持ちよくて……[p]
    [_tb_end_text]

    ;スチル切替【16】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/16.png" name="still,rotor16" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0039.mp3" ]
    [tb_start_text mode=4 ]
    #みお
    ううっ……こんなの、[r]
    もう、がまんできない……[l]
    [_tb_end_text]

    [glink target="*pinkrotor9" addlog="true" text="さあ、そのブルブルで――" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]
    *pinkrotor9
    ;スチル切替【17】
    ;スチル切替：ローターを乳首に当てる
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/17.png" name="still,rotor17" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0040.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ――っ！？[p]
    [_tb_end_text]

    ;スチル切替【18】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/18.png" name="still,rotor18" time="1000"]


    ;みお絶頂表現のピンクフラッシュ
    ;同時に乳首絶頂数を+1
    [flash type="zettyou"]
    [eval exp="f.tikubiTotalOrgasm++" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0041.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あひぃあぁあぁあ～～っ！？！？[p]
    [_tb_end_text]

    ;スチル切替：表情差分で目がハートになるなど、他ではあまりないキマった感じの顔表現へ

    [tb_start_text mode=3 ]
    #
    たっぷり焦らしたぶん、反応は壮絶だった。[p]
    [_tb_end_text]


    ;スチル切替【19】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/19.png" name="still,rotor19" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0042.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    ちくびっ、ちくびすごいっ[r]
    ぶるぶる痺れてぇっ、んあああっ[p]
    [_tb_end_text]

    ;スチル切替【20】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/20.png" name="still,rotor20" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0043.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    きもちよすぎて怖いのにっ[r]
    もっと押しつけちゃってぇっ[p]
    [_tb_end_text]

    ;スチル切替【19】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/19.png" name="still,rotor19" time="1000"]


    ;みお絶頂表現のピンクフラッシュ
    ;同時に乳首絶頂数を+1
    [flash type="zettyou"]
    [eval exp="f.tikubiTotalOrgasm++" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0044.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    んんっ、んぁぁぁっ、ふみゅううぅっ[p]
    [_tb_end_text]


    ;スチル切替【21】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/21.png" name="still,rotor21" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0045.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あたま、あたまのなか、[r]
    ばちばち光ってますぅぅ[p]
    [_tb_end_text]


    ;スチル切替【20】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/20.png" name="still,rotor20" time="1000"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0046.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    頭の中、ふわってしてきて、[r]
    あっ、これイく、イっちゃうっ[p]
    [_tb_end_text]


    ;スチル切替【22】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/22.png" name="still,rotor22" time="1000"]


    ;みお絶頂表現のピンクフラッシュ
    ;同時に乳首絶頂数を+1
    [flash type="zettyou"]
    [eval exp="f.tikubiTotalOrgasm++" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0047.mp3" ]
    [tb_start_text mode=4 ]
    #みお
    わたし、わたしっ[r]
    乳首ぶるぶるされてイっちゃいますぅぅっ[l]
    [_tb_end_text]

    [glink target="*pinkrotor10" addlog="true" text="見ててあげるよ" color="btn_05_black glink_center" storage="" size="20" x="375" y="400"]
    [s]
    *pinkrotor10
    ;スチル切替【19】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/19.png" name="still,rotor19" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0048.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    うん、うん……っ、[r]
    せんせ、みてて……っ[p]
    [_tb_end_text]


    ;スチル切替【21】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/21.png" name="still,rotor21" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0049.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あっ、もう来る、いく、いくいく――[p]
    [_tb_end_text]

    ;スチル切替【20】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/20.png" name="still,rotor20" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0050.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    イ――……っ[p]
    [_tb_end_text]


    ;スチル切替【23】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/23.png" name="still,rotor23" time="1000"]


    ;みお絶頂表現のピンクフラッシュ
    ;同時に乳首絶頂数を+1
    [flash type="zettyou"]
    [eval exp="f.tikubiTotalOrgasm++" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0051.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    んああぁぁあぁあぁ――～～……っ！！[p]
    [_tb_end_text]


    ;スチル切替【22】
    [CGSetAndDelete layer="2" storage="EVcg/roterTikubi/22.png" name="still,rotor22" time="1000"]

    [tb_start_text mode=3 ]
    #
    本当に胸しか責められていないのに、[r]
    みおの絶頂は激しかった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ガクガク音がしそうなほどの[r]
    激しい痙攣と嬌声は長く続き――……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/roter01.mp3"  ]


    ;スチル切替【bk100.jpg】
    ;　ローターとそれを持つ手はオフ。みおはレイプ目表現に近いうつろな感じで放心し、
    ;　だらしなく開いた口からはうっすらよだれが一筋垂れて光っている。
    [CGSetAndDelete layer="2" storage="../bgimage/bk100.jpg" name="still,bkcg" time="1000"]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0052.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    あ……っ、うぁぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene10_0053.mp3" ]
    [tb_start_text mode=3 ]
    #みお
    びりびり……まっしろで……[r]
    えへへぇ……[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    [tb_start_text mode=3 ]
    #
    ……頭の中のおかしなスイッチに[r]
    触れてしまったのかもしれない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    若干不安になりつつも、様子を見ているうちに[r]
    みおは眠りに落ちていったのだった。[p]
    [_tb_end_text]




        ;シーン回想からだとここで終了。

        ;みお性経験加算
        ;　開発度乳首+3（ちょっと多め）、開発度乳房+1
        ;　オナニー+1、露出調教+1
    ;※乳首絶頂はシーン中の演出でつど加算している

    ;みお体力-20
    [setreplay name="pinkrotorTikubi001" storage="replay_select.ks" target="pinkrotorTikubi_select"]

    [if exp="!f.flag_replay" ]

        [calcMioHP HP="-20"]
        [eval exp="f.tikubi+=3"]
        [eval exp="f.masturbation++"]
        [eval exp="f.masochism++"]
        
        [eval exp="f.pinkRotorEv.tikubi++" ]

        [tb_start_text mode=3 ]
        #
        ……それから、眠ったみおの世話をし[r]
        自分も寝てしまうことにした。[p]
        [_tb_end_text]

        [eval exp="f.todayEnd = true" ]

    [endif]


    [tb_hide_message_window  ]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;以上

[endmacro]

