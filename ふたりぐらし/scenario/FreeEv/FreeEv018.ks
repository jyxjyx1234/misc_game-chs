
;＜朝寝坊・休日＞
;「起床時／休日のみ」
;いつものルーチンでの「…………」「……」「朝か、起きよう」直後に割り込みで発生

;これは_re verは存在せず、２回めの発生でもおなじこの内容を再生。



;プレイ時間担保のために、せっかくの休日をあえてロスさせる意図のいじわるイベントのため、
;発生確率はやや低めにしたい。

;休日はリクエストの判定などもあるので、兼ね合いに注意

;----------------------------------------------------
[eval exp="f.cloth = f.plainClothes" ]

[tb_start_text mode=3 ]
#
――と思ったけど。[p]
[_tb_end_text]

;演出上、みお台詞は立ち絵なしボイスのみのものが数度あり。

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
すぅ、すぅ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおも気持ちよさそうに眠っている。[r]
今日は休日だし、二度寝してしまおうか。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……むにゃ。[p]
[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[setTime hours=10 minutes=30]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_show_message_window  ]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……せ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
せん……せ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bgChange time="1000"  method="crossfade"  storage="room_m_o.png"  ]
[tb_show_message_window  ]

[tb_start_text mode=3 ]
#
む……[p]
[_tb_end_text]

[mioHyoujou hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0019.mp3"  ]
[tb_start_text mode=4 ]
#みお
おはようございます、先生[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おはよう"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
気持ちよさそうに眠ってたので[r]
起こすのもどうかと思ったんですけど[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0190.mp3"  ]
[tb_start_text mode=3 ]
#みお
もう10時半になってたので、さすがに[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そんなに寝ていたのか。[r]
どうりで体力がみなぎってるわけだ。[p]
[_tb_end_text]


[calcHP HP=50 minHP=1]

[tb_start_text mode=3 ]
#
とはいえ、休日でもうこの時間じゃあ[r]
さすがに今から出かけるのもおっくうだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
今日はこのままお家でゆっくり過ごしましょうか[p]
[_tb_end_text]

[return]
;自由行動パートに合流



