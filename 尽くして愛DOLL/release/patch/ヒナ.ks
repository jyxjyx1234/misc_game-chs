;//雛菊ルート
;//４日目
*start

*Epsode46|雛菊との日常
[eval exp="f.B=0"]
[eval exp="f.A=0"]
[stbgm time="500"]
[UniBK pattern="tokei3"]
[UniSet bg="主人公の部屋昼" pattern="tokei3"]
[plbgm bg="日常1" time=500]
[label]

～翌日～
[cpg]

[OnName name="tokiya"]
[fth]「アゲハ、出かけよう」
[cpg1]

;hina_p1_b
;ageha_p1_a
[ActorRit chara="hina_p1_b" layer="0"]
[ActorLft chara="ageha_p1_a" layer="1"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina234"]
[ftb]「どこに行くの」
[cpg1]

[OnName name="tokiya"]
[fth]「どこって……その辺」
[cpg1]

;hina_p2_b
[ActorRit chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina235"]
[ftb]「適当ね。怪しい…」
[cpg1]

[OnName name="tokiya"]
[fth]「そう思うなら一緒に来ればいいだろ」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina236"]
[ftb]「え？　行って…いいの？」
[cpg1]

[OnName name="tokiya"]
[fth]「何で駄目だと思うんだ」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina237"]
[ftb]「えっと…まぁ、いいじゃん。そんな細かい事」
[cpg1]

[OnName name="tokiya"]
[fth]「誤魔化したな」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha604"]
[fta]「……いく」
[cpg1]

[OnName name="tokiya"]
[fth]「そうだな、とりあえず出かけよう」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//街
*Epsode46|雛菊との日常

[LayerFadeout layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[plbgm bg="日常1" time=500]
[UniBK pattern="migi"]
[UniSet bg="街昼" pattern="migi"]
[label]

;hina_p2_a
;ageha_p1_a
[ActorRit chara="hina_p2_a" layer="0"]
[ActorLft chara="ageha_p1_a" layer="1"]

[OnName name="tokiya"]
[fth]「何するかなぁ」
[cpg1]

;hina_p1_b
[OnName name="hinagiku"]
[pv b="0" s="Vhina238"]
[ftb]「考えてなかったの？　無計画すぎ～」
[cpg1]

[OnName name="tokiya"]
[fth]「ちょっとブラブラするか」
[cpg1]

本当はいろいろ行きたい所とかあったけど、アゲハと。遊園地とか…喜んだかなぁ？
[cpg]

ちらりとアゲハの方を盗み見る。
[cpg]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="1"]

[OnName name="ageha"]
[pv b="0" s="Vageha605"]
[fta]「……なに？」
[cpg1]

[OnName name="tokiya"]
[fth]「いや、何でもないけど」
[cpg1]

;hina_p2_b
[ActorRit chara="hina_p2_b" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina239"]
[ftb]「…むぅ～」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////////////////////

それから俺達は当てもなく、本当にブラブラと街を彷徨い歩き……。
[cpg]

[OnName name="tokiya"]
[fth]「これからどうしよう」
[cpg1]

;hina_p1_b
;ageha_p2_a
[ActorRit chara="hina_p1_b" layer="0"]
[ActorLft chara="ageha_p2_a" layer="1"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina240"]
[ftb]「私に聞かないでよ」
[cpg1]

早々に行き詰っていた。ま、無計画な行動だから仕方ないんだろうが…。
[cpg]

[OnName name="tokiya"]
[fth]「遊園地、か…」
[cpg1]

;hina_p1_h
[ActorRit chara="hina_p1_h" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina241"]
[ftb]「え？　遊園地？」
[cpg1]

知らぬうちに口走っていた。
[cpg]

;hina_p1_c
[ActorRit chara="hina_p1_c" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina242"]
[ftb]「行きたい、行きたい」
[cpg1]

[OnName name="tokiya"]
[fth]「却下だ」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha606"]
[fta]「…そこは、なに？」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina243"]
[ftb]「えっと…皆で楽しく遊ぶ所」
[cpg1]

;ageha_p1_b
[ActorLft chara="ageha_p1_b" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha607"]
[fta]「……ほぇ」
[cpg1]

アゲハがものすごく興味ありそうな顔をしてる。くそ、やっぱ行っとけばよかった。
[cpg]

;ageha_p1_a
[ActorLft chara="ageha_p1_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha608"]
[fta]「…いきたい」
[cpg1]

[OnName name="tokiya"]
[fth]「今度な、今日はもう時間ないから」
[cpg1]

;hina_p2_c
[ActorRit chara="hina_p2_c" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina244"]
[ftb]「大丈夫、行ける行ける」
[cpg1]

[OnName name="tokiya"]
[fth]「無理」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha609"]
[fta]「…じゃあ、またこんど」
[cpg1]

[OnName name="tokiya"]
[fth]「ああ、今度な。約束」
[cpg1]

はぁ……アゲハが聞き分けがいいドールで助かった。誰かさんとは大違いだ。
[cpg]

;ageha_p1_b
;hina_p2_e
[ActorRit chara="hina_p2_e" layer="0"]
[ActorLft chara="ageha_p1_b" layer="1"]
[OnName name="tokiya"]
[fth]「代わりと言っちゃなんだが…」
[cpg1]

;/////////////////////////////////////////////////////////////////////////////////////////////////////
;//公園
*Epsode47|遊園地のかわり・・・？

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[UniBK pattern="tokei1"]
[UniSet bg="公園昼" pattern="tokei1"]
[label]


;hina_p2_b
;ageha_p1_a
[ActorRit chara="hina_p2_b" layer="0"]
[ActorLft chara="ageha_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina245"]
[ftb]「ホント、代わりにとは言いがたい所ね」
[cpg1]

[OnName name="tokiya"]
[fth]「悪かったな」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha610"]
[fta]「…わたし、きにいった。うれしい」
[cpg1]

あぁ…アゲハはいい子だな。本当に誰かとは……。
[cpg]

;hina_p1_b
[ActorRit chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina246"]
[ftb]「なによ」
[cpg1]

[OnName name="tokiya"]
[fth]「べつに～」
[cpg1]

;/////////////////////////////////////////////////////////////////////////////////////////////////////
[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[AlphaBK]
[UniSet bg="公園昼" pattern="migi"]
[label]

アゲハは本当にここを気に入ったらしく、放っておいても一人で遊んでいた。
[cpg]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina247"]
[ftb]「……暇」
[cpg1]

[OnName name="tokiya"]
[fth]「お前も遊んでこい」
[cpg1]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina248"]
[ftb]「やーよ、つまんないし」
[cpg1]

[OnName name="tokiya"]
[fth]「ま、確かにこのままは時間の無駄だな」
[cpg1]

;/////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode48|俺、勝者。お前、敗者。

*EV09

[if exp="f.seen==1"]
[stbgm time=500]
[eval exp="f.B=0"]
[AlphaBG bg="公園昼"]
[ReMes]
[ActorCtr chara="hina_p2_b" layer="0"]
[plbgm bg="日常1" time=500]
[endif]

[OnName name="tokiya"]
[fth]「雛菊」
[cpg1]

;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina249"]
[ftb]「ん？」
[cpg1]

[OnName name="tokiya"]
[fth]「じゃーんけーん……」
[cpg1]

[OnName name="tokiya"]
[fth]「ポン（パー）」
[cpg1]

;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina250"]
[ftb]「…ポン（グー）」
[cpg1]

[OnName name="tokiya"]
[fth]「勝った」
[cpg1]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina251"]
[ftb]「…で？」
[cpg1]

[OnName name="tokiya"]
[fth]「勝者と敗者」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina252"]
[ftb]「…で？」
[cpg1]

[OnName name="tokiya"]
[fth]「俺、勝者、願い、言う。お前、敗者、願い、かなえる」
[cpg1]

うんうん、これがドールとマスターのあるべき姿だよな。
[cpg]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina253"]
[ftb]「何で片言なの……」
[cpg1]

[OnName name="tokiya"]
[fth]「…というわけで」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina254"]
[ftb]「何する気？」
[cpg1]

言われて、俺は雛菊を上から下まで見る。
[cpg]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina255"]
[ftb]「…変態」
[cpg1]

はぁ、とため息をつく雛菊。呆れているみたいだが、そんなの関係ない。
[cpg]

[OnName name="tokiya"]
[fth]「ここじゃ、あれだし。向こう行こう」
[cpg1]

;hina_p2_e
[ActorCtr chara="hina_p2_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina256"]
[ftb]「ちょっと～」
[cpg1]

;//////////////////////////////////////////////////////////////////////////////////////////////////////////
;//パイずり
[LayerFadeOut layer="0"]
[stbgm time="500"]
[UniSet bg="hblkout" pattern="tokei1"]
[label]

[OnName name="tokiya"]
[fth]「……じゃ、お願いします」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina257"]
[ftb]「はぁ…分かったわよ」
[cpg1]

屹立した肉棒を差し出して、雛菊に奉仕してもらう。
しぶしぶ了承してくれたみたいだ。
[cpg]

[AlphaBK]
[VisibleMes]
[plbgm bg="Hシーン" time=500]
[UniEV2 bg="ev_21" pattern="nami"]
[eval exp="sf.ev_21=0"]
[eval exp="sf.ev_21=1"]
[label]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina258"]
[ftb]「あっ、んっ…はふぅ、んっ…しょ」
[cpg1]

ぷにぷにの胸で挟んでしごいてくれる。柔らかくてとても気持ちがいい。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina259"]
[ftb]「んっ…ひゃ、あう…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「うっ、いい……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina260"]
[ftb]「そ、そう？　私の胸気持ちいい？」
[cpg1]

[OnName2 name="tokiya"]
[fth]「ああ…最高に」
[cpg1]

大きな胸ですっぽりと肉棒が隠れてしまっていた。
[cpg]

柔らかく弾力のある胸に包まれて、雛菊が動くとすりすりと肉棒に擦れている。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina261"]
[ftb]「んはぁ……ぁ…気持ちいい？」
[cpg1]

これが作り物の胸なんてとても思えないんだよなぁ･･･
[cpg]

そんな感触にとろけそうになってしまう。
[cpg]

上下に動くのがどんどんスムーズになってくる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina262"]
[ftb]「は…ぁ、ん…ぁ…んふぅ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「舌も使ってくれないか？」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina263"]
[ftb]「んっ…ふ、わかった…」
[cpg1]

―――ぺちゃっ。
[cpg]

[AlphaEV2 bg="ev_21_a"]
[eval exp="sf.ev_21_a=0"]
[eval exp="sf.ev_21_a=1"]
[label]

[OnName2 name="tokiya"]
[fth]「うぅっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina264"]
[ftb]「ちゅぷ、ぴちゃ…んっ、あ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina265"]
[ftb]「んっ、ちゅ…ちゅば…んむ」
[cpg1]

両手でクニクニと挟んでいるペニスを刺激しつつ、舌をのばしてきて亀頭を舐めてきた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina266"]
[ftb]「あっ…あ、あはぁ…んんっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina267"]
[ftb]「れろ、ちゅ…じゅるるっ…ふはぁ…んっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina268"]
[ftb]「ふぁ…あ、ん…ちゅぱ」
[cpg1]

自分の想像を遥かに超える、あまりの刺激の強さに腰が引けてしまう。
[cpg]

これは、反則的なくらいに……いい。
[cpg]

[OnName2 name="tokiya"]
[fth]「うぁ、気持ちいい」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina269"]
[ftb]「ちゅる…んふふ…はむっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina270"]
[ftb]「ほきや…びくびくっへ、しへるよ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「だ、だって…くぅ、仕方ないだろ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina271"]
[ftb]「じゅる、じゅるる…ちゅ、ちゅう」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina272"]
[ftb]「んふっ…ひいよ、きもひよくなって……」
[cpg1]

―――ちゅる、ぺちゃ…ちゅ、ちゅう。
[cpg]

胸を擦りつけて、舌でしごく。
[cpg]

たったこれだけだが、それは入れた時と同じくらいの快感が与えられてくる。
[cpg]

絡みつくような舌が、ぬめった音を立てて愛撫してくる。これが結構曲者だ。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina273"]
[ftb]「む…んふっ…じゅぷ、ちゅぱ、ちゅ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina274"]
[ftb]「ちゅぱ、じゅる…んぅ…ああっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina275"]
[ftb]「んぁ…は、ちゅん、ぺろっ……かぷっ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「くっ！」
[cpg1]

今までは舐めるだけだったが、突然口いっぱいにモノを咥えてきた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina276"]
[ftb]「ん～じゅる、じゅぱ、じゅぶぶっ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「くぅ…それは、く…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina277"]
[ftb]「はむっ…ちゅず、ちぅ…どうひたの、んっ…ほきや？」
[cpg1]

肉棒を咥えながら話しかけてくるが、俺は今それどころじゃない。
[cpg]

このままいくとあと少しで果ててしまいそうな状況なのだ。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina278"]
[ftb]「れろ、ちゅく…じゅる、ちゅぴ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina279"]
[ftb]「ちゅ…んっ、でひゃう？　もうでひゃいほうなの？」
[cpg1]

喋るたびに、熱い吐息がかかって、発する言葉にあわせ舌が動いてさらなる刺激が俺を襲ってくる。
[cpg]

胸で根元をがっちり強く挟まれ、動かされていく。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina280"]
[ftb]「ちゅぷ、んっ…ぴちゅ、あぁ…くふぅ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina281"]
[ftb]「はむ…んん、ちゅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina282"]
[ftb]「んぅ、んむっ…じゅ、じゅぅぅ」
[cpg1]

唾液とか俺の先走り汁とかで肉棒がとろとろになっていた。
[cpg]

ペニスの根元がじんじんと熱くなってきて、それが徐々に上に向かってあがってきた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina283"]
[ftb]「あ、あっ…ふぅ…ちゅう」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina284"]
[ftb]「じゅぅ…じゅるる、あんっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina285"]
[ftb]「ふふっ…じゅっ、ひくひく、んっ…してる」
[cpg1]

[OnName2 name="tokiya"]
[fth]「雛菊、俺……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina286"]
[ftb]「んっ…はむっ、いひよ…だひてっ…」
[cpg1]

舌先で尿道を刺激してから、口に咥えこんでくる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina287"]
[ftb]「じゅる、じゅるうぅぅ！」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina288"]
[ftb]「ぴちゃ、ちゅぱ……んはぁ…んむ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「っう～で、出るっ」
[cpg1]

[Flash2 bg="ev_21_b"]
[eval exp="sf.ev_21_b=0"]
[eval exp="sf.ev_21_b=1"]
[label]

―――――ずびゅう！　びく、びゅくく！
[cpg]

―――――びゅびゅ！　どぴゅー、ぴゅくんっ！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina289"]
[ftb]「んあっ…ふぁっ…や、ぁ…」
[cpg1]

頭から胸にかけて…というか、上半身のほとんどに精液をぶちまけた。
[cpg]

白い絵の具がかかったように汚れて、それがすごくやらしく見える。
[cpg]

肉棒は痙攣して、跳ねまわってからようやく収まった。
[cpg]

[OnName2 name="tokiya"]
[fth]「はぁ…ふぅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina290"]
[ftb]「はぁ、はぁ…んっ…ちゅ」
[cpg1]

どろどろに汚れた雛菊。それに反応して、出したばっかりなのに……また膨らんできた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina291"]
[ftb]「もう、時夜は…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「仕方ないだろ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina292"]
[ftb]「ま、べつにいいけどねー」
[cpg1]

;//立位バック

[UniBK pattern="tokei3"]
[UniEV2 bg="ev_22" pattern="tokei3"]
[eval exp="sf.ev_22=0"]
[eval exp="sf.ev_22=1"]
[label]

木に手をつかせて、雛菊の片足を持ち上げる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina293"]
[ftb]「んっ…この格好疲れそう」
[cpg1]

[OnName2 name="tokiya"]
[fth]「俺が支えてるから」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina294"]
[ftb]「それでも疲れる～～」
[cpg1]

[OnName2 name="tokiya"]
[fth]「……太った？」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina295"]
[ftb]「何でそうなるのよ！」
[cpg1]

だって、自分の体重支えられないんじゃ……前より増えたんじゃないのか？
[cpg]

[OnName2 name="tokiya"]
[fth]「まぁ、べつにいいけど」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina296"]
[ftb]「よくない！」
[cpg1]

雛菊の反論を無視しながら、突き上げるように膣に挿入した。
[cpg]

―――じゅぷぷぅ！　じゅぶ、ぐちゅ…ごちん！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina297"]
[ftb]「ああっ！」
[cpg1]

[OnName2 name="tokiya"]
[fth]「んっ…いい具合…」
[cpg1]

すでに濡れていた雛菊の膣内。モノを出し入れすると、にちょにちょといやらしい音を立てている。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina298"]
[ftb]「あっ…ひゃ、んっんぅ～」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina299"]
[ftb]「は、ぁ…あっ、っぅ…んんっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina300"]
[ftb]「んんっ…ぅ…あんっ、ん、ぁっ…」
[cpg1]

ピストン運動に合わせて、甘い吐息が漏れる。
[cpg]

もっと声が聞きたくて、ほじくり回して…かき回してく。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina301"]
[ftb]「あぁ、んぁ、ふくっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina302"]
[ftb]「ひゃ…うごい、てる、んっ…ぁ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「ほらほら、まだまだ終わらないぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina303"]
[ftb]「んひゃう！　あぐっ…ふぁ…」
[cpg1]

ゆっくりと引いて、すぐにまた膣内に戻していく。
[cpg]

強弱をつけて腰を動かす。
[cpg]

熱く蠢いている膣内……その快感にだんだんと止められなくなってくる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina304"]
[ftb]「はぅぁ～ん、あ、ああっ…ゃ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina305"]
[ftb]「っ…あふ、んっ、ひぁ、くぅ…」
[cpg1]

きゅうきゅうと締めつけ、まとわり付いてくる肉壁。
[cpg]

残っている全ての液体を搾り出されてしまいそうだ。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina306"]
[ftb]「おくっ、奥に届いてるぅ」
[cpg1]

腰を振るだけ、夢中になってしまい雛菊を求める。
[cpg]

―――にちゅう、ぐちょ、ずちょ。
[cpg]

[OnName2 name="tokiya"]
[fth]「雛菊の中、やらしい音がするぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina307"]
[ftb]「あんぅ…そん、な…言わないでっ…ああっ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「本当のことだぞ。ぬるぬるで、絡みついてくる」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina308"]
[ftb]「ひうぅ～あ、あ、くふっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina309"]
[ftb]「だ、だって…んあぁ…は、はふゅぅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina310"]
[ftb]「時夜が…ずこずこ、って…んぅ…するから、あっ……」
[cpg1]

[OnName2 name="tokiya"]
[fth]「俺のせいかよ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina311"]
[ftb]「んぁ…ふぁ…や、ああっ」
[cpg1]

ぐちゃぐちゃになって、溶けそうな膣内。
[cpg]

カリの一番敏感な部分に当たるざわざわとした感触が心地いい。
[cpg]

もう射精してしまいそうだ。
[cpg]

[OnName2 name="tokiya"]
[fth]「くっ…この…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina312"]
[ftb]「うひゃ…ああっ、んくぅ…あ、あんぅ～」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina313"]
[ftb]「あ、かはぁ…ふか、ふかいぃ…」
[cpg1]

ぐじょぐじょと結合部から汁がどんどんと滴ってくる。
[cpg]

響く音もかなり大きくなっている。
[cpg]

もうそろそろ……。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina314"]
[ftb]「ああっ、ふぅ…だめぇ…脚がっ、がくがくして……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina315"]
[ftb]「はぅ…んんっ、あ、んぅ……」
[cpg1]

[OnName2 name="tokiya"]
[fth]「くっ、はぁ…出すぞっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina316"]
[ftb]「ひゃ、んあうぅぅっ！！」
[cpg1]

[Flash2 bg="ev_22_a"]
[eval exp="sf.ev_22_a=0"]
[eval exp="sf.ev_22_a=1"]
[label]

―――――どびゅーっ、ずびゅううぅぅ！！！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina317"]
[ftb]「あぁ…ぁ…ん、いいぃぃっ！」
[cpg1]

―――――びゅくん、びくっ、どぴゅっ！
[cpg]

膣内にぶちまけ、撒き散らしていく精液。
[cpg]

あっという間に雛菊の中は俺の出した白い液体で満たされた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina318"]
[ftb]「あ…ふぁぁ……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina319"]
[ftb]「んく…ひゃ…ぁ…っ…」
[cpg1]

震える秘部から溢れてきた精液が、脚をつたい地面に落ちていく。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina320"]
[ftb]「ああっ…はぁ、はぁ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「う～出たなぁ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina321"]
[ftb]「んっ…出しすぎ、よっ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「何ならもう一発出すけど？」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina322"]
[ftb]「気絶しちゃう……」
[cpg1]

[OnName2 name="tokiya"]
[fth]「はははっ」
[cpg1]

はぁ…外でするのもなかなか気持ちいい。
[cpg]

;シーン此処まで
[eval exp="sf.ev09=0"]
[eval exp="sf.ev09=1"]
[SceneEnd]
[label]
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode49|気がつけばアゲハがいる・・・

[stbgm time="500"]
[UniBK pattern="migi"]
[UniSet bg="公園昼" pattern="migi"]
[ReMes]
[plbgm bg="日常1" time=500]
[label]

;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina323"]
[ftb]「ふぁ～疲れた」
[cpg1]

[OnName name="tokiya"]
[fth]「そろそろ帰るか…」
[cpg1]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina324"]
[ftb]「貸し一つだからね」
[cpg1]

[OnName name="tokiya"]
[fth]「そんなん知らん」
[cpg1]

[OnName name="tokiya"]
[fth]「アゲハ～帰るぞ～」
[cpg1]

呼ぶと、木の陰からアゲハの頭が出てきた。
[cpg]

じっとこちらの様子を窺ってから、ひょっこり姿を現した。
[cpg]

;ageha_p1_a
[ActorLft1 chara="ageha_p1_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha611"]
[fta]「…おわった？」
[cpg1]

;hina_p1_e
[ActorLft1 chara="ageha_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina325"]
[ftb]「えっ？」
[cpg1]

見られてたのか……そりゃそうだよな。
[cpg]

姿が見えなければ探すだろうし、そう広い公園じゃない。
[cpg]

すぐに見つかる。
[cpg]

;hina_p1_j
[ActorCtr chara="hina_p1_j" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina326"]
[ftb]「あ、あははは…」
[cpg1]

[OnName name="tokiya"]
[fth]「………」
[cpg1]

;ageha_p1_c
[ActorLft1 chara="ageha_p1_c" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha612"]
[fta]「……ふぅ」
[cpg1]

その何とも微妙なため息で、その場は締めくくられた。
[cpg]

;/////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//５日目
;//主人公部屋
*Epsode50|雛菊　VS　愛華羽　レディー・・・

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="tokei1"]
[UniSet bg="主人公の部屋昼" pattern="tokei1"]
[plbgm bg="日常1" time=500]
[label]

～翌日～
[cpg]

特に用事も見当たらないので、今日も時間がまったりと流れている。
[cpg]

[OnName name="tokiya"]
[fth]「ふぁ～」
[cpg1]

;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha613"]
[fta]「…ふぁ～」
[cpg1]

まったりとした時間のせいで、一緒になってテレビを見ていたアゲハの口からもあくびが漏れる。
[cpg]

;hina_p1_b
[ActorLft1 chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina327"]
[ftb]「だらけ過ぎよ」
[cpg1]

[OnName name="tokiya"]
[fth]「そうか？」
[cpg1]

そういや、ここ最近学園に行ってないな……。
[cpg]

まぁ、いいか。少しくらい休んでも問題ないだろ。
[cpg]

;hina_p2_b
;ageha_p2_a
[ActorLft1 chara="hina_p2_b" layer="1"]
[ActorCtr chara="ageha_p2_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina328"]
[ftb]「この子が来てから、いつもそう」
[cpg1]

[OnName name="tokiya"]
[fth]「そんな事ないだろ」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha614"]
[fta]「……ない」
[cpg1]

;hina_p1_g
[ActorLft1 chara="hina_p1_g" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina329"]
[ftb]「あるっつの！」
[cpg1]

普段通りのやりとりをして、またゆっくりと時間は流れていく。
[cpg]

やっぱ、眠くなってくる…。
[cpg]

[OnName name="tokiya"]
[fth]「ふぁ…寝るか」
[cpg1]

;消して・・・
[LayerFadeOut layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha615"]
[fta]「…くぅ～」
[cpg1]

;hina_p2_b
[ActorLft1 chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina330"]
[ftb]「ちょっと、寝るな…起きなさい」
[cpg1]

;出す
;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha616"]
[fta]「うゅ…」
[cpg1]

[OnName name="tokiya"]
[fth]「何してんの」
[cpg1]

[stbgm time="500"]
[plbgm bg="日常2" time=500]

;hina_p1_b
[ActorLft1 chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina331"]
[ftb]「この子に、この家のシキタリを教えてあげるの」
[cpg1]

[OnName name="tokiya"]
[fth]「仕来りなんてどの口が言ったんだ？」
[cpg1]

;hina_p2_k
[ActorLft1 chara="hina_p2_k" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina332"]
[ftb]「まず、この家の主は私よ！覚えておきなさい」
[cpg1]

[OnName name="tokiya"]
[fth]「俺じゃないのか…」
[cpg1]

;hina_p1_k
[ActorLft1 chara="hina_p1_k" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina333"]
[ftb]「ドールなら家事くらいできる筈よ、やってみなさい」
[cpg1]

[OnName name="tokiya"]
[fth]「そんな無茶な」
[cpg1]

;/////////////////////////////////////////////////////////////////////////////////
*Epsode51|ゴォォォォォォォ

;ageha_p2_a
[ActorCtr chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha617"]
[fta]「……やる」
[cpg1]

[OnName name="tokiya"]
[fth]「え、おい。アゲハ」
[cpg1]

ドールとしての意地なのか、アゲハはいつもよりやる気に満ちている…ように見える。
[cpg]

;消しましょ
[OnName name="ageha"]
[pv b="0" s="Vageha618"]
[fta]「…だいどころ、かりる」
[cpg1]

;hina_p1_b
[LayerFadeOut layer="0"]
[move layer="1" path=(0,0,255) time=1200]
[wm]
[ActorCtr chara="hina_p1_b" layer="1"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina334"]
[ftb]「えぇ、どうぞご自由に～」
[cpg1]

ものすごく心配になってきた……。アゲハに出来るのか？
[cpg]

[LayerFadeOut layer="1"]
[stbgm time="500"]
[plbgm bg="日常1" time=500]
[UniSet bg="hblkout" pattern="tokei1"]
[label]

～一時間後～
[cpg]

;ageha_p1_a
[UniSet bg="主人公の部屋昼" pattern="tokei1"]
[ActorLft chara="ageha_p1_a" layer="0"]
[label]

[OnName name="ageha"]
[pv b="0" s="Vageha619"]
[fta]「…できた」
[cpg1]

[OnName name="tokiya"]
[fth]「マジ？」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha620"]
[fta]「…じしんさく」
[cpg1]

;hina_p1_b
[ActorRit chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina335"]
[ftb]「へぇ……」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha621"]
[fta]「…たんと、めしあがれ」
[cpg1]

そう言ってアゲハが俺達の前に持ってきたのは、すごく綺麗で、おいしそうに出来上がったオムライスだった。
[cpg]

まぁ、オムライスってのは少し子供っぽいのだが。
[cpg]

サラダまでついている。家の食卓にサラダが出るとは…。
[cpg]

[OnName name="tokiya"]
[fth]「こ、これは…」
[cpg1]

;hina_p2_e
[ActorRit chara="hina_p2_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina336"]
[ftb]「…お、おいしそう」
[cpg1]

確かに、食欲をそそられるいい匂いだ。
[cpg]

[OnName name="tokiya"]
[fth]「いただきます」
[cpg1]

スプーンですくって一口、放りこむ。
[cpg]

;hina_p1_h
[ActorRit chara="hina_p1_h" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina337"]
[ftb]「こ、これは…」
[cpg1]

[OnName name="tokiya"]
[fth]「う、うまい」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////////
*Epsode52|　Winer　愛華羽

;ageha_p1_d
[ActorLft chara="ageha_p1_d" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha622"]
[fta]「…やったね」
[cpg1]

無表情なままＶサインしているアゲハ。
[cpg]

隣で雛菊がどんよりとした雰囲気を漂わせている。何だか……とても複雑な気分だ。
[cpg]

;hina_p2_l
[ActorRit chara="hina_p2_l" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina338"]
[ftb]「くぅ……」
[cpg1]

[OnName name="tokiya"]
[fth]「泣くな」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina339"]
[ftb]「…悔しく、ない。料理が美味しすぎて、泣いてるだけ…」
[cpg1]

アゲハが料理上手なのは驚きだが、俺としては…何と言っていいやら。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina340"]
[ftb]「悔しくない、くやしくない～」
[cpg1]

この日、一日中、寝るその時まで雛菊は、悔しくない…を言い続けた。
[cpg]

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//６日目
;//主人公の部屋
*Epsode53|愛華羽防衛戦　レディィ

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="tokei4"]
[UniSet bg="主人公の部屋昼" pattern="tokei4"]
[plbgm bg="日常1" time=500]
[label]

～翌日～
[cpg]

;hina_p2_a
;ageha_p1_a
[ActorRit chara="hina_p2_a" layer="1"]
[ActorLft chara="ageha_p1_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina341"]
[ftb]「家事っていうのは、料理だけじゃないと思うの」
[cpg1]

またいきなり…何を言い出すのか。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina342"]
[ftb]「掃除に洗濯。他にも色々ある」
[cpg1]

;hina_p1_k
[ActorRit chara="hina_p1_k" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina343"]
[ftb]「一つ出来たからって、威張れることじゃないのよ」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha623"]
[fta]「……で？」
[cpg1]

;hina_p2_k
[ActorRit chara="hina_p2_k" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina344"]
[ftb]「今度は掃除と洗濯よ」
[cpg1]

;ageha_p1_a
[ActorLft chara="ageha_p1_a" layer="0"]

[OnName name="ageha"]
[pv b="0" s="Vageha624"]
[fta]「…わかった」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////////////
*Epsode53|ゴォォォォォォォ

素直に従うアゲハ。やらなくてもいいのに、小さい体でよく頑張っている。
[cpg]

;///////////////////////////////////////////////////////////////////////////////////////////////////
[LayerFadeOut layer="0"]
[layerFadeOut layer="1"]
[stbgm time="500"]
[UniSet bg="hblkout" pattern="tokei3"]

～数時間後～
[cpg]

[UniSet bg="主人公の部屋昼" pattern="tokei3"]
;ageha_p1_d
;hina_p2_l
[ActorRit chara="hina_p2_l" layer="1"]
[ActorLft chara="ageha_p1_d" layer="0"]
[label]

[OnName name="tokiya"]
[fth]「………」
[cpg1]

結果、やはりアゲハは完璧に家事をこなした。
[cpg]

;///////////////////////////////////////////////////////////////////////////////////
*Epsode54|愛華羽防衛成功

[OnName name="tokiya"]
[fth]「もう、止めとけ」
[cpg1]

[plbgm bg="日常1" time=500]

[OnName name="hinagiku"]
[pv b="0" s="Vhina345"]
[ftb]「うぅ…」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha625"]
[fta]「…つかれた…ちょっと、ねる」
[cpg1]

[OnName name="tokiya"]
[fth]「ああ…」
[cpg1]

;消す
[LayerFadeOut layer="0"]
畳に寝転がると、すぐに寝息を立てた。
[cpg]

;//////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode55|雛菊のヤキモチ
*EV10

[if exp="f.seen==1"]
[stbgm time=500]
[eval exp="f.B=0"]
[plbgm bg="日常1" time=500]
[AlphaBG bg="主人公の部屋昼"]
[ReMes]
[ActorRit chara="hina_p2_l" layer="1"]
[endif]

[OnName name="tokiya"]
[fth]「…で、何でそんなに突っかかるんだ」
[cpg1]

[stbgm time="500"]
[plbgm bg="日常3" time=500]
[move layer="1" path=(0,0,255) time=1000]
[wm]

;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina346"]
[ftb]「だ、だって…」
[cpg1]

;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina347"]
[ftb]「わ、私の方が…先にいるのに」
[cpg1]

[OnName name="tokiya"]
[fth]「ん？」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina348"]
[ftb]「あの子ばっかり、構うし……」
[cpg1]

[OnName name="tokiya"]
[fth]「構ってほしかったのか」
[cpg1]

何とまぁ…意外と可愛いところがあるじゃないか。
[cpg]

けど、確かにアゲハが来てから…俺も冷たくなったかもしれない。
[cpg]

そこは反省しなければならない点だ。
[cpg]

[OnName name="tokiya"]
[fth]「それじゃ…お詫びに今日は構ってやろう」
[cpg1]

;hina_p1_i
[ActorCtr chara="hina_p1_i" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina349"]
[ftb]「本当？」
[cpg1]

[OnName name="tokiya"]
[fth]「ああ」
[cpg1]

アゲハを起こさないように、優しく雛菊を畳に寝かせる。
[cpg]

;///////////////////////////////////////////////////////////////////////////////////////////////////
;//６９（家の中、布団なし）
[LayerFadeOut layer="1"]
[stbgm time="500"]
[plbgm bg="Hシーン" time=500]
[UniSet bg="hblkout" pattern="sita"]
[label]

[OnName name="tokiya"]
[fth]「気持ちよくしてやるな」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina350"]
[ftb]「それじゃ、私もしてあげる」
[cpg1]

そう言って俺の上に乗っかってくる雛菊。
[cpg]

どうやら冗談じゃなくて、本当にするつもりらしい。
[cpg]

[OnName name="tokiya"]
[fth]「いや…いいって」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina351"]
[ftb]「こら、遠慮するな。早く出しなさい」
[cpg1]

まったく、こんな時でも強引だな。
[cpg]

[AlphaBK]
[VisibleMes]
[UniEV4 bg="ev_23" pattern="migi"]
[eval exp="sf.ev_23=0"]
[eval exp="sf.ev_23=1"]
[label]

雛菊のおかげで互い違いの位置についた。
[cpg]

６９なんて……こんな格好するのは初めてのことだ。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina352"]
[ftb]「んふふっ……ハロ～」
[cpg1]

[OnName4 name="tokiya"]
[fth]「その笑い方、やめろ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina353"]
[ftb]「んふふぅ～～元気ぃ？」
[cpg1]

雛菊は少し手でしごいて、膨らんだペニスに舌を這わせてくる。
[cpg]

[AlphaEV4 bg="ev_23_a"]
[eval exp="sf.ev_23_a=0"]
[eval exp="sf.ev_23_a=1"]
[label]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina354"]
[ftb]「あむっ…はぁ、ぺろ…ちゅぷっ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina355"]
[ftb]「ふっ、あ…じゅる、じゅっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina356"]
[ftb]「ちゅく、ちゅる…ぺちゃ…んんっ、あはぁ…」
[cpg1]

俺も負けじと雛菊の秘裂に舌を這わせていく。
[cpg]

指で肉ビラをめいっぱい広げてパックリ開いた膣口に舌を侵入させてみる。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina357"]
[ftb]「んあぁっ…あ、くっ…はむっ、じゅる」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina358"]
[ftb]「ひゃぁ、ん、じゅっ…ちゅう、ちゅ」
[cpg1]

雛菊に舐められている肉棒にたまらない刺激が走る。
[cpg]

[OnName4 name="tokiya"]
[fth]「く、くそっ……」
[cpg1]

何故か対抗心を燃やして、俺は内部に指を入れ……口はクリトリスを吸い上げる。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina359"]
[ftb]「んきゃあぁ……あ、あ、ああっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina360"]
[ftb]「あ、んっ…はぅ、くっ…ん、じゅる」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina361"]
[ftb]「ふはぁ…あ、くぅ……、かぷっ！」
[cpg1]

[OnName4 name="tokiya"]
[fth]「ぐっ！」
[cpg1]

俺の責め立てをうけた雛菊は、反撃としてペニスを甘噛みしてきた。
[cpg]

一瞬、痛みが走ったが、すぐにそれは快感に変わっていたので驚きだ。
[cpg]

[OnName4 name="tokiya"]
[fth]「くそぉ…」
[cpg1]

負けてたまるか。今度は先ほどの攻撃に加えて、尻穴に手を伸ばして触れる。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina362"]
[ftb]「んんぅぅ……んぐっ、あ、ふはぁ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina363"]
[ftb]「ちょっと、そっちは…」
[cpg1]

雛菊の言葉を無視して、構わずに指を内部に沈み込ませる。
[cpg]

―――ぐりゅうぅぅ。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina364"]
[ftb]「あああぁぁっ！！」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina365"]
[ftb]「んっ…やぁ…時夜、だめっ…」
[cpg1]

そういう反応をされると止めるわけにはいかない。
[cpg]

むしろもっと責めたくなってくるのが普通だろう。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina366"]
[ftb]「あはぁ…あんぅ…だ、めぇ…お尻、だめぇ…」
[cpg1]

[OnName4 name="tokiya"]
[fth]「ほら、口が遊んでるぞ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina367"]
[ftb]「ああっ…ん、はむっ…じゅる」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina368"]
[ftb]「ちゅう、じゅず、じゅ……あはぁ」
[cpg1]

ヒクヒクして震えるアナル、くい込んでいる指で…引っかくように中の壁に刺激を与える。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina369"]
[ftb]「んぶぅ…んぐ、あむっ…ちゅ」
[cpg1]

必死になって耐えている雛菊の姿にペニスの膨張は一気に増した。
[cpg]

尻の穴を弄られて感じている雛菊がとてもいやらしく見える。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina370"]
[ftb]「はふ…ぁ…んっ、ぐふ…ふむぅ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina371"]
[ftb]「っや…ぁ、ちゅ…はぁ、じゅる、ちゅう…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina372"]
[ftb]「ひぃ、っあ…ぁ、ちゅぶ…ぅふ…」
[cpg1]

指を動かすと、抵抗して尻穴がぎゅっとすぼまる。
[cpg]

腰を振って、俺から逃げようとするが、そんなことは許さない。
[cpg]

がっちりと腰を掴んで逃がさないようにする。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina373"]
[ftb]「んぁ…、あぁ…ひゃ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina374"]
[ftb]「っちゅ、むぐ…ちゅぶ、じゅるる」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina375"]
[ftb]「はぶぅ…じゅ、ちゅる…んんっ」
[cpg1]

[OnName4 name="tokiya"]
[fth]「く、くぅ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina376"]
[ftb]「んふっ、ぐむっ……じゅぷ、じゅぽっ」
[cpg1]

まずい、俺の方が先にイッてしまいそうだ。
[cpg]

あんなに頑張ったのに……。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina377"]
[ftb]「あむっ、ぐちゅ…ちゅるぅ、れろ…」
[cpg1]

[OnName4 name="tokiya"]
[fth]「……っ、だめだ…」
[cpg1]

[Flash2 bg="ev_23_b"]
[eval exp="sf.ev_23_b=0"]
[eval exp="sf.ev_23_b=1"]
[label]

――――――びゅくん！　びゅーっ、ごぷ、どぷっ…ぴゅぅ！
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina378"]
[ftb]「んぐぅ、んぶううぅぅぅ！！」
[cpg1]

[OnName4 name="tokiya"]
[fth]「くっ…でる、まだ出るっ」
[cpg1]

――――――どぴゅっ、びゅく、ずぴゅ、どぷっ！！
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina379"]
[ftb]「ぁんぐ、んばぁ…あっ…ふはぁ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina380"]
[ftb]「ぷぁっ…くっ、じゅ…ごくっ、ごくん」
[cpg1]

吐き出した精液を雛菊は舐め取っていく。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina381"]
[ftb]「ふはぁ、あ…んくっ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina382"]
[ftb]「……勝ちっ」
[cpg1]

[OnName4 name="tokiya"]
[fth]「いや、まだまだ…」
[cpg1]

;//駅弁ファック

[AlphaEV1 bg="hblkout"]
今度は立ち上がり、体を持ちあげる。
[cpg]

[AlphaEV1 bg="ev_24"]
[eval exp="sf.ev_24=0"]
[eval exp="sf.ev_24=1"]
[label]


雛菊は完全に足を浮かせ、俺の背に手をまわす形になった。
[cpg]

[OnName1 name="tokiya"]
[fth]「今日はこれでするから」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina383"]
[ftb]「んっ…いいけど」
[cpg1]

[OnName1 name="tokiya"]
[fth]「それじゃ……」
[cpg1]

ギチギチに硬くなった肉棒を、腰の動きだけで膣に挿入する。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina384"]
[ftb]「あああぁぁっ！」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina385"]
[ftb]「んはぁ、くっ、はぁ…あっ」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina386"]
[ftb]「くぅ…あ、ひっ……あん」
[cpg1]

[OnName1 name="tokiya"]
[fth]「うぉ、狭いなっ…」
[cpg1]

曲がりくねった膣道。押し進めようとするとすぐに止まってしまう。
[cpg]

それにいつもより、明らかに狭くなっていて…絶え間なく肉棒が締めつけられている。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina387"]
[ftb]「ああっ…く、ぁ…っんぁ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina388"]
[ftb]「んっ…あうっ、ふぁあ…んぁぅ……」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina389"]
[ftb]「ふぁ…んっ、ぐっ、あぅ…ぁ…」
[cpg1]

立った状態で腰を打ちつける。両手が塞がっているから、強さの加減ができない。
[cpg]

そのため、一突き一突きが力いっぱいになってしまいパンパンと激しい挿入が行われている。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina390"]
[ftb]「あぐっ…ひ、ぅ…っよ、い…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina391"]
[ftb]「時夜、つよい…んぁ、はげし…っ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina392"]
[ftb]「くふぅ…あ、ああっ」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina393"]
[ftb]「ひうっ！　あ、やぁ……ああっ」
[cpg1]

―――ぐじゅうぅぅ、ごりゅ、じゅぷぷっ。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina394"]
[ftb]「んああぁっ～あ、くひゃぁ……」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina395"]
[ftb]「はぐぅ…ああっ…ひゃうっ！　あっ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina396"]
[ftb]「あっ…くぅ…かはっ…や、っ…」
[cpg1]

絡みついてくる膣内…ぐちゃぐちゃと音を立て口を開閉している。
[cpg]

いつまでもこのままの体位で腰を振り続けるのはかなりキツイ。
[cpg]

だんだんと腕が痺れてくる。これは早々に終わらせた方がいいかもしれない。
[cpg]

[OnName1 name="tokiya"]
[fth]「よし、ラストスパートだ」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina397"]
[ftb]「あん…あ、えっ？　もう？」
[cpg1]

[OnName1 name="tokiya"]
[fth]「大丈夫だ、ちゃんとイかせてやるから」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina398"]
[ftb]「ひぃ、ぁ…う、うん…」
[cpg1]

終わりにむかって、さらに強く、激しく肉棒を差し入れしていく。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina399"]
[ftb]「うぐぅ、あ…ひろ、がるぅ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina400"]
[ftb]「あ、んくっ…んんっ…ぁあ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina401"]
[ftb]「中が、あぅん…ひろがって、いくぅ…」
[cpg1]

[OnName1 name="tokiya"]
[fth]「そろそろ、いくぞっ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina402"]
[ftb]「ん、んぅ～あ、あ、あっ…」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina403"]
[ftb]「きて、時夜…あん、ひゃぁ……きてっ」
[cpg1]

[OnName1 name="tokiya"]
[fth]「くぅ…出るぞ」
[cpg1]

[Flash2 bg="ev_24_a"]
[eval exp="sf.ev_24_a=0"]
[eval exp="sf.ev_24_a=1"]
[label]

―――――どぴゅうぅ！
[cpg]

―――――ずぴゅ、どぴゅ、びゅく、びゅくん！
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina404"]
[ftb]「あぁ…んっ、ぁやああぁぁ～！」
[cpg1]

―――――どく、どく、どびゅびゅっ。
[cpg]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina405"]
[ftb]「ふぐっ、ん、でてる…うくっ、びゅくびゅく、って……」
[cpg1]

噴出した大量の精液…多すぎたその量は、膣からあふれ出して畳を汚した。
[cpg]

[OnName1 name="tokiya"]
[fth]「くっ、はぁ……」
[cpg1]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina406"]
[ftb]「時夜……出しすぎ…」
[cpg1]

[OnName1 name="tokiya"]
[fth]「そんなこと俺に言われても」
[cpg1]

;シーン此処まで
[eval exp="sf.ev10=0"]
[eval exp="sf.ev10=1"]
[SceneEnd]
[label]
;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//７日目
;//部屋
*Epsode56|改めて知る大切なモノ

[stbgm time="500"]
[UniBK bg="hblkout" pattern="tokei1"]
[ReMes]
[plbgm bg="日常1" time=500]
[label]

～翌日～
[cpg]

昨日の一件で、俺は悟った……雛菊の大切さを。
[cpg]

今までと同じようにしていては駄目だと思った。
[cpg]

平等に扱わないと。
[cpg]

[UniBK pattern="tokei3"]
[UniSet bg="主人公の部屋昼" pattern="tokei3"]
[label]

[OnName name="tokiya"]
[fth]「いい天気だし、出かけようぜ」
[cpg1]

;hina_p1_a
;ageha_p2_a
[ActorRit chara="hina_p1_e" layer="1"]
[ActorLft chara="ageha_p2_a" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina407"]
[ftb]「うん。いいけど…」
[cpg1]

;ageha_p1_a
[ActorLft chara="ageha_p1_a" layer="0"]

[OnName name="ageha"]
[pv b="0" s="Vageha626"]
[fta]「…いってらっしゃい」
[cpg1]

[OnName name="tokiya"]
[fth]「アゲハ、行かないのか？」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha627"]
[fta]「…きをきかせた」
[cpg1]

[OnName name="tokiya"]
[fth]「あ…それは、どうも…」
[cpg1]

;hina_p2_i
[ActorRit chara="hina_p2_i" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina408"]
[ftb]「……どうする？」
[cpg1]

[OnName name="tokiya"]
[fth]「そうだな……」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha628"]
[fta]「…きにせず、いってきて」
[cpg1]

[OnName name="tokiya"]
[fth]「じゃ、行ってくるけど…」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha629"]
[fta]「…がんばって」
[cpg1]

アゲハに見送られて、俺達は二人きりで外に出かけた。
[cpg]

;/////////////////////////////////////////////////////////////////////////////////////////////////
;//施設（服屋）
*Epsode57|ぷれぜんと　ふぉー　ゆー

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[UniBK pattern="sita"]
[UniSet bg="施設昼" pattern="ue"]
[label]

;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina409"]
[ftb]「本当にいいの？」
[cpg1]

[OnName name="tokiya"]
[fth]「いいって言ってるだろ」
[cpg1]

どうしてそこまで警戒するんだ。
[cpg]

;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina410"]
[ftb]「プレゼントなんて…滅多にないし」
[cpg1]

[OnName name="tokiya"]
[fth]「そうか……」
[cpg1]

今までのはプレゼントにカウントされていなかったのか。
[cpg]

結構あげた気がするんだが…。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina411"]
[ftb]「じゃあ、ちょっと選ぶから…」
[cpg1]

[OnName name="tokiya"]
[fth]「はいはい。気の済むまでどうぞ」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode58|やっぱ女の子なんだよな・・・

[LayerFadeOut layer="0"]
[UniBK pattern="tokei1"]
[UniSet bg="施設昼" pattern="tokei1"]
[label]

～三時間後～
[cpg]

[OnName name="tokiya"]
[fth]「な…長っ」
[cpg1]

いったいどれだけ時間掛かるんだ。
[cpg]

……女の子は皆こんな感じなのかな。
[cpg]

アゲハも…。
[cpg]

;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina412"]
[ftb]「お待たせ～」
[cpg1]

[OnName name="tokiya"]
[fth]「遅かったな…ってこら」
[cpg1]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina413"]
[ftb]「何よ」
[cpg1]

[OnName name="tokiya"]
[fth]「持ってきすぎだ。」
[cpg1]

;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina414"]
[ftb]「そう？」
[cpg1]

[OnName name="tokiya"]
[fth]「返してこい。一着だけだ」
[cpg1]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina415"]
[ftb]「ブーブー」
[cpg1]

[LayerFadeOut layer="0"]
文句を言いつつ雛菊は大人しく従った。
[cpg]

買ってあげたいけど、お金ないしな……。
[cpg]

;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina416"]
[ftb]「返してきたよ」
[cpg1]

[OnName name="tokiya"]
[fth]「ん、悪いな」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina417"]
[ftb]「経済状況知ってるし。それより…ありがとう」
[cpg1]

[OnName name="tokiya"]
[fth]「いいって」
[cpg1]

;//////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode59|雛菊ドレスアップ
*EV11

[if exp="f.seen==1"]
[stbgm time=500]
[eval exp="f.B=0"]
[plbgm bg="日常1" time=500]
[UniSet bg="施設昼" pattern="tokei1"]
[ReMes]
[endif]

;hina_p1_i
[ActorCtr chara="hina_p1_i" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina418"]
[ftb]「ねぇ、試着してみてもいい？」
[cpg1]

[OnName name="tokiya"]
[fth]「構わないぞ」
[cpg1]

[LayerFadeOut layer="0"]
[UniBK pattern="tokei1"]
[UniSet bg="施設昼" pattern="tokei1"]
[label]

;hina_p3_k
[ActorCtr chara="hina_p3_k" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina419"]
[ftb]「ジャーン！……どう？」
[cpg1]

[OnName name="tokiya"]
[fth]「おっ、似合ってるぞ」
[cpg1]

;hina_p4_c
[ActorCtr chara="hina_p4_c" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina420"]
[ftb]「……えへへっ」
[cpg1]

うっ…やばい、新しい服の効力なのか…すごく可愛く見えてしまう。
[cpg]

同時に、反応しなくてもよかった部分まで反応してしまった。
[cpg]

[OnName name="tokiya"]
[fth]「……どうする」
[cpg1]

このままにしていてもストレスが溜まる…悪いとは思うけど、お願いしてみようか。
[cpg]

[OnName name="tokiya"]
[fth]「雛菊、ちょっと…」
[cpg1]

;hina_p3_e
[ActorCtr chara="hina_p3_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina421"]
[ftb]「え、何？」
[cpg1]

少し恥ずかしがりながら、雛菊に耳打ちする。
[cpg]

;////////////////////////////////////////////////////////////////////////////////////////////////
;//手コキ
[LayerFadeOut layer="0"]
[stbgm time="500"]
[plbgm bg="Hシーン" time=500]
[UniSet bg="hblkout" pattern="migi"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina422"]
[ftb]「まったく、時夜は…」
[cpg1]

[OnName name="tokiya"]
[fth]「ごめんなさい」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina423"]
[ftb]「もう犬だね、犬。盛りのついた犬！」
[cpg1]

人気のない所に移動して、俺達はゴソゴソやっている。
[cpg]

口ではそんなことを言っている雛菊だが、俺のためにお願いを聞いて手コキをしてくれるらしい。
[cpg]

自分から準備している。
[cpg]

[OnName name="tokiya"]
[fth]「やる気満々じゃん」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina424"]
[ftb]「……やめよっかな」
[cpg1]

[OnName name="tokiya"]
[fth]「あ、ごめん…嘘です、はい」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina425"]
[ftb]「ふぅ…仕方ない」
[cpg1]

チャックを下ろして、そこから少し上を向きつつあったペニスを取り出す雛菊。
[cpg]

[AlphaBK]
[VisibleMes]
[UniEV3 bg="ev_25" pattern="tobira"]
[eval exp="sf.ev_25=0"]
[eval exp="sf.ev_25=1"]
[label]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina426"]
[ftb]「何ですぐにこうなるかなぁ……」
[cpg1]

[OnName3 name="tokiya"]
[fth]「漢っていうのはそういう生き物なんだ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina427"]
[ftb]「誇らしげに言うな」
[cpg1]

ペニスを両手でにぎり、ゆっくりと上下に動かし始める。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina428"]
[ftb]「んっ…よっと、しょ、ん…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「悪いな」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina429"]
[ftb]「そう思うなら、こんな事させるな」
[cpg1]

ごしごしと擦れ合わせ、巧みに手を使ってしごいてくる。
[cpg]

そうそう感じることも少ないはずの手コキ。
[cpg]

射精するまでには時間を伴うが、意外と気持ちいいものだ。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina430"]
[ftb]「もう、さっさと終わらせてよね」
[cpg1]

[OnName3 name="tokiya"]
[fth]「努力する」
[cpg1]

そうは言っても俺にはどうしようもないんだけどな。
[cpg]

全ては雛菊にかかっている。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina431"]
[ftb]「ふっ…ん、くっ…」
[cpg1]

無闇に早くスライドさせず、雛菊は適度な速度で手を動かしている。
[cpg]

ただ早く擦ればいいって物じゃないことをよく知っている。
[cpg]

指使いとか全て丁寧で、すごく感じる。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina432"]
[ftb]「服が汚れるから出さないでね」
[cpg1]

[OnName3 name="tokiya"]
[fth]「え！　いや、そんな……生殺し？」
[cpg1]

それはいくらなんでも勘弁してほしい。
[cpg]

このまま終わったら意味がない。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina433"]
[ftb]「出そうになったら言いなさい」
[cpg1]

[OnName3 name="tokiya"]
[fth]「言わない」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina434"]
[ftb]「……言いなさい」
[cpg1]

[AlphaEV3 bg="ev_25_a"]
[eval exp="sf.ev_25_a=0"]
[eval exp="sf.ev_25_a=1"]
[label]

ぎゅぅっ。
[cpg]

[OnName3 name="tokiya"]
[fth]「うわっ、わかった…分かった」
[cpg1]

強く肉棒を握られて、すぐに敗退した。
女の握力といえど思いっきり握られたら耐えられない。
[cpg]

今俺が晒しているのは弱点に他ならないのだから。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina435"]
[ftb]「しょ…んっ、はぁ……」
[cpg1]

けど、逆にさっきの痛みで少し感じたのも事実だ。
[cpg]

肉棒は肥大し、尿道から先走りが出てきていた。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina436"]
[ftb]「んっ…ちょっと、手が汚れる」
[cpg1]

[OnName3 name="tokiya"]
[fth]「仕方ないだろ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina437"]
[ftb]「我慢しなさい」
[cpg1]

[OnName3 name="tokiya"]
[fth]「出来ないっての！」
[cpg1]

本当にそう思うなら手を動かすの止めればいいのに。
[cpg]

本当にそうされると俺が困るけど。
[cpg]

快楽の波がだんだんと明確になってきて、いつの間にかビンビンになっているペニス。
[cpg]

そろそろ終わりが近いかもしれない。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina438"]
[ftb]「はい、お終い」
[cpg1]

;////////////////////////////////////////////////////////////////////////////////////

いきなり雛菊は俺のモノをシゴくのをやめた。
[cpg]

[OnName3 name="tokiya"]
[fth]「ここで止めるなよ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina439"]
[ftb]「だってこれ以上したら絶対に出るでしょ？」
[cpg1]

[OnName3 name="tokiya"]
[fth]「………」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina440"]
[ftb]「ほら、やっぱり」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina441"]
[ftb]「だからもうお終い」
[cpg1]

そんな…ここで終わりにされても俺が困る。
[cpg]

[OnName3 name="tokiya"]
[fth]「仕方ない」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina442"]
[ftb]「…え？」
[cpg1]

[OnName3 name="tokiya"]
[fth]「自分でするからいい」
[cpg1]

[AlphaEV3 bg="hblkout"]
俺は雛菊を押し倒そうと、掴みかかった。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina443"]
[ftb]「ちょ、ちょっと何するの！」
[cpg1]

[OnName3 name="tokiya"]
[fth]「うわっ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina444"]
[ftb]「きゃっ」
[cpg1]

しかし……押し倒そうとした結果、バランスを崩した俺達は倒れた。
[cpg]

;//座位
[UniEV2 bg="ev_26" pattern="bakuhatu"]
[eval exp="sf.ev_26=0"]
[eval exp="sf.ev_26=1"]
[label]

そして、どういうわけかこんな格好になっている。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina445"]
[ftb]「いたた…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「ケツうった」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina446"]
[ftb]「自分が悪いんでしょ」
[cpg1]

雛菊は俺の上に乗っかっていて……意外とちょうどいいポジションになってしまった。
[cpg]

これを利用しない手はない。
[cpg]

[OnName2 name="tokiya"]
[fth]「このままするぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina447"]
[ftb]「ちょっとー」
[cpg1]

雛菊から不満の声が漏れたが、俺は構わずに続けた。
[cpg]

十分に膨張した肉棒で、挿入する構えをとる。
[cpg]

[OnName2 name="tokiya"]
[fth]「入れるぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina448"]
[ftb]「いいなんて言ってないでしょ」
[cpg1]

そんな言葉をさらに無視して腰を突き入れた。
[cpg]

[AlphaEV2 bg="ev_26_a"]
[eval exp="sf.ev_26_a=0"]
[eval exp="sf.ev_26_a=1"]
[label]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina449"]
[ftb]「んあああぁぁぁ！」
[cpg1]

[OnName2 name="tokiya"]
[fth]「うお、もうこんなになってるのか」
[cpg1]

ペニスを押し込んだ膣内は、男を受け入れる体勢が十分に整っていた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina450"]
[ftb]「ああっ、あ、んぅ……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina451"]
[ftb]「はぅ…く、あ、…ぁ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina452"]
[ftb]「や、あ、んっ…んあぁ…」
[cpg1]

小刻みに体をふるわせて、背中をのけぞらせ快楽を感じている。
[cpg]

雛菊が感じるたびに、結合部からエロ汁が溢れてきている。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina453"]
[ftb]「あ、あ、あ…んはぁ…いぅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina454"]
[ftb]「っぅ～あぐぅ…あ、はん、あん…」
[cpg1]

―――ぐっ、ぐぎゅう。
[cpg]

腰を打ちつけると、ペニス全体がすっぽりと潜りこむ。
[cpg]

熱い膣内は強い快感を与えてくれる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina455"]
[ftb]「ん、あっ…はぁ、ふぁ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「何だかんだ言って感じてるな」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina456"]
[ftb]「んっ、んんっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina457"]
[ftb]「ぅ…んんっ、あ、はぁっ、っ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina458"]
[ftb]「だ、だって…そんな、こと…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina459"]
[ftb]「あっ…しょうが、ん、ないで、しょ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「何がしょうがないの」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina460"]
[ftb]「んあっ…時夜、がっ……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina461"]
[ftb]「そういうこと…するから」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina462"]
[ftb]「あっ、あ、ふあぁ…ひゃう」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina463"]
[ftb]「きひぃ…んんっ、あ、あん…」
[cpg1]

内部を擦りつけると、膣奥から愛液が染み出してくるのが分かった。
[cpg]

それをうけてスムーズになったモノを根元までねじ込んでいく。
[cpg]

―――ぐじゅう、ごちゅ。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina464"]
[ftb]「あっ、んむぅ……、ひゃ…あぐ、んぁあ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina465"]
[ftb]「ぁ…ぅ……あ…っ、んむっ…」
[cpg1]

止められない、堪らない……。
[cpg]

どろどろに溶けている膣の、妖艶な誘い。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina466"]
[ftb]「ふぁ、あっ…はぁ…ぁ…ぁ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「んっ…く」
[cpg1]

根元からぞくそくした感覚が……駆け上がってくる。
[cpg]

射精感がどんどん強くなってきて、もう何も考えられない。
[cpg]

[OnName2 name="tokiya"]
[fth]「もう、出そう」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina467"]
[ftb]「ん、はぁっ…あ、やっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina468"]
[ftb]「外に、出さないでっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina469"]
[ftb]「ああっ…ん、服が…あ、汚れるぅ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「分かったよ」
[cpg1]

最後の階段を駆け上がるための、ラストスパート。
[cpg]

壊してしまうほど強く腰を振り、肉棒は内部で暴れている。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina470"]
[ftb]「あっ、っああ！　だ、め…だめぇ……」
[cpg1]

[OnName2 name="tokiya"]
[fth]「っう…いくぞ」
[cpg1]

[Flash2 bg="ev_26_b"]
[eval exp="sf.ev_26_b=0"]
[eval exp="sf.ev_26_b=1"]
[label]

―――びゅく、びゅくっ！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina471"]
[ftb]「あ、あっ、ああっ、んああぁぁぁーーーー！！」
[cpg1]

―――ずぴゅ、どくっ、どびゅうぅ！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina472"]
[ftb]「あっ…ん、んはぁ…あぁ……はぁ、はぁっ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「はぁ…はぁ」
[cpg1]

濃い精液をたっぷりと中に出して、俺達の交わりは終わった。
[cpg]

[OnName2 name="tokiya"]
[fth]「ありがとう、雛菊」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina473"]
[ftb]「ぁ…はぁ…んっ……当分、Ｈ…禁止」
[cpg1]

[OnName2 name="tokiya"]
[fth]「そ、そんな…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina474"]
[ftb]「自業自得でしょ、まったく」
[cpg1]

止めといた方が……よかったかもしれないと、今更後悔する俺だった。
[cpg]

;シーン此処まで
[eval exp="sf.ev11=0"]
[eval exp="sf.ev11=1"]
[SceneEnd]
[label]
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//８日目
;//部屋
*Epsode60|重大発表

[stbgm time="500"]
[UniBK pattern="migi"]
[UniSet bg="主人公の部屋昼" pattern="migi"]
[ReMes]
[plbgm bg="日常3" time=500]
[label]

;hina_p1_g
[ActorCtr chara="hina_p1_g" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina475"]
[ftb]「重大なお知らせがあります」
[cpg1]

[OnName name="tokiya"]
[fth]「いきなりどうした」
[cpg1]

トイレから戻ってきた雛菊はいつになく真剣な表情で…俺に正面からむきあう。
[cpg]

;hina_p2_i
[ActorCtr chara="hina_p2_i" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina476"]
[ftb]「……できた」
[cpg1]

[OnName name="tokiya"]
[fth]「は？何が」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina477"]
[ftb]「……子供、が」
[cpg1]

[OnName name="tokiya"]
[fth]「………」
[cpg1]

;hina_p1_i
[ActorCtr chara="hina_p1_i" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina478"]
[ftb]「…赤ちゃん」
[cpg1]

;hina_p1_j
[ActorCtr chara="hina_p1_i" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina479"]
[ftb]「あ、あははっ…妊娠したみたい」
[cpg1]

[OnName name="tokiya"]
[fth]「―――は？」
[cpg1]

ちょっと…ま、まて、待て、待てって。一体何を言ってるんだ。
[cpg]

;//////////////////////////////////////////////////////////////////////////////////////////
[stbgm time="500"]
[plbgm bg="日常1" time=500]

;ageha_p1_a
[ActorLft1 chara="ageha_p1_a" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha630"]
[fta]「…ときや、おみそしるこぼれてる」
[cpg1]

;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina480"]
[ftb]「いや～まいったね…まさかとは思ったんだけど」
[cpg1]

俺の思考は止まったまま……もう、何がなんだか。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina481"]
[ftb]「少し前からおかしいとは思ってたんだ」
[cpg1]

―――まさか……ほ、本当に？
[cpg]

[OnName name="tokiya"]
[fth]「……だ」
[cpg1]

[OnName name="tokiya"]
[fth]「誰の子供？」
[cpg1]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina482"]
[ftb]「こら、あんた以外いるわけないでしょ」
[cpg1]

[OnName name="tokiya"]
[fth]「お、俺はどうしたらいい……」
[cpg1]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina483"]
[ftb]「とりあえず、お碗から手を離しなさい」
[cpg1]

;ageha_p2_a
[ActorLft1 chara="ageha_p2_a" layer="1"]

[OnName name="ageha"]
[pv b="0" s="Vageha631"]
[fta]「……びちゃびちゃ」
[cpg1]

立ちあがり、雛菊の肩をがしっと掴む。
[cpg]

;hina_p2_d
[move layer="0" path=(140,0,255) time=1000]
[wm]
[ActorRit chara="hina_p2_d" layer="0"]
[move layer="1" path=(-140,0,255) time=1000]
[wm]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina484"]
[ftb]「ちょっと、ワカメつくから…」
[cpg1]

[OnName name="tokiya"]
[fth]「本当なのか！？」
[cpg1]

;hina_p1_b
[ActorRit chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina485"]
[ftb]「本当よ」
[cpg1]

;ageha_p1_d
[ActorLft chara="ageha_p1_d" layer="1"]
[OnName name="ageha"]
[pv b="0" s="Vageha632"]
[fta]「…おめでと」
[cpg1]

;hina_p2_c
[ActorRit chara="hina_p2_c" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina486"]
[ftb]「ふふっ、ありがとう」
[cpg1]

[OnName name="tokiya"]
[fth]「びょ、病院、病院に行かねば！」
[cpg1]

;hina_p1_e
[ActorRit chara="hina_p1_e" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina487"]
[ftb]「あ、もう行ってきた」
[cpg1]

[OnName name="tokiya"]
[fth]「え？　そうなの？」
[cpg1]

;hina_p2_a
[ActorRit chara="hina_p2_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina488"]
[ftb]「うん。病院で検査して…知ったの」
[cpg1]

[OnName name="tokiya"]
[fth]「でもトイレから…」
[cpg1]

;hina_p1_j
[ActorRit chara="hina_p1_j" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina489"]
[ftb]「あ、ほら…一応言うのにも、勇気が必要で」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina490"]
[ftb]「集中する場所、他にないし」
[cpg1]

―――そうか。それにしても……まさか、いきなり父親になるとは…。
[cpg]

;hina_p2_d
[ActorRit chara="hina_p2_d" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina491"]
[ftb]「話はそれだけ」
[cpg1]

[OnName name="tokiya"]
[fth]「ふはぁ～……寿命が縮んだ」
[cpg1]

;hina_p2_i
[ActorRit chara="hina_p2_i" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina492"]
[ftb]「嬉しい？」
[cpg1]

[OnName name="tokiya"]
[fth]「当たり前だろ。そりゃ…突然で驚いたけど」
[cpg1]

嬉しくないわけがないだろ。
[cpg]

[OnName name="tokiya"]
[fth]「とにかく、安静にしてろ。重いものは持つな……持ったことないだろうが」
[cpg1]

;ageha_p1_a
[ActorLft chara="ageha_p1_a" layer="1"]

[OnName name="ageha"]
[pv b="0" s="Vageha633"]
[fta]「…ときや、ちこくする」
[cpg1]

[OnName name="tokiya"]
[fth]「学園なんてどうでもいい！」
[cpg1]

;hina_p1_b
[ActorRit chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina493"]
[ftb]「もう、ちゃんと行きなさいよ」
[cpg1]

[OnName name="tokiya"]
[fth]「何で？」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina494"]
[ftb]「パパがそんなじゃ、先が思いやられるわよ」
[cpg1]

[OnName name="tokiya"]
[fth]「ぱ…パ、パパ……」
[cpg1]

;hina_p2_c
[ActorRit chara="hina_p2_c" layer="0"]

[OnName name="hinagiku"]
[pv b="0" s="Vhina495"]
[ftb]「ね～？」
[cpg1]

;ageha_p2_a
[ActorLft chara="ageha_p2_a" layer="1"]

[OnName name="ageha"]
[pv b="0" s="Vageha634"]
[fta]「……ね」
[cpg1]

パパ……か。いい響きだ。
[cpg]

[OnName name="tokiya"]
[fth]「行ってきます」
[cpg1]

でも…残していくのも、すごく不安だ。
[cpg]

俺がいない間に何があるか、分かったもんじゃない。
[cpg]

しかし、休むのは駄目。連れて行くしかなくなる。
[cpg]

それはあまり……よろしくない。
[cpg]

;hina_p2_b
[ActorRit chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina496"]
[ftb]「そんなに言うなら、一緒に行くけど」
[cpg1]

[OnName name="tokiya"]
[fth]「むぅ…しかし」
[cpg1]

;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//学園（教室・昼）
*Epsode61|心配性なパパ

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[UniBK pattern="migi"]
[UniSet bg="教室昼" pattern="migi"]
[label]

結局、一緒に来てしまった。これで…よかったのか？
[cpg]

[OnName name="tokiya"]
[fth]「何にしても、しっかり勉強するぞー」
[cpg1]

;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina497"]
[ftb]「頑張って」
[cpg1]

;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//学園（教室・夕）
[LayerFadeOut layer="0"]
[stbgm time="500"]
[UniBK pattern="sita"]
[UniSet bg="教室夕方" pattern="ue"]
[plbgm bg="日常3" time=500]
[label]

[OnName name="tokiya"]
[fth]「うう～ん…ふが、んが、ん…」
[cpg1]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina498"]
[ftb]「目、覚めた？」
[cpg1]

[OnName name="tokiya"]
[fth]「あっれ、俺……」
[cpg1]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina499"]
[ftb]「もう…いいから、帰ろう」
[cpg1]

[OnName name="tokiya"]
[fth]「うん…あっ…」
[cpg1]

;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina500"]
[ftb]「どうしたの」
[cpg1]

腰を引いて立ち上がっている俺の姿を見て、雛菊はあからさまに変な顔をした。
[cpg]

しょうがないだろう、寝て起きるとこうなるんだよ。
[cpg]

たまに……。
[cpg]

;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina501"]
[ftb]「はぁ…まったく」
[cpg1]

呆れてる。
[cpg]

言い返せないけど。無言で視線をぶつからせる俺達。
[cpg]

;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina502"]
[ftb]「そのままじゃ辛いでしょ…」
[cpg1]

[OnName name="tokiya"]
[fth]「いいの？」
[cpg1]

[ActorCtr chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina503"]
[ftb]「もう慣れたし」
[cpg1]

;/////////////////////////////////////////////////////////////////////////////////////////////////////
;//後ろから愛撫
*Epsode62|エッチなパパ1

[LayerFadeOut layer="0"]
*EV12
[stbgm time="500"]
[UniBK pattern="tokei4"]
[VisibleMes]
[plbgm bg="Hシーン" time=500]
[UniEV4 bg="ev_27" pattern="tokei4"]
[eval exp="sf.ev_27=0"]
[eval exp="sf.ev_27=1"]
[label]

後ろから近寄り、雛菊を引き寄せて俺は机に腰掛ける。
[cpg]

服をたくしあげ、ついでにブラもずらして、胸に触れた。
[cpg]

ふにふにと豊満な胸をもみしごいていく。
[cpg]

面白いくらい形が変化する雛菊の胸。
[cpg]

もう何度も触ってきたけど、これからも飽きることがないと俺は思う。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina504"]
[ftb]「やっ、んぅ…はっ、んっ…ぃ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina505"]
[ftb]「あぁ…ひっ、あふぅ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina506"]
[ftb]「はふぅ…あん、んっ…ぅ…」
[cpg1]

股間も刺激してやると、雛菊はどんどん感じてきた。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina507"]
[ftb]「んひゃう…あっ、ああん…やっ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina508"]
[ftb]「あ、はぅっ！　くっ、あう、ダメっ……」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina509"]
[ftb]「ひゃうっ！」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina510"]
[ftb]「くふぅ…ん、あ、ああっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina511"]
[ftb]「んんっ、ぁ…きゃう」
[cpg1]

今度は弄っていた胸を強く圧迫してみると、いい声をあげた。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina512"]
[ftb]「あっ、きゃ…はぁ…うっ、ぁっ……」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina513"]
[ftb]「んぐぅ…あっ、んあっ……ぃ」
[cpg1]

指をヒレツに沿ってはわせる。
[cpg]

下着をつけた状態でも、そこが異常なくらいじゅくじゅくに濡れているのがわかった。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina514"]
[ftb]「ひゃ…ぁ…んはっ、はぁ…あっ、くっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina515"]
[ftb]「ふぁ、ああ…ぐっ、ぁやう」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina516"]
[ftb]「あっ、力……はいら、ない」
[cpg1]

感じすぎて力が入らなくなっているらしい。
[cpg]

下の口からとろとろの愛液が染み出してきている。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina517"]
[ftb]「ふぁん…あん、きゃ…ああっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina518"]
[ftb]「うっ…あ、はぁ…ふやぁ…」
[cpg1]

[OnName4 name="tokiya"]
[fth]「汚れるから外すぞ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina519"]
[ftb]「えっ……あ…」
[cpg1]

了承など待たずに、下着を取り払う。
[cpg]

位置的には見えないが、きっともう準備万端整っているんだろう。
[cpg]

[AlphaEV4 bg="ev_27_a"]
[eval exp="sf.ev_27_a=0"]
[eval exp="sf.ev_27_a=1"]
[label]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina520"]
[ftb]「…はずかしい」
[cpg1]

[OnName4 name="tokiya"]
[fth]「何言ってるの、今更」
[cpg1]

今までしてきた回数は二桁じゃないだろう。
[cpg]

指を第二関節まで膣内に挿入する。
[cpg]

―――ちゅく、じゅぷっ。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina521"]
[ftb]「っ…あん、うぅ…んんっ、あっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina522"]
[ftb]「あっ、うん…っ、あ、あ…んあっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina523"]
[ftb]「ふはぁ…はぁ、はぁ…きゃぅ…」
[cpg1]

―――じゅぶ、にゅぐ、にゅるぅ。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina524"]
[ftb]「んぐっ、はぁ…はぁ、くっ…ゃ…ひんっ」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina525"]
[ftb]「ぁ…んくっ…ああっ、ぁ…ん、ぅ…」
[cpg1]

秘裂を指で上下になぞっていくと、ぬめり気のある音がしてくる。
[cpg]

雛菊はかわいい声をあげ、刺激に悶えている。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina526"]
[ftb]「あんっ、あ、んぐ…ふっ…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina527"]
[ftb]「ふぅぅ…んっ、んぅう…」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina528"]
[ftb]「あ、ぁあ…っ…んはっ、え、ぁ…」
[cpg1]

内部に入っている指を、ぐにぐにと動かす。
[cpg]

止まらず溢れてくる汁によって指がどろどろになってしまった。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina529"]
[ftb]「んあっ…だめっ…あ、あん」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina530"]
[ftb]「あっ、イクぅ…イッちゃう……」
[cpg1]

[OnName4 name="tokiya"]
[fth]「いいよ…イッちゃえ」
[cpg1]

―――にゅぐぐっ、ぐちゅ。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina531"]
[ftb]「ふぁ、ぁ…ゃああぁぁーーっ！！」
[cpg1]

[Flash2 bg="ev_27_b"]
[eval exp="sf.ev_27_b=0"]
[eval exp="sf.ev_27_b=1"]
[label]

―――びゅく、びくん、びくくんっ。
[cpg]

体がはねて勢いよく愛液が噴出した。
[cpg]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina532"]
[ftb]「あっ…あ、はぁ…んぁ…」
[cpg1]

[OnName4 name="tokiya"]
[fth]「はぁ…イったね」
[cpg1]

[OnName4 name="hinagiku"]
[pv b="0" s="Vhina533"]
[ftb]「んぁ、…あ、はっ」
[cpg1]

[OnName4 name="tokiya"]
[fth]「じゃ…次、行くぞ」
[cpg1]

;//まんぐり返し

[UniEV3 bg="hblkout" pattern="tokei1"]

[OnName3 name="tokiya"]
[fth]「今度は俺の番な」
[cpg1]

[AlphaEV3 bg="ev_28"]
[eval exp="sf.ev_28=0"]
[eval exp="sf.ev_28=1"]
[label]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina534"]
[ftb]「はぁ…はぁ…もう少し、いたわって…よ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「ん～これが終わったらな」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina535"]
[ftb]「何よそれ…」
[cpg1]

雛菊の足を大開脚させて、大事な部分をさらけ出させ…
まんぐり返しの体勢をさせる。
[cpg]

俺はとろとろになった雛菊の秘裂を広げて、屹立を入れる構えをとる。
[cpg]

ピンク色の秘部が顔をのぞかせている。
[cpg]

[OnName3 name="tokiya"]
[fth]「いくよ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina536"]
[ftb]「あ、うん…いいよ」
[cpg1]

腰に力を入れて、雛菊の中を開発するように進撃する。
[cpg]

[AlphaEV3 bg="ev_28_a"]
[eval exp="sf.ev_28_a=0"]
[eval exp="sf.ev_28_a=1"]
[label]

―――ずちゅう、じゅぷじゅぷっ。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina537"]
[ftb]「ふやぁ、んっ…あ、ひゃ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina538"]
[ftb]「んんっ…あ、ふぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina539"]
[ftb]「あん、ああっ…くぅ…あは」
[cpg1]

俺の打ち付けに小刻みに震える。連結している所から淫らな音が響きわたった。
[cpg]

雛菊の内部でいきりたっているモノ、気持ちよすぎて、暴れだしそうだ。
[cpg]

―――みちゅ、みゅぎゅ
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina540"]
[ftb]「ああっ、だめ…ひろがるぅ…あんっ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina541"]
[ftb]「ふひゃ…あ、膣がっ…ひろがるっ…」
[cpg1]

一度イッているから具合は最高にいい感じだ。熱くて、ぬとぬとで…気持ちいい。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina542"]
[ftb]「んはぁ、ああっ…あ、くぁ…」
[cpg1]

学園の教室で、こんなに喘ぐ雛菊の姿は……すごくいやらしく見えた。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina543"]
[ftb]「んんぅ…んっ…ぉ…かんじちゃう～」
[cpg1]

[OnName3 name="tokiya"]
[fth]「ずいぶん敏感になってる、それに感度高いな」
[cpg1]

雛菊が体をふるわせると、中も一緒に締まっていく。
[cpg]

今日は、いつもよりも雛菊を感じている気がする。
[cpg]

入れているから……っていうのもあるかもしれないけど。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina544"]
[ftb]「ひゃ、あんっ…あ、はぁ…」
[cpg1]

鼓動まで聞こえてきそうなほど、彼女を感じて、意識してしまう。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina545"]
[ftb]「あ、あんっ…ん、んんぅ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina546"]
[ftb]「んぐぅ、ひ、ぁ…あっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina547"]
[ftb]「だ、めぇ…感じて、何も、あっ…かんがえ…れない」
[cpg1]

[OnName3 name="tokiya"]
[fth]「いいよ、ただ気持ちよくなってれば」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina548"]
[ftb]「あああっ、ふぁ…くひゃ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina549"]
[ftb]「は、ふぅ…ふか、ふかいい～」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina550"]
[ftb]「んあ、あっ…こんな、格好で…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「ははっ、まだこんなもんじゃないぞ」
[cpg1]

膣内をほぐしていくように、ぐちゃぐちゃにかき回す。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina551"]
[ftb]「いはっ、あ、はくっ……ぐりぐりって、きてる」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina552"]
[ftb]「やはぁ、あ、だめ、それ、だめっ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina553"]
[ftb]「んんっ…ぐりぐり…しないで、ああっ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「声出てるじゃん、気持ちいいんだろ？」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina554"]
[ftb]「あ、んは…う、うん」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina555"]
[ftb]「中が、すごい…ぐちゅぐちゅにされて、いいの」
[cpg1]

[OnName3 name="tokiya"]
[fth]「ん、じゃ…もっといくぞ」
[cpg1]

―――ぎゅぷ、じゅぷ、じゅぶうう。
[cpg]

―――じゅぱっ、ぱんぱん。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina556"]
[ftb]「ふはぁ、やっ…ぁ…ぅ…」
[cpg1]

腰を打ちつけていると、湿った音しか聞こえてこない。
[cpg]

けど、雛菊と交わっているという確かな証…イヤらしい音が心地よく聞こえているのも事実だ。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina557"]
[ftb]「あ、っ…あ～んぅ…んんっ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina558"]
[ftb]「ああっ…まだ、あはぁ…おっきく、なってる～」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina559"]
[ftb]「んはぁ、だめ、めくれ…ちゃう」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina560"]
[ftb]「ふぁ…はげ、しぃ…あ、ゃ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina561"]
[ftb]「くふっ、ああっ…抜き差しすると、めくれちゃうっ」
[cpg1]

―――じゅ、じゅぶう！
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina562"]
[ftb]「ああっ、こわれる～ああ～」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina563"]
[ftb]「んぁあ…だめぇ、くぅ…あんっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina564"]
[ftb]「あっ、あっ、あ…い、きそう…あぁ」
[cpg1]

最後の抵抗のように今までで一番締まってくる膣内。
[cpg]

俺の肉棒を激しいほどの快楽が襲った。
[cpg1]

よすぎる快感に…そろそろ、限界だ。
[cpg]

[OnName3 name="tokiya"]
[fth]「いいよ、雛菊…俺も、もう…」
[cpg1]

もう果ててしまう。射精というゴールがもうすぐそこまで迫ってきている。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina566"]
[ftb]「うあ、あはぁ…うん、ふぁ…」
[cpg1]

[AlphaEV3 bg="ev_28_b"]
[eval exp="sf.ev_28_b=0"]
[eval exp="sf.ev_28_b=1"]
[label]

―――ぐじゅ、じゅぷ、じゅぷぷうぅ。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina567"]
[ftb]「んはぁ、ああ…時夜～ああっ…」
[cpg1]

もう、止まらない。止められないし、止めるつもりもない。
[cpg]

雛菊を感じながら、終わりに向かってただ腰を振り続ける。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina568"]
[ftb]「んんぅ…あ、がっ…ひゃ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina569"]
[ftb]「ああっ…あん、時夜っ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「くっ…出すぞっ」
[cpg1]

俺は･･･
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;※選択肢
;１．中に出す
;２．外に出す

[history output=false]
;選択肢を出す位置の指定
[position layer=message1 left=217 top=229 width=356 height=123 visible=true]
[position layer=message1 frame="選択肢ウィンドウ" marginl=100 margint=30 marginr=0 marginb=0]
;				↑画像を指定するときは画像名を入れる
;選択肢を描画したいメッセージレイヤーを指定
[current layer=message1]

;選択肢の表示
[nowait]

[style align=center]
;選んだ場所へ飛ばす
[link target=*naka][font size=20 color="0xffffff"]   中出し     [endlink]
[resetstyle][r]

[style align=center]
[link target=*soto][font size=20 color="0xffffff"]   外出し    [endlink]
[resetstyle][r]

[current layer=message2]
[endnowait]
;クリックされるまで待つ
;シナリオが実行されるまで待つ
[s]

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//中に出す
*naka

[cm]
[backlay]
[position layer=message1 page=back visible=false]
[trans method=crossfade time=150]
[wt]
[Flash2 bg="ev_28_c"]
[eval exp="sf.ev_28_c=0"]
[eval exp="sf.ev_28_c=1"]
[history output=true]
[label]

―――びゅくう！　びゅるるる！！！
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina570"]
[ftb]「ふひゃああぁっ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina571"]
[ftb]「んあぁ…でてるぅ、あ、はっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina572"]
[ftb]「中に、びゅくびゅく…って、でてるぅ」
[cpg1]

一番奥に挿入した途端、ペニスが叫び……大量の精液を噴出した。
[cpg]

痙攣を繰り返し、白濁液をどぴゅどぴゅと吐き出していく。
[cpg]

しばらくそうして……雛菊の内部をこれ以上ないくらい汚してから、ようやく勢いは収まっていった。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina573"]
[ftb]「あはぁ…あ、んあ……あ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「雛菊…平気そう？」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina574"]
[ftb]「はぁ、はぁ…うん」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina575"]
[ftb]「ふぁ…あ、大丈夫…心配しないで…」
[cpg1]

体を汚して、お互いに息遣いが荒い。そんな俺達だけが夕暮れの教室の中にいる。
[cpg]

;シーン此処まで
[eval exp="sf.ev12=0"]
[eval exp="sf.ev12=1"]
[SceneEnd]
[label]

[jump target="*Epsode63"]
[s]
;///////////////////////////////////////////////////////////////////////////////////////////////////
;//外に出す
*soto

[cm]
[backlay]
[position layer=message1 page=back visible=false]
[trans method=crossfade time=150]
[wt]
[history output=true]
[label]

射精する直前、俺は腰をひいて肉棒を外にとりだした。
[cpg]

[Flash2 bg="ev_28_d"]
[eval exp="sf.ev_28_d=0"]
[eval exp="sf.ev_28_d=1"]
[label]

―――びゅくう！　びゅるるる！！！
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina576"]
[ftb]「ふひゃああぁっ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina577"]
[ftb]「んあぁ…でてるぅ、あ、はっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina578"]
[ftb]「ああっ…びゅくびゅく…って、でてるぅ」
[cpg1]

膣から引き抜いた途端、ペニスが叫び……大量の精液を噴出して雛菊の体に降りそそぐ。
[cpg]

痙攣を繰り返し、白濁液をどぴゅどぴゅと吐き出していく。
[cpg]

しばらくそうして……雛菊の体をこれ以上ないくらい汚してから、ようやく勢いは収まっていった。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina579"]
[ftb]「あはぁ…あ、んあ……あ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「雛菊…平気そう？」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina580"]
[ftb]「はぁ、はぁ…うん」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina581"]
[ftb]「ふぁ…あ、大丈夫…心配しないで…」
[cpg1]

体を汚して、お互いに息遣いが荒い。そんな俺達だけが夕暮れの教室の中にいる。
[cpg]

;シーン此処まで
[eval exp="sf.ev12=0"]
[eval exp="sf.ev12=1"]
[SceneEnd]
[label]
;////////////////////////////////////////////////////////////////////////////////////////////////
;//～数ヵ月後～
;//部屋
;//フェラ
*Epsode63|エッチなパパ2
*EV13

[stbgm time="500"]
[if exp="f.seen==1"]
[AlphaBK]
[eval exp="f.B=0"]
[endif]
[UniSet bg="hblkout" pattern="tokei1"]
[ReMes]
[label]

あれから…数ヶ月。雛菊のお腹は順調に大きくなって、かなりタポンタポンになっている。
[cpg]

もうすぐ、俺も父親になる日が近づいているんだ。
[cpg]

そんな時期だが、俺達は……。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina582"]
[ftb]「ああっ…ふぁ、んっ…っ…あぅ…」
[cpg1]

[AlphaBK]
[VisibleMes]
[UniEV2 bg="ev_29" pattern="nami"]
[eval exp="sf.ev_29=0"]
[eval exp="sf.ev_29=1"]
[label]

屹立をつかんだ雛菊は、手をゆっくり上下に動かし始める。
[cpg]

舌で先端部分を舐めてから、つつつと下にむかって這っていく。
[cpg]

[plbgm bg="Hシーン" time=500]

[OnName2 name="tokiya"]
[fth]「んっ…そう、いい感じ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina583"]
[ftb]「あ、んっ…はぁ…やぅ、くっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina584"]
[ftb]「んっ…ちゅぷ、じゅる、んは…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「んふぅ、もっと…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina585"]
[ftb]「う、うん…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina586"]
[ftb]「あむっ、はむっ…ちゅ、ぴちゃ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina587"]
[ftb]「ん、ふぁ…ふ、っ…気持ち、いい？」
[cpg1]

とろんとした表情、雛菊の感じている声。
[cpg]

それらが俺をものすごく興奮させる。
[cpg]

[OnName2 name="tokiya"]
[fth]「そうそう、いいぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina588"]
[ftb]「んふふっ…すぐにイかせてあげる」
[cpg1]

[OnName2 name="tokiya"]
[fth]「そう簡単には出ないぞ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina589"]
[ftb]「ちゅぱ、づぅ…ぢゅ、じゅるるぅ」
[cpg1]

今度は唇で先端に吸い付いてきた。
[cpg]

そのまま頭をしずめて、口内の感覚がペニスに伝わってくる。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina590"]
[ftb]「ふっ…む…ぅ…んむっ、ぁ…ふぁん、ぶぅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina591"]
[ftb]「ちゅ、…ぉ…じゅる、ちゅう」
[cpg1]

[OnName2 name="tokiya"]
[fth]「んっ…まだまだだな」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina592"]
[ftb]「むぐっ、はぁ、すぐ…ちゅ、終わらせて、じゅ…あげる」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina593"]
[ftb]「ふむっ…あ、あっ…はむっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina594"]
[ftb]「ちゅぷ、ずっ…じゅるるっ…あっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina595"]
[ftb]「あっ…ん、ひゃう…ぢゅ、じゅう…」
[cpg1]

熱く蠢くように、迫りくる舌……流石に上手い。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina596"]
[ftb]「じゅる…ちゅ、あっ…っ、べろっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina597"]
[ftb]「ちゅ…ん…んっ、あ…はむっ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina598"]
[ftb]「じゅるるっ…はふぅ、あ、ああっ…」
[cpg1]

―――じゅるるるっ。べろっ…ちゅう…。
[cpg]

唾液をたっぷりと垂らして、舐めてくる音がすごくいやらしい。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina599"]
[ftb]「んんっ、じゅじゅ…じゅぴ…あ、んっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina600"]
[ftb]「あんっ…はぁ、ちゅる…っう…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「よしよし、がんばれ…」
[cpg1]

大きなお腹を抱えながら懸命に俺の屹立を舐めてくれている。
[cpg]

その行為に俺の興奮は最高潮になっていく。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina601"]
[ftb]「はむっ…ん、ちゅ、んっ…あ、ぅ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina602"]
[ftb]「じゅ、んぐ、あむ…じゅぅ、ぴちゅ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina603"]
[ftb]「んちゅ、ぱちゅ…はぅ…んっ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina604"]
[ftb]「あっ…ん、どう？」
[cpg1]

[OnName2 name="tokiya"]
[fth]「ん、ぅん…くっ…そろそろ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina605"]
[ftb]「ふふっ…ん、ぐぅ…ちゅ、イきそう、なんだね？」
[cpg1]

[OnName2 name="tokiya"]
[fth]「う、うん…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina606"]
[ftb]「はぁ…んちゅ、むぅ」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina607"]
[ftb]「いいよっ、たくさん出しな」
[cpg1]

俺の肉棒を口にふくみ、勢いよく吸い上げる。
[cpg]

まるでバキュームみたいだ。根元に迫っていた精液が吸い上げられていく感じがする。
[cpg]

[OnName2 name="tokiya"]
[fth]「そんな吸ったら…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina608"]
[ftb]「んんっ…じゅ、いいって……」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina609"]
[ftb]「あ、あはぁ…出しちゃいなよ」
[cpg1]

―――じゅ、ちゅう、じゅっ…。
[cpg]

[OnName2 name="tokiya"]
[fth]「やばい…もう…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina610"]
[ftb]「あっ、ん…ちゅ、ぢちゅぅ」
[cpg1]

[OnName2 name="tokiya"]
[fth]「もう…だめだっ」
[cpg1]

[Flash2 bg="ev_29_a"]
[eval exp="sf.ev_29_a=0"]
[eval exp="sf.ev_29_a=1"]
[label]

―――どくん、どぷっ！　びゅるるっ！
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina611"]
[ftb]「んぅ、んぅ…んぐううっ～～」
[cpg1]

―――どぴゅ…ずびゅ、ずぴゅう！
[cpg]

せき止めていた最後の砦が決壊し、張り切って飛び出した精液は雛菊の顔を余すところなく汚した。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina612"]
[ftb]「んぶ、んっ…んはぁ…ふは」
[cpg1]

[OnName2 name="tokiya"]
[fth]「はぁ…はぁ…」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina613"]
[ftb]「今度は…あ、はぁ…私の番ね」
[cpg1]

[OnName2 name="tokiya"]
[fth]「分かってるよ」
[cpg1]

;//背面騎乗アナル挿入
[UniBK pattern="sita"]
[AlphaEV3 bg="hblkout"]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina614"]
[ftb]「はぁ…ん、来てっ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「はいはい、ちょっと待ってな」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina615"]
[ftb]「早くぅ～」
[cpg1]

先ほどのフェラによって、雛菊の股は湿っていて膣からは濃厚な蜜があふれ出している。
[cpg]

俺のモノを舐めながら自分も感じていたんだろう。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina616"]
[ftb]「時夜……」
[cpg1]

[OnName3 name="tokiya"]
[fth]「急かすなって」
[cpg1]

ペニスでその蜜をすくって尻穴に擦りつけて塗りたくっていく。
[cpg]

[AlphaEV3 bg="ev_30"]
[eval exp="sf.ev_30=0"]
[eval exp="sf.ev_30=1"]
[label]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina617"]
[ftb]「はあ、あは…んはぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina618"]
[ftb]「んぅ…あ、あはぁ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「よし、これならいいだろう」
[cpg1]

十分にアナルをぬるぬるにして、慣らしてからすぼまりに挿入する。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina619"]
[ftb]「んぐぅ、ああぁ～～っ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina620"]
[ftb]「ひゃ、あ、んんっ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「締まるっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina621"]
[ftb]「あぁ～…お尻、んぁ、はぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina622"]
[ftb]「おしりがっ…あ、ふぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina623"]
[ftb]「んんっ、ああっ…気持ち、いぃ…あ、はぁ…」
[cpg1]

―――ぎゅちゅ……ごぎゅ～～っ。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina624"]
[ftb]「はぁっ…あがぁ…ゃ、んあぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina625"]
[ftb]「ふぁ、うごいてる…ああっ、お尻の中でっ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina626"]
[ftb]「時夜が…っあん…ごりごりしてるっ…」
[cpg1]

;仮
[AlphaEV3 bg="ev_30_a"]
[eval exp="sf.ev_30_a=0"]
[eval exp="sf.ev_30_a=1"]
[label]


軽く腰をひいてからまた奥に押しもどしていく。
[cpg]

狂ったように、ピストン運動をひたすら繰り返していく。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina627"]
[ftb]「あっ、はふ…ぁ…あっ、はあ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina628"]
[ftb]「ん、あ…くぅ…かきまわさ、ないでぇ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina629"]
[ftb]「あっあ、もっと…やさしく…あっ」
[cpg1]

下から狙いすまし、雛菊の体重が下にかかる瞬間に屹立をねじこむ。
[cpg]

―――ぐぎゅううぅ、ぶちゅう、ぬぷぅ。
[cpg]

―――ぱん、ぱんっ、ぱんっ！
[cpg]

腰をうちつけるとそれに反応して雛菊の大きなお腹が上下に揺れる。
[cpg]

;仮
[AlphaEV3 bg="ev_30_b"]
[eval exp="sf.ev_30_b=0"]
[eval exp="sf.ev_30_b=1"]
[label]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina630"]
[ftb]「はひぃ…や、っ…つよ…んっ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina631"]
[ftb]「つよす、ぎる…あん、あ、あ…」
[cpg1]

普段使わない部分、アナルセックスは快感が根本的に違っていた。
[cpg]

亀頭の先の敏感な部分にあたるざわざわとした感触は快感を呼ぶ。
[cpg]

だが、締めつけはかなり強くてペニスが千切れてしまいそうなほど……気持ちいいより、むしろ痛い。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina632"]
[ftb]「あっ、んぁ…っ、ひい…ん、っぅ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina633"]
[ftb]「ふぁ、っん！　んぐっ…ひゃぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina634"]
[ftb]「い、やっ…んくっ、あ、いっ…んぅ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「うぐっ…ちょっと、雛菊」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina635"]
[ftb]「んんっ、あくぅ…あ、な、なに…？」
[cpg1]

[OnName3 name="tokiya"]
[fth]「弱めてくれ、これじゃ、出る前に千切れる」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina636"]
[ftb]「だって…ぐ、あぁ…強すぎて…あ、かんじる、から…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina637"]
[ftb]「はぐっ、んあ…ゃ、ダメ…そん、な…」
[cpg1]

締めつけは一向に弱まらず、喋るだけでもきゅっきゅと搾るように肉棒を刺激してくる。
[cpg]

このままだとすぐに果ててしまう。
[cpg]

肉棒の動きが雛菊によってかなり制限されてしまった。腰を振ってもあまり動かない。
[cpg]

思い切って、穴の奥深くまで沈むよう力いっぱいペニスを入れてみる。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina638"]
[ftb]「ふはぁ…あ、んぐ…あ、ぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina639"]
[ftb]「ああっ、ん、こすれる、こすれるっ…」
[cpg1]

―――ずじゅ、ずちゅ…ぬじゅぅ。
[cpg]

いやらしい水音が響いて、愛液が滴る。俺のモノもにちゃにちゃと濡れていて光って見えた。
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina640"]
[ftb]「ああっ…すごい。ときやの、すごい…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina641"]
[ftb]「んふぅ、あ…お尻、で、……かんじちゃう」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina642"]
[ftb]「いいっ、おしり……いいよぅ…」
[cpg1]

一番奥にたどり着いた時、ぎゅうっと締めつけられて動きを封じられた。
[cpg]

[OnName3 name="tokiya"]
[fth]「ちょ、ちょっと…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina643"]
[ftb]「あ、んは、ひゃぁ…い、あ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina644"]
[ftb]「んう…あ、ん、あんっ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「動けない…って」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina645"]
[ftb]「はぁ…んっ、だめ…これ以上は…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina646"]
[ftb]「動いたら、あ、ああっ…壊れちゃう…」
[cpg1]

動けないといつまで経っても終わらないんだけど。
[cpg]

雛菊の感じかたも以前より激しい、感度が上がっているのだろうか。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina647"]
[ftb]「あふぅ…は、んぁ…あ」
[cpg1]

[OnName3 name="tokiya"]
[fth]「仕方ない…」
[cpg1]

少し強引かもしれないが無理やり俺のモノを動かすようにした。
[cpg]

[OnName3 name="tokiya"]
[fth]「我慢してな」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina648"]
[ftb]「あ、ひゃ、んはぁ、あ！　あ、あぁっ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina649"]
[ftb]「んあぁ…だめ、っ…んぐっ、ひゃうぅ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina650"]
[ftb]「ひゃあぁぁっ！」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina651"]
[ftb]「んあ、かはぁ…やっ…」
[cpg1]

[OnName3 name="tokiya"]
[fth]「すぐ終わらせるからな」
[cpg1]

―――ぐぷ、ぎゅぶう、ぎゅちゅ。
[cpg]

ズンズンとアナルに肉棒を抜き差ししていく。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina652"]
[ftb]「ああっ…あ、んはぁ…や」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina653"]
[ftb]「くああっ…だめっ…こすれて…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina654"]
[ftb]「あくぅ！　かっ…あ…はぁ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina655"]
[ftb]「んんっ…あ、はぁ！」
[cpg1]

[OnName3 name="tokiya"]
[fth]「ぐっ…もう…出るぞっ」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina656"]
[ftb]「あひ、んっ…あ、ああっ…ひゃくうぅ！」
[cpg1]

[eval exp="f.sea=0"]
[laycount layers=3]
[sysbtopt backvisible=false]
[sysbtopt forevisible=false]
[position layer=message2 page=fore visible=false]
[position layer=message2 page=back visible=false]
[freeimage layer="0" page=back]
[freeimage layer="1" page=back]
[image storage="black" layer="1" top=0 left=0 visible=true page=back]
[video mode=layer loop=true visible=true]
[videolayer layer=0 page=back channel=1]
[openvideo storage="ev_30.mpg"]
[preparevideo]
[wp]
[layopt layer="0" top=0 left=0 visible=true page=back]
[trans method=crossfade time=500]
[wt]
[playvideo]
[waitclick]
[stopvideo]
[clearvideolayer channel=1]
[backlay]
[freeimage page=back layer=base]
[freeimage page=back layer=0]
[freeimage layer=1 page=back]
[image storage="hwhtout" visible=true page=back layer=0]
[trans method=crossfade time=550]
[wt]
[backlay]
[freeimage page=back layer=base]
[freeimage page=back layer=0]
[image storage="ev_30_c" visible=true page=back layer=base]
[trans method=crossfade time=550]
[wt]
[eval exp="f.sea=1"]
[freeimage page=back layer=base]
[laycount layers=6]
[AlphaEV3 bg="ev_30_c"]
[eval exp="sf.ev_30_c=0"]
[eval exp="sf.ev_30_c=1"]
[label]

―――びゅくぃ、どぷん、どぴゅ、ずぴゅう！
[cpg]

根元がしめつけられて、瞬時に溜まっていた精液を出した。
[cpg]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina657"]
[ftb]「ひゃぁ…あ、んっ…あ…」
[cpg1]

[OnName3 name="hinagiku"]
[pv b="0" s="Vhina658"]
[ftb]「はぁ…はぁ…」
[cpg1]

絶頂に達した俺達は、繋がったままお互いにぐったりとしていた。
[cpg]

もうすぐ子供が生まれる。
[cpg]

それまでは、もう少しの間だけ…こうして交わりをもったまま生活を続けるだろう。
[cpg]

;シーン此処まで

[eval exp="sf.ev13=0"]
[eval exp="sf.ev13=1"]
[SceneEnd]
[label]
;///////////////////////////////////////////////////////////////////////////////////////////////////
;//～雛菊ルートEND～
*Epsode64|ある男とドールの愛のカタチ

[stbgm time="500"]
[UniBK pattern="tokei3"]
[plbgm bg="日常1" time=500]
[AlphaBG bg="hblkout"]
[ReMes]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina659"]
[ftb]「ふふっ…可愛い」
[cpg1]

[OnName name="tokiya"]
[fth]「ほんと、すごく可愛い」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha635"]
[fta]「……ふわぁ」
[cpg1]

[UniSet bg="ev_31" pattern="nami"]
[eval exp="sf.ev_31=0"]
[eval exp="sf.ev_31=1"]
[label]

[OnName name="tokiya"]
[fth]「本当に生まれたんだな…」
[cpg1]

[AlphaBG bg="ev_31_b"]
[eval exp="sf.ev_31_b=0"]
[eval exp="sf.ev_31_b=1"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina660"]
[ftb]「疑ってたの？」
[cpg1]

[OnName name="tokiya"]
[fth]「そんなことはないけど」
[cpg1]

多少は…あったかもしれない。
[cpg]

でも今のこの光景を見れば、少しの疑いなんてすぐに吹き飛ぶ。
[cpg]

[OnName name="ageha"]
[pv b="0" s="Vageha636"]
[fta]「…かわいい」
[cpg1]

[AlphaBG bg="ev_31"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina661"]
[ftb]「ありがと」
[cpg1]

[OnName name="tokiya"]
[fth]「アゲハの妹だな」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha637"]
[fta]「…いもうと？」
[cpg1]

[OnName name="tokiya"]
[fth]「そうだよ」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha638"]
[fta]「……よしよし」
[cpg1]

[AlphaBG bg="ev_31_a"]
[eval exp="sf.ev_31_a=0"]
[eval exp="sf.ev_31_a=1"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina662"]
[ftb]「…ふふっ」
[cpg1]

何ともまぁ微笑ましいな、今の状況は。
[cpg]

いつの間にか父親になった感はあるけど……そんなのは今更なことだ。
[cpg]

これからが大事だと、俺は思う。
[cpg]

[OnName name="hinagiku"]
[pv b="0" s="Vhina663"]
[ftb]「ね、名前はどうする？」
[cpg1]

[OnName name="tokiya"]
[fth]「ん～そうだな…」
[cpg1]

[AlphaBG bg="ev_31_b"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina664"]
[ftb]「考えてなかったの？」
[cpg1]

[OnName name="tokiya"]
[fth]「だって…何てつけたらいいか……」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina665"]
[ftb]「しっかりしてよ」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha639"]
[fta]「…しっかり」
[cpg1]

[OnName name="tokiya"]
[fth]「……うっ」
[cpg1]

……どうしよう。
[cpg]

幾つか考えてあるんだけど、まだしっくりくる物がないんだよな。
[cpg]

[AlphaBG bg="ev_31_a"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina666"]
[ftb]「じゃあ、パパとして最初の仕事ね」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha640"]
[fta]「…ぱぱ」
[cpg1]

あらためてそう言われると……気恥ずかしい。
[cpg]

でも、これは俺がやらないといけないことだから。
[cpg]

[OnName name="tokiya"]
[fth]「少し、じっくり考え……」
[cpg1]

[AlphaBG bg="ev_31_b"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina667"]
[ftb]「なるべく早くね」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha641"]
[fta]「…はやくね」
[cpg1]

[OnName name="tokiya"]
[fth]「･･････わかったよ」
[cpg1]

自分の娘の名前だ。可愛いのをつけてやりたい。え～っと……。
[cpg]

[OnName name="tokiya"]
[fth]「今思いついたんだけど、こんな名前はどうだ？」
[cpg1]

[AlphaBG bg="ev_31"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina668"]
[ftb]「ん？　どんなの？」
[cpg1]

[OnName name="tokiya"]
[fth]「……うん」
[cpg1]

[OnName name="tokiya"]
[fth]「名前は―――――」
[cpg1]

[AlphaBK]
[VisibleMes]

[eval exp="sf.hinaflg=1"]
[eval exp="f.hinaend=1"]
[eval exp="f.agehaend=0"]
[jump storage="エンディング.ks" target="*start"]
[s]
