

;例によって段階２は２，３の新録台詞がある程度のショートバージョン;
;ここにきているときは確実に処女では無いので、そのへんの分岐はない

[macro name="semaruSeijoui02" ]
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;「手つなぎ正常位」段階２
    [setreplay name="semaruSeijyoui" storage="replay_select.ks" target="semaruSeijoui_select"]
    [eval exp="f.muramura = Math.floor(f.muramura / 2) " ]
    [eval exp="f.semaruEV.today.type = 'seijoui'" ]
    [eval exp="f.semaruEV.today.isHscene = true" ]
    ;　せまるみお【枕】の"うなずき、みおの手をとる――"、"みお：あ……"
    ;　からの流れで発生する。

    ;「せまるみお【枕】」のスチルが出ているはずなので、ここで切替【bk100】
    [if exp="!f.flag_replay"]
        ;背景設定→スチル削除で切り替え
        [chara_hide_all time="1"]
        [bgChange storage="bk100.jpg" time="1"]
        [free layer="2" name="still"  time="1000"]

    ;シーン回想の場合、ここから。背景bk100、立ち絵なし。
    [else]
        [bgChange storage="bk100.jpg" time="1"]
        [maskEnd]
    [endif]
    ;シーン回想の場合、ここから。背景bk100、立ち絵なし。

    [playse  volume="100"  time="1000"  buf="1"  storage="se/kinuzure1.mp3"  ]
    [messageON]
    [tb_start_text mode=3 ]
    #
    引き寄せたみおを腕の中に抱く。[r]
    枕がぽとりと脇を転がる。[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]

    [messageInvisible]
    [wait  time="500"  ]
    [maskStart]
    [bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
    ;本編からの場合、せまるみお【枕】とその上のbk100スチルが出ているので、いったんスチルを全削除
    [wait  time="500"  ]
    [mask_off  time="1000"  effect="fadeOut"  ]
    [messageON]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0003.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    この前、おんなじようにして[r]
    もらった時のことが忘れられなくて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    抱擁の後、服をはだけさせながら[r]
    みおをベッドへと横たえた。[p]
    [_tb_end_text]


    [fadeinbgm storage="BGM11_temptation.mp3" time="6000" ]
    ;＜ここから正常位のスチル＞スチル表示【01】　省略した書き方をするが、実際はp1_01.pngという感じで、現在衣装に合わせたスチルの末尾01という意味
    [setSeijouiCG cg="01" time="1000"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0004.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    ……お部屋、明るくて恥ずかしいです[l]
    [_tb_end_text]

    [glink_left storage="Hscene/semaruSeijoui02.ks" target="semaruSeijoui02_1" text="きれいだよ"]
    [glink_right storage="Hscene/semaruSeijoui02.ks" target="semaruSeijoui02_2" text="みおをよく見たいから"]
    [s]


    ;----------------------------------------
    ;分岐【選択肢】きれいだよ
    *semaruSeijoui02_1
    ;スチル切替【02】
    [setSeijouiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    そ、それは……[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setSeijouiCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0006.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしから誘ったわけなので、もちろん、[r]
    前もって身ぎれいにしてはいて……[p]
    [_tb_end_text]



    ;スチル切替【02】
    [setSeijouiCG cg="02" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0007.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    それであの……えと……[r]
    あうぅ……[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="semaruSeijoui02_3" ]
    ;----------------------------------------
    ;分岐【選択肢】みおをよく見たいから
    *semaruSeijoui02_2
    ;スチル切替【03】
    [setSeijouiCG cg="03" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0008.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    は、はい……[r]
    わたしも恥ずかしいです、けど……[p]
    [_tb_end_text]


    ;スチル切替【01】
    [setSeijouiCG cg="01" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0009.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生のこと、よく見える方がいい、です[p]
    [_tb_end_text]

    ;　→次の共通部へ
    [jump target="semaruSeijoui02_3" ]
    ;----------------------------------------
    ;【共通部】
    *semaruSeijoui02_3
    ;スチル切替【04】
    [setSeijouiCG cg="04" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0011.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    恋人つなぎ、ですね[r]
    えへへ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    緊張と興奮で互いの手にはちからがこもり、[r]
    指の骨がこすれ、手のひらは汗ばんでいる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    恋人つなぎなんて名前の割に[r]
    やっていることはひどく淫靡だ。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0013.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    でもこれがいいです[r]
    このまま、離さないでください[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの控えめな握力が、[r]
    熱く甘いしびれになって全身を走る。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

    ;スチル切替【05】：先生のズボンが膨らんでみおの股間に触れている。
    [setSeijouiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0014.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん……っ♡[p]
    [_tb_end_text]


    ;スチル切替【06】
    [setSeijouiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0015.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すごい……ズボンごしでも[r]
    カチカチなのわかります……[p]
    [_tb_end_text]


    ;スチル切替【05】
    [setSeijouiCG cg="05" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0016.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ、っふぁ……んんっ[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【06】
    [setSeijouiCG cg="06" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0018.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生の硬くて熱いので[r]
    女の子のだいじなところぐりぐりされて[p]
    [_tb_end_text]


    ;スチル切替【08】
    [setSeijouiCG cg="08" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0019.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたし、それだけで[r]
    溶けちゃいそうなくらい熱くなれて……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    確かに、ペニスの先端からは[r]
    ぬるついた汁気の感触が返って来る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの下着の中も[r]
    すごいことになっているのだ。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/zipper01.mp3"  ]

    ;スチル切替【09】
    [setSeijouiCG cg="09" time="300"]
    [tb_start_text mode=3 ]
    #
    たまらずズボンからペニスを解き放つ。[r]
    自覚できるほどの性臭が立ち昇る。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    そのまま素股のような動きを続ける。[p]
    [_tb_end_text]

    ;スチル切替【10】
    [setSeijouiCG cg="10" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0020.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わあ……[r]
    すごくたくましくて、すてき……[p]
    [_tb_end_text]


    ;スチル切替【11】
    [setSeijouiCG cg="11" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0021.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ぐりぐり、きもちいいです[r]
    もっと……してください……[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
    ;スチル切替【12】
    [setSeijouiCG cg="12" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0022.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ん、はぁ……っん、[r]
    あぁ……先生、先生ぇ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふたりの性器を隔てる白い薄布も[r]
    濡れてよじれ、もはや用をなしていない。[p]
    [_tb_end_text]

    [tb_start_text mode=4 ]
    #
    このまま続ければ事故のように[r]
    挿入してしまうだろう。[l]
    [_tb_end_text]
    
    [glink_center storage="Hscene/semaruSeijoui02.ks" target="semaruSeijoui02_4" text="……みお"]
    [s]
    *semaruSeijoui02_4
    ;スチル切替【13】
    [setSeijouiCG cg="13" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0023.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ……はい[p]
    [_tb_end_text]

    ;スチル切替【14】
    [setSeijouiCG cg="14" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0024.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    先生、来てください[r]
    わたしの中に……[p]
    [_tb_end_text]

    ;スチル切替【bk100】
    [image layer="2" storage="../bgimage/bk100.jpg" name="bkcg" ]

    [tb_start_text mode=3 ]
    #
    蕩けきっていたみおの秘所から[r]
    さらにふっとちからが抜ける。[p]
    [_tb_end_text]


    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0026.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ――あぁ――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    陰唇から膣壁に至るまでのすべてに[r]
    歓迎されながら、みおを貫いた。[p]
    [_tb_end_text]

    [playse  volume="100"  time="1000"  buf="1"  storage="se/ireru1.mp3"  ]
    ;スチル切替【15】
    [setSeijouiCG cg="15" time="300"]
    [free layer="2" name="bkcg" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0027.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    ――～～……っ♡♡[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setSeijouiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0028.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せん……せっ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    両手をさらにきつくつなぎ合わせながら[r]
    腰を進める。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    小柄なみおの下腹部が、[r]
    ペニスを浮き上がらせるようにうねる。[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setSeijouiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0029.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちんの大きさとかかたち、[r]
    見えなくてもわかります[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおの負担を気遣いながらの挿入が[r]
    なめらかな抽送に変わっていく。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    膣奥からあふれ出る愛液がそうさせる。[r]
    結合部はもう白く泡立っていた。[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setSeijouiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0030.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    んっ、んきゅうぅっ、あっ、あんぁぁ……[r]
    先生と、つながってるうぅ……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    噴火の激しさではなく、[r]
    水位が満ちるような静かな快感――[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    多幸感にも似た心地よさが[r]
    互いの中で高まっていくのがわかる。[p]
    [_tb_end_text]


    ;スチル切替【15】
    [setSeijouiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0031.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせっ、せんせぇっ[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setSeijouiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0032.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    もっと、深くぅ……っ[p]
    [_tb_end_text]


    ;【BGS】piston1.mp3,time6000で再生
    [fadeinse storage="BGS/piston1.mp3" time="6000" buf="0" ]

    [tb_start_text mode=3 ]
    #
    性器と手、人体でもっとも鋭敏な器官を[r]
    触れ合わせながら交歓は続いていく。[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setSeijouiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0033.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぅ……んっ、くひぅ……[r]
    いっ、あぁぁ……っ[p]
    [_tb_end_text]


    ;スチル切替【15】
    [setSeijouiCG cg="15" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0034.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あ……？　あぁ……[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setSeijouiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0035.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おちんちん、心臓みたいにばくばくしてて[r]
    もしかしてこれ……[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setSeijouiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0036.mp3"  ]
    [tb_start_text mode=4 ]
    #みお
    しゃせい、しそうなんですね……？[r]
    そうなんですよね……？[l]
    [_tb_end_text]

    ;【BGS】piston2.mp3,time6000で再生
    [fadeinse storage="BGS/piston2fast.mp3" time="6000" buf="0" ]
    ;一択選択肢：確かに、もうそろそろ……っ
    [glink_center storage="Hscene/semaruSeijoui02.ks" target="semaruSeijoui02_5" text="確かに、もうそろそろ……っ"]
    [s]
    *semaruSeijoui02_5


    ;スチル切替【18】
    [setSeijouiCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0037.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    精液、出そうなんですね[r]
    わたしの中に出しちゃうんですね[p]
    [_tb_end_text]


    ;スチル切替【16】
    [setSeijouiCG cg="16" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0038.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    なか、だし……っ[r]
    考えただけでイっちゃいそ――[p]
    [_tb_end_text]


    ;スチル切替【17】
    [setSeijouiCG cg="17" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0039.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    せんせぇ、お願い……[p]
    [_tb_end_text]


    ;スチル切替【18】
    [setSeijouiCG cg="18" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0040.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしの、なかに……っ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ――みおの名前を呼びながら、精を放った。[p]
    [_tb_end_text]

    ;射精演出,BGS停止,スチル切替【19】
    [stopse buf="0" ]
    [setSeijouiCG cg="19" time="300" syasei="true"]

    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0041.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ――……♡[p]
    [_tb_end_text]


    ;スチル切替【20】
    [setSeijouiCG cg="20" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0042.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ、あぁ……来て、ますよぉ[r]
    どくどく、どくどくってぇ[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    受け渡す、とでも言うような[r]
    ふしぎな感覚の長い射精だった。[p]
    [_tb_end_text]


    ;スチル切替【21】
    [setSeijouiCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0043.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    わたしもイってぇ……っ[p]
    [_tb_end_text]



    ;スチル切替【22】
    [setSeijouiCG cg="22" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0044.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    おなかの、深いところ、痙攣させながら[r]
    先生の精液でたぽたぽになってるっ、のぉ……っ[p]
    [_tb_end_text]


    ;スチル切替【23】
    [setSeijouiCG cg="23" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0045.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    あっ……っ、[r]
    あぁ……――～～っ♡[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    みおも深く穏やかな絶頂に包まれ、[r]
    静かな法悦を享受している。[p]
    [_tb_end_text]


    ;スチル切替【21】
    [setSeijouiCG cg="21" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0046.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    はぁ、はふ……先生……[p]
    [_tb_end_text]

    ;スチル切替【25】
    [setSeijouiCG cg="25" time="300"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0049.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    すてきに抱いてくれて[r]
    ありがとう、ございました[p]
    [_tb_end_text]

    [fadeoutbgm2 time="6000" ]
    ;スチル切替【bk100】
    [free layer="2" name="still" time="500" ]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m008_scene9_0051.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    このまま……つながったまま[r]
    一緒に……眠っ……[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    ふっとちからが抜けて、[r]
    ふたりしてベッドに沈み込む。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    眠りの淵に落ちていくのがわかる。[p]
    [_tb_end_text]

    [tb_start_text mode=3 ]
    #
    それでも、ふたりつないだ手は離さなかった。[p]
    [_tb_end_text]



    ;シーン回想の場合、ここで終了

    [if exp="!f.flag_replay"]

        ;みお体力-20   
        [calcMioHP HP="-20"]
        ;性経験加算
        ;　みおから迫って+1、膣内射精;1、セックス+1、開発度膣+1、絶頂数膣+1、開発度陰核+1
        [eval exp="f.malerape++"]
        [eval exp="f.sex++" ]
        [eval exp="f.sexTotal++" ]
        [eval exp="f.cunt++" ]
        [eval exp="f.clitoris++" ]
        [eval exp="f.cuntTotalOrgasm++" ]
        [eval exp="f.clitorisTotalOrgasm++" ]

    [endif]

    ;本編からの場合は適当に加筆して翌日へ

[endmacro]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;以上









