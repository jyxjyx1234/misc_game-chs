
;朝えっち開始時イベント。初回01verが既読の場合は、この02verの方を再生。
;イベント中の選択肢でさらに別シーンへ飛ぶことも。
[macro name="asaHSecond" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    *asaH00_02
    ;ADV画面から進行
    ;　シーン回想からの場合もここから開始。暗転下で、朝の自室、エプロン姿のみお　fuan2_red.png　を
    ;　表示した状態で暗転を解除

    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0001.mp3"  ]
    [messageON]
    [tb_start_text mode=4 ]
    #みお
    えと、えと……[l]
    [_tb_end_text]

    [glink target="*asaH00_02_1" addlog="true" text="それではいただきます" color="btn_05_black glink_center"  storage=""  size="20"  x="375"  y="400"]
    [s]

    *asaH00_02_1
    [tb_start_text mode=3 ]
    #
    みおはキッチンでの行為に[r]
    慣れないようだが、構わず押し倒す。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]

    [mioHyoujouSabun hyoujou="okoruake_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0004.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ひゃあ[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [playbgm  volume="40"  time="6000"  loop="true"  fadein="true"  storage="BGM11_temptation.mp3"  html5="false"  ]
    ;スチル瞬間表示【00.png】、みお立ち絵消去
    [chara_hide_all time="1" ]
    [setAsaHCG cg="00" time="1"]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    ;☆スチル切替【01】
    [setAsaHCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、本当にこれがお好きなんですね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うんうん、制服エプロンの幼な妻は[r]
    いつ賞味してもいいものだ――[p]
    [_tb_end_text]

    ;☆スチル切替【00】
    [setAsaHCG cg="00" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    うぅ、あ、っふぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    エプロンによって強調された[r]
    ボディラインをさわさわと撫でさする。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この姿勢だと、重力に従った[r]
    乳房の存在感が圧倒的だ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    ;☆下記、スチル切替【02.png】に変更
    [setAsaHCG cg="02" time="300"]
    
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……～っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    丸裸になった乳房をこねくり回す。[p]
    [_tb_end_text]

    ;☆スチル切替【03】
    [setAsaHCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おっぱい、だめ、です[r]
    んぅぅぅっ、じかだと、よすぎてっ、ひっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおが抗うように身をよじれば[r]
    別の場所への愛撫に移る。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

    [tb_start_text mode=3 ]
    #
    そうこうするうち、[r]
    みおの股間から水音が聞こえ始めた。[p]
    [_tb_end_text]

    ;☆スチル切替【04】
    [setAsaHCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はうぅ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure2.mp3"  ]
    ;☆下記、スチル切替【06.png】に変更
    [setAsaHCG cg="06" time="300"]
    [tb_start_text mode=3 ]
    #
    ぴっちりとじたすじから垂れたヨダレが[r]
    朝日を浴びてきらきらと光る。[p]
    [_tb_end_text]

    ;☆スチル切替【07】
    [setAsaHCG cg="07" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……先生もズボン、苦しそうですよ？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ、と返事をして[r]
    ペニスを解放してやる。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper.mp3"  ]
    ;☆下記、スチル切替【08.png】に変更
    [setAsaHCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあ……すご……[r]
    血管浮いてて、ぴくぴくしてて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    構えたペニスを見せつけながら、[r]
    尻たぶのあたりに亀頭をなすりつける。[p]
    [_tb_end_text]

    ;☆スチル切替【09】
    [setAsaHCG cg="09" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っはぁ……っ、かたくてあつくて……[r]
    本当に刺さっちゃいそう、でぇ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    陶然としたみおもぐいぐいと[r]
    臀部をゆらして押し返してくる。[p]
    [_tb_end_text]

    ;☆スチル切替【10】
    [setAsaHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、あぁぁ……んんっ……[p]
    [_tb_end_text]

    ;☆スチル切替【11】
    [setAsaHCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふっ、くぁ……学校とか、お仕事前なのに[r]
    これからどうしちゃうんですっ、かぁ……？[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    そうだな、ここは……[l]
    [_tb_end_text]

    *asaH01_select1
    [glink  color="btn_05_black glink_left" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="膣に挿入する"  _clickable_img=""  target="*asaH00_02_2"  ]
    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="アナルに挿入する"  _clickable_img=""  target="*asaH00_02_3"  ]
    [glink  color="btn_05_black glink_right" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="行為をやめる"  _clickable_img=""  target="*asaH00_02_4"  ]
    [s]

    ;---------------------------------------------------
    ;---------------------------------------------------
    ;分岐【選択肢】膣に挿入する　※処女の場合、確認をはさむ。非処女なら下記★部ジャンプ
    *asaH00_02_2
    ;----------------------
    ;【分岐】みおが処女の場合
    [if exp="f.virgin.image.id == 0" ]

        [tb_start_text mode=4 ]
        #
        みおは処女だが、[r]
        本当に膣に挿入するか？[l]
        [_tb_end_text]


        [glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="挿入する"  _clickable_img=""  target="*asaH00_02_2_insert"  ]
        [glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="*asaH00_02_cancel"  ]
        [s]

        *asaH00_02_cancel
        [tb_start_text mode=4 ]
        #
        ここは……[l]
        [_tb_end_text]
        [jump target="*asaH01_select1" ]
    [endif]



    ;----------------------

    ;　→「★膣挿入パート」　へジャンプ

    *asaH00_02_2_insert
    [if exp="f.asaH.manko == 0" ]
        [jump storage="Hscene/asaH00_pre01.ks"  target="asaH01_manko01" ]
    [else]
        [jump storage="Hscene/asaH00_pre02.ks" target="asaH01_manko02" ]
    [endif]

    ;---------------------------------------------------
    ;---------------------------------------------------
    ;分岐【選択肢】アナルに挿入する
    *asaH00_02_3

    ;----------------------
    ;【分岐】みおがアナル処女の場合

    [if exp="f.analVirgin.image.id == 0" ]

        [tb_start_text mode=4 ]
        #
        みおはアナル処女だが、[r]
        本当にアナルに挿入するか？[l]
        [_tb_end_text]


        [glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="挿入する"  _clickable_img=""  target="*asaH00_02_3_insert"  ]
        [glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="考えなおす"  _clickable_img=""  target="*asaH00_02_cancel"  ]
        [s]

        [tb_start_text mode=4 ]
        #
        ここは……[l]
        [_tb_end_text]
        [jump target="*asaH01_select1" ]
    [endif]

    ;----------------------
    *asaH00_02_3_insert


    ;　→「★アナル挿入パート」　へジャンプ
    [if exp="f.asaH.anal == 0" ]
        [jump storage="Hscene/asaH00_pre01.ks" target="asaH01_anal01" ]
    [else]
        [jump storage="Hscene/asaH00_pre02.ks" target="asaH01_anal02" ]
    [endif]

    ;---------------------------------------------------
    ;---------------------------------------------------
    ;分岐【選択肢】行為をやめる
    *asaH00_02_4
    ;【分岐】ゲーム中はじめてここに来る場合は、段階１の同ラベル部分のイベントへ。
    [if exp="!f.asaH.isCancelRead" ]
        [jump target="*asaH00_01_4" storage="Hscene/asaH00_pre01.ks" ]
    [endif]
    ;【分岐】それ以外（ゲーム中ここに来るのが２回目以降なら↓）


    ;☆スチル切替【07.png】
    [setAsaHCG cg="07" time="300"]
    [tb_start_text mode=3 ]
    #
    今朝はここまで、と告げて[r]
    行為を切り上げた。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure3.mp3"  ]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [stopbgm  time="6000"  fadeout="true"  ]
    ;スチル消去
    [free layer="1" name="still" ]
    [fadeoutbgm2 time="6000" ]
    [bgChange time="0"  method="crossfade"  storage="room_m_o.png"  ]
    [mioHyoujou hyoujou="fuan2_red.png" time="1"]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あうぅ～……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="okoru2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0026.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    またわたしを焦らして楽しむ気ですね[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="学校でお勉強がんばっておいで"  _clickable_img=""  target="*asaH00_02_5"  ]
    [s]
    *asaH00_02_5

    [mioHyoujouSabun hyoujou="tohoho_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はい……[p]
    [_tb_end_text]

    [mioHyoujouSabun hyoujou="fuan_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene1_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なので、夜はごほうびとして[r]
    たくさん構ってくださいね……？[p]
    [_tb_end_text]

    ;欲求中アップ
    [plusMuramura level="middle"]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text] 

    [eval exp="f.asaH.isCancelRead = true" ]
    [eval exp="f.asaH.today = true" ]
    [eval exp="f.asaH.lastType = 0" ]
    [jump target="*endAsaH" ]

    ;---------------------------------------------------
    ;---------------------------------------------------
    ;★膣挿入パート

    ;　asaH01_manko02　へ
    *asaH01_manko02
    ;②上記以外のとき（ここに来るのが２回目以降のとき。当該部位が処女でないのは確定している）

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    [tb_start_text mode=3 ]
    #
    ペニスの先端を陰裂に近づけていく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
    ;☆下記、スチル切替【10.png】に変更
    [setAsaHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生って本当に新婚さんごっこの[r]
    えっちがお好きなんですね♡[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru2.mp3"  ]
    ;☆下記、スチル切替【12.png】に変更
    [setAsaHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ♡[p]
    [_tb_end_text]

    ;☆スチル切替【14.png】
    [setAsaHCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    登校前にえっちだなんて、[r]
    わたし不良になっちゃいましたぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ポニーテールを振り乱しながら[r]
    切れ切れにみおが言う。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    うなじからは甘い汗の匂いが[r]
    立ち昇り、くらくらしてくる。[l]
    [_tb_end_text]

    [glink  target="*asaH01_manko02_1"  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="みおっ"  _clickable_img=""   ]
    [s]

    *asaH01_manko02_1

    [tb_start_text mode=3 ]
    #
    後ろ抱きにおおいかぶさり、[r]
    髪を嗅ぎ、乳房をつかみ、膣を犯す。[p]
    [_tb_end_text]

    ;【BGS】piston1.mp3,time6000で再生
    [playse storage="BGS/piston1.mp3" sprite_time="0-6000" buf="0" ]

    ;☆スチル切替【13.png】
    [setAsaHCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んやっ、んっ、あはぁんっ[r]
    激し……せんせ、もっとゆっくり……[p]
    [_tb_end_text]

    ;☆スチル切替【12.png】
    [setAsaHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぅぁっ、そんなにしなくても[r]
    逃げませんから、ぁっ、んぅぅううっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    飛び散るふたりの体液が[r]
    清潔なキッチンを汚していく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    前後運動のあおりを受けて[r]
    シンクのふちはギシギシときしむ。[p]
    [_tb_end_text]

    ;☆スチル切替【15.png】
    [setAsaHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁっ、はふぁっ、わたし、[r]
    しあわせです、先生っ[p]
    [_tb_end_text]

    ;☆スチル切替【12.png】
    [setAsaHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    こんなに先生に求められてるんだって[r]
    わかって、胸がいっぱい、っでぇ[p]
    [_tb_end_text]

    ;☆スチル切替【16.png】
    [setAsaHCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぁぁっ、それ深いぃぃっ[r]
    んっ、んおぁっ、ふひぁぁ～っ[p]
    [_tb_end_text]

    ;☆スチル切替【12.png】
    [setAsaHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    当たって、っるぅ、そこっ、[r]
    そこがわたしの一番奥ですぅっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    この子が自分のものなのだと、[r]
    いちばん深い場所に刻み込まなくては――[p]
    [_tb_end_text]

    ;☆スチル切替【15.png】
    [setAsaHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0015.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    そうです、そこですよぉ……んは、[r]
    っうぅ、そこが、ぁっ、わたしの子宮……[l]
    [_tb_end_text]

    ;【BGS】piston2.mp3,time6000で再生
    [playse storage="BGS/piston2fast.mp3" sprite_time="0-6000" ]

    [glink  target="*asaH01_manko02_2"  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="膣内で出すぞ！　みお！"  _clickable_img=""   ]
    [s]

    *asaH01_manko02_2

    ;☆スチル切替【16.png】
    [setAsaHCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ……おちんちんのさきっぽ、[r]
    子宮にぐりぐりしながら出すんですね[p]
    [_tb_end_text]


    ;☆スチル切替【12.png】
    [setAsaHCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お願い、しますぅっ、わたしも[r]
    ナカに先生の精液ぃ、ほしいですっ[p]
    [_tb_end_text]

    ;☆スチル切替【15.png】
    [setAsaHCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ください、先生の熱いのたくさんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――ッ！[p]
    [_tb_end_text]

    ;射精,みお中出し経験+1
     ;☆スチル【17.png】へ変更
    [stopse buf="0" ]
    [setAsaHCG cg="17" time="300" syasei="true"]

    [free layer="1" name="asaH01_06" time="1" ]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんぅぁぁあああぁぁぁ――～～っ[p]
    [_tb_end_text]

     ;☆スチル【18.png】へ変更
    [setAsaHCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    来てます、せいえき、びゅうびゅう来ててっ[r]
    わたしもイく、イきますぅぅぅっ[p]
    [_tb_end_text]

     ;☆スチル【17.png】へ変更
    [setAsaHCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    子宮に精液注がれながらイっちゃうのぉ――！！[p]
    [_tb_end_text]

    ;☆少し後にあった画面暗転をここへ移動
    ;スチルとしてbk100.jpgを表示して画面真っ暗状態に
    [image layer="3" storage="../bgimage/bk100.jpg" name="bkcg" time="500" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……はぁ、はふぁぁ[r]
    ああぁ……すごかった、です、先生……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    精魂尽き果て、ふたりしてキッチンの床に[r]
    座り込む形になった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene2_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、これから先生の精子と[r]
    いっしょに学校なんだぁ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]



    ;シーン回想からだとここで終了。


    ;みお性経験加算
    ;　開発度膣+1、絶頂数膣+1、開発度乳房+1
    ;　セックス+1
    ;　※中出し数は射精演出時に加算済
    [if exp="!f.flag_replay" ]
        [calcMioHP HP="-20"]
        [eval exp="f.asaH.manko++" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.cunt++" ]
        [eval exp="f.cuntTotalOrgasm++" ]
        [eval exp="f.bust++" ]
        [eval exp="f.asaH.today = true" ]
        [eval exp="f.asaH.lastType = 1" ]
    [endif]
    ;ゲーム本編からだと、ここで暗転し、暗転開けると既存の朝えっち後のいってきますパートへ。



    [jump target="endAsaH" ]
    ;---------------------------------------------------
    ;---------------------------------------------------
    ;★アナル挿入パート

    ;　asaH01_anal02　へ
    *asaH01_anal02
    [tb_start_text mode=3 ]
    #
    ペニスの先端を少し持ち上げ、[r]
    陰裂の上にあるすぼまりに狙いをつける。[p]
    [_tb_end_text]


    ;☆スチル切替【10】
    [setAsaHCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0002.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あぁ、おしりでシてくれるんですね……♡[p]
    [_tb_end_text]


    ;☆スチル切替【bk100】
    [image layer="3" storage="../bgimage/bk100.jpg" name="bkcg" time="500"  ]
    [tb_start_text mode=3 ]
    #
    開発済みのみおのアナルは[r]
    吸いつくように亀頭を迎え入れる。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んんっ、んぅぅぅ……っ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru2.mp3"  ]

    ;☆下記、スチル切替【19.png】に変更
    [setAsaHCG cg="19" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0010.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、あぁ……おなかのなか、[r]
    せんせいでいっぱいですぅ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    交わるためのものではない穴を[r]
    性器に作り替えたという征服感。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    食いしばっていないと[r]
    すぐにでも暴発してしまいそうだった。[p]
    [_tb_end_text]


    ;☆スチル切替【21】
    [setAsaHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……っ、んん、ぁぅぅ[r]
    すごい、圧迫感があって……[p]
    [_tb_end_text]

    ;☆スチル切替【20】
    [setAsaHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0012.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    喉のところまでおちんちんが[r]
    来てるみたいに、息が詰まって……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    喘ぐみおの様子をみながら[r]
    ゆっくりと腰を遣う。[p]
    [_tb_end_text]

    ;【BGS】piston1.mp3,time6000で再生
    [playse storage="BGS/piston1.mp3" sprite_time="0-6000" buf="0" ]

    ;☆スチル切替【22】
    [setAsaHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あふぁっ！？　あんんっ、やっ、[r]
    おしり、めくれちゃっ、ひぐぅぅんっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    吸いつくアナルが、引く動きに追従し[r]
    ペニスを離すまいとするかのようだ。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    存分に引き付けてから、奥を突く。[p]
    [_tb_end_text]

    ;☆スチル切替【20】
    [setAsaHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふぐぅっ！？[p]
    [_tb_end_text]

    ;☆スチル切替【22】
    [setAsaHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    やっ、ふぅぁっ、んんっ、[r]
    きもち、いい[p]
    [_tb_end_text]

    ;☆スチル切替【21】
    [setAsaHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おしり、入り口が熱くてじんじんしてきて[r]
    おなかの奥の方までぞわぞわしてきてっ[p]
    [_tb_end_text]

    ;☆スチル切替【22】
    [setAsaHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0017.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふっ、おおぉっ、きもちいいのお、[r]
    おしりに先生のおちんちん入ってくるのぉっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおもピストンを迎え入れるように[r]
    身体をくねらせ、互いの快感が倍加していく。[p]
    [_tb_end_text]


    ;【BGS】piston2.mp3,time6000で再生
    [playse storage="BGS/piston2fast.mp3" sprite_time="0-6000" ]

    [tb_start_text mode=3 ]
    #
    音高く肉と肉をぶつけ合い、[r]
    そのペースは際限なく高まっていく――[p]
    [_tb_end_text]

    ;☆スチル切替【20】
    [setAsaHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0018.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    あっ、あはぁ……あぁ、[r]
    も、もう、立ってられな……んんっ[l]
    [_tb_end_text]

    [glink  target="*asaH01_anal02_1"  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="もう、出すぞ……っ"  _clickable_img=""   ]
    [s]

    *asaH01_anal02_1

    ;☆スチル切替【21】
    [setAsaHCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はいぃ、出して、ください[p]
    [_tb_end_text]

    ;☆スチル切替【22】
    [setAsaHCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしのおしりの中に先生の精液、[r]
    たくさんぶちまけてくださいぃぃっ[p]
    [_tb_end_text]


    ;☆スチル切替【20】
    [setAsaHCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    出してぇ、出してぇぇっ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――ッ！[p]
    [_tb_end_text]

    ;射精,肛内射精+1,BGS停止
    ;☆下記、スチル切替【23.png】に変更
    [stopse buf="0" ]
    [setAsaHCG cg="23" time="300" syasei="true" anal="true"]
    [eval exp="f.analCum++" ]
    [eval exp="f.analCumToday++" ]
    [free layer="1" name="asaH01_08" time="1" ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ふあああぁぁぁ――～～っ！[p]
    [_tb_end_text]


    ;☆スチル切替【24】
    [setAsaHCG cg="24" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あああぁっ、熱っ、[r]
    びりびり、あたまとおしり、ああっ[p]
    [_tb_end_text]

    ;☆スチル切替【23】
    [setAsaHCG cg="23" time="300"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お、おしりに射精されてっ、わたし、[r]
    イってますぅ……[p]
    [_tb_end_text]


    ;☆少し下にあった暗転をここへ移動
    ;スチルとしてbk100.jpgを表示して画面真っ暗状態に
    [image layer="3" storage="../bgimage/bk100.jpg" name="bkcg" time="500"]

    [tb_start_text mode=3 ]
    #
    そう言いながら、[r]
    へなへなと崩れ落ちるみおだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0025.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ……っ、はぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene3_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えへへ……おしりに精液入れて[r]
    学校に行っちゃうんですね、わたし……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [if exp="!f.flag_replay" ]
        [calcMioHP HP="-20"]
        [eval exp="f.asaH.anal++" ]
        [eval exp="f.analsex++" ]
        [eval exp="f.analsexTotal++" ]
        [eval exp="f.anusTotalOrgasm++" ]
        [eval exp="f.bust++" ]
        [eval exp="f.asaH.today = true" ]
        [eval exp="f.asaH.lastType = 2" ]
    [endif]
    ;シーン回想からだとここで終了。

    ;みお性経験加算
    ;　開発度アナル+1、絶頂数アナル+1、開発度乳房+1
    ;　アナルセックス+1
    ;　※中出し数は射精演出時に加算済

    ;ゲーム本編からだと、ここで暗転し、暗転開けると既存の朝えっち後のいってきますパートへ。

    ;---------------------------------------------------
    ;---------------------------------------------------
    ;以上
    *endAsaH
    [if exp="!f.flag_replay" ]
        [maskStart]
            [free layer="2" name="still" ]
            [free layer="3" name="bkcg" ]
    [endif]

[endmacro]







