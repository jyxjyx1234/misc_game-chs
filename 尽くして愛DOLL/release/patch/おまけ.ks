;～おまけルート～
;２人クリアするとみれるお
*start
[mapdisable layer=base]
[store enabled=true]
[history output=true enabled=true]
[eval exp="f.sea=0"]
[eval exp="f.seen=0"]
[eval exp="f.B=0"]
[eval exp="f.A=0"]
[label]

*Epsode00|二人のお誘い

[laycount layers=10]
[stbgm time="500"]
[UniBK pattern="tokei3"]
[UniSet bg="主人公の部屋昼" pattern="tokei3"]
[ReMes]
[plbgm bg="日常1" time=500]
[label]

[OnName name="tokiya"]
[fth]「お～い、雛菊。アゲハー」
[eval exp="f.sea=1"]
[cpg1]

[OnName name="tokiya"]
[fth]「何ゴソゴソやってんの……」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina669"]
[ftb]「え？」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha642"]
[fta]「…う？」
[cpg1]

[OnName name="tokiya"]
[fth]「何で着替えてるの」
[cpg1]

[AlphaBG bg="ev_32"]
[eval exp="sf.ev_32=0"]
[eval exp="sf.ev_32=1"]
[label]

[OnName name="hinagiku"]
[pv b="0" s="Vhina670"]
[ftb]「たまには違う服をさ…着たいじゃない？」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha643"]
[fta]「…うん」
[cpg1]

[OnName name="tokiya"]
[fth]「そうなのか…」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina671"]
[ftb]「それでさ…」
[cpg1]

[OnName name="tokiya"]
[fth]「ん？」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha644"]
[fta]「…えっちしよ」
[cpg1]

[OnName name="tokiya"]
[fth]「何で。しかもイキナリ」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina672"]
[ftb]「いいじゃん」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha645"]
[fta]「…だめ？」
[cpg1]

そう言って詰め寄ってくる二人。少々納得いかないが、そんなエロい誘いを断る理由なんかなかった。
[cpg]

;////////////////////////////////////////////////////////////////////////////////////////////////////////
;//横に並べて秘所愛撫
*Epsode01|愛すべき二体のドール

[UniSet bg="hblkout" pattern="tokei1"]
[stbgm time="500"]
[plbgm bg="Hシーン" time=500]

普段と違う服装と、少しオープンになっている二人に俺もだんだんと興奮してきていた。
[cpg]

[OnName name="tokiya"]
[fth]「こんな事して…いいのかなぁ」
[cpg1]

[OnName name="hinagiku"]
[pv b="0" s="Vhina673"]
[ftb]「私達がいいって言ってるんだから」
[cpg1]

[OnName name="ageha"]
[pv b="0" s="Vageha646"]
[fta]「…きにしない」
[cpg1]

[OnName name="tokiya"]
[fth]「そっか？……じゃあ…」
[cpg1]

;///////////////////////////////////////////////////////////////////////////////////////////////////////

[AlphaBK]
[VisibleMes]
[eval exp="sf.sev_33=0"]
[eval exp="sf.sev_33=1"]
[if exp="sf.kon==0"]
[AlphaEV1 bg="ev_33"]
[eval exp="sf.ev_33=0"]
[eval exp="sf.ev_33=1"]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV1 bg="ev_33_e"]
[eval exp="sf.ev_33_e=0"]
[eval exp="sf.ev_33_e=1"]
[eval exp="f.B=73"]
[endif]

[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


寝そべって服をはだけさせ、自分で足をかかえて、大事な部分をこっちにむけている二人。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


パックリと開かれた秘部も二つ……何だかすごくお得な気分になってくるな。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina674"]
[ftb]「ね、早く」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha647"]
[fta]「…して」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="tokiya"]
[fth]「分かってるよ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=74"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=73"]
[endif]

[eval exp="sf.load=0"]
[endif]


一瞬、どっちからしようか迷ったが…俺は二人同時に愛撫することに決めた。
[cpg]

[if exp="sf.kon==0"]
[AlphaEV1 bg="ev_33_a"]
[eval exp="sf.ev_33_a=0"]
[eval exp="sf.ev_33_a=1"]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV1 bg="ev_33_f"]
[eval exp="sf.ev_33_f=0"]
[eval exp="sf.ev_33_f=1"]
[eval exp="f.B=75"]
[endif]

[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]



―――ちゅく、つぷ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina675"]
[ftb]「ああっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha648"]
[fta]「…ん、ぅ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


普段より一人多い……三人でのエッチ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


それだけでも俺のする行動は二倍になるから……今日はちょっと、疲れそうだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina676"]
[ftb]「ふぁ…あ、ああ…ん」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha649"]
[fta]「んっ、く…んっ…ぁ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina677"]
[ftb]「ああっ…ゆび、いぃ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


割れ目に指を這わせて刺激を与える。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


ヒダ周りを十分になぞってから指を膣内に侵入させてみた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=76"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_f" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=75"]
[endif]

[eval exp="sf.load=0"]
[endif]


[if exp="sf.kon==0"]
[AlphaEV1 bg="ev_33_b"]
[eval exp="sf.ev_33_b=0"]
[eval exp="sf.ev_33_b=1"]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV1 bg="ev_33_g"]
[eval exp="sf.ev_33_g=0"]
[eval exp="sf.ev_33_g=1"]
[eval exp="f.B=77"]
[endif]

[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina678"]
[ftb]「んあぁ…う、ゆびがぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha650"]
[fta]「ふあっ、っく…はいって…きたぁ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


すっかりアゲハもエッチな子になってしまった。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


……俺が原因だろうけど。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


指をきゅうきゅうと締めつけてくる二人の内部。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


特にアゲハの中は小さいため、自然と必要以上に締めつけが強くなっている。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina679"]
[ftb]「ぅ…あぅ、あぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha651"]
[fta]「あっ、んぅ…ふぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha652"]
[fta]「ん、あっ…んぅぅ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


さらに言うなら、アゲハの方が感度が高いらしい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


まだほんの少ししか弄っていないのに、クレヴァスの奥からは蜜が染み出してきて
……それによって俺の指はヌルヌルになっていた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina680"]
[ftb]「あぅん…あはぁ…あっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha653"]
[fta]「ひゃ、ん、ああっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


互いに体をのけぞらせて、自分の下腹部に与えられる悦楽をすべて受け止めている二人。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


耐えようとすると逆に刺激が強くなる。だが、今の彼女達は心の底から楽しんでいるのだろう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


こっちも嬉しい限りだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina681"]
[ftb]「は、あ…ひゃ、あんっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha654"]
[fta]「んんっ…はぁ、ん…っ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


―――にゅぐ、にゅうぅ、ぐぽ、ぐぽっ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina682"]
[ftb]「ふぅ…あ、くっ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha655"]
[fta]「ひ…くうっ…ゃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


指を抜き差しするとまとわり付いてくる肉壁がいやらしい音を立てる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


ぐぽぐぽ……その音は膣内が十分に濡れている証拠だ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina683"]
[ftb]「んあぁ…はっ…ぁ…うぅっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha656"]
[fta]「ふぁ、あん、ぅ…あんっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=78"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_g" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=77"]
[endif]

[eval exp="sf.load=0"]
[endif]


差し込んでいた指を抜いて、そのまま…つつつ、と下の方に這わせていく。
[cpg]

[if exp="sf.kon==0"]
[AlphaEV1 bg="ev_33_c"]
[eval exp="sf.ev_33_c=0"]
[eval exp="sf.ev_33_c=1"]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV1 bg="ev_33_h"]
[eval exp="sf.ev_33_h=0"]
[eval exp="sf.ev_33_h=1"]
[eval exp="f.B=79"]
[endif]

[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina684"]
[ftb]「ひゃっ！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha657"]
[fta]「ふぁっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

さすがに敏感な反応をしめす。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina685"]
[ftb]「だ、めぇ…そんな…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="ageha"]
[pv b="0" s="Vageha658"]
[fta]「んぁっ、あ…おしり…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina686"]
[ftb]「んんっ…あ、んくっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="ageha"]
[pv b="0" s="Vageha659"]
[fta]「うぁっ…ふぁ…ああっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

二人の反応をみて、俺は思わずニヤニヤしてしまった。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

弄ればもっといい声を上げてくれるんじゃないかと期待してしまう。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="hinagiku"]
[pv b="0" s="Vhina687"]
[ftb]「ん、ああっ…ふ、は…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

[OnName1 name="ageha"]
[pv b="0" s="Vageha660"]
[fta]「あひゃ、んあっ…はふぅ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=80"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_h" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=79"]
[endif]

[eval exp="sf.load=0"]
[endif]

とろとろの愛液を指にぬって、滑りをよくしてからアナルをつついてみた。
[cpg]

[if exp="sf.kon==0"]
[AlphaEV1 bg="ev_33_d"]
[eval exp="sf.ev_33_d=0"]
[eval exp="sf.ev_33_d=1"]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV1 bg="ev_33_i"]
[eval exp="sf.ev_33_i=0"]
[eval exp="sf.ev_33_i=1"]
[eval exp="f.B=81"]
[endif]

[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina688"]
[ftb]「ふやあぁぁん」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha661"]
[fta]「んあぁぁっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


尻穴を拡張して、指がずっぽりと内部にまで侵入した。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


それに伴って甲高い声が二人から漏れる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina689"]
[ftb]「んはぁ…ああっ！　いひゃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha662"]
[fta]「んぅ…おしり、あつぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


指先を動かしながら、尻内をかき混ぜていく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


締まりはこっちのほうがかなり強い。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


十分にすぼまりをほぐしてから指を引き抜いた。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="hinagiku"]
[pv b="0" s="Vhina690"]
[ftb]「んはぁ…あ、んっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="ageha"]
[pv b="0" s="Vageha663"]
[fta]「あ、あふ…んくっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


尻の穴は予想以上に二人に快感を与えたらしい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


ヒクヒクしている。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


[OnName1 name="tokiya"]
[fth]「そろそろいいか……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


愛撫が十分になったのを確認した俺は、次の行動に移った。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_33_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=82"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_33_i" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=81"]
[endif]

[eval exp="sf.load=0"]
[endif]


;/////////////////////////////////////////////////////////////////////////////////////////////////////////////
;//クンニ＋フェラ
[eval exp="f.B=0"]
[UniBK pattern="tokei1"]
[UniEV2 bg="ev_34" pattern="tokei1"]
[eval exp="sf.ev_34=0"]
[eval exp="sf.ev_34=1"]
[label]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina691"]
[ftb]「ああっ…時夜っ…」
[cpg1]


[OnName2 name="tokiya"]
[fth]「ほら、閉じるなよ。脚開いて」
[cpg1]

[OnName2 name="ageha"]
[pv b="0" s="Vageha664"]
[fta]「…ときや」
[cpg1]


[OnName2 name="tokiya"]
[fth]「アゲハはこっち」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha665"]
[fta]「…うん」
[cpg1]


俺は寝転がり、顔の上に雛菊をまたがらせて、アゲハは下半身のほうに回らせる。
[cpg]


―――じゅるるぅ、じゅぷ、ぢゅう。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina692"]
[ftb]「くひゃう！　あっ…んはぁ…」
[cpg1]


目の前に晒された、雛菊の神秘部位。
[cpg]


とろとろの液体を滴らせ、口を開いている。
[cpg]


そこに舌を這わせ……ヒダをなめて、膣口を唇で吸いあげる。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina693"]
[ftb]「んああっ！　く、ぁ…ひゃぁ…」
[cpg1]


雛菊が感じるたびに、蜜が膣奥からでてきて俺の顔に降りそそぐ。
[cpg]


[OnName2 name="tokiya"]
[fth]「うわ、すごい量だな」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina694"]
[ftb]「ひぅ～だって……」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha666"]
[fta]「…ん、じゅる、ちゅう…」
[cpg1]


[OnName2 name="tokiya"]
[fth]「おっ、アゲハ…くっ」
[cpg1]


言われたことに従い、アゲハはそそり勃った肉棒をなめ始めた。
[cpg]


[OnName2 name="ageha"]
[pv b="0" s="Vageha667"]
[fta]「ちゅ、じゅる、ぢゅりぅ…」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha668"]
[fta]「んっ…はむっ、ぐ、じゅるっ…」
[cpg1]


モノを小さな口いっぱいに含んで、頭を上下に動かしている。
[cpg]


先端の敏感な部分を舌先でちろちろと刺激してきたり、深くまでのみこんでノドの奥に先が当って刺激されたりする。
[cpg]


[OnName2 name="tokiya"]
[fth]「うぁっ、く…いい…いいぞ、アゲハ」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha669"]
[fta]「ぢゅ、ぴちゅ…づぅ…じゅる」
[cpg1]


自分の持っているスキルを駆使して、肉棒を愛撫してくるアゲハ。
[cpg]


俺も負けじと、雛菊の内部に舌をのばして快感を与えていく。
[cpg]


[OnName2 name="tokiya"]
[fth]「ちゅ、ぢちゅぅ…れろっ、んっ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina695"]
[ftb]「ひゃあぁ…んっ、あ、やぁ…」
[cpg1]


アゲハが俺のペニスを舐め、俺が雛菊の秘部を弄り、雛菊は快感に腰をふる。
[cpg]


実にうまく循環しているじゃないか。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina696"]
[ftb]「ああっ…なかでっ、ん、舌が…動いてるっ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina697"]
[ftb]「やっ、だめ……そこは、あっ…ほじらないで～」
[cpg1]


[OnName2 name="tokiya"]
[fth]「そんなこと言われたって、止めないよ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina698"]
[ftb]「だめ、だめぇ～そこだめぇ～」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina699"]
[ftb]「いっ、ちゃう～っ、あ、ああっ…」
[cpg1]


秘部を弄り続けられる快感に、雛菊は体を震わせて……脚がガクガクいっている。
[cpg]


アゲハはまるでキャンディを舐めるみたいに、黙々とモノを舐め続けている。
[cpg]


[OnName2 name="ageha"]
[pv b="0" s="Vageha670"]
[fta]「んぐ、はむ…じゅる、ちゅぅ」
[cpg1]


[OnName2 name="tokiya"]
[fth]「ぢゅる…ぐちゅ…ずっ、じゅるぅ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina700"]
[ftb]「いひいぃぃ、ああっ…んやぁ…」
[cpg1]


三人つながっている連携プレイ。
[cpg]


だが、これもそろそろ終わりが近いようだ。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina701"]
[ftb]「んやぁ…ひっ、あ、ああぁっ」
[cpg1]


雛菊がもう自分で立っていられないほど感じてしまって、ほとんど尻を俺の顔に押し付けている状況だ。
[cpg]


だが、そのせいでクンニがしやすくなり…与えられる快楽は余計に増している。
[cpg]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina702"]
[ftb]「ああっ、もう…だめぇ…んああっ」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha671"]
[fta]「んっ…じゅるぅ、ちゅ…はぁ」
[cpg1]


[OnName2 name="ageha"]
[pv b="0" s="Vageha672"]
[fta]「ときやも…じゅ、ちゅる…いく？」
[cpg1]


[OnName2 name="tokiya"]
[fth]「ああ…俺も、イきそうだっ」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina703"]
[ftb]「らめっ…ああっ、私、もう…」
[cpg1]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina704"]
[ftb]「イクううぅぅーーっ！」
[cpg1]

[Flash2 bg="ev_34_a"]
[eval exp="sf.ev_34_a=0"]
[eval exp="sf.ev_34_a=1"]
[label]

―――びくっ、びく、びくうぅっ！
[cpg]

[OnName2 name="tokiya"]
[fth]「くぅ…出るっ」
[cpg1]

―――ずぴゅ、びゅく、どぷん、びゅくう！
[cpg]

[OnName2 name="ageha"]
[pv b="0" s="Vageha673"]
[fta]「んぐっ、んびゅううぅぅ～～っ」
[cpg1]

雛菊が絶頂に達して、潮をふくとそれに続いて俺も限界に達してしまい……白濁液をアゲハの口内にぶちまけた。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina705"]
[ftb]「ふはぁ…はぁ、あ…」
[cpg1]

[OnName2 name="tokiya"]
[fth]「はぁ、はぁ…」
[cpg1]

[OnName2 name="ageha"]
[pv b="0" s="Vageha674"]
[fta]「んぶ、ん…んっ…ごくっ」
[cpg1]

[OnName2 name="ageha"]
[pv b="0" s="Vageha675"]
[fta]「んっ…ぷはっ、あ…みるく、おいしぃ…」
[cpg1]

発射された精液をごくごくと飲み下していく。
[cpg]

アゲハは本当にエロくなったな……俺のおかげだな。
[cpg]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina706"]
[ftb]「はぁ…はぁ…」
[cpg1]

[OnName2 name="ageha"]
[pv b="0" s="Vageha676"]
[fta]「んっ、ちゅる…つぎは？」
[cpg1]

[OnName2 name="tokiya"]
[fth]「続きするのか？」
[cpg1]

[OnName2 name="hinagiku"]
[pv b="0" s="Vhina707"]
[ftb]「はぁ…当たり前、でしょ…」
[cpg1]

本当に……こいつらは立派なエロドールになったなぁ。
[cpg]

;///////////////////////////////////////////////////////////////////////////////////////////////////
;//貝合わせ
[UniBK pattern="tokei1"]
[eval exp="sf.sev_35=0"]
[eval exp="sf.sev_35=1"]
[if exp="sf.kon==0"]
[UniEV2 bg="ev_35" pattern="tokei1"]
[eval exp="sf.ev_35=0"]
[eval exp="sf.ev_35=1"]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[UniEV2 bg="ev_35_c" pattern="tokei1"]
[eval exp="sf.ev_35_c=0"]
[eval exp="sf.ev_35_c=1"]
[eval exp="f.B=83"]
[endif]
[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina708"]
[ftb]「時夜…来て」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha677"]
[fta]「…はやく、きて」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「分かってるよ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


我慢できないといったように腰を高くあげて、ヒクつかせている雛菊。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


同じように今か今かと挿入を待っているアゲハ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


どっちもせっかちだな……それにエロい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina709"]
[ftb]「早く…おちんぽで、こすってぇ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha678"]
[fta]「…おちんちん、ちょうだい」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「はいはい。今やるからな」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina710"]
[ftb]「待てない～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha679"]
[fta]「うぅ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「じゃ、いくぞ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


貝合わせの形で二人を重ねあわせる。一度やってみたかったんだ、これ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=84"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_c" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=83"]
[endif]
[eval exp="sf.load=0"]
[endif]


下の口からよだれを垂らしている二人の秘裂……その間にギチギチに硬くなった肉棒を忍び込ませる。
[cpg]


[if exp="sf.kon==0"]
[AlphaEV2 bg="ev_35_a"]
[eval exp="sf.ev_35_a=0"]
[eval exp="sf.ev_35_a=1"]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[AlphaEV2 bg="ev_35_d"]
[eval exp="sf.ev_35_d=0"]
[eval exp="sf.ev_35_d=1"]
[eval exp="f.B=85"]
[endif]

[label]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――ぬちゅう、にちゃっ！　にゅぐぅっ！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina711"]
[ftb]「あっ…ひあぁっ！　んあぁ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha680"]
[fta]「ふひゃっ…あ、きたぁ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina712"]
[ftb]「んあっ、は、こすって、る…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha681"]
[fta]「…おちんちん、ああっ…こしこしぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina713"]
[ftb]「あ、あ…んっ…はぁ、ふぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha682"]
[fta]「んぁっ…んくっ、あっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


肉棒の上と下を割れ目でがっちり挟まれている。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


全体を包んでいるわけじゃないが、それに近い快楽を得ることができるこの格好もなかなかすごい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


むしろ、二人重なっている時点で反則だ。これを見て勃起しないわけがない。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina714"]
[ftb]「んぅ、あ…んんっ…あ、ひぁ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha683"]
[fta]「あっ…ゃ…っ、んぐっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


どんどんペースを上げて腰を動かしていく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


肉棒がこすれた時の摩擦がすごい。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


まるで吸い付いてくるかのような二人の亀裂。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


強くこすりつけると、ぷにぷにとへこむ柔らかい恥丘。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina715"]
[ftb]「はぁ…んあっ、ふぁ、んくぅ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha684"]
[fta]「ん、あん…ふぅ、んくぁっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


たった数回前後に動かすだけで、ペニスは溢れてきた愛液によってドロドロになって溶かされてしまいそうだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


気持ちがよすぎるから……動きが止まらない。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


もっと擦りつけたいという欲求が、どんどん大きくなってくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina716"]
[ftb]「んんっ、ぐ、んっ～ん、っ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha685"]
[fta]「ぁ…ひゃ、んんっ……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――にちゃ、にしゅ、じゅちゅ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina717"]
[ftb]「ほぁ…ん、んぁ…ああっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha686"]
[fta]「んくっ、ひゃあ…あがっ…あ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina718"]
[ftb]「ひゃあん…あ、くぅあ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――こしゅ、ぐちゅ…ずじゅ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha687"]
[fta]「あひゃ…んっ、んんっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina719"]
[ftb]「あっ、ん、あひっ…いひぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


さっき弄っておいたせいだと思うけど。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


二人のアナルは直接でなくとも、秘裂を擦りついけているだけで……くぱくぱと痙攣している。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


そこまで感じているということだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina720"]
[ftb]「ふや、あ…くぅ…かんじる～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha688"]
[fta]「ときやが…あっ、うごいているっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina721"]
[ftb]「んぁあ、こすれる、こすれるっ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha689"]
[fta]「ああっ…にゅぐ、にゅぐ…んっ、こすれてる～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


恥じらいなど何もない嬌声。これは我慢しろと言っても無理なことだ。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


感じれば喘ぐのは当然のこと。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


むしろ、その声が俺の肉棒をさらに膨張させていく。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina722"]
[ftb]「んぐ、あ、ふぁ…ひぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha690"]
[fta]「あふぅ…ん、んっ…あぁっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「くぅ…このっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


下腹にガツンとくる射精感。それを必死になって耐える。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina723"]
[ftb]「ふぁ…あ、時夜…でる、の…？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha691"]
[fta]「んんっ…あ、ふみゃ…ああ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「っ～もう、そろそろ限界は、近い…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina724"]
[ftb]「あん、あ…いいよっ…出して」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha692"]
[fta]「ふはぁ、あ、んくっ…せーしぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


腰を引いて、また突き出す……その間隔がどんどん短くなってくる。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


尿道を駆け上がってくるのは、尿意とは明らかに違うもの。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「よし…もう、出すぞっ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina725"]
[ftb]「んあぁ…、あ…きて、せーしぃ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha693"]
[fta]「は、あはぁ…みるくぅ…きてぇ～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_a" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=86"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_d" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=85"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「うぐっ…でるっ」
[cpg1]


[if exp="sf.kon==0"]
[Flash2 bg="ev_35_b"]
[eval exp="sf.ev_35_b=0"]
[eval exp="sf.ev_35_b=1"]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[Flash2 bg="ev_35_e"]
[eval exp="sf.ev_35_e=0"]
[eval exp="sf.ev_35_e=1"]
[eval exp="f.B=87"]
[endif]

[label]

[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――びゅく、びゅく、びゅびゅうぅ！！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina726"]
[ftb]「ひぁ、あっ…あああぁぁっ！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――ずぴゅ、どぴゅ…びゅぴゅっ！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha694"]
[fta]「んぐっ…あ、ひゃああぁぁっ！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


―――びゅーっ…びゅく、びゅく…ずぴゅぴゅう！！
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hutari"]
[pv b="0" s="Vsp000"]
[ftc]「んあああぁぁぁ～～っ！！」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


二人の秘裂に挟まれたまま、ペニスが爆発し……大量の精液を放出した。
[cpg]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="tokiya"]
[fth]「はぁ…はあ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="hinagiku"]
[pv b="0" s="Vhina727"]
[ftb]「ふはぁ、あ、んぅ…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName2 name="ageha"]
[pv b="0" s="Vageha695"]
[fta]「…ぁ…ふ、んっ…あ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


;//////////////////////////////////////////////////////////////////////////////////////////////////////
*Epsode02|満足な俺、不満足なドール

[stbgm time="500"]
[UniBK pattern="tokei3"]
[ReMes]
[UniSet bg="主人公の部屋昼" pattern="tokei3"]
[plbgm bg="日常1" time=500]
[label]

[OnName name="tokiya"]
[fth]「はぁ、ふぅ…満足した～」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina728"]
[ftb]「ちょっと…時夜」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「ん？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha696"]
[fta]「…まだ、おわってない」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「えぇ？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina729"]
[ftb]「自分ひとりだけ満足して終わり？」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="ageha"]
[pv b="0" s="Vageha697"]
[fta]「…ずるい」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「そ、そんな……」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina730"]
[ftb]「今度は中に、ね」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="tokiya"]
[fth]「あ…う、…」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]


[OnName name="hinagiku"]
[pv b="0" s="Vhina731"]
[ftb]「私達が満足するまで、終わらないわよ」
[cpg1]
[if exp="sf.load==1"]

[if exp="sf.kon==0"]
[backlay]
[image layer="base" storage="ev_35_b" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=88"]
[endif]

[if exp="sf.kon==1"]
[backlay]
[image layer="base" storage="ev_35_e" visible=true opacity=255 page=back]
[trans time=500 method=crossfade]
[wt canskip=false]
[eval exp="f.B=87"]
[endif]
[eval exp="sf.load=0"]
[endif]

[eval exp="f.B=0"]
[eval exp="f.A=0"]
[UniSet bg="hblkout" pattern="tokei1"]

･･････まだまだ、終わりそうにない。
[cpg]

今日は……一日がやたら長く感じる日になりそうだ。
[cpg]


[AlphaBK]
[eval exp="f.B=0"]
[VisibleMes]
[fadeinbgm time=100 loop=true storage="日常2"]
[wb]
[store enable=false]
[history output=false enabled=false]
[call storage="start.ks" target=*omakebk]
[s]

