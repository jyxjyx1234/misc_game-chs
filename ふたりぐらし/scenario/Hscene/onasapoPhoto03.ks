[macro name="onasapoPhoto03" ]
    [plugin name="chat_story"]
    [clearfix name="debugButton" ]
    [setChatfont]
    [setreplay name="snap" storage="" target=""]
    [if exp="f.flag_replay" ]

    [endif]

    [chat_talk pos="left" name="みお" delay=500 text="次はどうすれば？" face="chat/icon/mio.png"]

    [chat_talk pos="right" name="自分" delay=500 text="慣れてきたね" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 text="そういうわけでは" face="chat/icon/mio.png"]

    [chat_talk pos="right" name="自分" delay=500 text="じゃあ次はパンツを見せてもらいたいな" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 text="ただ見せたり見られたりじゃなくて" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=500 text="自分ではだけて写真に撮って" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=500 text="それを送信するのって" face="chat/icon/mio.png"]

    [chat_talk pos="left" name="みお" delay=500 text="おかしくなりそうなぐらいドキドキするんですけど" face="chat/icon/mio.png"]

    [chat_talk pos="right" name="自分" delay=500 text="それが楽しくなってきてるでしょ？" face="chat/icon/sensei.png"]

    [iscript]

        const $chat = showTemporaryChatLoadingWithFace($('.area_tchat'));

    [endscript]

    [wait time="2500" ]

    [chat_talk pos="right" name="自分" delay=500 text="みお？" face="chat/icon/sensei.png"]

    [chat_talk pos="right" name="自分" delay=500 text="みおー？" face="chat/icon/sensei.png"]

    [chat_talk pos="right" name="自分" delay=500 text="怒らせちゃったかな　ごめんね" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 graphic="EVcg/jidoriStill/03.png" graphic_width="220" face="chat/icon/mio.png"]
    [playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
    [chatp]

    [chat_talk pos="right" name="自分" delay=500 text="みお！！！" face="chat/icon/sensei.png"]

    [chat_talk pos="right" name="自分" delay=500 text="どきどきしたかい？" face="chat/icon/sensei.png"]

    [chat_talk pos="left" name="みお" delay=500 text="しりません" face="chat/icon/mio.png"]

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
    文字ベースのやりとりだと[r]
    そっけないように感じるが……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    やはりこの行為自体が調教チックに働いて[r]
    みおを変えてきているようだ。[p]
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
    [CGSet storage="EVcg/jidoriStill/03.png" layer="1" name="still,onasapoPhoto03" time="1000"]

    [messageON]

    [tb_start_text mode=3 ]
    #
    個人間のやりとりとはいえ、[r]
    画像の送信はすさまじい恐怖と興奮が伴うだろう。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    一歩間違えればネットに自分の写真が[r]
    広まってしまうわけなのだから。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そうと知りながら撮影して送ってきた[r]
    このたくし上げ画像――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    震えが来るほどに股間にひびく。[p]
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
    [syaseiFlashForStill storage="EVcg/jidoriStill/03b.png" layer="1" name="still,onasapoPhoto03b" count="false"]
    [free layer="1"  name="onasapoPhoto03" ]
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
    ……次に自撮りを頼むことがあれば、[r]
    それが仕上げになるだろう。[p]
    [_tb_end_text]

    ;イベント終了。テキストウィンドウを消去し、暗転＆暗転解除で背景を元のお仕事場に戻し、午後のお仕事パートに入る
    [messageInvisible]
    [maskStart]
    [bgChange storage="&f.beforeBG"]
    [setTime hours="13" minutes="0"]
    [maskEnd]

    [eval exp="f.onasapo.photo.flag = 3" cond="f.onasapo.photo.flag < 3" ]
    [eval exp="f.onasapo.photo.total++" ]
    [eval exp="f.onasapo.photo.lastDay = f.day" ]

[endmacro]