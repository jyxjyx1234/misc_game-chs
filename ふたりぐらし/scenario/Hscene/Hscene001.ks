
;■１日め、眠るみおへのタッチ操作で無理やり行為を進めた場合に発生	
;　選択肢「A.無理やり最後までする」「B.やめる（やめてごまかす）」でA.を選択

;■起こしてしまっての会話のあとに急に行為をした場合は「☆」からスタート

;■その他、うちまさん側に処理の追加を頼みたいところは★マークを打っています。


;■先の話ですが、ストアページに掲載する一般体験だとシーン開始時にスチルを少し見せて
;　すぐにシーンを中断する予定ですので、そこも考慮した流れの組み方をお願いします。

;■試しにシーンを組んでみてスチル切替のタイミング変更や差分の追加などが出て来るかなと思います。



;------------------------------------------------------
*Hscene001_1
[clearfix]
[start_keyconfig]


[chara_hide_all time="1000" wait="false" ]
[bg2 storage="bk100.jpg" time="0" wait="false" ]
[free layer="1" name="siru" time="0"]
[free name="tikubi" layer="1" time="0"]
[free layer="3" name="futon" time="0"]
[free layer="2" name="tissue" time="0"  ]
[stopse buf="3" ]
[freeimage layer="0" time="0"]
[cursor storage="default"]


[setreplay name="Hscene001" storage="Hscene/Hscene001.ks" target="Hscene001_select"]
[if exp="f.flag_replay==true"]
    [eval exp="f.cgmodeFlag = true" ]
    [jump target="Hscene001_select" ]

[else]
    [eval exp="f.cgmodeFlag = false" ]
[endif]
[setreplay name="Hscene001" storage="Hscene/Hscene001.ks" target="Hscene001_select"]
[endreplay]

*Hscene001_1_replay
;★暗転スタート、暗転中に　Hscene001_00.png　を瞬間表示しておき、暗転を外す
[maskStart]
    [clearAllImage]
    [bg2 storage="bk100.jpg" time="0"  ]
    [messageON]
    [setButtonInTalk]
    [CGSet layer="1"  storage="Hscene001_00.png" folder="fgimage/EVcg/Hscene001" time="0"  ]
[mask_off time="1000" ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふあ……うう～ん……[r]
えっ……せんせえ……？[p]
[_tb_end_text]

;★Hscene001_01.png　表示
[CGSet layer="1"  storage="Hscene001_01.png" folder="fgimage/EVcg/Hscene001" time="0"  ]
[setEndrollCG storage="../fgimage/EVcg/Hscene001/Hscene001_01.png" name="day1rape" cgType="normal" cloth="" dayPart="" priority="1"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あれ……？[r]
なんですか……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおは寝ぼけているようで、甘い香りをともなう[r]
しどけないしぐさのひとつひとつが煽情的だった。[p]
[_tb_end_text]

;★Hscene001_02.png　表示
[CGSet layer="1"  storage="Hscene001_02.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、えっ、[r]
なんですかっ……なに……っ[p]
[_tb_end_text]

;★Hscene001_03.png　表示
[CGSet layer="1"  storage="Hscene001_03.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
きゃっ…！？[r]
や、なに、なんですかっ…[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
騒がせてはいけない――焦って押さえ込んだ動きが、[r]
そのまま未成熟な女性器をつらぬく形になった。[p]
[_tb_end_text]

;--------------------------------------------------
;☆途中からの開始
;★暗転スタート、暗転中に　;★Hscene001_03.png　を瞬間表示しておき、暗転を外す
*Hscene001_2
[setreplay name="Hscene001" storage="Hscene/Hscene001.ks" target="Hscene001_select"]

[chara_hide_all time="1000" wait="false" ]
[bg2 storage="bk100.jpg" time="0" wait="false" ]
[free layer="1" name="siru" time="0"]
[free name="tikubi" layer="1" time="0"]
[free layer="3" name="futon" time="0"]
[free layer="2" name="tissue" time="0"  ]
[clearfix name="command" ]
[clearfix name="osawariIcon" ]
[free name="toiki1" layer="1" ]
[free name="toiki2" layer="1" ]

[call target="cutinDelete" storage="osawari.ks"  ]
[stopse buf="2"]
[font size="30"]
[frameReset]

[cm]
[eval exp="f.hakkaku2FlagType = 'rape'" ]
[stopse buf="3" ]
[freeimage layer="0" time="0"]
[cursor storage="default"]
[if exp="f.isAwake == true" ]

    [maskStart]

        [clearAllImage]
        [bg2 storage="bk100.jpg" time="0"  ]
        [messageON]
        [setButtonInTalk]
        [CGSet layer="1"  storage="Hscene001_03.png" folder="fgimage/EVcg/Hscene001" time="100"  ]

    [mask_off time="1000" ]

[else]
    [clearAllImage]
    [setButtonInTalk]
    [CGSet layer="1"  storage="Hscene001_03.png" folder="fgimage/EVcg/Hscene001" time="100"  ]

[endif]
[cg  storage="../fgimage/EVcg/Hscene001/Hscene001_00.png" ]
[setEndrollCG storage="../fgimage/EVcg/Hscene001/Hscene001_00.png" name="day1rape" cgType="normal" cloth="" dayPart="" priority="1"]
;--------------------------------------------------
[eval exp="f.sexTotal += 1" ]
[playbgm2  volume="100"  time="1000"  loop="true"  fadein="true"  storage="BGM6_violence.mp3"  html5="false"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0005.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
やめてくださいっ……[r]
何を――[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/ireru3.mp3"  ]
;★Hscene001_04.png　表示
[CGSet layer="1"  storage="Hscene001_04.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
;★赤フラッシュ
[mask time="100" color="red"  ]
    [eval exp="f.virgin = addExperience(f.virgin,'2101','訪問間もないみおに襲いかかり、純潔を奪った。')" ]
[mask_off time="500"  ]


;★Hscene001_05.png　表示
[CGSet layer="1"  storage="Hscene001_05.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
～～～～っ！？[r]
ひっ……　あぁっ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……　ぁ……	[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
[tb_start_text mode=3 ]
#
根元まで入り込んだペニスを締めつけるように[r]
みおは衝撃に打ち震え、下腹をわななかせている。[p]
[_tb_end_text]

;★Hscene001_06.png　表示
[CGSet layer="1"  storage="Hscene001_06.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひぐっ……[r]
な、なんで……っ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0009.mp3"  ]
[tb_start_text mode=3 ]
#みお
だめ、抜いて……抜いてえっ……[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、や、やぁぁっ……[r]
痛いぃっ……！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="BGS/piston1.mp3"  loop="true"  clear="true"  fadein="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
抜いて……抜いてくださいっ……[r]
う、あ、はぁぁっ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
膣肉の甘美な感触の前に理性はもう吹き飛んでいた。[r]
味わうために、ゆるやかに腰を遣う。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
抽送のうち、みおの胎内は湿り気と熱を増し、[r]
腰がとろけそうなほどの快感をもたらす。[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふ、ううぅ……[r]
んんんっ……[p]
[_tb_end_text]

;★Hscene001_07.png　表示
[CGSet layer="1"  storage="Hscene001_07.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
ぐすっ……[r]
っ…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの弱々しい抵抗はすでに止み、[r]
もう途切れ途切れの嗚咽を漏らすだけだ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
うう……ぐす……っ[r]
く…うぅ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="BGS/piston2fast.mp3"  loop="true"  clear="true"  fadein="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
……っ　あ、あぁっ……[r]
うぅっ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひっく……[r]
…………っ[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0017.mp3"  ]
[tb_start_text mode=3 ]
#みお
ん……っ   うぁ……[r]
…………っ[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
[tb_start_text mode=3 ]
#
いつの間にか水音は激しく変わり、[r]
結合部からしずくがしたたるほど愛液が溢れていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]	
#
若い肢体は行為に順応しつつあるのだ。[r]
そうとわかればもう、あとの腰遣いは全力だった。[p]
[_tb_end_text]

;★Hscene001_08.png　表示
[CGSet layer="1"  storage="Hscene001_08.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0018.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひんっ……！[r]
あ、あぁぁっ……！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
ぐす……ひどいです……っ[p]
[_tb_end_text]

;★Hscene001_10.png　表示
[CGSet layer="1"  storage="Hscene001_10.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0020.mp3"  ]
[tb_start_text mode=3 ]
#みお
だめ……っ、だめぇっ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの反応も大きくなってきた。[r]
シーツをぎゅっと握りしめて悶えている。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0021.mp3"  ]
[tb_start_text mode=3 ]
#みお
どうして、こんな……[r]
っ……あうぅ………[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
;★Hscene001_11.png　表示
[CGSet layer="1"  storage="Hscene001_11.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0022.mp3"  ]
[tb_start_text mode=3 ]
#みお
う、ううぅ……[r]
ふっ……うう………[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
っく……ぐす……[r]
…………[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0024.mp3"  ]
[tb_start_text mode=3 ]
#みお
はぁ……っ[r]
せんせい、なんで――[p]
[_tb_end_text]

;【！】ボイスにbパターンあり。とりあえずAで再生して感触を見る
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0025_A.mp3"  ]
[tb_start_text mode=3 ]
#みお
………っ、う…………[r]
し、信じて、た、のに……っ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0026.mp3"  ]
[tb_start_text mode=3 ]
#みお
う、ん…[r]
あぁ………はぁ……っ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0027.mp3"  ]
[tb_start_text mode=3 ]
#みお
はぁ……あぁ……！[r]
うぅん………[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0028.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、く、あぁぁっ…[r]
はぁ……はぁ……　やぁっ………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおのすべてに、飛び散る涙にすら欲情した。[r]
膣壁にぎゅうっと搾られ、射精感がこみ上げる。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0029.mp3"  ]
[tb_start_text mode=3 ]
#みお
ん、んんんっ………！[p]
[_tb_end_text]

;--------------
;★Hscene001_09.png　表示
[CGSet layer="1"  storage="Hscene001_09.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/manko1.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0030.mp3"  ]
[tb_start_text mode=4 ]
#みお
なかでっ………[r]
びくびくしてるっ………[l]
[_tb_end_text]

[glink  color="btn_05_black" align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="そろそろ……出すぞ……！"  _clickable_img=""  target="*s1next"  ]
[s]
[s]
*s1next

;--------------

;★Hscene001_10.png　表示
[CGSet layer="1"  storage="Hscene001_12.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0031.mp3"  ]
[tb_start_text mode=3 ]
#みお
……っ！？[r]
だめぇっ………！[p]
[_tb_end_text]

;★Hscene001_11.png　表示
[CGSet layer="1"  storage="Hscene001_11.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0032.mp3"  ]
[tb_start_text mode=3 ]
#みお
お願い…します…っ[r]
やめてくださいっ……！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0033.mp3"  ]
[tb_start_text mode=3 ]
#みお
や、やめてっ…だ、誰にも……[r]
言いませんから……！[p]
[_tb_end_text]

;--------------

;★Hscene001_12.png　表示
[CGSet layer="1"  storage="Hscene001_12.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0034.mp3"  ]
[tb_start_text mode=4 ]
#みお
あぁぁっ…だめ、だめぇっ……[r]
抜いてぇっ……！[l]
[_tb_end_text]

[glink  color="btn_05_black" align="center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="出る！"  _clickable_img=""  target="*s2next"  ]
[s]
[s]
*s2next

;--------------

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0035.mp3"  ]
[tb_start_text mode=3 ]
#みお
きゃうぅっ…！[r]
～～～～っ！　っ……！！[p]
[_tb_end_text]

;★Hscene001_13.png　表示
[CGSet layer="1"  storage="Hscene001_13.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0036.mp3"  ]
[tb_start_text mode=3 ]
#みお
や、あ、やああぁぁっ……！[r]
あぁ～～～～っっ……！！ [p]
[_tb_end_text]
;★Hscene001_14.png　表示

[syaseiFlashForStill storage="EVcg/Hscene001/Hscene001_14.png"  count="true"]



[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0037.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、うぁっ……！[r]
んんん～っ……！[p]
[_tb_end_text]

;--------------

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0038.mp3"  ]
[tb_start_text mode=4 ]
#みお
はあっ、はぁっ……[r]
あぁ……　あ……[l]
[_tb_end_text]

[glink  color="btn_05_black" align="center" addlog="true" storage=""  size="20"  x="528"  y="400"  width=""  height=""  text="――気持ちよかったよ"  _clickable_img=""  target="*s3next"  ]
[s]
[s]
*s3next

;--------------

;★Hscene001_15.png　表示
[CGSet layer="1"  storage="Hscene001_15.png" folder="fgimage/EVcg/Hscene001" time="100"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0039.mp3"  ]
[tb_start_text mode=3 ]
#みお
ううぅぅぅ……[r]
ひく……　ぐすっ……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0040.mp3"  ]
[tb_start_text mode=3 ]
#みお
はぁ……[r]
ぐずっ、ぐす……うぅ……[p]
[_tb_end_text]

;--------------

[tb_start_text mode=4 ]
#
おそろしいほどの射精量だったはずなのに、[r]
膣内のペニスは萎えることなく、張りつめている。[l]
[_tb_end_text]

[glink  color="btn_05_black" align="center" addlog="true" storage=""  size="20"  x="540"  y="400"  width=""  height=""  text="もう一回だけ……"  _clickable_img=""  target="*s4next"  ]
[s]
[s]
*s4next

;--------------

[playse  volume="100"  time="1000"  buf="0"  storage="BGS/piston1.mp3"  loop="true"  clear="true"  fadein="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/manko2.mp3"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m002_add0041.mp3"  ]
[tb_start_text mode=3 ]
#みお
っ……[r]
あうぅ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
それからも、何度も何度もみおを犯し――[r]
夜明け近くになって気絶するように眠りに落ちた。[p]
[_tb_end_text]


[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=3 ]
#
…………[r]
……[p]
[_tb_end_text]
[stopse  time="1000"  buf="0"  fadeout="true"  ]



[if exp="f.cgmodeFlag == true"]
    [endreplay]

[endif]
;ステータス加算処理
[eval exp="f.rapeFlag = false" ]
[mask]
    [clearfix]
    [start_keyconfig]
    [free layer="1" name="siru" time="0"]
    [bg2 storage="bk100.jpg" time="0"]
    [chara_hide_all ]
    [freeimage layer="0"]
    [freeimage layer="1"]
    [cursor storage="default"]
    ;[clearstack]
    [frameReset]
    [free_layermode time="0"]
    [layopt layer="message2" visible="false"]
    [eval exp="f.creampie+= 2" ]
    [eval exp="f.creampieToday+= 2" ]
    [eval exp="f.cunt += 3" ]
    [if exp="f.cgmodeFlag == false" ]
    [setUI]

    [calcMioHP HP="-40"]
    [eval exp="f.isSuikan.isBare = true" ]
    [eval exp="f.isSuikan.day = f.day" ]
    [eval exp="f.rapeCGWatch = true" ]
    [plusOrgasm]
    [juseiCheck]
    [if exp="f.juseiEvToday && !sf.isTaiken" ]
        [juseiAnim]
    [endif]

    [resetDayHensu]
    [endif]

[mask_off]
[if exp="f.day == 2" ]
    [messageON]
    [clearstack]
    [jump target="top2" storage="Day002.ks"   ]

[else]
    [if  exp="f.dayOfWeek == 1"]
        [clearstack]
        [jump  storage="communication2.ks"  target="dayStart"  ]


    [else]

        [clearstack]
        [jump  target="dayStart"  storage="communication1.ks"  ]
    [endif]
[endif]

[endreplay]

*Hscene001_select
[setreplay name="Hscene001" storage="Hscene/Hscene001.ks" target="Hscene001_select"]
[button name="myButton" fix="true" target="endReplay"  storage="macro_call.ks" enterimg="osawari/modoru_2.png"  graphic="osawari/modoru.png"  width="38"  height="38"  x="1249"  y="15"  cond="f.flag_replay"  ]
[replaySituSelect column="1" text="&tf.text"]
[eval exp="tf.sentakushi = 1" ]


[glink  color="btn_05_black"  text="寝ているところに無理矢理……"  _clickable_img=""  target="Hscene001_go" size="24" x="auto"   y=&400-(tf.sentakushi*100)  width="500"  height=""  preexp="0"  exp="f.isAwake = false,tf.label='Hscene001_1_replay',tf.situText1='寝ているところに無理矢理……'"  clickse="se/s_kettei.mp3"   ]
[glink  color="btn_05_black"  text="起こしてしまった後に無理矢理……"  target="Hscene001_go" size="24" x="auto"  y="400"  width="500"  height=""  preexp="0" exp="f.isAwake = true,tf.label='Hscene001_2',tf.situText1='起こしてしまった後に無理矢理……'""  clickse="se/s_kettei.mp3"   ]
[s]
[s]
*Hscene001_go
[columnUpdate column="1" text="&tf.situText1"]
[replaySituCheck]
[if exp="tf.isSituOK" ]
    [deleteSituColumn]
    [setButtonInTalk]
    [jump target="&tf.label" ]
[else]
    [jump target="*Hscene001_select" ]
[endif]

[endreplay]
;以上	
