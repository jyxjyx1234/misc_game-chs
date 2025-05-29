[macro name="onasapoPhone01" ]
    [messageON]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0007_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生がご自分でするのを[r]
    応援する……ってことですね？[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0008_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わかりました！　ではどうぞ！[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    チアのようなことをはじめそうだった。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    まず、ひと気のないトイレかどこかに[r]
    お互い移動して掛け直そうと頼みこむ。[p]
    [_tb_end_text]

    ;☆現在BGMを記憶、BGMフェードアウト（回想時は働かない＝もとからBGM無しなので）
    [eval exp="f.beforeBGM = f.nowBGM" cond="!f.flag_replay" ]
    [fadeoutbgm  time="3000"  ]
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
    ということで再コールだ。[p]
    [_tb_end_text]

    [playse  volume="100"  sprite_time="0-1000"  buf="1"  storage="se/denwa1.mp3"  ]
    ;ワンコールめで終わるように時間調整
    
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0009_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、先生[r]
    こちらも移動完了です[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0010_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、勝手がわかってないみたいで[r]
    失礼しました……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0011_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっと、どうすればいいか[r]
    教えてもらえます？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ここまでピンと来てない相手だと[r]
    どう説明したらいいだろうか。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    一応ムラついてはいるから[r]
    勃起はしているが……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0012_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    っ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0013_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    今の音って……[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="勃起したちんちんを出した音だよ"  _clickable_img=""  target="*onasapoPhone01_1"  ]
    [s]

    *onasapoPhone01_1
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0014_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おち……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0015_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そう、ですよね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0016_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    電話で助けを求めてくるぐらい[r]
    苦しくなっちゃってるんですよね、先生[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    おっ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0017_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    いつもはそうなった時、[r]
    どうされてたんですか？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0018_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしがおうちにお邪魔したから[r]
    きっと習慣が崩れちゃったんですよね[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    いい感じになってきたか……？[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="カタくなったのをシコシコするんだ"  _clickable_img=""  target="*onasapoPhone01_2"  ]
    [glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="エロい妄想をしてヘコヘコするんだ"  _clickable_img=""  target="*onasapoPhone01_3"  ]
    [s]

    ;----------------------------------------
    ;選択肢分岐：カタくなったのをシコシコするんだ
    *onasapoPhone01_2

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0019_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    シコシコ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0020_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    その、おちんちんを握って……？[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="onasapoPhone01_4" ]
    ;----------------------------------------
    ;選択肢分岐：エロい妄想をしてヘコヘコするんだ
    *onasapoPhone01_3
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0021_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ヘコヘコ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0022_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    女の人の身体とかを想像するんですか？[p]
    [_tb_end_text]

    ;　次の共通部へ
    [jump target="onasapoPhone01_4" ]
    ;----------------------------------------
    ;共通部
    *onasapoPhone01_4
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0023_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ほぁぁ……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0024_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今もその最中なんですよね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0025_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の息、荒くなって来てますよ[r]
    きもち、いいですか……？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ああ、思ったよりもだいぶ良い……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0026_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そうなんだ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    自慰の解説をされているような状況と、[r]
    通話ノイズ交じりのみおの声が変にひびく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0027_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    どうです？[r]
    しゃせい、しそうですか？[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0028_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    射精しそうな時って[r]
    おちんちんどんな感じです？[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    うまく説明できないが、[r]
    問われるままにぼんやりと答えていく。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0029_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……ええと、つまり[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0030_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんさんが赤黒くもっとふくらんで[r]
    おしっこ出そうなのがずっと切ない感じで[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0031_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    今みたいに噛み殺しても息が荒くなって[r]
    はぁはぁワンちゃんみたいな喘ぎになって……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0032_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……きもちよさそう[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0033_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんあるのが[r]
    羨ましく思っちゃいそうなぐらいです[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    射精感はすでに高まっているが、[r]
    発射のきっかけが掴めない。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    右手はガマン汁まみれになっている。[r]
    いくらでもしごき続けていられそうだった。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0034_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、お昼休みそろそろ終わっちゃいます[r]
    先生の方も急がないとですよね[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぬっ、しまった……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0035_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、はやく射精しないと[p]
    [_tb_end_text]

    なっ――[tb_start_text mode=3 ]
    #
    [p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0036_r.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    イきましょう！　イって、先生！[l]
    [_tb_end_text]

    [glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="イ――……きます……っ！"  _clickable_img=""  target="*onasapoPhone01_5"  ]
    [s]

    *onasapoPhone01_5
    ;射精演出（フラッシュ）
    ;先生射精により、ムラムラ状態解除
    [syaseiFlash]

    [eval exp="f.ballCount = 0" ]
    [iconUpdate]

    [tb_start_text mode=3 ]
    #
    ぐっ……う、っくぁ……うぅぅ……！！[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0037_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――……ほぁ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0038_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    イケ……たんですよね？[r]
    すごくドキドキするようなお声でした[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0039_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    えっと……あの、それじゃあ[r]
    時間も無いので切りますね[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m009_scene5_0040_r.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    お手伝いできてよかったです[r]
    それでは……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ぶつりと通話が切れた後も、[r]
    しばし便座の上で放心していた。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……だいぶ、いやかなり良かったな。[r]
    また頼んでみようかな。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    …………[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ……[p]
    [_tb_end_text]


    ;みお性経験加算
    ;みおから迫って+1
    [eval exp="f.malerape++" ]
    [eval exp="f.onasapo.phone.total++" ]
    [eval exp="f.onasapo.phone.lastDay = f.day" ]
    [setreplay name="onasapo" storage="replay_select.ks" target="onasapoPhone_select"]
    ;みお欲情+20
    [calcMuramura muramura="20"]
    ;イベント終了。テキストウィンドウを消去し、暗転＆暗転解除で背景を元のお仕事場に戻し、午後のお仕事パートに入る
    [messageInvisible]
    [maskStart]
    [bgChange storage="&f.beforeBG"]
    [maskEnd]

    ;☆記憶したBGMフェード再生（回想時は働かない）　※不要だったのでコメントアウト
    ;[fadeinbgm  time="3000"  storage="&f.beforeBGM" cond="!f.flag_replay"]
[endmacro]

