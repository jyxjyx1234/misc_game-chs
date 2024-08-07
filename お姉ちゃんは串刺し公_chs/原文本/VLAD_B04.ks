;VLAD_B04
*TOP

;mm bgmどうしようかなぁ

;背景：廊下/昼
[bg storage="BG05_a"][trans_c cross time=500]

*594|
[fc]
――ラキアが出かけたら、あたしの部屋に来なさい。[pcms]

*595|
[fc]
それが朝食の後、姉貴が告げてきた指示の全文だった。[r]
そして指示されるまま、オレは部屋の前に立っている。[pcms]

*596|
[fc]
なにせオレは姉貴に弱味を握られている。[r]
ここで抵抗するのはなんの意味もなかったからだ。[pcms]

;ＳＥ：木製ドアをノックする音
[se buf=0 storage="seA035"]

*597|
[fc]
それでも少し迷いながら手を伸ばすと、[r]
躊躇いがちにドアをノックする。[pcms]

*598|
[fc]
すると間髪を入れずに反応が返ってきた。[pcms]

;[std_c ce up si p1a f04][trans_c cross time=150]

*599|
[fc]
[vo_c s="Clair_0092" v=50]
[ns]クレア[nse]
「ああ、早かったわね。もうラキアは出かけた？」[pcms]

*600|
[fc]
[ns]史人[nse]
「あ……ああ。なんだか悔しそうだったけど、[r]
　今さっき学校に行ったよ」[pcms]

*601|
[fc]
オレがそう答えると、ギシリと椅子が軋む音が聞こえた。[r]
どうやらパソコンを弄っていたところらしい。[pcms]

;[std_c ce up si p1a f04][trans_c cross time=150]

*602|
[fc]
[vo_c s="Clair_0093" v=50]
[ns]クレア[nse]
「ふふふっ、あの子の出番はまた今度だもの。[r]
　とりあえずはアンタさえいてくれればいいわ」[pcms]

*603|
[fc]
なにやら意味深なことを口走ると、[r]
姉貴は『早く入ってきなさい』と続けた。[pcms]

*604|
[fc]
[ns]史人[nse]
「わ、わかったよ。それじゃ……失礼します」[pcms]

;ＳＥ：ドア開閉
[se buf=0 storage="seA012"]

;背景：クレアの部屋/昼
[bg storage="BG01_a"][trans_c blind_lr]

[bgm storage="BGM05"]

*605|
[fc]
姉貴の部屋に足を踏み入れると、それだけで嫌な予感が倍増した。[pcms]

*606|
[fc]
それほど頻繁というわけではないにしても、[r]
ゲームの付き合いやらでこの部屋に入ることは多い。[pcms]

*607|
[fc]
だから見慣れた光景と言えばそうなんだが、[r]
なんとも形容できない妖しい空気を感じてしまう。[pcms]

[std_c ce lo si p1a f04][trans_c cross time=150]

*608|
[fc]
[vo_c s="Clair_0094"]
[ns]クレア[nse]
「ラキアが出かけたのなら問題ないと思うけど、[r]
　一応、ちゃんとドアを閉めておいてくれる？」[pcms]

*609|
[fc]
[ns]史人[nse]
「う……うん」[pcms]

;ＳＥ：ドアを閉める音
[se buf=0 storage="seA013"]

*610|
[fc]
指示されるままにドアを閉じると、[r]
全身にネットリと匂いが絡みついてくる気がする。[pcms]

*611|
[fc]
それは図書室の匂いと冷たいコンクリートの匂い、[r]
そして姉貴の甘い香りが混じり合ったものだ。[pcms]

[std_c ce lo si p1a f04][trans_c cross time=150]

*612|
[fc]
[vo_c s="Clair_0095"]
[ns]クレア[nse]
「……ほら、適当に座りなさいよ」[pcms]

[chara_int_ce][trans_c cross time=150]

*613|
[fc]
姉貴に促されて、オレはベッドに腰掛ける。[r]
本当は別のところが良かったが、いい場所がなかった。[pcms]

*614|
[fc]
[ns]史人[nse]
「それでさ、オレに話ってなんだよ？」[pcms]

[std_c ce lo si p1a f01][trans_c cross time=150]

*615|
[fc]
[vo_c s="Clair_0096"]
[ns]クレア[nse]
「ふふふ、せっかちね。それにアンタもわかってるんでしょう？[r]
　あたしに呼び出された理由」[pcms]

*616|
[fc]
[ns]史人[nse]
「今朝も言ってた話だろ……。[r]
　姉貴に協力するって……」[pcms]

*617|
[fc]
脅されていることに苛つきを感じてしまい、[r]
オレは吐き捨てるようにそう返した。[pcms]

[std_c ce lo si p1a f04][trans_c cross time=150]

*618|
[fc]
[vo_c s="Clair_0097"]
[ns]クレア[nse]
「不満そうね。でもまあ、それもわかるわ。[r]
　だけどあたしには必要なのよ。手足になってくれる下僕がね」[pcms]

*619|
[fc]
[ns]史人[nse]
「下僕って……また中二病かよ」[pcms]

[std_c ce lo si p1b f02][trans_c cross time=150]

*620|
[fc]
[vo_c s="Clair_0098"]
[ns]クレア[nse]
「あははっ、違うわね。これは中二病なんかじゃない。[r]
　このあたしが本来得ていて当然のものよ」[pcms]

[std_c ce lo si p1a f01][trans_c cross time=150]

*621|
[fc]
姉貴がなにを言っているのかよくわからないが、[r]
反論したら抵抗する余地がないのはよくわかった。[pcms]

*622|
[fc]
[ns]史人[nse]
「そろそろ本題に入ってくれよ。[r]
　協力するって言っても、なにをすればいいんだ？」[pcms]

*623|
[fc]
まだなにか言いそうだったので、オレは割り込みをかける。[r]
嫌なことはさっさと済ませたいからだ。[pcms]

[std_c ce lo si p1a f05][trans_c cross time=150]

*624|
[fc]
[vo_c s="Clair_0099"]
[ns]クレア[nse]
「そんなことは決まっているじゃない。[r]
　このあたしが前世の記憶を取り戻す手伝いよ」[pcms]

*625|
[fc]
[ns]史人[nse]
「それってチラチラ言ってたような気がするけどさ、[r]
　具体的にはなにをすればいいんだって」[pcms]

*626|
[fc]
姉貴はヴラドなんとかの転生だか転生体で、[r]
その記憶を取り戻そうとしているという設定らしい。[pcms]

*627|
[fc]
それはこれまでの話でボンヤリと理解していたが、[r]
問題はその手段と、オレが手伝う内容がわからない。[pcms]

[std_c ce lo si p1a f04][trans_c cross time=150]

*628|
[fc]
[vo_c s="Clair_0100"]
[ns]クレア[nse]
「その前に……アンタ、あたしのことを疑ってるでしょ？」[pcms]

*629|
[fc]
[ns]史人[nse]
「えっと、うーん……正直に言えば、そうだけど」[pcms]

*630|
[fc]
むしろあんな話を信用している方が怖いし、[r]
オレはそれほどエキセントリックでもファンタジックでもない。[pcms]

[std_c ce lo si p1a f06][trans_c cross time=150]

*631|
[fc]
[vo_c s="Clair_0101"]
[ns]クレア[nse]
「アンタって正直ね。でもまあ、疑うのもわかるわ。[r]
　それにこっちも明確な証拠を出せるわけでもない」[pcms]

*632|
[fc]
姉貴は意外にあっさりした反応を見せると、[r]
椅子の上で太めに足を組んでみせる。[pcms]

*633|
[fc]
[vo_c s="Clair_0102"]
[ns]クレア[nse]
「あたしが毎日『夢』を見てると言っても、[r]
　アンタにそれを見せてあげられるわけでもないしね」[pcms]

*634|
[fc]
[ns]史人[nse]
「……夢？」[pcms]

*635|
[fc]
その言葉にオレは少なからずドキリとしてしまった。[pcms]

*636|
[fc]
それは姉さんとビーチでイチャコラしたヤツではなく、[r]
その前になにか別の夢を見たような気がしたからだ。[pcms]

[std_c ce lo si p1a f05][trans_c cross time=150]

*637|
[fc]
[vo_c s="Clair_0103"]
[ns]クレア[nse]
「そうよ、夢。あたしの魂に刻まれた過去の残滓が、[r]
　夢という形態を取って蘇っているのだと思うけど」[pcms]

*638|
[fc]
[ns]史人[nse]
「それって、いつもマンガとか読んでるからじゃ……？」[pcms]

*639|
[fc]
姉貴のマンガコレクションはその手のネタも数多い。[r]
だから夢に出てくるんじゃないかと、指摘してみる。[pcms]

[std_c ce lo si p2a f07][trans_c cross time=150]

*640|
[fc]
[vo_c s="Clair_0104"]
[ns]クレア[nse]
「それも一理あるわ。だけどあれは夢とは思えないほど現実的で、[r]
　この手からこぼれる血の感触や匂いすら感じるのよ」[pcms]

*641|
[fc]
姉貴はウットリした顔で手のひらを見つめると、[r]
鼻息を荒くしながら言葉を続けてくる。[pcms]

[std_c ce lo si p2a f04][trans_c cross time=150]

*642|
[fc]
[vo_c s="Clair_0105"]
[ns]クレア[nse]
「あれはただの夢じゃない。蘇りつつある記憶なのよ。[r]
　だからアンタには記憶を蘇らせる手伝いをして欲しいの」[pcms]

*643|
[fc]
[ns]史人[nse]
「何度も聞くけどさ、手伝うってなにをすればいいんだ？」[pcms]

*644|
[fc]
ヴラドなんとかの伝記を読み聞かせすればいいのか？[r]
それとも一緒にルーマニアに行けばいいのか？[pcms]

*645|
[fc]
そんなことを考えていると、姉貴が頬を赤らめながら囁いた。[pcms]

[std_c ce lo si p2a f01][trans_c cross time=150]
[bgm storage="BGM05"]
*646|
[fc]
[vo_c s="Clair_0106"]
[ns]クレア[nse]
「串刺し公の魂は、あたしという魂の檻に収められている。[r]
　だったらその魂を解放してあげればいいのよ」[pcms]

*647|
[fc]
[ns]史人[nse]
「は……？」[pcms]

[std_c ce lo si p1a f04][trans_c cross time=150]

*648|
[fc]
[vo_c s="Clair_0107"]
[ns]クレア[nse]
「もうっ、察しが悪い愚弟ね。[r]
　魂を揺さぶるような体験をさせればいいってことよ」[pcms]

*649|
[fc]
そんなの察しがつくわけないじゃないか……。[r]
というか、『魂を揺さぶる経験』って言うのはなんなんだ？[pcms]

[std_c ce lo si p1a f03][trans_c cross time=150]

*650|
[fc]
[vo_c s="Clair_0108"]
[ns]クレア[nse]
「なにをポカンとしてるのよ。[r]
　はあ……アンタって予想してたよりもバカね」[pcms]

*651|
[fc]
姉貴は呆れた顔で肩を竦めると、じっとオレを見つめてくる。[pcms]

[std_c ce lo si p1a f01][trans_c cross time=150]

*652|
[fc]
[vo_c s="Clair_0109"]
[ns]クレア[nse]
「魂を揺さぶるって言うのは、例えば人間を串刺しにしたり、[r]
　処女から絞り出した鮮血の湯舟に浸かることよ」[pcms]

*653|
[fc]
[ns]史人[nse]
「……………………」[pcms]

*654|
[fc]
なにを言ってるんだ、この中二病姉貴は。[r]
とても正気で言ってるようには思えないぞ。[pcms]

[std_c ce lo si p1a f03][trans_c cross time=150]

*655|
[fc]
[vo_c s="Clair_0110"]
[ns]クレア[nse]
「そ、そんなことできるはずないのはわかってるわよ。[r]
　現世でそんなことしたら、犯罪行為になってしまうもの」[pcms]

*656|
[fc]
[ns]史人[nse]
「よかったよ、そう言ってくれて」[pcms]

[std_c ce lo si p1a f01][trans_c cross time=150]

*657|
[fc]
[vo_c s="Clair_0111"]
[ns]クレア[nse]
「ふ、ふんっ！　それで色々考えたわけよ。[r]
　それで思いついたの。魂を揺さぶるアイデアをね！」[pcms]

[std_c ce up si p1a f02][trans_c cross time=150]

*658|
[fc]
姉貴は椅子を蹴って立ち上がると、オレの元に歩み寄ってくる。[r]
そして前屈みになりながら、じっと目を覗き込んできた。[pcms]

[std_c ce up si p2a f07][trans_c cross time=150]

*659|
[fc]
[vo_c s="Clair_0112"]
[ns]クレア[nse]
「魂といえども、この肉体に縛られているもの。[r]
　つまりこの肉体が高揚すれば魂にも響くというわけよ」[pcms]

*660|
[fc]
[ns]史人[nse]
「それは……つまり？」[pcms]

;mm うーん
;[fadeoutbgm time=500]

[std_c ce up si p2a f03 ho][trans_c cross time=150]

*661|
[fc]
[vo_c s="Clair_0113"]
[ns]クレア[nse]
「そっ、それは……アレよ！　アレ！」[pcms]

*662|
[fc]
[ns]史人[nse]
「アレって言われても……」[pcms]

[std_c ce up si p2a f04 ho][trans_c cross time=150]

*663|
[fc]
なんだかわけがわからないが、姉貴は顔を真っ赤にしている。[r]
どうも照れているように見えなくもないが……。[pcms]

*664|
[fc]
すると姉貴は『察しが悪いわね！』ともう一度繰り返し、[r]
意を決したように言葉を続けた。[pcms]



;mm うーん
;[bgm storage="BGM07"]

[std_c ce up si p1b f03 ho][trans_c cross time=150]

*665|
[fc]
[vo_c s="Clair_0114"]
[ns]クレア[nse]
「せ……っ、性的行為をすればいいのよ！[r]
　きっと魂も激しく揺さぶれるに違いないわ！！」[pcms]


*666|
[fc]
[ns]史人[nse]
「え…………」[pcms]

[std_c ce up si p1a f04 ho][trans_c cross time=150]

*667|
[fc]
一瞬姉貴がなにを言ったのかわからなかった。[r]
性的行為？　まさか、それって……。[pcms]

*668|
[fc]
[ns]史人[nse]
「ま、まさか……その、エ、エロいこと……？」[pcms]

[std_c ce up si p2a f04 ho][trans_c cross time=150]

*669|
[fc]
[vo_c s="Clair_0115"]
[ns]クレア[nse]
「そ……そうよ。多分、それが手っ取り早いと思うの」[pcms]

*670|
[fc]
姉貴はもう首筋まで真っ赤になっていて、[r]
もう一押しでドロドロに溶け落ちてしまいそうだ。[pcms]

[std_c ce up si p1a f04 ho][trans_c cross time=150]

*671|
[fc]
[vo_c s="Clair_0116"]
[ns]クレア[nse]
「アンタにはそれを手伝ってもらうわ。[r]
　それで……その、特別に選ばせてあげる」[pcms]

*672|
[fc]
[ns]史人[nse]
「え、選ぶって……」[pcms]

[fadeoutbgm time=500]

[std_c ce up si p1b f03 ho][trans_c cross time=150]

*673|
[fc]
[vo_c s="Clair_0117"]
[ns]クレア[nse]
「いっ、いいから選びなさい！[r]
　『一緒にオナニー』するか『パイズリ』するか！！」[pcms]

*674|
[fc]
な……なんだ、その選択肢は！！[r]
って言うか、本気でやるのか……そんなこと！？[pcms]

*675|
[fc]
オレが返事に窮していると、[r]
姉貴が目をギラギラさせながら顔を近づけてくる。[pcms]


;mm うーん
[bgm storage="BGM07"]

[std_c ce up si p1b f08 ho][trans_c cross time=150]

*676|
[fc]
[vo_c s="Clair_0118"]
[ns]クレア[nse]
「さあ、答えよ！　[ruby text="と"][ch text="疾"]くと答えよ！！」[pcms]

*677|
[fc]
[ns]史人[nse]
「そんなこと言われても……」[pcms]

*678|
[fc]
しかしどっちも選ばないというわけにはいかない。[r]
だとしたら、どっちを選べばいいんだろう……？[pcms]

;------------------------------------------------------------
;選択肢
;『オナニーが無難そうだ』→VLAD_B05
;『えっ、パイズリ？』→VLAD_B06

*SEL01|オナニー無難そうだ／えっ、パイズリ？
[fc]
[pcms_sel]

[eval exp="f.seltext02 = 'オナニーが無難そうだ'"]
[eval exp="f.seltext04 = 'えっ、パイズリ？'"]

[if exp="tf.sys_sub == 0 || tf.選択肢ログ表示してね == 1"]
	;選択肢内容をバックログに表記。改行コード必須。
	[sel_hisout txt="&f.seltext02"][hr]
	[sel_hisout txt="&f.seltext04"][hr]
[endif]
[hr]

[履歴出力復帰]

;選択肢ベース
[selbase]
;文字の左マージン
;[eval exp="sf.seltext2_x = 250"]
;[eval exp="sf.seltext4_x = 250"]
;[eval exp="sf.seltext6_x = 250"]

[sel02 target=*SEL01_1]
[sel04 target=*SEL01_2]
[s]

;選択肢後の処理しときたいからここに飛ばしてから実際のjump先へ
;-------------------------------------------------------------------------------
*SEL01_1|&f.seltext02
[sel_hisout txt="&f.seltext02"][hr][fc]
;mm ↓fcの中で処理されてる気がする
;いらない？[selbt_clear]
[jump storage="VLAD_B05.ks" target=*TOP]
;-------------------------------------------------------------------------------
*SEL01_2|&f.seltext04
[sel_hisout txt="&f.seltext04"][hr][fc]
;mm ↓fcの中で処理されてる気がする
;いらない？[selbt_clear]
[jump storage="VLAD_B06.ks" target=*TOP]
;-------------------------------------------------------------------------------

;mm 今更だけど[selbt_clear]は必要なんだよな？

