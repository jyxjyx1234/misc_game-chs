*start

[mapdisable layer=base]
[history output=true enabled=true]
[store enabled=true]
[eval exp="f.sea=0"]
[eval exp="f.seen=0"]
[eval exp="f.A=0"]
[eval exp="f.B=0"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[eval exp="f.agehaend=0"]
[eval exp="f.hinaend=0"]
[eval exp="f.rclickmode=0"]
;間接は最初はoff
[laycount layers="6"]
[stbgm time=1500]
[sysbtopt backvisible=false]
[AlphaBK]
[label]
;//プロローグ
;//道を歩く時夜（昼）

*Epsode01|ゴミ、ゴミ、ゴミ・・・

[plbgm bg="日常1" time=500]
[UniSet bg="通学路朝" pattern="tokei3"]
[ReMes]
[label]

晴天と言っても誰も文句をつけたりできそうにない、晴れ渡った空。休日の午後。
[eval exp="f.sea=1"]
[cpg]

いやー実に気持ちのいい日だ。……なんだけど、さ。
[cpg]


両手に重い荷物を持って、俺は汗をかきながら歩いている。
[cpg]

（なんでこんなこと……）
[cpg]


まばらに浮かぶ雲。主婦は洗濯物が乾いて喜びそうな暖かい陽気、俺はそのせいで汗だくだけど。
[cpg]


加えて、何故かそこに立ち上る異臭。
[cpg]


それに嫌悪感を抱いたところで両手が塞がっていて鼻を摘むこともできやしない。
[cpg]


（ふぉ……）
[cpg]


発生源は、両手に持っている荷物から。
[cpg]


自分が住んでいるアパート部屋の三分の一を占めていた、それを。
[cpg]


腕が痺れそうになりながら運んでいる。
[cpg]


[OnName name="tokiya"]
[fth]「ぜぇ…はぁ、はぁ……」
[cpg1]


途中で休み休み、やっと目的の場所に着くことはできた。
[cpg]


[AlphaBK]
[UniSet bg="ゴミ捨て場昼" pattern="tokei4"]
[label]


ゴミ捨て場（ジャンクヤード）。
[cpg]


俺が目指していた場所の一般的な名称である。
[cpg]


溜まったゴミを捨てるようアイツに命令されて、休日返上で部屋の掃除をしている現在。
[cpg]


[OnName name="tokiya"]
[fth]「ふぅ…っと」
[cpg1]


持っていた袋を、分類別に分けられている所に投げ入れようとして。
[cpg]


―――そこで気が付く。
[cpg]


山のように積まれたゴミの隙間から……人の手が飛び出していた。
[cpg]


;//ｲﾍﾞﾝﾄCG1
[AlphaBG bg="ev_01"]
[eval exp="sf.ev_01=0"]
[eval exp="sf.ev_01=1"]
[label]


[OnName name="tokiya"]
[fth]「……え？」
[cpg1]


一瞬、身体が硬直して動かなくなる。
[cpg]


けど、それが何なのかすぐに理解して俺は普通に行動を再開した。
[cpg]


（何だ…また、これか）
[cpg]


[OnName name="tokiya"]
[fth]「ほい」
[cpg1]


[AlphaBK]
[UniMap bg="ゴミ捨て場昼" pattern="tokei4"]
[AlphaBG bg="通学路朝"]
[label]


ゴミを捨てて、何事もなかったように俺はもと来た道を戻っていく。
[cpg]


;////////////////////////////////////////////////////////////////////////////////////////////
*Epsode02|我が城　家主は俺のはず・・・

;//アパート
[stbgm time="500"]
[UniSet bg="hblkout" pattern="tokei1"]
[plbgm bg="日常1" time=500]
[label]


結構長い距離を歩いて行き着く先は、見た目からしてボロいアパート。
[cpg]


まぁ、俺が住んでるんだけど。
[cpg]


地震とかきたら間違いなく崩れそうな印象を受ける。
[cpg]


（一応造りはしっかりしてるはずである）
[cpg]


築、ぅン十年も経っていそうな……いや、実際に経っている我が家だ。
[cpg]


六畳一間。キッチン、風呂、トイレあり、低家賃。苦学生の俺にとっては嬉しい限りだ。
[cpg]


何処にでもあるような、ありふれた物件だけど結構気に入っている。
[cpg]


階段を上がって二階の一室が俺の部屋。
[cpg]


;//主人公部屋
[AlphaBG bg="主人公の部屋2人昼"]

[OnName name="tokiya"]
[fth]「ただいま」
[cpg1]


[OnName name="hatena"]
[pv b="0" s="Vhina000"]
「あ、おかえり～」
[cpg1]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
鍵の掛かっていないドアを開けると俺を出迎えてくれる女の子の声が聞こえてきた。
[cpg]


名前を雛菊というこいつは、もうかれこれ三年くらい前から一緒に住んでいる。
[cpg]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina001"]
[ftb]「結構、時間掛かったね」
[cpg1]


[OnName name="tokiya"]
[fth]「そりゃ、あんな重いもの持ってたら、な」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina002"]
[ftb]「男の子でしょ？」
[cpg1]


[OnName name="tokiya"]
[fth]「虚弱ッキーだから無理」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina003"]
[ftb]「ほらほら、まだまだゴミあるんだから。しっかりね」
[cpg1]


[OnName name="tokiya"]
[fth]「わかってるよ」
[cpg1]


まるで家主のような命令っぷり、暴挙。名義も家賃払っているのも俺なのに……。
[cpg]


だが仕方ないこと。気に入ってなかったらとっくの昔に反乱してるし。
[cpg]


[OnName name="tokiya"]
[fth]「じゃ、また行ってくるよ」
[cpg1]


;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina004"]
[ftb]「頑張りなさい（私のために）」
[cpg1]


[OnName name="tokiya"]
[fth]「頑張ります（自分のために）」
[cpg1]


再び両手に重たい袋を持って、部屋を後にする。
[cpg]


これをあと何往復すれば終わるのか……考えただけでも頭が痛い。
[cpg]


;////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode03|ジャンクの人形

;//ゴミ捨て場
[LayerFadeOut layer="0"]
[AlphaBK]
[UniSet bg="ゴミ捨て場昼" pattern="tokei1"]

[OnName name="tokiya"]
[fth]「はぁ、はぁ……」
[cpg1]


そうしてゴミ捨て場にやってきた俺。シャツがべっとり汗で張り付いてる。
[cpg]


手に持っている袋を投げ捨てるように、多少乱暴に収集場所に置く。
[cpg]


―――そこで、また視界に入る。
[cpg]


[stbgm time="500"]
[plbgm bg="日常3" time=500]
さっきもあった……人の腕のような物。
[cpg]


いや、俺の見間違いじゃなければ、それは傍目に見ても確実に人間の腕でしかないと思う。
[cpg]


[OnName name="tokiya"]
[fth]「さて、さっさと次を持ってくるか」
[cpg1]


それでも、俺は何事もなかったように普通にしていられるのに、一応の理由はある。
[cpg]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


ゴミとゴミの隙間から顔をのぞかせているその、“人間の手のようなもの”を掴んで持ち上げる。
[cpg]


それはあっさりと取り出せた。
[cpg]


案の定、肩部分から先はあるはずのものがなく、腕自体も変な角度で折り曲げられていた。
[cpg]


そのくせ血は滴っておらず、関節部分が丸くなっている。
[cpg]


俺は更にゴミを掻き分けてみる。
[cpg]

ゴミをどかしてみると、その全貌が明らかになった。
[cpg]


[AlphaBK]
[AlphaBG bg="ev_01"]
[eval exp="sf.ev_01=0"]
[eval exp="sf.ev_01=1"]
[label]


[OnName name="tokiya"]
[fth]「まぁ、そんなことだろうと思ったけど……」
[cpg1]


散らばった腕と足。
[cpg]


形を失った胴体。
[cpg]


欠けた片瞳。
[cpg]


俺もよく知っている、『ドール』という存在が…そこに打ち捨てられていた。
[cpg]


この街では、当たり前の光景だった。だから見た時に驚かなかったのだ。
[cpg]


俺が住んでいるこの街は、他と比べたら特殊だと思う。
[cpg]


[AlphaBG bg="hblkout"]

―――発端は、原因不明の病気だったらしい。
[cpg]


それは過去に街を襲い、それが原因で女性は子供が産めなくなってしまったらしい。
[cpg]


治療することもできず、その病気から逃れるため街を出て行く人がほとんどだったみたいだが、
一部の人間だけはここに残った。
[cpg]


学者や医者などの研究者達。
[cpg]


原因究明でもしようとしたのか、いやに固執してその病気のことを調べていた。
[cpg]


……と、まぁ色々あるが、長いので割愛。
[cpg]


結局、行き着いた先は『ドール』という、種族保存用人工型擬似媒体の製造だった。
[cpg]


『ドール』達は出産できない女性の代わりとして創られ、驚くことに本当に妊娠し、子供を出産できたそうだ。
[cpg]


それによって、この街から人間が居なくなることはなかった。
[cpg]


そして、それが現代にまで受け継がれて、存在している。……様々に形を変えて。
[cpg]


[AlphaBK]
[UniSet bg="ゴミ捨て場昼" pattern="ue"]
[label]


[OnName name="tokiya"]
[fth]「ふぅ……」
[cpg1]


無駄な体力を使ったことに後悔しながら、掘り起こしたゴミをまた元に戻していく。
[cpg]


（今日はドールの回収日じゃないんだけどな……）
[cpg]


目の前に明らかな違反があるが、面倒だから見なかったことにする。
[cpg]


ドールを覆い隠すようにゴミの袋を積み上げていく。
[cpg]


だが、どういうわけか、隠し切れない。
[cpg]


（ま、そこまで必死に隠さなくていいか）
[cpg]


もともと俺が棄てた物じゃないし。
[cpg]


自分のゴミを処理して、俺はまた家に向かって歩き出した。
[cpg]


;///////////////////////////////////////////////////////////////////////////////////////////////////////
;//ブラックアウト
;//主人公の部屋(夜)
*Epsode04|掃除終了

[stbgm time="500"]
[UniBK pattern="tokei3"]
[UniSet bg="主人公の部屋2人夜" pattern="tokei4"]
[plbgm bg="日常1" time=500]
[label]


[OnName name="tokiya"]
[fth]「うおーーつっかれたぁ～～」
[cpg1]


;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina005"]
[ftb]「はいはい、ご苦労さま」
[cpg1]


[OnName name="tokiya"]
[fth]「もう動けん」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina006"]
[ftb]「あんなにゴミ溜めるからこういうことになるの」
[cpg1]


[OnName name="tokiya"]
[fth]「お前もな」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina007"]
[ftb]「私違うもん」
[cpg1]


[OnName name="tokiya"]
[fth]「何が違う」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina008"]
[ftb]「本当はもっと前から片付けようと思ってた」
[cpg1]


[OnName name="tokiya"]
[fth]「思ってただけだろ…やれやれ」
[cpg1]


;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina009"]
[ftb]「でもほら、今はこんなに綺麗」
[cpg1]


[OnName name="tokiya"]
[fth]「……俺が片付けたからな」
[cpg1]


丸一日かけて、俺の部屋の掃除は終わった。
[cpg]


ゴミで埋りそうになっていた俺の部屋はそれなりに片付いていた。
[cpg]


ただでさえ部屋が狭いんだ、これからは小まめに掃除をするようにしよう。
[cpg]


……もう外も真っ暗。一般家庭は夕食の時間だ。
[cpg]


[OnName name="tokiya"]
[fth]「雛菊……腹減ったぞ」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina010"]
[ftb]「私も」
[cpg1]


[OnName name="tokiya"]
[fth]「何か作ってくれ」
[cpg1]


;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina011"]
[ftb]「カップラーメンとインスタントどっちがいい？」
[cpg1]


[OnName name="tokiya"]
[fth]「……コンビニ行ってくる」
[cpg1]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina012"]
[ftb]「私にも何か買ってきて～」
[cpg1]


[OnName name="tokiya"]
[fth]「はいはい」
[cpg1]


全く、いつもこれだ……。雛菊の奴、ドールのくせに俺にばっかり押し付けるんだもんな･･･。
[cpg]


仕方なく財布を持って出かける準備を整える。
[cpg]


;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina013"]
[ftb]「……あれ？」
[cpg1]


[OnName name="tokiya"]
[fth]「んじゃ、行ってくる」
[cpg1]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina014"]
[ftb]「ちょっとちょっと、ねぇ、時夜」
[cpg1]


[OnName name="tokiya"]
[fth]「ん？」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina015"]
[ftb]「ここに置いといた袋どうしたの」
[cpg1]


[OnName name="tokiya"]
[fth]「は？　袋？」
[cpg1]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina016"]
[ftb]「そうそう。ゴミ袋」
[cpg1]


[OnName name="tokiya"]
[fth]「そんなん捨てたに決まってるだろ」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina017"]
[ftb]「全部？」
[cpg1]


[OnName name="tokiya"]
[fth]「ぜんぶ」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina018"]
[ftb]「あれは別の日に捨てるやつ。……だから今日じゃないのに」
[cpg1]


[OnName name="tokiya"]
[fth]「知るか」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina019"]
[ftb]「ついでに回収して来てよ」
[cpg1]


[OnName name="tokiya"]
[fth]「せっかく捨てたのに」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina020"]
[ftb]「いいから」
[cpg1]


;///////////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode05|ご飯とゴミとジャンク人形

[LayerFadeOut layer="0"]
[stbgm time="500"]
[AlphaBG bg="hblkout"]
[plbgm bg="日常1" time=500]
[label]


半ば強制的に俺は外出することになった。
[cpg]


ついでに昼間捨てたゴミも回収してこないといけない。
[cpg]


……あの苦労は水の泡か？
[cpg]


『ありがとうございましたー』
[cpg]


[AlphaBK]
[UniSet bg="通学路夜" pattern="tokei1"]
[label]


[OnName name="tokiya"]
[fth]「よし、食料調達は終わった」
[cpg1]


あとは少し遠回りになるが、あれを拾って帰ればいいだけだ。
[cpg]


そう急がず、のんびりと目的地に向かって歩いていく。
[cpg]


街灯の明かりがちらほらと電柱にともっているだけで、辺りはけっこう暗くなっている。
[cpg]


[UniSet bg="ゴミ捨て場夜" pattern="migi"]
[label]


昼間に幾度となく訪れたその場所は、様変わりしない。
[cpg]


山のように積まれていたゴミ袋も健在で、あれも相変わらずだった。
[cpg]


[OnName name="tokiya"]
[fth]「えっと……どこにあるんだ？」
[cpg1]


意識的に一部分の方向を見ないようにしながら、目的のものを探していく。
[cpg]


けれど、最終的にはそっちも探さないといけなくなる。
[cpg]


[OnName name="tokiya"]
[fth]「う……」
[cpg1]


一番マズイことに、ドールと目が合ってしまった……。
[cpg]


気にするな、気にするな…。壊れたドールなんて珍しくもない。
[cpg]


無理矢理、無視して目的を果たそうとする。
[cpg]


掻き分け、目を凝らしても暗いから良く見えない。
[cpg]


―――それからどのくらい経ったのか。
[cpg]


[OnName name="tokiya"]
[fth]「あ、あった……」
[cpg1]


暗がりの中、俺はやっと例のゴミ袋を見つけ出した。
[cpg]


さっさと家に帰ろう。ここにいると……何だか知らんが後ろめたくなる。
[cpg]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


早足気味でその場を後にする。責められている気がして、幻覚が見えてしまいそうだ。
[cpg]


足を止めて振り返る。
[cpg]


まぁ、最初に見たときから思っていた。
[cpg]


いくら消耗品でも、これはあんまりだと……。
[cpg]


実際、こういう風に棄てられているドールなんて珍しくも何ともない。
[cpg]


けど、やはり良心は少なからず痛むものだ。俺ですら…。
[cpg]


[OnName name="tokiya"]
[fth]「―――で、どうしよう」
[cpg1]


こいつをどうにかすると言ってもどうしたらいいのか。ドール専用の廃棄施設とかあるしな。
[cpg]


ちゃんと然るべき所に出してやるべきなんだろう。
[cpg]


[OnName name="tokiya"]
[fth]「この時間じゃ無理だろうな……」
[cpg1]


となると、とりあえず家まで運ばないといけないわけだけど。
[cpg]


生憎、俺の両腕はイッパイ、イッパイ。
[cpg]


片手に食料、片手にゴミ。どっちも空いてないのだ。
[cpg]


どうしたものか……。
[cpg]


この際ゴミは仕方ないので置いていっても問題ない気がする。
[cpg]


飯は置いていけない。絶対に。
[cpg]


[OnName name="tokiya"]
[fth]「てか、これって片手で持っていけるか？」
[cpg1]


う～ん……厳しいよな。つーかパーツがバラバラになってるな。
[cpg]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


;////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode05|選んだ結果・・・

;//ブラックアウト
;//主人公の部屋
[UniBK pattern="tokei3"]
[stbgm time="500"]
[UniSet bg="主人公の部屋2人夜" pattern="tokei4"]
[plbgm bg="日常1" time=500]
[label]


;hina_p2_c
[ActorCtr chara="hina_p2_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina021"]
[ftb]「おかえり～～」
[cpg1]


[OnName name="tokiya"]
[fth]「た、ただいま……」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina022"]
[ftb]「どこほっつき歩いてたの、おっそいなー」
[cpg1]


[OnName name="tokiya"]
[fth]「イロイロあって」
[cpg1]


;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina023"]
[ftb]「で、ご飯は？　お腹すいた」
[cpg1]

ぐっ…忘れてなかったか、こいつ。
[cpg]

[OnName name="tokiya"]
[fth]「………」
[cpg1]


;hina_p2_c
[ActorCtr chara="hina_p2_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina024"]
[ftb]「ご飯、ご飯！」
[cpg1]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


;hina_p1_c
[ActorCtr chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina025"]
[ftb]「ごはん、ごはん」
[cpg1]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina026"]
[ftb]「ゴハン…ないの？」
[cpg1]


[OnName name="tokiya"]
[fth]「うん」
[cpg1]

ごめんな、雛菊。俺の腕は二本しかないんだよ。……飯まで持ってこれなかったんだ。
[cpg]

こんな俺でもやさしい雛菊さんなら許してくれる･･･よね？
[cpg]


;hina_p1_f
[ActorCtr chara="hina_p1_f" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina027"]
[ftb]「……時夜、そこに直れ」
[cpg1]

やっぱダメだよね？俺もおなか減ってるもん･･･
[cpg]

;//ギャグ風味CG
[LayerFadeOut layer="1"]
[stbgm time="500"]
[freeimage layer=base page=back]

[backlay]
[sysbtopt backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[image layer=base storage="hblkout" page=back]
[trans time=500 method="crossfade"]
[wt]
[plbgm bg="日常2" time=500]
[freeimage layer=base page=back]
[backlay]
[image layer=base storage="ev_02" page=back]
[eval exp="sf.ev_02=0"]
[eval exp="sf.ev_02=1"]
[trans time=500 method="crossfade"]
[wt]
[freeimage layer=base page=back]
[AlphaBG bg="ev_02_a"]
[eval exp="sf.ev_02_a=0"]
[eval exp="sf.ev_02_a=1"]
[trans time=500 method="crossfade"]
[wt]
[label]


[OnName name="hinagiku"]
[pv b="0" s="Vhina028"]
[ftb]「ばかーー！！」
[cpg1]


[OnName name="tokiya"]
[fth]「おぐあっ！」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina029"]
[ftb]「ばか、バカ！！時夜何しに行ったの！？ご飯買いに行くって言ったのに！」
[cpg1]


[OnName name="tokiya"]
[fth]「だから色々あって……」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina030"]
[ftb]「なに、！？色々ってなに？」
[cpg1]


[OnName name="tokiya"]
[fth]「まて、まて。分かったから。ちゃんと話すから、落ち着け」
[cpg1]


[stbgm time="500"]
[plbgm bg="日常1" time=500]
[AlphaBK]
[AlphaBG bg="主人公の部屋夜"]
[label]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
ものすごい剣幕で見下ろす雛菊を必死で宥めて事情を説明していく。
[cpg]


俺が抱えて帰ってきた物を見て、一応落ち着いてくれたみたいだ。
[cpg]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina031"]
[ftb]「ふぅ～ん…で、カワイソウだと思って連れて帰ってきたわけ？」
[cpg1]


[OnName name="tokiya"]
[fth]「そういうつもりは……」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina032"]
[ftb]「何にしても、結果は同じよ」
[cpg1]


雛菊はそう言って壊れたドールの一部を手にとって見る。
[cpg]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina033"]
[ftb]「うわ…ひどいなぁ、これ。痛そ…」
[cpg1]


この壊れ具合だと意図的にやらないとここまで酷くならない気がするし。
[cpg]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina034"]
[ftb]「それで？　直してあげるんでしょ、この子」
[cpg1]


[OnName name="tokiya"]
[fth]「ま、そのつもり」
[cpg1]


俺はこう見えて機械工学系の学園に通っているからこういった物に強い。
[cpg]


特にドールに関しては専攻しているためかなり。
[cpg]


;hina_p2_e
[ActorCtr chara="hina_p2_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina035"]
[ftb]「えーっと･･･パーツってこれで全部だった？」
[cpg1]


[OnName name="tokiya"]
[fth]「いや、分からないけど…暗かったし、とりあえず全部持ってきたけど」
[cpg1]


[OnName name="tokiya"]
[fth]「よし、このままでもアレだしな。直すか」
[cpg1]


元から足りなかったらその分は他で補わないといけないな。
[cpg]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina036"]
[ftb]「時夜、おサイフ貸して。ご飯買ってくるから」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、悪い……頼んだ」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina037"]
[ftb]「うん、じゃ。行ってくる」
[cpg1]


[OnName name="tokiya"]
[fth]「さて、やるだけやってみるか……」
[cpg1]


;///////////////////////////////////////////////////////////////////////////////////////////////////////
;//ブラックアウト
*Epsode06|そういえば・・・

[LayerFadeOut layer="0"]
[stbgm time="500"]
[UniSet bg="hblkout" pattern="sita"]
[plbgm bg="日常1" time=500]
[label]


[OnName name="tokiya"]
[fth]「あ～これは、無理っぽい」
[cpg1]


―――あれから数時間。
[cpg]


奮闘していた俺は、若干あきらめ気味になっていた。
[cpg]


[OnName name="tokiya"]
[fth]「足りないな」
[cpg1]


そう、やはりパーツが足りなかったのだ。予想していたことではあるが。
[cpg]


[OnName name="tokiya"]
[fth]「はぁ…疲れた」
[cpg1]


ごろんと畳に寝そべる。集中しすぎて疲れた頭に、ヒンヤリとした畳の温度が今は心地いい。
[cpg]


（腹減った……そういや、飯食ってないや）
[cpg]


[OnName name="tokiya"]
[fth]「そういや、雛菊遅いな……」
[cpg1]


[UniSet bg="主人公の部屋夜" pattern="ue"]
[label]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina038"]
[ftb]「ただいま～」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、おかえり」
[cpg1]


噂をすれば何とやら･･･ちょうどいいタイミングで雛菊が帰ってきた。
[cpg]


;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina039"]
[ftb]「まだ直ってないの？」
[cpg1]


[OnName name="tokiya"]
[fth]「ん、お手上げ……」
[cpg1]


畳に転がったまま万歳のポーズを取ってみせる。
[cpg]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina040"]
[ftb]「そっか…はい、ご飯」
[cpg1]


[OnName name="tokiya"]
[fth]「さんくす」
[cpg1]


ずいぶん遅い夕食になってしまった。
[cpg]


[OnName name="tokiya"]
[fth]「もぐもぐ……」
[cpg1]


;hina_p1_e
[ActorCtr chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina041"]
[ftb]「それと…はい、これ」
[cpg1]


そう言って雛菊は手に持っていた別の袋をこっちに投げてよこした。
[cpg]


[OnName name="tokiya"]
[fth]「ん？　何だ」
[cpg1]


袋の中から出て来たのは―――。
[cpg]


[OnName name="tokiya"]
[fth]「パーツ？」
[cpg1]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina042"]
[ftb]「うん、そう」
[cpg1]


『ドール』専用のパーツ。しかも結構な量が詰め込まれていた。
[cpg]


[OnName name="tokiya"]
[fth]「どうしたんだよ、これ」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina043"]
[ftb]「どうもこうも買ってきたんだよ」
[cpg1]


そりゃ見れば分かるけど…。これ買って来たから遅かったのか。
[cpg]


[OnName name="tokiya"]
[fth]「何で？」
[cpg1]


;hina_p2_e
[ActorCtr chara="hina_p2_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina044"]
[ftb]「見た感じ足りないな、って分かったから」
[cpg1]


[OnName name="tokiya"]
[fth]「そうか…」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina045"]
[ftb]「ま、『ドール』同士にしか分からないだろうけど」
[cpg1]


[OnName name="tokiya"]
[fth]「あ……」
[cpg1]


そう言われて、雛菊もドールだったことを思い出した。
[cpg]


一緒に生活していると、いつの間にかそのことを失念してしまう。
[cpg]


どう見ても普通の人間にしか見えないからな。忘れてしまうんだ。
[cpg]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina046"]
[ftb]「ご飯食べたら直してあげなよ」
[cpg1]


[OnName name="tokiya"]
[fth]「や、すぐに直しちゃう」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina047"]
[ftb]「箸をくわえながらやらないでよ」
[cpg1]


[plse se="直す"]
―――カチャ、カチャ。チキッ。……ガチャ。
[stse]
[cpg]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina048"]
[ftb]「それにしても…ずいぶんな旧型よね」
[cpg1]


[OnName name="tokiya"]
[fth]「そうだな」
[cpg1]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina049"]
[ftb]「パーツ探すのに苦労しちゃった」
[cpg1]


[OnName name="tokiya"]
[fth]「よくあったな」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina050"]
[ftb]「まね～」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina051"]
[ftb]「直っても動かないかも」
[cpg1]


[OnName name="tokiya"]
[fth]「………ありうる」
[cpg1]


けど、まぁ、その時はその時だし。
[cpg]


[plse se="直す"]
―――カチャ、カチャ。チキッ。
[stse]
[cpg]


[OnName name="tokiya"]
[fth]「よし。これで大丈夫だと思うけど……」
[cpg1]


[OnName name="tokiya"]
[fth]「こんな古い型触ったこともないからな……」
[cpg1]


―――ピ、ピピッ…ピ・ピ、ピピ。
[cpg]


[OnName name="hinagiku"]
[pv b="0" s="Vhina052"]
[ftb]「動きそう？」
[cpg1]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


―――ピ、ピピッ…ガ、ガガ・ピ、ピガ。ガガッ……。
[cpg]


プシュウ……。
[cpg]


[OnName name="tokiya"]
[fth]「ダメそう……だな」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina053"]
[ftb]「そうね」
[cpg1]


あれだけ激しく壊れてたんだ、仕方ないといえば仕方ないんだけどな。
[cpg]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina054"]
[ftb]「諦めたら？もう一回直すにしても明日にしなよ」
[cpg1]


[OnName name="tokiya"]
[fth]「そうだな、明日にするか」
[cpg1]


べつに急いでいるわけじゃない。ゆっくり直せばいいし。
[cpg]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//主人公の部屋、深夜（夜）

*Epsode07|でたぁぁぁぁぁぁぁ！！

[LayerFadeOut layer="0"]
[stbgm time="500"]
[UniBK pattern="tokei3"]
[UniSet bg="主人公の部屋夜布団電気無し" pattern="tokei4"]
[plbgm bg="日常2" time=500]
[label]


―――ガタッ。
[cpg]


[OnName name="tokiya"]
[fth]「……ん？」
[cpg1]


―――ガチャ……ガチャッ。
[cpg]


深夜。何かの気配を感じて、俺はまどろみの中から覚めつつあった。
[cpg]


[OnName name="tokiya"]
[fth]「んうぅ～～ねむ……」
[cpg1]


[OnName name="tokiya"]
[fth]「何の音だ？」
[cpg1]


くっついたままのまぶたを擦って無理やり目を開けてみる。
[cpg]


[OnName name="tokiya"]
[fth]「―――は？」
[cpg1]


しばらくの間ねぼけている予定だった俺の脳は、一気に覚醒し、かつフリーズした。
[cpg]


俺の目の前にいるわけわからん物体がそうさせたのだ。
[cpg]


;//特殊立ち絵
[stbgm time="500"]
[plbgm bg="日常2" time=500]
;ageha_p3_b
[ActorCtr chara="ageha_p3_b" layer="0"]

[OnName name="tokiya"]
[fth]「わあぁーー！？」
[cpg1]


ちょ、まて、待て待て待って。なに、なに、何だこれは！
[cpg]


[OnName name="tokiya"]
[fth]「ひなひなひなひな！」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina055"]
[ftb]「う～ん…あによ～？」
[cpg1]


[OnName name="tokiya"]
[fth]「でたでたでたでた変なの出た！」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina056"]
[ftb]「それはきっと幻覚…ムニャムニャ」
[cpg1]


[OnName name="tokiya"]
[fth]「げ、幻覚？　そうなのか……いやいや！　んなぁわけないだろ！？」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina057"]
[ftb]「うるさいな…眠いよぅ～」
[cpg1]


[OnName name="tokiya"]
[fth]「起きろ、とにかく起きろ！」
[cpg1]


;/////////////////////////////////////////////////////////////////////////////////////////////////////////
;//立ち絵アップ
;ageha_p4_b
[ActorCtr chara="ageha_p4_b" layer="0"]

[OnName name="tokiya"]
[fth]「ああっ！　近づいてきた！　歩いてる！？　歩いてズルズルってこっちに来てるよ！」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina058"]
[ftb]「グゥ…」
[cpg1]


[OnName name="tokiya"]
[fth]「寝るな、寝るな！　起きてくれ！」
[cpg1]


[OnName name="tokiya"]
[fth]「うぎゃああぁぁぁぁ～～～」
[cpg1]
[Fload]


;//通常立ち絵切り替え、裸
[stbgm time="500"]
[plbgm bg="日常1" time=500]
;ageha_p3_a
;裸が立つ
;球体が立つ
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
;[label]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「ああぁぁぁ～～～……………ぁれ？」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="hatena"]
[pv b="0" s="Vageha000"]
「………」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「お、え……あれ？」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「―――お前」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]

俺の目の前に立っていたのは、さっきまで直そうとしていた『ドール』だった。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「う、動けたのか……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


;////////////////////////////////////////////////////////////////////////////////////////////////
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="hatena"]
[pv b="0" s="Vageha001"]
「………（こくん）」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

現実を見据えて頭が冷えてきたら、急に恥ずかしくなってきた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「っ～～カッコ悪ぃ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ドール相手にあんなにビビっていたなんて……雛菊が起きなくて逆によかったかもしれない。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

これで起こしてたらボッコボコにされてら。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「えっと…君、名前は？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="hatena"]
[pv b="0" s="Vageha002"]
「………」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「な、名前……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hatena"]
[pv b="0" s="Vageha003"]
「………」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


無視されてるわけじゃないよな。聞こえてないのか。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


やっぱ正常に起動できてなかったか。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;/////////////////////////////////////////////////////////////////////////////////////////////////////

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]




[OnName name="hatena"]
[pv b="0" s="Vageha004"]
「……ま…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「ん？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="hatena"]
[pv b="0" s="Vageha005"]
「ま、ます、た」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


――――――鱒？　増田？
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hatena"]
[pv b="0" s="Vageha006"]
「ます、ます…たー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hatena"]
[pv b="0" s="Vageha007"]
「ます…たー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


……マスター？　この子、マスターって言ってるのか。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「俺は君のマスターじゃないぞ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hatena"]
[pv b="0" s="Vageha008"]
「ますたー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「おい、ちょっと」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


人の話を聞かずに、俺に近寄ってくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode08|認証開始
*EV01

[if exp="f.seen==1"]
[stbgm time=500]
[plbgm bg="日常1" time=500]
[sysbtopt backvisible=false]
[AlphaBG bg="主人公の部屋夜布団電気無し"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[ReMes]
[endif]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="dennsi"]
『認証を開始します』
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「なにっ！？　しまった、認証って……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[stbgm time="500"]
[plbgm bg="Hシーン" time=500]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="hatena"]
[pv b="0" s="Vageha009"]
「愛華羽、の、ますたー」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「そっか、名前アゲハって言うのか……違う！　今はそれどころじゃ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「うわっ！？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


下半身を（しかもピンポイントに大事な部分）触られてゾクッとしてしまった。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha010"]
[fta]「ますたー、にんしょうを」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

そんなこと言われても、困るって。ドールとの認証って……だって…。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「できん、できん。してたまるかッ！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="dennsi"]
『強制モードに移行します』
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

何ですと！？
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha011"]
[fta]「にんしょうを、かいしします」
[cpg1]
[eval exp="f.A=0"]
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//フェラ

[LayerFadeOut layer="0"]
[UniSet bg="hblkout" pattern="tokei3"]
[label]


[OnName name="tokiya"]
[fth]「あだだだだっ、ちょ…タンマ、タンマ」
[cpg1]


強引に俺を襲ってきた『ドール』アゲハ。
[cpg]


俺の抵抗も虚しく……強制モードに突入した状態では勝てるはずもなく、簡単に組み伏せられてしまった。
[cpg]


アゲハは俺の上にまたがり、ごそごそと何かを始めた。
[cpg]


―――――ジイィィィ。
[cpg]


[OnName name="tokiya"]
[fth]「おい、こら。ズボンを脱がすな！」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha012"]
[fta]「………」
[cpg1]


[OnName name="tokiya"]
[fth]「モノを取り出すな！」
[cpg1]


そう言いつつも、この後の展開に多少期待してしまっている俺。……悲しいかな男の性。
[cpg]
[Fload]


[AlphaBK]
[VisibleMes]
[eval exp="sf.sev_03=0"]
[eval exp="sf.sev_03=1"]
[if exp="sf.kon==0"]
[UniEV3 bg="ev_03" pattern="nami"]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[UniEV3 bg="ev_03_b" pattern="nami"]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha013"]
[fta]「ちゅる……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]



[OnName3 name="tokiya"]
[fth]「っう！」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


予想したとおり、アゲハは俺のペニスに舌を這わせ始めた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]



[OnName3 name="ageha"]
[pv b="0" s="Vageha014"]
[fta]「ちゅぱ、ぺろ……あ、んっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


脱がされ否応なく晒されたイチモツを、明らかにロリっ子が舐めているこの光景。………犯罪？
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha015"]
[fta]「ちゅっ、ちゅる…ちゅぅちゅぅ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha016"]
[fta]「あむ…はむ、んっちゅ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


相手がドールだと分かってはいるが、伝わってくる快感は本物なわけで、抵抗することができない。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha017"]
[fta]「じゅ、ちゅ、ぺろっ……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「くっ……ちょっと、おい」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


俺の話なんて聞いていないアゲハは、肉棒を指でなであげる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]

ペニスは何だかんだ言っておきながら、与えられる刺激と快楽に我慢できなくなったようで。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03=0"]
[eval exp="sf.ev_03=1"]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="sf.ev_03_b=0"]
[eval exp="sf.ev_03_b=1"]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]

もう待てません！　と反り返っていた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha018"]
[fta]「ふわぁ…あ、はぁ、ぺろっ……ちゅる」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


熱く、荒々しい呼吸が直接モノにかかってきて、ゾクゾクしてしまう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


（そういえば、ここ最近は……）
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


久しぶりの感覚に、俺の下半身は普段より過敏に反応した。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha019"]
[fta]「ちゅぅ、はあ…うん、んんっ……ちゅ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha020"]
[fta]「ぴちゃ……んむ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

ちろちろと小さい舌を伸ばしてあちこちを舐めてくる。
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


素体が小柄に作られているため全てのサイズがミニマム。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


しかし、それでも一生懸命に奉仕してくれている。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha021"]
[fta]「ちゅう、ちゅう……ちゅぱ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


まるで赤ん坊がミルクを吸うみたいにモノに吸い付いてくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


更には亀頭を舌で包むように舐めたり、手も休まずに動かして根元を刺激してくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha022"]
[fta]「ちゅばっ…ん、ふぁぅ…んぐ、ちゅ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]



普通はぎこちないはずだが、この子もドールだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


その辺はちゃんと旧式でもプログラムされているらしく……その舌技は熟練されていた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「くうっ！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


つまり、ものすごく気持ちいいってことだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「あ、そこ……もっとしてくれ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


与えられる快楽に耐え切れず、そんなお願いが口から飛び出してしまう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha023"]
[fta]「はい…あむ、ひゃむ……あ、ちゅぷ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha024"]
[fta]「じゅるるっ……はう、んっ…ちゅうぅ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha025"]
[fta]「んくっ、ちゅう…じゅ、あむっ…ちゅる」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


下から上に、上から下にと筋に沿って舌を滑らせてくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


玉の裏までもムラなく丁寧に快楽を与えてきた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

このままだと……やばい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha026"]
[fta]「はむっ…むぐ、んぐっ…ぢちゅぅ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

唾液をたっぷりと滴らせてくるため、モノがてらてらと輝いて見える。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


滑りもよくなって、単純な手コキの動作でも普通の何倍も感じてしまう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha027"]
[fta]「あむっ、むぐっ、んっ…ちゅる…じゅるぅ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

さらには亀頭をまるごと口に押し込んで愛撫してくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

アゲハの口の中は、熱くてぬめっていて、舌はやわらかい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


気持ち良すぎてぞくぞくしてしまう。モノをいっぱいに咥えて必死に頭を動かす。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「うっ、やば……い」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


薄かった射精感が、だんだんと明確になりペニスの先端がより膨張していく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha028"]
[fta]「れろっ……ちゅぶっ、あむ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]

小さな口だが肉棒を咥えこみ、尿道に舌をいれたりして少しも休ませてくれない。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


我慢できないのが本音だ。このまま口内に発射して楽になりたい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha029"]
[fta]「はっ、はぁ…ちゅぴ、ぢゅ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


けど、そんなことをするわけには……。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha030"]
[fta]「じゅるる、ぢゅる、ぴちゃ……はぅっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


……ああ、やっぱ無理そう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「くっ、やばい……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=2"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=1"]
[endif]
[eval exp="sf.load=0"]
[endif]


;////////////////////////////////////////////////////////////////////////////////////////////////////
[if exp="sf.kon==0"]
[Flash2 bg="ev_03_a"]
[eval exp="sf.ev_03_a=0"]
[eval exp="sf.ev_03_a=1"]
[eval exp="f.B=4"]
[endif]

[if exp="sf.kon==1"]
[Flash2 bg="ev_03_c"]
[eval exp="sf.ev_03_c=0"]
[eval exp="sf.ev_03_c=1"]
[eval exp="f.B=3"]
[endif]
[label]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


――――――びゅびゅっ、どぴゅ！　どぴゅぴゅ、びゅくくぅ！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha031"]
[fta]「んぶ、あぐっ、んんんっ……はぶぅ」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


――――――ぴゅっ、ぴゅ…びゅるっ！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


勢いよく噴出される精液。溜まりに溜まっていたため量がすごいことになっている。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]



それがアゲハの顔に降りかかってドロドロに汚してしまった。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha032"]
[fta]「ふはぁ……ん、ぁつ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「す、すまん…大丈夫か？」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha033"]
[fta]「………へいき」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「そ、そうか…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


何事もなかったように振舞うアゲハ。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]

彼女にとってはこれもプログラムのうちのことで、何でもないのか。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


まぁ、知っていたことではあるが。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha034"]
[fta]「にんしょうを、つづけます」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="tokiya"]
[fth]「まだするのか！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_03_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=4"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_03_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=3"]
[endif]
[eval exp="sf.load=0"]
[endif]

;////////////////////////////////////////////////////////////////////////////////////////////
;//座位

[UniBK pattern="migi"]
[UniSet bg="主人公の部屋夜布団電気無し" pattern="migi"]
[ReMes]
[eval exp="f.B=0"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「わかった、わかったから……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

再び俺の自由を奪おうとにじり寄ってくるアゲハを静止してなだめる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

また関節を極められたら、たまったもんじゃない。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「言うこと聞くから」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

それでやっと彼女は大人しくしてくれた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

実際、今の俺はもう抵抗する気なんて全くなかったのだ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

何ていうか…あそこまでされると、流石に中途半端で止められなくなる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「こっち来て」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

俺はアゲハを抱えて膝の上に座らせる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]


[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha035"]
[fta]「ますたー、にんしょうを……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「ああ、分かってるよ」
[cpg1]

[eval exp="f.A=0"]

[LayerFadeOut layer="0"]
[UniSet bg="hblkout" pattern="tokei1"]
[label]

さほど開拓されていない、未熟な秘裂に肉棒をあてがう。
[cpg]

そのまま腰を進めようと思ったが、戸惑った。
[cpg]

しかし、目の前にいるのは、れっきとした『ドール』だ。
[cpg]

ロリ体型をしていても、ドールである以上生殖については何ら問題は無い。
[cpg]

[OnName name="ageha"]
[pv b="0" s="Vageha036"]
[fta]「ますたー？」
[cpg1]

それでも、少しだけ…やっぱ……何か…罪悪感のようなものが。
[cpg]

[OnName name="tokiya"]
[fth]「……入れるぞ」
[cpg1]

結局、俺はカチカチに硬くなったペニスをアゲハの膣内めがけて挿入した。
[cpg]

[AlphaBK]
[VisibleMes]
[eval exp="sf.sev_04=0"]
[eval exp="sf.sev_04=1"]
[if exp="sf.kon==0"]
[UniEV3 bg="ev_04" pattern="bakuhatu"]
[eval exp="sf.ev_04=0"]
[eval exp="sf.ev_04=1"]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[UniEV3 bg="ev_04_b" pattern="bakuhatu"]
[eval exp="sf.ev_04_b=0"]
[eval exp="sf.ev_04_b=1"]
[eval exp="f.B=5"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


――――――ずぶぶぶぅぅっ！
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha037"]
[fta]「ひぃひゃあううぅっ！」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「うぐっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

つ、キツイ……予想したとおりだけど、やっぱアゲハの中は狭かった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

細い膣道にギチギチに俺の肉棒が詰め込まれている感じで、あちこち擦れて少し痛い。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

それでも、現状数センチしか中に入っていない。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha038"]
[fta]「あ、あ、あ……ふぁ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha039"]
[fta]「んあぁっ……ぐっ…ひう」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

成熟しきっていないアゲハのアソコは、異物の侵入を全力で拒んでくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

きゅっ、きゅと音を立ててモノを締め上げて……熱くて、肉ヒダが絡み付いていくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha040"]
[fta]「ま、すたー…ふつうよりも、大きいです…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「そうか？　普通だろ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

体が小さいからそう感じるんだろう。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha041"]
[fta]「あん、ん、あっ……んくっ、ひゃぅ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha042"]
[fta]「うぁっ…んあ、ああ、あああっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

相手が『ドール』だということを忘れてしまいそうなほど、全てがリアルに感じた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

腰に力を入れ直して、肉棒の先端を一番奥まで到達させる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha043"]
[fta]「あ、やっ…そこ、は」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――ごりっ！　ぐりゅうっ！
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha044"]
[fta]「あひゃうぅぅぅっ！　あ、や、あは……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha045"]
[fta]「ふぁ…ますたーの、あっ……ん、おおきすぎ、んゅ…です」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

小さな秘裂は、俺自身によって無理やりに広げられてパックリと俺のペニスを咥えこんでいる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

……いい眺めでは、ある。当たり前のことだが、正直興奮する。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

そのため、自然と腰を打ち付ける速度が上がってきていた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha046"]
[fta]「はう、あ、あ、あっ…ひゃ、んぐうっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha047"]
[fta]「はふ、はう、あひゃ…ん、ん、んんっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

プログラム上の理由でか、こんな時でも平静を保とうとしているアゲハ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

唇を噛んで、押し寄せる快楽に耐えようと必死になっている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha048"]
[fta]「んんっ…ひぃひゃう、あっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha049"]
[fta]「あぁっ…つ、つよぃ…ますたー、よわく…あっ、ゆっくり…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――じゅぶぅ、じゅく…ぐちゃ、ちゅ……。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha050"]
[fta]「ふひゃ！　あぁ…っぅ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

膣口にずぶずぶと音を立てながら、入り込んでいく俺の肉棒。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

時間が経つにつれて慣れてきたのだろう、ドールといえどきちんと感じている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha051"]
[fta]「いひゃぁぁ……あ、だめ……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

アゲハは腰を打ち付ける度に、身体をのけぞらせて艶かしい声を上げている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

結合部分からはぬらぬらと輝く粘っこい液体が滴ってきていた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha052"]
[fta]「あっ…あふ、あふれて…きちゃう…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

アゲハのおかげで潤滑がかなりよくなった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

肉棒が膣口に沈み込んでいくのがかなりスムーズになって抜き差しするのがより快感を増した。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha053"]
[fta]「んぐう…あっ、や、ひゃ…ん、ふ、ふかいですっ……ますたー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

下から突き上げているため、モノの侵入具合が直に分かるはずだ。そのため余計に感じている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha054"]
[fta]「んああっ、はぁ…っう」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

ゆっくりとギリギリまでペニスを引き抜いて、後はまた一気に戻していく。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha055"]
[fta]「ああっ…ふぐぅ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha056"]
[fta]「くっ…奥が…いっぱいです、これ以上は……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

押しこんだモノを深く飲み込んで、膣はざわざわしたヒダ達が絶え間なく絡み付いてくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

実際、とっくに限界だった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「ぐっ…もう、やばい」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha057"]
[fta]「ま、ますたー…にんしょうは…中に」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「っう…わかった」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

こみ上げてくる二度目の射精感。終わりにむかって一気にスピードを上げていく。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="ageha"]
[pv b="0" s="Vageha058"]
[fta]「ああっ、ます、たー……ますたー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「もう…出すぞっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=6"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=5"]
[endif]

[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[Flash2 bg="ev_04_a"]
[eval exp="sf.ev_04_a=0"]
[eval exp="sf.ev_04_a=1"]
[eval exp="f.B=8"]
[endif]
[label]

[if exp="sf.kon==1"]
[Flash2 bg="ev_04_c"]
[eval exp="sf.ev_04_c=0"]
[eval exp="sf.ev_04_c=1"]
[eval exp="f.B=7"]
[endif]
[label]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

――――――――びゆく、びゅくうぅ！　どぷっ、どぶっ、どびゅびゅびゅぅぅっ！！！
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha059"]
[fta]「ふゃあああぁぁぁぁっ！！！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

――――――――ずぴゅ、どぴゅう！びゅーっ、びゅくぅ！！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha060"]
[fta]「あひゃあぁっ…あ、あ、やっ……んぁ」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha061"]
[fta]「あ、ふぁ……はぁ、はぁ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

二度目の射精だが、驚くほど大量の精液がペニスから飛びだした。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="tokiya"]
[fth]「はぁ、はぁ…ふぅ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

背筋がぶるっと震えて最後の射精が終わった。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


――――ごぷっ、ごぽ。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName3 name="ageha"]
[pv b="0" s="Vageha062"]
[fta]「あっ！　ひゃぅんっ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

モノを引き抜くと、吐き出された白濁液がタテ筋からあふれ出してきた。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

体を襲う脱力感、流石に二連続での行為は疲れる。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName3 name="dennsi"]
『認証を確認しました』
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]



[OnName3 name="ageha"]
[pv b="0" s="Vageha063"]
[fta]「……ますたー」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


ドールとの認証…それは膣出しによるセックス。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


詳しく知らないけど、精液に含まれる成分によって登録をするらしい。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


そんなわけで、結局…俺は二体の『ドール』のマスターになってしまったわけだが。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]



（……雛菊には何て説明したらいいんだ？）
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_04_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=8"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_04_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=7"]
[endif]
[eval exp="sf.load=0"]
[endif]


;シーン此処まで
[eval exp="f.B=0"]
[eval exp="sf.ev01=0"]
[eval exp="sf.ev01=1"]
[SceneEnd]
[label]
[Fload]
;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//～翌日～(朝)
*Epsode09|朝一の俺

[stbgm time="500"]
[UniBK pattern="tokei3"]
[ReMes]
[UniSet bg="主人公の部屋朝布団" pattern="tokei4"]
[plbgm bg="日常3" time=500]
[label]


―――チュンチュン。
[cpg]


[OnName name="tokiya"]
[fth]「あふ……」
[cpg1]


もう朝か……。休みってあっという間に終わるんだよな。今日は平日だったっけ？　
[cpg]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina059"]
[ftb]「おはよう」
[cpg1]


[OnName name="tokiya"]
[fth]「ん、おはよ…ふわぁ～～」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina060"]
[ftb]「ずいぶん眠そうね」
[cpg1]


[OnName name="tokiya"]
[fth]「あぁ…昨日の疲れが抜けてないのかも」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina061"]
[ftb]「そうね～昨日はすいぶん頑張ったみたいね」
[cpg1]


[OnName name="tokiya"]
[fth]「ん？　ああ……」
[cpg1]


何だか機嫌が悪いのか、言葉に棘がある。
[cpg]


[OnName name="tokiya"]
[fth]「雛菊、どうかしたか？」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina062"]
[ftb]「あんたこそ、どうかしたの？　そんな格好で」
[cpg1]


あ、あんたって……。いつから俺のことをそんな風に呼ぶようになったんだ。
[cpg]


[OnName name="tokiya"]
[fth]「……え？」
[cpg1]


すぐに雛菊が言ったことが頭の中を駆け巡った。『そんな格好で』
[cpg]


どんな格好で？
[cpg]


恐る恐る自分の体を見下ろしてみる。
[cpg]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina063"]
[ftb]「寒くなかった？　裸で寝て…」
[cpg1]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


―――しまったあぁぁ！　俺スッポンポンじゃねぇかよ！？
[cpg]


[stbgm time="500"]
[plbgm bg="日常2" time=500]

;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina064"]
[ftb]「寝てる間に服でも脱いだの？」
[cpg1]


[OnName name="tokiya"]
[fth]「………」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina065"]
[ftb]「長い間、時夜とは一緒にいるけど…」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina066"]
[ftb]「まさか、あんたにそんな性癖みたいなのがあるとは
…私も知らなかった」
[cpg1]


[OnName name="tokiya"]
[fth]「いや、これは……ね」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina067"]
[ftb]「あ、後もう一つ」
[cpg1]


チョイチョイとさらに下を指す雛菊。俺の視点をそっちに向けると……。
[cpg]


[OnName name="ageha"]
[pv b="0" s="Vageha064"]
[fta]「く～～すぅ…すぅ……」
[cpg1]


裸のまま……アゲハが寝ていた。
[cpg]


[OnName name="hinagiku"]
[pv b="0" s="Vhina068"]
[ftb]「誘拐、監禁、強姦…そしてロリコン」
[cpg1]


;hina_p2_b
[ActorCtr chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina069"]
[ftb]「素晴らしいですね、ご主人様の趣味は」
[cpg1]


[OnName name="tokiya"]
[fth]「いや、この子はドールで……」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina070"]
[ftb]「ふん…そんなのは見れば分かるわよ」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina071"]
[ftb]「私も同じドールの端くれ。一目見ればそれぐらいは分かる」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina072"]
[ftb]「問題は…」
[cpg1]


;hina_p1_g
[ActorCtr chara="hina_p1_g" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina073"]
[ftb]「時夜～～あんた、認証したでしょう！？」
[cpg1]


うわちゃ～～バレてら……。
[cpg]


[OnName name="hinagiku"]
[pv b="0" s="Vhina074"]
[ftb]「私がいながら、他のドールと…」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha065"]
[fta]「ん、んぅ…」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina075"]
[ftb]「あら…？」
[cpg1]


そしてこのタイミングで、アゲハは目を覚ますし……。
[cpg]


[OnName name="ageha"]
[pv b="0" s="Vageha066"]
[fta]「んゅぅ…」
[cpg1]


寝ぼけ眼できょろきょろ周りを見渡してから俺に向き直る。
[cpg]
[Fload]


;ageha_p3_a
[move layer="1" path=(-140,0,255) time=1200]
[wm]



[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
;[label]
[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]


[if exp="sf.load==1"]
[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha067"]
[fta]「ますたー、おはよ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「あ、うん。おはよう」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

抑揚の無い声に表情で、俺に挨拶をしてくる新たなドール、アゲハ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="hinagiku"]
[pv b="0" s="Vhina076"]
[ftb]「マスターって…ちょっと、時夜。何してんのよ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「いや、何って言われても……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;hina_p1_f
[ActorLft chara="hina_p1_f" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina077"]
[ftb]「やっぱり認証したの？したんでしょ。じゃなきゃこの子がそう呼ぶはずないもんね」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「まて、雛菊。落ち着け」
[cpg1]

;ageha_p4_a
[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha068"]
[fta]「ますたー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ぴったりと俺にくっついてくるアゲハ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ああ…何だこれ。もう朝から疲れることばっかりだ……。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

（学園行こうかな）
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

うん、そうだな。そうしよう……。俺は一人立ち上がって服を着始めた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;//////////////////////////////////////////////////////////////////////////////////////////////
*Epsode10|学園へGo Escape

[stbgm time="500"]
[plbgm bg="日常3" time=500]

;hina_p2_b
[ActorLft chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina078"]
[ftb]「ちょっと、話はまだ終わってないわよ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「いやほら。学園に行かないとだな……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p4_a" layer="0"]
[eval exp="f.A=4"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p8_a" layer="0"]
[eval exp="f.A=3"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

手早く着替えを済ませる。荷物をまとめて身支度を整える。
[cpg]

;ageha_p3_a
[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
;[label]
[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]


[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha069"]
[fta]「どこ、行く？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「ん？　ああ…学園に行くんだよ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha070"]
[fta]「……がくえん？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「そう、勉強する所だよ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha071"]
[fta]「わたしも…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;hina_p1_h
[ActorLft chara="hina_p1_h" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina079"]
[ftb]「時夜、早く行こう！」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「な、何だよ急に」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

さっきまでブツブツ文句を言っていたのに、俺を引っ張って行こうとする。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;hina_p2_g
[ActorLft chara="hina_p2_g" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina080"]
[ftb]「あんたは、残ってなさい！」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

雛菊がアゲハの方をむいて言い放つ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha072"]
[fta]「ますたー…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

そんでアゲハは俺の方をむいて付いて来たそうな顔をする。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「……一緒、に行くか」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha073"]
[fta]「……（こくん）」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;hina_p2_b
[ActorLft chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina081"]
[ftb]「ちょっと」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「仕方ないだろ。一人だけ置いていくわけにはいかないし」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha074"]
[fta]「ますたー」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「ん、行くか……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorRit chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorRit chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=140"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

;hina_p1_b
[ActorLft chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina082"]
[ftb]「ちょ、ちょっと～」
[cpg1]



;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;//学園廊下（昼）
*Epsode11|この街の通常風景

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="migi"]
[UniSet bg="廊下昼" pattern="migi"]
[plbgm bg="日常1" time=500]
;hina_p2_a
;ageha_p1_a
[eval exp="f.A=0"]
[ActorRit chara="ageha_p1_a" layer="0"]
[ActorLft chara="hina_p2_a" layer="1"]
[label]


俺が通っている学園はどこにでもある普通のものと変わらない。見た目上は。
[cpg]


けど、校門をくぐるとそこは……余所から来た人には理解しがたいであろう光景が広がっている。
[cpg]


[OnName name="dorua"]
[ftc]「お早うございます」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、おはようございます」
[cpg1]


;hina_p1_c
[ActorLft chara="hina_p1_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina083"]
[ftb]「おはよ～」
[cpg1]


[OnName name="dorub"]
[ftc]「お早うございます」
[cpg1]


[OnName name="tokiya"]
[fth]「おはよう」
[cpg1]


多方からドール達の挨拶が飛び交ってくる。これが、他にない特色というか…特殊な点。
[cpg]


学園内には数多の『ドール』が各々の役割を果たしている。
[cpg]


;hina_p2_a
[ActorLft chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina084"]
[ftb]「ほんと、ここは一番ドールが多いわね」
[cpg1]


;ageha_p2_a
[ActorRit chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha075"]
[fta]「いっぱい……」
[cpg1]


[OnName name="tokiya"]
[fth]「そうだな」
[cpg1]


それも当然、この街は『ドール』発祥の地だ。
[cpg]


このドールという存在を、実際学園に導入しているのはここくらいだろう。
[cpg]


人間の補助、子供や家族、種の保存相手……。
[cpg]


詳しく言ったらもっと細かく分かれるが、今ではその使用用途は様々になっている。
[cpg]


この場合、雛菊は種の保存相手……俺の彼女ということ。
[cpg]


普通なら理解しがたいが、それがこの街のデフォルトになっている。
[cpg]


普通の女性もいるし、人間の女の人が好きだって言う人も多い。
[cpg]


だが、『ドール』のほうがいいと言う人もいる。俺もその一人だ……ま、理由は十人十色だが。
[cpg]


;hina_p1_e
[ActorLft chara="hina_p1_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina085"]
[ftb]「遅れるよ？」
[cpg1]


[OnName name="tokiya"]
[fth]「うん」
[cpg1]


三人並んで教室に向かって歩いていく。その時、
[cpg]


[LayerFadeout layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha076"]
[fta]「あっ…」
[cpg1]


―――こけっ。
[cpg]


あ……アゲハが転んだ。
[cpg]


[OnName name="tokiya"]
[fth]「大丈夫か」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha077"]
[fta]「……（こくん）」
[cpg1]


[OnName name="tokiya"]
[fth]「ほら、掴れよ」
[cpg1]


;ageha_p2_a
[ActorRit chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha078"]
[fta]「ありがとう…ますたー」
[cpg1]


[OnName name="tokiya"]
[fth]「いいって」
[cpg1]


;hina_p2_b
[ActorLft chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina086"]
[ftb]「――フンッ」
[cpg1]


[OnName name="tokiya"]
[fth]「歩きづらいか？」
[cpg1]


;ageha_p1_a
[ActorRit chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha079"]
[fta]「…すこし」
[cpg1]


ん～やっぱりか。自信はなかったから、もしかしたらと思ってたんだけど……。
[cpg]


[OnName name="tokiya"]
[fth]「パーツの調整が合ってないか……」
[cpg1]


一度失敗したと思ったら、アゲハはいきなり動き始めた。
[cpg]


不完全な調整で偶然起動したにすぎないから、こういう問題が起きるのも当たり前だ。
[cpg]


[OnName name="tokiya"]
[fth]「ん……」
[cpg1]


また転ばせるわけにはいかない。こうしてれば平気だろう。
[cpg]


[OnName name="ageha"]
[pv b="0" s="Vageha080"]
[fta]「…うん」
[cpg1]


俺が差し出した手を、ぎゅっと握り返してくる。
[cpg]


もう転ばないよう歩幅にも気をつけて、歩き出した。
[cpg]


;hina_p1_b
[ActorLft chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina087"]
[ftb]「――フン、フンッ！」
[cpg1]


;///////////////////////////////////////////////////////////////////////////////////////////////////
;//教室（昼）
*Epsode12|さて、授業を受けましょう

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="ue"]
[UniSet bg="教室昼" pattern="tobira"]
[plbgm bg="日常1" time=500]
[label]


教室に入ると、また違うドールがいる。
[cpg]


個人で連れてきている奴がたくさんいるからだ、俺みたいに。
[cpg]


;hina_p1_b
;ageha_p2_a
[ActorRit chara="ageha_p2_a" layer="0"]
[ActorLft chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina088"]
[ftb]「ちゃんと授業受けなよ」
[cpg1]


[OnName name="tokiya"]
[fth]「分かってる」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina089"]
[ftb]「…じゃ」
[cpg1]


[OnName name="tokiya"]
[fth]「どこ行くんだ？」
[cpg1]


;hina_p2_e
[ActorLft chara="hina_p2_e" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina090"]
[ftb]「ん～そのへんブラついて、他のドールと雑談でもしてる」
[cpg1]


[OnName name="tokiya"]
[fth]「昼には戻って来いよ」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina091"]
[ftb]「うん」
[cpg1]


;ageha_p2_a
[LayerFadeOut layer="1"]
[move layer="0" path=(0,0,255) time=1200]
[wm]
[ActorCtr chara="ageha_p2_a" layer="0"]
[label]


[OnName name="ageha"]
[pv b="0" s="Vageha081"]
[fta]「…いいの？」
[cpg1]


[OnName name="tokiya"]
[fth]「ん、うん。いつもあんな感じだし」
[cpg1]


ほんと、自由奔放でドールに見えない。他のドールと比べると妙に人間臭いし……。
[cpg]


ま、そこがいいんだけどな。実際、俺は雛菊のこと好きだから。
[cpg]


[OnName name="tokiya"]
[fth]「アゲハは一緒に授業受けるか」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha082"]
[fta]「…そうする」
[cpg1]


;////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//教室（夕方）
*Epsode13|グー

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="sita"]
[UniSet bg="教室夕方" pattern="ue"]
[plbgm bg="日常3" time=500]
[label]


[OnName name="hinagiku"]
[pv b="0" s="Vhina092"]
[ftb]「ちょっと、起きて」
[cpg1]


[OnName name="tokiya"]
[fth]「ん……」
[cpg1]


体を揺すられて目を覚ますと目の前には雛菊がいた。
[cpg]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina093"]
[ftb]「寝てたの？」
[cpg1]


[OnName name="tokiya"]
[fth]「知らないうちに…」
[cpg1]


昼にみんなで飯食ったのは覚えてるけど、午後の授業は記憶にない。
[cpg]


[OnName name="tokiya"]
[fth]「アゲハは？」
[cpg1]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina094"]
[ftb]「散歩」
[cpg1]


散歩って…あの体でか。
[cpg]


[OnName name="tokiya"]
[fth]「探して帰るか」
[cpg1]


;///////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode14|ご無沙汰な雛菊
*EV02

[if exp="f.seen==1"]
[stbgm time="500"]
[UniSet bg="教室夕方" pattern="ue"]
[ReMes]
[plbgm bg="日常3" time=500]
[endif]

;hina_p1_i
[ActorCtr chara="hina_p1_i" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina095"]
[ftb]「ねぇ、時夜」
[cpg1]


[OnName name="tokiya"]
[fth]「ん？」
[cpg1]


;hina_p2_i
[ActorCtr chara="hina_p2_i" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina096"]
[ftb]「二人きりだよ？」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、ああ」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina097"]
[ftb]「最近、してないよね」
[cpg1]


この話の流れは、どう考えてもアッチのことだ。
[cpg]


[OnName name="hinagiku"]
[pv b="0" s="Vhina098"]
[ftb]「したくない？」
[cpg1]


[OnName name="tokiya"]
[fth]「……したい」
[cpg1]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//学園内教室（夕）
;//秘所愛撫
[LayerFadeOut layer="0"]
[UniBK pattern="tokei3"]
[VisibleMes]
[stbgm time="500"]
[plbgm bg="Hシーン" time=500]
[UniEV2 bg="ev_05" pattern="tokei3"]
[eval exp="sf.ev_05=0"]
[eval exp="sf.ev_05=1"]
[label]



起きてすぐにこんなことをするのはどうかと思うが……。
[cpg]


俺もその気になってきたので仕方ない。
[cpg]


[OnName2 name="tokiya"]
[fth]「じゃ、遠慮なく」
[cpg1]


雛菊の足を広げさせて、机に座らせる。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina099"]
[ftb]「もう、こういう時だけ強引なんだから」
[cpg1]


文句を言われながら俺は秘所にむかって手をのばす。
[cpg]


[OnName2 name="tokiya"]
[fth]「期待してるくせに」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina100"]
[ftb]「そ、そんなことないわよ」
[cpg1]


―――――ちゅぷ、ちゅくっ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina101"]
[ftb]「あひんっ…」
[cpg1]


パンツの上からでも分かるほど、既にあそこはジットリと濡れてきている。
[cpg]


口ではあんな事を言っておきながら、予想通り。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina102"]
[ftb]「あ、ふぁ…ん、ん、んくっ…ああっ」
[cpg1]


[OnName2 name="tokiya"]
[fth]「やっぱいい声出すなぁ…雛菊は」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina103"]
[ftb]「んぁ、や、ひゃん…だって気持ち、いいんだもん…」
[cpg1]


Ｈする時になると性格が変わったりする人は結構多いけど、雛菊もそのタイプだ。
[cpg]


俺的にはこれが彼女のもともとの性格だと思うんだけどな。
[cpg]


[OnName2 name="tokiya"]
[fth]「まぁ、朝のお詫びも兼ねてイかせてやるから」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina104"]
[ftb]「あ…うん、はぁ…やっ、嬉しい」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina105"]
[ftb]「はひゅう、いっ…ぁ…んぁっ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina106"]
[ftb]「あぅ…はうっ、ああっ…んあ、ふぁ！」
[cpg1]


パンツの上から、スジに沿って指を擦りつけていく。
[cpg]


滴る愛液によってすべりはかなりよくなっているし、
[cpg]


―――――くちゃ、にちゃ…ぴちゃ、ぢゅぼっ。
[cpg]


嫌らしい水音が聞こえてくる。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina107"]
[ftb]「や、はう…っ…あぁ…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina108"]
[ftb]「っく……ん、あふ…あっ、あ、そ、そこっ」
[cpg1]


[OnName2 name="tokiya"]
[fth]「ん？　ここ？」
[cpg1]


雛菊が気持ちよさそうな声をあげたところを重点的に苛めていく。
[cpg]


布が食い込むほど、少し強めに力を入れて
[cpg]


愛撫する。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina109"]
[ftb]「…く、ぁ…あぅ…んんっ…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina110"]
[ftb]「くっ…あ、あ、ふあっ！　ああっ！」
[cpg1]


液でトロトロになった雛菊のアソコ。
[cpg]


まだ直に触ってもいないのに、腰をふるわせて、マンコをヒクつかせている。
[cpg]


さらにスジを執拗に撫で……上についている豆も一緒に刺激してやる。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina111"]
[ftb]「あうんっ、きゃぅ…んはぁ、はっ、や…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina112"]
[ftb]「はぁ、ん、ひああ、くぅ……あはっ」
[cpg1]


やればやるほど大きな嬌声が彼女の口から漏れる。
[cpg]


艶かしい喘ぎ声は俺のエロ心をくすぐり、もっと弄りたくなってしまった。
[cpg]


[OnName2 name="tokiya"]
[fth]「………」
[cpg1]


俺は我慢できなくなって……速攻でパンツを取り払った。
[cpg]


[AlphaEV2 bg="ev_05_a"]
[eval exp="sf.ev_05_a=0"]
[eval exp="sf.ev_05_a=1"]
[label]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina113"]
[ftb]「きゃうっ！」
[cpg1]


何も言わずにいきなりやったので、驚いたようだ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina114"]
[ftb]「あ、ちょ…時夜。そんな…いきなり」
[cpg1]


[OnName2 name="tokiya"]
[fth]「ダメか？」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina115"]
[ftb]「そういうわけじゃ…ないけど」
[cpg1]


[OnName2 name="tokiya"]
[fth]「じゃあ、イイじゃん」
[cpg1]


―――――つぷうぅっ！！
[cpg]


[AlphaEV2 bg="ev_05_b"]
[eval exp="sf.ev_05_b=0"]
[eval exp="sf.ev_05_b=1"]
[label]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina116"]
[ftb]「ひゃああぁぁっ！！！」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina117"]
[ftb]「はうっ、やんっ…ゆびぃ～～はうん、あっ、ん、あぁっ！」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina118"]
[ftb]「ゆび…ぃっ、なか、中に入ってる…」
[cpg1]


直に触れたら、ドッと愛液の量が増して溢れてきた。
[cpg]


[OnName2 name="tokiya"]
[fth]「うわ、すごいなぁ……」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina119"]
[ftb]「あ、あっ…だって…時夜が…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina120"]
[ftb]「ああっ、だめ…クニクニ動かさないで～」
[cpg1]


わざとらしく音をたてて、指を動かし、抜き差しする。
[cpg]


綺麗な桜桃色の亀裂は指の動きに合わせてパクパクと口を開いたり閉じたりと、せわしなく動いている。
[cpg]


まるで生きているみたいだ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina121"]
[ftb]「ああっ、はうぅ…オマンコがぁ…」
[cpg1]


今日の雛菊は、普段と違っている気がする。久しぶりだから、そのせいかな？
[cpg]


オマンコとか言ってるし…でも、興奮するからいい。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina122"]
[ftb]「あっ…んはあっ、やうんっ…気持ちいいよぅ…」
[cpg1]


腰をくねらせて、自身に与えられる快楽を心から楽しんでいる。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina123"]
[ftb]「もっとぉ～～もっとジュポジュポしてぇ…」
[cpg1]


[OnName2 name="tokiya"]
[fth]「はいはい」
[cpg1]


雛菊のお願いどうり、激しく指を動かしてやる。時おりゆっくり、強弱をつけて。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina124"]
[ftb]「っふぅ…とき、や……私、もう…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina125"]
[ftb]「ん、だめ…んくぅ、だめだめぇ…イクっ……あ、ああっ！」
[cpg1]


[Flash2 bg="ev_05_c"]
[eval exp="sf.ev_05_c=0"]
[eval exp="sf.ev_05_c=1"]
[label]


―――――ビク、ビクビククンッ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina126"]
[ftb]「ふひゃぁっ！…あんっ、ひゃぅ！…ん、あ…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina127"]
[ftb]「あ、あ、あはぁ…はふ…」
[cpg1]


限界に達したのか、潮を吹いて雛菊はイってしまったようだ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina128"]
[ftb]「はぁ…ぅ、ふぅ…」
[cpg1]


[OnName2 name="tokiya"]
[fth]「よかったか？」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina129"]
[ftb]「見れば、分かるでしょ…」
[cpg1]


[OnName2 name="tokiya"]
[fth]「はははっ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina130"]
[ftb]「笑うなぁ…」
[cpg1]


;//側位、八橋
;//窓際
[UniBK pattern="nami"]
[UniEV1 bg="ev_06" pattern="nami"]
[eval exp="sf.ev_06=0"]
[eval exp="sf.ev_06=1"]
[label]


雛菊を机から立たせて、窓際に導いてよりかからせる。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina131"]
[ftb]「立ったままするの？」
[cpg1]


[OnName1 name="tokiya"]
[fth]「うん」
[cpg1]


雛菊のアソコがよく見えるように片足を持ち上げ、股を大開き状態にする。
[cpg]


限界まで足を開かせたため秘裂も引っ張られて、口を開けた。
[cpg]


[OnName1 name="tokiya"]
[fth]「準備万端だな、雛菊」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina132"]
[ftb]「う……」
[cpg1]


ジュクジュクになった膣内から、愛液が出て太ももに伝っている。
[cpg]


[OnName1 name="tokiya"]
[fth]「いいみたいだし、早速入れるぞ」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina133"]
[ftb]「あ、う、うん…」
[cpg1]


指で弄っていた時から暴れだしていた、下半身のモノを取り出して雛菊の中に挿入する。
[cpg]


―――――じゅぷううぅぅ！！！
[cpg]


[AlphaEV1 bg="ev_06_a"]
[eval exp="sf.ev_06_a=0"]
[eval exp="sf.ev_06_a=1"]
[label]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina134"]
[ftb]「きゃううんっ！」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina135"]
[ftb]「あう、あうっ…ん、はやぁ…」
[cpg1]


―――――ぬぷっ、ぎゅぷぅっ！　ごぷっ、ずぶぶっ！
[cpg]



[OnName1 name="hinagiku"]
[pv b="0" s="Vhina136"]
[ftb]「んぐう…あ、あっ…あ、はぁ、あぅっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina137"]
[ftb]「ひぃ…はぅ…はぁ、あっ、んっ…」
[cpg1]


[OnName1 name="tokiya"]
[fth]「……ぐっ…」
[cpg1]


膣内にペニスが入った瞬間、強烈な快感が下腹を襲った。
[cpg]


よく解され、男を受け入れる準備ができていた内部は、この上ない刺激で俺を出迎えた。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina138"]
[ftb]「ああっ、んぃ…いいっ…」
[cpg1]


[OnName1 name="tokiya"]
[fth]「やば、気持ちいぃ…」
[cpg1]


絡みついてくる肉ヒダと肉壁。
[cpg]


もう何度も雛菊とはこうして交わってきたが、飽きることはない。
[cpg]


むしろヤる度に……彼女に溺れていく。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina139"]
[ftb]「あふぅっ…ぅん、んっ、あぁ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina140"]
[ftb]「ぐぅ…ひうっ、グリュ…って、あっ…暴れてるぅ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina141"]
[ftb]「中でぇ、ひゃっ…オマンコの中でっ、時夜がっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina142"]
[ftb]「ふぁっ…あん、あん、あ、グリュグリュ…いってる…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina143"]
[ftb]「動いてる…あぁ…ときやぁ～～」
[cpg1]


どんどんと締りが良くなっていき、キュッ、キュッと音をたてる秘裂。
[cpg]


雛菊は感じて、足の指先がピンと伸びている。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina144"]
[ftb]「っう…ひゃう、んく…っあ、ふぁ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina145"]
[ftb]「だめっ、あ…や、すごいっ…ああっ」
[cpg1]


ギチギチに固まったペニスで雛菊の膣道を押し広げていく。
[cpg]


打ち付ける速さを上げて、奥深くまで肉棒を押し込み先端を膣内の壁にぶつける。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina146"]
[ftb]「ひぃっ、あ、ふぅ…あはっ…や、んっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina147"]
[ftb]「う、あ、ふぁ…激し、いっ……」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina148"]
[ftb]「はぁ…と、きやの…まだ、あん、大っきくなってる…」
[cpg1]


[OnName1 name="tokiya"]
[fth]「雛菊の膣が、気持ち良すぎだからだ」
[cpg1]


ヌトヌトと絡み付いてくる雛菊自身。
[cpg]


熱くて、蠢いていて、押しつぶしてきそうなほどペニスを圧迫してくる。
[cpg]


それに力いっぱい対抗する。
[cpg]


雛菊に負けじと腰を振って円を描くように肉棒を動かして刺激していく。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina149"]
[ftb]「ああっ…ゴリゴリってするぅ！　私の中がっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina150"]
[ftb]「ときやの…でっ…ゴリゴリ、されてる」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina151"]
[ftb]「あ、んあっ、だめっ…なかみ、かき混ぜないでぇ」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina152"]
[ftb]「ひゃう…あ、あぅっ…はぁ、んんっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina153"]
[ftb]「んぎゅぅ、ん、あっ…」
[cpg1]


[OnName1 name="tokiya"]
[fth]「うっ……」
[cpg1]


ここまで我慢してきたが、そろそろ俺も耐えられなくなってきた。
[cpg]


果てに向かって……俺は最後の快感を味わいながら、雛菊の中で動いていく。
[cpg]


[OnName1 name="tokiya"]
[fth]「はぁ…そろそろ…出すぞっ」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina154"]
[ftb]「～っう…あ、わ、私もっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina155"]
[ftb]「ふひぃ…あ、もう、くるっ…きちゃうぅっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina156"]
[ftb]「あふゅ、んっ…も、う…またっ……イクうぅぅっ！！」
[cpg1]


[Flash2 bg="ev_06_b"]
[eval exp="sf.ev_06_b=0"]
[eval exp="sf.ev_06_b=1"]
[label]


―――――びゅくくっ！　どぴゅ！　びゆく、びゅくうっ！
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina157"]
[ftb]「あ、やっ……んあああぁぁっっ！」
[cpg1]


―――――ぴゅぴゅっ、どぷ、どぴゅん！
[cpg]


膣奥でペニスが暴発し、先端から白濁の濃い液体が噴きだした。
[cpg]


雛菊の中に俺の精子が大量に注ぎ込まれ、彼女の膣はそれを吸収していく。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina158"]
[ftb]「んっ、んんっ…あ…かはっ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina159"]
[ftb]「はう、あうっ……ふぁ…」
[cpg1]


入りきらずに、結合部分の隙間から精液が滴り落ちている。
[cpg]


[OnName1 name="tokiya"]
[fth]「はぁ…はぁ…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina160"]
[ftb]「はふゅ…はぁ…」
[cpg1]


少しだけ行為の余韻に浸ったあと、俺は肉棒を引き抜くため腰に再度力を入れた。
[cpg]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina161"]
[ftb]「あ…ちょっと、待って…」
[cpg1]


[OnName1 name="tokiya"]
[fth]「どうした？」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina162"]
[ftb]「もうちょっと……このままがいい…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina163"]
[ftb]「時夜の精子が、奥に流れてきてるのが分かるの…」
[cpg1]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina164"]
[ftb]「ぜんぶ、奥に入ってから抜いて？」
[cpg1]


[OnName1 name="tokiya"]
[fth]「わかった」
[cpg1]


[UniBK pattern="sita"]
[AlphaBG bg="hblkout"]
[ReMes]
[label]


このままの格好でここにいるのは少し危険な気がするが……。ま、いいか。
[cpg]


俺は雛菊の気が済むまで交わった格好でいてやることにした。
[cpg]


;シーン此処まで
[eval exp="f.B=0"]
[eval exp="sf.ev02=0"]
[eval exp="sf.ev02=1"]
[SceneEnd]
[label]

;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//教室（夕方）
*Epsode15|さぁ、帰るか

[stbgm time="500"]
[UniBK pattern="sita"]
[UniSet bg="教室夕方" pattern="tobira"]
[plbgm bg="日常1" time=500]
[label]


[OnName name="tokiya"]
[fth]「ふぅ……」
[cpg1]


;hina_p2_c
[ActorCtr chara="hina_p2_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina165"]
[ftb]「あ～すっきりした」
[cpg1]


[OnName name="tokiya"]
[fth]「何だよ、雛菊がしたかっただけかよ」
[cpg1]


;hina_p1_a
[ActorCtr chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina166"]
[ftb]「そんなことないけど」
[cpg1]


俺はまんまとハメられたわけか。
[cpg]


[OnName name="tokiya"]
[fth]「まぁ、いいや。アゲハを探して帰ろう」
[cpg1]


;hina_p2_c
[ActorCtr chara="hina_p2_c" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina167"]
[ftb]「うん」
[cpg1]


こうして三人での新生活はスタートし……一日目が終わっていくのだった。
[cpg]


;/////////////////////////////////////////////////////////////////////////////////////////////////////
;//２日目
*Epsode16|愛華羽の修理

[LayerFadeOut layer="0"]
[stbgm time="500"]
;BK
[UniSet bg="hblkout" pattern="tokei1"]
[label]


～翌日～
[cpg]


今日は俺の中で、一日の予定がたっている。
[cpg]


[plbgm bg="日常1" time=500]
[UniSet bg="主人公の部屋朝" pattern="tokei3"]
[label]


[OnName name="tokiya"]
[fth]「今日は施設に出かけるぞ」
[cpg1]


;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina168"]
[ftb]「何で？」
[cpg1]


[OnName name="tokiya"]
[fth]「アゲハをちゃんと直してやんないとだろ？」
[cpg1]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina169"]
[ftb]「……あっそ」
[cpg1]


;雛ちゃんアウトォォォォォォ
[LayerFadeOut layer="1"]
何を怒ってるんだ？　わけ分からん。
[cpg]


[OnName name="tokiya"]
[fth]「ま、いいか……アゲハ～」
[cpg1]


俺が呼ぶと、隅っこで遊んでいた小さなドールはこちらを振り返った。
[cpg]


;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha083"]
[fta]「ますたー、……よんだ？」
[cpg1]


[OnName name="tokiya"]
[fth]「ああ」
[cpg1]


狭い部屋だから他に行くところないし、呼べば絶対に聞こえるって言うのはある意味便利だ。
[cpg]


[OnName name="tokiya"]
[fth]「出かけよう」
[cpg1]


;ageha_p2_a
[ActorCtr chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha084"]
[fta]「……どこ？」
[cpg1]


[OnName name="tokiya"]
[fth]「えっと…アゲハをちゃんと修理できるところがあるんだ」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha085"]
[fta]「……わたし？」
[cpg1]


[OnName name="tokiya"]
[fth]「行くか？」
[cpg1]


;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha086"]
[fta]「……（こくん）」
[cpg1]


[OnName name="tokiya"]
[fth]「よし。じゃあ、行こう」
[cpg1]


;hina_p2_b
[ActorRit1 chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina170"]
[ftb]「学園はどうするの」
[cpg1]


[OnName name="tokiya"]
[fth]「今日は休みだ」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina171"]
[ftb]「休みじゃなくて、休むんでしょ」
[cpg1]


[OnName name="tokiya"]
[fth]「ほら、時間がもったいないから早く行こうぜ」
[cpg1]


;hina_p1_b
[ActorRit1 chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina172"]
[ftb]「行かない」
[cpg1]


[OnName name="tokiya"]
[fth]「どうして」
[cpg1]


;hina_p2_b
[ActorRit1 chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina173"]
[ftb]「どうしてもッ！」
[cpg1]


さっきから何なんだ、雛菊のやつ。機嫌悪いみたいだなぁ…。
[cpg]


[OnName name="tokiya"]
[fth]「分かったよ。二人で行ってくる」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina174"]
[ftb]「勝手にすれば」
[cpg1]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode17|気配を感じる・・・

[LayerFadeout layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="migi"]
[UniSet bg="通学路朝" pattern="migi"]
[plbgm bg="日常1" time=500]
[label]


アゲハの手を引いて、施設への道を歩いていく。
[cpg]


[OnName name="tokiya"]
[fth]「もう少しで着くぞ」
[cpg1]


;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha087"]
[fta]「……うん」
[cpg1]


ちゃんと直せたらいいな。ずいぶん旧型だから難しいだろうけど…そこは何とかしないとな。
[cpg]


[LayerFadeOut layer="0"]
[ActorRit chara="hina_p2_a" layer="0"]
[move layer="0" path=(-600,0,0) time=1200]
[wm]
[label]


―――コソコソッ。
[cpg]


……ん？
[cpg]


―――コソコソ。
[cpg]


……あれ？　今、確か…。
[cpg]



[OnName name="tokiya"]
[fth]「………」
[cpg1]


;ageha_p2_a
[LayerFadeOut layer="0"]
[image layer="0" top=0 left=0 page=fore opacity=255 visible=true storage="black"]
[LayerFadeOut layer="0"]
[ActorCtr chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha088"]
[fta]「ますたー？」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、うん…行くか」
[cpg1]


……気のせいか。雛菊が居たような気がしたんだけど。
[cpg]


[LayerFadeOut layer="0"]
;hina_p1_b
[ActorLft chara="hina_p1_b" layer="1"]
[move layer="0" path=(600,0,0) time=1200]
―――コソ、コソッ。
[wm]
[cpg]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//施設
*Epsode18|ドール総合専門施設

[LayerFadeOut layer="0"]
[image layer="0" top=0 left=0 page=fore opacity=255 visible=true storage="black"]
[LayerFadeOut layer="0"]
[UniSet bg="hblkout" pattern="tokei1"]
[label]


[OnName name="tokiya"]
[fth]「さぁ、着いたぞ」
[cpg1]


目の前に建っている巨大な建物。
[cpg]


ちょいと近未来的なこの建物が、『ドール』総合専門施設。
[cpg]


簡単に言うと…研究所とか、ドールのパーツとか、ドール専用の病院とか、そういうものがある所だ。
[cpg]


[OnName name="tokiya"]
[fth]「中に入ろう」
[cpg1]


ここを初めて見た人間は大概決まったリアクションをとる。
[cpg]


[UniSet bg="施設昼" pattern="tobira"]
[label]


;ageha_p1_b
[ActorCtr chara="ageha_p1_b" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha089"]
[fta]「ふわぁ……」
[cpg1]


目をぱちくりさせて、開いた口が塞がらないというのが一般的なスタイルだ。
[cpg]


アゲハも例外なく、同じような反応をしている。少し薄めだが。
[cpg]


内部はかなり広く作られている。俺も初めて来た時は驚いたよなぁ。
[cpg]


何か懐かしい思い出だ。
[cpg]


（確かここに来たのは雛菊を……）
[cpg]


―――コソコソ。
[cpg]


[LayerFadeOut layer="0"]
[OnName name="tokiya"]
[fth]「……ん？」
[cpg1]


まただ。さっきから誰かに見られてる気がしてたけど……。
[cpg]


気のせいじゃないのか。
[cpg]


誰かがこっちを見張っている？
[cpg]


;hina_p1_b
[ActorCtr chara="hina_p1_b" layer="1"]
―――コソ、コソッ。
[move layer="0" path=(0,0,0) time=500]
[wm]
[cpg]


[OnName name="tokiya"]
[fth]「……っ」
[cpg1]


今、微かに見えたのは、たぶん雛菊な気がする。
[cpg]


（何やってんだ、あいつ）
[cpg]


ソイツが隠れている所まで、一気に走って近づく。
[cpg]


[OnName name="tokiya"]
[fth]「雛菊」
[cpg1]


;hina_p1_h
[ActorCtr chara="hina_p1_h" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina175"]
[ftb]「わっ！？」
[cpg1]


俺の行動が予想外だったのだろう、かなり驚いていた。
[cpg]


バレるとか考えてなかったんだろうな。
[cpg]


[OnName name="tokiya"]
[fth]「―――何してんだ、こら」
[cpg1]


;hina_p2_d
[ActorCtr chara="hina_p2_d" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina176"]
[ftb]「えっと…」
[cpg1]


;ageha_p1_a
[OnName name="ageha"]
[pv b="0" s="Vageha090"]
[fta]「……すとーかー」
[cpg1]


[ActorLft chara="ageha_p1_a" layer="1"]
;hina_p1_g
[move layer="0" path=(140,0,255) time=1200]
[wm]
[ActorRit chara="hina_p1_g" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina177"]
[ftb]「違うわよ！」
[cpg1]


だったら何でコソコソ後を尾けてきたんだ。
[cpg]


;hina_p2_b
[ActorRit chara="hina_p2_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina178"]
[ftb]「私も偶然、ここに用事が…」
[cpg1]


[OnName name="tokiya"]
[fth]「最初から一緒に来ればいいだろ」
[cpg1]


;hina_p1_b
[ActorRit chara="hina_p1_b" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina179"]
[ftb]「だ、だって…だって…」
[cpg1]


ちらりとアゲハの方を見て、俯く雛菊。いったいどうしたんだ。
[cpg]


[OnName name="tokiya"]
[fth]「何でもいいら、一緒に行くか」
[cpg1]


[OnName name="hinagiku"]
[pv b="0" s="Vhina180"]
[ftb]「…う、うん」
[cpg1]


;/////////////////////////////////////////////////////////////////////////////////////////////////////
;//店
*Epsode19|旧型ドール

;hina_p2_a
;ageha_p1_a
[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[AlphaBK]
[UniSet bg="施設昼" pattern="migi"]
[ActorRit chara="hina_p2_a" layer="0"]
[ActorLft chara="ageha_p1_a" layer="1"]
[label]


[OnName name="tokiya"]
[fth]「えっと、この子のメンテナンスして欲しいんですけど……」
[cpg1]


[OnName name="tennsyu"]
[ftc]「えー！？このドール？ん～それはちょっと」
[cpg1]


[OnName name="tokiya"]
[fth]「どうしてですか？」
[cpg1]


[OnName name="tennsyu"]
[ftc]「その子ちょっと型古すぎるよ。かなり初期型だね……直せる人はそう多くないよ」
[cpg1]


[OnName name="tokiya"]
[fth]「そんな……」
[cpg1]


[OnName name="tennsyu"]
[ftc]「どうしてもって言うなら預かるけど……正直誰がやっても大差ないと思うよ」
[cpg1]


[OnName name="tennsyu"]
[ftc]「それならパーツ買って自分で直してあげた方が……」
[cpg1]


[OnName name="tokiya"]
[fth]「あ、はい……」
[cpg1]


;////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//帰り道
[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="migi"]
[UniSet bg="通学路朝" pattern="tobira"]
[plbgm bg="日常1" time=500]
[label]


;hina_p2_b
;ageha_p1_a
[ActorRit chara="hina_p2_a" layer="0"]
[ActorLft chara="ageha_p1_a" layer="1"]
[label]


[OnName name="hinagiku"]
[pv b="0" s="Vhina181"]
[ftb]「専門家って言っても当てにならないわね～」
[cpg1]


[OnName name="tokiya"]
[fth]「仕方ないだろ」
[cpg1]


;hina_p1_a
[ActorRit chara="hina_p1_a" layer="0"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina182"]
[ftb]「でも、どうするの？」
[cpg1]


[OnName name="tokiya"]
[fth]「自分で何とかする……」
[cpg1]


実際、もうそれ以外に手はなさそうだし。
[cpg]


これからの事を考えながら、家にむかって歩いていく……。
[cpg]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
;//３日目
*Epsode20|セルフメンテナンス

[LayerFadeOut layer="0"]
[LayerFadeOut layer="1"]
[stbgm time="500"]
[UniBK pattern="tokei1"]
[UniSet bg="主人公の部屋昼" pattern="tokei1"]
[plbgm bg="日常1" time=500]
[label]


～翌日～
[cpg]

;hina_p2_a
[ActorCtr chara="hina_p2_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina183"]
[ftb]「ちょっと出かけてくるね」
[cpg1]


[LayerFadeOut layer="1"]
[OnName name="tokiya"]
[fth]「あいよ～」
[cpg1]


;ageha_p1_a
[ActorCtr chara="ageha_p1_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha091"]
[fta]「……いってらっしゃい」
[cpg1]


[OnName name="ageha"]
[pv b="0" s="Vageha092"]
[fta]「……どこに行ったの？」
[cpg1]


[OnName name="tokiya"]
[fth]「さあ……」
[cpg1]


どこに行ったことやら。
[cpg]


けど、今日はアゲハと二人なのか。
[cpg]


何して過ごすかな……。
[cpg]


[OnName name="tokiya"]
[fth]「そうだ」
[cpg1]


アゲハのメンテナンスしないといけないな。
[cpg]


[OnName name="tokiya"]
[fth]「アゲハ、調整するからこっち来な」
[cpg1]


;ageha_p2_a
[ActorCtr chara="ageha_p2_a" layer="0"]
[OnName name="ageha"]
[pv b="0" s="Vageha093"]
[fta]「……うん」
[cpg1]
[Fload]


;/////////////////////////////////////////////////////////////////////////////////////////////////////
;アゲハ裸に

;ageha_p3_a
[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――カチャ、カチャ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

結局、施設では修理できなかった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ショップの店主に言われたとおり、俺が自分で何とかするしかないだろう。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ま、たまに何でこんなことしてるんだろ…って思うけど。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

乗りかかった船だから仕方ない。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――カチャ、カチャ。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「それにしても」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ぺったんこだな、アゲハの胸。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

けど、これはこれでそそられるモノがある。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「………」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

やば……。恥ずかしながら興奮してきた。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha094"]
[fta]「……ときや、どうしたの？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「え、いや。何でもない」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha095"]
[fta]「……ぼっきした？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「あ、え、んと…いや…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

ずばり言い当てられたのとアゲハが勃起なんて言葉を使ったのがはずかしくてドモってしまう。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="ageha"]
[pv b="0" s="Vageha096"]
[fta]「……どーぞ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName name="tokiya"]
[fth]「どーぞって」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

そんなこと言われても……。駄目だろう、ここでやったら。
[r]
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;※選択肢
;１、我慢できなくなってきた……。
;２、いやいや、そんなことは……俺には雛菊がいるし。

[history output=false]
;選択肢を出す位置の指定
[position layer=message1 left=217 top=229 width=356 height=123 visible=true]
[position layer=message1 frame="選択肢ウィンドウ" marginl=30 margint=30 marginr=0 marginb=0]
;				↑画像を指定するときは画像名を入れる
;選択肢を描画したいメッセージレイヤーを指定
[current layer=message1]

;選択肢の表示
[nowait]

[style align=center]
;選んだ場所へ飛ばす
[link target=*Epsode21][font size=20 color="0xffffff"]　　     我慢できん･･･       [endlink]
[resetstyle][r]

[style align=center]
[link target=*Epsode22][font size=20 color="0xffffff"]　　俺には雛菊がいるし･･･　　[endlink]
[resetstyle][r]

[current layer=message0]
[endnowait]
;クリックされるまで待つ
;シナリオが実行されるまで待つ
[s]

;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode21|もう我慢できません
;//１を選択
[cm]
[backlay]
[position layer=message1 visible=false page=back]
[trans method=crossfade time=800]
[wt]
[history output=true]
[LayerFadeOut layer="0"]
[eval exp="f.A=0"]
[label]
[Fload]

;//パイずり
*EV03
[if exp="f.seen==1"]
[stbgm time=500]
[UniSet bg="主人公の部屋昼" pattern="tokei1"]
[plbgm bg="日常1" time=500]
[eval exp="f.B=0"]
[ReMes]
[endif]

何でもいいからとりあえず謝っておくか。……ごめんなさい。
[cpg]
[Fload]

[OnName name="tokiya"]
[fth]「じゃ、遠慮なく」
[cpg1]
[Fload]


[stbgm time="500"]
[plbgm bg="Hシーン" time=500]
[UniBK pattern="tokei4"]
[VisibleMes]
[eval exp="sf.sev_07=0"]
[eval exp="sf.sev_07=1"]
[if exp="sf.kon==0"]
[UniEV2 bg="ev_07" pattern="tokei4"]
[eval exp="sf.ev_07=0"]
[eval exp="sf.ev_07=1"]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[UniEV2 bg="ev_07_c" pattern="tokei4"]
[eval exp="sf.ev_07_c=0"]
[eval exp="sf.ev_07_c=1"]
[eval exp="f.B=9"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]



俺はアゲハを畳に寝かせると上にまたがり屹立しつつあったモノを取り出した。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha097"]
[fta]「……おちんちん」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「ん、あぁ…そうだけど」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


まじまじと俺のモノを見つめてくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


恥ずかしいが、それよりも俺は性欲に負けている。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


アゲハのほとんどない胸に擦りつけていく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha098"]
[fta]「……んっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


なくても意外にぷにぷにしてて、気持ちがいいものだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


柔らかくて、温かい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha099"]
[fta]「んっ…ふっ、んく」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha100"]
[fta]「……気持ちいい？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「うん」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


もうこれ以上ないってくらいに。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha101"]
[fta]「……それはなによりです」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


ぷっくりと膨れている胸の先端。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


あまり感情を表にださないアゲハだけど、少しは感じているんだろうか。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「よっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


より良い快感を得るために腰を動かしていく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=10"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=9"]
[endif]

[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[AlphaEV2 bg="ev_07_a"]
[eval exp="sf.ev_07_a=0"]
[eval exp="sf.ev_07_a=1"]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV2 bg="ev_07_d"]
[eval exp="sf.ev_07_d=0"]
[eval exp="sf.ev_07_d=1"]
[eval exp="f.B=11"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha102"]
[fta]「あ、ふぁ……んっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]



すりすりと擦ってペニスをしごいていく。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


パイずりはやはり大きいほうが気持ちいいのだろうけど、今は関係ない。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


とにかく気持ちよければ何でもいい。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


実際の快感よりも、アゲハにこんなことしてるっていう状況が、余計に興奮してくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha103"]
[fta]「あっ…くぅ、やっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


俺が腰を動かすたびに肉棒が擦れて気持ちいいのか、アゲハが声をあげている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha104"]
[fta]「…んっ……あぁっ、はぁ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha105"]
[fta]「はぅ…あ、あっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


根元に感じる柔肌の感触。さわさわとしたその感じに射精感がだんだんとこみ上げてくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「……あれ？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


……下半身の感覚が少しおかしい。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


腰を動かすスピードもかなり速くなっているし、何だかもう…既に射精寸前だった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha106"]
[fta]「んっ…あ、っう…くっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「嘘…やばっ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


事実を知ると一気に射精感が駆け上がってくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「もう限界っ…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=12"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=11"]
[endif]
[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[Flash2 bg="ev_07_b"]
[eval exp="sf.ev_07_b=0"]
[eval exp="sf.ev_07_b=1"]
[eval exp="f.B=14"]
[endif]
[if exp="sf.kon==1"]
[Flash2 bg="ev_07_e"]
[eval exp="sf.ev_07_e=0"]
[eval exp="sf.ev_07_e=1"]
[eval exp="f.B=13"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――――どぴゅ、ぴゅっ！　びゅーっ、どぷ、びゅくっ！
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha107"]
[fta]「んあっ…ふあぁっ！」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]


早すぎる射精によって、アゲハの顔全体を白濁液で汁まみれにしてしまった。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha108"]
[fta]「んっ…はっ、んんっ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

どろどろになって、こっちを見つめている。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha109"]
[fta]「……でたでた」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="tokiya"]
[fth]「う……」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

やってしまった。言われるとズシンとくる。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

……早漏になったか、もしくはアゲハが気持ちよすぎるのか。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha110"]
[fta]「……ときや、せーしでた」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="tokiya"]
[fth]「う、うん…」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha111"]
[fta]「……まだでる？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="tokiya"]
[fth]「うん…え？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="ageha"]
[pv b="0" s="Vageha112"]
[fta]「……もっとする？」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

もしかして、まだしてもいいってことなのか。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName2 name="tokiya"]
[fth]「じゃ、もう一回だけ」
[cpg1]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_07_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=14"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_07_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=13"]
[endif]

[eval exp="sf.load=0"]
[endif]

;///////////////////////////////////////////////////////////////////////////////////////////
;//正常位
[eval exp="f.B=0"]
[UniBK pattern="migi"]
[AlphaEV4 bg="hblkout"]

アゲハを寝かせたまま、正常位の位置に移動して準備を整える。
[cpg]

といっても、もうほとんどできているが。
[cpg]

[OnName4 name="tokiya"]
[fth]「じゃ、やるぞ」
[cpg1]

[OnName4 name="ageha"]
[pv b="0" s="Vageha113"]
[fta]「……うん」
[cpg1]

[AlphaBK]
[eval exp="sf.sev_08=0"]
[eval exp="sf.sev_08=1"]
[if exp="sf.kon==0"]
[UniEV4 bg="ev_08" pattern="migi"]
[eval exp="sf.ev_08=0"]
[eval exp="sf.ev_08=1"]
[eval exp="f.B=16"]
[endif]

[if exp="sf.kon==1"]
[UniEV4 bg="ev_08_c" pattern="migi"]
[eval exp="sf.ev_08_c=0"]
[eval exp="sf.ev_08_c=1"]
[eval exp="f.B=15"]
[endif]
[label]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]



―――――ずぷ、ぬぷぷぷっっ！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha114"]
[fta]「あ、んふぅあぁぁぁっ！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha115"]
[fta]「ひゃ…んぅ…ふわぁ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

小さい小さいと言っているが、そこはドール、流石というべきかアゲハは意外とすんなり俺のモノを咥え込むことができた。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

亀頭が入っただけでもかなり気持ちよくて、イってしまいそうになる。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha116"]
[fta]「んっっ、あ…んくっ…ひゃ、ぅ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

狭い膣内の感触を十分に楽しむ前にずんずんと奥を貫いていく。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha117"]
[fta]「あ…んっ、んく…んくっ…っはぁ、ぁ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

最近になって思ったが、アゲハはＨする時になるとやたらいい声をあげるんだな。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

普段がぽそぽそ喋るからギャップがすごい。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha118"]
[fta]「くふぅぅ…ふぁ、んっ、あ、あっ！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha119"]
[fta]「はふぅ…あ、くっ、あぅ…ふわぁ、っ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

ぎゅうぎゅうと肉棒を締め上げて、熱くなってくる中。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

少し腰を入れるだけでもキツイ。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

ごちん、と先端が行き止まりにぶつかったら止めて腰を引く。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

肉棒と肉壁の隙間からアゲハの愛液が染み出してきて、それが畳を濡らして染みをつくる。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

この愛液が擬似的に作られたようには思えないんだよな･･････
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha120"]
[fta]「んっ、んっ、ふは、んきゅぅ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha121"]
[fta]「んっ…あ、あぅ、んくぁっ…あっ、あ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

めりめりと肉壁をゆっくり押し広げながら、膣内を満たしていく。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

ぬとぬととして、絡み付いてくる膣はかなり具合がいい。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha122"]
[fta]「ひぅっ！！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha123"]
[fta]「はぅ…ひあっ、あ、だめっ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha124"]
[fta]「ぁ…んく…あふ、んあ…ふぅ…はぁ、ん…あっ、ひゃ、あうんっ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

子宮の奥を目指して腰を激しく振り、抵抗してくる肉壁は無視して無理やりに押し広げていく。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

滑りのいい膣内になるにはもっと時間がかかるな。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha125"]
[fta]「ぁ…ひ、いっ……ぁ…んっ、んくっ」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

膣内をぐりゅぐりゅとかき回して、感触を楽しむ。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha126"]
[fta]「あ、ぅひゃ…んくぅ、ぁん…っう、ぁっ、あ、あ、ぅ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="tokiya"]
[fth]「気持ちいいのか？」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

んくっぅ…ひゃ…はふぅ
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha127"]
[fta]「ときやが、なかで…うごいてる…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha128"]
[fta]「きもち……いいよぉ」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


性器同士の擦れ合い…ただそれだけのことが、これほど理性を狂わせるとは誰も思わないだろう。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha129"]
[fta]「うりゅうりゅ…してる、あっ……は、あうっ…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


とてつもないくらい熱い。それに狭くて痛いくらい肉棒を圧迫してくる。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


腰をどんなに振っても、動きに合わせて絡み付いてくる膣内。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha130"]
[fta]「くっ…あ、あ、んんっ…だめっ……ついちゃぁ…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha131"]
[fta]「あ、あ、あっ…つよく、うごくとっ…こわれちゃう……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


欲望のままに腰を動かすと、結合部はいやらしい音を立てる。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


それが、さらに俺を刺激してきて止まらない。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha132"]
[fta]「ひうっ…あああっ、あ、あぐっ…や、ときやぁ…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="tokiya"]
[fth]「何？」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha133"]
[fta]「おかし……おかしく、なっちゃ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha134"]
[fta]「わたし、へんに、なっっちゃ、う……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="tokiya"]
[fth]「全然変じゃないぞ？」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


感じる快楽に多少の恐怖があるんだろうか。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


感じながらも不安そうな瞳をしている。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha135"]
[fta]「あうっ、あん、ふぁ……あああっ！」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha136"]
[fta]「んんっ…おまんこ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha137"]
[fta]「はぅ…あ、ああっ…ぐちゃぐちゃぁ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha138"]
[fta]「ときやの、おちんちんでっ……おまんこぐちゃぐちゃぁ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


とろけるような快楽と狂ったようなアゲハの淫語が、どんどんと射精感を高めてくる。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


引いて、押し込んで、引いて、押し込んでの繰り返しに強弱と…
グラインドで動きを変えてアゲハのよがり声も同時に高めていく。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha139"]
[fta]「はやぁ……きゃっ…くぅ、いぁ…いはっ…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha140"]
[fta]「ときやぁ…せーし、せーしぃぃ…」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha141"]
[fta]「いっぱい、いっぱい…せーしちょうだいぃ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="tokiya"]
[fth]「わかった、沢山出してやるぞ」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


だから俺は･･･
[r]
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
[history output=true]
[label]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


要望どおり、射精するため肉棒を抜き差していく。割と早く限界に到達した。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「よし、そろそろ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha142"]
[fta]「あうんっ、あぁっ…ひゃぁぁ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha143"]
[fta]「ときやっ！　あぁっ、んうぅっ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName4 name="tokiya"]
[fth]「でるっ！」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[Flash2 bg="ev_08_a"]
[eval exp="sf.ev_08_a=0"]
[eval exp="sf.ev_08_a=1"]
[eval exp="f.B=18"]
[endif]
[if exp="sf.kon==1"]
[Flash2 bg="ev_08_d"]
[eval exp="sf.ev_08_d=0"]
[eval exp="sf.ev_08_d=1"]
[eval exp="f.B=17"]
[endif]
[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――――どぴゅ、どくっ、びゅびぅっ！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha144"]
[fta]「あぐっ、ああああぁぁっっ！！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName4 name="ageha"]
[pv b="0" s="Vageha145"]
[fta]「あ、あ、んんっ……はぁ、ん、あっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「くっ…止まらない」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

―――――どぷっ、どびゅううぅぅ！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha146"]
[fta]「あぅ…んくっ、あ、あ、ひゃううぅんんんっっ！！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha147"]
[fta]「んぅ…あ、はぁ…ふぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

二度目の射精だが、最初よりも多くの量の精液を放出した。
[cpg]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

びゅくびゅくと痙攣して、空っぽになるまで精液を出し続ける。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha148"]
[fta]「ああっ…んぐっ、んぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha149"]
[fta]「んぁ、あ…こぽこぽっ…おなか、こぽこぽぉ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha150"]
[fta]「ときやの、せーしで…おまんこ、こぽこぽ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

二度目ともなり、精液全てを出し尽くした俺はぐったりとしてしまう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha151"]
[fta]「あ、んっひゃああっ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「はぁ…はぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha152"]
[fta]「あぅ…きもちいい……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha153"]
[fta]「どろどろが、きもちいいようぅ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「そんなに精子好きか？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha154"]
[fta]「ふみゃ…あ、ぅん…すき」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha155"]
[fta]「もっと、ほしい……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

……え？　ちょっと、流石にもう俺も限界だしな。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「また今度な」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

そう言ってこの場を何とか凌ぐ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

これからアゲハとする時は、いろいろと覚悟が必要になりそうだ……。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=18"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=17"]
[endif]

[eval exp="sf.load=0"]
[endif]

;シーン此処まで
[eval exp="f.B=0"]
[eval exp="sf.ev03=0"]
[eval exp="sf.ev03=1"]
[SceneEnd]
[label]


;愛華羽ルートへ
[jump storage="アゲハ.ks" target="*start"]
[s]
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//外に出す
*soto

[cm]
[backlay]
[position layer=message1 page=back visible=false]
[trans method=crossfade time=150]
[wt]
[history output=true]
[label]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]



要望どおり、射精するため肉棒を抜き差していく。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

割と早く限界に到達した。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「よし、そろそろ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha156"]
[fta]「あうんっ、あぁっ…ひゃぁぁ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha157"]
[fta]「ときやっ！　あぁっ、んうぅっ……」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「でるっ！」
[cpg1]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

俺はすばやく肉棒をアゲハの中から引き抜いた。
[cpg]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=16"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=15"]
[endif]
[eval exp="sf.load=0"]
[endif]

[if exp="sf.kon==0"]
[Flash2 bg="ev_08_b"]
[eval exp="sf.ev_08_b=0"]
[eval exp="sf.ev_08_b=1"]
[eval exp="f.B=20"] 
[endif]
[if exp="sf.kon==1"]
[Flash2 bg="ev_08_e"]
[eval exp="sf.ev_08_e=0"]
[eval exp="sf.ev_08_e=1"]
[eval exp="f.B=19"]
[endif]
[label]
[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――――どぴゅ、どくっ、びゅびぅっ！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha158"]
[fta]「あぐっ、ああああぁぁっっ！！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha159"]
[fta]「あ、あ、んんっ……はぁ、ん、あっ」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「くっ…止まらない」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

―――――どぷっ、どびゅううぅぅ！
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha160"]
[fta]「あぅ…んくっ、あ、あ、ひゃううぅんんんっっ！！」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha161"]
[fta]「んぅ…あ、はぁ…ふぁ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

アゲハの体にむかって飛散する白い液体。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

二度目の射精だが、最初よりも多くの量の精液を放出した。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

びゅくびゅくと痙攣して、空っぽになるまで精液を出し続ける。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha162"]
[fta]「ああっ…んぐっ、んぁ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha163"]
[fta]「んぁ、あ…ん、んぐっ……せーし…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha164"]
[fta]「ときやの、せーしで…どろどろぉ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

二度目ともなり、精液全てを出し尽くした俺はぐったりとしてしまう。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha165"]
[fta]「あ、んっひゃああっ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「はぁ…はぁ…」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha166"]
[fta]「あぅ…きもちいい……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha167"]
[fta]「どろどろが、きもちいいようぅ……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「そんなに精子好きか？」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha168"]
[fta]「ふみゃ…あ、ぅん…すき」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="ageha"]
[pv b="0" s="Vageha169"]
[fta]「もっと、ほしい……」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

……え？　ちょっと、流石にもう俺も限界だしな。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

[OnName4 name="tokiya"]
[fth]「また今度な」
[cpg1]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

そう言ってこの場を何とか凌ぐ。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

これからアゲハとする時は、いろいろと覚悟が必要になりそうだ……。
[cpg]

[if exp="sf.load==1"]
[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_08_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=20"]
[endif]
[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_08_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=19"]
[endif]
[eval exp="sf.load=0"]
[endif]

;シーン此処まで
[eval exp="f.B=0"]
[eval exp="sf.ev03=0"]
[eval exp="sf.ev03=1"]
[SceneEnd]
[label]

;愛華羽ルートへ
[jump storage="アゲハ.ks" target="*start"]
[s]
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;２を選択
;はだかアゲハは立たせたままで～
*Epsode22|雛菊がいるだろ俺！！

[cm]
[backlay]
[position layer=message1 visible=false page=back]
[trans method=crossfade time=800]
[wt]
[history output=true]
[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


;hina_p1_a
[ActorLft1 chara="hina_p1_a" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina184"]
[ftb]「ただいま～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「うおぅっ！　お、おかえり……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina185"]
[ftb]「どうしたの？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「いや、何でも」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


;hina_p1_b
[ActorLft1 chara="hina_p1_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina186"]
[ftb]「…って、どうしてその子裸なの」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「メンテしてただけだよ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


実際本当のことだし、嘘じゃないし、後ろめたくなんてないし。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


;hina_p2_b
[ActorLft1 chara="hina_p2_b" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina187"]
[ftb]「本当？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「本当！他の理由でアゲハを裸にするか」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha170"]
[fta]「……でも、ときや、ぼっきしたの」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina188"]
[ftb]「な……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「………」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha171"]
[fta]「それでね、今から…おちんちん、こしこしするの」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha172"]
[fta]「せーしをどぴゅっと……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「アゲハ、もう……何も言わないでっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha173"]
[fta]「……わかった」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[stbgm time="500"]
[plbgm bg="日常2" time=500]

;hina_p1_f
[ActorLft1 chara="hina_p1_f" layer="1"]
[OnName name="hinagiku"]
[pv b="0" s="Vhina189"]
[ftb]「ふぅー、取りあえず…何かに祈っときなさい」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「待て、話を聞く気は、あるか？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina190"]
[ftb]「―――――覚悟!」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]


やっぱりないか。そりゃそうだよな。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[ActorCtr chara="ageha_p3_a" layer="0"]
;ageha_p7_aためのフラグ
[eval exp="f.A=2"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[if exp="sf.kon==1"]
[ActorCtr chara="ageha_p7_a" layer="0"]
[eval exp="f.A=1"]
[eval exp="sf.x=0"]
[eval exp="sf.y=0"]
[eval exp="sf.z=0"]
[endif]

[eval exp="sf.load=0"]
[endif]

[Fload]


;雛ルートへ
[eval exp="f.A=0"]
[jump storage="ヒナ.ks" target="*start"]
[s]
