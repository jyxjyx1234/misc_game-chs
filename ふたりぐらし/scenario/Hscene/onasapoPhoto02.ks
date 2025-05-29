[macro name="onasapoPhoto02" ]
    [plugin name="chat_story"]
    [clearfix name="debugButton" ]
    [setChatfont]
    [setreplay name="snap" storage="" target=""]
    [if exp="f.flag_replay" ]

    [endif]

    [chat_talk pos="left" name="みお" delay=500 text="前の写真じゃだめなんでしょうか" face="chat/icon/mio.png"]


    [chat_talk pos="right" name="自分" delay=500 text="もっとえっちなのが欲しいです" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 text="うぅん・・・" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=2000 graphic="EVcg/jidoriStill/02.png" graphic_width=220 face="chat/icon/mio.png"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
    [chatp]

    [chat_talk pos="right" name="自分" delay=500 text="！！！" face="chat/icon/sensei.png"]

    [chat_talk pos="right" name="自分" delay=500 text="おっぱい！！！！" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 text="途中でとなりの個室に人が来て" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=500 text="緊張して大変でした" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=500 text="では、これで・・・" face="chat/icon/mio.png"]

    [chat_talk pos="right" name="自分" delay=500 text="ありがとう！" face="chat/icon/sensei.png"]

    [chatp]

    ;チャット画面クリア
    [chat_clear time=20 ]
    [freeimage layer="2" time="20" ]
    [_tb_end_tyrano_code]

    [tb_start_tyrano_code]
    ;フォントサイズ戻す
    [resetfont]
    [_tb_end_tyrano_code]

    ;LINE風画面終了
    [messageON]

    [tb_start_text mode=3 ]
    #
    前回はブラ見せまでが精いっぱいだったのが[r]
    ナマ乳見せに進化している！[p]
    [_tb_end_text]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [eval exp="f.beforeBG = f.lastBG" ]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]

    [tb_start_text mode=3 ]
    #
    トイレに駆け込み、震える手で[r]
    保存した画像を全画面表示にする。[p]
    [_tb_end_text]


    [tb_hide_message_window  ]

    ;スチル01を全画面表示
    [CGSet storage="EVcg/jidoriStill/02.png" layer="1" name="still,onasapoPhoto02" time="1000"]

    [messageON]

    [tb_start_text mode=3 ]
    #
    自撮りに臨むみおの緊張や興奮を思い、[r]
    興奮をかきたてながらズボンを下ろした。[p]
    [_tb_end_text]

    [playse buf="0" storage="BGS/H_TEKOKI.mp3" loop="true" ]

    [tb_start_text mode=3 ]
    #
    写真を凝視し、ガマン汁の垂れるペニスを[r]
    しごき立てる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    ……[l]
    [_tb_end_text]


    [glink addlog="true" color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="イく……っ！"  _clickable_img=""  target="*onasapoPhoto02_1"  ]
    [s]

    *onasapoPhoto02_1
    [stopse buf="0" ]


    ;射精演出
    ;フラッシュと同時にスチルもオフ
    ;先生射精により、ムラムラ状態解除。体力減少
    [syaseiFlashForStill storage="EVcg/jidoriStill/02b.png" layer="1" name="still,onasapoPhoto02b" count="false"]
    [free layer="1"  name="onasapoPhoto02" ]
    [eval exp="f.ballCount = 0" ]
    [iconUpdate]
    [calcHP HP="-20"]

    [tb_start_text mode=3 ]

    #

    ――……ふぅ。[r]

    画面に盛大にぶちまけてしまった。[p]
    [_tb_end_text]
    [free layer="1" name="still" time="500" ]
    [tb_start_text mode=3 ]
    #
    みおのおかげで気分爽快だ。[r]
    午後もがんばろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……この自撮り遊び、[r]
    まだワガママを言える余地がありそうだ。[p]
    [_tb_end_text]

    ;イベント終了。テキストウィンドウを消去し、暗転＆暗転解除で背景を元のお仕事場に戻し、午後のお仕事パートに入る
    [messageInvisible]
    [maskStart]
    [bgChange storage="&f.beforeBG"]
    [setTime hours="13" minutes="0"]
    [maskEnd]

    [eval exp="f.onasapo.photo.flag = 2" cond="f.onasapo.photo.flag < 2" ]
    [eval exp="f.onasapo.photo.total++" ]
    [eval exp="f.onasapo.photo.lastDay = f.day" ]

[endmacro]