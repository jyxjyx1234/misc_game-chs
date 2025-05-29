[macro name="mirrorBackH"]
    *mirrorBackH_01
    ;直前までのＡＤＶ表示を継続。
    [fadeoutbgm2 time="6000" ]
    ;　※シーン回想ではここから再生。
    ;　　暗転開ける前に、夜の脱衣所ＢＧ、タオル姿のみお（表情tohoho.png）を表示しておく。
    ;　　（通常のゲームパートからの発生ならば元からその絵面なので何もしない）
    [setreplay name="mirrorBackH" storage="replay_select.ks" target="mirrorBackH_select"]
    [messageON]
    [tb_start_text mode=3 ]
    #
    ふらつくみおを支えるように手を伸ばし――[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuanake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふえ？[p]
    [_tb_end_text]

    ;みお立ち絵アップ化
    [CAMERA zoom="1.3" layer="base" time="500" wait="false"]
    [CAMERA zoom="1.3" layer="0" time="500" wait="true" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]	

    [tb_start_text mode=3 ]
    #
    そのまま抱きしめる。[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoruake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0013.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    わわっ、どっ、どうしましたっ[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="みおがえっちだから"  _clickable_img=""  target="*mirrorBackH_02"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="みおがかわいいから"  _clickable_img=""  target="*mirrorBackH_03"  ]
    [s]

    *mirrorBackH_02
    ;【選択肢】みおがえっちだから

    [mioHyoujouSabun hyoujou="odoroki_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、このかっこうはのぼせちゃったからで[r]
    別に変な意味ではっ[p]
    [_tb_end_text]

    ;　→共通部
    [jump target="*mirrorBackH_04" ]

    *mirrorBackH_03
    ;【選択肢】みおがかわいいから

    [mioHyoujouSabun hyoujou="situmon_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほめられるのはうれしいですけど、[r]
    あの、手つきが……[p]
    [_tb_end_text]


    ;　→共通部
    [jump target="*mirrorBackH_04" ]

    *mirrorBackH_04
    ;【共通部】

    [messageInvisible]
    [chara_hide_all  time="1"  wait="false"  ]
    [bgChange time="1000"  method="crossfade"  storage="bk100.jpg"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    やんわりかわそうとするみおを、[r]
    背後から抱き留める形になった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うわわ――……っ[p]
    [_tb_end_text]

    [if exp="sf.isTaiken" ]
        [skipForTaikenban  cg="EVcg/MirrorBackHstill/01.png" voice="vo_scene/FT_m007_scene3_0017.mp3"]
        [jump storage="Hscene/mirrorBackH.ks" target="mirrorBackH_skip"]
    [endif]

    [tb_start_text mode=3 ]
    #
    つんのめったみおは洗面台に手をついて、[r]
    はらりとタオルが落ちる。[p]
    [_tb_end_text]

    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]

    ;スチル表示【01.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/01.png" name="still,mirror1" time="1000" ]
    [RESET_CAMERA time="1" layer="base"]
    [RESET_CAMERA time="1" layer="0"]
    [tb_start_text mode=3 ]
    #
    鏡に映った自分たちと目が合う。[r]
    息をのんだ。[p]
    [_tb_end_text]

    ;スチル切替【02.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/02.png" name="still,mirror2" time="300" ]
    [free layer="2" name="mirror1" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あうぅぅ……[r]
    鏡越しに自分たちを見るのって……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    思っていた以上に自分たちは[r]
    肌を火照らせ、目を潤ませ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ほぼ裸体で絡み合っているのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自身を俯瞰するようでもあり、[r]
    他人の情事を盗み見ているようでもある。[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/03.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ、せん、せ……[r]
    腰掴むちから、強いぃ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    互いの興奮が一挙に高まるのがわかり、[r]
    吐息はより熱く湿っていく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]	
    ;スチル切替【03.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/04.png" name="still,mirror4" time="300" ]
    [free layer="2" name="mirror2" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……わたしのおまたから[r]
    先生のおちんちん生えてきちゃったぁ[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/05.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0020.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    そういう生き物みたいに頭が赤くて[r]
    ひくひくしてヨダレみたいなのが光って……[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="これはスマタだよ"  _clickable_img=""  target="*mirrorBackH_05"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="ふたなりになっちゃったね"  _clickable_img=""  target="*mirrorBackH_06"  ]
    [s]



    ;【選択肢】これはスマタだよ
    *mirrorBackH_05
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/06.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    スマタ……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/07.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほんとのえっちじゃないのに、[r]
    すっごくやらしいこと、してる気が[p]
    [_tb_end_text]

    ;※ここに来るのが２回目以降だと追加表示。
    ;　・イベント２回目でも、はじめてこの選択肢を選んだ場合は表示されない。
    ;　・回想で２回目設定の場合は上記無視して必ず表示
    [if exp="f.mirrorH.talk1" ]

        [tb_start_text mode=3 ]
        #
        前もした覚えのある会話だが、[r]
        スレないみおの反応はいつも初々しい。[p]
        [_tb_end_text]

    [endif]
    ;---------
    [eval exp="f.mirrorH.talk1 = true" ]
    ;　→次の共通部へ
    [jump target="*mirrorBackH_07" ]

    ;【選択肢】ふたなりになっちゃったね
    *mirrorBackH_06
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/04.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふた、なり……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/06.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    女の子におちんちんがあるのって[r]
    うれしいものなんですか……？[p]
    [_tb_end_text]

    ;---------
    ;※ここに来るのが２回目以降だと追加表示。
    ;　・イベント２回目でも、はじめてこの選択肢を選んだ場合は表示されない。
    ;　・回想で２回目設定の場合は上記無視して必ず表示

    [if exp="f.mirrorH.talk2" ]

        [tb_start_text mode=3 ]
        #
        前もした覚えのある会話だが、[r]
        スレないみおの反応はいつも初々しい。[p]
        [_tb_end_text]

    [endif]

    ;---------
    [eval exp="f.mirrorH.talk2 = true" ]
    ;　→次の共通部へ
    [jump target="*mirrorBackH_07" ]

    ;【共通部】
    *mirrorBackH_07
    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/05.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃっ、うあぁ、先生の腰、[r]
    かくかく動いてっ、おまたが擦れてっ[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/07.png" name="still,mirror2" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんんぅぅ～～っ[p]
    [_tb_end_text]

    ;[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【04.png】
    ;[CGSet layer="2" storage="EVcg/MirrorBackHstill/04.png" name="still,mirror4" time="1000" ]
    ;[free layer="2" name="mirror3" time="1" ]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
    [tb_start_text mode=3 ]
    #
    すべらかな無毛の恥丘がぷにぷにと[r]
    ペニスを押し返してくる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そこに加わるのが太股の締めつけと[r]
    徐々ににじみ出る愛液。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    往復のたびに快楽は倍増していき――[r]
    射精感が急速に込みあげる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    出……る……ッ！[r]
    止まらないっ！[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/05.png" name="still,mirror2" time="300" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっ、出るってどこに……――[p]
    [_tb_end_text]


    ;射精演出。みお、ぶっかけ経験+1
    [syaseiFlashForStill layer="2" storage="EVcg/MirrorBackHstill/08.png" name="still,mirror5" count="false"]
    [eval exp="f.sperm += 1" ]
    ;スチル切替【05.png】

    [free layer="2" name="mirror4" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    きゃああああああっ！？[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……精液があたりに飛び散るのも構わず[r]
    スマタを続けながら出しに出した。[p]
    [_tb_end_text]

    ;スチル切替【06.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/09.png" name="still,mirror6" time="300" ]
    [free layer="2" name="mirror5" time="1" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    洗面台とおなかがべたべたですぅ……[r]
    べっとりで、むわって熱くて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの下腹は言葉通りにドロドロで[r]
    そこは、ちょうど子宮の真上あたりだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ペニスは依然硬いままだ。[r]
    萎えるどころか、一層猛っている。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    みおの外側を汚したなら、[r]
    次は内側を汚すべきだと。[l]
    [_tb_end_text]


    [glink  color="btn_05_black glink_center" addlog="true"  storage=""  size="20"  x="auto"  y="400"  width=""  height=""  text="次は本当のセックスだよ"  _clickable_img=""  target="*mirrorBackH_08"  ]
    [s]


    *mirrorBackH_08
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/10.png" name="still,mirror10" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    え――[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
    ;スチル切替【11.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/11.png" name="still,mirror11" time="300" ]
    [free layer="2" name="mirror6" time="1" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うああああっ、おっきぃぃぃぃっ[p]
    [_tb_end_text]
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/12.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、ああぁ……さっき出した精液、[r]
    ついたままのおちんちん、ナカに……[p]
    [_tb_end_text]

    ;-----------------------------------
    ;処女だった場合、ここで追加台詞＆地の文
    [if exp="f.virgin.image.id == 0" ]
        [CGSet layer="2" storage="EVcg/MirrorBackHstill/13.png" name="still,mirror6" time="300" ]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m006_part0015.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        これが、わたしのはじめて……[p]
        [_tb_end_text]


        [tb_start_text mode=3 ]
        #
        灼熱の風呂でほぐれていたのか、[r]
        膣肉はよくほぐれている。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        みおも痛みより快楽が勝るようだった。[p]
        [_tb_end_text]
        [iscript]
        f.virgin = addExperience(f.virgin, "2028", "のぼせたところを襲われ、後ろから貫かれた");
        [endscript]
    [endif]
    ;-----------------------------------
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/14.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふはぁ……はぁー……[r]
    うっ、うやあぁ、んん……っ[p]
    [_tb_end_text]

    ;BGS再生：piston1.mp3(time6000)
    ;スチル切替【08.png】
    ;[playse storage="BGS/piston1.mp3" sprite_time="0-6000" buf="1" ]
    ;[CGSet layer="2" storage="EVcg/MirrorBackHstill/08.png" name="still,mirror8" time="1000" ]
    ;[free layer="2" name="mirror7" time="1" ]


    [tb_start_text mode=3 ]
    #
    先ほどの精液も潤滑油となり、[r]
    ピストン運動は最初からトップスピードだ。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    鏡に映ったみおの巨乳がゆさゆさとゆれ、[r]
    脱衣所にはか細い喘ぎが反響する。[l]
    [_tb_end_text]


    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ほら、鏡を見て"  _clickable_img=""  target="*mirrorBackH_09"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="いろんなみおが見えるよ"  _clickable_img=""  target="*mirrorBackH_10"  ]
    [s]


    ;------------------------------------
    ;【選択肢】ほら、鏡を見て
    *mirrorBackH_09
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/13.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、や、いやですぅ――うぁんっ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    こちらの意図はわかっているのだろう。[r]
    元々みおは鏡を見まいと視線を下げ続けていた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    だが、いやいやする顔を、[r]
    膣奥への一突きで前に向けさせる。[p]
    [_tb_end_text]


    ;スチル切替【09.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/11.png" name="still,mirror9" time="300" ]
    [free layer="2" name="mirror8" time="1" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    鏡像の自分自身と目が合った。[r]
    快楽と羞恥でみだらにとろけた自分自身と。[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="mirrorBackH_11"  ]
    ;------------------------------------
    ;【選択肢】いろんなみおが見えるよ
    *mirrorBackH_10
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/15.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0036.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いろんな、わたし……？[p]
    [_tb_end_text]

    ;スチル切替【09.png】
    ;[CGSet layer="2" storage="EVcg/MirrorBackHstill/09.png" name="still,mirror9" time="1000" ]
    ;[free layer="2" name="mirror8" time="1" ]

    [tb_start_text mode=3 ]
    #
    行為としては立ちバック――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ペニスを受け入れて反った背中のラインが[r]
    美しく、膣の上でヒクつくアナルも絶景だ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    その上で、身体の前面が鏡に映りこんでいる。[r]
    本来見えない胸や相手のあえぐ表情までわかる。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/12.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    全身あまさず視線でも犯しているのだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ガラス張りの部屋での公開セックスじみた状況。[r]
    そうと気づいたみおのうなじが羞恥に染め上がる。[p]
    [_tb_end_text]


    ;　→次の共通部へ
    [jump target="mirrorBackH_11"  ]
    ;------------------------------------
    ;【共通部】
    *mirrorBackH_11
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/13.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_00382.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふはぁっ……っく、んん、[r]
    ひふぅぅ、あ、ああぁ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    つま先立ちしていた細い下半身がわななき、[r]
    膣壁がきゅうきゅうと締めつけを増す。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抽送は、もはや膣の強烈な吸引に[r]
    抗っているような感覚だ。[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/12.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んんぁぁ、うっ、[r]
    ううぅう～……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふたりとも限界が近い。[r]
    腰遣いを切り替えていく。[p]
    [_tb_end_text]

    ;BGS再生：piston2.mp3(time6000)
    [playse storage="BGS/piston2.mp3" sprite_time="0-6000" buf="1" ]
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/15.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――っ、んきゃあっ、ふ、深いっ[r]
    おなかの奥まで、響いて[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/12.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんんんぅ――～～っ！！[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    亀頭に子宮口のコリコリした感触を認めた時、[r]
    精液は決壊間際だった。[l]
    [_tb_end_text]

    ;一択選択肢：イ――く――ぞ！
    [glink  color="btn_05_black glink_center" addlog="true"  storage=""  size="20"  x="auto"  y="400"  width=""  height=""  text="イ――く――ぞ！"  _clickable_img=""  target="*mirrorBackH_12"  ]
    [s]
    *mirrorBackH_12
    ;射精演出、BGS停止、みお膣内射精経験+1
    [stopse buf="0" ]
    [syaseiFlashForStill layer="2" storage="EVcg/MirrorBackHstill/16.png" name="still,mirror16" count="true"]

    ;スチル切替【10.png】

    [free layer="2" name="mirror9" time="1" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ――ぐ、苦し……あっ、いっぱい入って来て、[r]
    あっ、ふやあぁっ！？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    なだれ込んだ精液の量は途轍もなく、[r]
    溢れた分が結合部から噴き出るほどだった。[p]
    [_tb_end_text]

    ;スチル切替【11.png】
    [CGSet layer="2" storage="EVcg/MirrorBackHstill/17.png" name="still,mirror11" time="300" ]
    [free layer="2" name="mirror10" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぅぅ、おなか、重たくて、[r]
    あふぇ……はぅぁ……はぁ……うぅぅ……[p]
    [_tb_end_text]

    [CGSet layer="2" storage="EVcg/MirrorBackHstill/18.png" name="still,mirror6" time="300" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あつい……あついのぉ……[r]
    おなかのなか、やけどしたみたいに……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    暑い……[r]
    沸き立つふたりの汗が蒸気のようだ……[p]
    [_tb_end_text]



    *mirrorBackH_skip

    [if exp="sf.isTaiken" ]
            [bgChange storage="bk100.jpg" time="1"]
            [chara_hide_all time="1" ]
            [free layer="2" name="still" ]
        [maskEnd]
    [endif]

    [fadeoutbgm2 time="6000" ]
    ;最前面にスチルとしてbk100.jpg表示
    [CGSet layer="4" storage="../bgimage/bk100.jpg" time="1000" name="bkcg" ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m007_scene3_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふ、ふにゅうぅ………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そのままみおはへたり込んで[r]
    気を失ってしまった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    のぼせた上での運動と無理をさせたものな……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ベッドに運んで介抱をしたら
    自分も寝てしまうとしよう。[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [free layer="2" name="mirror11" time="1" ]
    [free layer="2" name="still" time="1" ]
    [free layer="4" name="bkcg" time="1" ]
    [chara_hide_all time="1" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [addTime minutes=60]
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


    [if exp="f.flag_replay!=true"]
        [calcMioHP HP="-20"]
    [endif]

    [if exp="f.cgmodeFlag == true"]
        [endreplay]

    [endif]
    ;シーン回想からの場合はここで終了

    ;みお性経験加算
    ;　セックス+1、開発度膣+1、絶頂数膣+1、開発度陰核+1
    ;　※中出しは射精演出時に加算済
    [if exp="!f.flag_replay"]

        [if exp="!sf.isTaiken" ]
            [setreplay name="mirrorBackH001" storage="replay_select.ks" target="mirrorBackH_select"]
            [eval exp="f.sexTotal++" ]
            [eval exp="f.cunt++" ]
            [eval exp="f.cuntTotalOrgasm++" ]
            [eval exp="f.clitoris++" ]
            [eval exp="f.mirrorH.total++" ]
        [else]
            [clearstack]
            [jump storage="communication1.ks" target="*dayEnd" ]
        [endif ]    
    [endif]    
    ;本編からの再生の場合、夜這い確認などスッ飛ばして朝演出へ直行、翌日へ。
[endmacro]

