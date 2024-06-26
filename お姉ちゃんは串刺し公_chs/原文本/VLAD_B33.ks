;VLAD_B33
*TOP
;暗転からゆっくり画面表示
;ＳＥ：激しい風/ループ
[se buf=1 storage="seE018" v=80 loop fadein time=1000]

[bgm storage="BGM01_2"]

;イベント：赤い空/串刺しあり
;mm ファイル名あってるのかな？
[evcg storage="vlad_trial_a"][trans_c blood1 time=3000]
[wait_c time=500]

*3006|
[fc]
私は赤い空を見上げていた。[r]
今まで何度となく見上げた、血に染まったように空だ。[pcms]

*3007|
[fc]
草木一本生えていない荒涼とした大地を[r]
砂埃を巻き上げながら冷たい風が吹き抜けていく。[pcms]

*3008|
[fc]
いや……それは間違いだ。[r]
草木の代わりに立ち並んでいるモノがあるじゃないか。[pcms]

*3009|
[fc]
ぽっかり開いた眼窩に例えようもない苦痛を込めた、[r]
私と共に戦場を駆け抜けたかつての配下たち。[pcms]

*3010|
[fc]
彼らは大地に縫い止められるように槍に貫かれ、[r]
吹きすさぶ風にその四肢を頼りなく揺らしている。[pcms]

*3011|
[fc]
しかし私を恐怖に陥れていた、あの馬の嘶きは聞こえない。[r]
ただ冷たく凍えるような風が吹き渡るだけ。[pcms]

*3012|
[fc]
――あの悪鬼は何処に行った？[pcms]

*3013|
[fc]
誰に語りかけるわけでもなく私は呟くと、[r]
無意識のうちに首筋に手を当てていた。[pcms]

*3014|
[fc]
――あの悪鬼はなぜこの首を落とさなかった？[pcms]

*3015|
[fc]
それは今も首筋を撫でる風よりも冷たい感触だった。[pcms]

*3016|
[fc]
私に命じられ、その首を落とされた数多の者たちも、[r]
この感覚の中で無窮の闇に落ちていったのだろうか。[pcms]

*3017|
[fc]
しかし私は彼らが待ち受ける闇に落ちることなく、[r]
未だこの広漠とした大地に立っていた。[pcms]

*3018|
[fc]
――ああ、これでこの悪夢も終わる。[pcms]

*3019|
[fc]
悪鬼の最期をこの目で見ることは敵わなかったが、[r]
今は一刻も早く、この呪われた土地を離れたかった。[pcms]

*3020|
[fc]
この溢れ出す鮮血が空と大地を埋め尽くした、[r]
この苦悶の表情を貼り付かせた人面樹の森から。[pcms]

*3021|
[fc]
――かつて虜囚だった者に恐怖を味わわされるとはな。[pcms]

*3022|
[fc]
あの異国の兄弟と初めて顔を合わせたのは、[r]
絢爛たる我が宮殿の回廊だったか。[pcms]

*3023|
[fc]
敵愾心に満ちた怒りの眼差しを向ける兄、[r]
そして黄金さえも色褪せてしまうほどの美貌を持った弟。[pcms]

*3024|
[fc]
あの出会いよりどれほどの時が経ったのか。[r]
まさかこの私の前に立ち塞がることになろうとは。[pcms]

*3025|
[fc]
その運命の数奇さに神の悪意すら感じていたが、[r]
私は今も槍ではなく、己の両足で大地に立っている。[pcms]

*3026|
[fc]
――あの悪鬼とは何れ決着をつけることになろう。だが……。[pcms]

*3027|
[fc]
注がれる恨みの視線から逃れるように身を翻すと、[r]
いつの間にか傍らに傅いていた若者に手を伸ばす。[pcms]

*3028|
[fc]
――その時はおまえも力を貸してくれ。[pcms]

*3029|
[fc]
私の言葉に若者は金色の髪を揺らすと、[r]
太陽よりも眩い笑顔を向け…………。[pcms]

;ゆっくり暗転
[ANTEN bl]


;mm 下記の条件分岐をVLAD_B34.ks末端にあったのをここに移植
;条件分岐
;反撃フラグ２以上→VLAD_C01
;反撃フラグ１以下→VLAD_B35
[if exp="f.l_反撃フラグ >= 2"]
	[jump storage="VLAD_C01.ks" target=*TOP]
[endif]


;→VLAD_B34
[jump storage="VLAD_B34.ks" target=*TOP]

