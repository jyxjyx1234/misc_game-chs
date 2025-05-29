[macro name="hotelCosplay01" ]



    ;------------------------------------------------------------------------------
    ;------------------------------------------------------------------------------
    ;■選択肢「コスプレＨ」押下時
    *hotelCosplay01
    [messageON]
    ;初回押下時のみ、下記テキストを表示（２回目以降はそのまま後述の下位選択肢の衣装選択に移る）
    [if exp="f.loveHo.cosplay.select1 == 0" ]
        *hotelCosplay01_1
        [tb_start_text mode=3 ]
        #
        そういえば……と、[r]
        あたりを見回してみる。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        あったあった。コスプレ衣装の案内だ。[p]
        [_tb_end_text]

        ;★表情「f04.png」
        [setLoveHotelHyoujou cg="f04"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0005.mp3"  ]
        [tb_start_text mode=4 ]
        #みお
        それは？[l]
        [_tb_end_text]

        ;選択肢
        ;　えっちな服を着てえっちしよう
        ;　かわいい服がいっぱいあるよ
        [glink_left storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_2" text="えっちな服を着てえっちしよう"]
        [glink_right storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_3" text="かわいい服がいっぱいあるよ"]
        [s]
        ;---------------------
        ;選択肢：えっちな服を着てえっちしよう
        *hotelCosplay01_2

        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0006.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        えっちえっちですか！？[p]
        [_tb_end_text]

        
        ;★表情「f05_red.png」
        [setLoveHotelHyoujou cg="f05_red"]
        [tb_start_text mode=3 ]
        #
        直球の物言が過ぎて[r]
        みおをびっくりさせてしまった。[p]
        [_tb_end_text]


        ;　つぎの共通部へ
        [jump storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_4" ]
        ;---------------------
        ;選択肢：かわいい服がいっぱいあるよ
        *hotelCosplay01_3
        ;★表情「f07.png」
        [setLoveHotelHyoujou cg="f07"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0007.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わ～　ほんとですね[r]
        かわいいお洋服がたくさんです[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        一覧を見せるとみおも目を輝かせるのだった。[p]
        [_tb_end_text]


        ;　つぎの共通部へ
        [jump storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_4" ]
        ;---------------------
        ;共通部
        *hotelCosplay01_4

        [tb_start_text mode=3 ]
        #
        で、要するに――……と[r]
        衣装のレンタルサービスとコスプレの説明をした。[p]
        [_tb_end_text]
        ;★表情「f04_red.png」
        [setLoveHotelHyoujou cg="f04_red"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0008.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        な、なるほどぉ……[p]
        [_tb_end_text]
        ;★表情「f03_red.png」
        [setLoveHotelHyoujou cg="f03_red"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0009.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        わたしに、それをしてほしい……[r]
        んですか？　先生は……[p]
        [_tb_end_text]
        ;★表情「f06_red.png」
        [setLoveHotelHyoujou cg="f06_red"]
        [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene5_0010.mp3"  ]
        [tb_start_text mode=3 ]
        #みお
        ……[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        恥じらってはいるが、[r]
        頼めば聞き入れてはくれそうだ。[p]
        [_tb_end_text]

        [tb_start_text mode=3 ]
        #
        それじゃあ……[p]
        [_tb_end_text]
    [endif]
    ;-----------------------------------------------------------------
    ;■コスプレHの下位選択肢
    *hotelCosplay01_5
    [tb_start_text mode=4 ]
    #
    コスプレＨを頼んでみようか？[l]
    [_tb_end_text]
    [eval exp="f.loveHo.cosplay.select1++" ]
    ;↑に続けて、下記の選択肢表示してください。
    ;　「Ａ：ナース服」「Ａ：チャイナ」「Ｂ：スクール水着」「Ｂ：マイクロビキニ」「もどる」
    ;
    ;　現状では、どのボタンも「制作中のため、前選択肢に戻ります」と仮テキストを出して、
    ;　「脱がす」「おさわりパートへ」「コスプレＨ」と表示されているタイミングへ戻してください。
    [setGlinkY num="5"]
    [glink color="btn_05_black " x="900" y="&tf.glink1Y" size="20" width="210"  storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_6" text="ナース服" ]
    [glink color="btn_05_black " x="900" y="&tf.glink2Y" size="20" width="210" storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_7" text="チャイナ服" ]
    [glink color="btn_05_black " x="900" y="&tf.glink3Y" size="20" width="210" storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_8" text="スクール水着" ]
    [glink color="btn_05_black " x="900" y="&tf.glink4Y" size="20" width="210" storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_9" text="マイクロビキニ" ]
    [glink color="btn_05_black " x="900" y="&tf.glink5Y" size="20" width="210" storage="Hscene/hotelCosplay01.ks" target="hotelCosplay01_10" text="考えなおす" ]
    [s]
    ;---------------------
    ;選択肢：Ａ：ナース服
    *hotelCosplay01_6
    [if exp="sf.isTaiken"]
        [setBK]
        [freeimage layer="1"]
        [freeimage layer="2"]
        [free layer="3" name="&f.lastLoveHotelCG" ]
        [deleteBK time="1"]

        [skipForTaikenban cg="EVcg/cosH_nurs/00_06.png" voice="vo_scene/FT_m011_scene6_0018.mp3" delete="false" ]
        [clearstack stack="if"]
        [maskEnd]
        [jump target="endHotelCosplay01"]    
    [endif]

    [eval exp="f.cosH.cloth = 'nurse'" ]
    [call storage="Hscene/cosH_nurse00.ks" ]
    [cosHNurse00]
    [jump storage="Hscene/hotelCosplay01.ks" target="endHotelCosplay01" ] 

    ;選択肢：Ａ：チャイナ
    *hotelCosplay01_7
    [if exp="sf.isTaiken"]
        [cancelForTaikenban]
        [clearstack stack="if"]
        [messageON]
        [jump target="hotelCosplay01_5"]
    [else]
        [eval exp="f.cosH.cloth = 'china'" ]
        [call storage="Hscene/cosH_china00.ks" ]
        [cosHChina00]
        [jump storage="Hscene/hotelCosplay01.ks" target="endHotelCosplay01" ] 
    [endif]
    ;選択肢：Ｂ：スクール水着
    *hotelCosplay01_8
    [if exp="sf.isTaiken"]
        [cancelForTaikenban]
        [clearstack stack="if"]
        [messageON]
        [jump target="hotelCosplay01_5"]
    [else]
        [eval exp="f.cosH.cloth = 'swim'" ]
        [call storage="Hscene/cosH_swim00.ks" ]
        [cosHSwim00]
        [jump storage="Hscene/hotelCosplay01.ks" target="endHotelCosplay01" ]
    [endif]
    ;選択肢：Ｂ：マイクロビキニ
    *hotelCosplay01_9
    [if exp="sf.isTaiken"]
        [setBK]
        [freeimage layer="1"]
        [freeimage layer="2"]
        [free layer="3" name="&f.lastLoveHotelCG" ]
        [deleteBK time="1"]

        [skipForTaikenban cg="EVcg/cosH_bikini/01_07.png" voice="vo_scene/FT_m011_scene9_0035.mp3" delete="false" ]
        [clearstack stack="if"]
        [maskEnd]
        [jump target="endHotelCosplay01"]    
    [endif]


    [eval exp="f.cosH.cloth = 'bikini'" ]
    [call storage="Hscene/cosH_bikini00.ks" ]
    [cosHBikini00]
    [jump storage="Hscene/hotelCosplay01.ks" target="endHotelCosplay01" ]
    ;選択肢：もどる
    *hotelCosplay01_10
    ;「制作中のため、前選択肢に戻ります」
    #

    [clearstack]
    [jump storage="SundayDate/commonDate.ks" target="hotelCommon1_2_select" ] 
    *endHotelCosplay01
    ;--------------------------------------------
    ;■終了時の共通部
    ;　これはすべてのコスプレＨシーンで共有する展開


    ;みお体力-20　※先生体力は射精時に減っているので、触らない
    [calcMioHP HP="-20" ]
    ;スチル切替【bk100】
    [setBK]
    [addTime minutes=30]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m011_scene6_0065.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はふぁ……[r]
    濃厚な体験、でしたぁ……[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    非日常の刺激をと思ってのコスプレＨ、[r]
    満足感も高いが、同時に消耗もかなりのものだった。[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    二人とも、しばしベッドにへばりこんでから[r]
    シャワーを浴び、帰路に着くのだった。[p]
    [_tb_end_text]


    [addTime minutes=30]
    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]


    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]

    [eval exp="f.pajamaChangeFlag = true" ]
    [eval exp="f.isMioTakeBath.type = 3"]

    ;帰宅パートに合流。入浴済扱いとする。
[endmacro]