製品紹介のページです。
以下のスクリプトでは[publicity.ks]で表示される
吉里吉里システムでのボタンクリックを唯一の入り口とし
どのボタンも以下の[*pre_start]にリンクされています。

構成（動作）としては
[publicity.ks]
・ユーザーによって任意の作品紹介用のボタンがクリックされる
→作品フラグ（f.pub_***）を取得し、[presentation.ks] 内、[*pre_start]へとリンクする。

[presentation.ks]
→ラベル[*pre_start]にやってくる
→作品フラグをチェックし、以下の【分岐誘導区域】内で、それぞれの作品紹介の区域にジャンプする。
・作品紹介が表示される
・クリックなどで、作品紹介を見終えたら、関連するフラグを初期化し[publicity.ks]へと帰還する

→[publicity.ks]
・ユーザーの選択へ委ねる

【このファイルの位置づけ】
[main.ks] → [omake.ks]→[cgmode.ks]
 　　　　　　　　　　　→[memmode.ks]
 　　　　　　　　　　　→[bgmmode.ks]
 　　　　　　　　　　　→[publicity.ks]→[presentation.ks]
=================================================================
～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
*pre_start
;表示形態の基本を設定／改変禁止
[position layer=message10 page=back frame="pub_bg" opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[freeimage layer=10 page=back]
[current layer=message10 page=back withback=false]
[er]

[wait time=150]

;右クリック脱出設定
[iscript]
function rightClicks()
{
	kag.process('','*pre_bak');
}
[endscript]

[wt canskip=false]

;【分岐誘導区域】
;[publicity.ks]によって取得したフラグによって
;ユーザーが要求した作品プレゼンテーションの表示区域にジャンプする。
;TW-001：Venus Rave ～黒き瞳の女神～
[if exp="f.pub_001 == 1"][locate x=0 y=0][button graphic="pub_tw01" rc="rightClicks()" exp="f.pub_001 = 0" target=*pre_bak][endif]
;TW-002：狂想の肉宴
[if exp="f.pub_002 == 1"][locate x=0 y=0][button graphic="pub_tw02" rc="rightClicks()" exp="f.pub_002 = 0" target=*pre_bak][endif]
;TW-003：オゲレツ大百科
[if exp="f.pub_003 == 1"][locate x=0 y=0][button graphic="pub_tw03" rc="rightClicks()" exp="f.pub_003 = 0" target=*pre_bak][endif]
;TW-004：部費げっちゅ～！
[if exp="f.pub_004 == 1"][locate x=0 y=0][button graphic="pub_tw04" rc="rightClicks()" exp="f.pub_004 = 0" target=*pre_bak][endif]
;TW-005：ちょこっと☆ラプソディ
[if exp="f.pub_005 == 1"][locate x=0 y=0][button graphic="pub_tw05" rc="rightClicks()" exp="f.pub_005 = 0" target=*pre_bak][endif]
;TW-006：狂想の肉宴弐
[if exp="f.pub_006 == 1"][locate x=0 y=0][button graphic="pub_tw06" rc="rightClicks()" exp="f.pub_006 = 0" target=*pre_bak][endif]
;TW-007：永遠月の巫女
[if exp="f.pub_007 == 1"][locate x=0 y=0][button graphic="pub_tw07" rc="rightClicks()" exp="f.pub_007 = 0" target=*pre_bak][endif]
;TW-008：いけない保健室
[if exp="f.pub_008 == 1"][locate x=0 y=0][button graphic="pub_tw08" rc="rightClicks()" exp="f.pub_008 = 0" target=*pre_bak][endif]
;TW-009：乳辱遊戯
[if exp="f.pub_009 == 1"][locate x=0 y=0][button graphic="pub_tw09" rc="rightClicks()" exp="f.pub_009 = 0" target=*pre_bak][endif]
;TW-010：オゲレツ大百科外伝～マシーナの輝石～
[if exp="f.pub_010 == 1"][locate x=0 y=0][button graphic="pub_tw10" rc="rightClicks()" exp="f.pub_010 = 0" target=*pre_bak][endif]
;TW-011：OL狩り～濡れたオフィス～
[if exp="f.pub_011 == 1"][locate x=0 y=0][button graphic="pub_tw11" rc="rightClicks()" exp="f.pub_011 = 0" target=*pre_bak][endif]
;TW-012：かくれエッチ
[if exp="f.pub_012 == 1"][locate x=0 y=0][button graphic="pub_tw12" rc="rightClicks()" exp="f.pub_012 = 0" target=*pre_bak][endif]
;TW-013：淫乳団地妻
[if exp="f.pub_013 == 1"][locate x=0 y=0][button graphic="pub_tw13" rc="rightClicks()" exp="f.pub_013 = 0" target=*pre_bak][endif]
;TW-014：体育倉庫～少女達の散華～
[if exp="f.pub_014 == 1"][locate x=0 y=0][button graphic="pub_tw14" rc="rightClicks()" exp="f.pub_014 = 0" target=*pre_bak][endif]
;TW-015：陵辱ファインダー
[if exp="f.pub_015 == 1"][locate x=0 y=0][button graphic="pub_tw15" rc="rightClicks()" exp="f.pub_015 = 0" target=*pre_bak][endif]
;TW-016：汚辱遊戯
[if exp="f.pub_016 == 1"][locate x=0 y=0][button graphic="pub_tw16" rc="rightClicks()" exp="f.pub_016 = 0" target=*pre_bak][endif]
;TW-017：淫乳家族～僕と母と姉と妹と～
[if exp="f.pub_017 == 1"][locate x=0 y=0][button graphic="pub_tw17" rc="rightClicks()" exp="f.pub_017 = 0" target=*pre_bak][endif]
;TW-018：接待倶楽部
[if exp="f.pub_018 == 1"][locate x=0 y=0][button graphic="pub_tw18" rc="rightClicks()" exp="f.pub_018 = 0" target=*pre_bak][endif]
;TW-019：ちちくりナース２４時
[if exp="f.pub_019 == 1"][locate x=0 y=0][button graphic="pub_tw19" rc="rightClicks()" exp="f.pub_019 = 0" target=*pre_bak][endif]
;TW-020：皇女凌俗放送～楽園のプロパガンダ～
[if exp="f.pub_020 == 1"][locate x=0 y=0][button graphic="pub_tw20" rc="rightClicks()" exp="f.pub_020 = 0" target=*pre_bak][endif]
;TW-021：幼辱～天使たちの檻～
[if exp="f.pub_021 == 1"][locate x=0 y=0][button graphic="pub_tw21" rc="rightClicks()" exp="f.pub_021 = 0" target=*pre_bak][endif]
;TW-022：巨乳極楽セミナー
[if exp="f.pub_022 == 1"][locate x=0 y=0][button graphic="pub_tw22" rc="rightClicks()" exp="f.pub_022 = 0" target=*pre_bak][endif]
;TW-023：接待媚品～巨乳OL達の淫らな午後～
[if exp="f.pub_023 == 1"][locate x=0 y=0][button graphic="pub_tw23" rc="rightClicks()" exp="f.pub_023 = 0" target=*pre_bak][endif]
;TW-024：乳セレブ
[if exp="f.pub_024 == 1"][locate x=0 y=0][button graphic="pub_tw24" rc="rightClicks()" exp="f.pub_024 = 0" target=*pre_bak][endif]
;TW-025：宿り蟲～僕が触手で触手が僕で～
[if exp="f.pub_025 == 1"][locate x=0 y=0][button graphic="pub_tw25" rc="rightClicks()" exp="f.pub_025 = 0" target=*pre_bak][endif]
;TW-026：爆乳喫茶
[if exp="f.pub_026 == 1"][locate x=0 y=0][button graphic="pub_tw26" rc="rightClicks()" exp="f.pub_026 = 0" target=*pre_bak][endif]
;TW-027：理詠子 ～謀略の連鎖～
[if exp="f.pub_027 == 1"][locate x=0 y=0][button graphic="pub_tw27" rc="rightClicks()" exp="f.pub_027 = 0" target=*pre_bak][endif]
;TW-028：かんちち☆スイ～ト
[if exp="f.pub_028 == 1"][locate x=0 y=0][button graphic="pub_tw28" rc="rightClicks()" exp="f.pub_028 = 0" target=*pre_bak][endif]
;TW-029：性奴学艶祭 ～肉欲に溺れる女教師達～
[if exp="f.pub_029 == 1"][locate x=0 y=0][button graphic="pub_tw29" rc="rightClicks()" exp="f.pub_029 = 0" target=*pre_bak][endif]
;TW-030：乳姫大祭
[if exp="f.pub_030 == 1"][locate x=0 y=0][button graphic="pub_tw30" rc="rightClicks()" exp="f.pub_030 = 0" target=*pre_bak][endif]
;TW-031：浮気妻
[if exp="f.pub_031 == 1"][locate x=0 y=0][button graphic="pub_tw31" rc="rightClicks()" exp="f.pub_031 = 0" target=*pre_bak][endif]
;TW-032：HideMind
[if exp="f.pub_032 == 1"][locate x=0 y=0][button graphic="pub_tw32" rc="rightClicks()" exp="f.pub_032 = 0" target=*pre_bak][endif]
;TW-033：双子隷嬢
[if exp="f.pub_033 == 1"][locate x=0 y=0][button graphic="pub_tw33" rc="rightClicks()" exp="f.pub_033 = 0" target=*pre_bak][endif]
;TW-034：
[if exp="f.pub_034 == 1"][locate x=0 y=0][button graphic="pub_tw34" rc="rightClicks()" exp="f.pub_034 = 0" target=*pre_bak][endif]
;TW-035：
[if exp="f.pub_035 == 1"][locate x=0 y=0][button graphic="pub_tw35" rc="rightClicks()" exp="f.pub_035 = 0" target=*pre_bak][endif]
;TW-036：
[if exp="f.pub_036 == 1"][locate x=0 y=0][button graphic="pub_tw36" rc="rightClicks()" exp="f.pub_036 = 0" target=*pre_bak][endif]
;TW-037：
[if exp="f.pub_037 == 1"][locate x=0 y=0][button graphic="pub_tw37" rc="rightClicks()" exp="f.pub_037 = 0" target=*pre_bak][endif]
;TW-038：
[if exp="f.pub_038 == 1"][locate x=0 y=0][button graphic="pub_tw38" rc="rightClicks()" exp="f.pub_038 = 0" target=*pre_bak][endif]
;TW-039：
[if exp="f.pub_039 == 1"][locate x=0 y=0][button graphic="pub_tw39" rc="rightClicks()" exp="f.pub_039 = 0" target=*pre_bak][endif]
;TW-040：
[if exp="f.pub_040 == 1"][locate x=0 y=0][button graphic="pub_tw40" rc="rightClicks()" exp="f.pub_040 = 0" target=*pre_bak][endif]
;TW-041：
[if exp="f.pub_041 == 1"][locate x=0 y=0][button graphic="pub_tw41" rc="rightClicks()" exp="f.pub_041 = 0" target=*pre_bak][endif]
;TW-042：
[if exp="f.pub_042 == 1"][locate x=0 y=0][button graphic="pub_tw42" rc="rightClicks()" exp="f.pub_042 = 0" target=*pre_bak][endif]
;TW-043：
[if exp="f.pub_043 == 1"][locate x=0 y=0][button graphic="pub_tw43" rc="rightClicks()" exp="f.pub_043 = 0" target=*pre_bak][endif]
;TW-044：
[if exp="f.pub_044 == 1"][locate x=0 y=0][button graphic="pub_tw44" rc="rightClicks()" exp="f.pub_044 = 0" target=*pre_bak][endif]
;TW-045：
[if exp="f.pub_045 == 1"][locate x=0 y=0][button graphic="pub_tw45" rc="rightClicks()" exp="f.pub_045 = 0" target=*pre_bak][endif]
;TW-046：
[if exp="f.pub_046 == 1"][locate x=0 y=0][button graphic="pub_tw46" rc="rightClicks()" exp="f.pub_046 = 0" target=*pre_bak][endif]
;TW-047：
[if exp="f.pub_047 == 1"][locate x=0 y=0][button graphic="pub_tw47" rc="rightClicks()" exp="f.pub_047 = 0" target=*pre_bak][endif]
;TW-048：
[if exp="f.pub_048 == 1"][locate x=0 y=0][button graphic="pub_tw48" rc="rightClicks()" exp="f.pub_048 = 0" target=*pre_bak][endif]
;TW-049：
[if exp="f.pub_049 == 1"][locate x=0 y=0][button graphic="pub_tw49" rc="rightClicks()" exp="f.pub_049 = 0" target=*pre_bak][endif]
;TW-050：
[if exp="f.pub_050 == 1"][locate x=0 y=0][button graphic="pub_tw50" rc="rightClicks()" exp="f.pub_050 = 0" target=*pre_bak][endif]

;TW-DL01：爆乳ナース
[if exp="f.pub_DL01 == 1"][locate x=0 y=0][button graphic="pub_DL01" rc="rightClicks()" exp="f.pub_DL01 = 0" target=*pre_bak][endif]
;TW-DL02：
[if exp="f.pub_DL02 == 1"][locate x=0 y=0][button graphic="pub_DL02" rc="rightClicks()" exp="f.pub_DL02 = 0" target=*pre_bak][endif]
;TW-DL03：
[if exp="f.pub_DL03 == 1"][locate x=0 y=0][button graphic="pub_DL03" rc="rightClicks()" exp="f.pub_DL03 = 0" target=*pre_bak][endif]
;TW-DL04：
[if exp="f.pub_DL04 == 1"][locate x=0 y=0][button graphic="pub_DL04" rc="rightClicks()" exp="f.pub_DL04 = 0" target=*pre_bak][endif]
;TW-DL05：
[if exp="f.pub_DL05 == 1"][locate x=0 y=0][button graphic="pub_DL05" rc="rightClicks()" exp="f.pub_DL05 = 0" target=*pre_bak][endif]
;TW-DL06：
[if exp="f.pub_DL06 == 1"][locate x=0 y=0][button graphic="pub_DL06" rc="rightClicks()" exp="f.pub_DL06 = 0" target=*pre_bak][endif]
;TW-DL07：
[if exp="f.pub_DL07 == 1"][locate x=0 y=0][button graphic="pub_DL07" rc="rightClicks()" exp="f.pub_DL07 = 0" target=*pre_bak][endif]
;TW-DL08：
[if exp="f.pub_DL08 == 1"][locate x=0 y=0][button graphic="pub_DL08" rc="rightClicks()" exp="f.pub_DL08 = 0" target=*pre_bak][endif]
;TW-DL09：
[if exp="f.pub_DL09 == 1"][locate x=0 y=0][button graphic="pub_DL09" rc="rightClicks()" exp="f.pub_DL09 = 0" target=*pre_bak][endif]
;TW-DL10：
[if exp="f.pub_DL10 == 1"][locate x=0 y=0][button graphic="pub_DL10" rc="rightClicks()" exp="f.pub_DL10 = 0" target=*pre_bak][endif]
;TW-DL11：
[if exp="f.pub_DL11 == 1"][locate x=0 y=0][button graphic="pub_DL11" rc="rightClicks()" exp="f.pub_DL11 = 0" target=*pre_bak][endif]
;TW-DL12：
[if exp="f.pub_DL12 == 1"][locate x=0 y=0][button graphic="pub_DL12" rc="rightClicks()" exp="f.pub_DL12 = 0" target=*pre_bak][endif]
;TW-DL13：
[if exp="f.pub_DL13 == 1"][locate x=0 y=0][button graphic="pub_DL13" rc="rightClicks()" exp="f.pub_DL13 = 0" target=*pre_bak][endif]
;TW-DL14：
[if exp="f.pub_DL14 == 1"][locate x=0 y=0][button graphic="pub_DL14" rc="rightClicks()" exp="f.pub_DL14 = 0" target=*pre_bak][endif]
;TW-DL15：
[if exp="f.pub_DL15 == 1"][locate x=0 y=0][button graphic="pub_DL15" rc="rightClicks()" exp="f.pub_DL15 = 0" target=*pre_bak][endif]
;TW-DL16：
[if exp="f.pub_DL16 == 1"][locate x=0 y=0][button graphic="pub_DL16" rc="rightClicks()" exp="f.pub_DL16 = 0" target=*pre_bak][endif]
;TW-DL17：
[if exp="f.pub_DL17 == 1"][locate x=0 y=0][button graphic="pub_DL17" rc="rightClicks()" exp="f.pub_DL17 = 0" target=*pre_bak][endif]
;TW-DL18：
[if exp="f.pub_DL18 == 1"][locate x=0 y=0][button graphic="pub_DL18" rc="rightClicks()" exp="f.pub_DL18 = 0" target=*pre_bak][endif]
;TW-DL19：
[if exp="f.pub_DL19 == 1"][locate x=0 y=0][button graphic="pub_DL19" rc="rightClicks()" exp="f.pub_DL19 = 0" target=*pre_bak][endif]
;TW-DL20：
[if exp="f.pub_DL20 == 1"][locate x=0 y=0][button graphic="pub_DL20" rc="rightClicks()" exp="f.pub_DL20 = 0" target=*pre_bak][endif]

;TD-01：VenusBlood
[if exp="f.pub_TD01 == 1"][locate x=0 y=0][button graphic="pub_td01" rc="rightClicks()" exp="f.pub_TD01 = 0" target=*pre_bak][endif]
;TD-02：
[if exp="f.pub_TD02 == 1"][locate x=0 y=0][button graphic="pub_td02" rc="rightClicks()" exp="f.pub_TD02 = 0" target=*pre_bak][endif]
;TD-03：
[if exp="f.pub_TD03 == 1"][locate x=0 y=0][button graphic="pub_td03" rc="rightClicks()" exp="f.pub_TD03 = 0" target=*pre_bak][endif]
;TD-04：
[if exp="f.pub_TD04 == 1"][locate x=0 y=0][button graphic="pub_td04" rc="rightClicks()" exp="f.pub_TD04 = 0" target=*pre_bak][endif]
;TD-05：
[if exp="f.pub_TD05 == 1"][locate x=0 y=0][button graphic="pub_td05" rc="rightClicks()" exp="f.pub_TD05 = 0" target=*pre_bak][endif]
;TD-06：
[if exp="f.pub_TD06 == 1"][locate x=0 y=0][button graphic="pub_td06" rc="rightClicks()" exp="f.pub_TD06 = 0" target=*pre_bak][endif]
;TD-07：
[if exp="f.pub_TD07 == 1"][locate x=0 y=0][button graphic="pub_td07" rc="rightClicks()" exp="f.pub_TD07 = 0" target=*pre_bak][endif]
;TD-08：
[if exp="f.pub_TD08 == 1"][locate x=0 y=0][button graphic="pub_td08" rc="rightClicks()" exp="f.pub_TD08 = 0" target=*pre_bak][endif]
;TD-09：
[if exp="f.pub_TD09 == 1"][locate x=0 y=0][button graphic="pub_td09" rc="rightClicks()" exp="f.pub_TD09 = 0" target=*pre_bak][endif]
;TD-10：
[if exp="f.pub_TD10 == 1"][locate x=0 y=0][button graphic="pub_td10" rc="rightClicks()" exp="f.pub_TD10 = 0" target=*pre_bak][endif]
;TD-11：
[if exp="f.pub_TD11 == 1"][locate x=0 y=0][button graphic="pub_td11" rc="rightClicks()" exp="f.pub_TD11 = 0" target=*pre_bak][endif]
;TD-12：
[if exp="f.pub_TD12 == 1"][locate x=0 y=0][button graphic="pub_td12" rc="rightClicks()" exp="f.pub_TD12 = 0" target=*pre_bak][endif]
;TD-13：
[if exp="f.pub_TD13 == 1"][locate x=0 y=0][button graphic="pub_td13" rc="rightClicks()" exp="f.pub_TD13 = 0" target=*pre_bak][endif]
;TD-14：
[if exp="f.pub_TD14 == 1"][locate x=0 y=0][button graphic="pub_td14" rc="rightClicks()" exp="f.pub_TD14 = 0" target=*pre_bak][endif]
;TD-15：
[if exp="f.pub_TD15 == 1"][locate x=0 y=0][button graphic="pub_td15" rc="rightClicks()" exp="f.pub_TD15 = 0" target=*pre_bak][endif]
;TD-16：
[if exp="f.pub_TD16 == 1"][locate x=0 y=0][button graphic="pub_td16" rc="rightClicks()" exp="f.pub_TD16 = 0" target=*pre_bak][endif]
;TD-17：
[if exp="f.pub_TD17 == 1"][locate x=0 y=0][button graphic="pub_td17" rc="rightClicks()" exp="f.pub_TD17 = 0" target=*pre_bak][endif]
;TD-18：
[if exp="f.pub_TD18 == 1"][locate x=0 y=0][button graphic="pub_td18" rc="rightClicks()" exp="f.pub_TD18 = 0" target=*pre_bak][endif]
;TD-19：
[if exp="f.pub_TD19 == 1"][locate x=0 y=0][button graphic="pub_td19" rc="rightClicks()" exp="f.pub_TD19 = 0" target=*pre_bak][endif]
;TD-20：
[if exp="f.pub_TD20 == 1"][locate x=0 y=0][button graphic="pub_td20" rc="rightClicks()" exp="f.pub_TD20 = 0" target=*pre_bak][endif]

[stoptrans]
[trans method=crossfade time=100 layer=base][wt canskip=false]
[unlocklink]
[s]

;*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
*pre_bak
[position layer=message10 page=back frame="bg000000" opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[freeimage layer=10 page=back]
[current layer=message10 page=back withback=false]
[er]
[ud time="150"]
[wt canskip=true]
[return]

