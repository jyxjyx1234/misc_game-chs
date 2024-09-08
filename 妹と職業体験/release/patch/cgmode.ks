;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;■LastUpdate since2006.11.24／富士山（fujiwaraさん、の略）

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ＣＧモード設定
*cgMode

[iscript]
function rightClicks()
{
	kag.process('','*cg_exit');
}
[endscript]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇ＳＡＶＥ＆ＬＯＡＤの設定
;[eval exp="kag.LoadMenu.enabled = false"]
;[eval exp="kag.SaveMenu.enabled = false"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;◇初期画面のページを設定
[eval exp="f.charaPage = 1"]
;[bgm01]
;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ページ構成
;f.cgBackground：背景画像　f.cgList01～　：イベント画像　f.cgThumb01～：サムネイル画像

*cg_start

;◇右クリックで脱出
[rclick jump=true target="*cg_exit" enabled=true]

[iscript]
	switch(f.charaPage)
	{
		case 1:
			f.cgBackground = 'cg_bg01';
			f.cgList01 = 'c01'; f.cgThumb01 = 'thumbnail_c01';
			f.cgList02 = 'c02'; f.cgThumb02 = 'thumbnail_c02';
			f.cgList03 = 'c03'; f.cgThumb03 = 'thumbnail_c03';
			f.cgList04 = 'c04'; f.cgThumb04 = 'thumbnail_c04';
			f.cgList05 = 'c05'; f.cgThumb05 = 'thumbnail_c05';
			f.cgList06 = 'c06'; f.cgThumb06 = 'thumbnail_c06';
			f.cgList07 = 'c07'; f.cgThumb07 = 'thumbnail_c07';
			f.cgList08 = 'c08'; f.cgThumb08 = 'thumbnail_c08';
			f.cgList09 = 'c09'; f.cgThumb09 = 'thumbnail_c09';
		break;

		case 2:
			f.cgBackground = 'cg_bg02';
			f.cgList01 = 'c10'; f.cgThumb01 = 'thumbnail_c10';
			f.cgList02 = 'c11'; f.cgThumb02 = 'thumbnail_c11';
			f.cgList03 = 'c12'; f.cgThumb03 = 'thumbnail_c12';
			f.cgList04 = 'c13'; f.cgThumb04 = 'thumbnail_c13';
			f.cgList05 = 'c14'; f.cgThumb05 = 'thumbnail_c14';
			f.cgList06 = 'c15'; f.cgThumb06 = 'thumbnail_c15';
			f.cgList07 = 'c16'; f.cgThumb07 = 'thumbnail_c16';
			f.cgList08 = 'c17'; f.cgThumb08 = 'thumbnail_c17';
			f.cgList09 = 'c18'; f.cgThumb09 = 'thumbnail_c18';
		break;

	}

[endscript]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■各ページ画像の配置
*cg_setup

[nowait]

;◇メッセージレイヤーの上に画像表示
[image storage="cls" layer=10 index=1010001 page=back visible=true opacity=255 left=0 top=0]

;◇背景画像の表示
[position layer=message10 frame=&f.cgBackground page=back opacity=255 left=0 top=0 width=1024 height=768 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[current layer=message10 page=back]

;◇ページ切り替えボタン配置
[locate x=809 y=79][button  graphic="cg_pageNumber01" exp="f.charaPage = 1" rc="rightClicks()" exp="f.charaPage = 1" target=*cg_start cond="f.charaPage != 1"][endif]
[locate x=979 y=79][button  graphic="cg_pageNumber02" exp="f.charaPage = 2" rc="rightClicks()" exp="f.charaPage = 2" target=*cg_start cond="f.charaPage != 2"][endif]
;[if exp="f.charaCG > 24"][locate x=217 y=170][button  graphic="cg_pageNumber03" exp="f.charaPage = 3" rc="rightClicks()" target=*cg_start cond="f.charaPage != 3"][endif]

;◇戻るボタン配置
[locate x=1127 y=79][button  graphic="cg_return" rc="rightClicks()" target=*cg_exit]

;◇ＣＧサムネイルボタン配置
[locate x=187 y=180][button  graphic=&f.cgThumb01 exp="f.cgOpen = f.cgList01" cond="sf[f.cgList01] == 1" rc="rightClicks()" target=*cg_view]
[locate x=495 y=180][button  graphic=&f.cgThumb02 exp="f.cgOpen = f.cgList02" cond="sf[f.cgList02] == 1" rc="rightClicks()" target=*cg_view]
[locate x=802 y=180][button  graphic=&f.cgThumb03 exp="f.cgOpen = f.cgList03" cond="sf[f.cgList03] == 1" rc="rightClicks()" target=*cg_view]

[locate x=187 y=416][button  graphic=&f.cgThumb04 exp="f.cgOpen = f.cgList04" cond="sf[f.cgList04] == 1" rc="rightClicks()" target=*cg_view]
[locate x=495 y=416][button  graphic=&f.cgThumb05 exp="f.cgOpen = f.cgList05" cond="sf[f.cgList05] == 1" rc="rightClicks()" target=*cg_view]
[locate x=802 y=416][button  graphic=&f.cgThumb06 exp="f.cgOpen = f.cgList06" cond="sf[f.cgList06] == 1" rc="rightClicks()" target=*cg_view]

[locate x=187 y=653][button  graphic=&f.cgThumb07 exp="f.cgOpen = f.cgList07" cond="sf[f.cgList07] == 1" rc="rightClicks()" target=*cg_view]
[locate x=495 y=653][button  graphic=&f.cgThumb08 exp="f.cgOpen = f.cgList08" cond="sf[f.cgList08] == 1" rc="rightClicks()" target=*cg_view]
[locate x=802 y=653][button  graphic=&f.cgThumb09 exp="f.cgOpen = f.cgList09" cond="sf[f.cgList09] == 1" rc="rightClicks()" target=*cg_view]

[endnowait]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]
[s]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■各イベントCG表示
;※1枚のイベントCGに対して何枚まで表示するかの設定（現状差分込み27枚（z）まで表示出来る様に設定）

;※無印（例 c01）がゲーム無いで使われていないとc01関連はCGモードに登録されないので注意

*cg_view
[rclick jump=true target="*cg_start" enabled=true]

[freeimage layer=10 page=back]
[if exp="sf[f.cgOpen    ] == 1"][position layer=message10 frame="&f.cgOpen" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="sf[f.cgOpen+'a'] == 1"][position layer=message10 frame="&f.cgOpen+'a'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'b'] == 1"][position layer=message10 frame="&f.cgOpen+'b'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'c'] == 1"][position layer=message10 frame="&f.cgOpen+'c'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'d'] == 1"][position layer=message10 frame="&f.cgOpen+'d'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'e'] == 1"][position layer=message10 frame="&f.cgOpen+'e'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'f'] == 1"][position layer=message10 frame="&f.cgOpen+'f'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'g'] == 1"][position layer=message10 frame="&f.cgOpen+'g'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'h'] == 1"][position layer=message10 frame="&f.cgOpen+'h'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'i'] == 1"][position layer=message10 frame="&f.cgOpen+'i'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'j'] == 1"][position layer=message10 frame="&f.cgOpen+'j'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'k'] == 1"][position layer=message10 frame="&f.cgOpen+'k'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'l'] == 1"][position layer=message10 frame="&f.cgOpen+'l'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'n'] == 1"][position layer=message10 frame="&f.cgOpen+'n'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'m'] == 1"][position layer=message10 frame="&f.cgOpen+'m'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'o'] == 1"][position layer=message10 frame="&f.cgOpen+'o'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'p'] == 1"][position layer=message10 frame="&f.cgOpen+'p'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'q'] == 1"][position layer=message10 frame="&f.cgOpen+'q'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'r'] == 1"][position layer=message10 frame="&f.cgOpen+'r'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'s'] == 1"][position layer=message10 frame="&f.cgOpen+'s'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'t'] == 1"][position layer=message10 frame="&f.cgOpen+'t'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'u'] == 1"][position layer=message10 frame="&f.cgOpen+'u'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'v'] == 1"][position layer=message10 frame="&f.cgOpen+'v'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'w'] == 1"][position layer=message10 frame="&f.cgOpen+'w'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'x'] == 1"][position layer=message10 frame="&f.cgOpen+'x'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'y'] == 1"][position layer=message10 frame="&f.cgOpen+'y'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]
[if exp="&sf[f.cgOpen+'z'] == 1"][position layer=message10 frame="&f.cgOpen+'z'" page=back opacity=255 left=0 top=0 width=800 height=600][trans method=crossfade time=300][wt canskip=false][l][endif]

[jump target=*cg_start]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■ＣＧモード終了
*cg_exit

;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title == 0"]
	[position layer=message10 frame="cls" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[freeimage layer=10 page=back]
	[trans method=crossfade time=150]
	[wt canskip=false]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]
[endif]

[current layer=message0]

;◇右クリック禁止
[rclick jump=false]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

[return]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
