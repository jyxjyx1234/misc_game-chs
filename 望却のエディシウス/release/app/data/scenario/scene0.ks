;望却のエディシウス

*start

[cm]

[free_layermode name="particles"]

[chara_hide_all layer=0 time=1000 wait=false]
[chara_hide_all layer=1 time=1000 wait=false]
[chara_hide_all layer=2 time=1000 wait=false]

[clearfix]
[start_keyconfig]
[fadeoutbgm]

[bg storage="kuro.jpg" time="2000" method="fadeIn"]
[wait  time="1000"]

;;;フィクションの注意書き
[bg storage="tyuui.jpg" time="1000" method="fadeIn"]
[wait  time="5000"]
[bg storage="kuro.jpg" time="1000" method="fadeIn"]


;このゲームで登場するキャラクターを宣言
[chara_new  name="望1_ネックレス有" storage="chara/nozomi/tachie_1/on_neckless/1_tuujou.png" jname="望1_ネックレス有"]
[chara_new  name="望1_ネックレス無" storage="chara/nozomi/tachie_1/off_neckless/1_tuujou.png" jname="望1_ネックレス無"]

[chara_new  name="望2_ネックレス有" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou.png" jname="望2_ネックレス有"]
[chara_new  name="望2_ネックレス無" storage="chara/nozomi/tachie_2/off_neckless/2_tuujou.png" jname="望2_ネックレス無"]

[chara_new  name="望3_ネックレス有" storage="chara/nozomi/tachie_3/on_neckless/3_tuujou.png" jname="望3_ネックレス有"]
[chara_new  name="望3_ネックレス無" storage="chara/nozomi/tachie_3/off_neckless/3_tuujou.png" jname="望3_ネックレス無"]

;モブキャラ
[chara_new  name="母"   storage="chara/mob_onna/haha.png" jname="母"]
[chara_new  name="父"   storage="chara/mob_otoko/chichi.png" jname="父"]
[chara_new  name="上司" storage="chara/mob_otoko/joushi.png" jname="上司"]
[chara_new  name="駅員" storage="chara/mob_otoko/ekiin.png" jname="駅員"]
[chara_new  name="警察" storage="chara/mob_otoko/keisatsu.png" jname="警察"]
[chara_new  name="男"   storage="chara/mob_otoko/otoko.png" jname="男"]


;キャラクターの表情登録

;;; 望1 ────────────────────
[chara_face name="望1_ネックレス有" face="egao" storage="chara/nozomi/tachie_1/on_neckless/1_egao.png"]
[chara_face name="望1_ネックレス有" face="egao2" storage="chara/nozomi/tachie_1/on_neckless/1_egao_2.png"]
[chara_face name="望1_ネックレス有" face="gimon" storage="chara/nozomi/tachie_1/on_neckless/1_gimon.png"]
[chara_face name="望1_ネックレス有" face="gimon2" storage="chara/nozomi/tachie_1/on_neckless/1_gimon_2.png"]
[chara_face name="望1_ネックレス有" face="gyagu1" storage="chara/nozomi/tachie_1/on_neckless/1_gyagu1.png"]
[chara_face name="望1_ネックレス有" face="gyagu2" storage="chara/nozomi/tachie_1/on_neckless/1_gyagu2.png"]
[chara_face name="望1_ネックレス有" face="metoji" storage="chara/nozomi/tachie_1/on_neckless/1_metoji.png"]
[chara_face name="望1_ネックレス有" face="metoji2" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_2.png"]
[chara_face name="望1_ネックレス有" face="metoji3" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_3.png"]
[chara_face name="望1_ネックレス有" face="metoji4" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_4.png"]
;;;[chara_face name="望1_ネックレス有" face="metoji5" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_5.png"]
;;;[chara_face name="望1_ネックレス有" face="metoji6" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_6.png"]
;;;[chara_face name="望1_ネックレス有" face="obie1_1" storage="chara/nozomi/tachie_1/on_neckless/1_obie1_1.png"]
;;;[chara_face name="望1_ネックレス有" face="obie1_2" storage="chara/nozomi/tachie_1/on_neckless/1_obie1_2.png"]
[chara_face name="望1_ネックレス有" face="obie1_3" storage="chara/nozomi/tachie_1/on_neckless/1_obie1_3.png"]
;;;[chara_face name="望1_ネックレス有" face="obie1_4" storage="chara/nozomi/tachie_1/on_neckless/1_obie1_4.png"]
;;;[chara_face name="望1_ネックレス有" face="obie2_1" storage="chara/nozomi/tachie_1/on_neckless/1_obie2_1.png"]
;;;[chara_face name="望1_ネックレス有" face="obie2_2" storage="chara/nozomi/tachie_1/on_neckless/1_obie2_2.png"]
;;;[chara_face name="望1_ネックレス有" face="obie2_3" storage="chara/nozomi/tachie_1/on_neckless/1_obie2_3.png"]
;;;[chara_face name="望1_ネックレス有" face="obie2_4" storage="chara/nozomi/tachie_1/on_neckless/1_obie2_4.png"]
[chara_face name="望1_ネックレス有" face="odoroki" storage="chara/nozomi/tachie_1/on_neckless/1_odoroki.png"]
[chara_face name="望1_ネックレス有" face="odoroki2" storage="chara/nozomi/tachie_1/on_neckless/1_odoroki_2.png"]
[chara_face name="望1_ネックレス有" face="pien" storage="chara/nozomi/tachie_1/on_neckless/1_pien.png"]
[chara_face name="望1_ネックレス有" face="tuujou" storage="chara/nozomi/tachie_1/on_neckless/1_tuujou.png"]
[chara_face name="望1_ネックレス有" face="utsumuki" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki.png"]
[chara_face name="望1_ネックレス有" face="utsumuki2" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki_2.png"]
[chara_face name="望1_ネックレス有" face="utsumuki3" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki_3.png"]
[chara_face name="望1_ネックレス有" face="wink" storage="chara/nozomi/tachie_1/on_neckless/1_wink.png"]

[chara_face name="望1_ネックレス有" face="tuujou_dark" storage="chara/nozomi/tachie_1/on_neckless/1_tuujou_dark.png"]
[chara_face name="望1_ネックレス有" face="utsumuki_dark" storage="chara/nozomi/tachie_1/on_neckless/1_utsumuki_dark.png"]
[chara_face name="望1_ネックレス有" face="egao_dark" storage="chara/nozomi/tachie_1/on_neckless/1_egao_dark.png"]
[chara_face name="望1_ネックレス有" face="metoji_dark" storage="chara/nozomi/tachie_1/on_neckless/1_metoji_dark.png"]

[chara_face name="望1_ネックレス有" face="gyagu2_shirt" storage="chara/nozomi/tachie_1/on_neckless/1_shirt_gyagu2.png"]
[chara_face name="望1_ネックレス有" face="metoji_shirt" storage="chara/nozomi/tachie_1/on_neckless/1_shirt_metoji.png"]


[chara_face name="望1_ネックレス無" face="egao" storage="chara/nozomi/tachie_1/off_neckless/1_egao.png"]
[chara_face name="望1_ネックレス無" face="gimon" storage="chara/nozomi/tachie_1/off_neckless/1_gimon.png"]
[chara_face name="望1_ネックレス無" face="gyagu1" storage="chara/nozomi/tachie_1/off_neckless/1_gyagu1.png"]
[chara_face name="望1_ネックレス無" face="gyagu2" storage="chara/nozomi/tachie_1/off_neckless/1_gyagu2.png"]
[chara_face name="望1_ネックレス無" face="metoji" storage="chara/nozomi/tachie_1/off_neckless/1_metoji.png"]
;;;[chara_face name="望1_ネックレス無" face="obie1_1" storage="chara/nozomi/tachie_1/off_neckless/1_obie1_1.png"]
;;;[chara_face name="望1_ネックレス無" face="obie1_2" storage="chara/nozomi/tachie_1/off_neckless/1_obie1_2.png"]
;;;[chara_face name="望1_ネックレス無" face="obie1_3" storage="chara/nozomi/tachie_1/off_neckless/1_obie1_3.png"]
;;;[chara_face name="望1_ネックレス無" face="obie1_4" storage="chara/nozomi/tachie_1/off_neckless/1_obie1_4.png"]
;;;[chara_face name="望1_ネックレス無" face="obie2_1" storage="chara/nozomi/tachie_1/off_neckless/1_obie2_1.png"]
;;;[chara_face name="望1_ネックレス無" face="obie2_2" storage="chara/nozomi/tachie_1/off_neckless/1_obie2_2.png"]
;;;[chara_face name="望1_ネックレス無" face="obie2_3" storage="chara/nozomi/tachie_1/off_neckless/1_obie2_3.png"]
;;;[chara_face name="望1_ネックレス無" face="obie2_4" storage="chara/nozomi/tachie_1/off_neckless/1_obie2_4.png"]
[chara_face name="望1_ネックレス無" face="odoroki" storage="chara/nozomi/tachie_1/off_neckless/1_odoroki.png"]
[chara_face name="望1_ネックレス無" face="pien" storage="chara/nozomi/tachie_1/off_neckless/1_pien.png"]
[chara_face name="望1_ネックレス無" face="tuujou" storage="chara/nozomi/tachie_1/off_neckless/1_tuujou.png"]
[chara_face name="望1_ネックレス無" face="utsumuki" storage="chara/nozomi/tachie_1/off_neckless/1_utsumuki.png"]
[chara_face name="望1_ネックレス無" face="wink" storage="chara/nozomi/tachie_1/off_neckless/1_wink.png"]


;;; 望2 ────────────────────
[chara_face name="望2_ネックレス有" face="egao" storage="chara/nozomi/tachie_2/on_neckless/2_egao.png"]
[chara_face name="望2_ネックレス有" face="egao2" storage="chara/nozomi/tachie_2/on_neckless/2_egao2.png"]
[chara_face name="望2_ネックレス有" face="gimon" storage="chara/nozomi/tachie_2/on_neckless/2_gimon.png"]
[chara_face name="望2_ネックレス有" face="gyagu1" storage="chara/nozomi/tachie_2/on_neckless/2_gyagu1.png"]
;;;[chara_face name="望2_ネックレス有" face="gyagu2" storage="chara/nozomi/tachie_2/on_neckless/2_gyagu2.png"]
[chara_face name="望2_ネックレス有" face="metoji" storage="chara/nozomi/tachie_2/on_neckless/2_metoji.png"]
[chara_face name="望2_ネックレス有" face="metoji2" storage="chara/nozomi/tachie_2/on_neckless/2_metoji_2.png"]
[chara_face name="望2_ネックレス有" face="odoroki" storage="chara/nozomi/tachie_2/on_neckless/2_odoroki.png"]
[chara_face name="望2_ネックレス有" face="pien" storage="chara/nozomi/tachie_2/on_neckless/2_pien.png"]
[chara_face name="望2_ネックレス有" face="tuujou" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou.png"]
[chara_face name="望2_ネックレス有" face="tuujou2" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou_2.png"]
[chara_face name="望2_ネックレス有" face="utsumuki" storage="chara/nozomi/tachie_2/on_neckless/2_utsumuki.png"]
[chara_face name="望2_ネックレス有" face="wink" storage="chara/nozomi/tachie_2/on_neckless/2_wink.png"]

[chara_face name="望2_ネックレス有" face="gimon_shirt" storage="chara/nozomi/tachie_2/on_neckless/2_shirt_gimon.png"]
[chara_face name="望2_ネックレス有" face="odoroki_shirt" storage="chara/nozomi/tachie_2/on_neckless/2_shirt_odoroki.png"]
[chara_face name="望2_ネックレス有" face="tuujou_shirt" storage="chara/nozomi/tachie_2/on_neckless/2_shirt_tuujou.png"]
[chara_face name="望2_ネックレス有" face="metoji_shirt" storage="chara/nozomi/tachie_2/on_neckless/2_shirt_metoji.png"]
[chara_face name="望2_ネックレス有" face="utsumuki_shirt" storage="chara/nozomi/tachie_2/on_neckless/2_shirt_utsumuki.png"]


[chara_face name="望2_ネックレス無" face="egao" storage="chara/nozomi/tachie_2/off_neckless/2_egao.png"]
[chara_face name="望2_ネックレス無" face="egao2" storage="chara/nozomi/tachie_2/off_neckless/2_egao2.png"]
[chara_face name="望2_ネックレス無" face="gimon" storage="chara/nozomi/tachie_2/off_neckless/2_gimon.png"]
;;;[chara_face name="望2_ネックレス無" face="gyagu1" storage="chara/nozomi/tachie_2/off_neckless/2_gyagu1.png"]
[chara_face name="望2_ネックレス無" face="gyagu2" storage="chara/nozomi/tachie_2/off_neckless/2_gyagu2.png"]
[chara_face name="望2_ネックレス無" face="metoji" storage="chara/nozomi/tachie_2/off_neckless/2_metoji.png"]
[chara_face name="望2_ネックレス無" face="odoroki" storage="chara/nozomi/tachie_2/off_neckless/2_odoroki.png"]
;;;[chara_face name="望2_ネックレス無" face="pien" storage="chara/nozomi/tachie_2/off_neckless/2_pien.png"]
[chara_face name="望2_ネックレス無" face="tuujou" storage="chara/nozomi/tachie_2/off_neckless/2_tuujou.png"]
[chara_face name="望2_ネックレス無" face="utsumuki" storage="chara/nozomi/tachie_2/off_neckless/2_utsumuki.png"]
[chara_face name="望2_ネックレス無" face="wink" storage="chara/nozomi/tachie_2/off_neckless/2_wink.png"]


;;; 望3 ────────────────────
;;;[chara_face name="望3_ネックレス有" face="egao" storage="chara/nozomi/tachie_3/on_neckless/3_egao.png"]
[chara_face name="望3_ネックレス有" face="gimon" storage="chara/nozomi/tachie_3/on_neckless/3_gimon.png"]
;;;[chara_face name="望3_ネックレス有" face="gyagu1" storage="chara/nozomi/tachie_3/on_neckless/3_gyagu1.png"]
;;;[chara_face name="望3_ネックレス有" face="gyagu2" storage="chara/nozomi/tachie_3/on_neckless/3_gyagu2.png"]
;;;[chara_face name="望3_ネックレス有" face="metoji" storage="chara/nozomi/tachie_3/on_neckless/3_metoji.png"]
[chara_face name="望3_ネックレス有" face="metoji2" storage="chara/nozomi/tachie_3/on_neckless/3_metoji_2.png"]
[chara_face name="望3_ネックレス有" face="metoji3" storage="chara/nozomi/tachie_3/on_neckless/3_metoji_3.png"]
[chara_face name="望3_ネックレス有" face="obie1_1" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_1.png"]
[chara_face name="望3_ネックレス有" face="obie1_2" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_2.png"]
;;;[chara_face name="望3_ネックレス有" face="obie1_3" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_3.png"]
;;;[chara_face name="望3_ネックレス有" face="obie1_4" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_4.png"]
;;;[chara_face name="望3_ネックレス有" face="obie1_5" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_5.png"]
[chara_face name="望3_ネックレス有" face="obie1_6" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_6.png"]
[chara_face name="望3_ネックレス有" face="obie2_1" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_1.png"]
;;;[chara_face name="望3_ネックレス有" face="obie2_2" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_2.png"]
[chara_face name="望3_ネックレス有" face="obie2_3" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_3.png"]
;;;[chara_face name="望3_ネックレス有" face="obie2_4" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_4.png"]
[chara_face name="望3_ネックレス有" face="obie2_5" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_5.png"]
;;;[chara_face name="望3_ネックレス有" face="odoroki" storage="chara/nozomi/tachie_3/on_neckless/3_odoroki.png"]
;;;[chara_face name="望3_ネックレス有" face="pien" storage="chara/nozomi/tachie_3/on_neckless/3_pien.png"]
;;;[chara_face name="望3_ネックレス有" face="tuujou" storage="chara/nozomi/tachie_3/on_neckless/3_tuujou.png"]
[chara_face name="望3_ネックレス有" face="utsumuki" storage="chara/nozomi/tachie_3/on_neckless/3_utsumuki.png"]
[chara_face name="望3_ネックレス有" face="utsumuki2" storage="chara/nozomi/tachie_3/on_neckless/3_utsumuki_2.png"]
;;;[chara_face name="望3_ネックレス有" face="wink" storage="chara/nozomi/tachie_3/on_neckless/3_wink.png"]
;;;[chara_face name="望3_ネックレス有" face="obie1_2_dark" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_2_dark.png"]
[chara_face name="望3_ネックレス有" face="obie1_4_dark" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_4_dark.png"]
[chara_face name="望3_ネックレス有" face="obie1_6_dark" storage="chara/nozomi/tachie_3/on_neckless/3_obie1_6_dark.png"]
;;;[chara_face name="望3_ネックレス有" face="obie2_2_dark" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_2_dark.png"]
;;;[chara_face name="望3_ネックレス有" face="obie2_4_dark" storage="chara/nozomi/tachie_3/on_neckless/3_obie2_4_dark.png"]
[chara_face name="望3_ネックレス有" face="utsumuki2_dark" storage="chara/nozomi/tachie_3/on_neckless/3_utsumuki_2_dark.png"]
[chara_face name="望3_ネックレス有" face="metoji3_dark" storage="chara/nozomi/tachie_3/on_neckless/3_metoji_3_dark.png"]
[chara_face name="望3_ネックレス有" face="gimon2" storage="chara/nozomi/tachie_3/on_neckless/3_gimon_2.png"]

;;;[chara_face name="望3_ネックレス無" face="egao" storage="chara/nozomi/tachie_3/off_neckless/3_egao.png"]
[chara_face name="望3_ネックレス無" face="gimon" storage="chara/nozomi/tachie_3/off_neckless/3_gimon.png"]
;;;[chara_face name="望3_ネックレス無" face="gyagu1" storage="chara/nozomi/tachie_3/off_neckless/3_gyagu1.png"]
;;;[chara_face name="望3_ネックレス無" face="gyagu2" storage="chara/nozomi/tachie_3/off_neckless/3_gyagu2.png"]
;;;[chara_face name="望3_ネックレス無" face="metoji" storage="chara/nozomi/tachie_3/off_neckless/3_metoji.png"]
;;;[chara_face name="望3_ネックレス無" face="metoji2" storage="chara/nozomi/tachie_3/off_neckless/3_metoji_2.png"]
;;;[chara_face name="望3_ネックレス無" face="obie1_1" storage="chara/nozomi/tachie_3/off_neckless/3_obie1_1.png"]
;;;[chara_face name="望3_ネックレス無" face="obie1_2" storage="chara/nozomi/tachie_3/off_neckless/3_obie1_2.png"]
;;;[chara_face name="望3_ネックレス無" face="obie1_3" storage="chara/nozomi/tachie_3/off_neckless/3_obie1_3.png"]
;;;[chara_face name="望3_ネックレス無" face="obie1_4" storage="chara/nozomi/tachie_3/off_neckless/3_obie1_4.png"]
;;;[chara_face name="望3_ネックレス無" face="obie2_1" storage="chara/nozomi/tachie_3/off_neckless/3_obie2_1.png"]
;;;[chara_face name="望3_ネックレス無" face="obie2_2" storage="chara/nozomi/tachie_3/off_neckless/3_obie2_2.png"]
;;;[chara_face name="望3_ネックレス無" face="obie2_3" storage="chara/nozomi/tachie_3/off_neckless/3_obie2_3.png"]
;;;[chara_face name="望3_ネックレス無" face="obie2_4" storage="chara/nozomi/tachie_3/off_neckless/3_obie2_4.png"]
;;;[chara_face name="望3_ネックレス無" face="odoroki" storage="chara/nozomi/tachie_3/off_neckless/3_odoroki.png"]
;;;[chara_face name="望3_ネックレス無" face="pien" storage="chara/nozomi/tachie_3/off_neckless/3_pien.png"]
;;;[chara_face name="望3_ネックレス無" face="tuujou" storage="chara/nozomi/tachie_3/off_neckless/3_tuujou.png"]
;;;[chara_face name="望3_ネックレス無" face="utsumuki" storage="chara/nozomi/tachie_3/off_neckless/3_utsumuki.png"]
;;;[chara_face name="望3_ネックレス無" face="wink" storage="chara/nozomi/tachie_3/off_neckless/3_wink.png"]


[cm]

;;;keyflameの定義
[keyframe name="shake"]
	[frame p= "10%" x=1 y=0]
	[frame p= "20%" x=2 y=1]
	[frame p= "30%" x=3 y=2]
	[frame p= "40%" x=4 y=3]
	[frame p= "50%" x=5 y=4]
	[frame p= "60%" x=4 y=5]
	[frame p= "70%" x=3 y=4]
	[frame p= "80%" x=2 y=3]
	[frame p= "90%" x=1 y=2]
	[frame p="100%" x=0 y=1]
[endkeyframe]

;;;;デバッグ用
;;;;メッセージウィンドウの表示
;;;@layopt layer=message0 visible=true
;;;@layopt layer=message1 visible=true
;;;
;;;;システムボタンの表示
;;;[add_theme_button]
;;;;デバッグ用ここまで

@jump storage="scene1.ks"
